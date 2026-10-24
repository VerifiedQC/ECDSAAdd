import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk4
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk5
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s6ObservedSpec0 : HmrSourceWalkStepLog := s6ObservedLogs0[0]
def s6ObservedPlan0 : HmrSourceStepPlan := .early s6Step0CompletePlan
def s6ObservedSpec1 : HmrSourceWalkStepLog := s6ObservedLogs0[1]
def s6ObservedPlan1 : HmrSourceStepPlan := .early s6Step1CompletePlan
def s6ObservedSpec2 : HmrSourceWalkStepLog := s6ObservedLogs0[2]
def s6ObservedPlan2 : HmrSourceStepPlan := .early s6Step2CompletePlan
def s6ObservedSpec3 : HmrSourceWalkStepLog := s6ObservedLogs0[3]
def s6ObservedPlan3 : HmrSourceStepPlan := .early s6Step3CompletePlan
def s6ObservedSpec4 : HmrSourceWalkStepLog := s6ObservedLogs0[4]
def s6ObservedPlan4 : HmrSourceStepPlan := .early s6Step4CompletePlan
def s6ObservedSpec5 : HmrSourceWalkStepLog := s6ObservedLogs0[5]
def s6ObservedPlan5 : HmrSourceStepPlan := .early s6Step5CompletePlan
def s6ObservedSpec6 : HmrSourceWalkStepLog := s6ObservedLogs0[6]
def s6ObservedPlan6 : HmrSourceStepPlan := .early s6Step6CompletePlan
def s6ObservedSpec7 : HmrSourceWalkStepLog := s6ObservedLogs0[7]
def s6ObservedPlan7 : HmrSourceStepPlan := .early s6Step7CompletePlan
def s6ObservedSpec8 : HmrSourceWalkStepLog := s6ObservedLogs0[8]
def s6ObservedPlan8 : HmrSourceStepPlan := .early s6Step8CompletePlan
def s6ObservedSpec9 : HmrSourceWalkStepLog := s6ObservedLogs0[9]
def s6ObservedPlan9 : HmrSourceStepPlan := .early s6Step9CompletePlan
def s6ObservedSpec10 : HmrSourceWalkStepLog := s6ObservedLogs0[10]
def s6ObservedPlan10 : HmrSourceStepPlan := .early s6Step10CompletePlan
def s6ObservedSpec11 : HmrSourceWalkStepLog := s6ObservedLogs0[11]
def s6ObservedPlan11 : HmrSourceStepPlan := .early s6Step11CompletePlan
def s6ObservedSpec12 : HmrSourceWalkStepLog := s6ObservedLogs0[12]
def s6ObservedPlan12 : HmrSourceStepPlan := .early s6Step12CompletePlan
def s6ObservedSpec13 : HmrSourceWalkStepLog := s6ObservedLogs0[13]
def s6ObservedPlan13 : HmrSourceStepPlan := .early s6Step13CompletePlan
def s6ObservedSpec14 : HmrSourceWalkStepLog := s6ObservedLogs0[14]
def s6ObservedPlan14 : HmrSourceStepPlan := .early s6Step14CompletePlan
def s6ObservedSpec15 : HmrSourceWalkStepLog := s6ObservedLogs0[15]
def s6ObservedPlan15 : HmrSourceStepPlan := .early s6Step15CompletePlan
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
theorem s6Observed_step2_checked :
    compileHmrSourceStepLog s6Step2EntryFBefore s6Step2FrontBank
      s6ObservedSpec2.fgWidth s6ObservedSpec2.vWidth s6ObservedSpec2.exitWidth s6ObservedCounter [895]
      6 498 2 s6ObservedSpec2.need none s6ObservedSpec2.log=some s6ObservedPlan2 := by
  have spec : s6ObservedSpec2 = ⟨256,3,⟨256,255,4,2⟩,1,.early s6Step2CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 2<498)]
  simp only [s6ObservedCounter]
  rw [s6Step2Complete_explicit_checked]
  rfl
theorem s6Observed_step3_checked :
    compileHmrSourceStepLog s6Step3EntryFBefore s6Step3FrontBank
      s6ObservedSpec3.fgWidth s6ObservedSpec3.vWidth s6ObservedSpec3.exitWidth s6ObservedCounter [895]
      6 498 3 s6ObservedSpec3.need none s6ObservedSpec3.log=some s6ObservedPlan3 := by
  have spec : s6ObservedSpec3 = ⟨256,4,⟨256,255,5,3⟩,1,.early s6Step3CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 3<498)]
  simp only [s6ObservedCounter]
  rw [s6Step3Complete_explicit_checked]
  rfl
theorem s6Observed_step4_checked :
    compileHmrSourceStepLog s6Step4EntryFBefore s6Step4FrontBank
      s6ObservedSpec4.fgWidth s6ObservedSpec4.vWidth s6ObservedSpec4.exitWidth s6ObservedCounter [895]
      6 498 4 s6ObservedSpec4.need none s6ObservedSpec4.log=some s6ObservedPlan4 := by
  have spec : s6ObservedSpec4 = ⟨256,5,⟨256,255,6,4⟩,1,.early s6Step4CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 4<498)]
  simp only [s6ObservedCounter]
  rw [s6Step4Complete_explicit_checked]
  rfl
theorem s6Observed_step5_checked :
    compileHmrSourceStepLog s6Step5EntryFBefore s6Step5FrontBank
      s6ObservedSpec5.fgWidth s6ObservedSpec5.vWidth s6ObservedSpec5.exitWidth s6ObservedCounter [895]
      6 498 5 s6ObservedSpec5.need none s6ObservedSpec5.log=some s6ObservedPlan5 := by
  have spec : s6ObservedSpec5 = ⟨256,6,⟨256,255,7,5⟩,1,.early s6Step5CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 5<498)]
  simp only [s6ObservedCounter]
  rw [s6Step5Complete_explicit_checked]
  rfl
theorem s6Observed_step6_checked :
    compileHmrSourceStepLog s6Step6EntryFBefore s6Step6FrontBank
      s6ObservedSpec6.fgWidth s6ObservedSpec6.vWidth s6ObservedSpec6.exitWidth s6ObservedCounter [895]
      6 498 6 s6ObservedSpec6.need none s6ObservedSpec6.log=some s6ObservedPlan6 := by
  have spec : s6ObservedSpec6 = ⟨256,7,⟨256,255,8,6⟩,1,.early s6Step6CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 6<498)]
  simp only [s6ObservedCounter]
  rw [s6Step6Complete_explicit_checked]
  rfl
theorem s6Observed_step7_checked :
    compileHmrSourceStepLog s6Step7EntryFBefore s6Step7FrontBank
      s6ObservedSpec7.fgWidth s6ObservedSpec7.vWidth s6ObservedSpec7.exitWidth s6ObservedCounter [895]
      6 498 7 s6ObservedSpec7.need none s6ObservedSpec7.log=some s6ObservedPlan7 := by
  have spec : s6ObservedSpec7 = ⟨256,8,⟨256,255,9,7⟩,1,.early s6Step7CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 7<498)]
  simp only [s6ObservedCounter]
  rw [s6Step7Complete_explicit_checked]
  rfl
theorem s6Observed_step8_checked :
    compileHmrSourceStepLog s6Step8EntryFBefore s6Step8FrontBank
      s6ObservedSpec8.fgWidth s6ObservedSpec8.vWidth s6ObservedSpec8.exitWidth s6ObservedCounter [895]
      6 498 8 s6ObservedSpec8.need none s6ObservedSpec8.log=some s6ObservedPlan8 := by
  have spec : s6ObservedSpec8 = ⟨256,9,⟨256,255,10,8⟩,1,.early s6Step8CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 8<498)]
  simp only [s6ObservedCounter]
  rw [s6Step8Complete_explicit_checked]
  rfl
theorem s6Observed_step9_checked :
    compileHmrSourceStepLog s6Step9EntryFBefore s6Step9FrontBank
      s6ObservedSpec9.fgWidth s6ObservedSpec9.vWidth s6ObservedSpec9.exitWidth s6ObservedCounter [895]
      6 498 9 s6ObservedSpec9.need none s6ObservedSpec9.log=some s6ObservedPlan9 := by
  have spec : s6ObservedSpec9 = ⟨256,10,⟨256,255,11,9⟩,2,.early s6Step9CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 9<498)]
  simp only [s6ObservedCounter]
  rw [s6Step9Complete_explicit_checked]
  rfl
theorem s6Observed_step10_checked :
    compileHmrSourceStepLog s6Step10EntryFBefore s6Step10FrontBank
      s6ObservedSpec10.fgWidth s6ObservedSpec10.vWidth s6ObservedSpec10.exitWidth s6ObservedCounter [895, 870]
      6 498 10 s6ObservedSpec10.need none s6ObservedSpec10.log=some s6ObservedPlan10 := by
  have spec : s6ObservedSpec10 = ⟨256,11,⟨256,255,12,10⟩,2,.early s6Step10CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 10<498)]
  simp only [s6ObservedCounter]
  rw [s6Step10Complete_explicit_checked]
  rfl
theorem s6Observed_step11_checked :
    compileHmrSourceStepLog s6Step11EntryFBefore s6Step11FrontBank
      s6ObservedSpec11.fgWidth s6ObservedSpec11.vWidth s6ObservedSpec11.exitWidth s6ObservedCounter [895, 870]
      6 498 11 s6ObservedSpec11.need none s6ObservedSpec11.log=some s6ObservedPlan11 := by
  have spec : s6ObservedSpec11 = ⟨256,12,⟨256,255,13,11⟩,3,.early s6Step11CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 11<498)]
  simp only [s6ObservedCounter]
  rw [s6Step11Complete_explicit_checked]
  rfl
theorem s6Observed_step12_checked :
    compileHmrSourceStepLog s6Step12EntryFBefore s6Step12FrontBank
      s6ObservedSpec12.fgWidth s6ObservedSpec12.vWidth s6ObservedSpec12.exitWidth s6ObservedCounter [895, 870, 872]
      6 498 12 s6ObservedSpec12.need none s6ObservedSpec12.log=some s6ObservedPlan12 := by
  have spec : s6ObservedSpec12 = ⟨256,13,⟨256,255,14,12⟩,3,.early s6Step12CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 12<498)]
  simp only [s6ObservedCounter]
  rw [s6Step12Complete_explicit_checked]
  rfl
theorem s6Observed_step13_checked :
    compileHmrSourceStepLog s6Step13EntryFBefore s6Step13FrontBank
      s6ObservedSpec13.fgWidth s6ObservedSpec13.vWidth s6ObservedSpec13.exitWidth s6ObservedCounter [895, 870, 872]
      6 498 13 s6ObservedSpec13.need none s6ObservedSpec13.log=some s6ObservedPlan13 := by
  have spec : s6ObservedSpec13 = ⟨256,14,⟨256,255,15,13⟩,4,.early s6Step13CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 13<498)]
  simp only [s6ObservedCounter]
  rw [s6Step13Complete_explicit_checked]
  rfl
theorem s6Observed_step14_checked :
    compileHmrSourceStepLog s6Step14EntryFBefore s6Step14FrontBank
      s6ObservedSpec14.fgWidth s6ObservedSpec14.vWidth s6ObservedSpec14.exitWidth s6ObservedCounter [895, 870, 872, 883]
      6 498 14 s6ObservedSpec14.need none s6ObservedSpec14.log=some s6ObservedPlan14 := by
  have spec : s6ObservedSpec14 = ⟨256,15,⟨256,255,16,14⟩,4,.early s6Step14CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 14<498)]
  simp only [s6ObservedCounter]
  rw [s6Step14Complete_explicit_checked]
  rfl
theorem s6Observed_step15_checked :
    compileHmrSourceStepLog s6Step15EntryFBefore s6Step15FrontBank
      s6ObservedSpec15.fgWidth s6ObservedSpec15.vWidth s6ObservedSpec15.exitWidth s6ObservedCounter [895, 870, 872, 883]
      6 498 15 s6ObservedSpec15.need none s6ObservedSpec15.log=some s6ObservedPlan15 := by
  have spec : s6ObservedSpec15 = ⟨256,16,⟨256,255,17,15⟩,5,.early s6Step15CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 15<498)]
  simp only [s6ObservedCounter]
  rw [s6Step15Complete_explicit_checked]
  rfl
theorem s6Observed_boundary_arena : s6ObservedPlan0.outputArena=s6Step1EntryFBefore := rfl
theorem s6Observed_boundary_bank : s6ObservedPlan0.bank=s6Step1FrontBank := by decide +kernel
theorem s6Observed_boundary_record : s6ObservedPlan0.record []=[895] := rfl
theorem s6Observed_boundary1_arena : s6ObservedPlan1.outputArena=s6Step2EntryFBefore := rfl
theorem s6Observed_boundary1_bank : s6ObservedPlan1.bank=s6Step2FrontBank := by decide +kernel
theorem s6Observed_boundary1_record : s6ObservedPlan1.record [895]=[895] := rfl
theorem s6Observed_boundary2_arena : s6ObservedPlan2.outputArena=s6Step3EntryFBefore := rfl
theorem s6Observed_boundary2_bank : s6ObservedPlan2.bank=s6Step3FrontBank := by decide +kernel
theorem s6Observed_boundary2_record : s6ObservedPlan2.record [895]=[895] := rfl
theorem s6Observed_boundary3_arena : s6ObservedPlan3.outputArena=s6Step4EntryFBefore := rfl
theorem s6Observed_boundary3_bank : s6ObservedPlan3.bank=s6Step4FrontBank := by decide +kernel
theorem s6Observed_boundary3_record : s6ObservedPlan3.record [895]=[895] := rfl
theorem s6Observed_boundary4_arena : s6ObservedPlan4.outputArena=s6Step5EntryFBefore := rfl
theorem s6Observed_boundary4_bank : s6ObservedPlan4.bank=s6Step5FrontBank := by decide +kernel
theorem s6Observed_boundary4_record : s6ObservedPlan4.record [895]=[895] := rfl
theorem s6Observed_boundary5_arena : s6ObservedPlan5.outputArena=s6Step6EntryFBefore := rfl
theorem s6Observed_boundary5_bank : s6ObservedPlan5.bank=s6Step6FrontBank := by decide +kernel
theorem s6Observed_boundary5_record : s6ObservedPlan5.record [895]=[895] := rfl
theorem s6Observed_boundary6_arena : s6ObservedPlan6.outputArena=s6Step7EntryFBefore := rfl
theorem s6Observed_boundary6_bank : s6ObservedPlan6.bank=s6Step7FrontBank := by decide +kernel
theorem s6Observed_boundary6_record : s6ObservedPlan6.record [895]=[895] := rfl
theorem s6Observed_boundary7_arena : s6ObservedPlan7.outputArena=s6Step8EntryFBefore := rfl
theorem s6Observed_boundary7_bank : s6ObservedPlan7.bank=s6Step8FrontBank := by decide +kernel
theorem s6Observed_boundary7_record : s6ObservedPlan7.record [895]=[895] := rfl
theorem s6Observed_boundary8_arena : s6ObservedPlan8.outputArena=s6Step9EntryFBefore := rfl
theorem s6Observed_boundary8_bank : s6ObservedPlan8.bank=s6Step9FrontBank := by decide +kernel
theorem s6Observed_boundary8_record : s6ObservedPlan8.record [895]=[895] := rfl
theorem s6Observed_boundary9_arena : s6ObservedPlan9.outputArena=s6Step10EntryFBefore := rfl
theorem s6Observed_boundary9_bank : s6ObservedPlan9.bank=s6Step10FrontBank := by decide +kernel
theorem s6Observed_boundary9_record : s6ObservedPlan9.record [895]=[895, 870] := rfl
theorem s6Observed_boundary10_arena : s6ObservedPlan10.outputArena=s6Step11EntryFBefore := rfl
theorem s6Observed_boundary10_bank : s6ObservedPlan10.bank=s6Step11FrontBank := by decide +kernel
theorem s6Observed_boundary10_record : s6ObservedPlan10.record [895, 870]=[895, 870] := rfl
theorem s6Observed_boundary11_arena : s6ObservedPlan11.outputArena=s6Step12EntryFBefore := rfl
theorem s6Observed_boundary11_bank : s6ObservedPlan11.bank=s6Step12FrontBank := by decide +kernel
theorem s6Observed_boundary11_record : s6ObservedPlan11.record [895, 870]=[895, 870, 872] := rfl
theorem s6Observed_boundary12_arena : s6ObservedPlan12.outputArena=s6Step13EntryFBefore := rfl
theorem s6Observed_boundary12_bank : s6ObservedPlan12.bank=s6Step13FrontBank := by decide +kernel
theorem s6Observed_boundary12_record : s6ObservedPlan12.record [895, 870, 872]=[895, 870, 872] := rfl
theorem s6Observed_boundary13_arena : s6ObservedPlan13.outputArena=s6Step14EntryFBefore := rfl
theorem s6Observed_boundary13_bank : s6ObservedPlan13.bank=s6Step14FrontBank := by decide +kernel
theorem s6Observed_boundary13_record : s6ObservedPlan13.record [895, 870, 872]=[895, 870, 872, 883] := rfl
theorem s6Observed_boundary14_arena : s6ObservedPlan14.outputArena=s6Step15EntryFBefore := rfl
theorem s6Observed_boundary14_bank : s6ObservedPlan14.bank=s6Step15FrontBank := by decide +kernel
theorem s6Observed_boundary14_record : s6ObservedPlan14.record [895, 870, 872, 883]=[895, 870, 872, 883] := rfl
def s6ObservedSegment0Logs : List HmrSourceWalkStepLog := [s6ObservedSpec0,s6ObservedSpec1,s6ObservedSpec2,s6ObservedSpec3,s6ObservedSpec4,s6ObservedSpec5,s6ObservedSpec6,s6ObservedSpec7,s6ObservedSpec8,s6ObservedSpec9,s6ObservedSpec10,s6ObservedSpec11,s6ObservedSpec12,s6ObservedSpec13,s6ObservedSpec14,s6ObservedSpec15]
theorem s6ObservedSegment0_length : s6ObservedSegment0Logs.length=16 := rfl
def s6ObservedSegment0Plan : HmrSourceWalkPlan := (.step s6ObservedPlan0 (.step s6ObservedPlan1 (.step s6ObservedPlan2 (.step s6ObservedPlan3 (.step s6ObservedPlan4 (.step s6ObservedPlan5 (.step s6ObservedPlan6 (.step s6ObservedPlan7 (.step s6ObservedPlan8 (.step s6ObservedPlan9 (.step s6ObservedPlan10 (.step s6ObservedPlan11 (.step s6ObservedPlan12 (.step s6ObservedPlan13 (.step s6ObservedPlan14 (.step s6ObservedPlan15 (.done s6ObservedPlan15.outputArena s6ObservedPlan15.bank (s6ObservedPlan15.record [895, 870, 872, 883]) none)))))))))))))))))
theorem s6ObservedSegment0_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6Step0EntryFBefore s6Step0FrontBank [] 0 s6ObservedSegment0Logs=some s6ObservedSegment0Plan := by
  unfold s6ObservedSegment0Logs
  apply compileHmrSourceWalk_cons (P := s6ObservedPlan0)
  · exact s6Observed_step0_checked
  · rw [s6Observed_boundary_arena,s6Observed_boundary_bank,s6Observed_boundary_record]
    apply compileHmrSourceWalk_cons (P := s6ObservedPlan1)
    · exact s6Observed_step1_checked
    · rw [s6Observed_boundary1_arena,s6Observed_boundary1_bank,s6Observed_boundary1_record]
      apply compileHmrSourceWalk_cons (P := s6ObservedPlan2)
      · exact s6Observed_step2_checked
      · rw [s6Observed_boundary2_arena,s6Observed_boundary2_bank,s6Observed_boundary2_record]
        apply compileHmrSourceWalk_cons (P := s6ObservedPlan3)
        · exact s6Observed_step3_checked
        · rw [s6Observed_boundary3_arena,s6Observed_boundary3_bank,s6Observed_boundary3_record]
          apply compileHmrSourceWalk_cons (P := s6ObservedPlan4)
          · exact s6Observed_step4_checked
          · rw [s6Observed_boundary4_arena,s6Observed_boundary4_bank,s6Observed_boundary4_record]
            apply compileHmrSourceWalk_cons (P := s6ObservedPlan5)
            · exact s6Observed_step5_checked
            · rw [s6Observed_boundary5_arena,s6Observed_boundary5_bank,s6Observed_boundary5_record]
              apply compileHmrSourceWalk_cons (P := s6ObservedPlan6)
              · exact s6Observed_step6_checked
              · rw [s6Observed_boundary6_arena,s6Observed_boundary6_bank,s6Observed_boundary6_record]
                apply compileHmrSourceWalk_cons (P := s6ObservedPlan7)
                · exact s6Observed_step7_checked
                · rw [s6Observed_boundary7_arena,s6Observed_boundary7_bank,s6Observed_boundary7_record]
                  apply compileHmrSourceWalk_cons (P := s6ObservedPlan8)
                  · exact s6Observed_step8_checked
                  · rw [s6Observed_boundary8_arena,s6Observed_boundary8_bank,s6Observed_boundary8_record]
                    apply compileHmrSourceWalk_cons (P := s6ObservedPlan9)
                    · exact s6Observed_step9_checked
                    · rw [s6Observed_boundary9_arena,s6Observed_boundary9_bank,s6Observed_boundary9_record]
                      apply compileHmrSourceWalk_cons (P := s6ObservedPlan10)
                      · exact s6Observed_step10_checked
                      · rw [s6Observed_boundary10_arena,s6Observed_boundary10_bank,s6Observed_boundary10_record]
                        apply compileHmrSourceWalk_cons (P := s6ObservedPlan11)
                        · exact s6Observed_step11_checked
                        · rw [s6Observed_boundary11_arena,s6Observed_boundary11_bank,s6Observed_boundary11_record]
                          apply compileHmrSourceWalk_cons (P := s6ObservedPlan12)
                          · exact s6Observed_step12_checked
                          · rw [s6Observed_boundary12_arena,s6Observed_boundary12_bank,s6Observed_boundary12_record]
                            apply compileHmrSourceWalk_cons (P := s6ObservedPlan13)
                            · exact s6Observed_step13_checked
                            · rw [s6Observed_boundary13_arena,s6Observed_boundary13_bank,s6Observed_boundary13_record]
                              apply compileHmrSourceWalk_cons (P := s6ObservedPlan14)
                              · exact s6Observed_step14_checked
                              · rw [s6Observed_boundary14_arena,s6Observed_boundary14_bank,s6Observed_boundary14_record]
                                apply compileHmrSourceWalk_cons (P := s6ObservedPlan15)
                                · exact s6Observed_step15_checked
                                · rfl
theorem s6ObservedSegment0_outputArena : s6ObservedSegment0Plan.outputArena=s6ObservedPlan15.outputArena := rfl
theorem s6ObservedSegment0_bank : s6ObservedSegment0Plan.bank=s6ObservedPlan15.bank := rfl
theorem s6ObservedSegment0_record : s6ObservedSegment0Plan.record=s6ObservedPlan15.record [895, 870, 872, 883] := rfl
theorem s6ObservedSegment0_metadata : s6ObservedSegment0Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
