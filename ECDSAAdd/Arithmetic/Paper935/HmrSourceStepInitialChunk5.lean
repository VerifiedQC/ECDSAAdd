import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl1
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6EarlyControl3
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInitial
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk4

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
def s6Step16CompleteMoves : List (Wire × Wire) := []
def s6Step16CompleteOut : WindowBank := s6Step16FrontOut.repacked s6Step16CompleteMoves
def s6Step16CompleteLog : HmrEarlyStepLog := ⟨s6Step16FrontLog,s6Step16CompleteMoves,s6Step16EarlyControlLog⟩
theorem s6Step16Complete_repack : s6Step16ExitGvAfter.checkRepack s6Step16CompleteMoves=some s6Step16EarlyControlArena := by rfl
theorem s6Step16Complete_owned : (s6Step16CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step16EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step16EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16Complete_apart : List.Disjoint (s6Step16CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [780, 813, 895, 870, 872, 883, 831] := by
  have nd : ((s6Step16CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[780, 813, 895, 870, 872, 883, 831]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step16CompletePlan : HmrEarlyStepPlan := ⟨s6Step16FrontPlan,s6Step16EarlyControlArena,s6Step16EarlyControlPlan,s6Step16CompleteMoves⟩
theorem s6Step16Complete_explicit_checked : compileHmrEarlyStepLog s6Step16EntryFBefore s6Step16FrontBank 256 17 ⟨256,255,18,16⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 5 s6Step16CompleteLog=some s6Step16CompletePlan := by
  let Q := s6Step16EarlyControlPlan
  have hq := s6Step16EarlyControl_plan_checked
  have fv1 : s6Step16CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step16CompleteOut.fv.payload[2]?.getD s6Step16CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step16CompleteOut.fv.payload[3]?.getD s6Step16CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step16CompleteOut.fv.payload[4]?.getD s6Step16CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step16EntryFBefore s6Step16EarlyControlArena s6Step16FrontBank 256 17 ⟨256,255,18,16⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 5 s6Step16CompleteLog s6Step16FrontPlan Q
    s6Step16Front_checked s6Step16Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step16Complete_owned s6Step16Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step16EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 780 s6Step16CompleteOut.fv.second (s6Step16CompleteOut.fv.payload[2]?.getD s6Step16CompleteOut.fv.sign) (s6Step16CompleteOut.fv.payload[3]?.getD s6Step16CompleteOut.fv.sign) (s6Step16CompleteOut.fv.payload[4]?.getD s6Step16CompleteOut.fv.sign) 813 5 s6Step16EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step16Complete_checked : (compileHmrEarlyStepLog s6Step16EntryFBefore s6Step16FrontBank 256 17 ⟨256,255,18,16⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 5 s6Step16CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step16Complete_explicit_checked]
  rfl
def s6Step17CompleteMoves : List (Wire × Wire) := []
def s6Step17CompleteOut : WindowBank := s6Step17FrontOut.repacked s6Step17CompleteMoves
def s6Step17CompleteLog : HmrEarlyStepLog := ⟨s6Step17FrontLog,s6Step17CompleteMoves,s6Step17EarlyControlLog⟩
theorem s6Step17Complete_repack : s6Step17ExitGvAfter.checkRepack s6Step17CompleteMoves=some s6Step17EarlyControlArena := by rfl
theorem s6Step17Complete_owned : (s6Step17CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step17EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step17EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17Complete_apart : List.Disjoint (s6Step17CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 860, 895, 870, 872, 883, 831] := by
  have nd : ((s6Step17CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 860, 895, 870, 872, 883, 831]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step17CompletePlan : HmrEarlyStepPlan := ⟨s6Step17FrontPlan,s6Step17EarlyControlArena,s6Step17EarlyControlPlan,s6Step17CompleteMoves⟩
theorem s6Step17Complete_explicit_checked : compileHmrEarlyStepLog s6Step17EntryFBefore s6Step17FrontBank 256 18 ⟨256,255,19,17⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 6 s6Step17CompleteLog=some s6Step17CompletePlan := by
  let Q := s6Step17EarlyControlPlan
  have hq := s6Step17EarlyControl_plan_checked
  have fv1 : s6Step17CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step17CompleteOut.fv.payload[2]?.getD s6Step17CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step17CompleteOut.fv.payload[3]?.getD s6Step17CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step17CompleteOut.fv.payload[4]?.getD s6Step17CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step17EntryFBefore s6Step17EarlyControlArena s6Step17FrontBank 256 18 ⟨256,255,19,17⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 6 s6Step17CompleteLog s6Step17FrontPlan Q
    s6Step17Front_checked s6Step17Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step17Complete_owned s6Step17Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step17EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 769 888 s6Step17CompleteOut.fv.second (s6Step17CompleteOut.fv.payload[2]?.getD s6Step17CompleteOut.fv.sign) (s6Step17CompleteOut.fv.payload[3]?.getD s6Step17CompleteOut.fv.sign) (s6Step17CompleteOut.fv.payload[4]?.getD s6Step17CompleteOut.fv.sign) 860 6 s6Step17EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step17Complete_checked : (compileHmrEarlyStepLog s6Step17EntryFBefore s6Step17FrontBank 256 18 ⟨256,255,19,17⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831] 6 s6Step17CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step17Complete_explicit_checked]
  rfl
def s6Step18CompleteMoves : List (Wire × Wire) := []
def s6Step18CompleteOut : WindowBank := s6Step18FrontOut.repacked s6Step18CompleteMoves
def s6Step18CompleteLog : HmrEarlyStepLog := ⟨s6Step18FrontLog,s6Step18CompleteMoves,s6Step18EarlyControlLog⟩
theorem s6Step18Complete_repack : s6Step18ExitGvAfter.checkRepack s6Step18CompleteMoves=some s6Step18EarlyControlArena := by rfl
theorem s6Step18Complete_owned : (s6Step18CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step18EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step18EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18Complete_apart : List.Disjoint (s6Step18CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [778, 862, 895, 870, 872, 883, 831, 852] := by
  have nd : ((s6Step18CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[778, 862, 895, 870, 872, 883, 831, 852]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step18CompletePlan : HmrEarlyStepPlan := ⟨s6Step18FrontPlan,s6Step18EarlyControlArena,s6Step18EarlyControlPlan,s6Step18CompleteMoves⟩
theorem s6Step18Complete_explicit_checked : compileHmrEarlyStepLog s6Step18EntryFBefore s6Step18FrontBank 256 19 ⟨256,255,20,18⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 6 s6Step18CompleteLog=some s6Step18CompletePlan := by
  let Q := s6Step18EarlyControlPlan
  have hq := s6Step18EarlyControl_plan_checked
  have fv1 : s6Step18CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step18CompleteOut.fv.payload[2]?.getD s6Step18CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step18CompleteOut.fv.payload[3]?.getD s6Step18CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step18CompleteOut.fv.payload[4]?.getD s6Step18CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step18EntryFBefore s6Step18EarlyControlArena s6Step18FrontBank 256 19 ⟨256,255,20,18⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 6 s6Step18CompleteLog s6Step18FrontPlan Q
    s6Step18Front_checked s6Step18Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step18Complete_owned s6Step18Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step18EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 778 s6Step18CompleteOut.fv.second (s6Step18CompleteOut.fv.payload[2]?.getD s6Step18CompleteOut.fv.sign) (s6Step18CompleteOut.fv.payload[3]?.getD s6Step18CompleteOut.fv.sign) (s6Step18CompleteOut.fv.payload[4]?.getD s6Step18CompleteOut.fv.sign) 862 6 s6Step18EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step18Complete_checked : (compileHmrEarlyStepLog s6Step18EntryFBefore s6Step18FrontBank 256 19 ⟨256,255,20,18⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 6 s6Step18CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step18Complete_explicit_checked]
  rfl
def s6Step19CompleteMoves : List (Wire × Wire) := []
def s6Step19CompleteOut : WindowBank := s6Step19FrontOut.repacked s6Step19CompleteMoves
def s6Step19CompleteLog : HmrEarlyStepLog := ⟨s6Step19FrontLog,s6Step19CompleteMoves,s6Step19EarlyControlLog⟩
theorem s6Step19Complete_repack : s6Step19ExitGvAfter.checkRepack s6Step19CompleteMoves=some s6Step19EarlyControlArena := by rfl
theorem s6Step19Complete_owned : (s6Step19CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step19EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step19EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step19Complete_apart : List.Disjoint (s6Step19CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [814, 807, 895, 870, 872, 883, 831, 852] := by
  have nd : ((s6Step19CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[814, 807, 895, 870, 872, 883, 831, 852]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step19CompletePlan : HmrEarlyStepPlan := ⟨s6Step19FrontPlan,s6Step19EarlyControlArena,s6Step19EarlyControlPlan,s6Step19CompleteMoves⟩
theorem s6Step19Complete_explicit_checked : compileHmrEarlyStepLog s6Step19EntryFBefore s6Step19FrontBank 256 20 ⟨256,255,21,19⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 7 s6Step19CompleteLog=some s6Step19CompletePlan := by
  let Q := s6Step19EarlyControlPlan
  have hq := s6Step19EarlyControl_plan_checked
  have fv1 : s6Step19CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step19CompleteOut.fv.payload[2]?.getD s6Step19CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step19CompleteOut.fv.payload[3]?.getD s6Step19CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step19CompleteOut.fv.payload[4]?.getD s6Step19CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step19EntryFBefore s6Step19EarlyControlArena s6Step19FrontBank 256 20 ⟨256,255,21,19⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 7 s6Step19CompleteLog s6Step19FrontPlan Q
    s6Step19Front_checked s6Step19Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step19Complete_owned s6Step19Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step19EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 769 814 s6Step19CompleteOut.fv.second (s6Step19CompleteOut.fv.payload[2]?.getD s6Step19CompleteOut.fv.sign) (s6Step19CompleteOut.fv.payload[3]?.getD s6Step19CompleteOut.fv.sign) (s6Step19CompleteOut.fv.payload[4]?.getD s6Step19CompleteOut.fv.sign) 807 7 s6Step19EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step19Complete_checked : (compileHmrEarlyStepLog s6Step19EntryFBefore s6Step19FrontBank 256 20 ⟨256,255,21,19⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852] 7 s6Step19CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step19Complete_explicit_checked]
  rfl
def s6Step20CompleteMoves : List (Wire × Wire) := []
def s6Step20CompleteOut : WindowBank := s6Step20FrontOut.repacked s6Step20CompleteMoves
def s6Step20CompleteLog : HmrEarlyStepLog := ⟨s6Step20FrontLog,s6Step20CompleteMoves,s6Step20EarlyControlLog⟩
theorem s6Step20Complete_repack : s6Step20ExitGvAfter.checkRepack s6Step20CompleteMoves=some s6Step20EarlyControlArena := by rfl
theorem s6Step20Complete_owned : (s6Step20CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step20EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step20EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step20Complete_apart : List.Disjoint (s6Step20CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [869, 813, 895, 870, 872, 883, 831, 852, 911] := by
  have nd : ((s6Step20CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[869, 813, 895, 870, 872, 883, 831, 852, 911]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step20CompletePlan : HmrEarlyStepPlan := ⟨s6Step20FrontPlan,s6Step20EarlyControlArena,s6Step20EarlyControlPlan,s6Step20CompleteMoves⟩
theorem s6Step20Complete_explicit_checked : compileHmrEarlyStepLog s6Step20EntryFBefore s6Step20FrontBank 256 21 ⟨256,255,22,20⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 7 s6Step20CompleteLog=some s6Step20CompletePlan := by
  let Q := s6Step20EarlyControlPlan
  have hq := s6Step20EarlyControl_plan_checked
  have fv1 : s6Step20CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step20CompleteOut.fv.payload[2]?.getD s6Step20CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step20CompleteOut.fv.payload[3]?.getD s6Step20CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step20CompleteOut.fv.payload[4]?.getD s6Step20CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step20EntryFBefore s6Step20EarlyControlArena s6Step20FrontBank 256 21 ⟨256,255,22,20⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 7 s6Step20CompleteLog s6Step20FrontPlan Q
    s6Step20Front_checked s6Step20Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step20Complete_owned s6Step20Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step20EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 869 s6Step20CompleteOut.fv.second (s6Step20CompleteOut.fv.payload[2]?.getD s6Step20CompleteOut.fv.sign) (s6Step20CompleteOut.fv.payload[3]?.getD s6Step20CompleteOut.fv.sign) (s6Step20CompleteOut.fv.payload[4]?.getD s6Step20CompleteOut.fv.sign) 813 7 s6Step20EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step20Complete_checked : (compileHmrEarlyStepLog s6Step20EntryFBefore s6Step20FrontBank 256 21 ⟨256,255,22,20⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 7 s6Step20CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step20Complete_explicit_checked]
  rfl
def s6Step21CompleteMoves : List (Wire × Wire) := []
def s6Step21CompleteOut : WindowBank := s6Step21FrontOut.repacked s6Step21CompleteMoves
def s6Step21CompleteLog : HmrEarlyStepLog := ⟨s6Step21FrontLog,s6Step21CompleteMoves,s6Step21EarlyControlLog⟩
theorem s6Step21Complete_repack : s6Step21ExitGvAfter.checkRepack s6Step21CompleteMoves=some s6Step21EarlyControlArena := by rfl
theorem s6Step21Complete_owned : (s6Step21CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step21EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step21EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21Complete_apart : List.Disjoint (s6Step21CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [854, 860, 895, 870, 872, 883, 831, 852, 911] := by
  have nd : ((s6Step21CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[854, 860, 895, 870, 872, 883, 831, 852, 911]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step21CompletePlan : HmrEarlyStepPlan := ⟨s6Step21FrontPlan,s6Step21EarlyControlArena,s6Step21EarlyControlPlan,s6Step21CompleteMoves⟩
theorem s6Step21Complete_explicit_checked : compileHmrEarlyStepLog s6Step21EntryFBefore s6Step21FrontBank 256 22 ⟨256,255,23,21⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 8 s6Step21CompleteLog=some s6Step21CompletePlan := by
  let Q := s6Step21EarlyControlPlan
  have hq := s6Step21EarlyControl_plan_checked
  have fv1 : s6Step21CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step21CompleteOut.fv.payload[2]?.getD s6Step21CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step21CompleteOut.fv.payload[3]?.getD s6Step21CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step21CompleteOut.fv.payload[4]?.getD s6Step21CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step21EntryFBefore s6Step21EarlyControlArena s6Step21FrontBank 256 22 ⟨256,255,23,21⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 8 s6Step21CompleteLog s6Step21FrontPlan Q
    s6Step21Front_checked s6Step21Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step21Complete_owned s6Step21Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step21EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 769 854 s6Step21CompleteOut.fv.second (s6Step21CompleteOut.fv.payload[2]?.getD s6Step21CompleteOut.fv.sign) (s6Step21CompleteOut.fv.payload[3]?.getD s6Step21CompleteOut.fv.sign) (s6Step21CompleteOut.fv.payload[4]?.getD s6Step21CompleteOut.fv.sign) 860 8 s6Step21EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step21Complete_checked : (compileHmrEarlyStepLog s6Step21EntryFBefore s6Step21FrontBank 256 22 ⟨256,255,23,21⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911] 8 s6Step21CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step21Complete_explicit_checked]
  rfl
def s6Step22CompleteMoves : List (Wire × Wire) := []
def s6Step22CompleteOut : WindowBank := s6Step22FrontOut.repacked s6Step22CompleteMoves
def s6Step22CompleteLog : HmrEarlyStepLog := ⟨s6Step22FrontLog,s6Step22CompleteMoves,s6Step22EarlyControlLog⟩
theorem s6Step22Complete_repack : s6Step22ExitGvAfter.checkRepack s6Step22CompleteMoves=some s6Step22EarlyControlArena := by rfl
theorem s6Step22Complete_owned : (s6Step22CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step22EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step22EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22Complete_apart : List.Disjoint (s6Step22CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [898, 862, 895, 870, 872, 883, 831, 852, 911, 910] := by
  have nd : ((s6Step22CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[898, 862, 895, 870, 872, 883, 831, 852, 911, 910]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step22CompletePlan : HmrEarlyStepPlan := ⟨s6Step22FrontPlan,s6Step22EarlyControlArena,s6Step22EarlyControlPlan,s6Step22CompleteMoves⟩
theorem s6Step22Complete_explicit_checked : compileHmrEarlyStepLog s6Step22EntryFBefore s6Step22FrontBank 256 23 ⟨256,255,24,22⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 8 s6Step22CompleteLog=some s6Step22CompletePlan := by
  let Q := s6Step22EarlyControlPlan
  have hq := s6Step22EarlyControl_plan_checked
  have fv1 : s6Step22CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step22CompleteOut.fv.payload[2]?.getD s6Step22CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step22CompleteOut.fv.payload[3]?.getD s6Step22CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step22CompleteOut.fv.payload[4]?.getD s6Step22CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step22EntryFBefore s6Step22EarlyControlArena s6Step22FrontBank 256 23 ⟨256,255,24,22⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 8 s6Step22CompleteLog s6Step22FrontPlan Q
    s6Step22Front_checked s6Step22Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step22Complete_owned s6Step22Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step22EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 898 s6Step22CompleteOut.fv.second (s6Step22CompleteOut.fv.payload[2]?.getD s6Step22CompleteOut.fv.sign) (s6Step22CompleteOut.fv.payload[3]?.getD s6Step22CompleteOut.fv.sign) (s6Step22CompleteOut.fv.payload[4]?.getD s6Step22CompleteOut.fv.sign) 862 8 s6Step22EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step22Complete_checked : (compileHmrEarlyStepLog s6Step22EntryFBefore s6Step22FrontBank 256 23 ⟨256,255,24,22⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 8 s6Step22CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step22Complete_explicit_checked]
  rfl
def s6Step23CompleteMoves : List (Wire × Wire) := []
def s6Step23CompleteOut : WindowBank := s6Step23FrontOut.repacked s6Step23CompleteMoves
def s6Step23CompleteLog : HmrEarlyStepLog := ⟨s6Step23FrontLog,s6Step23CompleteMoves,s6Step23EarlyControlLog⟩
theorem s6Step23Complete_repack : s6Step23ExitGvAfter.checkRepack s6Step23CompleteMoves=some s6Step23EarlyControlArena := by rfl
theorem s6Step23Complete_owned : (s6Step23CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step23EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step23EarlyControlArena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23Complete_apart : List.Disjoint (s6Step23CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [841, 807, 895, 870, 872, 883, 831, 852, 911, 910] := by
  have nd : ((s6Step23CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[841, 807, 895, 870, 872, 883, 831, 852, 911, 910]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step23CompletePlan : HmrEarlyStepPlan := ⟨s6Step23FrontPlan,s6Step23EarlyControlArena,s6Step23EarlyControlPlan,s6Step23CompleteMoves⟩
theorem s6Step23Complete_explicit_checked : compileHmrEarlyStepLog s6Step23EntryFBefore s6Step23FrontBank 256 24 ⟨256,255,25,23⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 9 s6Step23CompleteLog=some s6Step23CompletePlan := by
  let Q := s6Step23EarlyControlPlan
  have hq := s6Step23EarlyControl_plan_checked
  have fv1 : s6Step23CompleteOut.fv.second=876 := by decide +kernel
  have fv2 : s6Step23CompleteOut.fv.payload[2]?.getD s6Step23CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step23CompleteOut.fv.payload[3]?.getD s6Step23CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step23CompleteOut.fv.payload[4]?.getD s6Step23CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step23EntryFBefore s6Step23EarlyControlArena s6Step23FrontBank 256 24 ⟨256,255,25,23⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 9 s6Step23CompleteLog s6Step23FrontPlan Q
    s6Step23Front_checked s6Step23Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step23Complete_owned s6Step23Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step23EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 769 841 s6Step23CompleteOut.fv.second (s6Step23CompleteOut.fv.payload[2]?.getD s6Step23CompleteOut.fv.sign) (s6Step23CompleteOut.fv.payload[3]?.getD s6Step23CompleteOut.fv.sign) (s6Step23CompleteOut.fv.payload[4]?.getD s6Step23CompleteOut.fv.sign) 807 9 s6Step23EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step23Complete_checked : (compileHmrEarlyStepLog s6Step23EntryFBefore s6Step23FrontBank 256 24 ⟨256,255,25,23⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910] 9 s6Step23CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step23Complete_explicit_checked]
  rfl
def s6Step24CompleteMoves : List (Wire × Wire) := [(876,254),(859,511)]
def s6Step24CompleteOut : WindowBank := s6Step24FrontOut.repacked s6Step24CompleteMoves
def s6Step24CompleteLog : HmrEarlyStepLog := ⟨s6Step24FrontLog,s6Step24CompleteMoves,s6Step24EarlyControlLog⟩
def s6Step24CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24CompleteRelocationMove0Borrowed : Arena := ⟨s6Step24ExitGvAfter.live∪{254},Finset.union_subset s6Step24ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step24CompleteRelocation_move0_owned : 876∈s6Step24ExitGvAfter.live := by norm_num [s6Step24ExitGvAfter,arenaWires]
theorem s6Step24CompleteRelocation_move0_reserve : s6Step24ExitGvAfter.reserve {254}=some s6Step24CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24ExitGvAfter,arenaWires]
  · rfl
theorem s6Step24CompleteRelocation_move0_retire : s6Step24CompleteRelocationMove0Borrowed.retireSet {876}=s6Step24CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step24CompleteRelocationMove0Borrowed s6Step24CompleteRelocationMove0After {876}
  change s6Step24CompleteRelocationMove0After.live=(s6Step24ExitGvAfter.live∪{254})\{876}
  apply hmrArena_update_of_filter_check s6Step24ExitGvAfter s6Step24CompleteRelocationMove0After (fun q => ([(0,254),(255,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [254] [876] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step24CompleteRelocationMove1Borrowed : Arena := ⟨s6Step24CompleteRelocationMove0After.live∪{511},Finset.union_subset s6Step24CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step24CompleteRelocation_move1_owned : 859∈s6Step24CompleteRelocationMove0After.live := by norm_num [s6Step24CompleteRelocationMove0After,arenaWires]
theorem s6Step24CompleteRelocation_move1_reserve : s6Step24CompleteRelocationMove0After.reserve {511}=some s6Step24CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step24CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step24CompleteRelocation_move1_retire : s6Step24CompleteRelocationMove1Borrowed.retireSet {859}=s6Step24EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step24CompleteRelocationMove1Borrowed s6Step24EarlyControlArena {859}
  change s6Step24EarlyControlArena.live=(s6Step24CompleteRelocationMove0After.live∪{511})\{859}
  apply hmrArena_update_of_filter_check s6Step24CompleteRelocationMove0After s6Step24EarlyControlArena (fun q => ([(0,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [511] [859] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step24CompleteRelocation_checked : s6Step24ExitGvAfter.checkRepack [(876,254),(859,511)]=some s6Step24EarlyControlArena := by
  have tail2 : s6Step24EarlyControlArena.checkRepack []=some s6Step24EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step24CompleteRelocationMove0After s6Step24CompleteRelocationMove1Borrowed s6Step24EarlyControlArena s6Step24EarlyControlArena 859 511 []
    s6Step24CompleteRelocation_move1_owned s6Step24CompleteRelocation_move1_reserve s6Step24CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step24ExitGvAfter s6Step24CompleteRelocationMove0Borrowed s6Step24CompleteRelocationMove0After s6Step24EarlyControlArena 876 254 [(859,511)]
    s6Step24CompleteRelocation_move0_owned s6Step24CompleteRelocation_move0_reserve s6Step24CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step24Complete_repack : s6Step24ExitGvAfter.checkRepack s6Step24CompleteMoves=some s6Step24EarlyControlArena := by
  simpa only [s6Step24CompleteMoves] using s6Step24CompleteRelocation_checked
theorem s6Step24Complete_owned : (s6Step24CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step24EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step24EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24Complete_apart : List.Disjoint (s6Step24CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [794, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799] := by
  have nd : ((s6Step24CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[794, 813, 895, 870, 872, 883, 831, 852, 911, 910, 799]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step24CompletePlan : HmrEarlyStepPlan := ⟨s6Step24FrontPlan,s6Step24EarlyControlArena,s6Step24EarlyControlPlan,s6Step24CompleteMoves⟩
theorem s6Step24Complete_explicit_checked : compileHmrEarlyStepLog s6Step24EntryFBefore s6Step24FrontBank 256 25 ⟨255,254,25,24⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 9 s6Step24CompleteLog=some s6Step24CompletePlan := by
  let Q := s6Step24EarlyControlPlan
  have hq := s6Step24EarlyControl_plan_checked
  have fv1 : s6Step24CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step24CompleteOut.fv.payload[2]?.getD s6Step24CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step24CompleteOut.fv.payload[3]?.getD s6Step24CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step24CompleteOut.fv.payload[4]?.getD s6Step24CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step24EntryFBefore s6Step24EarlyControlArena s6Step24FrontBank 256 25 ⟨255,254,25,24⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 9 s6Step24CompleteLog s6Step24FrontPlan Q
    s6Step24Front_checked s6Step24Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step24Complete_owned s6Step24Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step24EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 794 s6Step24CompleteOut.fv.second (s6Step24CompleteOut.fv.payload[2]?.getD s6Step24CompleteOut.fv.sign) (s6Step24CompleteOut.fv.payload[3]?.getD s6Step24CompleteOut.fv.sign) (s6Step24CompleteOut.fv.payload[4]?.getD s6Step24CompleteOut.fv.sign) 813 9 s6Step24EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step24Complete_checked : (compileHmrEarlyStepLog s6Step24EntryFBefore s6Step24FrontBank 256 25 ⟨255,254,25,24⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 9 s6Step24CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step24Complete_explicit_checked]
  rfl
def s6Step25CompleteMoves : List (Wire × Wire) := []
def s6Step25CompleteOut : WindowBank := s6Step25FrontOut.repacked s6Step25CompleteMoves
def s6Step25CompleteLog : HmrEarlyStepLog := ⟨s6Step25FrontLog,s6Step25CompleteMoves,s6Step25EarlyControlLog⟩
theorem s6Step25Complete_repack : s6Step25ExitGvAfter.checkRepack s6Step25CompleteMoves=some s6Step25EarlyControlArena := by rfl
theorem s6Step25Complete_owned : (s6Step25CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step25EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step25EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25Complete_apart : List.Disjoint (s6Step25CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [859, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799] := by
  have nd : ((s6Step25CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[859, 876, 895, 870, 872, 883, 831, 852, 911, 910, 799]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step25CompletePlan : HmrEarlyStepPlan := ⟨s6Step25FrontPlan,s6Step25EarlyControlArena,s6Step25EarlyControlPlan,s6Step25CompleteMoves⟩
theorem s6Step25Complete_explicit_checked : compileHmrEarlyStepLog s6Step25EntryFBefore s6Step25FrontBank 255 25 ⟨255,254,26,25⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 10 s6Step25CompleteLog=some s6Step25CompletePlan := by
  let Q := s6Step25EarlyControlPlan
  have hq := s6Step25EarlyControl_plan_checked
  have fv1 : s6Step25CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step25CompleteOut.fv.payload[2]?.getD s6Step25CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step25CompleteOut.fv.payload[3]?.getD s6Step25CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step25CompleteOut.fv.payload[4]?.getD s6Step25CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step25EntryFBefore s6Step25EarlyControlArena s6Step25FrontBank 255 25 ⟨255,254,26,25⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 10 s6Step25CompleteLog s6Step25FrontPlan Q
    s6Step25Front_checked s6Step25Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step25Complete_owned s6Step25Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step25EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 769 859 s6Step25CompleteOut.fv.second (s6Step25CompleteOut.fv.payload[2]?.getD s6Step25CompleteOut.fv.sign) (s6Step25CompleteOut.fv.payload[3]?.getD s6Step25CompleteOut.fv.sign) (s6Step25CompleteOut.fv.payload[4]?.getD s6Step25CompleteOut.fv.sign) 876 10 s6Step25EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step25Complete_checked : (compileHmrEarlyStepLog s6Step25EntryFBefore s6Step25FrontBank 255 25 ⟨255,254,26,25⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799] 10 s6Step25CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step25Complete_explicit_checked]
  rfl
def s6Step26CompleteMoves : List (Wire × Wire) := []
def s6Step26CompleteOut : WindowBank := s6Step26FrontOut.repacked s6Step26CompleteMoves
def s6Step26CompleteLog : HmrEarlyStepLog := ⟨s6Step26FrontLog,s6Step26CompleteMoves,s6Step26EarlyControlLog⟩
theorem s6Step26Complete_repack : s6Step26ExitGvAfter.checkRepack s6Step26CompleteMoves=some s6Step26EarlyControlArena := by rfl
theorem s6Step26Complete_owned : (s6Step26CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step26EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step26EarlyControlArena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26Complete_apart : List.Disjoint (s6Step26CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [853, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827] := by
  have nd : ((s6Step26CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[853, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step26CompletePlan : HmrEarlyStepPlan := ⟨s6Step26FrontPlan,s6Step26EarlyControlArena,s6Step26EarlyControlPlan,s6Step26CompleteMoves⟩
theorem s6Step26Complete_explicit_checked : compileHmrEarlyStepLog s6Step26EntryFBefore s6Step26FrontBank 255 26 ⟨255,254,27,25⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 10 s6Step26CompleteLog=some s6Step26CompletePlan := by
  let Q := s6Step26EarlyControlPlan
  have hq := s6Step26EarlyControl_plan_checked
  have fv1 : s6Step26CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step26CompleteOut.fv.payload[2]?.getD s6Step26CompleteOut.fv.sign=793 := by decide +kernel
  have fv3 : s6Step26CompleteOut.fv.payload[3]?.getD s6Step26CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step26CompleteOut.fv.payload[4]?.getD s6Step26CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step26EntryFBefore s6Step26EarlyControlArena s6Step26FrontBank 255 26 ⟨255,254,27,25⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 10 s6Step26CompleteLog s6Step26FrontPlan Q
    s6Step26Front_checked s6Step26Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step26Complete_owned s6Step26Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step26EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 853 s6Step26CompleteOut.fv.second (s6Step26CompleteOut.fv.payload[2]?.getD s6Step26CompleteOut.fv.sign) (s6Step26CompleteOut.fv.payload[3]?.getD s6Step26CompleteOut.fv.sign) (s6Step26CompleteOut.fv.payload[4]?.getD s6Step26CompleteOut.fv.sign) 881 10 s6Step26EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step26Complete_checked : (compileHmrEarlyStepLog s6Step26EntryFBefore s6Step26FrontBank 255 26 ⟨255,254,27,25⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 10 s6Step26CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step26Complete_explicit_checked]
  rfl
def s6Step27CompleteMoves : List (Wire × Wire) := [(793,253),(768,510)]
def s6Step27CompleteOut : WindowBank := s6Step27FrontOut.repacked s6Step27CompleteMoves
def s6Step27CompleteLog : HmrEarlyStepLog := ⟨s6Step27FrontLog,s6Step27CompleteMoves,s6Step27EarlyControlLog⟩
def s6Step27CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,510),(511,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step27CompleteRelocationMove0Borrowed : Arena := ⟨s6Step27ExitGvAfter.live∪{253},Finset.union_subset s6Step27ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step27CompleteRelocation_move0_owned : 793∈s6Step27ExitGvAfter.live := by norm_num [s6Step27ExitGvAfter,arenaWires]
theorem s6Step27CompleteRelocation_move0_reserve : s6Step27ExitGvAfter.reserve {253}=some s6Step27CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step27ExitGvAfter,arenaWires]
  · rfl
theorem s6Step27CompleteRelocation_move0_retire : s6Step27CompleteRelocationMove0Borrowed.retireSet {793}=s6Step27CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step27CompleteRelocationMove0Borrowed s6Step27CompleteRelocationMove0After {793}
  change s6Step27CompleteRelocationMove0After.live=(s6Step27ExitGvAfter.live∪{253})\{793}
  apply hmrArena_update_of_filter_check s6Step27ExitGvAfter s6Step27CompleteRelocationMove0After (fun q => ([(0,253),(254,510),(511,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,510),(511,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [253] [793] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step27CompleteRelocationMove1Borrowed : Arena := ⟨s6Step27CompleteRelocationMove0After.live∪{510},Finset.union_subset s6Step27CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step27CompleteRelocation_move1_owned : 768∈s6Step27CompleteRelocationMove0After.live := by norm_num [s6Step27CompleteRelocationMove0After,arenaWires]
theorem s6Step27CompleteRelocation_move1_reserve : s6Step27CompleteRelocationMove0After.reserve {510}=some s6Step27CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step27CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step27CompleteRelocation_move1_retire : s6Step27CompleteRelocationMove1Borrowed.retireSet {768}=s6Step27EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step27CompleteRelocationMove1Borrowed s6Step27EarlyControlArena {768}
  change s6Step27EarlyControlArena.live=(s6Step27CompleteRelocationMove0After.live∪{510})\{768}
  apply hmrArena_update_of_filter_check s6Step27CompleteRelocationMove0After s6Step27EarlyControlArena (fun q => ([(0,510),(511,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [510] [768] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step27CompleteRelocation_checked : s6Step27ExitGvAfter.checkRepack [(793,253),(768,510)]=some s6Step27EarlyControlArena := by
  have tail2 : s6Step27EarlyControlArena.checkRepack []=some s6Step27EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step27CompleteRelocationMove0After s6Step27CompleteRelocationMove1Borrowed s6Step27EarlyControlArena s6Step27EarlyControlArena 768 510 []
    s6Step27CompleteRelocation_move1_owned s6Step27CompleteRelocation_move1_reserve s6Step27CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step27ExitGvAfter s6Step27CompleteRelocationMove0Borrowed s6Step27CompleteRelocationMove0After s6Step27EarlyControlArena 793 253 [(768,510)]
    s6Step27CompleteRelocation_move0_owned s6Step27CompleteRelocation_move0_reserve s6Step27CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step27Complete_repack : s6Step27ExitGvAfter.checkRepack s6Step27CompleteMoves=some s6Step27EarlyControlArena := by
  simpa only [s6Step27CompleteMoves] using s6Step27CompleteRelocation_checked
theorem s6Step27Complete_owned : (s6Step27CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step27EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step27EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27Complete_apart : List.Disjoint (s6Step27CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [807, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827] := by
  have nd : ((s6Step27CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[807, 887, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step27CompletePlan : HmrEarlyStepPlan := ⟨s6Step27FrontPlan,s6Step27EarlyControlArena,s6Step27EarlyControlPlan,s6Step27CompleteMoves⟩
theorem s6Step27Complete_explicit_checked : compileHmrEarlyStepLog s6Step27EntryFBefore s6Step27FrontBank 255 27 ⟨254,253,28,26⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 11 s6Step27CompleteLog=some s6Step27CompletePlan := by
  let Q := s6Step27EarlyControlPlan
  have hq := s6Step27EarlyControl_plan_checked
  have fv1 : s6Step27CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step27CompleteOut.fv.payload[2]?.getD s6Step27CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step27CompleteOut.fv.payload[3]?.getD s6Step27CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step27CompleteOut.fv.payload[4]?.getD s6Step27CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step27EntryFBefore s6Step27EarlyControlArena s6Step27FrontBank 255 27 ⟨254,253,28,26⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 11 s6Step27CompleteLog s6Step27FrontPlan Q
    s6Step27Front_checked s6Step27Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step27Complete_owned s6Step27Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step27EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 769 807 s6Step27CompleteOut.fv.second (s6Step27CompleteOut.fv.payload[2]?.getD s6Step27CompleteOut.fv.sign) (s6Step27CompleteOut.fv.payload[3]?.getD s6Step27CompleteOut.fv.sign) (s6Step27CompleteOut.fv.payload[4]?.getD s6Step27CompleteOut.fv.sign) 887 11 s6Step27EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step27Complete_checked : (compileHmrEarlyStepLog s6Step27EntryFBefore s6Step27FrontBank 255 27 ⟨254,253,28,26⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827] 11 s6Step27CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step27Complete_explicit_checked]
  rfl
def s6Step28CompleteMoves : List (Wire × Wire) := []
def s6Step28CompleteOut : WindowBank := s6Step28FrontOut.repacked s6Step28CompleteMoves
def s6Step28CompleteLog : HmrEarlyStepLog := ⟨s6Step28FrontLog,s6Step28CompleteMoves,s6Step28EarlyControlLog⟩
theorem s6Step28Complete_repack : s6Step28ExitGvAfter.checkRepack s6Step28CompleteMoves=some s6Step28EarlyControlArena := by rfl
theorem s6Step28Complete_owned : (s6Step28CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step28EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step28EarlyControlArena (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28Complete_apart : List.Disjoint (s6Step28CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] := by
  have nd : ((s6Step28CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step28CompletePlan : HmrEarlyStepPlan := ⟨s6Step28FrontPlan,s6Step28EarlyControlArena,s6Step28EarlyControlPlan,s6Step28CompleteMoves⟩
theorem s6Step28Complete_explicit_checked : compileHmrEarlyStepLog s6Step28EntryFBefore s6Step28FrontBank 254 28 ⟨254,253,28,27⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 11 s6Step28CompleteLog=some s6Step28CompletePlan := by
  let Q := s6Step28EarlyControlPlan
  have hq := s6Step28EarlyControl_plan_checked
  have fv1 : s6Step28CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step28CompleteOut.fv.payload[2]?.getD s6Step28CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step28CompleteOut.fv.payload[3]?.getD s6Step28CompleteOut.fv.sign=802 := by decide +kernel
  have fv4 : s6Step28CompleteOut.fv.payload[4]?.getD s6Step28CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step28EntryFBefore s6Step28EarlyControlArena s6Step28FrontBank 254 28 ⟨254,253,28,27⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 11 s6Step28CompleteLog s6Step28FrontPlan Q
    s6Step28Front_checked s6Step28Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step28Complete_owned s6Step28Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step28EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 793 s6Step28CompleteOut.fv.second (s6Step28CompleteOut.fv.payload[2]?.getD s6Step28CompleteOut.fv.sign) (s6Step28CompleteOut.fv.payload[3]?.getD s6Step28CompleteOut.fv.sign) (s6Step28CompleteOut.fv.payload[4]?.getD s6Step28CompleteOut.fv.sign) 859 11 s6Step28EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step28Complete_checked : (compileHmrEarlyStepLog s6Step28EntryFBefore s6Step28FrontBank 254 28 ⟨254,253,28,27⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 11 s6Step28CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step28Complete_explicit_checked]
  rfl
def s6Step29CompleteMoves : List (Wire × Wire) := [(802,252),(874,509)]
def s6Step29CompleteOut : WindowBank := s6Step29FrontOut.repacked s6Step29CompleteMoves
def s6Step29CompleteLog : HmrEarlyStepLog := ⟨s6Step29FrontLog,s6Step29CompleteMoves,s6Step29EarlyControlLog⟩
def s6Step29CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,509),(510,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step29CompleteRelocationMove0Borrowed : Arena := ⟨s6Step29ExitGvAfter.live∪{252},Finset.union_subset s6Step29ExitGvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step29CompleteRelocation_move0_owned : 802∈s6Step29ExitGvAfter.live := by norm_num [s6Step29ExitGvAfter,arenaWires]
theorem s6Step29CompleteRelocation_move0_reserve : s6Step29ExitGvAfter.reserve {252}=some s6Step29CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step29ExitGvAfter,arenaWires]
  · rfl
theorem s6Step29CompleteRelocation_move0_retire : s6Step29CompleteRelocationMove0Borrowed.retireSet {802}=s6Step29CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step29CompleteRelocationMove0Borrowed s6Step29CompleteRelocationMove0After {802}
  change s6Step29CompleteRelocationMove0After.live=(s6Step29ExitGvAfter.live∪{252})\{802}
  apply hmrArena_update_of_filter_check s6Step29ExitGvAfter s6Step29CompleteRelocationMove0After (fun q => ([(0,252),(253,509),(510,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,509),(510,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [252] [802] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
def s6Step29CompleteRelocationMove1Borrowed : Arena := ⟨s6Step29CompleteRelocationMove0After.live∪{509},Finset.union_subset s6Step29CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩
theorem s6Step29CompleteRelocation_move1_owned : 874∈s6Step29CompleteRelocationMove0After.live := by norm_num [s6Step29CompleteRelocationMove0After,arenaWires]
theorem s6Step29CompleteRelocation_move1_reserve : s6Step29CompleteRelocationMove0After.reserve {509}=some s6Step29CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step29CompleteRelocationMove0After,arenaWires]
  · rfl
theorem s6Step29CompleteRelocation_move1_retire : s6Step29CompleteRelocationMove1Borrowed.retireSet {874}=s6Step29EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step29CompleteRelocationMove1Borrowed s6Step29EarlyControlArena {874}
  change s6Step29EarlyControlArena.live=(s6Step29CompleteRelocationMove0After.live∪{509})\{874}
  apply hmrArena_update_of_filter_check s6Step29CompleteRelocationMove0After s6Step29EarlyControlArena (fun q => ([(0,509),(510,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [509] [874] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel
theorem s6Step29CompleteRelocation_checked : s6Step29ExitGvAfter.checkRepack [(802,252),(874,509)]=some s6Step29EarlyControlArena := by
  have tail2 : s6Step29EarlyControlArena.checkRepack []=some s6Step29EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step29CompleteRelocationMove0After s6Step29CompleteRelocationMove1Borrowed s6Step29EarlyControlArena s6Step29EarlyControlArena 874 509 []
    s6Step29CompleteRelocation_move1_owned s6Step29CompleteRelocation_move1_reserve s6Step29CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step29ExitGvAfter s6Step29CompleteRelocationMove0Borrowed s6Step29CompleteRelocationMove0After s6Step29EarlyControlArena 802 252 [(874,509)]
    s6Step29CompleteRelocation_move0_owned s6Step29CompleteRelocation_move0_reserve s6Step29CompleteRelocation_move0_retire tail1
  exact tail0
theorem s6Step29Complete_repack : s6Step29ExitGvAfter.checkRepack s6Step29CompleteMoves=some s6Step29EarlyControlArena := by
  simpa only [s6Step29CompleteMoves] using s6Step29CompleteRelocation_checked
theorem s6Step29Complete_owned : (s6Step29CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step29EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step29EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29Complete_apart : List.Disjoint (s6Step29CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] := by
  have nd : ((s6Step29CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 881, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step29CompletePlan : HmrEarlyStepPlan := ⟨s6Step29FrontPlan,s6Step29EarlyControlArena,s6Step29EarlyControlPlan,s6Step29CompleteMoves⟩
theorem s6Step29Complete_explicit_checked : compileHmrEarlyStepLog s6Step29EntryFBefore s6Step29FrontBank 254 28 ⟨253,252,29,27⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 12 s6Step29CompleteLog=some s6Step29CompletePlan := by
  let Q := s6Step29EarlyControlPlan
  have hq := s6Step29EarlyControl_plan_checked
  have fv1 : s6Step29CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step29CompleteOut.fv.payload[2]?.getD s6Step29CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step29CompleteOut.fv.payload[3]?.getD s6Step29CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step29CompleteOut.fv.payload[4]?.getD s6Step29CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step29EntryFBefore s6Step29EarlyControlArena s6Step29FrontBank 254 28 ⟨253,252,29,27⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 12 s6Step29CompleteLog s6Step29FrontPlan Q
    s6Step29Front_checked s6Step29Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step29Complete_owned s6Step29Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step29EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 769 768 s6Step29CompleteOut.fv.second (s6Step29CompleteOut.fv.payload[2]?.getD s6Step29CompleteOut.fv.sign) (s6Step29CompleteOut.fv.payload[3]?.getD s6Step29CompleteOut.fv.sign) (s6Step29CompleteOut.fv.payload[4]?.getD s6Step29CompleteOut.fv.sign) 881 12 s6Step29EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step29Complete_checked : (compileHmrEarlyStepLog s6Step29EntryFBefore s6Step29FrontBank 254 28 ⟨253,252,29,27⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901] 12 s6Step29CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step29Complete_explicit_checked]
  rfl
def s6Step30CompleteMoves : List (Wire × Wire) := []
def s6Step30CompleteOut : WindowBank := s6Step30FrontOut.repacked s6Step30CompleteMoves
def s6Step30CompleteLog : HmrEarlyStepLog := ⟨s6Step30FrontLog,s6Step30CompleteMoves,s6Step30EarlyControlLog⟩
theorem s6Step30Complete_repack : s6Step30ExitGvAfter.checkRepack s6Step30CompleteMoves=some s6Step30EarlyControlArena := by rfl
theorem s6Step30Complete_owned : (s6Step30CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step30EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step30EarlyControlArena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30Complete_apart : List.Disjoint (s6Step30CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [802, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] := by
  have nd : ((s6Step30CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[802, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2
def s6Step30CompletePlan : HmrEarlyStepPlan := ⟨s6Step30FrontPlan,s6Step30EarlyControlArena,s6Step30EarlyControlPlan,s6Step30CompleteMoves⟩
theorem s6Step30Complete_explicit_checked : compileHmrEarlyStepLog s6Step30EntryFBefore s6Step30FrontBank 253 29 ⟨253,252,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 12 s6Step30CompleteLog=some s6Step30CompletePlan := by
  let Q := s6Step30EarlyControlPlan
  have hq := s6Step30EarlyControl_plan_checked
  have fv1 : s6Step30CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step30CompleteOut.fv.payload[2]?.getD s6Step30CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step30CompleteOut.fv.payload[3]?.getD s6Step30CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step30CompleteOut.fv.payload[4]?.getD s6Step30CompleteOut.fv.sign=779 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step30EntryFBefore s6Step30EarlyControlArena s6Step30FrontBank 253 29 ⟨253,252,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 12 s6Step30CompleteLog s6Step30FrontPlan Q
    s6Step30Front_checked s6Step30Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step30Complete_owned s6Step30Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step30EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 769 802 s6Step30CompleteOut.fv.second (s6Step30CompleteOut.fv.payload[2]?.getD s6Step30CompleteOut.fv.sign) (s6Step30CompleteOut.fv.payload[3]?.getD s6Step30CompleteOut.fv.sign) (s6Step30CompleteOut.fv.payload[4]?.getD s6Step30CompleteOut.fv.sign) 793 12 s6Step30EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result
theorem s6Step30Complete_checked : (compileHmrEarlyStepLog s6Step30EntryFBefore s6Step30FrontBank 253 29 ⟨253,252,29,28⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917] 12 s6Step30CompleteLog).map (fun _ => true)=some true := by
  rw [s6Step30Complete_explicit_checked]
  rfl

end ECDSAAdd.Arithmetic.Paper935
