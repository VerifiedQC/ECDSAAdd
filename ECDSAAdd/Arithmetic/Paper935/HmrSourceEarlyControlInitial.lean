import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

def s2FirstEarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 782) ∨ (785 ≤ q ∧ q < 786)),Finset.filter_subset _ _⟩

def s2FirstEarlyControlLog : HmrEarlyControlLog :=
  ⟨[778, 784, 783, 782, 786],[787],[788],[789, 790, 791, 792, 793, 794],[795]⟩

theorem s2FirstEarlyControl_checked :
    (compileHmrEarlyControlLog s2FirstEarlyControlArena [772, 773, 774, 775, 776, 777] []
      777 780 785 770 770 770 781 1 s2FirstEarlyControlLog).map
      (fun P => P.outputArena.live.card) = some 781 := by
  decide +kernel

def s6FirstEarlyControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 768) ∨ (769 ≤ q ∧ q < 778) ∨ (795 ≤ q ∧ q < 796) ∨ (813 ≤ q ∧ q < 814) ∨ (859 ≤ q ∧ q < 860) ∨ (876 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888)),Finset.filter_subset _ _⟩

def s6FirstEarlyControlLog : HmrEarlyControlLog :=
  ⟨[768, 860, 807, 862, 874],[793],[927],[802, 875, 779, 868, 857, 907],[895]⟩

theorem s6FirstEarlyControl_checked :
    (compileHmrEarlyControlLog s6FirstEarlyControlArena [774, 773, 772, 771, 770, 769] []
      769 887 876 776 776 776 813 1 s6FirstEarlyControlLog).map
      (fun P => P.outputArena.live.card) = some 781 := by
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
