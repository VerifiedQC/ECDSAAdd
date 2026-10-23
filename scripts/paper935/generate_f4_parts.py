"""Compose the two observed hybrid calls and their shared flag/carry borrows."""
import sys
from generated_chunks import write_step_chunks
from certificate_steps import CERTIFICATE_STEPS
from front_trace import ROOT, load
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticParts',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBank',
       'namespace ECDSAAdd.Arithmetic.Paper935']
a=load('allocations');r=load('resize')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        stage=next(s for s in a if (s['phase'],s['step'],s['stage'])==(phase,t,'add'))
        resize=next(s for s in r if (s['phase'],s['step'],s['stage'])==(phase,t,'add'))
        base=phase[:2]+'Step'+str(t);name=base+'F4';first=base+'Add0';second=base+'Add1';H=base+'HeadFvAfter'
        swap,control=stage['retained_flags'];u,k=stage['calls'][0]['cin'],stage['calls'][0]['carry']
        a0,b0,a1,b1=first+'A',first+'B',second+'A',second+'B'
        pred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in resize['resizes'][-1]['live_after'])
        lines += [f'def {name}FlagArena : Arena := ⟨{H}.live∪{{{u}}},Finset.union_subset {H}.bounded (by norm_num [arenaWires])⟩',
                  f'theorem {name}_flag : {H}.checkBorrow 1 [{u}]=some {name}FlagArena := by',
                  '  unfold Arena.checkBorrow', '  rw [if_pos (by decide)]', '  apply hmrArena_reserve_of_live',
                  '  · norm_num [arenaWires]', f'  · norm_num [{H},arenaWires]', '  · rfl',
                  f'theorem {name}_carry : {name}FlagArena.checkBorrow 1 [{k}]=some {first}Arena := by',
                  '  unfold Arena.checkBorrow','  rw [if_pos (by decide)]', '  apply hmrArena_reserve_of_live',
                  '  · norm_num [arenaWires]',f'  · norm_num [{name}FlagArena,{H},arenaWires]',
                  '  · ext q',f'    simp only [{name}FlagArena,{H},{first}Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]',
                  '    simp only [Wire] at *','    omega',
                  f'theorem {name}_owned : ({swap}::{control}::(({a0}++{a1})++({b0}++{b1}))).toFinset⊆{H}.live := by',
                  f'  apply hmrLayout_owned_of_filter {H} (fun q => {pred}) rfl','  decide +kernel',
                  f'theorem {name}_distinct : ({swap}::{control}::{u}::{k}::(({a0}++{a1})++({b0}++{b1}))).Nodup := by',
                  '  apply hmrLayout_nodup_of_sorted','  decide +kernel',
                  f'theorem {name}_apart : Disjoint ({a0}++{b0}).toFinset ({a1}++{b1}).toFinset := by',
                  f'  have nd : (({a0}++{b0})++({a1}++{b1})).Nodup := by',
                  '    apply hmrLayout_nodup_of_sorted','    decide +kernel',
                  '  apply Finset.disjoint_left.mpr','  intro q hq hr',
                  "  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)",
                  f'def {name}Plan : HmrHybridF4Plan := ⟨{name}FlagArena,[{u}],{first}Arena,[{k}],{first}During,{first}Work,{second}During,{second}Work⟩',
                  f'theorem {name}_checked : compileHmrHybridF4Log {H} {swap} {control} {a0} {b0} {a1} {b1} [{u}] [{k}] {first}Work {second}Work=some {name}Plan := by',
                  f'  exact compileHmrHybridF4Log_of_parts {H} {name}FlagArena {first}Arena {first}During {second}During {swap} {control}',
                  f'    {a0} {b0} {a1} {b1} [{u}] [{k}] {first}Work {second}Work',
                  f'    (fun q hq => {name}_owned (List.mem_toFinset.mpr hq)) {name}_flag {name}_carry',
                  f'    {name}_distinct {name}_apart {first}_checked {second}_checked']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceF4Parts.lean'
write_step_chunks(path,text,check='--check' in sys.argv)
