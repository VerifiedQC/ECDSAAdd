"""Generate split certificates for selected actual headroom transactions."""
import sys
from interval_predicates import compact_predicate, interval_predicate
from generated_chunks import write_step_chunks
from arena_sharing import share_arenas
from certificate_steps import CERTIFICATE_STEPS
from pathlib import Path
from front_trace import ROOT, load
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout',
       'import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition',
       'import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks',
       'namespace ECDSAAdd.Arithmetic.Paper935']
entry_mode = '--entry' in sys.argv
data=load('resize')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        s=next(s for s in data if s['phase']==phase and s['step']==t and s['stage']=='add')
        for r in (s['resizes'][:4] if entry_mode else s['resizes'][4:]):
            name=phase[:2]+'Step'+str(t)+('Entry' if entry_mode else 'Head')+r['row'].capitalize()
            for suffix,key in [('Before','live_before'),('After','live_after')]:
             pred=compact_predicate(' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in r[key]))
             lines += [f'def {name}{suffix} : Arena := ⟨arenaWires.filter (fun q => {pred}),Finset.filter_subset _ _⟩']
            pred=compact_predicate(' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in r['live_before']))
            fresh=r['after'][len(r['before']):]
            lines += [f'def {name}Row : WindowRow := ⟨{r["before"]},{r["sign"]}⟩',f'def {name}Fresh : List Wire := {fresh}',
            f'theorem {name}_distinct : ({name}Row.sign::{name}Row.payload).Nodup := by',
            '  apply hmrLayout_nodup_of_sorted','  decide +kernel',
            f'theorem {name}_owned : ({name}Row.sign::{name}Row.payload).toFinset⊆{name}Before.live := by',
            f'  apply hmrLayout_owned_of_filter {name}Before (fun q => {pred}) rfl', '  decide +kernel',
            f'theorem {name}_reserved : {name}Before.reserve {name}Fresh.toFinset=some {name}After := by',
            '  apply hmrArena_reserve_of_live',f'  · norm_num [{name}Fresh,arenaWires'+(',Finset.insert_subset_iff' if len(fresh)>1 else '')+']',f'  · norm_num [{name}Before,{name}Fresh,arenaWires]',
            *([f'  · apply hmrArena_union_of_filter_check {name}Before {name}After (fun q => {pred}) (fun q => {interval_predicate(r["live_after"])}) {name}Fresh rfl rfl',
               f'    · norm_num [{name}Fresh,arenaWires,Finset.insert_subset_iff]', '    · decide +kernel']
              if fresh and max(len(r['live_before']),len(r['live_after']))>30 else ([
            '  · ext q',f'    simp only [{name}After,{name}Before,{name}Fresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]',
            '    simp only [Wire] at *','    omega',
            ] if fresh else [f'  · simp only [{name}Fresh,List.toFinset_nil,Finset.union_empty]', '    rfl'])),
            f'theorem {name}_checked : planRowResizeLog {name}Before {name}Row {r["width"]} {name}Fresh=',
            f'    some ({name}After,⟨{r["after"]},{r["sign"]}⟩,growRow {r["sign"]} {name}Fresh) := by',
            f'  have result := planRowResizeLog_of_growth {name}Before {name}After {name}Row {r["width"]} {name}Fresh',f'    {name}_distinct {name}_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) {name}_reserved',
            f'  have rowEq : WindowRow.mk ({name}Row.payload++{name}Fresh) {name}Row.sign=⟨{r["after"]},{r["sign"]}⟩ := by decide +kernel',
            '  rw [rowEq] at result',
            '  exact result',
            ]
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text=share_arenas('\n'.join(lines))
path=ROOT/('ECDSAAdd/Arithmetic/Paper935/HmrSourceEntryParts.lean' if entry_mode else 'ECDSAAdd/Arithmetic/Paper935/HmrSourceHeadroomParts.lean')
write_step_chunks(path,text,check='--check' in sys.argv)
