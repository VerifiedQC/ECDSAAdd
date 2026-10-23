"""Certify selected source exit resizes, preserving measured shrink programs."""
import sys
from generated_chunks import write_step_chunks
from arena_sharing import share_arenas
from certificate_steps import CERTIFICATE_STEPS
from front_trace import ROOT, load
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout',
       'import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition',
       'namespace ECDSAAdd.Arithmetic.Paper935']
resize_data=load('resize')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        stage=next(s for s in resize_data if (s['phase'],s['step'],s['stage'])==(phase,t,'shift_exit'))
        for r in stage['resizes']:
            name=phase[:2]+'Step'+str(t)+'Exit'+r['row'].capitalize()
            for suffix,key in [('Before','live_before'),('After','live_after')]:
                pred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in r[key])
                lines += [f'def {name}{suffix} : Arena := ⟨arenaWires.filter (fun q => {pred}),Finset.filter_subset _ _⟩']
            pred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in r['live_before'])
            extra=r['before'][r['width']:]
            assert r['after']==r['before'][:r['width']]
            lines += [f'def {name}Row : WindowRow := ⟨{r["before"]},{r["sign"]}⟩',
                      f'def {name}Out : WindowRow := ⟨{r["after"]},{r["sign"]}⟩',
                      f'def {name}Extra : List Wire := {extra}',
                      f'theorem {name}_distinct : ({name}Row.sign::{name}Row.payload).Nodup := by',
                      '  apply hmrLayout_nodup_of_sorted','  decide +kernel',
                      f'theorem {name}_owned : ({name}Row.sign::{name}Row.payload).toFinset⊆{name}Before.live := by',
                      f'  apply hmrLayout_owned_of_filter {name}Before (fun q => {pred}) rfl','  decide +kernel']
            if extra:
                lines += [f'theorem {name}_retired : {name}Before.retireSet {name}Extra.toFinset={name}After := by',
                          f'  unfold Arena.retireSet {name}After','  simp only [Arena.mk.injEq]','  ext q',
                          f'  simp only [{name}Before,{name}Extra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]',
                          '  simp only [Wire] at *','  omega',
                          f'theorem {name}_checked : planRowResizeLog {name}Before {name}Row {r["width"]} []=',
                          f'    some ({name}After,{name}Out,shrinkRow {r["sign"]} {name}Extra) := by',
                          f'  have result := planRowResizeLog_of_shrink {name}Before {name}Row {r["width"]} {name}_distinct {name}_owned (by decide +kernel)',
                          f'  have lo : WindowRow.mk ({name}Row.payload.take {r["width"]}) {name}Row.sign={name}Out := by decide +kernel',
                          f'  have hi : {name}Row.payload.drop {r["width"]}={name}Extra := by decide +kernel',
                          f'  rw [lo,hi,{name}_retired] at result','  exact result']
            else:
                lines += [f'theorem {name}_reserved : {name}Before.reserve (∅ : Finset Wire)=some {name}After := by',
                          '  apply hmrArena_reserve_of_live', '  · simp', '  · simp', '  · simp only [Finset.union_empty]; rfl',
                          f'theorem {name}_checked : planRowResizeLog {name}Before {name}Row {r["width"]} []=',
                          f'    some ({name}After,{name}Out,growRow {r["sign"]} []) := by',
                          f'  have result := planRowResizeLog_of_growth {name}Before {name}After {name}Row {r["width"]} []',
                          f'    {name}_distinct {name}_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) {name}_reserved',
                          f'  have rowEq : WindowRow.mk ({name}Row.payload++[]) {name}Row.sign={name}Out := by decide +kernel',
                          '  rw [rowEq] at result','  exact result']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text=share_arenas('\n'.join(lines))
path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceExitParts.lean'
write_step_chunks(path,text,check='--check' in sys.argv)
