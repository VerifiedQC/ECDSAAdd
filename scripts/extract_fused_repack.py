"""Export public source closer journals; no numerical correctness claim."""
import argparse
import hashlib
import gzip
import json
from pathlib import Path
import subprocess
import sys

PIN = '64b5a13aa249f1360846657392e6c66817b26d0f'
p = argparse.ArgumentParser()
p.add_argument('--source', type=Path, required=True)
p.add_argument('--output', type=Path, required=True)
p.add_argument('--resize-output', type=Path, help='Also export forward resize transactions from the same pinned run')
p.add_argument('--allocation-output', type=Path, help='Also observe actual forward arithmetic scratch/home allocation events')
p.add_argument('--control-output', type=Path, help='Observe forward post-shift control calls and their actual allocation events')
a = p.parse_args()
if a.control_output and not a.allocation_output:
    p.error('--control-output requires --allocation-output from the same run')
root = a.source.resolve()
head = subprocess.check_output(['git', '-C', str(root), 'rev-parse', 'HEAD'], text=True).strip()
if head != PIN:
    raise SystemExit('Source commit does not match the approved pin')
subprocess.run(['git', '-C', str(root), 'diff', '--exit-code', 'HEAD', '--'],
               check=True, stdout=subprocess.DEVNULL)
sys.path.insert(0, str(root))
from uncompute import Builder
from uncompute.testing import load_module
source = root / 'tasks/modinv-point-add/circuits/divsteps/engine.py'
entry = source.with_name('circuit.py')
C = load_module(entry, 'fused_journal_circuit')
E = C.E
assert C.QCAP == 935

records = []
inside_closer = False
class Captured(Exception):
    pass

def snapshot(w):
    b = w.b
    return {
        'phase': b.current_phase,
        'rows': {name: {'payload': list(getattr(w, name).ids), 'sign': getattr(w, name).sign}
                 for name in ['fv', 'g', 'gv', 'f']},
        'free': {name: list(ids) for name, ids in w.pool.free.items()},
        'owner': dict(sorted(w.pool.owner.items())),
        'allocated': [q for q in range(b.next_qubit) if q not in b._free_set],
    }

# Optional observations of the existing source methods. No allocator is
# reimplemented: each address is recorded after the pinned method chose it.
resize_records = []
resize_context = None

def live_ranges(w):
    snap = snapshot(w)
    live = sorted(set(snap['allocated']) - set(sum(snap['free'].values(), [])))
    ranges = []
    for q in live:
        if ranges and ranges[-1][1] == q:
            ranges[-1][1] = q + 1
        else:
            ranges.append([q, q + 1])
    return ranges

def observe_resize(method, operation):
    def wrapped(row, width):
        if resize_context is None:
            return method(row, width)
        w, stage = resize_context
        names = [name for name in ['f', 'g', 'fv', 'gv'] if getattr(w, name) is row]
        if not names:
            return method(row, width)
        before = list(row.ids)
        record = {'row': names[0], 'operation': operation, 'width': width,
                  'sign': row.sign, 'before': before, 'live_before': live_ranges(w)}
        result = method(row, width)
        record.update(after=list(row.ids), live_after=live_ranges(w))
        stage['resizes'].append(record)
        return result
    return wrapped

def observe_stage(method, name):
    def wrapped(w, *args):
        global resize_context
        # _fwd_add takes (gadgets,t), _fwd_shift_exit takes (t,early).
        step = args[1] if name == 'add' else args[0]
        stage = {'phase': w.b.current_phase, 'step': step, 'stage': name,
                 'before': snapshot(w), 'resizes': [], 'repacks': []}
        previous = resize_context
        resize_context = (w, stage)
        try:
            result = method(w, *args)
        finally:
            resize_context = previous
        stage['after'] = snapshot(w)
        if name == 'add':
            stage['retained_flags'] = list(result)
        resize_records.append(stage)
        return result
    return wrapped

# Optional ordered observations of the original allocation methods. Nested
# Builder calls inside HomePool are recorded once, at their logical boundary.
allocation_records = []
allocation_context = None
allocation_step = {}
allocation_flags = {}
allocation_pool_depth = 0

def observe_allocation_stage(method, name):
    def wrapped(w, *args, **kwargs):
        global allocation_context
        if name == 'counter' and kwargs.get('dec', args[2] if len(args)>2 else False):
            return method(w, *args, **kwargs)
        if name == 'add':
            allocation_step[id(w)] = args[1]
        step = args[0] if name == 'shift_exit' else allocation_step[id(w)]
        stage = {'phase': w.b.current_phase, 'step': step, 'stage': name,
                 'live_before': live_ranges(w), 'events': [], 'calls': []}
        if name == 'counter':
            early = args[1]
            stage.update(counter=list(w.z), early=early,
                         control=allocation_flags[id(w)][0] if early else w.frz)
        previous = allocation_context
        allocation_context = (w, stage)
        try:
            result = method(w, *args, **kwargs)
        finally:
            allocation_context = previous
        stage['live_after'] = live_ranges(w)
        if name == 'add':
            allocation_flags[id(w)] = list(result)
            stage['retained_flags'] = list(result)
        allocation_records.append(stage)
        return result
    return wrapped

original_qubit = Builder.qubit
original_recycle = Builder.recycle
original_draw = E.HomePool.draw
original_give = E.HomePool.give

def observe_qubit(b, *args, **kwargs):
    q = original_qubit(b, *args, **kwargs)
    if allocation_context is not None and allocation_pool_depth == 0:
        w, stage = allocation_context
        assert b is w.b
        stage['events'].append({'kind': 'take', 'wire': q, 'via': 'builder'})
    return q

def observe_recycle(b, q, *args, **kwargs):
    result = original_recycle(b, q, *args, **kwargs)
    if allocation_context is not None and allocation_pool_depth == 0:
        w, stage = allocation_context
        assert b is w.b
        stage['events'].append({'kind': 'give', 'wire': q, 'via': 'builder'})
    return result

def observe_draw(pool, band):
    global allocation_pool_depth
    allocation_pool_depth += 1
    try:
        q = original_draw(pool, band)
    finally:
        allocation_pool_depth -= 1
    if allocation_context is not None:
        w, stage = allocation_context
        assert pool is w.pool
        stage['events'].append({'kind': 'take', 'wire': q, 'via': 'home:' + band})
    return q

def observe_give(pool, q):
    global allocation_pool_depth
    allocation_pool_depth += 1
    try:
        band = original_give(pool, q)
    finally:
        allocation_pool_depth -= 1
    if allocation_context is not None:
        w, stage = allocation_context
        assert pool is w.pool
        stage['events'].append({'kind': 'give', 'wire': q, 'via': 'home:' + band})
    return band

# The post-shift body is inline in HmrWalk.step_fwd. Start its observation
# after the original shift/exit method returns, and close it when step_fwd
# returns. Calls and allocation choices are observed, never reimplemented.
control_records = []
control_walk = None
control_stage = None

def observe_control_step(method):
    def wrapped(w, t):
        global control_walk, control_stage, allocation_context
        previous_walk, previous_stage = control_walk, control_stage
        previous_allocation = allocation_context
        control_walk, control_stage = (w, t), None
        try:
            result = method(w, t)
            assert control_stage is not None
            control_stage['live_after'] = live_ranges(w)
            control_stage['record_after'] = list(w.R)
            control_records.append(control_stage)
            return result
        finally:
            control_walk, control_stage = previous_walk, previous_stage
            allocation_context = previous_allocation
    return wrapped

def begin_control_after_shift(method):
    def wrapped(w, t, early):
        global control_stage, allocation_context
        result = method(w, t, early)
        if control_walk is not None:
            assert control_walk == (w, t)
            control_stage = {
                'phase': w.b.current_phase, 'step': t, 'stage': 'control',
                'tmin': w.Tmin, 'early': early, 'counter': list(w.z),
                'frozen': w.frz, 'timestamp': list(w.tst) if w.tst is not None else [],
                'g': list(w.g.ids) + [w.g.sign],
                'fv_reads': [w.fv.pos(i) for i in range(1, 5)],
                'retained_flags': allocation_flags[id(w)],
                'record_before': list(w.R), 'record_fits': [],
                'live_before': live_ranges(w), 'events': [], 'calls': []}
            allocation_context = (w, control_stage)
        return result
    return wrapped

def observe_sigma_death(method):
    def wrapped(w, g, sigma, fire):
        if allocation_context is None or allocation_context[0] is not w or allocation_context[1]['stage'] != 'control':
            return method(w, g, sigma, fire)
        stage = allocation_context[1]
        call = {'start': len(stage['events']), 'sigma': sigma, 'fire': fire, 'fv1': w.fv.pos(1)}
        assert 'sigma_death' not in stage
        stage['sigma_death'] = call
        result = method(w, g, sigma, fire)
        call['end'] = len(stage['events'])
        return result
    return wrapped

def observe_record_fit(method):
    def wrapped(w, t):
        if allocation_context is None or allocation_context[0] is not w or allocation_context[1]['stage'] != 'control':
            return method(w, t)
        stage = allocation_context[1]
        call = {'step': t, 'start': len(stage['events']), 'before': list(w.R),
                'need': min(min(w.spans[t], t) + 1, w.Cr)}
        stage['record_fits'].append(call)
        result = method(w, t)
        call['after'] = list(w.R)
        call['end'] = len(stage['events'])
        return result
    return wrapped

def observe_control_call(method, name):
    def wrapped(g, *args, **kwargs):
        if allocation_context is None or allocation_context[1]['stage'] != 'control':
            return method(g, *args, **kwargs)
        w, stage = allocation_context
        assert g.b is w.b
        call = {'method': name, 'start': len(stage['events']),
                'args': json.loads(json.dumps(args)),
                'kwargs': json.loads(json.dumps(kwargs))}
        stage['calls'].append(call)
        result = method(g, *args, **kwargs)
        call['end'] = len(stage['events'])
        call['result'] = json.loads(json.dumps(result))
        return result
    return wrapped

original_ctrl_add_rows = E.G.ctrl_add_rows

def observe_ctrl_add_rows(g, ctl, src_w, tgt_w, carry, cin=None, qcap=None):
    if allocation_context is None:
        return original_ctrl_add_rows(g, ctl, src_w, tgt_w, carry, cin, qcap)
    w, stage = allocation_context
    assert g.b is w.b
    call = {'start': len(stage['events']), 'control': ctl, 'source': list(src_w),
            'target': list(tgt_w), 'carry': carry, 'cin': cin, 'qcap': qcap,
            'active': g.b.active_qubits}
    result = original_ctrl_add_rows(g, ctl, src_w, tgt_w, carry, cin, qcap)
    call['end'] = len(stage['events'])
    stage['calls'].append(call)
    return result

original_repack = E.WalkWBase._repack
original_closer = E.WalkWBase.closer

def record_repack(w):
    if not inside_closer:
        if resize_context is None:
            return original_repack(w)
        _, stage = resize_context
        before = snapshot(w)
        start = len(w._tape)
        original_repack(w)
        after = snapshot(w)
        moves = []
        for kind, row, i, home in w._tape[start:]:
            assert kind == 'm'
            name = next(name for name in ['fv', 'g', 'gv', 'f'] if getattr(w, name) is row)
            moves.append({'row': name, 'index': i, 'home': home,
                          'old': before['rows'][name]['payload'][i], 'fresh': row.ids[i]})
        stage['repacks'].append({'before': before, 'moves': moves, 'after': after})
        return
    before = snapshot(w)
    start = len(w._tape)
    original_repack(w)
    after = snapshot(w)
    moves = []
    for kind, row, i, home in w._tape[start:]:
        assert kind == 'm'
        name = next(name for name in ['fv', 'g', 'gv', 'f'] if getattr(w, name) is row)
        moves.append({'row': name, 'index': i, 'home': home,
                      'old': before['rows'][name]['payload'][i], 'fresh': row.ids[i]})
    # Home-band free slots remain builder-allocated. Logical ownership excludes
    # them; check each public transaction, without asserting readiness.
    live = set(before['allocated']) - set(sum(before['free'].values(), []))
    for move in moves:
        assert move['old'] in live and move['fresh'] not in live
        assert 0 <= move['old'] < 935 and 0 <= move['fresh'] < 935
        live.remove(move['old'])
        live.add(move['fresh'])
    assert live == set(after['allocated']) - set(sum(after['free'].values(), []))
    records.append({'before': before, 'moves': moves, 'after': after})

def record_closer(w):
    global inside_closer
    inside_closer = True
    try:
        original_closer(w)
    finally:
        inside_closer = False
    if len(records) == 2:
        raise Captured()

E.WalkWBase._repack = record_repack
E.WalkWBase.closer = record_closer
if a.resize_output:
    E.WRow.grow_to = observe_resize(E.WRow.grow_to, 'grow')
    E.WRow.shrink_to = observe_resize(E.WRow.shrink_to, 'shrink')
    E.WalkWBase._fwd_add = observe_stage(E.WalkWBase._fwd_add, 'add')
    E.WalkWBase._fwd_shift_exit = observe_stage(E.WalkWBase._fwd_shift_exit, 'shift_exit')
if a.allocation_output:
    E.G.ctrl_add_rows = observe_ctrl_add_rows
    Builder.qubit = observe_qubit
    Builder.recycle = observe_recycle
    E.HomePool.draw = observe_draw
    E.HomePool.give = observe_give
    E.WalkWBase._fwd_add = observe_allocation_stage(E.WalkWBase._fwd_add, 'add')
    E.WalkWBase._z_step = observe_allocation_stage(E.WalkWBase._z_step, 'counter')
    E.WalkWBase._fwd_shift_exit = observe_allocation_stage(E.WalkWBase._fwd_shift_exit, 'shift_exit')
if a.control_output:
    E.HmrWalk.step_fwd = observe_control_step(E.HmrWalk.step_fwd)
    E.WalkWBase._r_fit = observe_record_fit(E.WalkWBase._r_fit)
    E.WalkWBase._s_death = observe_sigma_death(E.WalkWBase._s_death)
    E.WalkWBase._fwd_shift_exit = begin_control_after_shift(E.WalkWBase._fwd_shift_exit)
    for name in ['ztest_blocked', 'ztest_free', 'zero_test', 'eq_const',
                 'and_chain', 'release_chain', 'andp', 'andm']:
        setattr(E.G, name, observe_control_call(getattr(E.G, name), name))
b = Builder()
try:
    C.build_circuit(b)
except Captured:
    pass
assert len(records) == 2, 'Expected s2 and s6 closer snapshots'
a.output.write_text(json.dumps({'source_commit': PIN,
    'engine_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
    'entry': str(entry.relative_to(root)), 'qcap': C.QCAP, 'wide': False,
    'entry_sha256': hashlib.sha256(entry.read_bytes()).hexdigest(),
    'note': 'Public allocation data only; not a correctness or peak theorem.',
    'closers': records}, indent=2) + '\n')
print(json.dumps({'entry': str(entry.relative_to(root)), 'qcap': C.QCAP, 'wide': False,
    'entry_sha256': hashlib.sha256(entry.read_bytes()).hexdigest(),
    'moves': [len(r['moves']) for r in records],
    'allocated_before': [len(r['before']['allocated']) for r in records],
    'allocated_after': [len(r['after']['allocated']) for r in records]}))

if a.resize_output:
    resize_bytes = (json.dumps({
        'source_commit': PIN, 'entry': str(entry.relative_to(root)),
        'engine_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
        'entry_sha256': hashlib.sha256(entry.read_bytes()).hexdigest(),
        'qcap': C.QCAP, 'note': 'Observed addresses only; no semantic or peak assertion.',
        'stages': resize_records}, separators=(',', ':')) + '\n').encode()
    a.resize_output.write_bytes(gzip.compress(resize_bytes, mtime=0)
                                if a.resize_output.suffix == '.gz' else resize_bytes)
    print(json.dumps({'resize_stages': len(resize_records),
                      'resize_transactions': sum(len(x['resizes']) for x in resize_records)}))

if a.allocation_output:
    payload = (json.dumps({
        'source_commit': PIN, 'entry': str(entry.relative_to(root)),
        'engine_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
        'entry_sha256': hashlib.sha256(entry.read_bytes()).hexdigest(),
        'qcap': C.QCAP, 'note': 'Observed allocation events only; release cleanliness is not asserted.',
        'stages': allocation_records}, separators=(',', ':')) + '\n').encode()
    a.allocation_output.write_bytes(gzip.compress(payload, mtime=0)
                                    if a.allocation_output.suffix == '.gz' else payload)
    print(json.dumps({'allocation_stages': len(allocation_records),
                      'allocation_events': sum(len(x['events']) for x in allocation_records)}))

if a.control_output:
    payload = (json.dumps({
        'source_commit': PIN, 'entry': str(entry.relative_to(root)),
        'engine_sha256': hashlib.sha256(source.read_bytes()).hexdigest(),
        'entry_sha256': hashlib.sha256(entry.read_bytes()).hexdigest(),
        'qcap': C.QCAP, 'note': 'Observed calls and addresses only; no semantic or peak theorem.',
        'stages': control_records}, separators=(',', ':')) + '\n').encode()
    a.control_output.write_bytes(gzip.compress(payload, mtime=0)
                                 if a.control_output.suffix == '.gz' else payload)
    print(json.dumps({'control_stages': len(control_records),
                      'control_events': sum(len(x['events']) for x in control_records),
                      'control_calls': sum(len(x['calls']) for x in control_records)}))
