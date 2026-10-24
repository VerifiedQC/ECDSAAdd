import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[806], [805], [787], [790]],[[], [], [], []]⟩,[798],[803],[792],[800],[844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894],[792, 800, 844, 845]⟩
def s2Step48FrontBank : WindowBank := ⟨s2Step48EntryFRow,s2Step48EntryGRow,s2Step48EntryFvRow,s2Step48EntryGvRow⟩
def s2Step48FrontPair : WindowBank := ⟨s2Step48EntryFOut,s2Step48EntryGOut,s2Step48EntryFvOut,s2Step48EntryGvOut⟩
def s2Step48FrontHead : WindowBank := ⟨s2Step48HeadFOut,s2Step48HeadGOut,s2Step48HeadFvOut,s2Step48HeadGvOut⟩
def s2Step48FrontOut : WindowBank := ⟨s2Step48ExitFOut,s2Step48ExitGOut,s2Step48ExitFvOut,s2Step48ExitGvOut⟩
def s2Step48FrontSigmaArena : Arena := ⟨s2Step48EntryGvAfter.live∪{798},Finset.union_subset s2Step48EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step48Front_sigma : s2Step48EntryGvAfter.checkBorrow 1 [798]=some s2Step48FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step48EntryGvAfter,s2Step48EntryFBefore,arenaWires]
  · rfl
theorem s2Step48Front_branch : s2Step48FrontSigmaArena.checkBorrow 1 [803]=some s2Step48HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step48FrontSigmaArena,s2Step48EntryGvAfter,s2Step48EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step48FrontSigmaArena,s2Step48EntryGvAfter,s2Step48EntryFBefore,s2Step48HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step48Front_entry : HmrFrontEntryValid s2Step48EntryFBefore s2Step48FrontBank 244 37 ⟨244,243,37,37⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step48FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step48EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step48EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step48FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step48FrontPlan : HmrSourceFront := ⟨s2Step48EntryGvAfter,s2Step48FrontPair,(growRow 768 s2Step48EntryFFresh ++ (growRow 769 s2Step48EntryGFresh ++ (growRow 770 s2Step48EntryFvFresh ++ (growRow 771 s2Step48EntryGvFresh ++ [])))),s2Step48FrontSigmaArena,[798],s2Step48HeadGBefore,[803],
  s2Step48HeadFvAfter,s2Step48FrontHead,(growRow 769 s2Step48HeadGFresh ++ (growRow 768 s2Step48HeadFFresh ++ (growRow 771 s2Step48HeadGvFresh ++ (growRow 770 s2Step48HeadFvFresh ++ [])))),s2Step48F4Plan,s2Step48CounterDuring,s2Step48CounterWork,s2Step48ExitGvAfter,s2Step48FrontOut,(shrinkRow 769 s2Step48ExitGExtra ++ (shrinkRow 768 s2Step48ExitFExtra ++ (shrinkRow 770 s2Step48ExitFvExtra ++ (shrinkRow 771 s2Step48ExitGvExtra ++ []))))⟩
theorem s2Step48Front_checked : compileHmrSourceFrontLog s2Step48EntryFBefore s2Step48FrontBank 244 37 ⟨244,243,37,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step48FrontLog=some s2Step48FrontPlan := by
  have pairEq : s2Step48FrontPair=⟨s2Step48HeadFRow,s2Step48HeadGRow,s2Step48HeadFvRow,s2Step48HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step48FrontHead=⟨s2Step48ExitFRow,s2Step48ExitGRow,s2Step48ExitFvRow,s2Step48ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step48Add0A=s2Step48FrontHead.f.wires := by decide +kernel
  have gEq : s2Step48Add0B=s2Step48FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step48Add1A=s2Step48FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step48Add1B=s2Step48FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step48EntryFBefore s2Step48FrontBank 244 37 ⟨244,243,37,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step48FrontLog s2Step48FrontPlan
  · exact s2Step48Front_entry
  · exact s2Step48EntryBank_checked
  · exact s2Step48Front_sigma
  · rfl
  · exact s2Step48Front_branch
  · rfl
  · simpa only [s2Step48FrontPlan,pairEq] using s2Step48HeadBank_checked
  · simpa only [s2Step48FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step48F4_checked
  · exact s2Step48Counter_checked
  · rfl
  · simpa only [s2Step48FrontPlan,headEq] using s2Step48ExitBank_checked
def s2Step49FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [803], [], []],[[787], [790], [805], [806]],[[], [], [], []]⟩,[798],[808],[792],[800],[844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894],[792, 800, 844, 845]⟩
def s2Step49FrontBank : WindowBank := ⟨s2Step49EntryFRow,s2Step49EntryGRow,s2Step49EntryFvRow,s2Step49EntryGvRow⟩
def s2Step49FrontPair : WindowBank := ⟨s2Step49EntryFOut,s2Step49EntryGOut,s2Step49EntryFvOut,s2Step49EntryGvOut⟩
def s2Step49FrontHead : WindowBank := ⟨s2Step49HeadFOut,s2Step49HeadGOut,s2Step49HeadFvOut,s2Step49HeadGvOut⟩
def s2Step49FrontOut : WindowBank := ⟨s2Step49ExitFOut,s2Step49ExitGOut,s2Step49ExitFvOut,s2Step49ExitGvOut⟩
def s2Step49FrontSigmaArena : Arena := ⟨s2Step49EntryGvAfter.live∪{798},Finset.union_subset s2Step49EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step49Front_sigma : s2Step49EntryGvAfter.checkBorrow 1 [798]=some s2Step49FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step49EntryGvAfter,s2Step49EntryGAfter,arenaWires]
  · rfl
theorem s2Step49Front_branch : s2Step49FrontSigmaArena.checkBorrow 1 [808]=some s2Step49HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step49FrontSigmaArena,s2Step49EntryGvAfter,s2Step49EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step49FrontSigmaArena,s2Step49EntryGvAfter,s2Step49EntryGAfter,s2Step49HeadGBefore,s2Step48HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step49Front_entry : HmrFrontEntryValid s2Step49EntryFBefore s2Step49FrontBank 244 37 ⟨243,243,38,37⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step49FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step49EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step49EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step49FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step49FrontPlan : HmrSourceFront := ⟨s2Step49EntryGvAfter,s2Step49FrontPair,(growRow 768 s2Step49EntryFFresh ++ (growRow 769 s2Step49EntryGFresh ++ (growRow 770 s2Step49EntryFvFresh ++ (growRow 771 s2Step49EntryGvFresh ++ [])))),s2Step49FrontSigmaArena,[798],s2Step49HeadGBefore,[808],
  s2Step49HeadFvAfter,s2Step49FrontHead,(growRow 769 s2Step49HeadGFresh ++ (growRow 768 s2Step49HeadFFresh ++ (growRow 771 s2Step49HeadGvFresh ++ (growRow 770 s2Step49HeadFvFresh ++ [])))),s2Step49F4Plan,s2Step49CounterDuring,s2Step49CounterWork,s2Step49ExitGvAfter,s2Step49FrontOut,(shrinkRow 769 s2Step49ExitGExtra ++ (shrinkRow 768 s2Step49ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step49ExitGvExtra ++ []))))⟩
theorem s2Step49Front_checked : compileHmrSourceFrontLog s2Step49EntryFBefore s2Step49FrontBank 244 37 ⟨243,243,38,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step49FrontLog=some s2Step49FrontPlan := by
  have pairEq : s2Step49FrontPair=⟨s2Step49HeadFRow,s2Step49HeadGRow,s2Step49HeadFvRow,s2Step49HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step49FrontHead=⟨s2Step49ExitFRow,s2Step49ExitGRow,s2Step49ExitFvRow,s2Step49ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step49Add0A=s2Step49FrontHead.f.wires := by decide +kernel
  have gEq : s2Step49Add0B=s2Step49FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step49Add1A=s2Step49FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step49Add1B=s2Step49FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step49EntryFBefore s2Step49FrontBank 244 37 ⟨243,243,38,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step49FrontLog s2Step49FrontPlan
  · exact s2Step49Front_entry
  · exact s2Step49EntryBank_checked
  · exact s2Step49Front_sigma
  · rfl
  · exact s2Step49Front_branch
  · rfl
  · simpa only [s2Step49FrontPlan,pairEq] using s2Step49HeadBank_checked
  · simpa only [s2Step49FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step49F4_checked
  · exact s2Step49Counter_checked
  · rfl
  · simpa only [s2Step49FrontPlan,headEq] using s2Step49ExitBank_checked
def s2Step50FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [808]],[[805], [790], [803], [787]],[[], [], [], []]⟩,[798],[807],[792],[800],[844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896],[792, 800, 844, 845]⟩
def s2Step50FrontBank : WindowBank := ⟨s2Step50EntryFRow,s2Step50EntryGRow,s2Step50EntryFvRow,s2Step50EntryGvRow⟩
def s2Step50FrontPair : WindowBank := ⟨s2Step50EntryFOut,s2Step50EntryGOut,s2Step50EntryFvOut,s2Step50EntryGvOut⟩
def s2Step50FrontHead : WindowBank := ⟨s2Step50HeadFOut,s2Step50HeadGOut,s2Step50HeadFvOut,s2Step50HeadGvOut⟩
def s2Step50FrontOut : WindowBank := ⟨s2Step50ExitFOut,s2Step50ExitGOut,s2Step50ExitFvOut,s2Step50ExitGvOut⟩
def s2Step50FrontSigmaArena : Arena := ⟨s2Step50EntryGvAfter.live∪{798},Finset.union_subset s2Step50EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step50Front_sigma : s2Step50EntryGvAfter.checkBorrow 1 [798]=some s2Step50FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step50EntryGvAfter,arenaWires]
  · rfl
theorem s2Step50Front_branch : s2Step50FrontSigmaArena.checkBorrow 1 [807]=some s2Step50HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step50FrontSigmaArena,s2Step50EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step50FrontSigmaArena,s2Step50EntryGvAfter,s2Step50HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step50Front_entry : HmrFrontEntryValid s2Step50EntryFBefore s2Step50FrontBank 243 38 ⟨243,242,38,37⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step50FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step50EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step50EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step50FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step50FrontPlan : HmrSourceFront := ⟨s2Step50EntryGvAfter,s2Step50FrontPair,(growRow 768 s2Step50EntryFFresh ++ (growRow 769 s2Step50EntryGFresh ++ (growRow 770 s2Step50EntryFvFresh ++ (growRow 771 s2Step50EntryGvFresh ++ [])))),s2Step50FrontSigmaArena,[798],s2Step50HeadGBefore,[807],
  s2Step50HeadFvAfter,s2Step50FrontHead,(growRow 769 s2Step50HeadGFresh ++ (growRow 768 s2Step50HeadFFresh ++ (growRow 771 s2Step50HeadGvFresh ++ (growRow 770 s2Step50HeadFvFresh ++ [])))),s2Step50F4Plan,s2Step50CounterDuring,s2Step50CounterWork,s2Step50ExitGvAfter,s2Step50FrontOut,(shrinkRow 769 s2Step50ExitGExtra ++ (shrinkRow 768 s2Step50ExitFExtra ++ (shrinkRow 770 s2Step50ExitFvExtra ++ (shrinkRow 771 s2Step50ExitGvExtra ++ []))))⟩
theorem s2Step50Front_checked : compileHmrSourceFrontLog s2Step50EntryFBefore s2Step50FrontBank 243 38 ⟨243,242,38,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step50FrontLog=some s2Step50FrontPlan := by
  have pairEq : s2Step50FrontPair=⟨s2Step50HeadFRow,s2Step50HeadGRow,s2Step50HeadFvRow,s2Step50HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step50FrontHead=⟨s2Step50ExitFRow,s2Step50ExitGRow,s2Step50ExitFvRow,s2Step50ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step50Add0A=s2Step50FrontHead.f.wires := by decide +kernel
  have gEq : s2Step50Add0B=s2Step50FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step50Add1A=s2Step50FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step50Add1B=s2Step50FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step50EntryFBefore s2Step50FrontBank 243 38 ⟨243,242,38,37⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step50FrontLog s2Step50FrontPlan
  · exact s2Step50Front_entry
  · exact s2Step50EntryBank_checked
  · exact s2Step50Front_sigma
  · rfl
  · exact s2Step50Front_branch
  · rfl
  · simpa only [s2Step50FrontPlan,pairEq] using s2Step50HeadBank_checked
  · simpa only [s2Step50FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step50F4_checked
  · exact s2Step50Counter_checked
  · rfl
  · simpa only [s2Step50FrontPlan,headEq] using s2Step50ExitBank_checked
def s2Step51FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [798]],[[803], [787], [790], [805]],[[], [], [], []]⟩,[810],[808],[792],[800],[844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896],[792, 800, 844, 845]⟩
def s2Step51FrontBank : WindowBank := ⟨s2Step51EntryFRow,s2Step51EntryGRow,s2Step51EntryFvRow,s2Step51EntryGvRow⟩
def s2Step51FrontPair : WindowBank := ⟨s2Step51EntryFOut,s2Step51EntryGOut,s2Step51EntryFvOut,s2Step51EntryGvOut⟩
def s2Step51FrontHead : WindowBank := ⟨s2Step51HeadFOut,s2Step51HeadGOut,s2Step51HeadFvOut,s2Step51HeadGvOut⟩
def s2Step51FrontOut : WindowBank := ⟨s2Step51ExitFOut,s2Step51ExitGOut,s2Step51ExitFvOut,s2Step51ExitGvOut⟩
def s2Step51FrontSigmaArena : Arena := ⟨s2Step51EntryGvAfter.live∪{810},Finset.union_subset s2Step51EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step51Front_sigma : s2Step51EntryGvAfter.checkBorrow 1 [810]=some s2Step51FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step51EntryGvAfter,arenaWires]
  · rfl
theorem s2Step51Front_branch : s2Step51FrontSigmaArena.checkBorrow 1 [808]=some s2Step51HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step51FrontSigmaArena,s2Step51EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step51FrontSigmaArena,s2Step51EntryGvAfter,s2Step51HeadGBefore,s2Step50HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step51Front_entry : HmrFrontEntryValid s2Step51EntryFBefore s2Step51FrontBank 243 38 ⟨242,242,39,38⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step51FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step51EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step51EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<798) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step51FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step51FrontPlan : HmrSourceFront := ⟨s2Step51EntryGvAfter,s2Step51FrontPair,(growRow 768 s2Step51EntryFFresh ++ (growRow 769 s2Step51EntryGFresh ++ (growRow 770 s2Step51EntryFvFresh ++ (growRow 771 s2Step51EntryGvFresh ++ [])))),s2Step51FrontSigmaArena,[810],s2Step51HeadGBefore,[808],
  s2Step51HeadFvAfter,s2Step51FrontHead,(growRow 769 s2Step51HeadGFresh ++ (growRow 768 s2Step51HeadFFresh ++ (growRow 771 s2Step51HeadGvFresh ++ (growRow 770 s2Step51HeadFvFresh ++ [])))),s2Step51F4Plan,s2Step51CounterDuring,s2Step51CounterWork,s2Step51ExitGvAfter,s2Step51FrontOut,(shrinkRow 769 s2Step51ExitGExtra ++ (shrinkRow 768 s2Step51ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step51ExitGvExtra ++ []))))⟩
theorem s2Step51Front_checked : compileHmrSourceFrontLog s2Step51EntryFBefore s2Step51FrontBank 243 38 ⟨242,242,39,38⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step51FrontLog=some s2Step51FrontPlan := by
  have pairEq : s2Step51FrontPair=⟨s2Step51HeadFRow,s2Step51HeadGRow,s2Step51HeadFvRow,s2Step51HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step51FrontHead=⟨s2Step51ExitFRow,s2Step51ExitGRow,s2Step51ExitFvRow,s2Step51ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step51Add0A=s2Step51FrontHead.f.wires := by decide +kernel
  have gEq : s2Step51Add0B=s2Step51FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step51Add1A=s2Step51FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step51Add1B=s2Step51FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step51EntryFBefore s2Step51FrontBank 243 38 ⟨242,242,39,38⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step51FrontLog s2Step51FrontPlan
  · exact s2Step51Front_entry
  · exact s2Step51EntryBank_checked
  · exact s2Step51Front_sigma
  · rfl
  · exact s2Step51Front_branch
  · rfl
  · simpa only [s2Step51FrontPlan,pairEq] using s2Step51HeadBank_checked
  · simpa only [s2Step51FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step51F4_checked
  · exact s2Step51Counter_checked
  · rfl
  · simpa only [s2Step51FrontPlan,headEq] using s2Step51ExitBank_checked
def s2Step52FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [808]],[[790], [787], [807], [803]],[[], [], [], []]⟩,[810],[809],[792],[800],[844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898],[792, 800, 844, 845]⟩
def s2Step52FrontBank : WindowBank := ⟨s2Step52EntryFRow,s2Step52EntryGRow,s2Step52EntryFvRow,s2Step52EntryGvRow⟩
def s2Step52FrontPair : WindowBank := ⟨s2Step52EntryFOut,s2Step52EntryGOut,s2Step52EntryFvOut,s2Step52EntryGvOut⟩
def s2Step52FrontHead : WindowBank := ⟨s2Step52HeadFOut,s2Step52HeadGOut,s2Step52HeadFvOut,s2Step52HeadGvOut⟩
def s2Step52FrontOut : WindowBank := ⟨s2Step52ExitFOut,s2Step52ExitGOut,s2Step52ExitFvOut,s2Step52ExitGvOut⟩
def s2Step52FrontSigmaArena : Arena := ⟨s2Step52EntryGvAfter.live∪{810},Finset.union_subset s2Step52EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step52Front_sigma : s2Step52EntryGvAfter.checkBorrow 1 [810]=some s2Step52FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step52EntryGvAfter,arenaWires]
  · rfl
theorem s2Step52Front_branch : s2Step52FrontSigmaArena.checkBorrow 1 [809]=some s2Step52HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step52FrontSigmaArena,s2Step52EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step52FrontSigmaArena,s2Step52EntryGvAfter,s2Step52HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step52Front_entry : HmrFrontEntryValid s2Step52EntryFBefore s2Step52FrontBank 242 39 ⟨241,241,39,38⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step52FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step52EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step52EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (811≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step52FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step52FrontPlan : HmrSourceFront := ⟨s2Step52EntryGvAfter,s2Step52FrontPair,(growRow 768 s2Step52EntryFFresh ++ (growRow 769 s2Step52EntryGFresh ++ (growRow 770 s2Step52EntryFvFresh ++ (growRow 771 s2Step52EntryGvFresh ++ [])))),s2Step52FrontSigmaArena,[810],s2Step52HeadGBefore,[809],
  s2Step52HeadFvAfter,s2Step52FrontHead,(growRow 769 s2Step52HeadGFresh ++ (growRow 768 s2Step52HeadFFresh ++ (growRow 771 s2Step52HeadGvFresh ++ (growRow 770 s2Step52HeadFvFresh ++ [])))),s2Step52F4Plan,s2Step52CounterDuring,s2Step52CounterWork,s2Step52ExitGvAfter,s2Step52FrontOut,(shrinkRow 769 s2Step52ExitGExtra ++ (shrinkRow 768 s2Step52ExitFExtra ++ (shrinkRow 770 s2Step52ExitFvExtra ++ (shrinkRow 771 s2Step52ExitGvExtra ++ []))))⟩
theorem s2Step52Front_checked : compileHmrSourceFrontLog s2Step52EntryFBefore s2Step52FrontBank 242 39 ⟨241,241,39,38⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step52FrontLog=some s2Step52FrontPlan := by
  have pairEq : s2Step52FrontPair=⟨s2Step52HeadFRow,s2Step52HeadGRow,s2Step52HeadFvRow,s2Step52HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step52FrontHead=⟨s2Step52ExitFRow,s2Step52ExitGRow,s2Step52ExitFvRow,s2Step52ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step52Add0A=s2Step52FrontHead.f.wires := by decide +kernel
  have gEq : s2Step52Add0B=s2Step52FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step52Add1A=s2Step52FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step52Add1B=s2Step52FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step52EntryFBefore s2Step52FrontBank 242 39 ⟨241,241,39,38⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step52FrontLog s2Step52FrontPlan
  · exact s2Step52Front_entry
  · exact s2Step52EntryBank_checked
  · exact s2Step52Front_sigma
  · rfl
  · exact s2Step52Front_branch
  · rfl
  · simpa only [s2Step52FrontPlan,pairEq] using s2Step52HeadBank_checked
  · simpa only [s2Step52FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step52F4_checked
  · exact s2Step52Counter_checked
  · rfl
  · simpa only [s2Step52FrontPlan,headEq] using s2Step52ExitBank_checked
def s2Step53FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [809]],[[812], [808], [807], [803]],[[], [], [], []]⟩,[810],[811],[787],[790],[792, 800, 844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896],[787, 790, 792, 800]⟩
def s2Step53FrontBank : WindowBank := ⟨s2Step53EntryFRow,s2Step53EntryGRow,s2Step53EntryFvRow,s2Step53EntryGvRow⟩
def s2Step53FrontPair : WindowBank := ⟨s2Step53EntryFOut,s2Step53EntryGOut,s2Step53EntryFvOut,s2Step53EntryGvOut⟩
def s2Step53FrontHead : WindowBank := ⟨s2Step53HeadFOut,s2Step53HeadGOut,s2Step53HeadFvOut,s2Step53HeadGvOut⟩
def s2Step53FrontOut : WindowBank := ⟨s2Step53ExitFOut,s2Step53ExitGOut,s2Step53ExitFvOut,s2Step53ExitGvOut⟩
def s2Step53FrontSigmaArena : Arena := ⟨s2Step53EntryGvAfter.live∪{810},Finset.union_subset s2Step53EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step53Front_sigma : s2Step53EntryGvAfter.checkBorrow 1 [810]=some s2Step53FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step53EntryGvAfter,arenaWires]
  · rfl
theorem s2Step53Front_branch : s2Step53FrontSigmaArena.checkBorrow 1 [811]=some s2Step53HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step53FrontSigmaArena,s2Step53EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step53FrontSigmaArena,s2Step53EntryGvAfter,s2Step53HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step53Front_entry : HmrFrontEntryValid s2Step53EntryFBefore s2Step53FrontBank 241 39 ⟨241,241,40,39⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step53FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step53EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step53EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step53FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step53FrontPlan : HmrSourceFront := ⟨s2Step53EntryGvAfter,s2Step53FrontPair,(growRow 768 s2Step53EntryFFresh ++ (growRow 769 s2Step53EntryGFresh ++ (growRow 770 s2Step53EntryFvFresh ++ (growRow 771 s2Step53EntryGvFresh ++ [])))),s2Step53FrontSigmaArena,[810],s2Step53HeadGBefore,[811],
  s2Step53HeadFvAfter,s2Step53FrontHead,(growRow 769 s2Step53HeadGFresh ++ (growRow 768 s2Step53HeadFFresh ++ (growRow 771 s2Step53HeadGvFresh ++ (growRow 770 s2Step53HeadFvFresh ++ [])))),s2Step53F4Plan,s2Step53CounterDuring,s2Step53CounterWork,s2Step53ExitGvAfter,s2Step53FrontOut,(shrinkRow 769 s2Step53ExitGExtra ++ (shrinkRow 768 s2Step53ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step53ExitGvExtra ++ []))))⟩
theorem s2Step53Front_checked : compileHmrSourceFrontLog s2Step53EntryFBefore s2Step53FrontBank 241 39 ⟨241,241,40,39⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step53FrontLog=some s2Step53FrontPlan := by
  have pairEq : s2Step53FrontPair=⟨s2Step53HeadFRow,s2Step53HeadGRow,s2Step53HeadFvRow,s2Step53HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step53FrontHead=⟨s2Step53ExitFRow,s2Step53ExitGRow,s2Step53ExitFvRow,s2Step53ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step53Add0A=s2Step53FrontHead.f.wires := by decide +kernel
  have gEq : s2Step53Add0B=s2Step53FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step53Add1A=s2Step53FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step53Add1B=s2Step53FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step53EntryFBefore s2Step53FrontBank 241 39 ⟨241,241,40,39⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step53FrontLog s2Step53FrontPlan
  · exact s2Step53Front_entry
  · exact s2Step53EntryBank_checked
  · exact s2Step53Front_sigma
  · rfl
  · exact s2Step53Front_branch
  · rfl
  · simpa only [s2Step53FrontPlan,pairEq] using s2Step53HeadBank_checked
  · simpa only [s2Step53FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step53F4_checked
  · exact s2Step53Counter_checked
  · rfl
  · simpa only [s2Step53FrontPlan,headEq] using s2Step53ExitBank_checked
def s2Step54FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [811]],[[808], [812], [787], [790]],[[], [], [], []]⟩,[810],[807],[792],[800],[844, 845, 846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900],[792, 800, 844, 845]⟩
def s2Step54FrontBank : WindowBank := ⟨s2Step54EntryFRow,s2Step54EntryGRow,s2Step54EntryFvRow,s2Step54EntryGvRow⟩
def s2Step54FrontPair : WindowBank := ⟨s2Step54EntryFOut,s2Step54EntryGOut,s2Step54EntryFvOut,s2Step54EntryGvOut⟩
def s2Step54FrontHead : WindowBank := ⟨s2Step54HeadFOut,s2Step54HeadGOut,s2Step54HeadFvOut,s2Step54HeadGvOut⟩
def s2Step54FrontOut : WindowBank := ⟨s2Step54ExitFOut,s2Step54ExitGOut,s2Step54ExitFvOut,s2Step54ExitGvOut⟩
def s2Step54FrontSigmaArena : Arena := ⟨s2Step54EntryGvAfter.live∪{810},Finset.union_subset s2Step54EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step54Front_sigma : s2Step54EntryGvAfter.checkBorrow 1 [810]=some s2Step54FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step54EntryGvAfter,arenaWires]
  · rfl
theorem s2Step54Front_branch : s2Step54FrontSigmaArena.checkBorrow 1 [807]=some s2Step54HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step54FrontSigmaArena,s2Step54EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step54FrontSigmaArena,s2Step54EntryGvAfter,s2Step54HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step54Front_entry : HmrFrontEntryValid s2Step54EntryFBefore s2Step54FrontBank 241 40 ⟨241,240,41,40⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step54FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step54EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step54EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step54FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step54FrontPlan : HmrSourceFront := ⟨s2Step54EntryGvAfter,s2Step54FrontPair,(growRow 768 s2Step54EntryFFresh ++ (growRow 769 s2Step54EntryGFresh ++ (growRow 770 s2Step54EntryFvFresh ++ (growRow 771 s2Step54EntryGvFresh ++ [])))),s2Step54FrontSigmaArena,[810],s2Step54HeadGBefore,[807],
  s2Step54HeadFvAfter,s2Step54FrontHead,(growRow 769 s2Step54HeadGFresh ++ (growRow 768 s2Step54HeadFFresh ++ (growRow 771 s2Step54HeadGvFresh ++ (growRow 770 s2Step54HeadFvFresh ++ [])))),s2Step54F4Plan,s2Step54CounterDuring,s2Step54CounterWork,s2Step54ExitGvAfter,s2Step54FrontOut,(shrinkRow 769 s2Step54ExitGExtra ++ (shrinkRow 768 s2Step54ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step54ExitGvExtra ++ []))))⟩
theorem s2Step54Front_checked : compileHmrSourceFrontLog s2Step54EntryFBefore s2Step54FrontBank 241 40 ⟨241,240,41,40⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step54FrontLog=some s2Step54FrontPlan := by
  have pairEq : s2Step54FrontPair=⟨s2Step54HeadFRow,s2Step54HeadGRow,s2Step54HeadFvRow,s2Step54HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step54FrontHead=⟨s2Step54ExitFRow,s2Step54ExitGRow,s2Step54ExitFvRow,s2Step54ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step54Add0A=s2Step54FrontHead.f.wires := by decide +kernel
  have gEq : s2Step54Add0B=s2Step54FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step54Add1A=s2Step54FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step54Add1B=s2Step54FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step54EntryFBefore s2Step54FrontBank 241 40 ⟨241,240,41,40⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step54FrontLog s2Step54FrontPlan
  · exact s2Step54Front_entry
  · exact s2Step54EntryBank_checked
  · exact s2Step54Front_sigma
  · rfl
  · exact s2Step54Front_branch
  · rfl
  · simpa only [s2Step54FrontPlan,pairEq] using s2Step54HeadBank_checked
  · simpa only [s2Step54FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step54F4_checked
  · exact s2Step54Counter_checked
  · rfl
  · simpa only [s2Step54FrontPlan,headEq] using s2Step54ExitBank_checked
def s2Step55FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [810]],[[812], [808], [792], [800]],[[], [], [], []]⟩,[815],[787],[844],[845],[846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903],[844, 845, 846, 847]⟩
def s2Step55FrontBank : WindowBank := ⟨s2Step55EntryFRow,s2Step55EntryGRow,s2Step55EntryFvRow,s2Step55EntryGvRow⟩
def s2Step55FrontPair : WindowBank := ⟨s2Step55EntryFOut,s2Step55EntryGOut,s2Step55EntryFvOut,s2Step55EntryGvOut⟩
def s2Step55FrontHead : WindowBank := ⟨s2Step55HeadFOut,s2Step55HeadGOut,s2Step55HeadFvOut,s2Step55HeadGvOut⟩
def s2Step55FrontOut : WindowBank := ⟨s2Step55ExitFOut,s2Step55ExitGOut,s2Step55ExitFvOut,s2Step55ExitGvOut⟩
def s2Step55FrontSigmaArena : Arena := ⟨s2Step55EntryGvAfter.live∪{815},Finset.union_subset s2Step55EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step55Front_sigma : s2Step55EntryGvAfter.checkBorrow 1 [815]=some s2Step55FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step55EntryGvAfter,arenaWires]
  · rfl
theorem s2Step55Front_branch : s2Step55FrontSigmaArena.checkBorrow 1 [787]=some s2Step55HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step55FrontSigmaArena,s2Step55EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step55FrontSigmaArena,s2Step55EntryGvAfter,s2Step55HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step55Front_entry : HmrFrontEntryValid s2Step55EntryFBefore s2Step55FrontBank 241 41 ⟨240,240,40,41⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step55FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step55EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step55EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<810) ∨ (811≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step55FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step55FrontPlan : HmrSourceFront := ⟨s2Step55EntryGvAfter,s2Step55FrontPair,(growRow 768 s2Step55EntryFFresh ++ (growRow 769 s2Step55EntryGFresh ++ (growRow 770 s2Step55EntryFvFresh ++ (growRow 771 s2Step55EntryGvFresh ++ [])))),s2Step55FrontSigmaArena,[815],s2Step55HeadGBefore,[787],
  s2Step55HeadFvAfter,s2Step55FrontHead,(growRow 769 s2Step55HeadGFresh ++ (growRow 768 s2Step55HeadFFresh ++ (growRow 771 s2Step55HeadGvFresh ++ (growRow 770 s2Step55HeadFvFresh ++ [])))),s2Step55F4Plan,s2Step55CounterDuring,s2Step55CounterWork,s2Step55ExitGvAfter,s2Step55FrontOut,(shrinkRow 769 s2Step55ExitGExtra ++ (shrinkRow 768 s2Step55ExitFExtra ++ (shrinkRow 770 s2Step55ExitFvExtra ++ (shrinkRow 771 s2Step55ExitGvExtra ++ []))))⟩
theorem s2Step55Front_checked : compileHmrSourceFrontLog s2Step55EntryFBefore s2Step55FrontBank 241 41 ⟨240,240,40,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step55FrontLog=some s2Step55FrontPlan := by
  have pairEq : s2Step55FrontPair=⟨s2Step55HeadFRow,s2Step55HeadGRow,s2Step55HeadFvRow,s2Step55HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step55FrontHead=⟨s2Step55ExitFRow,s2Step55ExitGRow,s2Step55ExitFvRow,s2Step55ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step55Add0A=s2Step55FrontHead.f.wires := by decide +kernel
  have gEq : s2Step55Add0B=s2Step55FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step55Add1A=s2Step55FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step55Add1B=s2Step55FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step55EntryFBefore s2Step55FrontBank 241 41 ⟨240,240,40,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step55FrontLog s2Step55FrontPlan
  · exact s2Step55Front_entry
  · exact s2Step55EntryBank_checked
  · exact s2Step55Front_sigma
  · rfl
  · exact s2Step55Front_branch
  · rfl
  · simpa only [s2Step55FrontPlan,pairEq] using s2Step55HeadBank_checked
  · simpa only [s2Step55FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step55F4_checked
  · exact s2Step55Counter_checked
  · rfl
  · simpa only [s2Step55FrontPlan,headEq] using s2Step55ExitBank_checked
def s2Step56FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [787], []],[[792], [790], [800], [808]],[[], [], [], []]⟩,[815],[814],[807],[812],[844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902],[807, 812, 844, 845]⟩
def s2Step56FrontBank : WindowBank := ⟨s2Step56EntryFRow,s2Step56EntryGRow,s2Step56EntryFvRow,s2Step56EntryGvRow⟩
def s2Step56FrontPair : WindowBank := ⟨s2Step56EntryFOut,s2Step56EntryGOut,s2Step56EntryFvOut,s2Step56EntryGvOut⟩
def s2Step56FrontHead : WindowBank := ⟨s2Step56HeadFOut,s2Step56HeadGOut,s2Step56HeadFvOut,s2Step56HeadGvOut⟩
def s2Step56FrontOut : WindowBank := ⟨s2Step56ExitFOut,s2Step56ExitGOut,s2Step56ExitFvOut,s2Step56ExitGvOut⟩
def s2Step56FrontSigmaArena : Arena := ⟨s2Step56EntryGvAfter.live∪{815},Finset.union_subset s2Step56EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step56Front_sigma : s2Step56EntryGvAfter.checkBorrow 1 [815]=some s2Step56FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step56EntryGvAfter,s2Step56EntryFvAfter,arenaWires]
  · rfl
theorem s2Step56Front_branch : s2Step56FrontSigmaArena.checkBorrow 1 [814]=some s2Step56HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step56FrontSigmaArena,s2Step56EntryGvAfter,s2Step56EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step56FrontSigmaArena,s2Step56EntryGvAfter,s2Step56EntryFvAfter,s2Step56HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step56Front_entry : HmrFrontEntryValid s2Step56EntryFBefore s2Step56FrontBank 240 41 ⟨240,239,41,41⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step56FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step56EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step56EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step56FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step56FrontPlan : HmrSourceFront := ⟨s2Step56EntryGvAfter,s2Step56FrontPair,(growRow 768 s2Step56EntryFFresh ++ (growRow 769 s2Step56EntryGFresh ++ (growRow 770 s2Step56EntryFvFresh ++ (growRow 771 s2Step56EntryGvFresh ++ [])))),s2Step56FrontSigmaArena,[815],s2Step56HeadGBefore,[814],
  s2Step56HeadFvAfter,s2Step56FrontHead,(growRow 769 s2Step56HeadGFresh ++ (growRow 768 s2Step56HeadFFresh ++ (growRow 771 s2Step56HeadGvFresh ++ (growRow 770 s2Step56HeadFvFresh ++ [])))),s2Step56F4Plan,s2Step56CounterDuring,s2Step56CounterWork,s2Step56ExitGvAfter,s2Step56FrontOut,(shrinkRow 769 s2Step56ExitGExtra ++ (shrinkRow 768 s2Step56ExitFExtra ++ (shrinkRow 770 s2Step56ExitFvExtra ++ (shrinkRow 771 s2Step56ExitGvExtra ++ []))))⟩
theorem s2Step56Front_checked : compileHmrSourceFrontLog s2Step56EntryFBefore s2Step56FrontBank 240 41 ⟨240,239,41,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step56FrontLog=some s2Step56FrontPlan := by
  have pairEq : s2Step56FrontPair=⟨s2Step56HeadFRow,s2Step56HeadGRow,s2Step56HeadFvRow,s2Step56HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step56FrontHead=⟨s2Step56ExitFRow,s2Step56ExitGRow,s2Step56ExitFvRow,s2Step56ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step56Add0A=s2Step56FrontHead.f.wires := by decide +kernel
  have gEq : s2Step56Add0B=s2Step56FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step56Add1A=s2Step56FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step56Add1B=s2Step56FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step56EntryFBefore s2Step56FrontBank 240 41 ⟨240,239,41,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step56FrontLog s2Step56FrontPlan
  · exact s2Step56Front_entry
  · exact s2Step56EntryBank_checked
  · exact s2Step56Front_sigma
  · rfl
  · exact s2Step56Front_branch
  · rfl
  · simpa only [s2Step56FrontPlan,pairEq] using s2Step56HeadBank_checked
  · simpa only [s2Step56FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step56F4_checked
  · exact s2Step56Counter_checked
  · rfl
  · simpa only [s2Step56FrontPlan,headEq] using s2Step56ExitBank_checked
def s2Step57FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [814], [], []],[[800], [808], [790], [792]],[[], [], [], []]⟩,[815],[817],[807],[812],[844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902],[807, 812, 844, 845]⟩
def s2Step57FrontBank : WindowBank := ⟨s2Step57EntryFRow,s2Step57EntryGRow,s2Step57EntryFvRow,s2Step57EntryGvRow⟩
def s2Step57FrontPair : WindowBank := ⟨s2Step57EntryFOut,s2Step57EntryGOut,s2Step57EntryFvOut,s2Step57EntryGvOut⟩
def s2Step57FrontHead : WindowBank := ⟨s2Step57HeadFOut,s2Step57HeadGOut,s2Step57HeadFvOut,s2Step57HeadGvOut⟩
def s2Step57FrontOut : WindowBank := ⟨s2Step57ExitFOut,s2Step57ExitGOut,s2Step57ExitFvOut,s2Step57ExitGvOut⟩
def s2Step57FrontSigmaArena : Arena := ⟨s2Step57EntryGvAfter.live∪{815},Finset.union_subset s2Step57EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step57Front_sigma : s2Step57EntryGvAfter.checkBorrow 1 [815]=some s2Step57FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step57EntryGvAfter,s2Step57EntryGAfter,arenaWires]
  · rfl
theorem s2Step57Front_branch : s2Step57FrontSigmaArena.checkBorrow 1 [817]=some s2Step57HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step57FrontSigmaArena,s2Step57EntryGvAfter,s2Step57EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step57FrontSigmaArena,s2Step57EntryGvAfter,s2Step57EntryGAfter,s2Step57HeadGBefore,s2Step56HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step57Front_entry : HmrFrontEntryValid s2Step57EntryFBefore s2Step57FrontBank 240 41 ⟨239,238,41,41⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step57FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step57EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step57EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step57FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step57FrontPlan : HmrSourceFront := ⟨s2Step57EntryGvAfter,s2Step57FrontPair,(growRow 768 s2Step57EntryFFresh ++ (growRow 769 s2Step57EntryGFresh ++ (growRow 770 s2Step57EntryFvFresh ++ (growRow 771 s2Step57EntryGvFresh ++ [])))),s2Step57FrontSigmaArena,[815],s2Step57HeadGBefore,[817],
  s2Step57HeadFvAfter,s2Step57FrontHead,(growRow 769 s2Step57HeadGFresh ++ (growRow 768 s2Step57HeadFFresh ++ (growRow 771 s2Step57HeadGvFresh ++ (growRow 770 s2Step57HeadFvFresh ++ [])))),s2Step57F4Plan,s2Step57CounterDuring,s2Step57CounterWork,s2Step57ExitGvAfter,s2Step57FrontOut,(shrinkRow 769 s2Step57ExitGExtra ++ (shrinkRow 768 s2Step57ExitFExtra ++ (shrinkRow 770 s2Step57ExitFvExtra ++ (shrinkRow 771 s2Step57ExitGvExtra ++ []))))⟩
theorem s2Step57Front_checked : compileHmrSourceFrontLog s2Step57EntryFBefore s2Step57FrontBank 240 41 ⟨239,238,41,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step57FrontLog=some s2Step57FrontPlan := by
  have pairEq : s2Step57FrontPair=⟨s2Step57HeadFRow,s2Step57HeadGRow,s2Step57HeadFvRow,s2Step57HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step57FrontHead=⟨s2Step57ExitFRow,s2Step57ExitGRow,s2Step57ExitFvRow,s2Step57ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step57Add0A=s2Step57FrontHead.f.wires := by decide +kernel
  have gEq : s2Step57Add0B=s2Step57FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step57Add1A=s2Step57FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step57Add1B=s2Step57FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step57EntryFBefore s2Step57FrontBank 240 41 ⟨239,238,41,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step57FrontLog s2Step57FrontPlan
  · exact s2Step57Front_entry
  · exact s2Step57EntryBank_checked
  · exact s2Step57Front_sigma
  · rfl
  · exact s2Step57Front_branch
  · rfl
  · simpa only [s2Step57FrontPlan,pairEq] using s2Step57HeadBank_checked
  · simpa only [s2Step57FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step57F4_checked
  · exact s2Step57Counter_checked
  · rfl
  · simpa only [s2Step57FrontPlan,headEq] using s2Step57ExitBank_checked
def s2Step58FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [817], [], []],[[820], [790], [792], [808]],[[], [], [], []]⟩,[815],[816],[814],[800],[807, 812, 844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[807, 812, 844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900],[814, 800, 807, 812]⟩
def s2Step58FrontBank : WindowBank := ⟨s2Step58EntryFRow,s2Step58EntryGRow,s2Step58EntryFvRow,s2Step58EntryGvRow⟩
def s2Step58FrontPair : WindowBank := ⟨s2Step58EntryFOut,s2Step58EntryGOut,s2Step58EntryFvOut,s2Step58EntryGvOut⟩
def s2Step58FrontHead : WindowBank := ⟨s2Step58HeadFOut,s2Step58HeadGOut,s2Step58HeadFvOut,s2Step58HeadGvOut⟩
def s2Step58FrontOut : WindowBank := ⟨s2Step58ExitFOut,s2Step58ExitGOut,s2Step58ExitFvOut,s2Step58ExitGvOut⟩
def s2Step58FrontSigmaArena : Arena := ⟨s2Step58EntryGvAfter.live∪{815},Finset.union_subset s2Step58EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step58Front_sigma : s2Step58EntryGvAfter.checkBorrow 1 [815]=some s2Step58FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step58EntryGvAfter,s2Step58EntryGAfter,arenaWires]
  · rfl
theorem s2Step58Front_branch : s2Step58FrontSigmaArena.checkBorrow 1 [816]=some s2Step58HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step58FrontSigmaArena,s2Step58EntryGvAfter,s2Step58EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step58FrontSigmaArena,s2Step58EntryGvAfter,s2Step58EntryGAfter,s2Step58HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step58Front_entry : HmrFrontEntryValid s2Step58EntryFBefore s2Step58FrontBank 239 41 ⟨239,238,42,41⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step58FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step58EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step58EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step58FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step58FrontPlan : HmrSourceFront := ⟨s2Step58EntryGvAfter,s2Step58FrontPair,(growRow 768 s2Step58EntryFFresh ++ (growRow 769 s2Step58EntryGFresh ++ (growRow 770 s2Step58EntryFvFresh ++ (growRow 771 s2Step58EntryGvFresh ++ [])))),s2Step58FrontSigmaArena,[815],s2Step58HeadGBefore,[816],
  s2Step58HeadFvAfter,s2Step58FrontHead,(growRow 769 s2Step58HeadGFresh ++ (growRow 768 s2Step58HeadFFresh ++ (growRow 771 s2Step58HeadGvFresh ++ (growRow 770 s2Step58HeadFvFresh ++ [])))),s2Step58F4Plan,s2Step58CounterDuring,s2Step58CounterWork,s2Step58ExitGvAfter,s2Step58FrontOut,(shrinkRow 769 s2Step58ExitGExtra ++ (shrinkRow 768 s2Step58ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step58ExitGvExtra ++ []))))⟩
theorem s2Step58Front_checked : compileHmrSourceFrontLog s2Step58EntryFBefore s2Step58FrontBank 239 41 ⟨239,238,42,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step58FrontLog=some s2Step58FrontPlan := by
  have pairEq : s2Step58FrontPair=⟨s2Step58HeadFRow,s2Step58HeadGRow,s2Step58HeadFvRow,s2Step58HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step58FrontHead=⟨s2Step58ExitFRow,s2Step58ExitGRow,s2Step58ExitFvRow,s2Step58ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step58Add0A=s2Step58FrontHead.f.wires := by decide +kernel
  have gEq : s2Step58Add0B=s2Step58FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step58Add1A=s2Step58FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step58Add1B=s2Step58FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step58EntryFBefore s2Step58FrontBank 239 41 ⟨239,238,42,41⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step58FrontLog s2Step58FrontPlan
  · exact s2Step58Front_entry
  · exact s2Step58EntryBank_checked
  · exact s2Step58Front_sigma
  · rfl
  · exact s2Step58Front_branch
  · rfl
  · simpa only [s2Step58FrontPlan,pairEq] using s2Step58HeadBank_checked
  · simpa only [s2Step58FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step58F4_checked
  · exact s2Step58Counter_checked
  · rfl
  · simpa only [s2Step58FrontPlan,headEq] using s2Step58ExitBank_checked
def s2Step59FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [816], [], [815]],[[817], [820], [814], [800]],[[], [], [], []]⟩,[792],[790],[807],[812],[844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903],[807, 812, 844, 845]⟩
def s2Step59FrontBank : WindowBank := ⟨s2Step59EntryFRow,s2Step59EntryGRow,s2Step59EntryFvRow,s2Step59EntryGvRow⟩
def s2Step59FrontPair : WindowBank := ⟨s2Step59EntryFOut,s2Step59EntryGOut,s2Step59EntryFvOut,s2Step59EntryGvOut⟩
def s2Step59FrontHead : WindowBank := ⟨s2Step59HeadFOut,s2Step59HeadGOut,s2Step59HeadFvOut,s2Step59HeadGvOut⟩
def s2Step59FrontOut : WindowBank := ⟨s2Step59ExitFOut,s2Step59ExitGOut,s2Step59ExitFvOut,s2Step59ExitGvOut⟩
def s2Step59FrontSigmaArena : Arena := ⟨s2Step59EntryGvAfter.live∪{792},Finset.union_subset s2Step59EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step59Front_sigma : s2Step59EntryGvAfter.checkBorrow 1 [792]=some s2Step59FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step59EntryGvAfter,arenaWires]
  · rfl
theorem s2Step59Front_branch : s2Step59FrontSigmaArena.checkBorrow 1 [790]=some s2Step59HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step59FrontSigmaArena,s2Step59EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step59FrontSigmaArena,s2Step59EntryGvAfter,s2Step59HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step59Front_entry : HmrFrontEntryValid s2Step59EntryFBefore s2Step59FrontBank 239 42 ⟨239,238,43,42⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step59FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step59EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step59EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step59FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step59FrontPlan : HmrSourceFront := ⟨s2Step59EntryGvAfter,s2Step59FrontPair,(growRow 768 s2Step59EntryFFresh ++ (growRow 769 s2Step59EntryGFresh ++ (growRow 770 s2Step59EntryFvFresh ++ (growRow 771 s2Step59EntryGvFresh ++ [])))),s2Step59FrontSigmaArena,[792],s2Step59HeadGBefore,[790],
  s2Step59HeadFvAfter,s2Step59FrontHead,(growRow 769 s2Step59HeadGFresh ++ (growRow 768 s2Step59HeadFFresh ++ (growRow 771 s2Step59HeadGvFresh ++ (growRow 770 s2Step59HeadFvFresh ++ [])))),s2Step59F4Plan,s2Step59CounterDuring,s2Step59CounterWork,s2Step59ExitGvAfter,s2Step59FrontOut,(shrinkRow 769 s2Step59ExitGExtra ++ (shrinkRow 768 s2Step59ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step59ExitGvExtra ++ []))))⟩
theorem s2Step59Front_checked : compileHmrSourceFrontLog s2Step59EntryFBefore s2Step59FrontBank 239 42 ⟨239,238,43,42⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step59FrontLog=some s2Step59FrontPlan := by
  have pairEq : s2Step59FrontPair=⟨s2Step59HeadFRow,s2Step59HeadGRow,s2Step59HeadFvRow,s2Step59HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step59FrontHead=⟨s2Step59ExitFRow,s2Step59ExitGRow,s2Step59ExitFvRow,s2Step59ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step59Add0A=s2Step59FrontHead.f.wires := by decide +kernel
  have gEq : s2Step59Add0B=s2Step59FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step59Add1A=s2Step59FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step59Add1B=s2Step59FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step59EntryFBefore s2Step59FrontBank 239 42 ⟨239,238,43,42⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step59FrontLog s2Step59FrontPlan
  · exact s2Step59Front_entry
  · exact s2Step59EntryBank_checked
  · exact s2Step59Front_sigma
  · rfl
  · exact s2Step59Front_branch
  · rfl
  · simpa only [s2Step59FrontPlan,pairEq] using s2Step59HeadBank_checked
  · simpa only [s2Step59FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step59F4_checked
  · exact s2Step59Counter_checked
  · rfl
  · simpa only [s2Step59FrontPlan,headEq] using s2Step59ExitBank_checked
def s2Step60FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [790], [], [792]],[[816], [817], [807], [812]],[[], [], [], []]⟩,[814],[820],[844],[845],[846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906],[844, 845, 846, 847]⟩
def s2Step60FrontBank : WindowBank := ⟨s2Step60EntryFRow,s2Step60EntryGRow,s2Step60EntryFvRow,s2Step60EntryGvRow⟩
def s2Step60FrontPair : WindowBank := ⟨s2Step60EntryFOut,s2Step60EntryGOut,s2Step60EntryFvOut,s2Step60EntryGvOut⟩
def s2Step60FrontHead : WindowBank := ⟨s2Step60HeadFOut,s2Step60HeadGOut,s2Step60HeadFvOut,s2Step60HeadGvOut⟩
def s2Step60FrontOut : WindowBank := ⟨s2Step60ExitFOut,s2Step60ExitGOut,s2Step60ExitFvOut,s2Step60ExitGvOut⟩
def s2Step60FrontSigmaArena : Arena := ⟨s2Step60EntryGvAfter.live∪{814},Finset.union_subset s2Step60EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step60Front_sigma : s2Step60EntryGvAfter.checkBorrow 1 [814]=some s2Step60FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step60EntryGvAfter,arenaWires]
  · rfl
theorem s2Step60Front_branch : s2Step60FrontSigmaArena.checkBorrow 1 [820]=some s2Step60HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step60FrontSigmaArena,s2Step60EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step60FrontSigmaArena,s2Step60EntryGvAfter,s2Step60HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step60Front_entry : HmrFrontEntryValid s2Step60EntryFBefore s2Step60FrontBank 239 43 ⟨239,237,44,43⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step60FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step60EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step60EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step60FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step60FrontPlan : HmrSourceFront := ⟨s2Step60EntryGvAfter,s2Step60FrontPair,(growRow 768 s2Step60EntryFFresh ++ (growRow 769 s2Step60EntryGFresh ++ (growRow 770 s2Step60EntryFvFresh ++ (growRow 771 s2Step60EntryGvFresh ++ [])))),s2Step60FrontSigmaArena,[814],s2Step60HeadGBefore,[820],
  s2Step60HeadFvAfter,s2Step60FrontHead,(growRow 769 s2Step60HeadGFresh ++ (growRow 768 s2Step60HeadFFresh ++ (growRow 771 s2Step60HeadGvFresh ++ (growRow 770 s2Step60HeadFvFresh ++ [])))),s2Step60F4Plan,s2Step60CounterDuring,s2Step60CounterWork,s2Step60ExitGvAfter,s2Step60FrontOut,(shrinkRow 769 s2Step60ExitGExtra ++ (shrinkRow 768 s2Step60ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step60ExitGvExtra ++ []))))⟩
theorem s2Step60Front_checked : compileHmrSourceFrontLog s2Step60EntryFBefore s2Step60FrontBank 239 43 ⟨239,237,44,43⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step60FrontLog=some s2Step60FrontPlan := by
  have pairEq : s2Step60FrontPair=⟨s2Step60HeadFRow,s2Step60HeadGRow,s2Step60HeadFvRow,s2Step60HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step60FrontHead=⟨s2Step60ExitFRow,s2Step60ExitGRow,s2Step60ExitFvRow,s2Step60ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step60Add0A=s2Step60FrontHead.f.wires := by decide +kernel
  have gEq : s2Step60Add0B=s2Step60FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step60Add1A=s2Step60FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step60Add1B=s2Step60FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step60EntryFBefore s2Step60FrontBank 239 43 ⟨239,237,44,43⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step60FrontLog s2Step60FrontPlan
  · exact s2Step60Front_entry
  · exact s2Step60EntryBank_checked
  · exact s2Step60Front_sigma
  · rfl
  · exact s2Step60Front_branch
  · rfl
  · simpa only [s2Step60FrontPlan,pairEq] using s2Step60HeadBank_checked
  · simpa only [s2Step60FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step60F4_checked
  · exact s2Step60Counter_checked
  · rfl
  · simpa only [s2Step60FrontPlan,headEq] using s2Step60ExitBank_checked
def s2Step61FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [820, 814], [], [822]],[[790], [816], [844], [845]],[[], [], [], []]⟩,[807],[817],[846],[847],[849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909],[846, 847, 849, 851]⟩
def s2Step61FrontBank : WindowBank := ⟨s2Step61EntryFRow,s2Step61EntryGRow,s2Step61EntryFvRow,s2Step61EntryGvRow⟩
def s2Step61FrontPair : WindowBank := ⟨s2Step61EntryFOut,s2Step61EntryGOut,s2Step61EntryFvOut,s2Step61EntryGvOut⟩
def s2Step61FrontHead : WindowBank := ⟨s2Step61HeadFOut,s2Step61HeadGOut,s2Step61HeadFvOut,s2Step61HeadGvOut⟩
def s2Step61FrontOut : WindowBank := ⟨s2Step61ExitFOut,s2Step61ExitGOut,s2Step61ExitFvOut,s2Step61ExitGvOut⟩
def s2Step61FrontSigmaArena : Arena := ⟨s2Step61EntryGvAfter.live∪{807},Finset.union_subset s2Step61EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step61Front_sigma : s2Step61EntryGvAfter.checkBorrow 1 [807]=some s2Step61FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step61EntryGvAfter,arenaWires]
  · rfl
theorem s2Step61Front_branch : s2Step61FrontSigmaArena.checkBorrow 1 [817]=some s2Step61HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step61FrontSigmaArena,s2Step61EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step61FrontSigmaArena,s2Step61EntryGvAfter,s2Step61HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step61Front_entry : HmrFrontEntryValid s2Step61EntryFBefore s2Step61FrontBank 239 44 ⟨238,237,44,43⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step61FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step61EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step61EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step61FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step61FrontPlan : HmrSourceFront := ⟨s2Step61EntryGvAfter,s2Step61FrontPair,(growRow 768 s2Step61EntryFFresh ++ (growRow 769 s2Step61EntryGFresh ++ (growRow 770 s2Step61EntryFvFresh ++ (growRow 771 s2Step61EntryGvFresh ++ [])))),s2Step61FrontSigmaArena,[807],s2Step61HeadGBefore,[817],
  s2Step61HeadFvAfter,s2Step61FrontHead,(growRow 769 s2Step61HeadGFresh ++ (growRow 768 s2Step61HeadFFresh ++ (growRow 771 s2Step61HeadGvFresh ++ (growRow 770 s2Step61HeadFvFresh ++ [])))),s2Step61F4Plan,s2Step61CounterDuring,s2Step61CounterWork,s2Step61ExitGvAfter,s2Step61FrontOut,(shrinkRow 769 s2Step61ExitGExtra ++ (shrinkRow 768 s2Step61ExitFExtra ++ (shrinkRow 770 s2Step61ExitFvExtra ++ (shrinkRow 771 s2Step61ExitGvExtra ++ []))))⟩
theorem s2Step61Front_checked : compileHmrSourceFrontLog s2Step61EntryFBefore s2Step61FrontBank 239 44 ⟨238,237,44,43⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step61FrontLog=some s2Step61FrontPlan := by
  have pairEq : s2Step61FrontPair=⟨s2Step61HeadFRow,s2Step61HeadGRow,s2Step61HeadFvRow,s2Step61HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step61FrontHead=⟨s2Step61ExitFRow,s2Step61ExitGRow,s2Step61ExitFvRow,s2Step61ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step61Add0A=s2Step61FrontHead.f.wires := by decide +kernel
  have gEq : s2Step61Add0B=s2Step61FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step61Add1A=s2Step61FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step61Add1B=s2Step61FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step61EntryFBefore s2Step61FrontBank 239 44 ⟨238,237,44,43⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step61FrontLog s2Step61FrontPlan
  · exact s2Step61Front_entry
  · exact s2Step61EntryBank_checked
  · exact s2Step61Front_sigma
  · rfl
  · exact s2Step61Front_branch
  · rfl
  · simpa only [s2Step61FrontPlan,pairEq] using s2Step61HeadBank_checked
  · simpa only [s2Step61FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step61F4_checked
  · exact s2Step61Counter_checked
  · rfl
  · simpa only [s2Step61FrontPlan,headEq] using s2Step61ExitBank_checked
def s2Step62FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [817], [], [807]],[[844], [845], [816], [820]],[[], [], [], []]⟩,[819],[822],[814],[790],[846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907],[814, 790, 846, 847]⟩
def s2Step62FrontBank : WindowBank := ⟨s2Step62EntryFRow,s2Step62EntryGRow,s2Step62EntryFvRow,s2Step62EntryGvRow⟩
def s2Step62FrontPair : WindowBank := ⟨s2Step62EntryFOut,s2Step62EntryGOut,s2Step62EntryFvOut,s2Step62EntryGvOut⟩
def s2Step62FrontHead : WindowBank := ⟨s2Step62HeadFOut,s2Step62HeadGOut,s2Step62HeadFvOut,s2Step62HeadGvOut⟩
def s2Step62FrontOut : WindowBank := ⟨s2Step62ExitFOut,s2Step62ExitGOut,s2Step62ExitFvOut,s2Step62ExitGvOut⟩
def s2Step62FrontSigmaArena : Arena := ⟨s2Step62EntryGvAfter.live∪{819},Finset.union_subset s2Step62EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step62Front_sigma : s2Step62EntryGvAfter.checkBorrow 1 [819]=some s2Step62FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step62EntryGvAfter,arenaWires]
  · rfl
theorem s2Step62Front_branch : s2Step62FrontSigmaArena.checkBorrow 1 [822]=some s2Step62HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step62FrontSigmaArena,s2Step62EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step62FrontSigmaArena,s2Step62EntryGvAfter,s2Step62HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step62Front_entry : HmrFrontEntryValid s2Step62EntryFBefore s2Step62FrontBank 238 44 ⟨237,237,45,44⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step62FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step62EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step62EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step62FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step62FrontPlan : HmrSourceFront := ⟨s2Step62EntryGvAfter,s2Step62FrontPair,(growRow 768 s2Step62EntryFFresh ++ (growRow 769 s2Step62EntryGFresh ++ (growRow 770 s2Step62EntryFvFresh ++ (growRow 771 s2Step62EntryGvFresh ++ [])))),s2Step62FrontSigmaArena,[819],s2Step62HeadGBefore,[822],
  s2Step62HeadFvAfter,s2Step62FrontHead,(growRow 769 s2Step62HeadGFresh ++ (growRow 768 s2Step62HeadFFresh ++ (growRow 771 s2Step62HeadGvFresh ++ (growRow 770 s2Step62HeadFvFresh ++ [])))),s2Step62F4Plan,s2Step62CounterDuring,s2Step62CounterWork,s2Step62ExitGvAfter,s2Step62FrontOut,(shrinkRow 769 s2Step62ExitGExtra ++ (shrinkRow 768 s2Step62ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step62ExitGvExtra ++ []))))⟩
theorem s2Step62Front_checked : compileHmrSourceFrontLog s2Step62EntryFBefore s2Step62FrontBank 238 44 ⟨237,237,45,44⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step62FrontLog=some s2Step62FrontPlan := by
  have pairEq : s2Step62FrontPair=⟨s2Step62HeadFRow,s2Step62HeadGRow,s2Step62HeadFvRow,s2Step62HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step62FrontHead=⟨s2Step62ExitFRow,s2Step62ExitGRow,s2Step62ExitFvRow,s2Step62ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step62Add0A=s2Step62FrontHead.f.wires := by decide +kernel
  have gEq : s2Step62Add0B=s2Step62FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step62Add1A=s2Step62FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step62Add1B=s2Step62FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step62EntryFBefore s2Step62FrontBank 238 44 ⟨237,237,45,44⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step62FrontLog s2Step62FrontPlan
  · exact s2Step62Front_entry
  · exact s2Step62EntryBank_checked
  · exact s2Step62Front_sigma
  · rfl
  · exact s2Step62Front_branch
  · rfl
  · simpa only [s2Step62FrontPlan,pairEq] using s2Step62HeadBank_checked
  · simpa only [s2Step62FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step62F4_checked
  · exact s2Step62Counter_checked
  · rfl
  · simpa only [s2Step62FrontPlan,headEq] using s2Step62ExitBank_checked
def s2Step63FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [822]],[[816], [845], [817], [844]],[[], [], [], []]⟩,[819],[821],[814],[790],[846, 847, 849, 851, 867, 868, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 868, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909],[814, 790, 846, 847]⟩
def s2Step63FrontBank : WindowBank := ⟨s2Step63EntryFRow,s2Step63EntryGRow,s2Step63EntryFvRow,s2Step63EntryGvRow⟩
def s2Step63FrontPair : WindowBank := ⟨s2Step63EntryFOut,s2Step63EntryGOut,s2Step63EntryFvOut,s2Step63EntryGvOut⟩
def s2Step63FrontHead : WindowBank := ⟨s2Step63HeadFOut,s2Step63HeadGOut,s2Step63HeadFvOut,s2Step63HeadGvOut⟩
def s2Step63FrontOut : WindowBank := ⟨s2Step63ExitFOut,s2Step63ExitGOut,s2Step63ExitFvOut,s2Step63ExitGvOut⟩
def s2Step63FrontSigmaArena : Arena := ⟨s2Step63EntryGvAfter.live∪{819},Finset.union_subset s2Step63EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step63Front_sigma : s2Step63EntryGvAfter.checkBorrow 1 [819]=some s2Step63FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step63EntryGvAfter,arenaWires]
  · rfl
theorem s2Step63Front_branch : s2Step63FrontSigmaArena.checkBorrow 1 [821]=some s2Step63HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step63FrontSigmaArena,s2Step63EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step63FrontSigmaArena,s2Step63EntryGvAfter,s2Step63HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s2Step63Front_entry : HmrFrontEntryValid s2Step63EntryFBefore s2Step63FrontBank 237 45 ⟨237,237,46,44⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step63FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step63EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step63EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step63FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s2Step63FrontPlan : HmrSourceFront := ⟨s2Step63EntryGvAfter,s2Step63FrontPair,(growRow 768 s2Step63EntryFFresh ++ (growRow 769 s2Step63EntryGFresh ++ (growRow 770 s2Step63EntryFvFresh ++ (growRow 771 s2Step63EntryGvFresh ++ [])))),s2Step63FrontSigmaArena,[819],s2Step63HeadGBefore,[821],
  s2Step63HeadFvAfter,s2Step63FrontHead,(growRow 769 s2Step63HeadGFresh ++ (growRow 768 s2Step63HeadFFresh ++ (growRow 771 s2Step63HeadGvFresh ++ (growRow 770 s2Step63HeadFvFresh ++ [])))),s2Step63F4Plan,s2Step63CounterDuring,s2Step63CounterWork,s2Step63ExitGvAfter,s2Step63FrontOut,(shrinkRow 769 s2Step63ExitGExtra ++ (shrinkRow 768 s2Step63ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step63ExitGvExtra ++ []))))⟩
theorem s2Step63Front_checked : compileHmrSourceFrontLog s2Step63EntryFBefore s2Step63FrontBank 237 45 ⟨237,237,46,44⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step63FrontLog=some s2Step63FrontPlan := by
  have pairEq : s2Step63FrontPair=⟨s2Step63HeadFRow,s2Step63HeadGRow,s2Step63HeadFvRow,s2Step63HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step63FrontHead=⟨s2Step63ExitFRow,s2Step63ExitGRow,s2Step63ExitFvRow,s2Step63ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step63Add0A=s2Step63FrontHead.f.wires := by decide +kernel
  have gEq : s2Step63Add0B=s2Step63FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step63Add1A=s2Step63FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step63Add1B=s2Step63FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step63EntryFBefore s2Step63FrontBank 237 45 ⟨237,237,46,44⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step63FrontLog s2Step63FrontPlan
  · exact s2Step63Front_entry
  · exact s2Step63EntryBank_checked
  · exact s2Step63Front_sigma
  · rfl
  · exact s2Step63Front_branch
  · rfl
  · simpa only [s2Step63FrontPlan,pairEq] using s2Step63HeadBank_checked
  · simpa only [s2Step63FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step63F4_checked
  · exact s2Step63Counter_checked
  · rfl
  · simpa only [s2Step63FrontPlan,headEq] using s2Step63ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
