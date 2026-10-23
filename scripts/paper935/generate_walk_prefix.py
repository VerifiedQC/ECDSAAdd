"""Connect checked early steps using their actual output boundaries."""
import sys
from front_trace import ROOT,load
c=load('control');r=load('resize')
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixtures',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition',
       'namespace ECDSAAdd.Arithmetic.Paper935']
for p in ('s2','s6'):
    name=p+'Observed'
    for t in (0,1):
        lines += [f'def {name}Spec{t} : HmrSourceWalkStepLog := {name}Logs0[{t}]',
                  f'def {name}Plan{t} : HmrSourceStepPlan := .early {p}Step{t}CompletePlan']
    lines += [f'theorem {name}_prefix_logs : {name}Logs.take 2=[{name}Spec0,{name}Spec1] := rfl']
    for t in (0,1):
        ctl=next(s for s in c if s['phase'].startswith(p) and s['step']==t)
        entry=next(x for x in r if x['phase'].startswith(p) and x['step']==t and x['stage']=='add')
        end=next(x for x in r if x['phase'].startswith(p) and x['step']==t and x['stage']=='shift_exit')
        widths={x['row']:x['width'] for x in end['resizes']}
        ew='⟨'+','.join(str(widths[k]) for k in ('f','g','fv','gv'))+'⟩'
        literal=f'⟨{entry["resizes"][0]["width"]},{entry["resizes"][2]["width"]},{ew},{ctl["record_fits"][0]["need"]},.early {p}Step{t}CompleteLog⟩'
        lines += [f'theorem {name}_step{t}_checked :',
                  f'    compileHmrSourceStepLog {p}Step{t}EntryFBefore {p}Step{t}FrontBank',
                  f'      {name}Spec{t}.fgWidth {name}Spec{t}.vWidth {name}Spec{t}.exitWidth {name}Counter {ctl["record_before"]}',
                  f'      6 498 {t} {name}Spec{t}.need none {name}Spec{t}.log=some {name}Plan{t} := by',
                  f'  have spec : {name}Spec{t} = {literal} := rfl',
                  '  rw [spec]',
                  f'  simp only [compileHmrSourceStepLog,if_pos (by decide : {t}<498)]',
                  f'  simp only [{name}Counter]',
                  f'  rw [{p}Step{t}Complete_explicit_checked]', '  rfl']
    ctl1=next(s for s in c if s['phase'].startswith(p) and s['step']==1)
    lines += [f'theorem {name}_boundary_arena : {name}Plan0.outputArena={p}Step1EntryFBefore := rfl',
              f'theorem {name}_boundary_bank : {name}Plan0.bank={p}Step1FrontBank := by decide +kernel',
              f'theorem {name}_boundary_record : {name}Plan0.record {name}Record={ctl1["record_before"]} := rfl',
              f'def {name}PrefixPlan : HmrSourceWalkPlan := .step {name}Plan0 (.step {name}Plan1',
              f'  (.done {name}Plan1.outputArena {name}Plan1.bank ({name}Plan1.record {ctl1["record_before"]}) none))',
              f'theorem {name}_prefix_checked :',
              f'    compileHmrSourceWalk {name}Counter 6 498 none {name}Arena {name}Bank {name}Record 0 ({name}Logs.take 2)=some {name}PrefixPlan := by',
              f'  rw [{name}_prefix_logs]',
              f'  apply compileHmrSourceWalk_cons (P := {name}Plan0)',
              f'  · exact {name}_step0_checked',
              f'  · rw [{name}_boundary_arena,{name}_boundary_bank,{name}_boundary_record]',
              f'    apply compileHmrSourceWalk_cons (P := {name}Plan1)',
              f'    · exact {name}_step1_checked',
              '    · rfl']
lines+=['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines);path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceWalkPrefix.lean'
if '--check' in sys.argv:assert path.read_text()==text
else:path.write_text(text)
