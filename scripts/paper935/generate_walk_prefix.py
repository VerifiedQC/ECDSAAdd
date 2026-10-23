"""Connect checked early steps using their actual output boundaries."""
import sys
from certificate_steps import CERTIFICATE_STEPS
PREFIX_LENGTH=next(n for n in range(499) if n not in CERTIFICATE_STEPS)
assert 1 <= PREFIX_LENGTH <= 16
from front_trace import ROOT,load
c=load('control');r=load('resize')
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixtures',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition',
       'namespace ECDSAAdd.Arithmetic.Paper935']
for p in ('s2','s6'):
    name=p+'Observed'
    for t in range(PREFIX_LENGTH):
        lines += [f'def {name}Spec{t} : HmrSourceWalkStepLog := {name}Logs0[{t}]',
                  f'def {name}Plan{t} : HmrSourceStepPlan := .early {p}Step{t}CompletePlan']
    specs='['+','.join(f'{name}Spec{t}' for t in range(PREFIX_LENGTH))+']'
    lines += [f'theorem {name}_prefix_logs : {name}Logs.take {PREFIX_LENGTH}={specs} := rfl']
    for t in range(PREFIX_LENGTH):
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
    def boundary(t): return name+'_boundary'+('' if t==0 else str(t))
    for t in range(PREFIX_LENGTH-1):
        old=next(s for s in c if s['phase'].startswith(p) and s['step']==t)['record_before']
        new=next(s for s in c if s['phase'].startswith(p) and s['step']==t+1)['record_before']
        record=name+'Record' if t==0 else str(old)
        b=boundary(t)
        lines += [f'theorem {b}_arena : {name}Plan{t}.outputArena={p}Step{t+1}EntryFBefore := rfl',
                  f'theorem {b}_bank : {name}Plan{t}.bank={p}Step{t+1}FrontBank := by decide +kernel',
                  f'theorem {b}_record : {name}Plan{t}.record {record}={new} := rfl']
    last=PREFIX_LENGTH-1
    record=next(s for s in c if s['phase'].startswith(p) and s['step']==last)['record_before']
    plan=f'(.done {name}Plan{last}.outputArena {name}Plan{last}.bank ({name}Plan{last}.record {record}) none)'
    for t in reversed(range(PREFIX_LENGTH)):plan=f'(.step {name}Plan{t} {plan})'
    lines += [f'def {name}PrefixPlan : HmrSourceWalkPlan := {plan}',
              f'theorem {name}_prefix_checked :',
              f'    compileHmrSourceWalk {name}Counter 6 498 none {name}Arena {name}Bank {name}Record 0 ({name}Logs.take {PREFIX_LENGTH})=some {name}PrefixPlan := by',
              f'  rw [{name}_prefix_logs]']
    for t in range(PREFIX_LENGTH):
        indent='  '*(t+1)
        lines += [indent+f'apply compileHmrSourceWalk_cons (P := {name}Plan{t})',
                  indent+f'· exact {name}_step{t}_checked']
        if t==last:lines += [indent+'· rfl']
        else:
            b=boundary(t)
            lines += [indent+f'· rw [{b}_arena,{b}_bank,{b}_record]']
lines+=['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines);path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceWalkPrefix.lean'
if '--check' in sys.argv:assert path.read_text()==text
else:path.write_text(text)
