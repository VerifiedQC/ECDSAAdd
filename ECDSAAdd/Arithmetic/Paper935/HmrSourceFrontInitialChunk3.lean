import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
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
def s6Step16FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [822, 887]],[[862], [860], [888], [886]],[[], [], [], []]⟩,[780],[813],[778],[838],[814, 821, 869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[814, 821, 869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786],[778, 838, 814, 821]⟩
def s6Step16FrontBank : WindowBank := ⟨s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow⟩
def s6Step16FrontPair : WindowBank := ⟨s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut⟩
def s6Step16FrontHead : WindowBank := ⟨s6Step16HeadFOut,s6Step16HeadGOut,s6Step16HeadFvOut,s6Step16HeadGvOut⟩
def s6Step16FrontOut : WindowBank := ⟨s6Step16ExitFOut,s6Step16ExitGOut,s6Step16ExitFvOut,s6Step16ExitGvOut⟩
def s6Step16FrontSigmaArena : Arena := ⟨s6Step16EntryGvAfter.live∪{780},Finset.union_subset s6Step16EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step16Front_sigma : s6Step16EntryGvAfter.checkBorrow 1 [780]=some s6Step16FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step16EntryGvAfter,arenaWires]
  · rfl
theorem s6Step16Front_branch : s6Step16FrontSigmaArena.checkBorrow 1 [813]=some s6Step16HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step16FrontSigmaArena,s6Step16EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step16FrontSigmaArena,s6Step16EntryGvAfter,s6Step16HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step16Front_entry : HmrFrontEntryValid s6Step16EntryFBefore s6Step16FrontBank 256 17 ⟨256,255,18,16⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step16FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step16EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step16EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step16FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step16FrontPlan : HmrSourceFront := ⟨s6Step16EntryGvAfter,s6Step16FrontPair,(growRow 795 s6Step16EntryFFresh ++ (growRow 777 s6Step16EntryGFresh ++ (growRow 776 s6Step16EntryFvFresh ++ (growRow 775 s6Step16EntryGvFresh ++ [])))),s6Step16FrontSigmaArena,[780],s6Step16HeadGBefore,[813],
  s6Step16HeadFvAfter,s6Step16FrontHead,(growRow 777 s6Step16HeadGFresh ++ (growRow 795 s6Step16HeadFFresh ++ (growRow 775 s6Step16HeadGvFresh ++ (growRow 776 s6Step16HeadFvFresh ++ [])))),s6Step16F4Plan,s6Step16CounterDuring,s6Step16CounterWork,s6Step16ExitGvAfter,s6Step16FrontOut,(shrinkRow 777 s6Step16ExitGExtra ++ (shrinkRow 795 s6Step16ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step16ExitGvExtra ++ []))))⟩
theorem s6Step16Front_checked : compileHmrSourceFrontLog s6Step16EntryFBefore s6Step16FrontBank 256 17 ⟨256,255,18,16⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step16FrontLog=some s6Step16FrontPlan := by
  have pairEq : s6Step16FrontPair=⟨s6Step16HeadFRow,s6Step16HeadGRow,s6Step16HeadFvRow,s6Step16HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step16FrontHead=⟨s6Step16ExitFRow,s6Step16ExitGRow,s6Step16ExitFvRow,s6Step16ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step16Add0A=s6Step16FrontHead.f.wires := by decide +kernel
  have gEq : s6Step16Add0B=s6Step16FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step16Add1A=s6Step16FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step16Add1B=s6Step16FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step16EntryFBefore s6Step16FrontBank 256 17 ⟨256,255,18,16⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step16FrontLog s6Step16FrontPlan
  · exact s6Step16Front_entry
  · exact s6Step16EntryBank_checked
  · exact s6Step16Front_sigma
  · rfl
  · exact s6Step16Front_branch
  · rfl
  · simpa only [s6Step16FrontPlan,pairEq] using s6Step16HeadBank_checked
  · simpa only [s6Step16FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step16F4_checked
  · exact s6Step16Counter_checked
  · rfl
  · simpa only [s6Step16FrontPlan,headEq] using s6Step16ExitBank_checked
def s6Step17FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [780, 887]],[[807], [862], [778], [838]],[[], [], [], []]⟩,[888],[860],[814],[821],[869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855],[814, 821, 869, 843]⟩
def s6Step17FrontBank : WindowBank := ⟨s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow⟩
def s6Step17FrontPair : WindowBank := ⟨s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut⟩
def s6Step17FrontHead : WindowBank := ⟨s6Step17HeadFOut,s6Step17HeadGOut,s6Step17HeadFvOut,s6Step17HeadGvOut⟩
def s6Step17FrontOut : WindowBank := ⟨s6Step17ExitFOut,s6Step17ExitGOut,s6Step17ExitFvOut,s6Step17ExitGvOut⟩
def s6Step17FrontSigmaArena : Arena := ⟨s6Step17EntryGvAfter.live∪{888},Finset.union_subset s6Step17EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step17Front_sigma : s6Step17EntryGvAfter.checkBorrow 1 [888]=some s6Step17FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step17EntryGvAfter,arenaWires]
  · rfl
theorem s6Step17Front_branch : s6Step17FrontSigmaArena.checkBorrow 1 [860]=some s6Step17HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step17FrontSigmaArena,s6Step17EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step17FrontSigmaArena,s6Step17EntryGvAfter,s6Step17HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step17Front_entry : HmrFrontEntryValid s6Step17EntryFBefore s6Step17FrontBank 256 18 ⟨256,255,19,17⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step17FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step17EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step17EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step17FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step17FrontPlan : HmrSourceFront := ⟨s6Step17EntryGvAfter,s6Step17FrontPair,(growRow 795 s6Step17EntryFFresh ++ (growRow 777 s6Step17EntryGFresh ++ (growRow 776 s6Step17EntryFvFresh ++ (growRow 775 s6Step17EntryGvFresh ++ [])))),s6Step17FrontSigmaArena,[888],s6Step17HeadGBefore,[860],
  s6Step17HeadFvAfter,s6Step17FrontHead,(growRow 777 s6Step17HeadGFresh ++ (growRow 795 s6Step17HeadFFresh ++ (growRow 775 s6Step17HeadGvFresh ++ (growRow 776 s6Step17HeadFvFresh ++ [])))),s6Step17F4Plan,s6Step17CounterDuring,s6Step17CounterWork,s6Step17ExitGvAfter,s6Step17FrontOut,(shrinkRow 777 s6Step17ExitGExtra ++ (shrinkRow 795 s6Step17ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step17ExitGvExtra ++ []))))⟩
theorem s6Step17Front_checked : compileHmrSourceFrontLog s6Step17EntryFBefore s6Step17FrontBank 256 18 ⟨256,255,19,17⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step17FrontLog=some s6Step17FrontPlan := by
  have pairEq : s6Step17FrontPair=⟨s6Step17HeadFRow,s6Step17HeadGRow,s6Step17HeadFvRow,s6Step17HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step17FrontHead=⟨s6Step17ExitFRow,s6Step17ExitGRow,s6Step17ExitFvRow,s6Step17ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step17Add0A=s6Step17FrontHead.f.wires := by decide +kernel
  have gEq : s6Step17Add0B=s6Step17FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step17Add1A=s6Step17FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step17Add1B=s6Step17FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step17EntryFBefore s6Step17FrontBank 256 18 ⟨256,255,19,17⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step17FrontLog s6Step17FrontPlan
  · exact s6Step17Front_entry
  · exact s6Step17EntryBank_checked
  · exact s6Step17Front_sigma
  · rfl
  · exact s6Step17Front_branch
  · rfl
  · simpa only [s6Step17FrontPlan,pairEq] using s6Step17HeadBank_checked
  · simpa only [s6Step17FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step17F4_checked
  · exact s6Step17Counter_checked
  · rfl
  · simpa only [s6Step17FrontPlan,headEq] using s6Step17ExitBank_checked
def s6Step18FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], [888, 887]],[[813], [807], [814], [821]],[[], [], [], []]⟩,[778],[862],[869],[843],[854, 830, 898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[854, 830, 898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879],[869, 843, 854, 830]⟩
def s6Step18FrontBank : WindowBank := ⟨s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow⟩
def s6Step18FrontPair : WindowBank := ⟨s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut⟩
def s6Step18FrontHead : WindowBank := ⟨s6Step18HeadFOut,s6Step18HeadGOut,s6Step18HeadFvOut,s6Step18HeadGvOut⟩
def s6Step18FrontOut : WindowBank := ⟨s6Step18ExitFOut,s6Step18ExitGOut,s6Step18ExitFvOut,s6Step18ExitGvOut⟩
def s6Step18FrontSigmaArena : Arena := ⟨s6Step18EntryGvAfter.live∪{778},Finset.union_subset s6Step18EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step18Front_sigma : s6Step18EntryGvAfter.checkBorrow 1 [778]=some s6Step18FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step18EntryGvAfter,arenaWires]
  · rfl
theorem s6Step18Front_branch : s6Step18FrontSigmaArena.checkBorrow 1 [862]=some s6Step18HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step18FrontSigmaArena,s6Step18EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step18FrontSigmaArena,s6Step18EntryGvAfter,s6Step18HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step18Front_entry : HmrFrontEntryValid s6Step18EntryFBefore s6Step18FrontBank 256 19 ⟨256,255,20,18⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step18FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step18EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step18EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step18FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step18FrontPlan : HmrSourceFront := ⟨s6Step18EntryGvAfter,s6Step18FrontPair,(growRow 795 s6Step18EntryFFresh ++ (growRow 777 s6Step18EntryGFresh ++ (growRow 776 s6Step18EntryFvFresh ++ (growRow 775 s6Step18EntryGvFresh ++ [])))),s6Step18FrontSigmaArena,[778],s6Step18HeadGBefore,[862],
  s6Step18HeadFvAfter,s6Step18FrontHead,(growRow 777 s6Step18HeadGFresh ++ (growRow 795 s6Step18HeadFFresh ++ (growRow 775 s6Step18HeadGvFresh ++ (growRow 776 s6Step18HeadFvFresh ++ [])))),s6Step18F4Plan,s6Step18CounterDuring,s6Step18CounterWork,s6Step18ExitGvAfter,s6Step18FrontOut,(shrinkRow 777 s6Step18ExitGExtra ++ (shrinkRow 795 s6Step18ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step18ExitGvExtra ++ []))))⟩
theorem s6Step18Front_checked : compileHmrSourceFrontLog s6Step18EntryFBefore s6Step18FrontBank 256 19 ⟨256,255,20,18⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step18FrontLog=some s6Step18FrontPlan := by
  have pairEq : s6Step18FrontPair=⟨s6Step18HeadFRow,s6Step18HeadGRow,s6Step18HeadFvRow,s6Step18HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step18FrontHead=⟨s6Step18ExitFRow,s6Step18ExitGRow,s6Step18ExitFvRow,s6Step18ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step18Add0A=s6Step18FrontHead.f.wires := by decide +kernel
  have gEq : s6Step18Add0B=s6Step18FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step18Add1A=s6Step18FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step18Add1B=s6Step18FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step18EntryFBefore s6Step18FrontBank 256 19 ⟨256,255,20,18⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step18FrontLog s6Step18FrontPlan
  · exact s6Step18Front_entry
  · exact s6Step18EntryBank_checked
  · exact s6Step18Front_sigma
  · rfl
  · exact s6Step18Front_branch
  · rfl
  · simpa only [s6Step18FrontPlan,pairEq] using s6Step18HeadBank_checked
  · simpa only [s6Step18FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step18F4_checked
  · exact s6Step18Counter_checked
  · rfl
  · simpa only [s6Step18FrontPlan,headEq] using s6Step18ExitBank_checked
def s6Step19FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], [778, 887]],[[860], [813], [869], [843]],[[], [], [], []]⟩,[814],[807],[854],[830],[898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901],[854, 830, 898, 848]⟩
def s6Step19FrontBank : WindowBank := ⟨s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow⟩
def s6Step19FrontPair : WindowBank := ⟨s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut⟩
def s6Step19FrontHead : WindowBank := ⟨s6Step19HeadFOut,s6Step19HeadGOut,s6Step19HeadFvOut,s6Step19HeadGvOut⟩
def s6Step19FrontOut : WindowBank := ⟨s6Step19ExitFOut,s6Step19ExitGOut,s6Step19ExitFvOut,s6Step19ExitGvOut⟩
def s6Step19FrontSigmaArena : Arena := ⟨s6Step19EntryGvAfter.live∪{814},Finset.union_subset s6Step19EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step19Front_sigma : s6Step19EntryGvAfter.checkBorrow 1 [814]=some s6Step19FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step19EntryGvAfter,arenaWires]
  · rfl
theorem s6Step19Front_branch : s6Step19FrontSigmaArena.checkBorrow 1 [807]=some s6Step19HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step19FrontSigmaArena,s6Step19EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step19FrontSigmaArena,s6Step19EntryGvAfter,s6Step19HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step19Front_entry : HmrFrontEntryValid s6Step19EntryFBefore s6Step19FrontBank 256 20 ⟨256,255,21,19⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step19FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step19EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step19EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step19FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step19FrontPlan : HmrSourceFront := ⟨s6Step19EntryGvAfter,s6Step19FrontPair,(growRow 795 s6Step19EntryFFresh ++ (growRow 777 s6Step19EntryGFresh ++ (growRow 776 s6Step19EntryFvFresh ++ (growRow 775 s6Step19EntryGvFresh ++ [])))),s6Step19FrontSigmaArena,[814],s6Step19HeadGBefore,[807],
  s6Step19HeadFvAfter,s6Step19FrontHead,(growRow 777 s6Step19HeadGFresh ++ (growRow 795 s6Step19HeadFFresh ++ (growRow 775 s6Step19HeadGvFresh ++ (growRow 776 s6Step19HeadFvFresh ++ [])))),s6Step19F4Plan,s6Step19CounterDuring,s6Step19CounterWork,s6Step19ExitGvAfter,s6Step19FrontOut,(shrinkRow 777 s6Step19ExitGExtra ++ (shrinkRow 795 s6Step19ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step19ExitGvExtra ++ []))))⟩
theorem s6Step19Front_checked : compileHmrSourceFrontLog s6Step19EntryFBefore s6Step19FrontBank 256 20 ⟨256,255,21,19⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step19FrontLog=some s6Step19FrontPlan := by
  have pairEq : s6Step19FrontPair=⟨s6Step19HeadFRow,s6Step19HeadGRow,s6Step19HeadFvRow,s6Step19HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step19FrontHead=⟨s6Step19ExitFRow,s6Step19ExitGRow,s6Step19ExitFvRow,s6Step19ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step19Add0A=s6Step19FrontHead.f.wires := by decide +kernel
  have gEq : s6Step19Add0B=s6Step19FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step19Add1A=s6Step19FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step19Add1B=s6Step19FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step19EntryFBefore s6Step19FrontBank 256 20 ⟨256,255,21,19⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step19FrontLog s6Step19FrontPlan
  · exact s6Step19Front_entry
  · exact s6Step19EntryBank_checked
  · exact s6Step19Front_sigma
  · rfl
  · exact s6Step19Front_branch
  · rfl
  · simpa only [s6Step19FrontPlan,pairEq] using s6Step19HeadBank_checked
  · simpa only [s6Step19FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step19F4_checked
  · exact s6Step19Counter_checked
  · rfl
  · simpa only [s6Step19FrontPlan,headEq] using s6Step19ExitBank_checked
def s6Step20FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [814, 887]],[[862], [860], [854], [830]],[[], [], [], []]⟩,[869],[813],[898],[848],[841, 839, 794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[841, 839, 794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861],[898, 848, 841, 839]⟩
def s6Step20FrontBank : WindowBank := ⟨s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow⟩
def s6Step20FrontPair : WindowBank := ⟨s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut⟩
def s6Step20FrontHead : WindowBank := ⟨s6Step20HeadFOut,s6Step20HeadGOut,s6Step20HeadFvOut,s6Step20HeadGvOut⟩
def s6Step20FrontOut : WindowBank := ⟨s6Step20ExitFOut,s6Step20ExitGOut,s6Step20ExitFvOut,s6Step20ExitGvOut⟩
def s6Step20FrontSigmaArena : Arena := ⟨s6Step20EntryGvAfter.live∪{869},Finset.union_subset s6Step20EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step20Front_sigma : s6Step20EntryGvAfter.checkBorrow 1 [869]=some s6Step20FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step20EntryGvAfter,arenaWires]
  · rfl
theorem s6Step20Front_branch : s6Step20FrontSigmaArena.checkBorrow 1 [813]=some s6Step20HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step20FrontSigmaArena,s6Step20EntryGvAfter,arenaWires]
  · change s6Step20HeadGBefore.live=(s6Step20EntryGvAfter.live∪{869})∪{813}
    apply hmrArena_union_pair_of_filter_check s6Step20EntryGvAfter s6Step20HeadGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) 869 813 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step20Front_entry : HmrFrontEntryValid s6Step20EntryFBefore s6Step20FrontBank 256 21 ⟨256,255,22,20⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step20FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step20EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step20EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step20FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step20FrontPlan : HmrSourceFront := ⟨s6Step20EntryGvAfter,s6Step20FrontPair,(growRow 795 s6Step20EntryFFresh ++ (growRow 777 s6Step20EntryGFresh ++ (growRow 776 s6Step20EntryFvFresh ++ (growRow 775 s6Step20EntryGvFresh ++ [])))),s6Step20FrontSigmaArena,[869],s6Step20HeadGBefore,[813],
  s6Step20HeadFvAfter,s6Step20FrontHead,(growRow 777 s6Step20HeadGFresh ++ (growRow 795 s6Step20HeadFFresh ++ (growRow 775 s6Step20HeadGvFresh ++ (growRow 776 s6Step20HeadFvFresh ++ [])))),s6Step20F4Plan,s6Step20CounterDuring,s6Step20CounterWork,s6Step20ExitGvAfter,s6Step20FrontOut,(shrinkRow 777 s6Step20ExitGExtra ++ (shrinkRow 795 s6Step20ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step20ExitGvExtra ++ []))))⟩
theorem s6Step20Front_checked : compileHmrSourceFrontLog s6Step20EntryFBefore s6Step20FrontBank 256 21 ⟨256,255,22,20⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step20FrontLog=some s6Step20FrontPlan := by
  have pairEq : s6Step20FrontPair=⟨s6Step20HeadFRow,s6Step20HeadGRow,s6Step20HeadFvRow,s6Step20HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step20FrontHead=⟨s6Step20ExitFRow,s6Step20ExitGRow,s6Step20ExitFvRow,s6Step20ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step20Add0A=s6Step20FrontHead.f.wires := by decide +kernel
  have gEq : s6Step20Add0B=s6Step20FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step20Add1A=s6Step20FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step20Add1B=s6Step20FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step20EntryFBefore s6Step20FrontBank 256 21 ⟨256,255,22,20⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step20FrontLog s6Step20FrontPlan
  · exact s6Step20Front_entry
  · exact s6Step20EntryBank_checked
  · exact s6Step20Front_sigma
  · rfl
  · exact s6Step20Front_branch
  · rfl
  · simpa only [s6Step20FrontPlan,pairEq] using s6Step20HeadBank_checked
  · simpa only [s6Step20FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step20F4_checked
  · exact s6Step20Counter_checked
  · rfl
  · simpa only [s6Step20FrontPlan,headEq] using s6Step20ExitBank_checked
def s6Step21FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [869, 887]],[[807], [862], [898], [848]],[[], [], [], []]⟩,[854],[860],[841],[839],[794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781],[841, 839, 794, 850]⟩
def s6Step21FrontBank : WindowBank := ⟨s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow⟩
def s6Step21FrontPair : WindowBank := ⟨s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut⟩
def s6Step21FrontHead : WindowBank := ⟨s6Step21HeadFOut,s6Step21HeadGOut,s6Step21HeadFvOut,s6Step21HeadGvOut⟩
def s6Step21FrontOut : WindowBank := ⟨s6Step21ExitFOut,s6Step21ExitGOut,s6Step21ExitFvOut,s6Step21ExitGvOut⟩
def s6Step21FrontSigmaArena : Arena := ⟨s6Step21EntryGvAfter.live∪{854},Finset.union_subset s6Step21EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step21Front_sigma : s6Step21EntryGvAfter.checkBorrow 1 [854]=some s6Step21FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step21EntryGvAfter,arenaWires]
  · rfl
theorem s6Step21Front_branch : s6Step21FrontSigmaArena.checkBorrow 1 [860]=some s6Step21HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step21FrontSigmaArena,s6Step21EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step21FrontSigmaArena,s6Step21EntryGvAfter,s6Step21HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step21Front_entry : HmrFrontEntryValid s6Step21EntryFBefore s6Step21FrontBank 256 22 ⟨256,255,23,21⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step21FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step21EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step21EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step21FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step21FrontPlan : HmrSourceFront := ⟨s6Step21EntryGvAfter,s6Step21FrontPair,(growRow 795 s6Step21EntryFFresh ++ (growRow 777 s6Step21EntryGFresh ++ (growRow 776 s6Step21EntryFvFresh ++ (growRow 775 s6Step21EntryGvFresh ++ [])))),s6Step21FrontSigmaArena,[854],s6Step21HeadGBefore,[860],
  s6Step21HeadFvAfter,s6Step21FrontHead,(growRow 777 s6Step21HeadGFresh ++ (growRow 795 s6Step21HeadFFresh ++ (growRow 775 s6Step21HeadGvFresh ++ (growRow 776 s6Step21HeadFvFresh ++ [])))),s6Step21F4Plan,s6Step21CounterDuring,s6Step21CounterWork,s6Step21ExitGvAfter,s6Step21FrontOut,(shrinkRow 777 s6Step21ExitGExtra ++ (shrinkRow 795 s6Step21ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step21ExitGvExtra ++ []))))⟩
theorem s6Step21Front_checked : compileHmrSourceFrontLog s6Step21EntryFBefore s6Step21FrontBank 256 22 ⟨256,255,23,21⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step21FrontLog=some s6Step21FrontPlan := by
  have pairEq : s6Step21FrontPair=⟨s6Step21HeadFRow,s6Step21HeadGRow,s6Step21HeadFvRow,s6Step21HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step21FrontHead=⟨s6Step21ExitFRow,s6Step21ExitGRow,s6Step21ExitFvRow,s6Step21ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step21Add0A=s6Step21FrontHead.f.wires := by decide +kernel
  have gEq : s6Step21Add0B=s6Step21FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step21Add1A=s6Step21FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step21Add1B=s6Step21FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step21EntryFBefore s6Step21FrontBank 256 22 ⟨256,255,23,21⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step21FrontLog s6Step21FrontPlan
  · exact s6Step21Front_entry
  · exact s6Step21EntryBank_checked
  · exact s6Step21Front_sigma
  · rfl
  · exact s6Step21Front_branch
  · rfl
  · simpa only [s6Step21FrontPlan,pairEq] using s6Step21HeadBank_checked
  · simpa only [s6Step21FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step21F4_checked
  · exact s6Step21Counter_checked
  · rfl
  · simpa only [s6Step21FrontPlan,headEq] using s6Step21ExitBank_checked
def s6Step22FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], [854, 887]],[[813], [807], [841], [839]],[[], [], [], []]⟩,[898],[862],[794],[850],[881, 853, 867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[881, 853, 867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829],[794, 850, 881, 853]⟩
def s6Step22FrontBank : WindowBank := ⟨s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow⟩
def s6Step22FrontPair : WindowBank := ⟨s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut⟩
def s6Step22FrontHead : WindowBank := ⟨s6Step22HeadFOut,s6Step22HeadGOut,s6Step22HeadFvOut,s6Step22HeadGvOut⟩
def s6Step22FrontOut : WindowBank := ⟨s6Step22ExitFOut,s6Step22ExitGOut,s6Step22ExitFvOut,s6Step22ExitGvOut⟩
def s6Step22FrontSigmaArena : Arena := ⟨s6Step22EntryGvAfter.live∪{898},Finset.union_subset s6Step22EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step22Front_sigma : s6Step22EntryGvAfter.checkBorrow 1 [898]=some s6Step22FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step22EntryGvAfter,arenaWires]
  · rfl
theorem s6Step22Front_branch : s6Step22FrontSigmaArena.checkBorrow 1 [862]=some s6Step22HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step22FrontSigmaArena,s6Step22EntryGvAfter,arenaWires]
  · change s6Step22HeadGBefore.live=(s6Step22EntryGvAfter.live∪{898})∪{862}
    apply hmrArena_union_pair_of_filter_check s6Step22EntryGvAfter s6Step22HeadGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 898 862 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step22Front_entry : HmrFrontEntryValid s6Step22EntryFBefore s6Step22FrontBank 256 23 ⟨256,255,24,22⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step22FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step22EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step22EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step22FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step22FrontPlan : HmrSourceFront := ⟨s6Step22EntryGvAfter,s6Step22FrontPair,(growRow 795 s6Step22EntryFFresh ++ (growRow 777 s6Step22EntryGFresh ++ (growRow 776 s6Step22EntryFvFresh ++ (growRow 775 s6Step22EntryGvFresh ++ [])))),s6Step22FrontSigmaArena,[898],s6Step22HeadGBefore,[862],
  s6Step22HeadFvAfter,s6Step22FrontHead,(growRow 777 s6Step22HeadGFresh ++ (growRow 795 s6Step22HeadFFresh ++ (growRow 775 s6Step22HeadGvFresh ++ (growRow 776 s6Step22HeadFvFresh ++ [])))),s6Step22F4Plan,s6Step22CounterDuring,s6Step22CounterWork,s6Step22ExitGvAfter,s6Step22FrontOut,(shrinkRow 777 s6Step22ExitGExtra ++ (shrinkRow 795 s6Step22ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step22ExitGvExtra ++ []))))⟩
theorem s6Step22Front_checked : compileHmrSourceFrontLog s6Step22EntryFBefore s6Step22FrontBank 256 23 ⟨256,255,24,22⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step22FrontLog=some s6Step22FrontPlan := by
  have pairEq : s6Step22FrontPair=⟨s6Step22HeadFRow,s6Step22HeadGRow,s6Step22HeadFvRow,s6Step22HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step22FrontHead=⟨s6Step22ExitFRow,s6Step22ExitGRow,s6Step22ExitFvRow,s6Step22ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step22Add0A=s6Step22FrontHead.f.wires := by decide +kernel
  have gEq : s6Step22Add0B=s6Step22FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step22Add1A=s6Step22FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step22Add1B=s6Step22FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step22EntryFBefore s6Step22FrontBank 256 23 ⟨256,255,24,22⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step22FrontLog s6Step22FrontPlan
  · exact s6Step22Front_entry
  · exact s6Step22EntryBank_checked
  · exact s6Step22Front_sigma
  · rfl
  · exact s6Step22Front_branch
  · rfl
  · simpa only [s6Step22FrontPlan,pairEq] using s6Step22HeadBank_checked
  · simpa only [s6Step22FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step22F4_checked
  · exact s6Step22Counter_checked
  · rfl
  · simpa only [s6Step22FrontPlan,headEq] using s6Step22ExitBank_checked
def s6Step23FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [862], [], [898, 887]],[[860], [813], [794], [850]],[[], [], [], []]⟩,[841],[807],[881],[853],[867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871],[881, 853, 867, 786]⟩
def s6Step23FrontBank : WindowBank := ⟨s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow⟩
def s6Step23FrontPair : WindowBank := ⟨s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut⟩
def s6Step23FrontHead : WindowBank := ⟨s6Step23HeadFOut,s6Step23HeadGOut,s6Step23HeadFvOut,s6Step23HeadGvOut⟩
def s6Step23FrontOut : WindowBank := ⟨s6Step23ExitFOut,s6Step23ExitGOut,s6Step23ExitFvOut,s6Step23ExitGvOut⟩
def s6Step23FrontSigmaArena : Arena := ⟨s6Step23EntryGvAfter.live∪{841},Finset.union_subset s6Step23EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step23Front_sigma : s6Step23EntryGvAfter.checkBorrow 1 [841]=some s6Step23FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step23EntryGvAfter,arenaWires]
  · rfl
theorem s6Step23Front_branch : s6Step23FrontSigmaArena.checkBorrow 1 [807]=some s6Step23HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step23FrontSigmaArena,s6Step23EntryGvAfter,arenaWires]
  · change s6Step23HeadGBefore.live=(s6Step23EntryGvAfter.live∪{841})∪{807}
    apply hmrArena_union_pair_of_filter_check s6Step23EntryGvAfter s6Step23HeadGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 841 807 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step23Front_entry : HmrFrontEntryValid s6Step23EntryFBefore s6Step23FrontBank 256 24 ⟨256,255,25,23⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step23FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step23EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step23EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step23FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step23FrontPlan : HmrSourceFront := ⟨s6Step23EntryGvAfter,s6Step23FrontPair,(growRow 795 s6Step23EntryFFresh ++ (growRow 777 s6Step23EntryGFresh ++ (growRow 776 s6Step23EntryFvFresh ++ (growRow 775 s6Step23EntryGvFresh ++ [])))),s6Step23FrontSigmaArena,[841],s6Step23HeadGBefore,[807],
  s6Step23HeadFvAfter,s6Step23FrontHead,(growRow 777 s6Step23HeadGFresh ++ (growRow 795 s6Step23HeadFFresh ++ (growRow 775 s6Step23HeadGvFresh ++ (growRow 776 s6Step23HeadFvFresh ++ [])))),s6Step23F4Plan,s6Step23CounterDuring,s6Step23CounterWork,s6Step23ExitGvAfter,s6Step23FrontOut,(shrinkRow 777 s6Step23ExitGExtra ++ (shrinkRow 795 s6Step23ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step23ExitGvExtra ++ []))))⟩
theorem s6Step23Front_checked : compileHmrSourceFrontLog s6Step23EntryFBefore s6Step23FrontBank 256 24 ⟨256,255,25,23⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step23FrontLog=some s6Step23FrontPlan := by
  have pairEq : s6Step23FrontPair=⟨s6Step23HeadFRow,s6Step23HeadGRow,s6Step23HeadFvRow,s6Step23HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step23FrontHead=⟨s6Step23ExitFRow,s6Step23ExitGRow,s6Step23ExitFvRow,s6Step23ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step23Add0A=s6Step23FrontHead.f.wires := by decide +kernel
  have gEq : s6Step23Add0B=s6Step23FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step23Add1A=s6Step23FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step23Add1B=s6Step23FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step23EntryFBefore s6Step23FrontBank 256 24 ⟨256,255,25,23⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step23FrontLog s6Step23FrontPlan
  · exact s6Step23Front_entry
  · exact s6Step23EntryBank_checked
  · exact s6Step23Front_sigma
  · rfl
  · exact s6Step23Front_branch
  · rfl
  · simpa only [s6Step23FrontPlan,pairEq] using s6Step23HeadBank_checked
  · simpa only [s6Step23FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step23F4_checked
  · exact s6Step23Counter_checked
  · rfl
  · simpa only [s6Step23FrontPlan,headEq] using s6Step23ExitBank_checked
def s6Step24FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807], [], [841, 887]],[[862], [860], [881], [853]],[[], [], [], []]⟩,[794],[813],[867],[786],[877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806],[867, 786, 877, 855]⟩
def s6Step24FrontBank : WindowBank := ⟨s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow⟩
def s6Step24FrontPair : WindowBank := ⟨s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut⟩
def s6Step24FrontHead : WindowBank := ⟨s6Step24HeadFOut,s6Step24HeadGOut,s6Step24HeadFvOut,s6Step24HeadGvOut⟩
def s6Step24FrontOut : WindowBank := ⟨s6Step24ExitFOut,s6Step24ExitGOut,s6Step24ExitFvOut,s6Step24ExitGvOut⟩
def s6Step24FrontSigmaArena : Arena := ⟨s6Step24EntryGvAfter.live∪{794},Finset.union_subset s6Step24EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step24Front_sigma : s6Step24EntryGvAfter.checkBorrow 1 [794]=some s6Step24FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24EntryGvAfter,arenaWires]
  · rfl
theorem s6Step24Front_branch : s6Step24FrontSigmaArena.checkBorrow 1 [813]=some s6Step24HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24FrontSigmaArena,s6Step24EntryGvAfter,arenaWires]
  · change s6Step24HeadGBefore.live=(s6Step24EntryGvAfter.live∪{794})∪{813}
    apply hmrArena_union_pair_of_filter_check s6Step24EntryGvAfter s6Step24HeadGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 794 813 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step24Front_entry : HmrFrontEntryValid s6Step24EntryFBefore s6Step24FrontBank 256 25 ⟨255,254,25,24⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step24FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step24EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step24EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step24FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step24FrontPlan : HmrSourceFront := ⟨s6Step24EntryGvAfter,s6Step24FrontPair,(growRow 795 s6Step24EntryFFresh ++ (growRow 777 s6Step24EntryGFresh ++ (growRow 776 s6Step24EntryFvFresh ++ (growRow 775 s6Step24EntryGvFresh ++ [])))),s6Step24FrontSigmaArena,[794],s6Step24HeadGBefore,[813],
  s6Step24HeadFvAfter,s6Step24FrontHead,(growRow 777 s6Step24HeadGFresh ++ (growRow 795 s6Step24HeadFFresh ++ (growRow 775 s6Step24HeadGvFresh ++ (growRow 776 s6Step24HeadFvFresh ++ [])))),s6Step24F4Plan,s6Step24CounterDuring,s6Step24CounterWork,s6Step24ExitGvAfter,s6Step24FrontOut,(shrinkRow 777 s6Step24ExitGExtra ++ (shrinkRow 795 s6Step24ExitFExtra ++ (shrinkRow 776 s6Step24ExitFvExtra ++ (shrinkRow 775 s6Step24ExitGvExtra ++ []))))⟩
theorem s6Step24Front_checked : compileHmrSourceFrontLog s6Step24EntryFBefore s6Step24FrontBank 256 25 ⟨255,254,25,24⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step24FrontLog=some s6Step24FrontPlan := by
  have pairEq : s6Step24FrontPair=⟨s6Step24HeadFRow,s6Step24HeadGRow,s6Step24HeadFvRow,s6Step24HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step24FrontHead=⟨s6Step24ExitFRow,s6Step24ExitGRow,s6Step24ExitFvRow,s6Step24ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step24Add0A=s6Step24FrontHead.f.wires := by decide +kernel
  have gEq : s6Step24Add0B=s6Step24FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step24Add1A=s6Step24FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step24Add1B=s6Step24FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step24EntryFBefore s6Step24FrontBank 256 25 ⟨255,254,25,24⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step24FrontLog s6Step24FrontPlan
  · exact s6Step24Front_entry
  · exact s6Step24EntryBank_checked
  · exact s6Step24Front_sigma
  · rfl
  · exact s6Step24Front_branch
  · rfl
  · simpa only [s6Step24FrontPlan,pairEq] using s6Step24HeadBank_checked
  · simpa only [s6Step24FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step24F4_checked
  · exact s6Step24Counter_checked
  · rfl
  · simpa only [s6Step24FrontPlan,headEq] using s6Step24ExitBank_checked
def s6Step25FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [813], [], [794]],[[887], [881], [853], [860]],[[], [], [], []]⟩,[859],[876],[807],[862],[867, 786, 877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[867, 786, 877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846],[807, 862, 867, 786]⟩
def s6Step25FrontBank : WindowBank := ⟨s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow⟩
def s6Step25FrontPair : WindowBank := ⟨s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut⟩
def s6Step25FrontHead : WindowBank := ⟨s6Step25HeadFOut,s6Step25HeadGOut,s6Step25HeadFvOut,s6Step25HeadGvOut⟩
def s6Step25FrontOut : WindowBank := ⟨s6Step25ExitFOut,s6Step25ExitGOut,s6Step25ExitFvOut,s6Step25ExitGvOut⟩
def s6Step25FrontSigmaArena : Arena := ⟨s6Step25EntryGvAfter.live∪{859},Finset.union_subset s6Step25EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step25Front_sigma : s6Step25EntryGvAfter.checkBorrow 1 [859]=some s6Step25FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step25EntryGvAfter,arenaWires]
  · rfl
theorem s6Step25Front_branch : s6Step25FrontSigmaArena.checkBorrow 1 [876]=some s6Step25HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step25FrontSigmaArena,s6Step25EntryGvAfter,arenaWires]
  · change s6Step25HeadGBefore.live=(s6Step25EntryGvAfter.live∪{859})∪{876}
    apply hmrArena_union_pair_of_filter_check s6Step25EntryGvAfter s6Step25HeadGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 859 876 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step25Front_entry : HmrFrontEntryValid s6Step25EntryFBefore s6Step25FrontBank 255 25 ⟨255,254,26,25⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step25FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step25EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step25EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step25FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step25FrontPlan : HmrSourceFront := ⟨s6Step25EntryGvAfter,s6Step25FrontPair,(growRow 795 s6Step25EntryFFresh ++ (growRow 777 s6Step25EntryGFresh ++ (growRow 776 s6Step25EntryFvFresh ++ (growRow 775 s6Step25EntryGvFresh ++ [])))),s6Step25FrontSigmaArena,[859],s6Step25HeadGBefore,[876],
  s6Step25HeadFvAfter,s6Step25FrontHead,(growRow 777 s6Step25HeadGFresh ++ (growRow 795 s6Step25HeadFFresh ++ (growRow 775 s6Step25HeadGvFresh ++ (growRow 776 s6Step25HeadFvFresh ++ [])))),s6Step25F4Plan,s6Step25CounterDuring,s6Step25CounterWork,s6Step25ExitGvAfter,s6Step25FrontOut,(shrinkRow 777 s6Step25ExitGExtra ++ (shrinkRow 795 s6Step25ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step25ExitGvExtra ++ []))))⟩
theorem s6Step25Front_checked : compileHmrSourceFrontLog s6Step25EntryFBefore s6Step25FrontBank 255 25 ⟨255,254,26,25⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step25FrontLog=some s6Step25FrontPlan := by
  have pairEq : s6Step25FrontPair=⟨s6Step25HeadFRow,s6Step25HeadGRow,s6Step25HeadFvRow,s6Step25HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step25FrontHead=⟨s6Step25ExitFRow,s6Step25ExitGRow,s6Step25ExitFvRow,s6Step25ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step25Add0A=s6Step25FrontHead.f.wires := by decide +kernel
  have gEq : s6Step25Add0B=s6Step25FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step25Add1A=s6Step25FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step25Add1B=s6Step25FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step25EntryFBefore s6Step25FrontBank 255 25 ⟨255,254,26,25⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step25FrontLog s6Step25FrontPlan
  · exact s6Step25Front_entry
  · exact s6Step25EntryBank_checked
  · exact s6Step25Front_sigma
  · rfl
  · exact s6Step25Front_branch
  · rfl
  · simpa only [s6Step25FrontPlan,pairEq] using s6Step25HeadBank_checked
  · simpa only [s6Step25FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step25F4_checked
  · exact s6Step25Counter_checked
  · rfl
  · simpa only [s6Step25FrontPlan,headEq] using s6Step25ExitBank_checked
def s6Step26FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [876], [], [859]],[[813], [887], [807], [862]],[[], [], [], []]⟩,[853],[881],[867],[786],[877, 855, 803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902],[867, 786, 877, 855]⟩
def s6Step26FrontBank : WindowBank := ⟨s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow⟩
def s6Step26FrontPair : WindowBank := ⟨s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut⟩
def s6Step26FrontHead : WindowBank := ⟨s6Step26HeadFOut,s6Step26HeadGOut,s6Step26HeadFvOut,s6Step26HeadGvOut⟩
def s6Step26FrontOut : WindowBank := ⟨s6Step26ExitFOut,s6Step26ExitGOut,s6Step26ExitFvOut,s6Step26ExitGvOut⟩
def s6Step26FrontSigmaArena : Arena := ⟨s6Step26EntryGvAfter.live∪{853},Finset.union_subset s6Step26EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step26Front_sigma : s6Step26EntryGvAfter.checkBorrow 1 [853]=some s6Step26FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step26EntryGvAfter,arenaWires]
  · rfl
theorem s6Step26Front_branch : s6Step26FrontSigmaArena.checkBorrow 1 [881]=some s6Step26HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step26FrontSigmaArena,s6Step26EntryGvAfter,arenaWires]
  · change s6Step26HeadGBefore.live=(s6Step26EntryGvAfter.live∪{853})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step26EntryGvAfter s6Step26HeadGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 853 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step26Front_entry : HmrFrontEntryValid s6Step26EntryFBefore s6Step26FrontBank 255 26 ⟨255,254,27,25⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step26FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step26EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step26EntryFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step26FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step26FrontPlan : HmrSourceFront := ⟨s6Step26EntryGvAfter,s6Step26FrontPair,(growRow 795 s6Step26EntryFFresh ++ (growRow 777 s6Step26EntryGFresh ++ (growRow 776 s6Step26EntryFvFresh ++ (growRow 775 s6Step26EntryGvFresh ++ [])))),s6Step26FrontSigmaArena,[853],s6Step26HeadGBefore,[881],
  s6Step26HeadFvAfter,s6Step26FrontHead,(growRow 777 s6Step26HeadGFresh ++ (growRow 795 s6Step26HeadFFresh ++ (growRow 775 s6Step26HeadGvFresh ++ (growRow 776 s6Step26HeadFvFresh ++ [])))),s6Step26F4Plan,s6Step26CounterDuring,s6Step26CounterWork,s6Step26ExitGvAfter,s6Step26FrontOut,(shrinkRow 777 s6Step26ExitGExtra ++ (shrinkRow 795 s6Step26ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step26ExitGvExtra ++ []))))⟩
theorem s6Step26Front_checked : compileHmrSourceFrontLog s6Step26EntryFBefore s6Step26FrontBank 255 26 ⟨255,254,27,25⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step26FrontLog=some s6Step26FrontPlan := by
  have pairEq : s6Step26FrontPair=⟨s6Step26HeadFRow,s6Step26HeadGRow,s6Step26HeadFvRow,s6Step26HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step26FrontHead=⟨s6Step26ExitFRow,s6Step26ExitGRow,s6Step26ExitFvRow,s6Step26ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step26Add0A=s6Step26FrontHead.f.wires := by decide +kernel
  have gEq : s6Step26Add0B=s6Step26FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step26Add1A=s6Step26FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step26Add1B=s6Step26FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step26EntryFBefore s6Step26FrontBank 255 26 ⟨255,254,27,25⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step26FrontLog s6Step26FrontPlan
  · exact s6Step26Front_entry
  · exact s6Step26EntryBank_checked
  · exact s6Step26Front_sigma
  · rfl
  · exact s6Step26Front_branch
  · rfl
  · simpa only [s6Step26FrontPlan,pairEq] using s6Step26HeadBank_checked
  · simpa only [s6Step26FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step26F4_checked
  · exact s6Step26Counter_checked
  · rfl
  · simpa only [s6Step26FrontPlan,headEq] using s6Step26ExitBank_checked
def s6Step27FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [881], [], [853, 859]],[[876], [813], [867], [786]],[[], [], [], []]⟩,[807],[887],[877],[855],[803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884],[877, 855, 803, 922]⟩
def s6Step27FrontBank : WindowBank := ⟨s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow⟩
def s6Step27FrontPair : WindowBank := ⟨s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut⟩
def s6Step27FrontHead : WindowBank := ⟨s6Step27HeadFOut,s6Step27HeadGOut,s6Step27HeadFvOut,s6Step27HeadGvOut⟩
def s6Step27FrontOut : WindowBank := ⟨s6Step27ExitFOut,s6Step27ExitGOut,s6Step27ExitFvOut,s6Step27ExitGvOut⟩
def s6Step27FrontSigmaArena : Arena := ⟨s6Step27EntryGvAfter.live∪{807},Finset.union_subset s6Step27EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step27Front_sigma : s6Step27EntryGvAfter.checkBorrow 1 [807]=some s6Step27FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step27EntryGvAfter,arenaWires]
  · rfl
theorem s6Step27Front_branch : s6Step27FrontSigmaArena.checkBorrow 1 [887]=some s6Step27HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step27FrontSigmaArena,s6Step27EntryGvAfter,arenaWires]
  · change s6Step27HeadGBefore.live=(s6Step27EntryGvAfter.live∪{807})∪{887}
    apply hmrArena_union_pair_of_filter_check s6Step27EntryGvAfter s6Step27HeadGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 807 887 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step27Front_entry : HmrFrontEntryValid s6Step27EntryFBefore s6Step27FrontBank 255 27 ⟨254,253,28,26⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step27FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step27EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step27EntryFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step27FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step27FrontPlan : HmrSourceFront := ⟨s6Step27EntryGvAfter,s6Step27FrontPair,(growRow 795 s6Step27EntryFFresh ++ (growRow 777 s6Step27EntryGFresh ++ (growRow 776 s6Step27EntryFvFresh ++ (growRow 775 s6Step27EntryGvFresh ++ [])))),s6Step27FrontSigmaArena,[807],s6Step27HeadGBefore,[887],
  s6Step27HeadFvAfter,s6Step27FrontHead,(growRow 777 s6Step27HeadGFresh ++ (growRow 795 s6Step27HeadFFresh ++ (growRow 775 s6Step27HeadGvFresh ++ (growRow 776 s6Step27HeadFvFresh ++ [])))),s6Step27F4Plan,s6Step27CounterDuring,s6Step27CounterWork,s6Step27ExitGvAfter,s6Step27FrontOut,(shrinkRow 777 s6Step27ExitGExtra ++ (shrinkRow 795 s6Step27ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step27ExitGvExtra ++ []))))⟩
theorem s6Step27Front_checked : compileHmrSourceFrontLog s6Step27EntryFBefore s6Step27FrontBank 255 27 ⟨254,253,28,26⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step27FrontLog=some s6Step27FrontPlan := by
  have pairEq : s6Step27FrontPair=⟨s6Step27HeadFRow,s6Step27HeadGRow,s6Step27HeadFvRow,s6Step27HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step27FrontHead=⟨s6Step27ExitFRow,s6Step27ExitGRow,s6Step27ExitFvRow,s6Step27ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step27Add0A=s6Step27FrontHead.f.wires := by decide +kernel
  have gEq : s6Step27Add0B=s6Step27FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step27Add1A=s6Step27FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step27Add1B=s6Step27FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step27EntryFBefore s6Step27FrontBank 255 27 ⟨254,253,28,26⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step27FrontLog s6Step27FrontPlan
  · exact s6Step27Front_entry
  · exact s6Step27EntryBank_checked
  · exact s6Step27Front_sigma
  · rfl
  · exact s6Step27Front_branch
  · rfl
  · simpa only [s6Step27FrontPlan,pairEq] using s6Step27HeadBank_checked
  · simpa only [s6Step27FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step27F4_checked
  · exact s6Step27Counter_checked
  · rfl
  · simpa only [s6Step27FrontPlan,headEq] using s6Step27ExitBank_checked
def s6Step28FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [887], [], [807, 768]],[[867], [813], [881], [876]],[[], [], [], []]⟩,[793],[859],[877],[855],[803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903],[877, 855, 803, 922]⟩
def s6Step28FrontBank : WindowBank := ⟨s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow⟩
def s6Step28FrontPair : WindowBank := ⟨s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut⟩
def s6Step28FrontHead : WindowBank := ⟨s6Step28HeadFOut,s6Step28HeadGOut,s6Step28HeadFvOut,s6Step28HeadGvOut⟩
def s6Step28FrontOut : WindowBank := ⟨s6Step28ExitFOut,s6Step28ExitGOut,s6Step28ExitFvOut,s6Step28ExitGvOut⟩
def s6Step28FrontSigmaArena : Arena := ⟨s6Step28EntryGvAfter.live∪{793},Finset.union_subset s6Step28EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step28Front_sigma : s6Step28EntryGvAfter.checkBorrow 1 [793]=some s6Step28FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step28EntryGvAfter,arenaWires]
  · rfl
theorem s6Step28Front_branch : s6Step28FrontSigmaArena.checkBorrow 1 [859]=some s6Step28HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step28FrontSigmaArena,s6Step28EntryGvAfter,arenaWires]
  · change s6Step28HeadGBefore.live=(s6Step28EntryGvAfter.live∪{793})∪{859}
    apply hmrArena_union_pair_of_filter_check s6Step28EntryGvAfter s6Step28HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 793 859 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step28Front_entry : HmrFrontEntryValid s6Step28EntryFBefore s6Step28FrontBank 254 28 ⟨254,253,28,27⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step28FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step28EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step28EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step28FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step28FrontPlan : HmrSourceFront := ⟨s6Step28EntryGvAfter,s6Step28FrontPair,(growRow 795 s6Step28EntryFFresh ++ (growRow 777 s6Step28EntryGFresh ++ (growRow 776 s6Step28EntryFvFresh ++ (growRow 775 s6Step28EntryGvFresh ++ [])))),s6Step28FrontSigmaArena,[793],s6Step28HeadGBefore,[859],
  s6Step28HeadFvAfter,s6Step28FrontHead,(growRow 777 s6Step28HeadGFresh ++ (growRow 795 s6Step28HeadFFresh ++ (growRow 775 s6Step28HeadGvFresh ++ (growRow 776 s6Step28HeadFvFresh ++ [])))),s6Step28F4Plan,s6Step28CounterDuring,s6Step28CounterWork,s6Step28ExitGvAfter,s6Step28FrontOut,(shrinkRow 777 s6Step28ExitGExtra ++ (shrinkRow 795 s6Step28ExitFExtra ++ (shrinkRow 776 s6Step28ExitFvExtra ++ (shrinkRow 775 s6Step28ExitGvExtra ++ []))))⟩
theorem s6Step28Front_checked : compileHmrSourceFrontLog s6Step28EntryFBefore s6Step28FrontBank 254 28 ⟨254,253,28,27⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step28FrontLog=some s6Step28FrontPlan := by
  have pairEq : s6Step28FrontPair=⟨s6Step28HeadFRow,s6Step28HeadGRow,s6Step28HeadFvRow,s6Step28HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step28FrontHead=⟨s6Step28ExitFRow,s6Step28ExitGRow,s6Step28ExitFvRow,s6Step28ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step28Add0A=s6Step28FrontHead.f.wires := by decide +kernel
  have gEq : s6Step28Add0B=s6Step28FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step28Add1A=s6Step28FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step28Add1B=s6Step28FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step28EntryFBefore s6Step28FrontBank 254 28 ⟨254,253,28,27⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step28FrontLog s6Step28FrontPlan
  · exact s6Step28Front_entry
  · exact s6Step28EntryBank_checked
  · exact s6Step28Front_sigma
  · rfl
  · exact s6Step28Front_branch
  · rfl
  · simpa only [s6Step28FrontPlan,pairEq] using s6Step28HeadBank_checked
  · simpa only [s6Step28FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step28F4_checked
  · exact s6Step28Counter_checked
  · rfl
  · simpa only [s6Step28FrontPlan,headEq] using s6Step28ExitBank_checked
def s6Step29FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [859], [], [793]],[[876], [813], [887], [867]],[[], [], [], []]⟩,[768],[881],[877],[855],[803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903],[877, 855, 803, 922]⟩
def s6Step29FrontBank : WindowBank := ⟨s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow⟩
def s6Step29FrontPair : WindowBank := ⟨s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut⟩
def s6Step29FrontHead : WindowBank := ⟨s6Step29HeadFOut,s6Step29HeadGOut,s6Step29HeadFvOut,s6Step29HeadGvOut⟩
def s6Step29FrontOut : WindowBank := ⟨s6Step29ExitFOut,s6Step29ExitGOut,s6Step29ExitFvOut,s6Step29ExitGvOut⟩
def s6Step29FrontSigmaArena : Arena := ⟨s6Step29EntryGvAfter.live∪{768},Finset.union_subset s6Step29EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step29Front_sigma : s6Step29EntryGvAfter.checkBorrow 1 [768]=some s6Step29FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step29EntryGvAfter,arenaWires]
  · rfl
theorem s6Step29Front_branch : s6Step29FrontSigmaArena.checkBorrow 1 [881]=some s6Step29HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step29FrontSigmaArena,s6Step29EntryGvAfter,arenaWires]
  · change s6Step29HeadGBefore.live=(s6Step29EntryGvAfter.live∪{768})∪{881}
    apply hmrArena_union_pair_of_filter_check s6Step29EntryGvAfter s6Step29HeadGBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 881 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step29Front_entry : HmrFrontEntryValid s6Step29EntryFBefore s6Step29FrontBank 254 28 ⟨253,252,29,27⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step29FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step29EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step29EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step29FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step29FrontPlan : HmrSourceFront := ⟨s6Step29EntryGvAfter,s6Step29FrontPair,(growRow 795 s6Step29EntryFFresh ++ (growRow 777 s6Step29EntryGFresh ++ (growRow 776 s6Step29EntryFvFresh ++ (growRow 775 s6Step29EntryGvFresh ++ [])))),s6Step29FrontSigmaArena,[768],s6Step29HeadGBefore,[881],
  s6Step29HeadFvAfter,s6Step29FrontHead,(growRow 777 s6Step29HeadGFresh ++ (growRow 795 s6Step29HeadFFresh ++ (growRow 775 s6Step29HeadGvFresh ++ (growRow 776 s6Step29HeadFvFresh ++ [])))),s6Step29F4Plan,s6Step29CounterDuring,s6Step29CounterWork,s6Step29ExitGvAfter,s6Step29FrontOut,(shrinkRow 777 s6Step29ExitGExtra ++ (shrinkRow 795 s6Step29ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step29ExitGvExtra ++ []))))⟩
theorem s6Step29Front_checked : compileHmrSourceFrontLog s6Step29EntryFBefore s6Step29FrontBank 254 28 ⟨253,252,29,27⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step29FrontLog=some s6Step29FrontPlan := by
  have pairEq : s6Step29FrontPair=⟨s6Step29HeadFRow,s6Step29HeadGRow,s6Step29HeadFvRow,s6Step29HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step29FrontHead=⟨s6Step29ExitFRow,s6Step29ExitGRow,s6Step29ExitFvRow,s6Step29ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step29Add0A=s6Step29FrontHead.f.wires := by decide +kernel
  have gEq : s6Step29Add0B=s6Step29FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step29Add1A=s6Step29FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step29Add1B=s6Step29FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step29EntryFBefore s6Step29FrontBank 254 28 ⟨253,252,29,27⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step29FrontLog s6Step29FrontPlan
  · exact s6Step29Front_entry
  · exact s6Step29EntryBank_checked
  · exact s6Step29Front_sigma
  · rfl
  · exact s6Step29Front_branch
  · rfl
  · simpa only [s6Step29FrontPlan,pairEq] using s6Step29HeadBank_checked
  · simpa only [s6Step29FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step29F4_checked
  · exact s6Step29Counter_checked
  · rfl
  · simpa only [s6Step29FrontPlan,headEq] using s6Step29ExitBank_checked
def s6Step30FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [881], [], [768, 874]],[[887], [813], [859], [876]],[[], [], [], []]⟩,[802],[793],[877],[855],[803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791],[877, 855, 803, 922]⟩
def s6Step30FrontBank : WindowBank := ⟨s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow⟩
def s6Step30FrontPair : WindowBank := ⟨s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut⟩
def s6Step30FrontHead : WindowBank := ⟨s6Step30HeadFOut,s6Step30HeadGOut,s6Step30HeadFvOut,s6Step30HeadGvOut⟩
def s6Step30FrontOut : WindowBank := ⟨s6Step30ExitFOut,s6Step30ExitGOut,s6Step30ExitFvOut,s6Step30ExitGvOut⟩
def s6Step30FrontSigmaArena : Arena := ⟨s6Step30EntryGvAfter.live∪{802},Finset.union_subset s6Step30EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step30Front_sigma : s6Step30EntryGvAfter.checkBorrow 1 [802]=some s6Step30FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step30EntryGvAfter,arenaWires]
  · rfl
theorem s6Step30Front_branch : s6Step30FrontSigmaArena.checkBorrow 1 [793]=some s6Step30HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step30FrontSigmaArena,s6Step30EntryGvAfter,arenaWires]
  · change s6Step30HeadGBefore.live=(s6Step30EntryGvAfter.live∪{802})∪{793}
    apply hmrArena_union_pair_of_filter_check s6Step30EntryGvAfter s6Step30HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 802 793 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step30Front_entry : HmrFrontEntryValid s6Step30EntryFBefore s6Step30FrontBank 253 29 ⟨253,252,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step30FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step30EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step30EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step30FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step30FrontPlan : HmrSourceFront := ⟨s6Step30EntryGvAfter,s6Step30FrontPair,(growRow 795 s6Step30EntryFFresh ++ (growRow 777 s6Step30EntryGFresh ++ (growRow 776 s6Step30EntryFvFresh ++ (growRow 775 s6Step30EntryGvFresh ++ [])))),s6Step30FrontSigmaArena,[802],s6Step30HeadGBefore,[793],
  s6Step30HeadFvAfter,s6Step30FrontHead,(growRow 777 s6Step30HeadGFresh ++ (growRow 795 s6Step30HeadFFresh ++ (growRow 775 s6Step30HeadGvFresh ++ (growRow 776 s6Step30HeadFvFresh ++ [])))),s6Step30F4Plan,s6Step30CounterDuring,s6Step30CounterWork,s6Step30ExitGvAfter,s6Step30FrontOut,(shrinkRow 777 s6Step30ExitGExtra ++ (shrinkRow 795 s6Step30ExitFExtra ++ (shrinkRow 776 s6Step30ExitFvExtra ++ (shrinkRow 775 s6Step30ExitGvExtra ++ []))))⟩
theorem s6Step30Front_checked : compileHmrSourceFrontLog s6Step30EntryFBefore s6Step30FrontBank 253 29 ⟨253,252,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step30FrontLog=some s6Step30FrontPlan := by
  have pairEq : s6Step30FrontPair=⟨s6Step30HeadFRow,s6Step30HeadGRow,s6Step30HeadFvRow,s6Step30HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step30FrontHead=⟨s6Step30ExitFRow,s6Step30ExitGRow,s6Step30ExitFvRow,s6Step30ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step30Add0A=s6Step30FrontHead.f.wires := by decide +kernel
  have gEq : s6Step30Add0B=s6Step30FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step30Add1A=s6Step30FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step30Add1B=s6Step30FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step30EntryFBefore s6Step30FrontBank 253 29 ⟨253,252,29,28⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step30FrontLog s6Step30FrontPlan
  · exact s6Step30Front_entry
  · exact s6Step30EntryBank_checked
  · exact s6Step30Front_sigma
  · rfl
  · exact s6Step30Front_branch
  · rfl
  · simpa only [s6Step30FrontPlan,pairEq] using s6Step30HeadBank_checked
  · simpa only [s6Step30FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step30F4_checked
  · exact s6Step30Counter_checked
  · rfl
  · simpa only [s6Step30FrontPlan,headEq] using s6Step30ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
