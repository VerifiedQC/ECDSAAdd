import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEarlyControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step15CompleteMoves : List (Wire × Wire) := []
def s6Step15CompleteOut : WindowBank := s6Step15FrontOut.repacked s6Step15CompleteMoves
def s6Step15CompleteLog : HmrEarlyStepLog := ⟨s6Step15FrontLog,s6Step15CompleteMoves,s6Step15EarlyControlLog⟩
theorem s6Step15Complete_repack : s6Step15ExitGvAfter.checkRepack s6Step15CompleteMoves=some s6Step15EarlyControlArena := by rfl
theorem s6Step15Complete_owned : (s6Step15CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step15EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step15EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15Complete_apart : List.Disjoint (s6Step15CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [822, 807, 895, 870, 872, 883] := by
  have nd : ((s6Step15CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[822, 807, 895, 870, 872, 883]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step15CompletePlan : HmrEarlyStepPlan := ⟨s6Step15FrontPlan,s6Step15EarlyControlArena,s6Step15EarlyControlPlan,s6Step15CompleteMoves⟩
theorem s6Step15Complete_explicit_checked : compileHmrEarlyStepLog s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 5 s6Step15CompleteLog=some s6Step15CompletePlan := by
  let Q := s6Step15EarlyControlPlan
  have hq := s6Step15EarlyControl_plan_checked
  have fv1 : s6Step15CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step15CompleteOut.fv.payload[2]?.getD s6Step15CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step15CompleteOut.fv.payload[3]?.getD s6Step15CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step15CompleteOut.fv.payload[4]?.getD s6Step15CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step15EntryFBefore s6Step15EarlyControlArena s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 5 s6Step15CompleteLog s6Step15FrontPlan Q
    s6Step15Front_checked s6Step15Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step15Complete_owned s6Step15Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step15EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 769 822 s6Step15CompleteOut.fv.second (s6Step15CompleteOut.fv.payload[2]?.getD s6Step15CompleteOut.fv.sign) (s6Step15CompleteOut.fv.payload[3]?.getD s6Step15CompleteOut.fv.sign) (s6Step15CompleteOut.fv.payload[4]?.getD s6Step15CompleteOut.fv.sign) 807 5 s6Step15EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step15Complete_checked : (compileHmrEarlyStepLog s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883] 5 s6Step15CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step15Complete_explicit_checked]
  rfl
def s6Step498CompleteMoves : List (Wire × Wire) := []
def s6Step498CompleteOut : WindowBank := s6Step498FrontOut.repacked s6Step498CompleteMoves
def s6Step498CompleteLog : HmrArmedStepLog := ⟨s6Step498FrontLog,s6Step498CompleteMoves,s6FirstArmedControlLog⟩
theorem s6Step498Complete_repack : s6Step498ExitGvAfter.checkRepack s6Step498CompleteMoves=some s6FirstArmedControlArena := by rfl
theorem s6Step498Complete_owned : (s6Step498CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6FirstArmedControlArena.live := by
  apply hmrLayout_owned_of_filter s6FirstArmedControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Complete_apart : List.Disjoint (s6Step498CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [791, 842, 819, 843, 874, 892, 881, 879, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  have nd : ((s6Step498CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[791, 842, 819, 843, 874, 892, 881, 879, 877, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
theorem s6Step498Complete_checked : (compileHmrArmedStepLog s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ 819 [774, 773, 772, 771, 770, 769] [843, 874, 892, 881, 879, 877] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 1 60 s6Step498CompleteLog).map (fun _ => true)=some true := by
  obtain ⟨Q,hq,_⟩ := Option.map_eq_some_iff.mp s6FirstArmedControl_checked
  have fv1 : s6Step498CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step498CompleteOut.fv.payload[2]?.getD s6Step498CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step498CompleteOut.fv.payload[3]?.getD s6Step498CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step498CompleteOut.fv.payload[4]?.getD s6Step498CompleteOut.fv.sign=251 := by decide +kernel
  have gEq : s6Step498CompleteOut.g.wires=s6FirstArmedControlG := by decide +kernel
  have result := compileHmrArmedStepLog_of_parts s6Step498EntryFBefore s6FirstArmedControlArena s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ 819 [774, 773, 772, 771, 770, 769] [843, 874, 892, 881, 879, 877] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 1 60 s6Step498CompleteLog s6Step498FrontPlan Q
    s6Step498Front_checked s6Step498Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step498Complete_owned s6Step498Complete_apart)))
    (by
      change compileHmrArmedControlLog s6FirstArmedControlArena s6Step498CompleteOut.g.wires [774, 773, 772, 771, 770, 769] [843, 874, 892, 881, 879, 877] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] 819 769 791 s6Step498CompleteOut.fv.second (s6Step498CompleteOut.fv.payload[2]?.getD s6Step498CompleteOut.fv.sign) (s6Step498CompleteOut.fv.payload[3]?.getD s6Step498CompleteOut.fv.sign) (s6Step498CompleteOut.fv.payload[4]?.getD s6Step498CompleteOut.fv.sign) 842 1 60 s6FirstArmedControlLog=some Q
      rw [fv1,fv2,fv3,fv4,gEq]
      exact hq)
  rw [result]
  rfl

end ECDSAAdd.Arithmetic.Paper935
