"""Exact counter scratch plans for the selected early/arm steps."""
import sys
from interval_predicates import compact_predicate, interval_predicate
from generated_chunks import write_step_chunks
from certificate_steps import CERTIFICATE_STEPS
from front_trace import ROOT, load, take
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition',
       'import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter',
       'import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomParts',
       'namespace ECDSAAdd.Arithmetic.Paper935']
a=load('allocations');r=load('resize')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        s=next(s for s in a if (s['phase'],s['step'],s['stage'])==(phase,t,'counter'))
        resize=next(s for s in r if (s['phase'],s['step'],s['stage'])==(phase,t,'add'))
        assert s['live_before']==resize['resizes'][-1]['live_after']
        base=phase[:2]+'Step'+str(t);name=base+'Counter';H=base+'HeadFvAfter'
        early=str(s['early']).lower();control=s['control'];qs=s['counter'];work=take(s['events'])
        pred=compact_predicate(' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in s['live_before']))
        lines += [f'def {name}Work : List Wire := {work}',
                  f'theorem {name}_bounded : {name}Work.toFinset⊆arenaWires := by norm_num [{name}Work,arenaWires,Finset.insert_subset_iff]',
                  f'def {name}During : Arena := ⟨{H}.live∪{name}Work.toFinset,Finset.union_subset {H}.bounded {name}_bounded⟩',
                  f'theorem {name}_apart : Disjoint {H}.live {name}Work.toFinset := by',
                  f'  apply hmrLayout_disjoint_of_filter {H} (fun q => {pred}) rfl','  decide +kernel',
                  f'theorem {name}_owned : ({control}::{qs} : List Wire).toFinset⊆{H}.live := by',
                  f'  apply hmrLayout_owned_of_filter {H} (fun q => {pred}) rfl','  decide +kernel',
                  f'theorem {name}_borrowed : {H}.checkBorrow {4 if s["early"] else 5} {name}Work=some {name}During := by',
                  '  unfold Arena.checkBorrow','  rw [if_pos (by decide +kernel)]',
                  f'  exact hmrArena_reserve_of_live {H} {name}During {name}Work.toFinset {name}_bounded {name}_apart rfl',
                  f'theorem {name}_checked : compileHmrCounterStepLog {H} {early} {control} {qs} {name}Work=some {name}During := by',
                  f'  have owned : ∀q∈{control}::{qs},q∈{H}.live := fun q hq => {name}_owned (List.mem_toFinset.mpr hq)',
                  '  unfold compileHmrCounterStepLog', '  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]',
                  f'  exact {name}_borrowed']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceCounterParts.lean'
write_step_chunks(path,text,check='--check' in sys.argv)
