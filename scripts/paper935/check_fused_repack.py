"""Check the Lean snapshot constants against the pinned source journal export.

This checks data transcription, not the compiled-walk/source correspondence.
The Lean kernel checks the ownership and readiness theorems separately.
"""
import json
from pathlib import Path
import re

root = Path(__file__).resolve().parents[2]
data = json.loads((root / 'data/fused-hmr935-repack.json').read_text())
lean = (root / 'ECDSAAdd/Arithmetic/Paper935/FusedSourceRepack.lean').read_text()
assert data['source_commit'] == '64b5a13aa249f1360846657392e6c66817b26d0f'
assert data['entry'] == 'tasks/modinv-point-add/circuits/divsteps/circuit.py'
assert data['qcap'] == 935 and data['wide'] is False
assert len(data['closers']) == 2
for name, record in zip(('s2', 's6'), data['closers']):
    section = lean.split(f'def {name}SourceLive : Finset Wire :=', 1)[1].split('\ntheorem', 1)[0]
    intervals = [(int(a), int(b)) for a, b in re.findall(r'\((\d+) ≤ q ∧ q < (\d+)\)', section)]
    actual = {q for a, b in intervals for q in range(a, b)}
    before = record['before']
    expected = set(before['allocated']) - set(sum(before['free'].values(), []))
    assert actual == expected, (name, 'live snapshot mismatch')
    section = lean.split(f'def {name}SourceRepack : List (Wire × Wire) :=', 1)[1].split('\ntheorem', 1)[0]
    moves = [(int(a), int(b)) for a, b in re.findall(r'\((\d+), (\d+)\)', section)]
    assert moves == [(m['old'], m['fresh']) for m in record['moves']], name
    for old, fresh in moves:
        assert old in actual and fresh not in actual
        actual.remove(old)
        actual.add(fresh)
    after = record['after']
    assert actual == set(after['allocated']) - set(sum(after['free'].values(), [])), name
print('Both Lean source snapshots and journals match the pinned export.')

# Forward resize observations come from the same run and source pin. This
# checks transcription/ownership arithmetic only, not quantum semantics or
# the generation of the source trace by Lean.
import gzip
resize_path = root / 'data/paper935/hmr-source-resize.json.gz'
resize = json.loads(gzip.decompress(resize_path.read_bytes()))
for key in ('source_commit', 'entry', 'engine_sha256', 'entry_sha256', 'qcap'):
    assert resize[key] == data[key], (key, 'resize pin mismatch')
assert len(resize['stages']) == 2 * 533 * 2

def live_set(ranges):
    result = set()
    last = -1
    for lo, hi in ranges:
        assert last < lo < hi <= 935
        result.update(range(lo, hi))
        last = hi
    return result

for phase in ('s2-walkA', 's6-walkC'):
    stages = [s for s in resize['stages'] if s['phase'] == phase]
    assert [(s['step'], s['stage']) for s in stages] == [
        (t, stage) for t in range(533) for stage in ('add', 'shift_exit')]
    for stage in stages:
        expected = ['f','g','fv','gv','g','f','gv','fv'] if stage['stage']=='add' else ['g','f','fv','gv']
        assert [r['row'] for r in stage['resizes']] == expected
        for repack in stage['repacks']:
            before, after = repack['before'], repack['after']
            live = set(before['allocated']) - set(sum(before['free'].values(), []))
            rows = {name: list(row['payload']) for name, row in before['rows'].items()}
            for move in repack['moves']:
                old, fresh = move['old'], move['fresh']
                assert 0 <= old < 935 and 0 <= fresh < 935
                assert old in live and fresh not in live
                assert rows[move['row']][move['index']] == old
                rows[move['row']][move['index']] = fresh
                live.remove(old)
                live.add(fresh)
            assert live == set(after['allocated']) - set(sum(after['free'].values(), []))
            assert rows == {name: row['payload'] for name, row in after['rows'].items()}
        for record in stage['resizes']:
            before, after = record['before'], record['after']
            width, sign = record['width'], record['sign']
            old_live, new_live = live_set(record['live_before']), live_set(record['live_after'])
            assert len(after) == width
            assert len(set(before + [sign])) == len(before) + 1
            assert set(before + [sign]) <= old_live
            if record['operation'] == 'grow':
                assert width >= len(before) and after[:len(before)] == before
                fresh = after[len(before):]
                assert len(set(fresh)) == len(fresh) and not set(fresh) & old_live
                assert new_live == old_live | set(fresh)
            else:
                assert record['operation'] == 'shrink' and width <= len(before)
                assert after == before[:width] and new_live == old_live - set(before[width:])
print('Pinned forward resize observations: 2 walks × 533 steps; 12792 transactions checked (not a whole-walk proof).')

# Require exact regeneration of the selected Lean instances, in this same
# check entry point used by verify.sh.
import subprocess
import sys
subprocess.run([sys.executable, str(root / 'scripts/paper935/generate_resize_instances.py'),
                '--check'], check=True)
print('Selected Lean resize/exit/scratch instances match the source traces exactly.')

allocation = json.loads(gzip.decompress((root / 'data/paper935/hmr-source-allocations.json.gz').read_bytes()))
for key in ('source_commit', 'entry', 'engine_sha256', 'entry_sha256', 'qcap'):
    assert allocation[key] == data[key], (key, 'allocation pin mismatch')
assert len(allocation['stages']) == 2 * 533 * 3
assert sum(len(s['events']) for s in allocation['stages']) == 195080
resize_index = {(s['phase'], s['step'], s['stage']): s for s in resize['stages']}
def snapshot_live(s):
    return set(s['allocated']) - set(sum(s['free'].values(), []))
for phase in ('s2-walkA', 's6-walkC'):
    stages = [s for s in allocation['stages'] if s['phase'] == phase]
    assert [(s['step'], s['stage']) for s in stages] == [
        (t, k) for t in range(533) for k in ('add', 'counter', 'shift_exit')]
    for t in range(533):
        add, counter, shift = stages[3*t:3*t+3]
        assert add['live_after'] == counter['live_before']
        assert counter['live_after'] == shift['live_before']
    for stage in stages:
        live = live_set(stage['live_before'])
        sizes = [len(live)]
        for event in stage['events']:
            q = event['wire']
            assert 0 <= q < 935
            if event['kind'] == 'take':
                assert q not in live
                live.add(q)
            else:
                assert event['kind'] == 'give' and q in live
                live.remove(q)
            sizes.append(len(live))
        assert live == live_set(stage['live_after'])
        if stage['stage'] in ('add', 'shift_exit'):
            row_stage = resize_index[(phase, stage['step'], stage['stage'])]
            assert live_set(stage['live_before']) == snapshot_live(row_stage['before'])
            assert live == snapshot_live(row_stage['after'])
        if stage['stage'] == 'counter':
            taken = [e['wire'] for e in stage['events'] if e['kind'] == 'take']
            given = [e['wire'] for e in stage['events'] if e['kind'] == 'give']
            assert len(taken) == (4 if stage['early'] else 5) and given == taken[::-1]
            assert [e['kind'] for e in stage['events']] == ['take']*len(taken) + ['give']*len(taken)
            assert len(stage['counter']) == 6
            assert len(set([stage['control']] + stage['counter'])) == 7
            assert set([stage['control']] + stage['counter']) <= live_set(stage['live_before'])
            assert live == live_set(stage['live_before'])
        if stage['stage'] == 'add':
            assert len(stage['calls']) == 2
            for call in stage['calls']:
                assert call['active'] == sizes[call['start']]
                assert call['qcap'] == 935 and len(call['source']) == len(call['target']) > 0
                events = stage['events'][call['start']:call['end']]
                taken = [e['wire'] for e in events if e['kind'] == 'take']
                given = [e['wire'] for e in events if e['kind'] == 'give']
                assert len(taken) == max(0, min(935-call['active'], len(call['source'])-1))
                assert given == taken[::-1]
                assert [e['kind'] for e in events] == ['take']*len(taken) + ['give']*len(taken)
print('3198 allocation stages and 195080 observed borrow/return events checked; no cleanliness theorem inferred.')

sys.path.insert(0, str(Path(__file__).resolve().parent))
from control_trace import replay, zero_logs, free_logs, freeze_calls, early_control_log, armed_control_log
control = json.loads(gzip.decompress((root / 'data/paper935/hmr-source-control.json.gz').read_bytes()))
for key in ('source_commit', 'entry', 'engine_sha256', 'entry_sha256', 'qcap'):
    assert control[key] == data[key], (key, 'control pin mismatch')
assert len(control['stages']) == 1066
assert sum(len(f['after']) > len(f['before']) for s in control['stages'] for f in s['record_fits']) == 120
allocation_index = {(s['phase'],s['step'],s['stage']):s for s in allocation['stages']}
for phase in ('s2-walkA','s6-walkC'):
    stages = [s for s in control['stages'] if s['phase']==phase]
    assert [s['step'] for s in stages]==list(range(533))
    for s in stages:
        assert s['stage']=='control' and s['tmin']==498 and s['early']==(s['step']<498)
        assert s['live_before']==allocation_index[(phase,s['step'],'shift_exit')]['live_after']
        states=replay(s)
        assert len(s['record_fits'])==1
        fit=s['record_fits'][0]
        assert fit['step']==s['step'] and fit['before']==s['record_before'] and fit['after']==s['record_after']
        assert len(fit['before'])<=fit['need']==len(fit['after'])<=60
        assert fit['after'][:len(fit['before'])]==fit['before']
        added=fit['after'][len(fit['before']):]
        events=s['events'][fit['start']:fit['end']]
        assert [e['kind'] for e in events]==['take']*len(added)
        assert [e['wire'] for e in events]==added
        assert set(fit['before'])<=states[fit['start']]
        assert states[fit['end']]==states[fit['start']]|set(added)
        assert len(set(fit['after']))==len(fit['after'])
        for call in s['calls']:
            assert 0<=call['start']<=call['end']<=len(s['events'])
            if call['method']=='ztest_blocked':
                logs=zero_logs(s,call)
                keepers={k[1] for k in call['result'][1]}
                assert states[call['end']]==states[call['start']]|keepers
                assert len(states[call['end']])-len(states[call['start']])==len(logs)
            if call['method']=='ztest_free':
                free_logs(s,call)
                keepers={k[1] for k in call['args'][0]}
                assert states[call['end']]==states[call['start']]-keepers
        if not s['early']:
            armed_control_log(s)
            zero,fire,eq,w1,drop=freeze_calls(s)
            assert states[fire['end']]==states[zero['start']]|{k[1] for k in zero['result'][1]}|{fire['result']}
        else:
            early_control_log(s)
            assert not any(c['method'] in ('ztest_blocked','ztest_free') for c in s['calls'])
print('1066 post-shift control journals checked, including actual F7/F16 calls and fresh cleanup prefixes; no quantum semantics inferred.')
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_control_instances.py'),'--check'],check=True)
print('Selected Lean F7/F16 instances match the observed source call journals exactly.')
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_arm_instances.py'),'--check'],check=True)
print('Both Lean arm-boundary instances match the observed leading allocation events.')
subprocess.run([sys.executable,str(root/'scripts/paper935/front_trace.py')],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_headroom_parts.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_headroom_parts.py'),'--entry','--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_headroom_bank.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_headroom_bank.py'),'--entry','--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_arithmetic_parts.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_f4_parts.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_exit_parts.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_headroom_bank.py'),'--exit','--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_counter_parts.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_front_parts.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_step_parts.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_lifecycle_steps.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_walk_logs.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_walk_prefix.py'),'--check'],check=True)
subprocess.run([sys.executable,str(root/'scripts/paper935/generate_multi_repack.py'),'--check'],check=True)

subprocess.run([sys.executable,str(root/'scripts/paper935/generate_fragmented_control.py'),'--check'],check=True)

subprocess.run([sys.executable,str(root/'scripts/paper935/generate_private_steps.py'),'--check'],check=True)
