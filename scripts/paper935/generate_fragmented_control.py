"""Isolated source step 36: certify the maximal early-stage fragmentation."""
import gzip,json,sys
from pathlib import Path
from early_fast_parts import generate_fast_early_parts
from interval_predicates import interval_predicate,live_ranges
from control_trace import replay
root=Path(__file__).resolve().parents[2]
data=json.loads(gzip.decompress((root/'data/paper935/hmr-source-control.json.gz').read_bytes()))
assert data['source_commit']=='64b5a13aa249f1360846657392e6c66817b26d0f'
stage=next(s for s in data['stages'] if s['phase']=='s6-walkC' and s['step']==36)
ranges=live_ranges(replay(stage)[-1])
assert len(ranges)==43
assert max(len(live_ranges(x)) for s in data['stages'] if s['early'] for x in replay(s))==43

def arena(name,live):
    return [f'def {name} : Arena :=',f'  ⟨arenaWires.filter (fun q => {interval_predicate(live_ranges(live))}),Finset.filter_subset _ _⟩','']
lines=['import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts',
'import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks',
'import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition',
'import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable',
'namespace ECDSAAdd.Arithmetic.Paper935',
'/- Isolated early control certificate; does not extend the continuous walk prefix. -/',
'local instance fragmentedDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=',
'  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm',
'def s6Step36ObservedRanges : List (Nat × Nat) := '+str([tuple(r) for r in ranges]),
'theorem s6Step36ObservedRanges_length : s6Step36ObservedRanges.length = 43 := by decide +kernel',
 'theorem s6Step36ObservedRanges_separated : s6Step36ObservedRanges.Pairwise (fun a b => a.2 < b.1) := by decide +kernel',
 'theorem s6Step36ObservedRanges_nonempty : ∀ r ∈ s6Step36ObservedRanges, r.1 < r.2 := by decide +kernel']
lines+=generate_fast_early_parts(stage,'s6Step36FragmentedControl',arena)
lines += ['theorem s6Step36FragmentedControl_output_ranges :',
'    s6Step36FragmentedControlPlan.outputArena.live = arenaWires.filter (fun q =>',
'      s6Step36ObservedRanges.any (fun r => decide (r.1≤q ∧ q<r.2)) = true) := rfl',
'end ECDSAAdd.Arithmetic.Paper935','']
body='\n'.join(lines)
p=root/'ECDSAAdd/Arithmetic/Paper935/HmrSourceFragmentedControl.lean'
if '--check' in sys.argv:assert p.read_text()==body
else:p.write_text(body)
