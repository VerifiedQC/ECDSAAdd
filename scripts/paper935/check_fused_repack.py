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
print('Initial headroom Lean instances match the source trace exactly.')
