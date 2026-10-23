"""Transcribe arithmetic-front journals; this is not a semantic certificate."""
import gzip
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PIN = '64b5a13aa249f1360846657392e6c66817b26d0f'

def load(name):
    data = json.loads(gzip.decompress((ROOT / f'data/paper935/hmr-source-{name}.json.gz').read_bytes()))
    assert data['source_commit'] == PIN
    return data['stages']

def take(events):
    return [e['wire'] for e in events if e['kind'] == 'take']

def front_log(add, counter, resize, exit):
    assert len(resize['resizes']) == 8 and len(exit['resizes']) == 4
    entry, headroom, shrink = resize['resizes'][:4], resize['resizes'][4:], exit['resizes']
    assert [r['row'] for r in entry] == ['f', 'g', 'fv', 'gv']
    assert [r['row'] for r in headroom] == ['g', 'f', 'gv', 'fv']
    assert [r['row'] for r in shrink] == ['g', 'f', 'fv', 'gv']
    def fresh(r):
        if len(r['after']) >= len(r['before']):
            assert r['after'][:len(r['before'])] == r['before']
            return r['after'][len(r['before']):]
        assert r['before'][:len(r['after'])] == r['after']
        return []
    rows = {name: [fresh(r) for r in rs] for name, rs in [('entry', entry), ('headroom', headroom), ('exit', shrink)]}
    sigma, branch = add['retained_flags']
    first, second = add['calls']
    assert first['end'] == second['start']
    assert first['control'] == second['control'] == branch
    assert first['cin'] == second['cin'] and first['carry'] == second['carry']
    prefix = take(add['events'][:first['start']])
    expected = sum(rows['entry'], []) + [sigma, branch] + sum(rows['headroom'], []) + [first['cin'], first['carry']]
    # Exactly the arm boundary has seven takes before the first row padding.
    arm = prefix[:-len(expected)] if expected else prefix
    assert prefix == arm + expected
    assert len(arm) == (7 if add['step'] == 498 else 0)
    assert all(e['kind'] == 'take' for e in add['events'][:first['start']])
    return dict(rows=rows, sigma=[sigma], branch=[branch], flag=[first['cin']], carry=[first['carry']],
                first=take(add['events'][first['start']:first['end']]),
                second=take(add['events'][second['start']:second['end']]), counter=take(counter['events'])), arm

if __name__ == '__main__':
    allocations, resizes = load('allocations'), load('resize')
    ai = {(s['phase'], s['step'], s['stage']): s for s in allocations}
    ri = {(s['phase'], s['step'], s['stage']): s for s in resizes}
    count = 0
    for phase in ('s2-walkA', 's6-walkC'):
        for t in range(533):
            front_log(ai[phase,t,'add'], ai[phase,t,'counter'], ri[phase,t,'add'], ri[phase,t,'shift_exit'])
            count += 1
    print(f'{count} front journals transcribed; no Lean acceptance or quantum semantics inferred.')
