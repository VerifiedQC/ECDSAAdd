"""Generate selected F7/F16 checks from observed addresses, not an allocator."""
import gzip
import json
from pathlib import Path
import sys
import re
from control_trace import replay, zero_logs, free_logs, freeze_calls, early_control_log, armed_control_log
root=Path(__file__).resolve().parents[2]
data=json.loads(gzip.decompress((root/'data/paper935/hmr-source-control.json.gz').read_bytes()))
assert data['source_commit']=='64b5a13aa249f1360846657392e6c66817b26d0f'
def intervals(live):
    rs=[]
    for q in sorted(live):
        if rs and rs[-1][1]==q:rs[-1][1]=q+1
        else:rs.append([q,q+1])
    return ' ∨ '.join(f'({a} ≤ q ∧ q < {b})' for a,b in rs) or 'False'
def arena(name,live):
    return [f'def {name} : Arena :=',f'  ⟨arenaWires.filter (fun q => {intervals(live)}),Finset.filter_subset _ _⟩','']
def lit(q,pol):return f'⟨{q},{str(pol).lower()}⟩'
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreeze','import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeEnd','','namespace ECDSAAdd.Arithmetic.Paper935','','/- Generated from the first armed step of each pinned walk. These are','selected accepted layouts, not a certificate for all 533 steps. -/','']
armed_keepers={}
for phase in ('s2-walkA','s6-walkC'):
    s=next(s for s in data['stages'] if s['phase']==phase and not s['early'])
    states=replay(s);zero,fire,eq,w1,drop=freeze_calls(s)
    logs=zero_logs(s,zero);cleanup=free_logs(s,drop)
    name=phase[:2]+'FirstFreeze'
    lines+=arena(name+'Arena',states[zero['start']])
    lines+=arena(name+'EndArena',states[eq['start']])
    lines+=arena(name+'ReturnedArena',states[drop['end']])
    plans=[]
    for (_,keeper,block,prev),work in zip(zero['result'][1],logs):
        literals=([(prev,True)] if prev is not None else [])+[(q,False) for q in block]
        cells=', '.join('⟨'+lit(*l)+f',{q}⟩' for l,q in zip(literals[1:],work[:-1]))
        plans.append('⟨'+lit(*literals[0])+f', [{cells}], {keeper}⟩')
    lines += [f'def {name}Plans : List HmrBlockPlan :=', '  ['+',\n   '.join(plans)+']','',
              f'def {name}Logs : List (List Wire) := {logs}',
              f'def {name}CleanupLogs : List (List Wire) := {cleanup}','']
    offset=s['step']+1-s['tmin'];fw=fire['result'];zf=zero['result'][0]
    lines += [f'theorem {name}_checked :',
              f'    (compileHmrFreezeLog {name}Arena {s["g"]} {s["frozen"]} {s["timestamp"]} {offset}',
              f'      {name}Logs [{fw}]).map (fun (C,P) => (C.live.card,P.zeroPlans.map HmrBlockPlan.keeper,P.fire)) =',
              f'      some ({len(states[fire["end"]])},{name}Plans.map HmrBlockPlan.keeper,{fw}) := by',
              '  decide +kernel','']
    ew=[e['wire'] for e in s['events'][eq['start']:eq['end']]]
    lines += [f'theorem {name}_cleanup_checked :',
              f'    (compileHmrFreezeEndLog {name}EndArena {s["timestamp"]} {offset} {zf} {s["frozen"]} {fw}',
              f'      {name}Plans {ew} [{w1["result"]}] {name}CleanupLogs).map (fun (C,_) => C.live) =',
              f'      some {name}ReturnedArena.live := by', '  decide +kernel','']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
cleanup=re.findall(r'theorem s[26]FirstFreeze_cleanup_checked :[\s\S]*?  decide \+kernel\n',text)
assert len(cleanup)==2
for block in cleanup:text=text.replace(block+'\n','')
outputs={'HmrSourceFreezeInitial':text,'HmrSourceFreezeCleanupInitial':
    'import ECDSAAdd.Arithmetic.Paper935.HmrSourceFreezeInitial\n\nnamespace ECDSAAdd.Arithmetic.Paper935\n\n'+
    '\n'.join(cleanup)+'\nend ECDSAAdd.Arithmetic.Paper935\n'}
grow=['import ECDSAAdd.Arithmetic.Paper935.HmrLoggedRecordGrow','','namespace ECDSAAdd.Arithmetic.Paper935','']
for phase in ('s2-walkA','s6-walkC'):
    selected=[s for s in data['stages'] if s['phase']==phase and len(s['record_after'])>len(s['record_before'])]
    for label,s in [('First',selected[0]),('Last',selected[-1])]:
        fit,=s['record_fits'];states=replay(s);name=phase[:2]+label+'RecordGrow'
        grow+=arena(name+'Arena',states[fit['start']])
        grow+=arena(name+'After',states[fit['end']])
        fresh=fit['after'][len(fit['before']):]
        grow += [f'def {name}Old : List Wire := {fit["before"]}', '',
                 f'theorem {name}_inputs :',
                 f'    {name}Old.Nodup ∧ {name}Old.toFinset⊆{name}Arena.live ∧ {name}Old.length≤{fit["need"]} := by',
                 '  decide +kernel','',
                 f'theorem {name}_borrow :',
                 f'    ({name}Arena.checkBorrow ({fit["need"]}-{name}Old.length) {fresh}).map (fun C => C.live.card) =',
                 f'      some {len(states[fit["end"]])} := by', '  decide +kernel','',
                 f'/-- Source step {s["step"]}, actual allocation while j-flags remain live. -/',
                 f'theorem {name}_checked :',
                 f'    (compileHmrRecordGrowLog {name}Arena {name}Old {fit["need"]} {fresh}).map (fun C => C.live.card) =',
                 f'      some {len(states[fit["end"]])} := by',
                 f'  simpa only [compileHmrRecordGrowLog,if_pos {name}_inputs] using {name}_borrow','']
grow+=['end ECDSAAdd.Arithmetic.Paper935','']
outputs['HmrSourceRecordGrowInitial']='\n'.join(grow)
from early_parts import generate_early_parts
from certificate_steps import CERTIFICATE_STEPS
early=['import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlComposition',
       'import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable', '',
       'namespace ECDSAAdd.Arithmetic.Paper935', '',
       'local instance hmrEarlyPartsDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=',
       '  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm', '']
for phase in ('s2-walkA','s6-walkC'):
    for t in (t for t in CERTIFICATE_STEPS if t<498):
        stage=next(s for s in data['stages'] if s['phase']==phase and s['step']==t)
        name=phase[:2]+('First' if t==0 else 'Step'+str(t))+'EarlyControl'
        early+=generate_early_parts(stage,name,arena)
early+=['end ECDSAAdd.Arithmetic.Paper935','']
outputs['HmrSourceEarlyControlInitial']='\n'.join(early)
armed=['import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler','','namespace ECDSAAdd.Arithmetic.Paper935','', 'local instance (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=', '  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm', '']
for phase in ('s2-walkA','s6-walkC'):
    stage=next(s for s in data['stages'] if s['phase']==phase and s['step']==s['tmin'])
    log=armed_control_log(stage);states=replay(stage);name=phase[:2]+'FirstArmedControl'
    armed+=arena(name+'Arena',states[0])
    armed+=[f'def {name}Log : HmrArmedControlLog :=',
            '  ⟨'+','.join(str(log[k]) for k in ['freezeZero','fire','counterZero','positive','classWork','flags','counterDrop','sigmaGuard','timestampEq','fireGuard','freezeDrop'])+'⟩','']
    sigma,branch=stage['retained_flags'];fv1,b2,b3,b4=stage['fv_reads'];fit,=stage['record_fits']
    armed += [f'def {name}Record : List Wire := {stage["record_before"]}',
              f'def {name}Counter : List Wire := {stage["counter"]}',
              f'def {name}G : List Wire := {stage["g"]}',
              f'def {name}Timestamp : List Wire := {stage["timestamp"]}', '',
              f'theorem {name}_inputs :',
              f'    {name}Counter.length=6 ∧ {stage["counter"][-1]}={name}Counter.getLastD 0 ∧',
              f'    ({branch}::{name}Record).Nodup ∧ ({branch}::{name}Record).toFinset⊆{name}Arena.live ∧',
              f'    List.Disjoint {name}Counter ({branch}::{name}Record) ∧ List.Disjoint {name}G ({branch}::{name}Record) ∧',
              f'    List.Disjoint ({branch}::{name}Record) ({stage["frozen"]}::{name}Timestamp) ∧',
              f'    [{sigma},{fv1}].toFinset⊆{name}Arena.live ∧ {fv1}∉{branch}::{name}Record ∧',
              f'    {sigma}∉{name}G++{stage["frozen"]}::{name}Timestamp := by',
              '  decide +kernel','']
    armed+=[f'theorem {name}_checked :',
            f'    (compileHmrArmedControlLog {name}Arena {name}G {name}Counter {name}Timestamp {name}Record',
            f'      {stage["frozen"]} {stage["counter"][-1]} {sigma} {fv1} {b2} {b3} {b4} {branch} 1 {fit["need"]} {name}Log).map',
            '      (fun _ => true) = some true := by',
            f'  simp only [compileHmrArmedControlLog, if_pos {name}_inputs]',
            '  decide +kernel','']
armed+=['end ECDSAAdd.Arithmetic.Paper935','']
armed_text='\n'.join(armed)
checks=re.findall(r'theorem s[26]FirstArmedControl_checked :[\s\S]*?  decide \+kernel\n',armed_text)
assert len(checks)==2
for block in checks:armed_text=armed_text.replace(block+'\n','')
outputs['HmrSourceArmedControlInputs']=armed_text
outputs['HmrSourceArmedControlInitial']='import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs\n\nnamespace ECDSAAdd.Arithmetic.Paper935\n\n'+'\n'.join(checks)+'\nend ECDSAAdd.Arithmetic.Paper935\n'
cards=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs',
       'import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlLive','',
       'namespace ECDSAAdd.Arithmetic.Paper935','']
for phase in ('s2-walkA','s6-walkC'):
    stage=next(s for s in data['stages'] if s['phase']==phase and s['step']==s['tmin'])
    states=replay(stage);name=phase[:2]+'FirstArmedControl'
    sigma,branch=stage['retained_flags'];fv1,b2,b3,b4=stage['fv_reads'];fit,=stage['record_fits']
    args=f'{name}Arena {name}G {name}Counter {name}Timestamp {name}Record {stage["frozen"]} {stage["counter"][-1]} {sigma} {fv1} {b2} {b3} {b4} {branch} 1 {fit["need"]} {name}Log'
    cards += [f'theorem {name}_card (P : HmrArmedControlPlan)',
              f'    (h : compileHmrArmedControlLog {args}=some P) :',
              f'    P.outputArena.live.card={len(states[-1])} := by',
              f'  have checked := (compileHmrArmedControlLog_contract {args} P h).2',
              '  have counts := checked.final_card P _ _ _ _ _ _ _ _ _ _ _ _ _ _ _',
              f'  have initial : {name}Arena.live.card={len(states[0])} := by decide +kernel',
              '  omega','']
cards+=['end ECDSAAdd.Arithmetic.Paper935','']
outputs['HmrSourceArmedControlCard']='\n'.join(cards)
def cells(literals,work):
    return '['+', '.join('⟨'+lit(q,p)+f',{w}⟩' for (q,p),w in zip(literals,work))+']'
def block_plan(literals,work):
    return '⟨'+lit(*literals[0])+','+cells(literals[1:],work[:-1])+f',{work[-1]}⟩'
def free_plan(literals,keeper,work):
    if len(literals)==1:return '.copy '+lit(*literals[0])+f' {keeper}'
    return '.chain '+lit(*literals[0])+' '+cells(literals[1:-1],work)+' '+lit(*literals[-1])+f' {keeper}'
def blocks(bits,size,logs):
    out=[];prev=None
    for i,work in enumerate(logs):
        literals=([(prev,True)] if prev is not None else [])+[(q,False) for q in bits[i*size:(i+1)*size]]
        out.append((literals,work));prev=work[-1]
    return out
for phase in ('s2-walkA','s6-walkC'):
    stage=next(s for s in data['stages'] if s['phase']==phase and s['step']==s['tmin'])
    name=phase[:2]+'FirstArmedControl';log=armed_control_log(stage);states=replay(stage)
    sigma,branch=stage['retained_flags'];fv1,b2,b3,b4=stage['fv_reads'];frozen=stage['frozen'];sign=stage['counter'][-1]
    gb=blocks(stage['g'],16,log['freezeZero']);cb=blocks(stage['counter'],6,log['counterZero'])
    fire=log['fire'][0];ck=cb[-1][1][-1];gk=gb[-1][1][-1]
    armed_keepers[name]=ck
    old=states[0];zero=old|{w[-1] for _,w in gb};freeze=zero|{fire};counter=freeze|{ck}
    positive=counter|set(log['positive']);equality=positive|set(log['classWork']);flags=equality|set(log['flags'])
    sigma_arena=freeze-{sigma};end=old-{sigma};out=end-{branch}
    fire_eq=sigma_arena|set(log['timestampEq'])
    assert out==states[-1]
    module='HmrSource'+phase[:2].upper()+'ArmedParts'
    lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs','import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable','import ECDSAAdd.Arithmetic.Paper935.HmrClassProjection','','namespace ECDSAAdd.Arithmetic.Paper935','']
    for suffix,live in [('ZeroArena',zero),('FreezeArena',freeze),('CounterArena',counter),('PositiveArena',positive),('EqualityArena',equality),('FlagArena',flags),('SigmaArena',sigma_arena),('FireEqualityArena',fire_eq),('FireDroppedArena',sigma_arena-{fire}),('EndArena',end),('OutputArena',out)]:
        lines+=arena(name+suffix,live)
    gps='['+', '.join(block_plan(ls,w) for ls,w in gb)+']';cps='['+', '.join(block_plan(ls,w) for ls,w in cb)+']'
    cs='['+', '.join(free_plan(ls,w[-1],dw) for (ls,w),dw in reversed(list(zip(cb,log['counterDrop']))))+']'
    gs='['+', '.join(free_plan(ls,w[-1],dw) for (ls,w),dw in reversed(list(zip(gb,log['freezeDrop']))))+']'
    eq_lits=[(frozen,False),(sigma,False),(log['positive'][0],False)]
    class_eq='⟨'+lit(*eq_lits[0])+','+cells(eq_lits[1:],log['classWork'])+'⟩'
    fire_lits=[(q,bool((1>>i)&1)) for i,q in enumerate(stage['timestamp'])]
    fire_plan='⟨'+name+'FireEqualityArena,'+str(log['timestampEq'])+',⟨'+lit(*fire_lits[0])+','+cells(fire_lits[1:],log['timestampEq'])+'⟩,'+str(log['fireGuard'])+'⟩'
    lines += [f'def {name}FreezePlan : HmrFreezePlan := ⟨{name}ZeroArena,{gps},{gk},{log["fire"]}⟩','',
              f'def {name}CounterPlans : List HmrBlockPlan := {cps}','',
              f'def {name}ClassPlan : HmrSourceClassPlan := ⟨{name}PositiveArena,{log["positive"]},{name}EqualityArena,{log["classWork"]},{class_eq}⟩','',
              f'def {name}CounterDrop : List HmrBlockFreePlan := {cs}','',
              f'def {name}EndPlan : HmrFreezeEndPlan := ⟨{fire_plan},{gs}⟩','']
    lines += [f'local instance {name}DisjointDecidable (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=',
              '  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm','',
              f'theorem {name}_layout :',
              f'    List.Disjoint [{name}ClassPlan.equality.top,{b2},{b3},{b4}] ({branch}::{name}Record) ∧',
              f'    List.Disjoint (hmrSourceClassAnchors true {sign} {ck} {frozen} {sigma}) ({branch}::{name}Record) := by',
              '  decide +kernel','',
              f'theorem {name}_length : {name}Record.length={len(stage["record_before"])} := by',
              '  decide +kernel','']
    tests=[('freeze',f'compileHmrFreezeLog {name}Arena {name}G {frozen} {name}Timestamp 1 {name}Log.freezeZero {name}Log.fire',f'({name}FreezeArena,{name}FreezePlan)'),
      ('zero',f'compileHmrZeroLog {name}FreezeArena {name}Counter {name}Counter.length {name}Log.counterZero',f'({name}CounterArena,{name}CounterPlans,{ck})'),
      ('class',f'compileHmrSourceClassLog {name}CounterArena true {sign} {ck} {frozen} {sigma} {name}Log.positive {name}Log.classWork',name+'ClassPlan'),
      ('flags',f'compileHmrFlagsLog {name}ClassPlan.equalityArena {name}ClassPlan.equality.top {b2} {b3} {b4} {name}Log.flags',name+'FlagArena'),
      ('counterDrop',f'compileHmrBlockedDropLog {name}CounterArena {name}CounterPlans {name}Log.counterDrop',f'({name}FreezeArena,{name}CounterDrop)'),
      ('sigma',f'compileHmrSigmaDropLog {name}FreezeArena true {frozen} {name}FreezePlan.fire {fv1} {sigma} {name}Log.sigmaGuard',name+'SigmaArena'),
      ('ending',f'compileHmrFreezeEndLog {name}SigmaArena {name}Timestamp 1 {name}FreezePlan.zeroKeeper {frozen} {name}FreezePlan.fire {name}FreezePlan.zeroPlans {name}Log.timestampEq {name}Log.fireGuard {name}Log.freezeDrop',f'({name}EndArena,{name}EndPlan)'),
      ('branch',f'compileHmrBranchRetirement {name}EndArena {branch}',name+'OutputArena')]
    def live_proof(*defs):
        return ['  · ext q', '    simp ['+', '.join(name+d if d else name+'Arena' for d in defs)+(', HmrFreezePlan.fire, hmrBorrowPorts' if 'FreezePlan' in defs and 'EndArena' not in defs and 'ZeroArena' not in defs else '')+', arenaWires]', '    simp only [Wire] at *', '    omega']
    proofs={
      'freeze':['  apply compileHmrFreezeLog_of_projection','  · decide +kernel']+live_proof('FreezePlan','ZeroArena','')+live_proof('FreezePlan','FreezeArena',''),
      'zero':['  apply compileHmrZeroLog_of_projection','  · decide +kernel']+live_proof('CounterArena','FreezeArena','CounterPlans'),
      'class':['  apply compileHmrSourceClassLog_of_projection','  · decide +kernel']+live_proof('ClassPlan','PositiveArena','CounterArena')+live_proof('ClassPlan','EqualityArena','PositiveArena'),
      'flags':['  apply compileHmrFlagsLog_of_accept','  · decide +kernel']+live_proof('ClassPlan','FlagArena','EqualityArena','Log'),
      'counterDrop':['  apply compileHmrBlockedDropLog_of_projection','  · decide +kernel']+live_proof('CounterArena','FreezeArena','CounterPlans'),
      'sigma':['  apply compileHmrSigmaDropLog_of_accept','  · decide +kernel']+live_proof('SigmaArena','FreezeArena'),
      'branch':['  apply compileHmrBranchRetirement_of_accept','  · decide +kernel']+live_proof('EndArena','OutputArena')}
    for label,expr,result in tests:
        if label=='ending':continue
        if label=='freeze':proj='(fun (_,P) => (P.zeroPlans,P.zeroKeeper,P.fireWork))';value=f'({name}FreezePlan.zeroPlans,{name}FreezePlan.zeroKeeper,{name}FreezePlan.fireWork)'
        elif label=='zero':proj='Prod.snd';value=f'({name}CounterPlans,{ck})'
        elif label=='class':proj='(fun P => (P.positiveWork,P.equalityWork,P.equality))';value=f'({name}ClassPlan.positiveWork,{name}ClassPlan.equalityWork,{name}ClassPlan.equality)'
        elif label=='counterDrop':proj='Prod.snd';value=name+'CounterDrop'
        else:proj='(fun _ => true)';value='true'
        lines += [f'theorem {name}_{label}Projection : ({expr}).map {proj}=some {value} := by',
                  '  decide +kernel','']
        proofs[label]=[line.replace('  · decide +kernel',f'  · exact {name}_{label}Projection') for line in proofs[label]]
    lines += [f'theorem {name}_fireProjection :',
              f'    (compileHmrFireDropLog {name}SigmaArena {name}Timestamp 1 {name}FreezePlan.zeroKeeper {frozen} {name}FreezePlan.fire {name}Log.timestampEq {name}Log.fireGuard).map',
              f'      (fun (_,P) => (P.equalityWork,P.equality,P.fireWork))=some ({name}EndPlan.fire.equalityWork,{name}EndPlan.fire.equality,{name}EndPlan.fire.fireWork) := by',
              '  decide +kernel','',
              f'theorem {name}_endZeroProjection :',
              f'    (compileHmrBlockedDropLog {name}FireDroppedArena {name}FreezePlan.zeroPlans {name}Log.freezeDrop).map Prod.snd=some {name}EndPlan.zero := by',
              '  decide +kernel','']
    for label,expr,result in tests:
        if label=='ending':
            lines += [f'theorem {name}_ending : {expr}=some {result} := by',
              f'  have fireChecked : compileHmrFireDropLog {name}SigmaArena {name}Timestamp 1 {name}FreezePlan.zeroKeeper {frozen} {name}FreezePlan.fire',
              f'      {name}Log.timestampEq {name}Log.fireGuard=some ({name}FireDroppedArena,{name}EndPlan.fire) := by',
              '    apply compileHmrFireDropLog_of_projection',f'    · exact {name}_fireProjection']
            lines += ['  '+line for line in live_proof('EndPlan','FireEqualityArena','SigmaArena')]
            lines += ['  '+line for line in live_proof('FireDroppedArena','SigmaArena','FreezePlan')]
            lines += [f'  have zeroChecked : compileHmrBlockedDropLog {name}FireDroppedArena {name}FreezePlan.zeroPlans {name}Log.freezeDrop=',
              f'      some ({name}EndArena,{name}EndPlan.zero) := by',
              '    apply compileHmrBlockedDropLog_of_projection',f'    · exact {name}_endZeroProjection']
            lines += ['  '+line for line in live_proof('EndArena','FireDroppedArena','FreezePlan')]
            lines += ['  exact compileHmrFreezeEndLog_of_parts _ _ _ _ _ _ _ _ _ _ _ _ _ fireChecked zeroChecked','']
        else:
            lines += [f'theorem {name}_{label} : {expr}=some {result} := by']+proofs[label]+['']
    lines+=['end ECDSAAdd.Arithmetic.Paper935','']
    split=next(i for i,line in enumerate(lines) if line.startswith(f'theorem {name}_freeze :'))
    projection_module=module.replace('Parts','Projections')
    outputs[projection_module]='\n'.join(lines[:split]+['end ECDSAAdd.Arithmetic.Paper935',''])
    outputs[module]='\n'.join([f'import ECDSAAdd.Arithmetic.Paper935.{projection_module}',
        'import ECDSAAdd.Arithmetic.Paper935.HmrFreezeEndComposition',
        '', 'namespace ECDSAAdd.Arithmetic.Paper935', '']+lines[split:])

final=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2ArmedParts',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6ArmedParts',
       'import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlComposition','',
       'namespace ECDSAAdd.Arithmetic.Paper935','']
for prefix,block in zip(('s2','s6'),checks):
    name=prefix+'FirstArmedControl'
    statement=block[:block.index(' := by')]
    plan=','.join([name+'FreezeArena',name+'FreezePlan',name+'CounterArena',name+'CounterPlans',str(armed_keepers[name]),name+'ClassPlan',name+'FlagArena',name+'FlagArena',name+'CounterDrop',name+'SigmaArena',name+'EndArena',name+'EndPlan',name+'OutputArena',name+'Log'])
    final += [statement+' := by',f'  apply compileHmrArmedControlLog_of_parts (P := ⟨{plan}⟩)',
      f'  · exact {name}_inputs', f'  · exact {name}_freeze', f'  · exact {name}_zero',
      f'  · exact {name}_class', f'  · exact {name}_layout.1', f'  · exact {name}_layout.2',
      f'  · exact {name}_flags', f'  · exact {name}_counterDrop', f'  · exact {name}_sigma',
      f'  · exact {name}_ending', f'  · exact {name}_branch', f'  · exact {name}_length','']
final += ['end ECDSAAdd.Arithmetic.Paper935','']
outputs['HmrSourceArmedControlInitial']='\n'.join(final)

for name,body in outputs.items():
    path=root/'ECDSAAdd/Arithmetic/Paper935'/f'{name}.lean'
    if '--check' in sys.argv:assert path.read_text()==body,'Generated control instances differ from pinned traces.'
    else:path.write_text(body)
