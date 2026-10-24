"""Split exact early-control certificates, using observed scratch addresses."""
from control_trace import early_control_log, replay

def generate_early_parts(stage, name, arena):
    log=early_control_log(stage);states=replay(stage)
    sigma,branch=stage['retained_flags'];fv1,b2,b3,b4=stage['fv_reads']
    counter=stage['counter'];record=stage['record_before'];sign=counter[-1];need=stage['record_fits'][0]['need']
    old=set(states[0]);zero=old|set(log['zero']);positive=zero|set(log['positive'])
    equality=positive|set(log['class']);flags=equality|set(log['flags'])
    fitted=flags|set(log['fresh']);history=old|set(log['fresh']);sig=history-{sigma};out=sig-{branch}
    assert out==set(states[-1])
    lines=[]
    for suffix,live in [('Arena',old),('ZeroArena',zero),('PositiveArena',positive),('EqualityArena',equality),('FlagArena',flags),('FittedArena',fitted),('HistoryArena',history),('SigmaArena',sig),('OutputArena',out)]:
        lines+=arena(name+suffix,live)
    def eqplan(bits,work):
        return '⟨⟨'+str(bits[0])+',false⟩,['+','.join('⟨⟨'+str(b)+',false⟩,'+str(w)+'⟩' for b,w in zip(bits[1:],work))+']⟩'
    lines += [f'def {name}Log : HmrEarlyControlLog := ⟨'+','.join(str(log[k]) for k in ['zero','positive','class','flags','fresh'])+'⟩',
              f'def {name}ZeroPlan : HmrEqualityPlan := '+eqplan(counter,log['zero']),
              f'def {name}ClassPlan : HmrSourceClassPlan := ⟨{name}PositiveArena,{log["positive"]},{name}EqualityArena,{log["class"]},'+eqplan([sigma,log['positive'][0]],log['class'])+'⟩',
              f'def {name}Plan : HmrEarlyControlPlan := ⟨'+','.join(name+x for x in ['ZeroArena','ZeroPlan','ClassPlan','FlagArena','FittedArena','HistoryArena','SigmaArena','OutputArena','Log'])+'⟩']
    args=f'{name}Arena {counter} {record} {sign} {sigma} {fv1} {b2} {b3} {b4} {branch} {need}'
    # The compiler's small projection is reduced; arena equality stays symbolic.
    def liveproof(defs):
        proof=['  · ext q','    simp ['+','.join(name+x for x in defs)+',arenaWires]']
        if not (not log['fresh'] and defs[0] in ('FittedArena','HistoryArena')):
            proof+=['    simp only [Wire] at *','    omega']
        return proof
    tests=[
      ('zero',f'compileHmrEqualityLog {name}Arena {counter} 0 {name}Log.zeroWork',f'({name}ZeroArena,{name}Log.zeroWork,{name}ZeroPlan)','compileHmrEqualityLog_of_projection','Prod.snd',f'({name}Log.zeroWork,{name}ZeroPlan)',[['ZeroArena','Arena','Log']]),
      ('class',f'compileHmrSourceClassLog {name}ZeroArena false {sign} {name}ZeroPlan.top 0 {sigma} {name}Log.positiveWork {name}Log.classWork',name+'ClassPlan','compileHmrSourceClassLog_of_projection','(fun P => (P.positiveWork,P.equalityWork,P.equality))',f'({name}ClassPlan.positiveWork,{name}ClassPlan.equalityWork,{name}ClassPlan.equality)',[['ClassPlan','PositiveArena','ZeroArena'],['ClassPlan','EqualityArena','PositiveArena']]),
      ('flags',f'compileHmrFlagsLog {name}ClassPlan.equalityArena {name}ClassPlan.equality.top {b2} {b3} {b4} {name}Log.flagWork',name+'FlagArena','compileHmrFlagsLog_of_accept','(fun _ => true)','true',[['ClassPlan','FlagArena','EqualityArena','Log']]),
      ('fit',f'compileHmrRecordGrowLog {name}FlagArena {record} {need} {name}Log.recordFresh',name+'FittedArena','compileHmrRecordGrowLog_of_accept','(fun _ => true)','true',[['FittedArena','FlagArena','Log']]),
      ('history',f'compileHmrRecordGrowLog {name}Arena {record} {need} {name}Log.recordFresh',name+'HistoryArena','compileHmrRecordGrowLog_of_accept','(fun _ => true)','true',[['HistoryArena','Arena','Log']]),
      ('sigma',f'compileHmrSigmaDropLog {name}HistoryArena false 0 0 {fv1} {sigma} []',name+'SigmaArena','compileHmrSigmaDropLog_of_accept','(fun _ => true)','true',[['SigmaArena','HistoryArena']]),
      ('branch',f'compileHmrBranchRetirement {name}SigmaArena {branch}',name+'OutputArena','compileHmrBranchRetirement_of_accept','(fun _ => true)','true',[['SigmaArena','OutputArena']])]
    for label,expr,result,lemma,proj,value,lives in tests:
        lines += [f'theorem {name}_{label}Projection : ({expr}).map {proj}=some {value} := by','  decide +kernel',
                  f'theorem {name}_{label} : {expr}=some {result} := by',f'  apply {lemma}',f'  · exact {name}_{label}Projection']
        for defs in lives: lines+=liveproof(defs)
    lines += [f'theorem {name}_logged : {name}Plan.Logged {args} := by',
              '  constructor']
    # Seven entry fields, zero/class, two layout fields, then five checks.
    lines+=['  · decide +kernel']*7
    lines += [f'  · exact {name}_zero',f'  · exact {name}_class']
    lines+=['  · decide +kernel']*2
    lines += [f'  · exact {name}_{x}' for x in ('flags','fit','history','sigma','branch')]
    lines += [f'theorem {name}_plan_checked : compileHmrEarlyControlLog {args} {name}Log=some {name}Plan :=',
              f'  compileHmrEarlyControlLog_of_logged {name}Plan {args} {name}_logged',
              f'theorem {name}_checked : (compileHmrEarlyControlLog {args} {name}Log).map (fun P => P.outputArena.live.card)=some {len(out)} := by',
              f'  rw [{name}_plan_checked]','  decide +kernel','']
    return lines
