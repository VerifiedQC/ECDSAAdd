"""Exact control checks from small guards and symbolic arena transactions."""
from early_parts import generate_early_parts
from control_trace import early_control_log,replay

def generate_fast_early_parts(stage,name,arena):
    original=generate_early_parts(stage,name,arena)
    lines=original[:next(i for i,s in enumerate(original) if s.startswith('theorem '))]
    log=early_control_log(stage);states=replay(stage)
    sigma,branch=stage['retained_flags'];fv1,b2,b3,b4=stage['fv_reads']
    counter=stage['counter'];record=stage['record_before'];sign=counter[-1];need=stage['record_fits'][0]['need']
    old=set(states[0]);zero=old|set(log['zero']);positive=zero|set(log['positive'])
    equality=positive|set(log['class']);flags=equality|set(log['flags'])
    live={'Arena':old,'ZeroArena':zero,'PositiveArena':positive,'EqualityArena':equality,
          'FlagArena':flags,'FittedArena':flags|set(log['fresh']),'HistoryArena':old|set(log['fresh'])}
    live['SigmaArena']=live['HistoryArena']-{sigma};live['OutputArena']=live['SigmaArena']-{branch}
    def pred(suffix):
        rs=[]
        for q in sorted(live[suffix]):
            if rs and rs[-1][1]==q:rs[-1][1]=q+1
            else:rs.append([q,q+1])
        return ' ∨ '.join(f'({a}≤q ∧ q<{b})' for a,b in rs) or 'False'
    def owned(label,A,qs):
        lines.extend([f'private theorem {name}_{label} : ({qs} : List Wire).toFinset⊆{name}{A}.live := by',
          f'  apply hmrLayout_owned_of_filter {name}{A} (fun q => {pred(A)}) rfl','  decide +kernel'])
    def liveproof(A,B,extra,empty=False):
        result=['  · ext q',f'    simp [{name}{B},{name}{A}'+('' if B in ('SigmaArena','OutputArena') else f',{name}Log')+',arenaWires'+extra+']']
        if not empty:result+=['    simp only [Wire] at *','    omega']
        return result
    def borrow(label,A,B,work,n):
        lines.extend([f'private theorem {name}_{label} : {name}{A}.checkBorrow ({n}) {work}=some {name}{B} := by',
          '  apply Arena.checkBorrow_of_parts','  · decide +kernel','  · apply hmrArena_reserve_of_live',
          f'    · norm_num [{name}Log,arenaWires,Finset.insert_subset_iff]',
          f'    · apply hmrLayout_disjoint_of_filter {name}{A} (fun q => {pred(A)}) rfl',
          '      decide +kernel'])
        ls=liveproof(A,B,'',live[A]==live[B])
        lines.extend(['  '+s for s in ls])
    def eqcheck(label,A,B,bits,work,P,public=True):
        owned(label+'Owned',A,bits)
        borrow(label+'Borrow',A,B,work,f'({bits} : List Wire).length-1')
        lines.extend([('theorem ' if public else 'private theorem ')+f'{name}_{label} : compileHmrEqualityLog {name}{A} {bits} 0 {work}=some ({name}{B},{work},{P}) := by',
          '  apply compileHmrEqualityLog_of_parts',f'  · exact ⟨{name}_{label}Owned,by decide +kernel,by decide +kernel⟩',
          f'  · exact {name}_{label}Borrow','  · rfl','  · decide +kernel'])
    eqcheck('zero','Arena','ZeroArena',str(counter),name+'Log.zeroWork',name+'ZeroPlan')
    borrow('positiveBorrow','ZeroArena','PositiveArena',name+'Log.positiveWork','1')
    eqcheck('classEquality','PositiveArena','EqualityArena',str([sigma,log['positive'][0]]),name+'Log.classWork',name+'ClassPlan.equality',False)
    owned('classOwned','ZeroArena',str([sign,log['zero'][-1],sigma]))
    lines.extend([f'theorem {name}_class : compileHmrSourceClassLog {name}ZeroArena false {sign} {name}ZeroPlan.top 0 {sigma} {name}Log.positiveWork {name}Log.classWork=some {name}ClassPlan := by',
      f'  apply compileHmrSourceClassLog_of_logged {name}ClassPlan {name}ZeroArena false {sign} {name}ZeroPlan.top 0 {sigma}','  constructor','  · decide +kernel',f'  · exact {name}_classOwned',
      f'  · exact {name}_positiveBorrow',f'  · exact {name}_classEquality'])
    owned('flagsOwned','EqualityArena',str([log['class'][-1],b2,b3,b4]))
    borrow('flagsBorrow','EqualityArena','FlagArena',name+'Log.flagWork','6')
    lines.extend([f'theorem {name}_flags : compileHmrFlagsLog {name}ClassPlan.equalityArena {name}ClassPlan.equality.top {b2} {b3} {b4} {name}Log.flagWork=some {name}FlagArena := by',
      '  apply compileHmrFlagsLog_of_parts',f'  · exact ⟨by decide +kernel,{name}_flagsOwned⟩',f'  · exact {name}_flagsBorrow'])
    for label,A,B in [('fit','FlagArena','FittedArena'),('history','Arena','HistoryArena')]:
        owned(label+'Owned',A,str(record));borrow(label+'Borrow',A,B,name+'Log.recordFresh',f'({need}-({record} : List Wire).length)')
        lines.extend([f'theorem {name}_{label} : compileHmrRecordGrowLog {name}{A} {record} {need} {name}Log.recordFresh=some {name}{B} := by',
          '  apply compileHmrRecordGrowLog_of_parts',f'  · exact ⟨by decide +kernel,{name}_{label}Owned,by decide +kernel⟩',f'  · exact {name}_{label}Borrow'])
    owned('sigmaOwned','HistoryArena',str([fv1,sigma]))
    for label,A,B,q in [('sigmaRelease','HistoryArena','SigmaArena',sigma),('branch','SigmaArena','OutputArena',branch)]:
        owned(label+'Owned',A,str([q]))
        signature=f'{name}{A}.release {{{q}}} (fun _ => false)' if label=='sigmaRelease' else f'compileHmrBranchRetirement {name}{A} {q}'
        lines.extend([('private theorem ' if label=='sigmaRelease' else 'theorem ')+f'{name}_{label} : {signature}=some {name}{B} := by',
          '  apply hmrArena_release_false_of_live',f'  · exact {name}_{label}Owned'])
        lines.extend(liveproof(A,B,''))
    lines.extend([f'theorem {name}_sigma : compileHmrSigmaDropLog {name}HistoryArena false 0 0 {fv1} {sigma} []=some {name}SigmaArena := by',
      '  apply compileHmrSigmaDropLog_early_of_parts',f'  · exact ⟨by decide +kernel,{name}_sigmaOwned⟩',f'  · exact {name}_sigmaRelease'])
    # Preserve the public projection interfaces, now derived from exact checks.
    for i,s in enumerate(original):
        if s.startswith('theorem ') and 'Projection :' in s:
            label=s.split(name+'_',1)[1].split('Projection',1)[0]
            lines.extend([s,f'  rw [{name}_{label}]','  rfl'])
    owned('entrySigmaOwned','Arena',str([sigma,fv1]))
    owned('entryRecordOwned','Arena',str([branch]+record))
    start=next(i for i,s in enumerate(original) if s.startswith(f'theorem {name}_logged'))
    tail=original[start:]
    tail[5]=f'  · exact {name}_entryRecordOwned'
    tail[7]=f'  · exact {name}_entrySigmaOwned'
    lines+=tail
    return lines
