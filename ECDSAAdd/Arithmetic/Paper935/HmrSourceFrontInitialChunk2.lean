import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4Parts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterParts
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step15FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], [828, 887]],[[860], [813], [780], [833]],[[], [], [], []]⟩,[822],[807],[888],[886],[778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911],[888, 886, 778, 838]⟩
def s6Step15FrontBank : WindowBank := ⟨s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow⟩
def s6Step15FrontPair : WindowBank := ⟨s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut⟩
def s6Step15FrontHead : WindowBank := ⟨s6Step15HeadFOut,s6Step15HeadGOut,s6Step15HeadFvOut,s6Step15HeadGvOut⟩
def s6Step15FrontOut : WindowBank := ⟨s6Step15ExitFOut,s6Step15ExitGOut,s6Step15ExitFvOut,s6Step15ExitGvOut⟩
def s6Step15FrontSigmaArena : Arena := ⟨s6Step15EntryGvAfter.live∪{822},Finset.union_subset s6Step15EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step15Front_sigma : s6Step15EntryGvAfter.checkBorrow 1 [822]=some s6Step15FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15EntryGvAfter,arenaWires]
  · rfl
theorem s6Step15Front_branch : s6Step15FrontSigmaArena.checkBorrow 1 [807]=some s6Step15HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15FrontSigmaArena,s6Step15EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step15FrontSigmaArena,s6Step15EntryGvAfter,s6Step15HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15Front_entry : HmrFrontEntryValid s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step15FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step15EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step15EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step15FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step15FrontPlan : HmrSourceFront := ⟨s6Step15EntryGvAfter,s6Step15FrontPair,(growRow 795 s6Step15EntryFFresh ++ (growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ [])))),s6Step15FrontSigmaArena,[822],s6Step15HeadGBefore,[807],
  s6Step15HeadFvAfter,s6Step15FrontHead,(growRow 777 s6Step15HeadGFresh ++ (growRow 795 s6Step15HeadFFresh ++ (growRow 775 s6Step15HeadGvFresh ++ (growRow 776 s6Step15HeadFvFresh ++ [])))),s6Step15F4Plan,s6Step15CounterDuring,s6Step15CounterWork,s6Step15ExitGvAfter,s6Step15FrontOut,(shrinkRow 777 s6Step15ExitGExtra ++ (shrinkRow 795 s6Step15ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step15ExitGvExtra ++ []))))⟩
theorem s6Step15Front_checked : compileHmrSourceFrontLog s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step15FrontLog=some s6Step15FrontPlan := by
  have pairEq : s6Step15FrontPair=⟨s6Step15HeadFRow,s6Step15HeadGRow,s6Step15HeadFvRow,s6Step15HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step15FrontHead=⟨s6Step15ExitFRow,s6Step15ExitGRow,s6Step15ExitFvRow,s6Step15ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step15Add0A=s6Step15FrontHead.f.wires := by decide +kernel
  have gEq : s6Step15Add0B=s6Step15FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step15Add1A=s6Step15FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step15Add1B=s6Step15FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step15EntryFBefore s6Step15FrontBank 256 16 ⟨256,255,17,15⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step15FrontLog s6Step15FrontPlan
  · exact s6Step15Front_entry
  · exact s6Step15EntryBank_checked
  · exact s6Step15Front_sigma
  · rfl
  · exact s6Step15Front_branch
  · rfl
  · simpa only [s6Step15FrontPlan,pairEq] using s6Step15HeadBank_checked
  · simpa only [s6Step15FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step15F4_checked
  · exact s6Step15Counter_checked
  · rfl
  · simpa only [s6Step15FrontPlan,headEq] using s6Step15ExitBank_checked
def s6Step498FrontLog : HmrFrontAllocationLog := ⟨⟨[[915], [], [], []],[[798], [808], [820], [896]],[[], [], [], []]⟩,[791],[842],[790],[914],[916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[790, 914, 916, 800, 918]⟩
def s6Step498FrontBank : WindowBank := ⟨s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow⟩
def s6Step498FrontPair : WindowBank := ⟨s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut⟩
def s6Step498FrontHead : WindowBank := ⟨s6Step498HeadFOut,s6Step498HeadGOut,s6Step498HeadFvOut,s6Step498HeadGvOut⟩
def s6Step498FrontOut : WindowBank := ⟨s6Step498ExitFOut,s6Step498ExitGOut,s6Step498ExitFvOut,s6Step498ExitGvOut⟩
def s6Step498FrontSigmaArena : Arena := ⟨s6Step498EntryGvAfter.live∪{791},Finset.union_subset s6Step498EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step498Front_sigma : s6Step498EntryGvAfter.checkBorrow 1 [791]=some s6Step498FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498EntryGvAfter,s6Step498EntryFAfter,arenaWires]
  · rfl
theorem s6Step498Front_branch : s6Step498FrontSigmaArena.checkBorrow 1 [842]=some s6Step498HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498FrontSigmaArena,s6Step498EntryGvAfter,s6Step498EntryFAfter,arenaWires]
  · ext q
    simp only [s6Step498FrontSigmaArena,s6Step498EntryGvAfter,s6Step498EntryFAfter,s6Step498HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step498Front_entry : HmrFrontEntryValid s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 819 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769, 819]++(s6Step498FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769, 819] : List Wire).toFinset⊆s6Step498EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step498EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769, 819] : List Wire).toFinset (s6Step498FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step498FrontPlan : HmrSourceFront := ⟨s6Step498EntryGvAfter,s6Step498FrontPair,(growRow 795 s6Step498EntryFFresh ++ (growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ [])))),s6Step498FrontSigmaArena,[791],s6Step498HeadGBefore,[842],
  s6Step498HeadFvAfter,s6Step498FrontHead,(growRow 777 s6Step498HeadGFresh ++ (growRow 795 s6Step498HeadFFresh ++ (growRow 775 s6Step498HeadGvFresh ++ (growRow 776 s6Step498HeadFvFresh ++ [])))),s6Step498F4Plan,s6Step498CounterDuring,s6Step498CounterWork,s6Step498ExitGvAfter,s6Step498FrontOut,(shrinkRow 777 s6Step498ExitGExtra ++ (shrinkRow 795 s6Step498ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step498ExitGvExtra ++ []))))⟩
theorem s6Step498Front_checked : compileHmrSourceFrontLog s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 819 [774, 773, 772, 771, 770, 769] s6Step498FrontLog=some s6Step498FrontPlan := by
  have pairEq : s6Step498FrontPair=⟨s6Step498HeadFRow,s6Step498HeadGRow,s6Step498HeadFvRow,s6Step498HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step498FrontHead=⟨s6Step498ExitFRow,s6Step498ExitGRow,s6Step498ExitFvRow,s6Step498ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step498Add0A=s6Step498FrontHead.f.wires := by decide +kernel
  have gEq : s6Step498Add0B=s6Step498FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step498Add1A=s6Step498FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step498Add1B=s6Step498FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step498EntryFBefore s6Step498FrontBank 25 266 ⟨24,24,267,266⟩ false 819 [774, 773, 772, 771, 770, 769] s6Step498FrontLog s6Step498FrontPlan
  · exact s6Step498Front_entry
  · exact s6Step498EntryBank_checked
  · exact s6Step498Front_sigma
  · rfl
  · exact s6Step498Front_branch
  · rfl
  · simpa only [s6Step498FrontPlan,pairEq] using s6Step498HeadBank_checked
  · simpa only [s6Step498FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step498F4_checked
  · exact s6Step498Counter_checked
  · rfl
  · simpa only [s6Step498FrontPlan,headEq] using s6Step498ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
