import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceCounterPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk7
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk6

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step47FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[823], [865], [873], [779]],[[], [], [], []]⟩,[863],[845],[793],[875],[868, 805, 877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923],[793, 875, 868, 805]⟩
def s6Step47FrontBank : WindowBank := ⟨s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow⟩
def s6Step47FrontPair : WindowBank := ⟨s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut⟩
def s6Step47FrontHead : WindowBank := ⟨s6Step47HeadFOut,s6Step47HeadGOut,s6Step47HeadFvOut,s6Step47HeadGvOut⟩
def s6Step47FrontOut : WindowBank := ⟨s6Step47ExitFOut,s6Step47ExitGOut,s6Step47ExitFvOut,s6Step47ExitGvOut⟩
def s6Step47FrontSigmaArena : Arena := ⟨s6Step47EntryGvAfter.live∪{863},Finset.union_subset s6Step47EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step47Front_sigma : s6Step47EntryGvAfter.checkBorrow 1 [863]=some s6Step47FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step47EntryGvAfter,s6Step47EntryFBefore,arenaWires]
  · rfl
theorem s6Step47Front_branch : s6Step47FrontSigmaArena.checkBorrow 1 [845]=some s6Step47HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step47FrontSigmaArena,s6Step47EntryGvAfter,s6Step47EntryFBefore,arenaWires]
  · change s6Step47HeadGBefore.live=(s6Step47EntryGvAfter.live∪{863})∪{845}
    apply hmrArena_union_pair_of_filter_check s6Step47EntryGvAfter s6Step47HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 863 845 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step47Front_entry : HmrFrontEntryValid s6Step47EntryFBefore s6Step47FrontBank 244 36 ⟨244,244,37,37⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step47FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step47EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step47EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step47FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step47FrontPlan : HmrSourceFront := ⟨s6Step47EntryGvAfter,s6Step47FrontPair,(growRow 795 s6Step47EntryFFresh ++ (growRow 777 s6Step47EntryGFresh ++ (growRow 776 s6Step47EntryFvFresh ++ (growRow 775 s6Step47EntryGvFresh ++ [])))),s6Step47FrontSigmaArena,[863],s6Step47HeadGBefore,[845],
  s6Step47HeadFvAfter,s6Step47FrontHead,(growRow 777 s6Step47HeadGFresh ++ (growRow 795 s6Step47HeadFFresh ++ (growRow 775 s6Step47HeadGvFresh ++ (growRow 776 s6Step47HeadFvFresh ++ [])))),s6Step47F4Plan,s6Step47CounterDuring,s6Step47CounterWork,s6Step47ExitGvAfter,s6Step47FrontOut,(shrinkRow 777 s6Step47ExitGExtra ++ (shrinkRow 795 s6Step47ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩
theorem s6Step47Front_checked : compileHmrSourceFrontLog s6Step47EntryFBefore s6Step47FrontBank 244 36 ⟨244,244,37,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step47FrontLog=some s6Step47FrontPlan := by
  have pairEq : s6Step47FrontPair=⟨s6Step47HeadFRow,s6Step47HeadGRow,s6Step47HeadFvRow,s6Step47HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step47FrontHead=⟨s6Step47ExitFRow,s6Step47ExitGRow,s6Step47ExitFvRow,s6Step47ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step47Add0A=s6Step47FrontHead.f.wires := by decide +kernel
  have gEq : s6Step47Add0B=s6Step47FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step47Add1A=s6Step47FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step47Add1B=s6Step47FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step47EntryFBefore s6Step47FrontBank 244 36 ⟨244,244,37,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step47FrontLog s6Step47FrontPlan
  · exact s6Step47Front_entry
  · exact s6Step47EntryBank_checked
  · exact s6Step47Front_sigma
  · rfl
  · exact s6Step47Front_branch
  · rfl
  · simpa only [s6Step47FrontPlan,pairEq] using s6Step47HeadBank_checked
  · simpa only [s6Step47FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step47F4_checked
  · exact s6Step47Counter_checked
  · rfl
  · simpa only [s6Step47FrontPlan,headEq] using s6Step47ExitBank_checked
def s6Step48FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[865], [823], [793], [875]],[[], [], [], []]⟩,[845],[863],[868],[805],[877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817],[868, 805, 877, 855]⟩
def s6Step48FrontBank : WindowBank := ⟨s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow⟩
def s6Step48FrontPair : WindowBank := ⟨s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut⟩
def s6Step48FrontHead : WindowBank := ⟨s6Step48HeadFOut,s6Step48HeadGOut,s6Step48HeadFvOut,s6Step48HeadGvOut⟩
def s6Step48FrontOut : WindowBank := ⟨s6Step48ExitFOut,s6Step48ExitGOut,s6Step48ExitFvOut,s6Step48ExitGvOut⟩
def s6Step48FrontSigmaArena : Arena := ⟨s6Step48EntryGvAfter.live∪{845},Finset.union_subset s6Step48EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step48Front_sigma : s6Step48EntryGvAfter.checkBorrow 1 [845]=some s6Step48FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step48EntryGvAfter,s6Step48EntryFBefore,arenaWires]
  · rfl
theorem s6Step48Front_branch : s6Step48FrontSigmaArena.checkBorrow 1 [863]=some s6Step48HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step48FrontSigmaArena,s6Step48EntryGvAfter,s6Step48EntryFBefore,arenaWires]
  · change s6Step48HeadGBefore.live=(s6Step48EntryGvAfter.live∪{845})∪{863}
    apply hmrArena_union_pair_of_filter_check s6Step48EntryGvAfter s6Step48HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 863 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step48Front_entry : HmrFrontEntryValid s6Step48EntryFBefore s6Step48FrontBank 244 37 ⟨244,243,37,37⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step48FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step48EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step48EntryFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step48FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step48FrontPlan : HmrSourceFront := ⟨s6Step48EntryGvAfter,s6Step48FrontPair,(growRow 795 s6Step48EntryFFresh ++ (growRow 777 s6Step48EntryGFresh ++ (growRow 776 s6Step48EntryFvFresh ++ (growRow 775 s6Step48EntryGvFresh ++ [])))),s6Step48FrontSigmaArena,[845],s6Step48HeadGBefore,[863],
  s6Step48HeadFvAfter,s6Step48FrontHead,(growRow 777 s6Step48HeadGFresh ++ (growRow 795 s6Step48HeadFFresh ++ (growRow 775 s6Step48HeadGvFresh ++ (growRow 776 s6Step48HeadFvFresh ++ [])))),s6Step48F4Plan,s6Step48CounterDuring,s6Step48CounterWork,s6Step48ExitGvAfter,s6Step48FrontOut,(shrinkRow 777 s6Step48ExitGExtra ++ (shrinkRow 795 s6Step48ExitFExtra ++ (shrinkRow 776 s6Step48ExitFvExtra ++ (shrinkRow 775 s6Step48ExitGvExtra ++ []))))⟩
theorem s6Step48Front_checked : compileHmrSourceFrontLog s6Step48EntryFBefore s6Step48FrontBank 244 37 ⟨244,243,37,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step48FrontLog=some s6Step48FrontPlan := by
  have pairEq : s6Step48FrontPair=⟨s6Step48HeadFRow,s6Step48HeadGRow,s6Step48HeadFvRow,s6Step48HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step48FrontHead=⟨s6Step48ExitFRow,s6Step48ExitGRow,s6Step48ExitFvRow,s6Step48ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step48Add0A=s6Step48FrontHead.f.wires := by decide +kernel
  have gEq : s6Step48Add0B=s6Step48FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step48Add1A=s6Step48FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step48Add1B=s6Step48FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step48EntryFBefore s6Step48FrontBank 244 37 ⟨244,243,37,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step48FrontLog s6Step48FrontPlan
  · exact s6Step48Front_entry
  · exact s6Step48EntryBank_checked
  · exact s6Step48Front_sigma
  · rfl
  · exact s6Step48Front_branch
  · rfl
  · simpa only [s6Step48FrontPlan,pairEq] using s6Step48HeadBank_checked
  · simpa only [s6Step48FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step48F4_checked
  · exact s6Step48Counter_checked
  · rfl
  · simpa only [s6Step48FrontPlan,headEq] using s6Step48ExitBank_checked
def s6Step49FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [863], [], []],[[793], [875], [823], [865]],[[], [], [], []]⟩,[845],[789],[868],[805],[877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817],[868, 805, 877, 855]⟩
def s6Step49FrontBank : WindowBank := ⟨s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow⟩
def s6Step49FrontPair : WindowBank := ⟨s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut⟩
def s6Step49FrontHead : WindowBank := ⟨s6Step49HeadFOut,s6Step49HeadGOut,s6Step49HeadFvOut,s6Step49HeadGvOut⟩
def s6Step49FrontOut : WindowBank := ⟨s6Step49ExitFOut,s6Step49ExitGOut,s6Step49ExitFvOut,s6Step49ExitGvOut⟩
def s6Step49FrontSigmaArena : Arena := ⟨s6Step49EntryGvAfter.live∪{845},Finset.union_subset s6Step49EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step49Front_sigma : s6Step49EntryGvAfter.checkBorrow 1 [845]=some s6Step49FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step49EntryGvAfter,s6Step49EntryGAfter,arenaWires]
  · rfl
theorem s6Step49Front_branch : s6Step49FrontSigmaArena.checkBorrow 1 [789]=some s6Step49HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step49FrontSigmaArena,s6Step49EntryGvAfter,s6Step49EntryGAfter,arenaWires]
  · change s6Step49HeadGBefore.live=(s6Step49EntryGvAfter.live∪{845})∪{789}
    apply hmrArena_union_pair_of_filter_check s6Step49EntryGvAfter s6Step49HeadGBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 789 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step49Front_entry : HmrFrontEntryValid s6Step49EntryFBefore s6Step49FrontBank 244 37 ⟨243,243,38,37⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step49FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step49EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step49EntryFBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step49FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step49FrontPlan : HmrSourceFront := ⟨s6Step49EntryGvAfter,s6Step49FrontPair,(growRow 795 s6Step49EntryFFresh ++ (growRow 777 s6Step49EntryGFresh ++ (growRow 776 s6Step49EntryFvFresh ++ (growRow 775 s6Step49EntryGvFresh ++ [])))),s6Step49FrontSigmaArena,[845],s6Step49HeadGBefore,[789],
  s6Step49HeadFvAfter,s6Step49FrontHead,(growRow 777 s6Step49HeadGFresh ++ (growRow 795 s6Step49HeadFFresh ++ (growRow 775 s6Step49HeadGvFresh ++ (growRow 776 s6Step49HeadFvFresh ++ [])))),s6Step49F4Plan,s6Step49CounterDuring,s6Step49CounterWork,s6Step49ExitGvAfter,s6Step49FrontOut,(shrinkRow 777 s6Step49ExitGExtra ++ (shrinkRow 795 s6Step49ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step49ExitGvExtra ++ []))))⟩
theorem s6Step49Front_checked : compileHmrSourceFrontLog s6Step49EntryFBefore s6Step49FrontBank 244 37 ⟨243,243,38,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step49FrontLog=some s6Step49FrontPlan := by
  have pairEq : s6Step49FrontPair=⟨s6Step49HeadFRow,s6Step49HeadGRow,s6Step49HeadFvRow,s6Step49HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step49FrontHead=⟨s6Step49ExitFRow,s6Step49ExitGRow,s6Step49ExitFvRow,s6Step49ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step49Add0A=s6Step49FrontHead.f.wires := by decide +kernel
  have gEq : s6Step49Add0B=s6Step49FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step49Add1A=s6Step49FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step49Add1B=s6Step49FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step49EntryFBefore s6Step49FrontBank 244 37 ⟨243,243,38,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step49FrontLog s6Step49FrontPlan
  · exact s6Step49Front_entry
  · exact s6Step49EntryBank_checked
  · exact s6Step49Front_sigma
  · rfl
  · exact s6Step49Front_branch
  · rfl
  · simpa only [s6Step49FrontPlan,pairEq] using s6Step49HeadBank_checked
  · simpa only [s6Step49FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step49F4_checked
  · exact s6Step49Counter_checked
  · rfl
  · simpa only [s6Step49FrontPlan,headEq] using s6Step49ExitBank_checked
def s6Step50FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [789]],[[823], [875], [863], [793]],[[], [], [], []]⟩,[845],[880],[868],[805],[877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812],[868, 805, 877, 855]⟩
def s6Step50FrontBank : WindowBank := ⟨s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow⟩
def s6Step50FrontPair : WindowBank := ⟨s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut⟩
def s6Step50FrontHead : WindowBank := ⟨s6Step50HeadFOut,s6Step50HeadGOut,s6Step50HeadFvOut,s6Step50HeadGvOut⟩
def s6Step50FrontOut : WindowBank := ⟨s6Step50ExitFOut,s6Step50ExitGOut,s6Step50ExitFvOut,s6Step50ExitGvOut⟩
def s6Step50FrontSigmaArena : Arena := ⟨s6Step50EntryGvAfter.live∪{845},Finset.union_subset s6Step50EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step50Front_sigma : s6Step50EntryGvAfter.checkBorrow 1 [845]=some s6Step50FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step50EntryGvAfter,arenaWires]
  · rfl
theorem s6Step50Front_branch : s6Step50FrontSigmaArena.checkBorrow 1 [880]=some s6Step50HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step50FrontSigmaArena,s6Step50EntryGvAfter,arenaWires]
  · change s6Step50HeadGBefore.live=(s6Step50EntryGvAfter.live∪{845})∪{880}
    apply hmrArena_union_pair_of_filter_check s6Step50EntryGvAfter s6Step50HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 845 880 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step50Front_entry : HmrFrontEntryValid s6Step50EntryFBefore s6Step50FrontBank 243 38 ⟨243,242,38,37⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step50FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step50EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step50EntryFBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step50FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step50FrontPlan : HmrSourceFront := ⟨s6Step50EntryGvAfter,s6Step50FrontPair,(growRow 795 s6Step50EntryFFresh ++ (growRow 777 s6Step50EntryGFresh ++ (growRow 776 s6Step50EntryFvFresh ++ (growRow 775 s6Step50EntryGvFresh ++ [])))),s6Step50FrontSigmaArena,[845],s6Step50HeadGBefore,[880],
  s6Step50HeadFvAfter,s6Step50FrontHead,(growRow 777 s6Step50HeadGFresh ++ (growRow 795 s6Step50HeadFFresh ++ (growRow 775 s6Step50HeadGvFresh ++ (growRow 776 s6Step50HeadFvFresh ++ [])))),s6Step50F4Plan,s6Step50CounterDuring,s6Step50CounterWork,s6Step50ExitGvAfter,s6Step50FrontOut,(shrinkRow 777 s6Step50ExitGExtra ++ (shrinkRow 795 s6Step50ExitFExtra ++ (shrinkRow 776 s6Step50ExitFvExtra ++ (shrinkRow 775 s6Step50ExitGvExtra ++ []))))⟩
theorem s6Step50Front_checked : compileHmrSourceFrontLog s6Step50EntryFBefore s6Step50FrontBank 243 38 ⟨243,242,38,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step50FrontLog=some s6Step50FrontPlan := by
  have pairEq : s6Step50FrontPair=⟨s6Step50HeadFRow,s6Step50HeadGRow,s6Step50HeadFvRow,s6Step50HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step50FrontHead=⟨s6Step50ExitFRow,s6Step50ExitGRow,s6Step50ExitFvRow,s6Step50ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step50Add0A=s6Step50FrontHead.f.wires := by decide +kernel
  have gEq : s6Step50Add0B=s6Step50FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step50Add1A=s6Step50FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step50Add1B=s6Step50FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step50EntryFBefore s6Step50FrontBank 243 38 ⟨243,242,38,37⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step50FrontLog s6Step50FrontPlan
  · exact s6Step50Front_entry
  · exact s6Step50EntryBank_checked
  · exact s6Step50Front_sigma
  · rfl
  · exact s6Step50Front_branch
  · rfl
  · simpa only [s6Step50FrontPlan,pairEq] using s6Step50HeadBank_checked
  · simpa only [s6Step50FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step50F4_checked
  · exact s6Step50Counter_checked
  · rfl
  · simpa only [s6Step50FrontPlan,headEq] using s6Step50ExitBank_checked
def s6Step51FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [880], [], [845]],[[863], [793], [875], [823]],[[], [], [], []]⟩,[818],[789],[868],[805],[877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812],[868, 805, 877, 855]⟩
def s6Step51FrontBank : WindowBank := ⟨s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow⟩
def s6Step51FrontPair : WindowBank := ⟨s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut⟩
def s6Step51FrontHead : WindowBank := ⟨s6Step51HeadFOut,s6Step51HeadGOut,s6Step51HeadFvOut,s6Step51HeadGvOut⟩
def s6Step51FrontOut : WindowBank := ⟨s6Step51ExitFOut,s6Step51ExitGOut,s6Step51ExitFvOut,s6Step51ExitGvOut⟩
def s6Step51FrontSigmaArena : Arena := ⟨s6Step51EntryGvAfter.live∪{818},Finset.union_subset s6Step51EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step51Front_sigma : s6Step51EntryGvAfter.checkBorrow 1 [818]=some s6Step51FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step51EntryGvAfter,arenaWires]
  · rfl
theorem s6Step51Front_branch : s6Step51FrontSigmaArena.checkBorrow 1 [789]=some s6Step51HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step51FrontSigmaArena,s6Step51EntryGvAfter,arenaWires]
  · change s6Step51HeadGBefore.live=(s6Step51EntryGvAfter.live∪{818})∪{789}
    apply hmrArena_union_pair_of_filter_check s6Step51EntryGvAfter s6Step51HeadGBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 818 789 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step51Front_entry : HmrFrontEntryValid s6Step51EntryFBefore s6Step51FrontBank 243 38 ⟨242,242,39,38⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step51FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step51EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step51EntryFBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step51FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step51FrontPlan : HmrSourceFront := ⟨s6Step51EntryGvAfter,s6Step51FrontPair,(growRow 795 s6Step51EntryFFresh ++ (growRow 777 s6Step51EntryGFresh ++ (growRow 776 s6Step51EntryFvFresh ++ (growRow 775 s6Step51EntryGvFresh ++ [])))),s6Step51FrontSigmaArena,[818],s6Step51HeadGBefore,[789],
  s6Step51HeadFvAfter,s6Step51FrontHead,(growRow 777 s6Step51HeadGFresh ++ (growRow 795 s6Step51HeadFFresh ++ (growRow 775 s6Step51HeadGvFresh ++ (growRow 776 s6Step51HeadFvFresh ++ [])))),s6Step51F4Plan,s6Step51CounterDuring,s6Step51CounterWork,s6Step51ExitGvAfter,s6Step51FrontOut,(shrinkRow 777 s6Step51ExitGExtra ++ (shrinkRow 795 s6Step51ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step51ExitGvExtra ++ []))))⟩
theorem s6Step51Front_checked : compileHmrSourceFrontLog s6Step51EntryFBefore s6Step51FrontBank 243 38 ⟨242,242,39,38⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step51FrontLog=some s6Step51FrontPlan := by
  have pairEq : s6Step51FrontPair=⟨s6Step51HeadFRow,s6Step51HeadGRow,s6Step51HeadFvRow,s6Step51HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step51FrontHead=⟨s6Step51ExitFRow,s6Step51ExitGRow,s6Step51ExitFvRow,s6Step51ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step51Add0A=s6Step51FrontHead.f.wires := by decide +kernel
  have gEq : s6Step51Add0B=s6Step51FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step51Add1A=s6Step51FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step51Add1B=s6Step51FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step51EntryFBefore s6Step51FrontBank 243 38 ⟨242,242,39,38⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step51FrontLog s6Step51FrontPlan
  · exact s6Step51Front_entry
  · exact s6Step51EntryBank_checked
  · exact s6Step51Front_sigma
  · rfl
  · exact s6Step51Front_branch
  · rfl
  · simpa only [s6Step51FrontPlan,pairEq] using s6Step51HeadBank_checked
  · simpa only [s6Step51FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step51F4_checked
  · exact s6Step51Counter_checked
  · rfl
  · simpa only [s6Step51FrontPlan,headEq] using s6Step51ExitBank_checked
def s6Step52FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [789]],[[875], [793], [880], [863]],[[], [], [], []]⟩,[818],[864],[868],[805],[877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900],[868, 805, 877, 855]⟩
def s6Step52FrontBank : WindowBank := ⟨s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow⟩
def s6Step52FrontPair : WindowBank := ⟨s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut⟩
def s6Step52FrontHead : WindowBank := ⟨s6Step52HeadFOut,s6Step52HeadGOut,s6Step52HeadFvOut,s6Step52HeadGvOut⟩
def s6Step52FrontOut : WindowBank := ⟨s6Step52ExitFOut,s6Step52ExitGOut,s6Step52ExitFvOut,s6Step52ExitGvOut⟩
def s6Step52FrontSigmaArena : Arena := ⟨s6Step52EntryGvAfter.live∪{818},Finset.union_subset s6Step52EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step52Front_sigma : s6Step52EntryGvAfter.checkBorrow 1 [818]=some s6Step52FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step52EntryGvAfter,arenaWires]
  · rfl
theorem s6Step52Front_branch : s6Step52FrontSigmaArena.checkBorrow 1 [864]=some s6Step52HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step52FrontSigmaArena,s6Step52EntryGvAfter,arenaWires]
  · change s6Step52HeadGBefore.live=(s6Step52EntryGvAfter.live∪{818})∪{864}
    apply hmrArena_union_pair_of_filter_check s6Step52EntryGvAfter s6Step52HeadGBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 818 864 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step52Front_entry : HmrFrontEntryValid s6Step52EntryFBefore s6Step52FrontBank 242 39 ⟨241,241,39,38⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step52FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step52EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step52EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step52FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step52FrontPlan : HmrSourceFront := ⟨s6Step52EntryGvAfter,s6Step52FrontPair,(growRow 795 s6Step52EntryFFresh ++ (growRow 777 s6Step52EntryGFresh ++ (growRow 776 s6Step52EntryFvFresh ++ (growRow 775 s6Step52EntryGvFresh ++ [])))),s6Step52FrontSigmaArena,[818],s6Step52HeadGBefore,[864],
  s6Step52HeadFvAfter,s6Step52FrontHead,(growRow 777 s6Step52HeadGFresh ++ (growRow 795 s6Step52HeadFFresh ++ (growRow 775 s6Step52HeadGvFresh ++ (growRow 776 s6Step52HeadFvFresh ++ [])))),s6Step52F4Plan,s6Step52CounterDuring,s6Step52CounterWork,s6Step52ExitGvAfter,s6Step52FrontOut,(shrinkRow 777 s6Step52ExitGExtra ++ (shrinkRow 795 s6Step52ExitFExtra ++ (shrinkRow 776 s6Step52ExitFvExtra ++ (shrinkRow 775 s6Step52ExitGvExtra ++ []))))⟩
theorem s6Step52Front_checked : compileHmrSourceFrontLog s6Step52EntryFBefore s6Step52FrontBank 242 39 ⟨241,241,39,38⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step52FrontLog=some s6Step52FrontPlan := by
  have pairEq : s6Step52FrontPair=⟨s6Step52HeadFRow,s6Step52HeadGRow,s6Step52HeadFvRow,s6Step52HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step52FrontHead=⟨s6Step52ExitFRow,s6Step52ExitGRow,s6Step52ExitFvRow,s6Step52ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step52Add0A=s6Step52FrontHead.f.wires := by decide +kernel
  have gEq : s6Step52Add0B=s6Step52FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step52Add1A=s6Step52FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step52Add1B=s6Step52FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step52EntryFBefore s6Step52FrontBank 242 39 ⟨241,241,39,38⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step52FrontLog s6Step52FrontPlan
  · exact s6Step52Front_entry
  · exact s6Step52EntryBank_checked
  · exact s6Step52Front_sigma
  · rfl
  · exact s6Step52Front_branch
  · rfl
  · simpa only [s6Step52FrontPlan,pairEq] using s6Step52HeadBank_checked
  · simpa only [s6Step52FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step52F4_checked
  · exact s6Step52Counter_checked
  · rfl
  · simpa only [s6Step52FrontPlan,headEq] using s6Step52ExitBank_checked
def s6Step53FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [864]],[[892], [789], [880], [863]],[[], [], [], []]⟩,[818],[828],[793],[875],[868, 805, 877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[868, 805, 877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812],[793, 875, 868, 805]⟩
def s6Step53FrontBank : WindowBank := ⟨s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow⟩
def s6Step53FrontPair : WindowBank := ⟨s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut⟩
def s6Step53FrontHead : WindowBank := ⟨s6Step53HeadFOut,s6Step53HeadGOut,s6Step53HeadFvOut,s6Step53HeadGvOut⟩
def s6Step53FrontOut : WindowBank := ⟨s6Step53ExitFOut,s6Step53ExitGOut,s6Step53ExitFvOut,s6Step53ExitGvOut⟩
def s6Step53FrontSigmaArena : Arena := ⟨s6Step53EntryGvAfter.live∪{818},Finset.union_subset s6Step53EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step53Front_sigma : s6Step53EntryGvAfter.checkBorrow 1 [818]=some s6Step53FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step53EntryGvAfter,arenaWires]
  · rfl
theorem s6Step53Front_branch : s6Step53FrontSigmaArena.checkBorrow 1 [828]=some s6Step53HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step53FrontSigmaArena,s6Step53EntryGvAfter,arenaWires]
  · change s6Step53HeadGBefore.live=(s6Step53EntryGvAfter.live∪{818})∪{828}
    apply hmrArena_union_pair_of_filter_check s6Step53EntryGvAfter s6Step53HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 818 828 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step53Front_entry : HmrFrontEntryValid s6Step53EntryFBefore s6Step53FrontBank 241 39 ⟨241,241,40,39⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step53FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step53EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step53EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step53FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step53FrontPlan : HmrSourceFront := ⟨s6Step53EntryGvAfter,s6Step53FrontPair,(growRow 795 s6Step53EntryFFresh ++ (growRow 777 s6Step53EntryGFresh ++ (growRow 776 s6Step53EntryFvFresh ++ (growRow 775 s6Step53EntryGvFresh ++ [])))),s6Step53FrontSigmaArena,[818],s6Step53HeadGBefore,[828],
  s6Step53HeadFvAfter,s6Step53FrontHead,(growRow 777 s6Step53HeadGFresh ++ (growRow 795 s6Step53HeadFFresh ++ (growRow 775 s6Step53HeadGvFresh ++ (growRow 776 s6Step53HeadFvFresh ++ [])))),s6Step53F4Plan,s6Step53CounterDuring,s6Step53CounterWork,s6Step53ExitGvAfter,s6Step53FrontOut,(shrinkRow 777 s6Step53ExitGExtra ++ (shrinkRow 795 s6Step53ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step53ExitGvExtra ++ []))))⟩
theorem s6Step53Front_checked : compileHmrSourceFrontLog s6Step53EntryFBefore s6Step53FrontBank 241 39 ⟨241,241,40,39⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step53FrontLog=some s6Step53FrontPlan := by
  have pairEq : s6Step53FrontPair=⟨s6Step53HeadFRow,s6Step53HeadGRow,s6Step53HeadFvRow,s6Step53HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step53FrontHead=⟨s6Step53ExitFRow,s6Step53ExitGRow,s6Step53ExitFvRow,s6Step53ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step53Add0A=s6Step53FrontHead.f.wires := by decide +kernel
  have gEq : s6Step53Add0B=s6Step53FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step53Add1A=s6Step53FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step53Add1B=s6Step53FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step53EntryFBefore s6Step53FrontBank 241 39 ⟨241,241,40,39⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step53FrontLog s6Step53FrontPlan
  · exact s6Step53Front_entry
  · exact s6Step53EntryBank_checked
  · exact s6Step53Front_sigma
  · rfl
  · exact s6Step53Front_branch
  · rfl
  · simpa only [s6Step53FrontPlan,pairEq] using s6Step53HeadBank_checked
  · simpa only [s6Step53FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step53F4_checked
  · exact s6Step53Counter_checked
  · rfl
  · simpa only [s6Step53FrontPlan,headEq] using s6Step53ExitBank_checked
def s6Step54FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [828]],[[789], [892], [793], [875]],[[], [], [], []]⟩,[818],[880],[868],[805],[877, 855, 803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905],[868, 805, 877, 855]⟩
def s6Step54FrontBank : WindowBank := ⟨s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow⟩
def s6Step54FrontPair : WindowBank := ⟨s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut⟩
def s6Step54FrontHead : WindowBank := ⟨s6Step54HeadFOut,s6Step54HeadGOut,s6Step54HeadFvOut,s6Step54HeadGvOut⟩
def s6Step54FrontOut : WindowBank := ⟨s6Step54ExitFOut,s6Step54ExitGOut,s6Step54ExitFvOut,s6Step54ExitGvOut⟩
def s6Step54FrontSigmaArena : Arena := ⟨s6Step54EntryGvAfter.live∪{818},Finset.union_subset s6Step54EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step54Front_sigma : s6Step54EntryGvAfter.checkBorrow 1 [818]=some s6Step54FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step54EntryGvAfter,arenaWires]
  · rfl
theorem s6Step54Front_branch : s6Step54FrontSigmaArena.checkBorrow 1 [880]=some s6Step54HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step54FrontSigmaArena,s6Step54EntryGvAfter,arenaWires]
  · change s6Step54HeadGBefore.live=(s6Step54EntryGvAfter.live∪{818})∪{880}
    apply hmrArena_union_pair_of_filter_check s6Step54EntryGvAfter s6Step54HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 818 880 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step54Front_entry : HmrFrontEntryValid s6Step54EntryFBefore s6Step54FrontBank 241 40 ⟨241,240,41,40⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step54FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step54EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step54EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step54FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step54FrontPlan : HmrSourceFront := ⟨s6Step54EntryGvAfter,s6Step54FrontPair,(growRow 795 s6Step54EntryFFresh ++ (growRow 777 s6Step54EntryGFresh ++ (growRow 776 s6Step54EntryFvFresh ++ (growRow 775 s6Step54EntryGvFresh ++ [])))),s6Step54FrontSigmaArena,[818],s6Step54HeadGBefore,[880],
  s6Step54HeadFvAfter,s6Step54FrontHead,(growRow 777 s6Step54HeadGFresh ++ (growRow 795 s6Step54HeadFFresh ++ (growRow 775 s6Step54HeadGvFresh ++ (growRow 776 s6Step54HeadFvFresh ++ [])))),s6Step54F4Plan,s6Step54CounterDuring,s6Step54CounterWork,s6Step54ExitGvAfter,s6Step54FrontOut,(shrinkRow 777 s6Step54ExitGExtra ++ (shrinkRow 795 s6Step54ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step54ExitGvExtra ++ []))))⟩
theorem s6Step54Front_checked : compileHmrSourceFrontLog s6Step54EntryFBefore s6Step54FrontBank 241 40 ⟨241,240,41,40⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step54FrontLog=some s6Step54FrontPlan := by
  have pairEq : s6Step54FrontPair=⟨s6Step54HeadFRow,s6Step54HeadGRow,s6Step54HeadFvRow,s6Step54HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step54FrontHead=⟨s6Step54ExitFRow,s6Step54ExitGRow,s6Step54ExitFvRow,s6Step54ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step54Add0A=s6Step54FrontHead.f.wires := by decide +kernel
  have gEq : s6Step54Add0B=s6Step54FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step54Add1A=s6Step54FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step54Add1B=s6Step54FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step54EntryFBefore s6Step54FrontBank 241 40 ⟨241,240,41,40⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step54FrontLog s6Step54FrontPlan
  · exact s6Step54Front_entry
  · exact s6Step54EntryBank_checked
  · exact s6Step54Front_sigma
  · rfl
  · exact s6Step54Front_branch
  · rfl
  · simpa only [s6Step54FrontPlan,pairEq] using s6Step54HeadBank_checked
  · simpa only [s6Step54FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step54F4_checked
  · exact s6Step54Counter_checked
  · rfl
  · simpa only [s6Step54FrontPlan,headEq] using s6Step54ExitBank_checked
def s6Step55FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [880], [], [818]],[[892], [789], [868], [805]],[[], [], [], []]⟩,[882],[793],[877],[855],[803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906],[877, 855, 803, 922]⟩
def s6Step55FrontBank : WindowBank := ⟨s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow⟩
def s6Step55FrontPair : WindowBank := ⟨s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut⟩
def s6Step55FrontHead : WindowBank := ⟨s6Step55HeadFOut,s6Step55HeadGOut,s6Step55HeadFvOut,s6Step55HeadGvOut⟩
def s6Step55FrontOut : WindowBank := ⟨s6Step55ExitFOut,s6Step55ExitGOut,s6Step55ExitFvOut,s6Step55ExitGvOut⟩
def s6Step55FrontSigmaArena : Arena := ⟨s6Step55EntryGvAfter.live∪{882},Finset.union_subset s6Step55EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step55Front_sigma : s6Step55EntryGvAfter.checkBorrow 1 [882]=some s6Step55FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step55EntryGvAfter,arenaWires]
  · rfl
theorem s6Step55Front_branch : s6Step55FrontSigmaArena.checkBorrow 1 [793]=some s6Step55HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step55FrontSigmaArena,s6Step55EntryGvAfter,arenaWires]
  · change s6Step55HeadGBefore.live=(s6Step55EntryGvAfter.live∪{882})∪{793}
    apply hmrArena_union_pair_of_filter_check s6Step55EntryGvAfter s6Step55HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 882 793 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step55Front_entry : HmrFrontEntryValid s6Step55EntryFBefore s6Step55FrontBank 241 41 ⟨240,240,40,41⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step55FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step55EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step55EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step55FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step55FrontPlan : HmrSourceFront := ⟨s6Step55EntryGvAfter,s6Step55FrontPair,(growRow 795 s6Step55EntryFFresh ++ (growRow 777 s6Step55EntryGFresh ++ (growRow 776 s6Step55EntryFvFresh ++ (growRow 775 s6Step55EntryGvFresh ++ [])))),s6Step55FrontSigmaArena,[882],s6Step55HeadGBefore,[793],
  s6Step55HeadFvAfter,s6Step55FrontHead,(growRow 777 s6Step55HeadGFresh ++ (growRow 795 s6Step55HeadFFresh ++ (growRow 775 s6Step55HeadGvFresh ++ (growRow 776 s6Step55HeadFvFresh ++ [])))),s6Step55F4Plan,s6Step55CounterDuring,s6Step55CounterWork,s6Step55ExitGvAfter,s6Step55FrontOut,(shrinkRow 777 s6Step55ExitGExtra ++ (shrinkRow 795 s6Step55ExitFExtra ++ (shrinkRow 776 s6Step55ExitFvExtra ++ (shrinkRow 775 s6Step55ExitGvExtra ++ []))))⟩
theorem s6Step55Front_checked : compileHmrSourceFrontLog s6Step55EntryFBefore s6Step55FrontBank 241 41 ⟨240,240,40,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step55FrontLog=some s6Step55FrontPlan := by
  have pairEq : s6Step55FrontPair=⟨s6Step55HeadFRow,s6Step55HeadGRow,s6Step55HeadFvRow,s6Step55HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step55FrontHead=⟨s6Step55ExitFRow,s6Step55ExitGRow,s6Step55ExitFvRow,s6Step55ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step55Add0A=s6Step55FrontHead.f.wires := by decide +kernel
  have gEq : s6Step55Add0B=s6Step55FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step55Add1A=s6Step55FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step55Add1B=s6Step55FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step55EntryFBefore s6Step55FrontBank 241 41 ⟨240,240,40,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step55FrontLog s6Step55FrontPlan
  · exact s6Step55Front_entry
  · exact s6Step55EntryBank_checked
  · exact s6Step55Front_sigma
  · rfl
  · exact s6Step55Front_branch
  · rfl
  · simpa only [s6Step55FrontPlan,pairEq] using s6Step55HeadBank_checked
  · simpa only [s6Step55FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step55F4_checked
  · exact s6Step55Counter_checked
  · rfl
  · simpa only [s6Step55FrontPlan,headEq] using s6Step55ExitBank_checked
def s6Step56FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [793], []],[[868], [875], [805], [789]],[[], [], [], []]⟩,[882],[822],[880],[892],[877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932],[880, 892, 877, 855]⟩
def s6Step56FrontBank : WindowBank := ⟨s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow⟩
def s6Step56FrontPair : WindowBank := ⟨s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut⟩
def s6Step56FrontHead : WindowBank := ⟨s6Step56HeadFOut,s6Step56HeadGOut,s6Step56HeadFvOut,s6Step56HeadGvOut⟩
def s6Step56FrontOut : WindowBank := ⟨s6Step56ExitFOut,s6Step56ExitGOut,s6Step56ExitFvOut,s6Step56ExitGvOut⟩
def s6Step56FrontSigmaArena : Arena := ⟨s6Step56EntryGvAfter.live∪{882},Finset.union_subset s6Step56EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step56Front_sigma : s6Step56EntryGvAfter.checkBorrow 1 [882]=some s6Step56FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step56EntryGvAfter,s6Step56EntryFvAfter,arenaWires]
  · rfl
theorem s6Step56Front_branch : s6Step56FrontSigmaArena.checkBorrow 1 [822]=some s6Step56HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step56FrontSigmaArena,s6Step56EntryGvAfter,s6Step56EntryFvAfter,arenaWires]
  · change s6Step56HeadGBefore.live=(s6Step56EntryGvAfter.live∪{882})∪{822}
    apply hmrArena_union_pair_of_filter_check s6Step56EntryGvAfter s6Step56HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 882 822 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step56Front_entry : HmrFrontEntryValid s6Step56EntryFBefore s6Step56FrontBank 240 41 ⟨240,239,41,41⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step56FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step56EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step56EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step56FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step56FrontPlan : HmrSourceFront := ⟨s6Step56EntryGvAfter,s6Step56FrontPair,(growRow 795 s6Step56EntryFFresh ++ (growRow 777 s6Step56EntryGFresh ++ (growRow 776 s6Step56EntryFvFresh ++ (growRow 775 s6Step56EntryGvFresh ++ [])))),s6Step56FrontSigmaArena,[882],s6Step56HeadGBefore,[822],
  s6Step56HeadFvAfter,s6Step56FrontHead,(growRow 777 s6Step56HeadGFresh ++ (growRow 795 s6Step56HeadFFresh ++ (growRow 775 s6Step56HeadGvFresh ++ (growRow 776 s6Step56HeadFvFresh ++ [])))),s6Step56F4Plan,s6Step56CounterDuring,s6Step56CounterWork,s6Step56ExitGvAfter,s6Step56FrontOut,(shrinkRow 777 s6Step56ExitGExtra ++ (shrinkRow 795 s6Step56ExitFExtra ++ (shrinkRow 776 s6Step56ExitFvExtra ++ (shrinkRow 775 s6Step56ExitGvExtra ++ []))))⟩
theorem s6Step56Front_checked : compileHmrSourceFrontLog s6Step56EntryFBefore s6Step56FrontBank 240 41 ⟨240,239,41,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step56FrontLog=some s6Step56FrontPlan := by
  have pairEq : s6Step56FrontPair=⟨s6Step56HeadFRow,s6Step56HeadGRow,s6Step56HeadFvRow,s6Step56HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step56FrontHead=⟨s6Step56ExitFRow,s6Step56ExitGRow,s6Step56ExitFvRow,s6Step56ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step56Add0A=s6Step56FrontHead.f.wires := by decide +kernel
  have gEq : s6Step56Add0B=s6Step56FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step56Add1A=s6Step56FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step56Add1B=s6Step56FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step56EntryFBefore s6Step56FrontBank 240 41 ⟨240,239,41,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step56FrontLog s6Step56FrontPlan
  · exact s6Step56Front_entry
  · exact s6Step56EntryBank_checked
  · exact s6Step56Front_sigma
  · rfl
  · exact s6Step56Front_branch
  · rfl
  · simpa only [s6Step56FrontPlan,pairEq] using s6Step56HeadBank_checked
  · simpa only [s6Step56FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step56F4_checked
  · exact s6Step56Counter_checked
  · rfl
  · simpa only [s6Step56FrontPlan,headEq] using s6Step56ExitBank_checked
def s6Step57FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [822], [], []],[[805], [789], [875], [868]],[[], [], [], []]⟩,[882],[833],[880],[892],[877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932],[880, 892, 877, 855]⟩
def s6Step57FrontBank : WindowBank := ⟨s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow⟩
def s6Step57FrontPair : WindowBank := ⟨s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut⟩
def s6Step57FrontHead : WindowBank := ⟨s6Step57HeadFOut,s6Step57HeadGOut,s6Step57HeadFvOut,s6Step57HeadGvOut⟩
def s6Step57FrontOut : WindowBank := ⟨s6Step57ExitFOut,s6Step57ExitGOut,s6Step57ExitFvOut,s6Step57ExitGvOut⟩
def s6Step57FrontSigmaArena : Arena := ⟨s6Step57EntryGvAfter.live∪{882},Finset.union_subset s6Step57EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step57Front_sigma : s6Step57EntryGvAfter.checkBorrow 1 [882]=some s6Step57FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step57EntryGvAfter,s6Step57EntryGAfter,arenaWires]
  · rfl
theorem s6Step57Front_branch : s6Step57FrontSigmaArena.checkBorrow 1 [833]=some s6Step57HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step57FrontSigmaArena,s6Step57EntryGvAfter,s6Step57EntryGAfter,arenaWires]
  · change s6Step57HeadGBefore.live=(s6Step57EntryGvAfter.live∪{882})∪{833}
    apply hmrArena_union_pair_of_filter_check s6Step57EntryGvAfter s6Step57HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 882 833 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step57Front_entry : HmrFrontEntryValid s6Step57EntryFBefore s6Step57FrontBank 240 41 ⟨239,238,41,41⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step57FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step57EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step57EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step57FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step57FrontPlan : HmrSourceFront := ⟨s6Step57EntryGvAfter,s6Step57FrontPair,(growRow 795 s6Step57EntryFFresh ++ (growRow 777 s6Step57EntryGFresh ++ (growRow 776 s6Step57EntryFvFresh ++ (growRow 775 s6Step57EntryGvFresh ++ [])))),s6Step57FrontSigmaArena,[882],s6Step57HeadGBefore,[833],
  s6Step57HeadFvAfter,s6Step57FrontHead,(growRow 777 s6Step57HeadGFresh ++ (growRow 795 s6Step57HeadFFresh ++ (growRow 775 s6Step57HeadGvFresh ++ (growRow 776 s6Step57HeadFvFresh ++ [])))),s6Step57F4Plan,s6Step57CounterDuring,s6Step57CounterWork,s6Step57ExitGvAfter,s6Step57FrontOut,(shrinkRow 777 s6Step57ExitGExtra ++ (shrinkRow 795 s6Step57ExitFExtra ++ (shrinkRow 776 s6Step57ExitFvExtra ++ (shrinkRow 775 s6Step57ExitGvExtra ++ []))))⟩
theorem s6Step57Front_checked : compileHmrSourceFrontLog s6Step57EntryFBefore s6Step57FrontBank 240 41 ⟨239,238,41,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step57FrontLog=some s6Step57FrontPlan := by
  have pairEq : s6Step57FrontPair=⟨s6Step57HeadFRow,s6Step57HeadGRow,s6Step57HeadFvRow,s6Step57HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step57FrontHead=⟨s6Step57ExitFRow,s6Step57ExitGRow,s6Step57ExitFvRow,s6Step57ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step57Add0A=s6Step57FrontHead.f.wires := by decide +kernel
  have gEq : s6Step57Add0B=s6Step57FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step57Add1A=s6Step57FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step57Add1B=s6Step57FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step57EntryFBefore s6Step57FrontBank 240 41 ⟨239,238,41,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step57FrontLog s6Step57FrontPlan
  · exact s6Step57Front_entry
  · exact s6Step57EntryBank_checked
  · exact s6Step57Front_sigma
  · rfl
  · exact s6Step57Front_branch
  · rfl
  · simpa only [s6Step57FrontPlan,pairEq] using s6Step57HeadBank_checked
  · simpa only [s6Step57FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step57F4_checked
  · exact s6Step57Counter_checked
  · rfl
  · simpa only [s6Step57FrontPlan,headEq] using s6Step57ExitBank_checked
def s6Step58FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [833], [], []],[[886], [875], [868], [789]],[[], [], [], []]⟩,[882],[780],[822],[805],[880, 892, 877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[880, 892, 877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905],[822, 805, 880, 892]⟩
def s6Step58FrontBank : WindowBank := ⟨s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow⟩
def s6Step58FrontPair : WindowBank := ⟨s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut⟩
def s6Step58FrontHead : WindowBank := ⟨s6Step58HeadFOut,s6Step58HeadGOut,s6Step58HeadFvOut,s6Step58HeadGvOut⟩
def s6Step58FrontOut : WindowBank := ⟨s6Step58ExitFOut,s6Step58ExitGOut,s6Step58ExitFvOut,s6Step58ExitGvOut⟩
def s6Step58FrontSigmaArena : Arena := ⟨s6Step58EntryGvAfter.live∪{882},Finset.union_subset s6Step58EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step58Front_sigma : s6Step58EntryGvAfter.checkBorrow 1 [882]=some s6Step58FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step58EntryGvAfter,s6Step58EntryGAfter,arenaWires]
  · rfl
theorem s6Step58Front_branch : s6Step58FrontSigmaArena.checkBorrow 1 [780]=some s6Step58HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step58FrontSigmaArena,s6Step58EntryGvAfter,s6Step58EntryGAfter,arenaWires]
  · change s6Step58HeadGBefore.live=(s6Step58EntryGvAfter.live∪{882})∪{780}
    apply hmrArena_union_pair_of_filter_check s6Step58EntryGvAfter s6Step58HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 882 780 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step58Front_entry : HmrFrontEntryValid s6Step58EntryFBefore s6Step58FrontBank 239 41 ⟨239,238,42,41⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step58FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step58EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step58EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step58FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step58FrontPlan : HmrSourceFront := ⟨s6Step58EntryGvAfter,s6Step58FrontPair,(growRow 795 s6Step58EntryFFresh ++ (growRow 777 s6Step58EntryGFresh ++ (growRow 776 s6Step58EntryFvFresh ++ (growRow 775 s6Step58EntryGvFresh ++ [])))),s6Step58FrontSigmaArena,[882],s6Step58HeadGBefore,[780],
  s6Step58HeadFvAfter,s6Step58FrontHead,(growRow 777 s6Step58HeadGFresh ++ (growRow 795 s6Step58HeadFFresh ++ (growRow 775 s6Step58HeadGvFresh ++ (growRow 776 s6Step58HeadFvFresh ++ [])))),s6Step58F4Plan,s6Step58CounterDuring,s6Step58CounterWork,s6Step58ExitGvAfter,s6Step58FrontOut,(shrinkRow 777 s6Step58ExitGExtra ++ (shrinkRow 795 s6Step58ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step58ExitGvExtra ++ []))))⟩
theorem s6Step58Front_checked : compileHmrSourceFrontLog s6Step58EntryFBefore s6Step58FrontBank 239 41 ⟨239,238,42,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step58FrontLog=some s6Step58FrontPlan := by
  have pairEq : s6Step58FrontPair=⟨s6Step58HeadFRow,s6Step58HeadGRow,s6Step58HeadFvRow,s6Step58HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step58FrontHead=⟨s6Step58ExitFRow,s6Step58ExitGRow,s6Step58ExitFvRow,s6Step58ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step58Add0A=s6Step58FrontHead.f.wires := by decide +kernel
  have gEq : s6Step58Add0B=s6Step58FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step58Add1A=s6Step58FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step58Add1B=s6Step58FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step58EntryFBefore s6Step58FrontBank 239 41 ⟨239,238,42,41⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step58FrontLog s6Step58FrontPlan
  · exact s6Step58Front_entry
  · exact s6Step58EntryBank_checked
  · exact s6Step58Front_sigma
  · rfl
  · exact s6Step58Front_branch
  · rfl
  · simpa only [s6Step58FrontPlan,pairEq] using s6Step58HeadBank_checked
  · simpa only [s6Step58FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step58F4_checked
  · exact s6Step58Counter_checked
  · rfl
  · simpa only [s6Step58FrontPlan,headEq] using s6Step58ExitBank_checked
def s6Step59FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [780], [], [882]],[[833], [886], [822], [805]],[[], [], [], []]⟩,[868],[875],[880],[892],[877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906],[880, 892, 877, 855]⟩
def s6Step59FrontBank : WindowBank := ⟨s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow⟩
def s6Step59FrontPair : WindowBank := ⟨s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut⟩
def s6Step59FrontHead : WindowBank := ⟨s6Step59HeadFOut,s6Step59HeadGOut,s6Step59HeadFvOut,s6Step59HeadGvOut⟩
def s6Step59FrontOut : WindowBank := ⟨s6Step59ExitFOut,s6Step59ExitGOut,s6Step59ExitFvOut,s6Step59ExitGvOut⟩
def s6Step59FrontSigmaArena : Arena := ⟨s6Step59EntryGvAfter.live∪{868},Finset.union_subset s6Step59EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step59Front_sigma : s6Step59EntryGvAfter.checkBorrow 1 [868]=some s6Step59FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step59EntryGvAfter,arenaWires]
  · rfl
theorem s6Step59Front_branch : s6Step59FrontSigmaArena.checkBorrow 1 [875]=some s6Step59HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step59FrontSigmaArena,s6Step59EntryGvAfter,arenaWires]
  · change s6Step59HeadGBefore.live=(s6Step59EntryGvAfter.live∪{868})∪{875}
    apply hmrArena_union_pair_of_filter_check s6Step59EntryGvAfter s6Step59HeadGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 868 875 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step59Front_entry : HmrFrontEntryValid s6Step59EntryFBefore s6Step59FrontBank 239 42 ⟨239,238,43,42⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step59FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step59EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step59EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step59FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step59FrontPlan : HmrSourceFront := ⟨s6Step59EntryGvAfter,s6Step59FrontPair,(growRow 795 s6Step59EntryFFresh ++ (growRow 777 s6Step59EntryGFresh ++ (growRow 776 s6Step59EntryFvFresh ++ (growRow 775 s6Step59EntryGvFresh ++ [])))),s6Step59FrontSigmaArena,[868],s6Step59HeadGBefore,[875],
  s6Step59HeadFvAfter,s6Step59FrontHead,(growRow 777 s6Step59HeadGFresh ++ (growRow 795 s6Step59HeadFFresh ++ (growRow 775 s6Step59HeadGvFresh ++ (growRow 776 s6Step59HeadFvFresh ++ [])))),s6Step59F4Plan,s6Step59CounterDuring,s6Step59CounterWork,s6Step59ExitGvAfter,s6Step59FrontOut,(shrinkRow 777 s6Step59ExitGExtra ++ (shrinkRow 795 s6Step59ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step59ExitGvExtra ++ []))))⟩
theorem s6Step59Front_checked : compileHmrSourceFrontLog s6Step59EntryFBefore s6Step59FrontBank 239 42 ⟨239,238,43,42⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step59FrontLog=some s6Step59FrontPlan := by
  have pairEq : s6Step59FrontPair=⟨s6Step59HeadFRow,s6Step59HeadGRow,s6Step59HeadFvRow,s6Step59HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step59FrontHead=⟨s6Step59ExitFRow,s6Step59ExitGRow,s6Step59ExitFvRow,s6Step59ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step59Add0A=s6Step59FrontHead.f.wires := by decide +kernel
  have gEq : s6Step59Add0B=s6Step59FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step59Add1A=s6Step59FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step59Add1B=s6Step59FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step59EntryFBefore s6Step59FrontBank 239 42 ⟨239,238,43,42⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step59FrontLog s6Step59FrontPlan
  · exact s6Step59Front_entry
  · exact s6Step59EntryBank_checked
  · exact s6Step59Front_sigma
  · rfl
  · exact s6Step59Front_branch
  · rfl
  · simpa only [s6Step59FrontPlan,pairEq] using s6Step59HeadBank_checked
  · simpa only [s6Step59FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step59F4_checked
  · exact s6Step59Counter_checked
  · rfl
  · simpa only [s6Step59FrontPlan,headEq] using s6Step59ExitBank_checked
def s6Step60FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [875], [], [868]],[[780], [833], [880], [892]],[[], [], [], []]⟩,[822],[886],[877],[855],[803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787],[877, 855, 803, 922]⟩
def s6Step60FrontBank : WindowBank := ⟨s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow⟩
def s6Step60FrontPair : WindowBank := ⟨s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut⟩
def s6Step60FrontHead : WindowBank := ⟨s6Step60HeadFOut,s6Step60HeadGOut,s6Step60HeadFvOut,s6Step60HeadGvOut⟩
def s6Step60FrontOut : WindowBank := ⟨s6Step60ExitFOut,s6Step60ExitGOut,s6Step60ExitFvOut,s6Step60ExitGvOut⟩
def s6Step60FrontSigmaArena : Arena := ⟨s6Step60EntryGvAfter.live∪{822},Finset.union_subset s6Step60EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step60Front_sigma : s6Step60EntryGvAfter.checkBorrow 1 [822]=some s6Step60FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step60EntryGvAfter,arenaWires]
  · rfl
theorem s6Step60Front_branch : s6Step60FrontSigmaArena.checkBorrow 1 [886]=some s6Step60HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step60FrontSigmaArena,s6Step60EntryGvAfter,arenaWires]
  · change s6Step60HeadGBefore.live=(s6Step60EntryGvAfter.live∪{822})∪{886}
    apply hmrArena_union_pair_of_filter_check s6Step60EntryGvAfter s6Step60HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 822 886 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step60Front_entry : HmrFrontEntryValid s6Step60EntryFBefore s6Step60FrontBank 239 43 ⟨239,237,44,43⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step60FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step60EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step60EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step60FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step60FrontPlan : HmrSourceFront := ⟨s6Step60EntryGvAfter,s6Step60FrontPair,(growRow 795 s6Step60EntryFFresh ++ (growRow 777 s6Step60EntryGFresh ++ (growRow 776 s6Step60EntryFvFresh ++ (growRow 775 s6Step60EntryGvFresh ++ [])))),s6Step60FrontSigmaArena,[822],s6Step60HeadGBefore,[886],
  s6Step60HeadFvAfter,s6Step60FrontHead,(growRow 777 s6Step60HeadGFresh ++ (growRow 795 s6Step60HeadFFresh ++ (growRow 775 s6Step60HeadGvFresh ++ (growRow 776 s6Step60HeadFvFresh ++ [])))),s6Step60F4Plan,s6Step60CounterDuring,s6Step60CounterWork,s6Step60ExitGvAfter,s6Step60FrontOut,(shrinkRow 777 s6Step60ExitGExtra ++ (shrinkRow 795 s6Step60ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step60ExitGvExtra ++ []))))⟩
theorem s6Step60Front_checked : compileHmrSourceFrontLog s6Step60EntryFBefore s6Step60FrontBank 239 43 ⟨239,237,44,43⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step60FrontLog=some s6Step60FrontPlan := by
  have pairEq : s6Step60FrontPair=⟨s6Step60HeadFRow,s6Step60HeadGRow,s6Step60HeadFvRow,s6Step60HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step60FrontHead=⟨s6Step60ExitFRow,s6Step60ExitGRow,s6Step60ExitFvRow,s6Step60ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step60Add0A=s6Step60FrontHead.f.wires := by decide +kernel
  have gEq : s6Step60Add0B=s6Step60FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step60Add1A=s6Step60FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step60Add1B=s6Step60FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step60EntryFBefore s6Step60FrontBank 239 43 ⟨239,237,44,43⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step60FrontLog s6Step60FrontPlan
  · exact s6Step60Front_entry
  · exact s6Step60EntryBank_checked
  · exact s6Step60Front_sigma
  · rfl
  · exact s6Step60Front_branch
  · rfl
  · simpa only [s6Step60FrontPlan,pairEq] using s6Step60HeadBank_checked
  · simpa only [s6Step60FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step60F4_checked
  · exact s6Step60Counter_checked
  · rfl
  · simpa only [s6Step60FrontPlan,headEq] using s6Step60ExitBank_checked
def s6Step61FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [886, 822], [], [838]],[[875], [780], [877], [855]],[[], [], [], []]⟩,[880],[833],[803],[922],[879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811],[803, 922, 879, 784]⟩
def s6Step61FrontBank : WindowBank := ⟨s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow⟩
def s6Step61FrontPair : WindowBank := ⟨s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut⟩
def s6Step61FrontHead : WindowBank := ⟨s6Step61HeadFOut,s6Step61HeadGOut,s6Step61HeadFvOut,s6Step61HeadGvOut⟩
def s6Step61FrontOut : WindowBank := ⟨s6Step61ExitFOut,s6Step61ExitGOut,s6Step61ExitFvOut,s6Step61ExitGvOut⟩
def s6Step61FrontSigmaArena : Arena := ⟨s6Step61EntryGvAfter.live∪{880},Finset.union_subset s6Step61EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step61Front_sigma : s6Step61EntryGvAfter.checkBorrow 1 [880]=some s6Step61FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step61EntryGvAfter,arenaWires]
  · rfl
theorem s6Step61Front_branch : s6Step61FrontSigmaArena.checkBorrow 1 [833]=some s6Step61HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step61FrontSigmaArena,s6Step61EntryGvAfter,arenaWires]
  · change s6Step61HeadGBefore.live=(s6Step61EntryGvAfter.live∪{880})∪{833}
    apply hmrArena_union_pair_of_filter_check s6Step61EntryGvAfter s6Step61HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 880 833 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step61Front_entry : HmrFrontEntryValid s6Step61EntryFBefore s6Step61FrontBank 239 44 ⟨238,237,44,43⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step61FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step61EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step61EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step61FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step61FrontPlan : HmrSourceFront := ⟨s6Step61EntryGvAfter,s6Step61FrontPair,(growRow 795 s6Step61EntryFFresh ++ (growRow 777 s6Step61EntryGFresh ++ (growRow 776 s6Step61EntryFvFresh ++ (growRow 775 s6Step61EntryGvFresh ++ [])))),s6Step61FrontSigmaArena,[880],s6Step61HeadGBefore,[833],
  s6Step61HeadFvAfter,s6Step61FrontHead,(growRow 777 s6Step61HeadGFresh ++ (growRow 795 s6Step61HeadFFresh ++ (growRow 775 s6Step61HeadGvFresh ++ (growRow 776 s6Step61HeadFvFresh ++ [])))),s6Step61F4Plan,s6Step61CounterDuring,s6Step61CounterWork,s6Step61ExitGvAfter,s6Step61FrontOut,(shrinkRow 777 s6Step61ExitGExtra ++ (shrinkRow 795 s6Step61ExitFExtra ++ (shrinkRow 776 s6Step61ExitFvExtra ++ (shrinkRow 775 s6Step61ExitGvExtra ++ []))))⟩
theorem s6Step61Front_checked : compileHmrSourceFrontLog s6Step61EntryFBefore s6Step61FrontBank 239 44 ⟨238,237,44,43⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step61FrontLog=some s6Step61FrontPlan := by
  have pairEq : s6Step61FrontPair=⟨s6Step61HeadFRow,s6Step61HeadGRow,s6Step61HeadFvRow,s6Step61HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step61FrontHead=⟨s6Step61ExitFRow,s6Step61ExitGRow,s6Step61ExitFvRow,s6Step61ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step61Add0A=s6Step61FrontHead.f.wires := by decide +kernel
  have gEq : s6Step61Add0B=s6Step61FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step61Add1A=s6Step61FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step61Add1B=s6Step61FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step61EntryFBefore s6Step61FrontBank 239 44 ⟨238,237,44,43⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step61FrontLog s6Step61FrontPlan
  · exact s6Step61Front_entry
  · exact s6Step61EntryBank_checked
  · exact s6Step61Front_sigma
  · rfl
  · exact s6Step61Front_branch
  · rfl
  · simpa only [s6Step61FrontPlan,pairEq] using s6Step61HeadBank_checked
  · simpa only [s6Step61FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step61F4_checked
  · exact s6Step61Counter_checked
  · rfl
  · simpa only [s6Step61FrontPlan,headEq] using s6Step61ExitBank_checked
def s6Step62FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [833], [], [880]],[[877], [855], [780], [886]],[[], [], [], []]⟩,[888],[838],[822],[875],[803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792],[822, 875, 803, 922]⟩
def s6Step62FrontBank : WindowBank := ⟨s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow⟩
def s6Step62FrontPair : WindowBank := ⟨s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut⟩
def s6Step62FrontHead : WindowBank := ⟨s6Step62HeadFOut,s6Step62HeadGOut,s6Step62HeadFvOut,s6Step62HeadGvOut⟩
def s6Step62FrontOut : WindowBank := ⟨s6Step62ExitFOut,s6Step62ExitGOut,s6Step62ExitFvOut,s6Step62ExitGvOut⟩
def s6Step62FrontSigmaArena : Arena := ⟨s6Step62EntryGvAfter.live∪{888},Finset.union_subset s6Step62EntryGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step62Front_sigma : s6Step62EntryGvAfter.checkBorrow 1 [888]=some s6Step62FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step62EntryGvAfter,arenaWires]
  · rfl
theorem s6Step62Front_branch : s6Step62FrontSigmaArena.checkBorrow 1 [838]=some s6Step62HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step62FrontSigmaArena,s6Step62EntryGvAfter,arenaWires]
  · change s6Step62HeadGBefore.live=(s6Step62EntryGvAfter.live∪{888})∪{838}
    apply hmrArena_union_pair_of_filter_check s6Step62EntryGvAfter s6Step62HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 888 838 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step62Front_entry : HmrFrontEntryValid s6Step62EntryFBefore s6Step62FrontBank 238 44 ⟨237,237,45,44⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step62FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step62EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step62EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step62FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩
def s6Step62FrontPlan : HmrSourceFront := ⟨s6Step62EntryGvAfter,s6Step62FrontPair,(growRow 795 s6Step62EntryFFresh ++ (growRow 777 s6Step62EntryGFresh ++ (growRow 776 s6Step62EntryFvFresh ++ (growRow 775 s6Step62EntryGvFresh ++ [])))),s6Step62FrontSigmaArena,[888],s6Step62HeadGBefore,[838],
  s6Step62HeadFvAfter,s6Step62FrontHead,(growRow 777 s6Step62HeadGFresh ++ (growRow 795 s6Step62HeadFFresh ++ (growRow 775 s6Step62HeadGvFresh ++ (growRow 776 s6Step62HeadFvFresh ++ [])))),s6Step62F4Plan,s6Step62CounterDuring,s6Step62CounterWork,s6Step62ExitGvAfter,s6Step62FrontOut,(shrinkRow 777 s6Step62ExitGExtra ++ (shrinkRow 795 s6Step62ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step62ExitGvExtra ++ []))))⟩
theorem s6Step62Front_checked : compileHmrSourceFrontLog s6Step62EntryFBefore s6Step62FrontBank 238 44 ⟨237,237,45,44⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step62FrontLog=some s6Step62FrontPlan := by
  have pairEq : s6Step62FrontPair=⟨s6Step62HeadFRow,s6Step62HeadGRow,s6Step62HeadFvRow,s6Step62HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step62FrontHead=⟨s6Step62ExitFRow,s6Step62ExitGRow,s6Step62ExitFvRow,s6Step62ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step62Add0A=s6Step62FrontHead.f.wires := by decide +kernel
  have gEq : s6Step62Add0B=s6Step62FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step62Add1A=s6Step62FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step62Add1B=s6Step62FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step62EntryFBefore s6Step62FrontBank 238 44 ⟨237,237,45,44⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step62FrontLog s6Step62FrontPlan
  · exact s6Step62Front_entry
  · exact s6Step62EntryBank_checked
  · exact s6Step62Front_sigma
  · rfl
  · exact s6Step62Front_branch
  · rfl
  · simpa only [s6Step62FrontPlan,pairEq] using s6Step62HeadBank_checked
  · simpa only [s6Step62FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step62F4_checked
  · exact s6Step62Counter_checked
  · rfl
  · simpa only [s6Step62FrontPlan,headEq] using s6Step62ExitBank_checked

end ECDSAAdd.Arithmetic.Paper935
