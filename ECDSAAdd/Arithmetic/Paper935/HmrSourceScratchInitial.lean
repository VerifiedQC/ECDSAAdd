import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedHybridCin

namespace ECDSAAdd.Arithmetic.Paper935

/- Generated allocation examples: first early/armed counter stages
and the first narrow (fv/gv) hybrid call, for each pinned walk. -/

def s2EarlyCounterLogArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 786)),Finset.filter_subset _ _⟩

def s2EarlyCounterLogWork : List Wire := [786, 787, 788, 789]

/-- Recorded step 0. The early control site is the retained sigma;
the early counter program ignores this control argument. -/
theorem s2EarlyCounterLog_checked :
    (compileHmrCounterStepLog s2EarlyCounterLogArena true 780
      [772, 773, 774, 775, 776, 777] s2EarlyCounterLogWork).isSome = true := by
  decide +kernel

def s2ArmedCounterLogArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 921)),Finset.filter_subset _ _⟩

def s2ArmedCounterLogWork : List Wire := [921, 922, 923, 924, 925]

/-- Recorded step 498. The early control site is the retained sigma;
the early counter program ignores this control argument. -/
theorem s2ArmedCounterLog_checked :
    (compileHmrCounterStepLog s2ArmedCounterLogArena false 914
      [772, 773, 774, 775, 776, 777] s2ArmedCounterLogWork).isSome = true := by
  decide +kernel

def s2InitialNarrowLogArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 788)),Finset.filter_subset _ _⟩

def s2InitialNarrowLogWork : List Wire := [788, 789]

theorem s2InitialNarrowLog_checked :
    (compileHmrHybridCinLog s2InitialNarrowLogArena 781 786 787
      [778, 785, 770] [779, 784, 771] s2InitialNarrowLogWork).isSome = true := by
  decide +kernel

def s6EarlyCounterLogArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (795 ≤ q ∧ q < 796) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888)),Finset.filter_subset _ _⟩

def s6EarlyCounterLogWork : List Wire := [874, 793, 927, 802]

/-- Recorded step 0. The early control site is the retained sigma;
the early counter program ignores this control argument. -/
theorem s6EarlyCounterLog_checked :
    (compileHmrCounterStepLog s6EarlyCounterLogArena true 887
      [774, 773, 772, 771, 770, 769] s6EarlyCounterLogWork).isSome = true := by
  decide +kernel

def s6ArmedCounterLogArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 914) ∨ (915 ≤ q ∧ q < 916) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6ArmedCounterLogWork : List Wire := [790, 914, 916, 800, 918]

/-- Recorded step 498. The early control site is the retained sigma;
the early counter program ignores this control argument. -/
theorem s6ArmedCounterLog_checked :
    (compileHmrCounterStepLog s6ArmedCounterLogArena false 819
      [774, 773, 772, 771, 770, 769] s6ArmedCounterLogWork).isSome = true := by
  decide +kernel

def s6InitialNarrowLogArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (874 ≤ q ∧ q < 875) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888)),Finset.filter_subset _ _⟩

def s6InitialNarrowLogWork : List Wire := [927, 802]

theorem s6InitialNarrowLog_checked :
    (compileHmrHybridCinLog s6InitialNarrowLogArena 813 874 793
      [768, 876, 776] [859, 860, 775] s6InitialNarrowLogWork).isSome = true := by
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
