import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixtures
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
namespace ECDSAAdd.Arithmetic.Paper935
def s2ObservedSpec0 : HmrSourceWalkStepLog := s2ObservedLogs0[0]
def s2ObservedPlan0 : HmrSourceStepPlan := .early s2Step0CompletePlan
def s2ObservedSpec1 : HmrSourceWalkStepLog := s2ObservedLogs0[1]
def s2ObservedPlan1 : HmrSourceStepPlan := .early s2Step1CompletePlan
theorem s2Observed_prefix_logs : s2ObservedLogs.take 2=[s2ObservedSpec0,s2ObservedSpec1] := rfl
theorem s2Observed_step0_checked :
    compileHmrSourceStepLog s2Step0EntryFBefore s2Step0FrontBank
      s2ObservedSpec0.fgWidth s2ObservedSpec0.vWidth s2ObservedSpec0.exitWidth s2ObservedCounter []
      6 498 0 s2ObservedSpec0.need none s2ObservedSpec0.log=some s2ObservedPlan0 := by
  have spec : s2ObservedSpec0 = ⟨256,1,⟨256,255,2,1⟩,1,.early s2Step0CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 0<498)]
  simp only [s2ObservedCounter]
  rw [s2Step0Complete_explicit_checked]
  rfl
theorem s2Observed_step1_checked :
    compileHmrSourceStepLog s2Step1EntryFBefore s2Step1FrontBank
      s2ObservedSpec1.fgWidth s2ObservedSpec1.vWidth s2ObservedSpec1.exitWidth s2ObservedCounter [795]
      6 498 1 s2ObservedSpec1.need none s2ObservedSpec1.log=some s2ObservedPlan1 := by
  have spec : s2ObservedSpec1 = ⟨256,2,⟨256,255,3,1⟩,1,.early s2Step1CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 1<498)]
  simp only [s2ObservedCounter]
  rw [s2Step1Complete_explicit_checked]
  rfl
theorem s2Observed_boundary_arena : s2ObservedPlan0.outputArena=s2Step1EntryFBefore := rfl
theorem s2Observed_boundary_bank : s2ObservedPlan0.bank=s2Step1FrontBank := by decide +kernel
theorem s2Observed_boundary_record : s2ObservedPlan0.record s2ObservedRecord=[795] := rfl
def s2ObservedPrefixPlan : HmrSourceWalkPlan := .step s2ObservedPlan0 (.step s2ObservedPlan1
  (.done s2ObservedPlan1.outputArena s2ObservedPlan1.bank (s2ObservedPlan1.record [795]) none))
theorem s2Observed_prefix_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 2)=some s2ObservedPrefixPlan := by
  rw [s2Observed_prefix_logs]
  apply compileHmrSourceWalk_cons (P := s2ObservedPlan0)
  · exact s2Observed_step0_checked
  · rw [s2Observed_boundary_arena,s2Observed_boundary_bank,s2Observed_boundary_record]
    apply compileHmrSourceWalk_cons (P := s2ObservedPlan1)
    · exact s2Observed_step1_checked
    · rfl
def s6ObservedSpec0 : HmrSourceWalkStepLog := s6ObservedLogs0[0]
def s6ObservedPlan0 : HmrSourceStepPlan := .early s6Step0CompletePlan
def s6ObservedSpec1 : HmrSourceWalkStepLog := s6ObservedLogs0[1]
def s6ObservedPlan1 : HmrSourceStepPlan := .early s6Step1CompletePlan
theorem s6Observed_prefix_logs : s6ObservedLogs.take 2=[s6ObservedSpec0,s6ObservedSpec1] := rfl
theorem s6Observed_step0_checked :
    compileHmrSourceStepLog s6Step0EntryFBefore s6Step0FrontBank
      s6ObservedSpec0.fgWidth s6ObservedSpec0.vWidth s6ObservedSpec0.exitWidth s6ObservedCounter []
      6 498 0 s6ObservedSpec0.need none s6ObservedSpec0.log=some s6ObservedPlan0 := by
  have spec : s6ObservedSpec0 = ⟨256,1,⟨256,255,2,1⟩,1,.early s6Step0CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 0<498)]
  simp only [s6ObservedCounter]
  rw [s6Step0Complete_explicit_checked]
  rfl
theorem s6Observed_step1_checked :
    compileHmrSourceStepLog s6Step1EntryFBefore s6Step1FrontBank
      s6ObservedSpec1.fgWidth s6ObservedSpec1.vWidth s6ObservedSpec1.exitWidth s6ObservedCounter [895]
      6 498 1 s6ObservedSpec1.need none s6ObservedSpec1.log=some s6ObservedPlan1 := by
  have spec : s6ObservedSpec1 = ⟨256,2,⟨256,255,3,1⟩,1,.early s6Step1CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 1<498)]
  simp only [s6ObservedCounter]
  rw [s6Step1Complete_explicit_checked]
  rfl
theorem s6Observed_boundary_arena : s6ObservedPlan0.outputArena=s6Step1EntryFBefore := rfl
theorem s6Observed_boundary_bank : s6ObservedPlan0.bank=s6Step1FrontBank := by decide +kernel
theorem s6Observed_boundary_record : s6ObservedPlan0.record s6ObservedRecord=[895] := rfl
def s6ObservedPrefixPlan : HmrSourceWalkPlan := .step s6ObservedPlan0 (.step s6ObservedPlan1
  (.done s6ObservedPlan1.outputArena s6ObservedPlan1.bank (s6ObservedPlan1.record [895]) none))
theorem s6Observed_prefix_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 2)=some s6ObservedPrefixPlan := by
  rw [s6Observed_prefix_logs]
  apply compileHmrSourceWalk_cons (P := s6ObservedPlan0)
  · exact s6Observed_step0_checked
  · rw [s6Observed_boundary_arena,s6Observed_boundary_bank,s6Observed_boundary_record]
    apply compileHmrSourceWalk_cons (P := s6ObservedPlan1)
    · exact s6Observed_step1_checked
    · rfl
end ECDSAAdd.Arithmetic.Paper935
