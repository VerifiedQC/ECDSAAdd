"""Split source hybrid-addition acceptance into layout and borrow certificates."""
import sys
from certificate_steps import CERTIFICATE_STEPS
from front_trace import ROOT, load, take
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition',
       'namespace ECDSAAdd.Arithmetic.Paper935']
data=load('allocations')
for phase in ('s2-walkA','s6-walkC'):
    for t in CERTIFICATE_STEPS:
        stage=next(s for s in data if (s['phase'],s['step'],s['stage'])==(phase,t,'add'))
        for index,call in enumerate(stage['calls']):
            name=phase[:2]+'Step'+str(t)+'Add'+str(index)
            live={q for lo,hi in stage['live_before'] for q in range(lo,hi)}
            for e in stage['events'][:call['start']]:
                (live.add if e['kind']=='take' else live.remove)(e['wire'])
            assert len(live)==call['active']
            intervals=[]
            for q in sorted(live):
                if intervals and intervals[-1][1]==q: intervals[-1][1]=q+1
                else: intervals.append([q,q+1])
            pred=' ∨ '.join(f'({lo}≤q ∧ q<{hi})' for lo,hi in intervals)
            work=take(stage['events'][call['start']:call['end']])
            a,b,u,c,k=call['source'],call['target'],call['cin'],call['control'],call['carry']
            lines += [f'def {name}Arena : Arena := ⟨arenaWires.filter (fun q => {pred}),Finset.filter_subset _ _⟩',
                      f'def {name}A : List Wire := {a}',f'def {name}B : List Wire := {b}',f'def {name}Work : List Wire := {work}',
                      f'theorem {name}_bounded : {name}Work.toFinset⊆arenaWires := by',
                      f'  have h : {name}Work.all (fun q => decide (q<935))=true := by decide +kernel',
                      '  intro q hq', '  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))',
                      '  simpa [arenaWires] using lt',
                      f'def {name}During : Arena := ⟨{name}Arena.live∪{name}Work.toFinset,Finset.union_subset {name}Arena.bounded {name}_bounded⟩',
                      f'theorem {name}_distinct : ({u}::{c}::{k}::({name}A++{name}B)).Nodup := by',
                      '  apply hmrLayout_nodup_of_sorted', '  decide +kernel',
                      f'theorem {name}_owned : ({u}::{c}::{k}::({name}A++{name}B)).toFinset⊆{name}Arena.live := by',
                      f'  apply hmrLayout_owned_of_filter {name}Arena (fun q => {pred}) rfl', '  decide +kernel',
                      f'theorem {name}_apart : Disjoint {name}Arena.live {name}Work.toFinset := by',
                      f'  apply hmrLayout_disjoint_of_filter {name}Arena (fun q => {pred}) rfl', '  decide +kernel',
                      f'theorem {name}_card : {name}Arena.live.card={len(live)} := by', '  decide +kernel',
                      f'theorem {name}_borrowed : {name}Arena.checkBorrow (hmrHybridCount {name}Arena {name}B.length) {name}Work=some {name}During := by',
                      f'  have len : {name}Work.length=hmrHybridCount {name}Arena {name}B.length := by',
                      f'    rw [hmrHybridCount,{name}_card]', '    decide +kernel',
                      f'  have nd : {name}Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel',
                      '  unfold Arena.checkBorrow', '  rw [if_pos (And.intro len nd)]',
                      f'  exact hmrArena_reserve_of_live {name}Arena {name}During {name}Work.toFinset {name}_bounded {name}_apart rfl',
                      f'theorem {name}_checked : compileHmrHybridCinLog {name}Arena {c} {u} {k} {name}A {name}B {name}Work=some {name}During := by',
                      f'  exact compileHmrHybridCinLog_of_parts {name}Arena {name}During {c} {u} {k} {name}A {name}B {name}Work',
                      f'    (by decide +kernel) (by decide +kernel) {name}_distinct',
                      f'    (fun q hq => {name}_owned (List.mem_toFinset.mpr hq)) {name}_borrowed']
lines += ['end ECDSAAdd.Arithmetic.Paper935','']
text='\n'.join(lines)
path=ROOT/'ECDSAAdd/Arithmetic/Paper935/HmrSourceArithmeticParts.lean'
if '--check' in sys.argv:
    assert path.read_text()==text, 'Arithmetic parts differ from pinned source calls'
else:
    path.write_text(text)
