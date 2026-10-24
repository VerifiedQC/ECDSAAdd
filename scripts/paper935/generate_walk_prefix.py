"""Connect checked early steps using their actual output boundaries."""
import sys
from certificate_steps import CERTIFICATE_STEPS
PREFIX_LENGTH=next(n for n in range(499) if n not in CERTIFICATE_STEPS)
assert 1 <= PREFIX_LENGTH <= 498
from front_trace import ROOT,load
c=load('control');r=load('resize')
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixtures',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition',
       'namespace ECDSAAdd.Arithmetic.Paper935']
for p in ('s2','s6'):
    name=p+'Observed'
    for t in range(PREFIX_LENGTH):
        lines += [f'def {name}Spec{t} : HmrSourceWalkStepLog := {name}Logs{t//16*16}[{t%16}]',
                  f'def {name}Plan{t} : HmrSourceStepPlan := .early {p}Step{t}CompletePlan']
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
        record=str(old)
        b=boundary(t)
        lines += [f'theorem {b}_arena : {name}Plan{t}.outputArena={p}Step{t+1}EntryFBefore := rfl',
                  f'theorem {b}_bank : {name}Plan{t}.bank={p}Step{t+1}FrontBank := by decide +kernel',
                  f'theorem {b}_record : {name}Plan{t}.record {record}={new} := rfl']
    starts=list(range(0,PREFIX_LENGTH,16))
    for index,start in enumerate(starts):
        stop=min(start+16,PREFIX_LENGTH);last=stop-1
        record=next(s for s in c if s['phase'].startswith(p) and s['step']==last)['record_before']
        initial=next(s for s in c if s['phase'].startswith(p) and s['step']==start)['record_before']
        plan=f'(.done {name}Plan{last}.outputArena {name}Plan{last}.bank ({name}Plan{last}.record {record}) none)'
        for t in reversed(range(start,stop)):plan=f'(.step {name}Plan{t} {plan})'
        segment=f'{name}Segment{start}'
        logs='['+','.join(f'{name}Spec{t}' for t in range(start,stop))+']'
        lines += [f'def {segment}Logs : List HmrSourceWalkStepLog := {logs}',
                  f'theorem {segment}_length : {segment}Logs.length={stop-start} := rfl',
                  f'def {segment}Plan : HmrSourceWalkPlan := {plan}',
                  f'theorem {segment}_checked :',
                  f'    compileHmrSourceWalk {name}Counter 6 498 none {p}Step{start}EntryFBefore {p}Step{start}FrontBank {initial} {start} {segment}Logs=some {segment}Plan := by',
                  f'  unfold {segment}Logs']
        for t in range(start,stop):
            indent='  '*(t-start+1)
            lines += [indent+f'apply compileHmrSourceWalk_cons (P := {name}Plan{t})',
                      indent+f'· exact {name}_step{t}_checked']
            if t==last:lines += [indent+'· rfl']
            else:
                bd=boundary(t)
                lines += [indent+f'· rw [{bd}_arena,{bd}_bank,{bd}_record]']
        fields={'outputArena':f'{name}Plan{last}.outputArena',
                'bank':f'{name}Plan{last}.bank','record':f'{name}Plan{last}.record {record}','metadata':'none'}
        for field,value in fields.items():
            lines += [f'theorem {segment}_{field} : {segment}Plan.{field}={value} := rfl']
        prefix=f'{name}PrefixPart{index}'
        if index==0:
            lines += [f'def {prefix}Logs := {segment}Logs', f'def {prefix}Plan := {segment}Plan',
                      f'theorem {prefix}_length : {prefix}Logs.length={stop} := rfl',
                      f'theorem {prefix}_checked : compileHmrSourceWalk {name}Counter 6 498 none {name}Arena {name}Bank {name}Record 0 {prefix}Logs=some {prefix}Plan := {segment}_checked']
        else:
            prev=f'{name}PrefixPart{index-1}';bd=boundary(start-1)
            lines += [f'def {prefix}Logs := {prev}Logs++{segment}Logs',
                      f'def {prefix}Plan := {prev}Plan.append {segment}Plan',
                      f'theorem {prefix}_length : {prefix}Logs.length={stop} := by',
                      f'  rw [{prefix}Logs,List.length_append,{prev}_length,{segment}_length]',
                      f'theorem {prefix}_checked : compileHmrSourceWalk {name}Counter 6 498 none {name}Arena {name}Bank {name}Record 0 {prefix}Logs=some {prefix}Plan := by',
                      f'  have suffix : compileHmrSourceWalk {name}Counter 6 498 {prev}Plan.metadata {prev}Plan.outputArena {prev}Plan.bank {prev}Plan.record (0+{prev}Logs.length) {segment}Logs=some {segment}Plan := by',
                      f'    rw [{prev}_metadata,{prev}_outputArena,{prev}_bank,{prev}_record,{prev}_length,Nat.zero_add]',
                      f'    rw [{bd}_arena,{bd}_bank,{bd}_record]',f'    exact {segment}_checked',
                      f'  exact compileHmrSourceWalk_append {name}Counter 6 498 {prev}Logs {segment}Logs none {name}Arena {name}Bank {name}Record 0 {prev}Plan {segment}Plan {prev}_checked suffix']
        for field,value in fields.items():
            lines += [f'theorem {prefix}_{field} : {prefix}Plan.{field}={value} := by']
            if index==0:lines += [f'  exact {segment}_{field}']
            else:lines += [f'  rw [{prefix}Plan,HmrSourceWalkPlan.append_{field},{segment}_{field}]']
    final=f'{name}PrefixPart{len(starts)-1}'
    lines += [f'theorem {name}_prefix_logs : {name}Logs.take {PREFIX_LENGTH}={final}Logs := rfl',
              f'def {name}PrefixPlan : HmrSourceWalkPlan := {final}Plan',
              f'theorem {name}_prefix_checked :',
              f'    compileHmrSourceWalk {name}Counter 6 498 none {name}Arena {name}Bank {name}Record 0 ({name}Logs.take {PREFIX_LENGTH})=some {name}PrefixPlan := by',
              f'  rw [{name}_prefix_logs]',f'  exact {final}_checked']
lines+=['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
# Keep per-step and segment certificates in files with at most sixteen steps.
# Cross-segment boundaries and cumulative append proofs live in a small join file.
import re
header,body=text.split('namespace ECDSAAdd.Arithmetic.Paper935',1)
body=body.rsplit('end ECDSAAdd.Arithmetic.Paper935',1)[0]
marks=list(re.finditer(r'^(?:def|theorem) (\w+)',body,re.M))
buckets={}
for i,mark in enumerate(marks):
    decl=mark.group(1);prefix=decl[:2]
    step=re.match(r's[26]Observed(?:Spec|Plan)(\d+)$',decl)
    if step is None:step=re.match(r's[26]Observed_step(\d+)_checked$',decl)
    segment=re.match(r's[26]ObservedSegment(\d+)',decl)
    boundary=re.match(r's[26]Observed_boundary(\d*)_',decl)
    if step:
        start=int(step.group(1))//16*16;kind='Segment'+str(start)
    elif segment:kind='Segment'+segment.group(1)
    elif boundary:
        t=int(boundary.group(1) or '0')
        kind='Join' if t%16==15 else 'Segment'+str(t//16*16)
    else:kind='Join'
    module='HmrSource'+prefix.upper()+'Prefix'+kind
    buckets.setdefault(module,[]).append(body[mark.start():(marks[i+1].start() if i+1<len(marks) else len(body))])
outputs={}
for module,blocks in buckets.items():
    imports=header
    if module.endswith('Join'):
        prefix=module[len('HmrSource'):len('HmrSource')+2]
        imports+=''.join('import ECDSAAdd.Arithmetic.Paper935.HmrSource'+prefix+'PrefixSegment'+str(start)+'\n' for start in range(0,PREFIX_LENGTH,16))
    outputs[module]=imports+'\nnamespace ECDSAAdd.Arithmetic.Paper935\n'+''.join(blocks)+'\nend ECDSAAdd.Arithmetic.Paper935\n'
outputs['HmrSourceWalkPrefix']=''.join('import ECDSAAdd.Arithmetic.Paper935.HmrSource'+p+'PrefixJoin\n' for p in ('S2','S6'))
for module,content in outputs.items():
    path=ROOT/'ECDSAAdd/Arithmetic/Paper935'/f'{module}.lean'
    if '--check' in sys.argv:assert path.read_text()==content
    else:path.write_text(content)
