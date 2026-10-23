"""Generate the complete source walk journals, without assuming acceptance."""
from pathlib import Path
import sys
from certificate_steps import CERTIFICATE_STEPS
from front_trace import load, front_log
from control_trace import early_control_log, armed_control_log

root = Path(__file__).resolve().parents[2]
check = '--check' in sys.argv
outputs = {}
A, R, C = load('allocations'), load('resize'), load('control')
ai = {(s['phase'],s['step'],s['stage']):s for s in A}
ri = {(s['phase'],s['step'],s['stage']):s for s in R}
ci = {(s['phase'],s['step']):s for s in C}
for phase in ('s2-walkA','s6-walkC'):
    lines = ['import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler',
             '', 'namespace ECDSAAdd.Arithmetic.Paper935', '',
             '/- Generated allocation journals, not a proof of compiler acceptance. -/', '']
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
        lines += [f'def {name}Logs{i} : List HmrSourceWalkStepLog := [', ',\n'.join(specs[i:i+16]), ']',
                  f'theorem {name}Logs{i}_length : {name}Logs{i}.length = {len(specs[i:i+16])} := rfl']
    logs = ' ++ '.join(f'{name}Logs{i}' for i in range(0,len(specs),16))
    lengths = ', '.join(f'{name}Logs{i}_length' for i in range(0,len(specs),16))
    lines += [f'def {name}Logs : List HmrSourceWalkStepLog := {logs}',
              f'def {name}Counter : List Wire := {ci[phase,0]["counter"]}',
              f'def {name}Record : List Wire := {ci[phase,0]["record_before"]}',
              f'theorem {name}Logs_length : {name}Logs.length = 533 := by',
              f'  simp only [{name}Logs, List.length_append, {lengths}]',
              '', 'end ECDSAAdd.Arithmetic.Paper935', '']
    outputs['HmrSource'+phase[:2].upper()+'WalkLogs'] = '\n'.join(lines)
for module, text in outputs.items():
    path = root/'ECDSAAdd/Arithmetic/Paper935'/f'{module}.lean'
    if check:
        assert path.read_text() == text, f'{module} is stale; regenerate walk logs'
    else:
        path.write_text(text)
print('Both 533-step Lean journals match the pinned export; compiler acceptance is a separate obligation.')

bridge = ['import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs',
          'import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs',
          'import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitial', '',
          'namespace ECDSAAdd.Arithmetic.Paper935', '']
for prefix in ('s2','s6'):
    for t in CERTIFICATE_STEPS:
        log = f'.early {prefix}Step{t}CompleteLog' if t < 498 else f'.arm {prefix}ArmBoundaryMetadata {prefix}Step498CompleteLog'
        bridge += [f'theorem {prefix}Observed_step{t}_log :',
                   f'    ({prefix}ObservedLogs[{t}]?).map HmrSourceWalkStepLog.log = some ({log}) := by',
                   f'  have index : {prefix}ObservedLogs[{t}]? = {prefix}ObservedLogs{t//16*16}[{t%16}]? := by',
                   f'    norm_num only [{prefix}ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, '+', '.join(f'{prefix}ObservedLogs{i}_length' for i in range(0,533,16))+']',
                   '  rw [index]', '  rfl', '']
bridge += ['end ECDSAAdd.Arithmetic.Paper935', '']
path = root/'ECDSAAdd/Arithmetic/Paper935/HmrSourceWalkLogFixtures.lean'
text = '\n'.join(bridge)
if check:
    assert path.read_text() == text, 'walk log fixtures are stale'
else:
    path.write_text(text)
