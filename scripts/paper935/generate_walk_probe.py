"""Generate a diagnostic Lean execution of the complete forward log checker.

#eval output is not a kernel theorem. Output is deliberately kept outside the
library; this probe locates transcription/interface failures before proofs.
"""
from pathlib import Path
import sys
from front_trace import load, front_log
from control_trace import early_control_log, armed_control_log

if len(sys.argv) != 2:
    raise SystemExit('usage: python3.13 generate_walk_probe.py OUTPUT.lean')
A, R, C = load('allocations'), load('resize'), load('control')
ai = {(s['phase'],s['step'],s['stage']):s for s in A}
ri = {(s['phase'],s['step'],s['stage']):s for s in R}
ci = {(s['phase'],s['step']):s for s in C}
lines = ['import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkRun',
         'namespace ECDSAAdd.Arithmetic.Paper935']
for phase in ('s2-walkA','s6-walkC'):
    name = phase[:2]+'Observed'
    a = ai[phase,0,'add']
    r = ri[phase,0,'add']
    cond = ' ∨ '.join(f'({lo} ≤ q ∧ q < {hi})' for lo,hi in a['live_before'])
    lines += [f'def {name}Arena : Arena := ⟨arenaWires.filter (fun q => {cond}),Finset.filter_subset _ _⟩']
    rows = r['before']['rows']
    bank = ','.join('⟨'+str(rows[k]['payload'])+','+str(rows[k]['sign'])+'⟩' for k in ('f','g','fv','gv'))
    lines += [f'def {name}Bank : WindowBank := ⟨{bank}⟩']
    specs = []
    for t in range(533):
        add, counter = ai[phase,t,'add'], ai[phase,t,'counter']
        resize, end, control = ri[phase,t,'add'], ri[phase,t,'shift_exit'], ci[phase,t]
        log, arm = front_log(add,counter,resize,end)
        rowlog = '⟨'+','.join(str(log['rows'][r]) for r in ('entry','headroom','exit'))+'⟩'
        fl = '⟨'+','.join([rowlog]+[str(log[k]) for k in ('sigma','branch','flag','carry','first','second','counter')])+'⟩'
        clog = early_control_log(control) if t<498 else armed_control_log(control)
        keys = ['zero','positive','class','flags','fresh'] if t<498 else ['freezeZero','fire','counterZero','positive','classWork','flags','counterDrop','sigmaGuard','timestampEq','fireGuard','freezeDrop']
        cs = '⟨'+','.join(str(clog[k]) for k in keys)+'⟩'
        ms = '['+','.join(f'({m["old"]},{m["fresh"]})' for rp in end['repacks'] for m in rp['moves'])+']'
        md = '⟨'+str(control['timestamp'])+','+str(control['frozen'])+'⟩'
        tag = '.early ' if t<498 else ('.arm '+md+' ' if t==498 else '.armed ')
        sl = tag+'⟨'+fl+','+ms+','+cs+'⟩'
        widths = {r['row']:r['width'] for r in resize['resizes'][:4]}
        exits = {r['row']:r['width'] for r in end['resizes']}
        ew = '⟨'+','.join(str(exits[k]) for k in ('f','g','fv','gv'))+'⟩'
        specs.append('⟨'+','.join([str(widths['f']),str(widths['fv']),ew,str(control['record_fits'][0]['need']),sl])+'⟩')
        assert control['counter'] == ci[phase,0]['counter']
        if t==498: assert arm == control['timestamp']+[control['frozen']]
    for i in range(0,len(specs),16):
        lines += [f'def {name}Logs{i} : List HmrSourceWalkStepLog := [', ',\n'.join(specs[i:i+16]), ']']
    logs = ' ++ '.join(f'{name}Logs{i}' for i in range(0,len(specs),16))
    lines += [f'def {name}Logs : List HmrSourceWalkStepLog := {logs}',
              f'#eval (compileHmrSourceWalk {ci[phase,0]["counter"]} 6 498 none {name}Arena {name}Bank {ci[phase,0]["record_before"]} 0 {name}Logs).isSome']
lines += ['end ECDSAAdd.Arithmetic.Paper935']
Path(sys.argv[1]).write_text('\n'.join(lines)+'\n')
