import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEarlyControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16CompleteMoves : List (Wire × Wire) := []
def s2Step16CompleteOut : WindowBank := s2Step16FrontOut.repacked s2Step16CompleteMoves
def s2Step16CompleteLog : HmrEarlyStepLog := ⟨s2Step16FrontLog,s2Step16CompleteMoves,s2Step16EarlyControlLog⟩
theorem s2Step16Complete_repack : s2Step16ExitGvAfter.checkRepack s2Step16CompleteMoves=some s2Step16EarlyControlArena := by rfl
theorem s2Step16Complete_owned : (s2Step16CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step16EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16Complete_apart : List.Disjoint (s2Step16CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [816, 781, 795, 813, 818, 823, 828] := by
  have nd : ((s2Step16CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[816, 781, 795, 813, 818, 823, 828]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step16CompletePlan : HmrEarlyStepPlan := ⟨s2Step16FrontPlan,s2Step16EarlyControlArena,s2Step16EarlyControlPlan,s2Step16CompleteMoves⟩
theorem s2Step16Complete_explicit_checked : compileHmrEarlyStepLog s2Step16EntryFBefore s2Step16FrontBank 256 17 ⟨256,255,18,16⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 5 s2Step16CompleteLog=some s2Step16CompletePlan := by
  let Q := s2Step16EarlyControlPlan
  have hq := s2Step16EarlyControl_plan_checked
  have fv1 : s2Step16CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step16CompleteOut.fv.payload[2]?.getD s2Step16CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step16CompleteOut.fv.payload[3]?.getD s2Step16CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step16CompleteOut.fv.payload[4]?.getD s2Step16CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step16EntryFBefore s2Step16EarlyControlArena s2Step16FrontBank 256 17 ⟨256,255,18,16⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 5 s2Step16CompleteLog s2Step16FrontPlan Q
    s2Step16Front_checked s2Step16Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step16Complete_owned s2Step16Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step16EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 816 s2Step16CompleteOut.fv.second (s2Step16CompleteOut.fv.payload[2]?.getD s2Step16CompleteOut.fv.sign) (s2Step16CompleteOut.fv.payload[3]?.getD s2Step16CompleteOut.fv.sign) (s2Step16CompleteOut.fv.payload[4]?.getD s2Step16CompleteOut.fv.sign) 781 5 s2Step16EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step16Complete_checked : (compileHmrEarlyStepLog s2Step16EntryFBefore s2Step16FrontBank 256 17 ⟨256,255,18,16⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 5 s2Step16CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step16Complete_explicit_checked]
  rfl
def s2Step17CompleteMoves : List (Wire × Wire) := []
def s2Step17CompleteOut : WindowBank := s2Step17FrontOut.repacked s2Step17CompleteMoves
def s2Step17CompleteLog : HmrEarlyStepLog := ⟨s2Step17FrontLog,s2Step17CompleteMoves,s2Step17EarlyControlLog⟩
theorem s2Step17Complete_repack : s2Step17ExitGvAfter.checkRepack s2Step17CompleteMoves=some s2Step17EarlyControlArena := by rfl
theorem s2Step17Complete_owned : (s2Step17CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step17EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17Complete_apart : List.Disjoint (s2Step17CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 784, 795, 813, 818, 823, 828] := by
  have nd : ((s2Step17CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 784, 795, 813, 818, 823, 828]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step17CompletePlan : HmrEarlyStepPlan := ⟨s2Step17FrontPlan,s2Step17EarlyControlArena,s2Step17EarlyControlPlan,s2Step17CompleteMoves⟩
theorem s2Step17Complete_explicit_checked : compileHmrEarlyStepLog s2Step17EntryFBefore s2Step17FrontBank 256 18 ⟨256,255,19,17⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 6 s2Step17CompleteLog=some s2Step17CompletePlan := by
  let Q := s2Step17EarlyControlPlan
  have hq := s2Step17EarlyControl_plan_checked
  have fv1 : s2Step17CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step17CompleteOut.fv.payload[2]?.getD s2Step17CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step17CompleteOut.fv.payload[3]?.getD s2Step17CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step17CompleteOut.fv.payload[4]?.getD s2Step17CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step17EntryFBefore s2Step17EarlyControlArena s2Step17FrontBank 256 18 ⟨256,255,19,17⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 6 s2Step17CompleteLog s2Step17FrontPlan Q
    s2Step17Front_checked s2Step17Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step17Complete_owned s2Step17Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step17EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 777 819 s2Step17CompleteOut.fv.second (s2Step17CompleteOut.fv.payload[2]?.getD s2Step17CompleteOut.fv.sign) (s2Step17CompleteOut.fv.payload[3]?.getD s2Step17CompleteOut.fv.sign) (s2Step17CompleteOut.fv.payload[4]?.getD s2Step17CompleteOut.fv.sign) 784 6 s2Step17EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step17Complete_checked : (compileHmrEarlyStepLog s2Step17EntryFBefore s2Step17FrontBank 256 18 ⟨256,255,19,17⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828] 6 s2Step17CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step17Complete_explicit_checked]
  rfl
def s2Step18CompleteMoves : List (Wire × Wire) := []
def s2Step18CompleteOut : WindowBank := s2Step18FrontOut.repacked s2Step18CompleteMoves
def s2Step18CompleteLog : HmrEarlyStepLog := ⟨s2Step18FrontLog,s2Step18CompleteMoves,s2Step18EarlyControlLog⟩
theorem s2Step18Complete_repack : s2Step18ExitGvAfter.checkRepack s2Step18CompleteMoves=some s2Step18EarlyControlArena := by rfl
theorem s2Step18Complete_owned : (s2Step18CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step18EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18Complete_apart : List.Disjoint (s2Step18CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [821, 782, 795, 813, 818, 823, 828, 833] := by
  have nd : ((s2Step18CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[821, 782, 795, 813, 818, 823, 828, 833]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step18CompletePlan : HmrEarlyStepPlan := ⟨s2Step18FrontPlan,s2Step18EarlyControlArena,s2Step18EarlyControlPlan,s2Step18CompleteMoves⟩
theorem s2Step18Complete_explicit_checked : compileHmrEarlyStepLog s2Step18EntryFBefore s2Step18FrontBank 256 19 ⟨256,255,20,18⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 6 s2Step18CompleteLog=some s2Step18CompletePlan := by
  let Q := s2Step18EarlyControlPlan
  have hq := s2Step18EarlyControl_plan_checked
  have fv1 : s2Step18CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step18CompleteOut.fv.payload[2]?.getD s2Step18CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step18CompleteOut.fv.payload[3]?.getD s2Step18CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step18CompleteOut.fv.payload[4]?.getD s2Step18CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step18EntryFBefore s2Step18EarlyControlArena s2Step18FrontBank 256 19 ⟨256,255,20,18⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 6 s2Step18CompleteLog s2Step18FrontPlan Q
    s2Step18Front_checked s2Step18Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step18Complete_owned s2Step18Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step18EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 821 s2Step18CompleteOut.fv.second (s2Step18CompleteOut.fv.payload[2]?.getD s2Step18CompleteOut.fv.sign) (s2Step18CompleteOut.fv.payload[3]?.getD s2Step18CompleteOut.fv.sign) (s2Step18CompleteOut.fv.payload[4]?.getD s2Step18CompleteOut.fv.sign) 782 6 s2Step18EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step18Complete_checked : (compileHmrEarlyStepLog s2Step18EntryFBefore s2Step18FrontBank 256 19 ⟨256,255,20,18⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 6 s2Step18CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step18Complete_explicit_checked]
  rfl
def s2Step19CompleteMoves : List (Wire × Wire) := []
def s2Step19CompleteOut : WindowBank := s2Step19FrontOut.repacked s2Step19CompleteMoves
def s2Step19CompleteLog : HmrEarlyStepLog := ⟨s2Step19FrontLog,s2Step19CompleteMoves,s2Step19EarlyControlLog⟩
theorem s2Step19Complete_repack : s2Step19ExitGvAfter.checkRepack s2Step19CompleteMoves=some s2Step19EarlyControlArena := by rfl
theorem s2Step19Complete_owned : (s2Step19CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step19EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19Complete_apart : List.Disjoint (s2Step19CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [824, 783, 795, 813, 818, 823, 828, 833] := by
  have nd : ((s2Step19CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[824, 783, 795, 813, 818, 823, 828, 833]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step19CompletePlan : HmrEarlyStepPlan := ⟨s2Step19FrontPlan,s2Step19EarlyControlArena,s2Step19EarlyControlPlan,s2Step19CompleteMoves⟩
theorem s2Step19Complete_explicit_checked : compileHmrEarlyStepLog s2Step19EntryFBefore s2Step19FrontBank 256 20 ⟨256,255,21,19⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 7 s2Step19CompleteLog=some s2Step19CompletePlan := by
  let Q := s2Step19EarlyControlPlan
  have hq := s2Step19EarlyControl_plan_checked
  have fv1 : s2Step19CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step19CompleteOut.fv.payload[2]?.getD s2Step19CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step19CompleteOut.fv.payload[3]?.getD s2Step19CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step19CompleteOut.fv.payload[4]?.getD s2Step19CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step19EntryFBefore s2Step19EarlyControlArena s2Step19FrontBank 256 20 ⟨256,255,21,19⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 7 s2Step19CompleteLog s2Step19FrontPlan Q
    s2Step19Front_checked s2Step19Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step19Complete_owned s2Step19Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step19EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 777 824 s2Step19CompleteOut.fv.second (s2Step19CompleteOut.fv.payload[2]?.getD s2Step19CompleteOut.fv.sign) (s2Step19CompleteOut.fv.payload[3]?.getD s2Step19CompleteOut.fv.sign) (s2Step19CompleteOut.fv.payload[4]?.getD s2Step19CompleteOut.fv.sign) 783 7 s2Step19EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step19Complete_checked : (compileHmrEarlyStepLog s2Step19EntryFBefore s2Step19FrontBank 256 20 ⟨256,255,21,19⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833] 7 s2Step19CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step19Complete_explicit_checked]
  rfl
def s2Step20CompleteMoves : List (Wire × Wire) := []
def s2Step20CompleteOut : WindowBank := s2Step20FrontOut.repacked s2Step20CompleteMoves
def s2Step20CompleteLog : HmrEarlyStepLog := ⟨s2Step20FrontLog,s2Step20CompleteMoves,s2Step20EarlyControlLog⟩
theorem s2Step20Complete_repack : s2Step20ExitGvAfter.checkRepack s2Step20CompleteMoves=some s2Step20EarlyControlArena := by rfl
theorem s2Step20Complete_owned : (s2Step20CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step20EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20Complete_apart : List.Disjoint (s2Step20CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [826, 781, 795, 813, 818, 823, 828, 833, 838] := by
  have nd : ((s2Step20CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[826, 781, 795, 813, 818, 823, 828, 833, 838]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step20CompletePlan : HmrEarlyStepPlan := ⟨s2Step20FrontPlan,s2Step20EarlyControlArena,s2Step20EarlyControlPlan,s2Step20CompleteMoves⟩
theorem s2Step20Complete_explicit_checked : compileHmrEarlyStepLog s2Step20EntryFBefore s2Step20FrontBank 256 21 ⟨256,255,22,20⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 7 s2Step20CompleteLog=some s2Step20CompletePlan := by
  let Q := s2Step20EarlyControlPlan
  have hq := s2Step20EarlyControl_plan_checked
  have fv1 : s2Step20CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step20CompleteOut.fv.payload[2]?.getD s2Step20CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step20CompleteOut.fv.payload[3]?.getD s2Step20CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step20CompleteOut.fv.payload[4]?.getD s2Step20CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step20EntryFBefore s2Step20EarlyControlArena s2Step20FrontBank 256 21 ⟨256,255,22,20⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 7 s2Step20CompleteLog s2Step20FrontPlan Q
    s2Step20Front_checked s2Step20Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step20Complete_owned s2Step20Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step20EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 826 s2Step20CompleteOut.fv.second (s2Step20CompleteOut.fv.payload[2]?.getD s2Step20CompleteOut.fv.sign) (s2Step20CompleteOut.fv.payload[3]?.getD s2Step20CompleteOut.fv.sign) (s2Step20CompleteOut.fv.payload[4]?.getD s2Step20CompleteOut.fv.sign) 781 7 s2Step20EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step20Complete_checked : (compileHmrEarlyStepLog s2Step20EntryFBefore s2Step20FrontBank 256 21 ⟨256,255,22,20⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 7 s2Step20CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step20Complete_explicit_checked]
  rfl
def s2Step21CompleteMoves : List (Wire × Wire) := []
def s2Step21CompleteOut : WindowBank := s2Step21FrontOut.repacked s2Step21CompleteMoves
def s2Step21CompleteLog : HmrEarlyStepLog := ⟨s2Step21FrontLog,s2Step21CompleteMoves,s2Step21EarlyControlLog⟩
theorem s2Step21Complete_repack : s2Step21ExitGvAfter.checkRepack s2Step21CompleteMoves=some s2Step21EarlyControlArena := by rfl
theorem s2Step21Complete_owned : (s2Step21CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step21EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21Complete_apart : List.Disjoint (s2Step21CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 784, 795, 813, 818, 823, 828, 833, 838] := by
  have nd : ((s2Step21CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 784, 795, 813, 818, 823, 828, 833, 838]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step21CompletePlan : HmrEarlyStepPlan := ⟨s2Step21FrontPlan,s2Step21EarlyControlArena,s2Step21EarlyControlPlan,s2Step21CompleteMoves⟩
theorem s2Step21Complete_explicit_checked : compileHmrEarlyStepLog s2Step21EntryFBefore s2Step21FrontBank 256 22 ⟨256,255,23,21⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 8 s2Step21CompleteLog=some s2Step21CompletePlan := by
  let Q := s2Step21EarlyControlPlan
  have hq := s2Step21EarlyControl_plan_checked
  have fv1 : s2Step21CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step21CompleteOut.fv.payload[2]?.getD s2Step21CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step21CompleteOut.fv.payload[3]?.getD s2Step21CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step21CompleteOut.fv.payload[4]?.getD s2Step21CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step21EntryFBefore s2Step21EarlyControlArena s2Step21FrontBank 256 22 ⟨256,255,23,21⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 8 s2Step21CompleteLog s2Step21FrontPlan Q
    s2Step21Front_checked s2Step21Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step21Complete_owned s2Step21Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step21EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 777 829 s2Step21CompleteOut.fv.second (s2Step21CompleteOut.fv.payload[2]?.getD s2Step21CompleteOut.fv.sign) (s2Step21CompleteOut.fv.payload[3]?.getD s2Step21CompleteOut.fv.sign) (s2Step21CompleteOut.fv.payload[4]?.getD s2Step21CompleteOut.fv.sign) 784 8 s2Step21EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step21Complete_checked : (compileHmrEarlyStepLog s2Step21EntryFBefore s2Step21FrontBank 256 22 ⟨256,255,23,21⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838] 8 s2Step21CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step21Complete_explicit_checked]
  rfl
def s2Step22CompleteMoves : List (Wire × Wire) := []
def s2Step22CompleteOut : WindowBank := s2Step22FrontOut.repacked s2Step22CompleteMoves
def s2Step22CompleteLog : HmrEarlyStepLog := ⟨s2Step22FrontLog,s2Step22CompleteMoves,s2Step22EarlyControlLog⟩
theorem s2Step22Complete_repack : s2Step22ExitGvAfter.checkRepack s2Step22CompleteMoves=some s2Step22EarlyControlArena := by rfl
theorem s2Step22Complete_owned : (s2Step22CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step22EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22Complete_apart : List.Disjoint (s2Step22CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [831, 782, 795, 813, 818, 823, 828, 833, 838, 843] := by
  have nd : ((s2Step22CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[831, 782, 795, 813, 818, 823, 828, 833, 838, 843]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step22CompletePlan : HmrEarlyStepPlan := ⟨s2Step22FrontPlan,s2Step22EarlyControlArena,s2Step22EarlyControlPlan,s2Step22CompleteMoves⟩
theorem s2Step22Complete_explicit_checked : compileHmrEarlyStepLog s2Step22EntryFBefore s2Step22FrontBank 256 23 ⟨256,255,24,22⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 8 s2Step22CompleteLog=some s2Step22CompletePlan := by
  let Q := s2Step22EarlyControlPlan
  have hq := s2Step22EarlyControl_plan_checked
  have fv1 : s2Step22CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step22CompleteOut.fv.payload[2]?.getD s2Step22CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step22CompleteOut.fv.payload[3]?.getD s2Step22CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step22CompleteOut.fv.payload[4]?.getD s2Step22CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step22EntryFBefore s2Step22EarlyControlArena s2Step22FrontBank 256 23 ⟨256,255,24,22⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 8 s2Step22CompleteLog s2Step22FrontPlan Q
    s2Step22Front_checked s2Step22Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step22Complete_owned s2Step22Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step22EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 831 s2Step22CompleteOut.fv.second (s2Step22CompleteOut.fv.payload[2]?.getD s2Step22CompleteOut.fv.sign) (s2Step22CompleteOut.fv.payload[3]?.getD s2Step22CompleteOut.fv.sign) (s2Step22CompleteOut.fv.payload[4]?.getD s2Step22CompleteOut.fv.sign) 782 8 s2Step22EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step22Complete_checked : (compileHmrEarlyStepLog s2Step22EntryFBefore s2Step22FrontBank 256 23 ⟨256,255,24,22⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 8 s2Step22CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step22Complete_explicit_checked]
  rfl
def s2Step23CompleteMoves : List (Wire × Wire) := []
def s2Step23CompleteOut : WindowBank := s2Step23FrontOut.repacked s2Step23CompleteMoves
def s2Step23CompleteLog : HmrEarlyStepLog := ⟨s2Step23FrontLog,s2Step23CompleteMoves,s2Step23EarlyControlLog⟩
theorem s2Step23Complete_repack : s2Step23ExitGvAfter.checkRepack s2Step23CompleteMoves=some s2Step23EarlyControlArena := by rfl
theorem s2Step23Complete_owned : (s2Step23CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step23EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23Complete_apart : List.Disjoint (s2Step23CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [834, 783, 795, 813, 818, 823, 828, 833, 838, 843] := by
  have nd : ((s2Step23CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[834, 783, 795, 813, 818, 823, 828, 833, 838, 843]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step23CompletePlan : HmrEarlyStepPlan := ⟨s2Step23FrontPlan,s2Step23EarlyControlArena,s2Step23EarlyControlPlan,s2Step23CompleteMoves⟩
theorem s2Step23Complete_explicit_checked : compileHmrEarlyStepLog s2Step23EntryFBefore s2Step23FrontBank 256 24 ⟨256,255,25,23⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 9 s2Step23CompleteLog=some s2Step23CompletePlan := by
  let Q := s2Step23EarlyControlPlan
  have hq := s2Step23EarlyControl_plan_checked
  have fv1 : s2Step23CompleteOut.fv.second=785 := by decide +kernel
  have fv2 : s2Step23CompleteOut.fv.payload[2]?.getD s2Step23CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step23CompleteOut.fv.payload[3]?.getD s2Step23CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step23CompleteOut.fv.payload[4]?.getD s2Step23CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step23EntryFBefore s2Step23EarlyControlArena s2Step23FrontBank 256 24 ⟨256,255,25,23⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 9 s2Step23CompleteLog s2Step23FrontPlan Q
    s2Step23Front_checked s2Step23Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step23Complete_owned s2Step23Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step23EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 777 834 s2Step23CompleteOut.fv.second (s2Step23CompleteOut.fv.payload[2]?.getD s2Step23CompleteOut.fv.sign) (s2Step23CompleteOut.fv.payload[3]?.getD s2Step23CompleteOut.fv.sign) (s2Step23CompleteOut.fv.payload[4]?.getD s2Step23CompleteOut.fv.sign) 783 9 s2Step23EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step23Complete_checked : (compileHmrEarlyStepLog s2Step23EntryFBefore s2Step23FrontBank 256 24 ⟨256,255,25,23⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843] 9 s2Step23CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step23Complete_explicit_checked]
  rfl
def s2Step24CompleteMoves : List (Wire × Wire) := [(785,254),(779,767)]
def s2Step24CompleteOut : WindowBank := s2Step24FrontOut.repacked s2Step24CompleteMoves
def s2Step24CompleteLog : HmrEarlyStepLog := ⟨s2Step24FrontLog,s2Step24CompleteMoves,s2Step24EarlyControlLog⟩
def s2Step24CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,767),(768,780),(781,782),(786,839),(843,844),(848,849)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step24CompleteRelocationMove0Borrowed : Arena := ⟨s2Step24ExitGvAfter.live∪{254},Finset.union_subset s2Step24ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step24CompleteRelocation_move0_owned : 785∈s2Step24ExitGvAfter.live := by norm_num [s2Step24ExitGvAfter,arenaWires]
theorem s2Step24CompleteRelocation_move0_reserve : s2Step24ExitGvAfter.reserve {254}=some s2Step24CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24ExitGvAfter,arenaWires]
  · rfl
theorem s2Step24CompleteRelocation_move0_retire : s2Step24CompleteRelocationMove0Borrowed.retireSet {785}=s2Step24CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step24CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24CompleteRelocationMove0Borrowed,s2Step24ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step24CompleteRelocationMove1Borrowed : Arena := ⟨s2Step24CompleteRelocationMove0After.live∪{767},Finset.union_subset s2Step24CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step24CompleteRelocation_move1_owned : 779∈s2Step24CompleteRelocationMove0After.live := by norm_num [s2Step24CompleteRelocationMove0After,arenaWires]
theorem s2Step24CompleteRelocation_move1_reserve : s2Step24CompleteRelocationMove0After.reserve {767}=some s2Step24CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step24CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step24CompleteRelocation_move1_retire : s2Step24CompleteRelocationMove1Borrowed.retireSet {779}=s2Step24EarlyControlArena := by
  unfold Arena.retireSet s2Step24EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step24CompleteRelocationMove1Borrowed,s2Step24CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step24CompleteRelocation_checked : s2Step24ExitGvAfter.checkRepack [(785,254),(779,767)]=some s2Step24EarlyControlArena := by
  have tail2 : s2Step24EarlyControlArena.checkRepack []=some s2Step24EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step24CompleteRelocationMove0After s2Step24CompleteRelocationMove1Borrowed s2Step24EarlyControlArena s2Step24EarlyControlArena 779 767 []
    s2Step24CompleteRelocation_move1_owned s2Step24CompleteRelocation_move1_reserve s2Step24CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step24ExitGvAfter s2Step24CompleteRelocationMove0Borrowed s2Step24CompleteRelocationMove0After s2Step24EarlyControlArena 785 254 [(779,767)]
    s2Step24CompleteRelocation_move0_owned s2Step24CompleteRelocation_move0_reserve s2Step24CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step24Complete_repack : s2Step24ExitGvAfter.checkRepack s2Step24CompleteMoves=some s2Step24EarlyControlArena := by
  simpa only [s2Step24CompleteMoves] using s2Step24CompleteRelocation_checked
theorem s2Step24Complete_owned : (s2Step24CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step24EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<782) ∨ (786≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24Complete_apart : List.Disjoint (s2Step24CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [836, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848] := by
  have nd : ((s2Step24CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[836, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step24CompletePlan : HmrEarlyStepPlan := ⟨s2Step24FrontPlan,s2Step24EarlyControlArena,s2Step24EarlyControlPlan,s2Step24CompleteMoves⟩
theorem s2Step24Complete_explicit_checked : compileHmrEarlyStepLog s2Step24EntryFBefore s2Step24FrontBank 256 25 ⟨255,254,25,24⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 9 s2Step24CompleteLog=some s2Step24CompletePlan := by
  let Q := s2Step24EarlyControlPlan
  have hq := s2Step24EarlyControl_plan_checked
  have fv1 : s2Step24CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step24CompleteOut.fv.payload[2]?.getD s2Step24CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step24CompleteOut.fv.payload[3]?.getD s2Step24CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step24CompleteOut.fv.payload[4]?.getD s2Step24CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step24EntryFBefore s2Step24EarlyControlArena s2Step24FrontBank 256 25 ⟨255,254,25,24⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 9 s2Step24CompleteLog s2Step24FrontPlan Q
    s2Step24Front_checked s2Step24Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step24Complete_owned s2Step24Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step24EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 836 s2Step24CompleteOut.fv.second (s2Step24CompleteOut.fv.payload[2]?.getD s2Step24CompleteOut.fv.sign) (s2Step24CompleteOut.fv.payload[3]?.getD s2Step24CompleteOut.fv.sign) (s2Step24CompleteOut.fv.payload[4]?.getD s2Step24CompleteOut.fv.sign) 781 9 s2Step24EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step24Complete_checked : (compileHmrEarlyStepLog s2Step24EntryFBefore s2Step24FrontBank 256 25 ⟨255,254,25,24⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 9 s2Step24CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step24Complete_explicit_checked]
  rfl
def s2Step25CompleteMoves : List (Wire × Wire) := []
def s2Step25CompleteOut : WindowBank := s2Step25FrontOut.repacked s2Step25CompleteMoves
def s2Step25CompleteLog : HmrEarlyStepLog := ⟨s2Step25FrontLog,s2Step25CompleteMoves,s2Step25EarlyControlLog⟩
theorem s2Step25Complete_repack : s2Step25ExitGvAfter.checkRepack s2Step25CompleteMoves=some s2Step25EarlyControlArena := by rfl
theorem s2Step25Complete_owned : (s2Step25CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step25EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25Complete_apart : List.Disjoint (s2Step25CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [779, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848] := by
  have nd : ((s2Step25CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[779, 785, 795, 813, 818, 823, 828, 833, 838, 843, 848]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step25CompletePlan : HmrEarlyStepPlan := ⟨s2Step25FrontPlan,s2Step25EarlyControlArena,s2Step25EarlyControlPlan,s2Step25CompleteMoves⟩
theorem s2Step25Complete_explicit_checked : compileHmrEarlyStepLog s2Step25EntryFBefore s2Step25FrontBank 255 25 ⟨255,254,26,25⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 10 s2Step25CompleteLog=some s2Step25CompletePlan := by
  let Q := s2Step25EarlyControlPlan
  have hq := s2Step25EarlyControl_plan_checked
  have fv1 : s2Step25CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step25CompleteOut.fv.payload[2]?.getD s2Step25CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step25CompleteOut.fv.payload[3]?.getD s2Step25CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step25CompleteOut.fv.payload[4]?.getD s2Step25CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step25EntryFBefore s2Step25EarlyControlArena s2Step25FrontBank 255 25 ⟨255,254,26,25⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 10 s2Step25CompleteLog s2Step25FrontPlan Q
    s2Step25Front_checked s2Step25Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step25Complete_owned s2Step25Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step25EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 777 779 s2Step25CompleteOut.fv.second (s2Step25CompleteOut.fv.payload[2]?.getD s2Step25CompleteOut.fv.sign) (s2Step25CompleteOut.fv.payload[3]?.getD s2Step25CompleteOut.fv.sign) (s2Step25CompleteOut.fv.payload[4]?.getD s2Step25CompleteOut.fv.sign) 785 10 s2Step25EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step25Complete_checked : (compileHmrEarlyStepLog s2Step25EntryFBefore s2Step25FrontBank 255 25 ⟨255,254,26,25⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848] 10 s2Step25CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step25Complete_explicit_checked]
  rfl
def s2Step26CompleteMoves : List (Wire × Wire) := []
def s2Step26CompleteOut : WindowBank := s2Step26FrontOut.repacked s2Step26CompleteMoves
def s2Step26CompleteLog : HmrEarlyStepLog := ⟨s2Step26FrontLog,s2Step26CompleteMoves,s2Step26EarlyControlLog⟩
theorem s2Step26Complete_repack : s2Step26ExitGvAfter.checkRepack s2Step26CompleteMoves=some s2Step26EarlyControlArena := by rfl
theorem s2Step26Complete_owned : (s2Step26CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step26EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26Complete_apart : List.Disjoint (s2Step26CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [840, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850] := by
  have nd : ((s2Step26CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[840, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step26CompletePlan : HmrEarlyStepPlan := ⟨s2Step26FrontPlan,s2Step26EarlyControlArena,s2Step26EarlyControlPlan,s2Step26CompleteMoves⟩
theorem s2Step26Complete_explicit_checked : compileHmrEarlyStepLog s2Step26EntryFBefore s2Step26FrontBank 255 26 ⟨255,254,27,25⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 10 s2Step26CompleteLog=some s2Step26CompletePlan := by
  let Q := s2Step26EarlyControlPlan
  have hq := s2Step26EarlyControl_plan_checked
  have fv1 : s2Step26CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step26CompleteOut.fv.payload[2]?.getD s2Step26CompleteOut.fv.sign=787 := by decide +kernel
  have fv3 : s2Step26CompleteOut.fv.payload[3]?.getD s2Step26CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step26CompleteOut.fv.payload[4]?.getD s2Step26CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step26EntryFBefore s2Step26EarlyControlArena s2Step26FrontBank 255 26 ⟨255,254,27,25⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 10 s2Step26CompleteLog s2Step26FrontPlan Q
    s2Step26Front_checked s2Step26Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step26Complete_owned s2Step26Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step26EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 840 s2Step26CompleteOut.fv.second (s2Step26CompleteOut.fv.payload[2]?.getD s2Step26CompleteOut.fv.sign) (s2Step26CompleteOut.fv.payload[3]?.getD s2Step26CompleteOut.fv.sign) (s2Step26CompleteOut.fv.payload[4]?.getD s2Step26CompleteOut.fv.sign) 839 10 s2Step26EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step26Complete_checked : (compileHmrEarlyStepLog s2Step26EntryFBefore s2Step26FrontBank 255 26 ⟨255,254,27,25⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 10 s2Step26CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step26Complete_explicit_checked]
  rfl
def s2Step27CompleteMoves : List (Wire × Wire) := [(787,253),(778,766)]
def s2Step27CompleteOut : WindowBank := s2Step27FrontOut.repacked s2Step27CompleteMoves
def s2Step27CompleteLog : HmrEarlyStepLog := ⟨s2Step27FrontLog,s2Step27CompleteMoves,s2Step27EarlyControlLog⟩
def s2Step27CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,766),(767,779),(780,781),(782,785),(786,787),(788,839),(840,841),(842,844),(848,849),(850,851)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step27CompleteRelocationMove0Borrowed : Arena := ⟨s2Step27ExitGvAfter.live∪{253},Finset.union_subset s2Step27ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step27CompleteRelocation_move0_owned : 787∈s2Step27ExitGvAfter.live := by norm_num [s2Step27ExitGvAfter,arenaWires]
theorem s2Step27CompleteRelocation_move0_reserve : s2Step27ExitGvAfter.reserve {253}=some s2Step27CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step27ExitGvAfter,arenaWires]
  · rfl
theorem s2Step27CompleteRelocation_move0_retire : s2Step27CompleteRelocationMove0Borrowed.retireSet {787}=s2Step27CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step27CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step27CompleteRelocationMove0Borrowed,s2Step27ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step27CompleteRelocationMove1Borrowed : Arena := ⟨s2Step27CompleteRelocationMove0After.live∪{766},Finset.union_subset s2Step27CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step27CompleteRelocation_move1_owned : 778∈s2Step27CompleteRelocationMove0After.live := by norm_num [s2Step27CompleteRelocationMove0After,arenaWires]
theorem s2Step27CompleteRelocation_move1_reserve : s2Step27CompleteRelocationMove0After.reserve {766}=some s2Step27CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step27CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step27CompleteRelocation_move1_retire : s2Step27CompleteRelocationMove1Borrowed.retireSet {778}=s2Step27EarlyControlArena := by
  unfold Arena.retireSet s2Step27EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step27CompleteRelocationMove1Borrowed,s2Step27CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step27CompleteRelocation_checked : s2Step27ExitGvAfter.checkRepack [(787,253),(778,766)]=some s2Step27EarlyControlArena := by
  have tail2 : s2Step27EarlyControlArena.checkRepack []=some s2Step27EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step27CompleteRelocationMove0After s2Step27CompleteRelocationMove1Borrowed s2Step27EarlyControlArena s2Step27EarlyControlArena 778 766 []
    s2Step27CompleteRelocation_move1_owned s2Step27CompleteRelocation_move1_reserve s2Step27CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step27ExitGvAfter s2Step27CompleteRelocationMove0Borrowed s2Step27CompleteRelocationMove0After s2Step27EarlyControlArena 787 253 [(778,766)]
    s2Step27CompleteRelocation_move0_owned s2Step27CompleteRelocation_move0_reserve s2Step27CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step27Complete_repack : s2Step27ExitGvAfter.checkRepack s2Step27CompleteMoves=some s2Step27EarlyControlArena := by
  simpa only [s2Step27CompleteMoves] using s2Step27CompleteRelocation_checked
theorem s2Step27Complete_owned : (s2Step27CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step27EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27Complete_apart : List.Disjoint (s2Step27CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [783, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850] := by
  have nd : ((s2Step27CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[783, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step27CompletePlan : HmrEarlyStepPlan := ⟨s2Step27FrontPlan,s2Step27EarlyControlArena,s2Step27EarlyControlPlan,s2Step27CompleteMoves⟩
theorem s2Step27Complete_explicit_checked : compileHmrEarlyStepLog s2Step27EntryFBefore s2Step27FrontBank 255 27 ⟨254,253,28,26⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 11 s2Step27CompleteLog=some s2Step27CompletePlan := by
  let Q := s2Step27EarlyControlPlan
  have hq := s2Step27EarlyControl_plan_checked
  have fv1 : s2Step27CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step27CompleteOut.fv.payload[2]?.getD s2Step27CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step27CompleteOut.fv.payload[3]?.getD s2Step27CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step27CompleteOut.fv.payload[4]?.getD s2Step27CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step27EntryFBefore s2Step27EarlyControlArena s2Step27FrontBank 255 27 ⟨254,253,28,26⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 11 s2Step27CompleteLog s2Step27FrontPlan Q
    s2Step27Front_checked s2Step27Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step27Complete_owned s2Step27Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step27EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 777 783 s2Step27CompleteOut.fv.second (s2Step27CompleteOut.fv.payload[2]?.getD s2Step27CompleteOut.fv.sign) (s2Step27CompleteOut.fv.payload[3]?.getD s2Step27CompleteOut.fv.sign) (s2Step27CompleteOut.fv.payload[4]?.getD s2Step27CompleteOut.fv.sign) 780 11 s2Step27EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step27Complete_checked : (compileHmrEarlyStepLog s2Step27EntryFBefore s2Step27FrontBank 255 27 ⟨254,253,28,26⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850] 11 s2Step27CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step27Complete_explicit_checked]
  rfl
def s2Step28CompleteMoves : List (Wire × Wire) := []
def s2Step28CompleteOut : WindowBank := s2Step28FrontOut.repacked s2Step28CompleteMoves
def s2Step28CompleteLog : HmrEarlyStepLog := ⟨s2Step28FrontLog,s2Step28CompleteMoves,s2Step28EarlyControlLog⟩
theorem s2Step28Complete_repack : s2Step28ExitGvAfter.checkRepack s2Step28CompleteMoves=some s2Step28EarlyControlArena := by rfl
theorem s2Step28Complete_owned : (s2Step28CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step28EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28Complete_apart : List.Disjoint (s2Step28CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [787, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] := by
  have nd : ((s2Step28CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[787, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step28CompletePlan : HmrEarlyStepPlan := ⟨s2Step28FrontPlan,s2Step28EarlyControlArena,s2Step28EarlyControlPlan,s2Step28CompleteMoves⟩
theorem s2Step28Complete_explicit_checked : compileHmrEarlyStepLog s2Step28EntryFBefore s2Step28FrontBank 254 28 ⟨254,253,28,27⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 11 s2Step28CompleteLog=some s2Step28CompletePlan := by
  let Q := s2Step28EarlyControlPlan
  have hq := s2Step28EarlyControl_plan_checked
  have fv1 : s2Step28CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step28CompleteOut.fv.payload[2]?.getD s2Step28CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step28CompleteOut.fv.payload[3]?.getD s2Step28CompleteOut.fv.sign=789 := by decide +kernel
  have fv4 : s2Step28CompleteOut.fv.payload[4]?.getD s2Step28CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step28EntryFBefore s2Step28EarlyControlArena s2Step28FrontBank 254 28 ⟨254,253,28,27⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 11 s2Step28CompleteLog s2Step28FrontPlan Q
    s2Step28Front_checked s2Step28Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step28Complete_owned s2Step28Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step28EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 787 s2Step28CompleteOut.fv.second (s2Step28CompleteOut.fv.payload[2]?.getD s2Step28CompleteOut.fv.sign) (s2Step28CompleteOut.fv.payload[3]?.getD s2Step28CompleteOut.fv.sign) (s2Step28CompleteOut.fv.payload[4]?.getD s2Step28CompleteOut.fv.sign) 779 11 s2Step28EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step28Complete_checked : (compileHmrEarlyStepLog s2Step28EntryFBefore s2Step28FrontBank 254 28 ⟨254,253,28,27⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 11 s2Step28CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step28Complete_explicit_checked]
  rfl
def s2Step29CompleteMoves : List (Wire × Wire) := [(789,252),(786,765)]
def s2Step29CompleteOut : WindowBank := s2Step29FrontOut.repacked s2Step29CompleteMoves
def s2Step29CompleteLog : HmrEarlyStepLog := ⟨s2Step29FrontLog,s2Step29CompleteMoves,s2Step29EarlyControlLog⟩
def s2Step29CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,765),(766,779),(782,785),(786,787),(788,789),(790,844),(848,849),(850,851),(852,853)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s2Step29CompleteRelocationMove0Borrowed : Arena := ⟨s2Step29ExitGvAfter.live∪{252},Finset.union_subset s2Step29ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step29CompleteRelocation_move0_owned : 789∈s2Step29ExitGvAfter.live := by norm_num [s2Step29ExitGvAfter,arenaWires]
theorem s2Step29CompleteRelocation_move0_reserve : s2Step29ExitGvAfter.reserve {252}=some s2Step29CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step29ExitGvAfter,arenaWires]
  · rfl
theorem s2Step29CompleteRelocation_move0_retire : s2Step29CompleteRelocationMove0Borrowed.retireSet {789}=s2Step29CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step29CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step29CompleteRelocationMove0Borrowed,s2Step29ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
def s2Step29CompleteRelocationMove1Borrowed : Arena := ⟨s2Step29CompleteRelocationMove0After.live∪{765},Finset.union_subset s2Step29CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s2Step29CompleteRelocation_move1_owned : 786∈s2Step29CompleteRelocationMove0After.live := by norm_num [s2Step29CompleteRelocationMove0After,arenaWires]
theorem s2Step29CompleteRelocation_move1_reserve : s2Step29CompleteRelocationMove0After.reserve {765}=some s2Step29CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step29CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s2Step29CompleteRelocation_move1_retire : s2Step29CompleteRelocationMove1Borrowed.retireSet {786}=s2Step29EarlyControlArena := by
  unfold Arena.retireSet s2Step29EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step29CompleteRelocationMove1Borrowed,s2Step29CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega
theorem s2Step29CompleteRelocation_checked : s2Step29ExitGvAfter.checkRepack [(789,252),(786,765)]=some s2Step29EarlyControlArena := by
  have tail2 : s2Step29EarlyControlArena.checkRepack []=some s2Step29EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step29CompleteRelocationMove0After s2Step29CompleteRelocationMove1Borrowed s2Step29EarlyControlArena s2Step29EarlyControlArena 786 765 []
    s2Step29CompleteRelocation_move1_owned s2Step29CompleteRelocation_move1_reserve s2Step29CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step29ExitGvAfter s2Step29CompleteRelocationMove0Borrowed s2Step29CompleteRelocationMove0After s2Step29EarlyControlArena 789 252 [(786,765)]
    s2Step29CompleteRelocation_move0_owned s2Step29CompleteRelocation_move0_reserve s2Step29CompleteRelocation_move0_retire tail1
  exact tail0
theorem s2Step29Complete_repack : s2Step29ExitGvAfter.checkRepack s2Step29CompleteMoves=some s2Step29EarlyControlArena := by
  simpa only [s2Step29CompleteMoves] using s2Step29CompleteRelocation_checked
theorem s2Step29Complete_owned : (s2Step29CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step29EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29Complete_apart : List.Disjoint (s2Step29CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] := by
  have nd : ((s2Step29CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step29CompletePlan : HmrEarlyStepPlan := ⟨s2Step29FrontPlan,s2Step29EarlyControlArena,s2Step29EarlyControlPlan,s2Step29CompleteMoves⟩
theorem s2Step29Complete_explicit_checked : compileHmrEarlyStepLog s2Step29EntryFBefore s2Step29FrontBank 254 28 ⟨253,252,29,27⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 12 s2Step29CompleteLog=some s2Step29CompletePlan := by
  let Q := s2Step29EarlyControlPlan
  have hq := s2Step29EarlyControl_plan_checked
  have fv1 : s2Step29CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step29CompleteOut.fv.payload[2]?.getD s2Step29CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step29CompleteOut.fv.payload[3]?.getD s2Step29CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step29CompleteOut.fv.payload[4]?.getD s2Step29CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step29EntryFBefore s2Step29EarlyControlArena s2Step29FrontBank 254 28 ⟨253,252,29,27⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 12 s2Step29CompleteLog s2Step29FrontPlan Q
    s2Step29Front_checked s2Step29Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step29Complete_owned s2Step29Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step29EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 777 778 s2Step29CompleteOut.fv.second (s2Step29CompleteOut.fv.payload[2]?.getD s2Step29CompleteOut.fv.sign) (s2Step29CompleteOut.fv.payload[3]?.getD s2Step29CompleteOut.fv.sign) (s2Step29CompleteOut.fv.payload[4]?.getD s2Step29CompleteOut.fv.sign) 839 12 s2Step29EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step29Complete_checked : (compileHmrEarlyStepLog s2Step29EntryFBefore s2Step29FrontBank 254 28 ⟨253,252,29,27⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852] 12 s2Step29CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step29Complete_explicit_checked]
  rfl
def s2Step30CompleteMoves : List (Wire × Wire) := []
def s2Step30CompleteOut : WindowBank := s2Step30FrontOut.repacked s2Step30CompleteMoves
def s2Step30CompleteLog : HmrEarlyStepLog := ⟨s2Step30FrontLog,s2Step30CompleteMoves,s2Step30EarlyControlLog⟩
theorem s2Step30Complete_repack : s2Step30ExitGvAfter.checkRepack s2Step30CompleteMoves=some s2Step30EarlyControlArena := by rfl
theorem s2Step30Complete_owned : (s2Step30CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step30EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30Complete_apart : List.Disjoint (s2Step30CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [789, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] := by
  have nd : ((s2Step30CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[789, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step30CompletePlan : HmrEarlyStepPlan := ⟨s2Step30FrontPlan,s2Step30EarlyControlArena,s2Step30EarlyControlPlan,s2Step30CompleteMoves⟩
theorem s2Step30Complete_explicit_checked : compileHmrEarlyStepLog s2Step30EntryFBefore s2Step30FrontBank 253 29 ⟨253,252,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 12 s2Step30CompleteLog=some s2Step30CompletePlan := by
  let Q := s2Step30EarlyControlPlan
  have hq := s2Step30EarlyControl_plan_checked
  have fv1 : s2Step30CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step30CompleteOut.fv.payload[2]?.getD s2Step30CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step30CompleteOut.fv.payload[3]?.getD s2Step30CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step30CompleteOut.fv.payload[4]?.getD s2Step30CompleteOut.fv.sign=791 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step30EntryFBefore s2Step30EarlyControlArena s2Step30FrontBank 253 29 ⟨253,252,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 12 s2Step30CompleteLog s2Step30FrontPlan Q
    s2Step30Front_checked s2Step30Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step30Complete_owned s2Step30Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step30EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 789 s2Step30CompleteOut.fv.second (s2Step30CompleteOut.fv.payload[2]?.getD s2Step30CompleteOut.fv.sign) (s2Step30CompleteOut.fv.payload[3]?.getD s2Step30CompleteOut.fv.sign) (s2Step30CompleteOut.fv.payload[4]?.getD s2Step30CompleteOut.fv.sign) 787 12 s2Step30EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step30Complete_checked : (compileHmrEarlyStepLog s2Step30EntryFBefore s2Step30FrontBank 253 29 ⟨253,252,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 12 s2Step30CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step30Complete_explicit_checked]
  rfl
def s2Step31CompleteMoves : List (Wire × Wire) := [(791,251)]
def s2Step31CompleteOut : WindowBank := s2Step31FrontOut.repacked s2Step31CompleteMoves
def s2Step31CompleteLog : HmrEarlyStepLog := ⟨s2Step31FrontLog,s2Step31CompleteMoves,s2Step31EarlyControlLog⟩
def s2Step31CompleteMoveArena : Arena := ⟨s2Step31ExitGvAfter.live∪{251},Finset.union_subset s2Step31ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s2Step31Complete_repack : s2Step31ExitGvAfter.checkRepack s2Step31CompleteMoves=some s2Step31EarlyControlArena := by
  have owned : 791∈s2Step31ExitGvAfter.live := by norm_num [s2Step31ExitGvAfter,arenaWires]
  have reserve : s2Step31ExitGvAfter.reserve {251}=some s2Step31CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step31ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step31CompleteMoveArena.retireSet {791}=s2Step31EarlyControlArena := by
    unfold Arena.retireSet s2Step31EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step31CompleteMoveArena,s2Step31ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step31CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step31CompleteMoveArena.retireSet {791}).checkRepack []=some s2Step31EarlyControlArena
  rw [retired]
  rfl
theorem s2Step31Complete_owned : (s2Step31CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step31EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step31EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31Complete_apart : List.Disjoint (s2Step31CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] := by
  have nd : ((s2Step31CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s2Step31CompletePlan : HmrEarlyStepPlan := ⟨s2Step31FrontPlan,s2Step31EarlyControlArena,s2Step31EarlyControlPlan,s2Step31CompleteMoves⟩
theorem s2Step31Complete_explicit_checked : compileHmrEarlyStepLog s2Step31EntryFBefore s2Step31FrontBank 253 29 ⟨253,251,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 13 s2Step31CompleteLog=some s2Step31CompletePlan := by
  let Q := s2Step31EarlyControlPlan
  have hq := s2Step31EarlyControl_plan_checked
  have fv1 : s2Step31CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step31CompleteOut.fv.payload[2]?.getD s2Step31CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step31CompleteOut.fv.payload[3]?.getD s2Step31CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step31CompleteOut.fv.payload[4]?.getD s2Step31CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step31EntryFBefore s2Step31EarlyControlArena s2Step31FrontBank 253 29 ⟨253,251,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 13 s2Step31CompleteLog s2Step31FrontPlan Q
    s2Step31Front_checked s2Step31Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step31Complete_owned s2Step31Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step31EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 777 786 s2Step31CompleteOut.fv.second (s2Step31CompleteOut.fv.payload[2]?.getD s2Step31CompleteOut.fv.sign) (s2Step31CompleteOut.fv.payload[3]?.getD s2Step31CompleteOut.fv.sign) (s2Step31CompleteOut.fv.payload[4]?.getD s2Step31CompleteOut.fv.sign) 779 13 s2Step31EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s2Step31Complete_checked : (compileHmrEarlyStepLog s2Step31EntryFBefore s2Step31FrontBank 253 29 ⟨253,251,29,28⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853] 13 s2Step31CompleteLog).map (fun _ => true)=some true := by
  rw [s2Step31Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
