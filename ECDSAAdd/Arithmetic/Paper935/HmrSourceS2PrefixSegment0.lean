import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontInitialChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk0
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2ObservedSpec0 : HmrSourceWalkStepLog := s2ObservedLogs0[0]
def s2ObservedPlan0 : HmrSourceStepPlan := .early s2Step0CompletePlan
def s2ObservedSpec1 : HmrSourceWalkStepLog := s2ObservedLogs0[1]
def s2ObservedPlan1 : HmrSourceStepPlan := .early s2Step1CompletePlan
def s2ObservedSpec2 : HmrSourceWalkStepLog := s2ObservedLogs0[2]
def s2ObservedPlan2 : HmrSourceStepPlan := .early s2Step2CompletePlan
def s2ObservedSpec3 : HmrSourceWalkStepLog := s2ObservedLogs0[3]
def s2ObservedPlan3 : HmrSourceStepPlan := .early s2Step3CompletePlan
def s2ObservedSpec4 : HmrSourceWalkStepLog := s2ObservedLogs0[4]
def s2ObservedPlan4 : HmrSourceStepPlan := .early s2Step4CompletePlan
def s2ObservedSpec5 : HmrSourceWalkStepLog := s2ObservedLogs0[5]
def s2ObservedPlan5 : HmrSourceStepPlan := .early s2Step5CompletePlan
def s2ObservedSpec6 : HmrSourceWalkStepLog := s2ObservedLogs0[6]
def s2ObservedPlan6 : HmrSourceStepPlan := .early s2Step6CompletePlan
def s2ObservedSpec7 : HmrSourceWalkStepLog := s2ObservedLogs0[7]
def s2ObservedPlan7 : HmrSourceStepPlan := .early s2Step7CompletePlan
def s2ObservedSpec8 : HmrSourceWalkStepLog := s2ObservedLogs0[8]
def s2ObservedPlan8 : HmrSourceStepPlan := .early s2Step8CompletePlan
def s2ObservedSpec9 : HmrSourceWalkStepLog := s2ObservedLogs0[9]
def s2ObservedPlan9 : HmrSourceStepPlan := .early s2Step9CompletePlan
def s2ObservedSpec10 : HmrSourceWalkStepLog := s2ObservedLogs0[10]
def s2ObservedPlan10 : HmrSourceStepPlan := .early s2Step10CompletePlan
def s2ObservedSpec11 : HmrSourceWalkStepLog := s2ObservedLogs0[11]
def s2ObservedPlan11 : HmrSourceStepPlan := .early s2Step11CompletePlan
def s2ObservedSpec12 : HmrSourceWalkStepLog := s2ObservedLogs0[12]
def s2ObservedPlan12 : HmrSourceStepPlan := .early s2Step12CompletePlan
def s2ObservedSpec13 : HmrSourceWalkStepLog := s2ObservedLogs0[13]
def s2ObservedPlan13 : HmrSourceStepPlan := .early s2Step13CompletePlan
def s2ObservedSpec14 : HmrSourceWalkStepLog := s2ObservedLogs0[14]
def s2ObservedPlan14 : HmrSourceStepPlan := .early s2Step14CompletePlan
def s2ObservedSpec15 : HmrSourceWalkStepLog := s2ObservedLogs0[15]
def s2ObservedPlan15 : HmrSourceStepPlan := .early s2Step15CompletePlan
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
theorem s2Observed_step2_checked :
    compileHmrSourceStepLog s2Step2EntryFBefore s2Step2FrontBank
      s2ObservedSpec2.fgWidth s2ObservedSpec2.vWidth s2ObservedSpec2.exitWidth s2ObservedCounter [795]
      6 498 2 s2ObservedSpec2.need none s2ObservedSpec2.log=some s2ObservedPlan2 := by
  have spec : s2ObservedSpec2 = ⟨256,3,⟨256,255,4,2⟩,1,.early s2Step2CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 2<498)]
  simp only [s2ObservedCounter]
  rw [s2Step2Complete_explicit_checked]
  rfl
theorem s2Observed_step3_checked :
    compileHmrSourceStepLog s2Step3EntryFBefore s2Step3FrontBank
      s2ObservedSpec3.fgWidth s2ObservedSpec3.vWidth s2ObservedSpec3.exitWidth s2ObservedCounter [795]
      6 498 3 s2ObservedSpec3.need none s2ObservedSpec3.log=some s2ObservedPlan3 := by
  have spec : s2ObservedSpec3 = ⟨256,4,⟨256,255,5,3⟩,1,.early s2Step3CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 3<498)]
  simp only [s2ObservedCounter]
  rw [s2Step3Complete_explicit_checked]
  rfl
theorem s2Observed_step4_checked :
    compileHmrSourceStepLog s2Step4EntryFBefore s2Step4FrontBank
      s2ObservedSpec4.fgWidth s2ObservedSpec4.vWidth s2ObservedSpec4.exitWidth s2ObservedCounter [795]
      6 498 4 s2ObservedSpec4.need none s2ObservedSpec4.log=some s2ObservedPlan4 := by
  have spec : s2ObservedSpec4 = ⟨256,5,⟨256,255,6,4⟩,1,.early s2Step4CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 4<498)]
  simp only [s2ObservedCounter]
  rw [s2Step4Complete_explicit_checked]
  rfl
theorem s2Observed_step5_checked :
    compileHmrSourceStepLog s2Step5EntryFBefore s2Step5FrontBank
      s2ObservedSpec5.fgWidth s2ObservedSpec5.vWidth s2ObservedSpec5.exitWidth s2ObservedCounter [795]
      6 498 5 s2ObservedSpec5.need none s2ObservedSpec5.log=some s2ObservedPlan5 := by
  have spec : s2ObservedSpec5 = ⟨256,6,⟨256,255,7,5⟩,1,.early s2Step5CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 5<498)]
  simp only [s2ObservedCounter]
  rw [s2Step5Complete_explicit_checked]
  rfl
theorem s2Observed_step6_checked :
    compileHmrSourceStepLog s2Step6EntryFBefore s2Step6FrontBank
      s2ObservedSpec6.fgWidth s2ObservedSpec6.vWidth s2ObservedSpec6.exitWidth s2ObservedCounter [795]
      6 498 6 s2ObservedSpec6.need none s2ObservedSpec6.log=some s2ObservedPlan6 := by
  have spec : s2ObservedSpec6 = ⟨256,7,⟨256,255,8,6⟩,1,.early s2Step6CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 6<498)]
  simp only [s2ObservedCounter]
  rw [s2Step6Complete_explicit_checked]
  rfl
theorem s2Observed_step7_checked :
    compileHmrSourceStepLog s2Step7EntryFBefore s2Step7FrontBank
      s2ObservedSpec7.fgWidth s2ObservedSpec7.vWidth s2ObservedSpec7.exitWidth s2ObservedCounter [795]
      6 498 7 s2ObservedSpec7.need none s2ObservedSpec7.log=some s2ObservedPlan7 := by
  have spec : s2ObservedSpec7 = ⟨256,8,⟨256,255,9,7⟩,1,.early s2Step7CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 7<498)]
  simp only [s2ObservedCounter]
  rw [s2Step7Complete_explicit_checked]
  rfl
theorem s2Observed_step8_checked :
    compileHmrSourceStepLog s2Step8EntryFBefore s2Step8FrontBank
      s2ObservedSpec8.fgWidth s2ObservedSpec8.vWidth s2ObservedSpec8.exitWidth s2ObservedCounter [795]
      6 498 8 s2ObservedSpec8.need none s2ObservedSpec8.log=some s2ObservedPlan8 := by
  have spec : s2ObservedSpec8 = ⟨256,9,⟨256,255,10,8⟩,1,.early s2Step8CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 8<498)]
  simp only [s2ObservedCounter]
  rw [s2Step8Complete_explicit_checked]
  rfl
theorem s2Observed_step9_checked :
    compileHmrSourceStepLog s2Step9EntryFBefore s2Step9FrontBank
      s2ObservedSpec9.fgWidth s2ObservedSpec9.vWidth s2ObservedSpec9.exitWidth s2ObservedCounter [795]
      6 498 9 s2ObservedSpec9.need none s2ObservedSpec9.log=some s2ObservedPlan9 := by
  have spec : s2ObservedSpec9 = ⟨256,10,⟨256,255,11,9⟩,2,.early s2Step9CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 9<498)]
  simp only [s2ObservedCounter]
  rw [s2Step9Complete_explicit_checked]
  rfl
theorem s2Observed_step10_checked :
    compileHmrSourceStepLog s2Step10EntryFBefore s2Step10FrontBank
      s2ObservedSpec10.fgWidth s2ObservedSpec10.vWidth s2ObservedSpec10.exitWidth s2ObservedCounter [795, 813]
      6 498 10 s2ObservedSpec10.need none s2ObservedSpec10.log=some s2ObservedPlan10 := by
  have spec : s2ObservedSpec10 = ⟨256,11,⟨256,255,12,10⟩,2,.early s2Step10CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 10<498)]
  simp only [s2ObservedCounter]
  rw [s2Step10Complete_explicit_checked]
  rfl
theorem s2Observed_step11_checked :
    compileHmrSourceStepLog s2Step11EntryFBefore s2Step11FrontBank
      s2ObservedSpec11.fgWidth s2ObservedSpec11.vWidth s2ObservedSpec11.exitWidth s2ObservedCounter [795, 813]
      6 498 11 s2ObservedSpec11.need none s2ObservedSpec11.log=some s2ObservedPlan11 := by
  have spec : s2ObservedSpec11 = ⟨256,12,⟨256,255,13,11⟩,3,.early s2Step11CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 11<498)]
  simp only [s2ObservedCounter]
  rw [s2Step11Complete_explicit_checked]
  rfl
theorem s2Observed_step12_checked :
    compileHmrSourceStepLog s2Step12EntryFBefore s2Step12FrontBank
      s2ObservedSpec12.fgWidth s2ObservedSpec12.vWidth s2ObservedSpec12.exitWidth s2ObservedCounter [795, 813, 818]
      6 498 12 s2ObservedSpec12.need none s2ObservedSpec12.log=some s2ObservedPlan12 := by
  have spec : s2ObservedSpec12 = ⟨256,13,⟨256,255,14,12⟩,3,.early s2Step12CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 12<498)]
  simp only [s2ObservedCounter]
  rw [s2Step12Complete_explicit_checked]
  rfl
theorem s2Observed_step13_checked :
    compileHmrSourceStepLog s2Step13EntryFBefore s2Step13FrontBank
      s2ObservedSpec13.fgWidth s2ObservedSpec13.vWidth s2ObservedSpec13.exitWidth s2ObservedCounter [795, 813, 818]
      6 498 13 s2ObservedSpec13.need none s2ObservedSpec13.log=some s2ObservedPlan13 := by
  have spec : s2ObservedSpec13 = ⟨256,14,⟨256,255,15,13⟩,4,.early s2Step13CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 13<498)]
  simp only [s2ObservedCounter]
  rw [s2Step13Complete_explicit_checked]
  rfl
theorem s2Observed_step14_checked :
    compileHmrSourceStepLog s2Step14EntryFBefore s2Step14FrontBank
      s2ObservedSpec14.fgWidth s2ObservedSpec14.vWidth s2ObservedSpec14.exitWidth s2ObservedCounter [795, 813, 818, 823]
      6 498 14 s2ObservedSpec14.need none s2ObservedSpec14.log=some s2ObservedPlan14 := by
  have spec : s2ObservedSpec14 = ⟨256,15,⟨256,255,16,14⟩,4,.early s2Step14CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 14<498)]
  simp only [s2ObservedCounter]
  rw [s2Step14Complete_explicit_checked]
  rfl
theorem s2Observed_step15_checked :
    compileHmrSourceStepLog s2Step15EntryFBefore s2Step15FrontBank
      s2ObservedSpec15.fgWidth s2ObservedSpec15.vWidth s2ObservedSpec15.exitWidth s2ObservedCounter [795, 813, 818, 823]
      6 498 15 s2ObservedSpec15.need none s2ObservedSpec15.log=some s2ObservedPlan15 := by
  have spec : s2ObservedSpec15 = ⟨256,16,⟨256,255,17,15⟩,5,.early s2Step15CompleteLog⟩ := rfl
  rw [spec]
  simp only [compileHmrSourceStepLog,if_pos (by decide : 15<498)]
  simp only [s2ObservedCounter]
  rw [s2Step15Complete_explicit_checked]
  rfl
theorem s2Observed_boundary_arena : s2ObservedPlan0.outputArena=s2Step1EntryFBefore := rfl
theorem s2Observed_boundary_bank : s2ObservedPlan0.bank=s2Step1FrontBank := by decide +kernel
theorem s2Observed_boundary_record : s2ObservedPlan0.record []=[795] := rfl
theorem s2Observed_boundary1_arena : s2ObservedPlan1.outputArena=s2Step2EntryFBefore := rfl
theorem s2Observed_boundary1_bank : s2ObservedPlan1.bank=s2Step2FrontBank := by decide +kernel
theorem s2Observed_boundary1_record : s2ObservedPlan1.record [795]=[795] := rfl
theorem s2Observed_boundary2_arena : s2ObservedPlan2.outputArena=s2Step3EntryFBefore := rfl
theorem s2Observed_boundary2_bank : s2ObservedPlan2.bank=s2Step3FrontBank := by decide +kernel
theorem s2Observed_boundary2_record : s2ObservedPlan2.record [795]=[795] := rfl
theorem s2Observed_boundary3_arena : s2ObservedPlan3.outputArena=s2Step4EntryFBefore := rfl
theorem s2Observed_boundary3_bank : s2ObservedPlan3.bank=s2Step4FrontBank := by decide +kernel
theorem s2Observed_boundary3_record : s2ObservedPlan3.record [795]=[795] := rfl
theorem s2Observed_boundary4_arena : s2ObservedPlan4.outputArena=s2Step5EntryFBefore := rfl
theorem s2Observed_boundary4_bank : s2ObservedPlan4.bank=s2Step5FrontBank := by decide +kernel
theorem s2Observed_boundary4_record : s2ObservedPlan4.record [795]=[795] := rfl
theorem s2Observed_boundary5_arena : s2ObservedPlan5.outputArena=s2Step6EntryFBefore := rfl
theorem s2Observed_boundary5_bank : s2ObservedPlan5.bank=s2Step6FrontBank := by decide +kernel
theorem s2Observed_boundary5_record : s2ObservedPlan5.record [795]=[795] := rfl
theorem s2Observed_boundary6_arena : s2ObservedPlan6.outputArena=s2Step7EntryFBefore := rfl
theorem s2Observed_boundary6_bank : s2ObservedPlan6.bank=s2Step7FrontBank := by decide +kernel
theorem s2Observed_boundary6_record : s2ObservedPlan6.record [795]=[795] := rfl
theorem s2Observed_boundary7_arena : s2ObservedPlan7.outputArena=s2Step8EntryFBefore := rfl
theorem s2Observed_boundary7_bank : s2ObservedPlan7.bank=s2Step8FrontBank := by decide +kernel
theorem s2Observed_boundary7_record : s2ObservedPlan7.record [795]=[795] := rfl
theorem s2Observed_boundary8_arena : s2ObservedPlan8.outputArena=s2Step9EntryFBefore := rfl
theorem s2Observed_boundary8_bank : s2ObservedPlan8.bank=s2Step9FrontBank := by decide +kernel
theorem s2Observed_boundary8_record : s2ObservedPlan8.record [795]=[795] := rfl
theorem s2Observed_boundary9_arena : s2ObservedPlan9.outputArena=s2Step10EntryFBefore := rfl
theorem s2Observed_boundary9_bank : s2ObservedPlan9.bank=s2Step10FrontBank := by decide +kernel
theorem s2Observed_boundary9_record : s2ObservedPlan9.record [795]=[795, 813] := rfl
theorem s2Observed_boundary10_arena : s2ObservedPlan10.outputArena=s2Step11EntryFBefore := rfl
theorem s2Observed_boundary10_bank : s2ObservedPlan10.bank=s2Step11FrontBank := by decide +kernel
theorem s2Observed_boundary10_record : s2ObservedPlan10.record [795, 813]=[795, 813] := rfl
theorem s2Observed_boundary11_arena : s2ObservedPlan11.outputArena=s2Step12EntryFBefore := rfl
theorem s2Observed_boundary11_bank : s2ObservedPlan11.bank=s2Step12FrontBank := by decide +kernel
theorem s2Observed_boundary11_record : s2ObservedPlan11.record [795, 813]=[795, 813, 818] := rfl
theorem s2Observed_boundary12_arena : s2ObservedPlan12.outputArena=s2Step13EntryFBefore := rfl
theorem s2Observed_boundary12_bank : s2ObservedPlan12.bank=s2Step13FrontBank := by decide +kernel
theorem s2Observed_boundary12_record : s2ObservedPlan12.record [795, 813, 818]=[795, 813, 818] := rfl
theorem s2Observed_boundary13_arena : s2ObservedPlan13.outputArena=s2Step14EntryFBefore := rfl
theorem s2Observed_boundary13_bank : s2ObservedPlan13.bank=s2Step14FrontBank := by decide +kernel
theorem s2Observed_boundary13_record : s2ObservedPlan13.record [795, 813, 818]=[795, 813, 818, 823] := rfl
theorem s2Observed_boundary14_arena : s2ObservedPlan14.outputArena=s2Step15EntryFBefore := rfl
theorem s2Observed_boundary14_bank : s2ObservedPlan14.bank=s2Step15FrontBank := by decide +kernel
theorem s2Observed_boundary14_record : s2ObservedPlan14.record [795, 813, 818, 823]=[795, 813, 818, 823] := rfl
def s2ObservedSegment0Logs : List HmrSourceWalkStepLog := [s2ObservedSpec0,s2ObservedSpec1,s2ObservedSpec2,s2ObservedSpec3,s2ObservedSpec4,s2ObservedSpec5,s2ObservedSpec6,s2ObservedSpec7,s2ObservedSpec8,s2ObservedSpec9,s2ObservedSpec10,s2ObservedSpec11,s2ObservedSpec12,s2ObservedSpec13,s2ObservedSpec14,s2ObservedSpec15]
theorem s2ObservedSegment0_length : s2ObservedSegment0Logs.length=16 := rfl
def s2ObservedSegment0Plan : HmrSourceWalkPlan := (.step s2ObservedPlan0 (.step s2ObservedPlan1 (.step s2ObservedPlan2 (.step s2ObservedPlan3 (.step s2ObservedPlan4 (.step s2ObservedPlan5 (.step s2ObservedPlan6 (.step s2ObservedPlan7 (.step s2ObservedPlan8 (.step s2ObservedPlan9 (.step s2ObservedPlan10 (.step s2ObservedPlan11 (.step s2ObservedPlan12 (.step s2ObservedPlan13 (.step s2ObservedPlan14 (.step s2ObservedPlan15 (.done s2ObservedPlan15.outputArena s2ObservedPlan15.bank (s2ObservedPlan15.record [795, 813, 818, 823]) none)))))))))))))))))
theorem s2ObservedSegment0_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2Step0EntryFBefore s2Step0FrontBank [] 0 s2ObservedSegment0Logs=some s2ObservedSegment0Plan := by
  unfold s2ObservedSegment0Logs
  apply compileHmrSourceWalk_cons (P := s2ObservedPlan0)
  · exact s2Observed_step0_checked
  · rw [s2Observed_boundary_arena,s2Observed_boundary_bank,s2Observed_boundary_record]
    apply compileHmrSourceWalk_cons (P := s2ObservedPlan1)
    · exact s2Observed_step1_checked
    · rw [s2Observed_boundary1_arena,s2Observed_boundary1_bank,s2Observed_boundary1_record]
      apply compileHmrSourceWalk_cons (P := s2ObservedPlan2)
      · exact s2Observed_step2_checked
      · rw [s2Observed_boundary2_arena,s2Observed_boundary2_bank,s2Observed_boundary2_record]
        apply compileHmrSourceWalk_cons (P := s2ObservedPlan3)
        · exact s2Observed_step3_checked
        · rw [s2Observed_boundary3_arena,s2Observed_boundary3_bank,s2Observed_boundary3_record]
          apply compileHmrSourceWalk_cons (P := s2ObservedPlan4)
          · exact s2Observed_step4_checked
          · rw [s2Observed_boundary4_arena,s2Observed_boundary4_bank,s2Observed_boundary4_record]
            apply compileHmrSourceWalk_cons (P := s2ObservedPlan5)
            · exact s2Observed_step5_checked
            · rw [s2Observed_boundary5_arena,s2Observed_boundary5_bank,s2Observed_boundary5_record]
              apply compileHmrSourceWalk_cons (P := s2ObservedPlan6)
              · exact s2Observed_step6_checked
              · rw [s2Observed_boundary6_arena,s2Observed_boundary6_bank,s2Observed_boundary6_record]
                apply compileHmrSourceWalk_cons (P := s2ObservedPlan7)
                · exact s2Observed_step7_checked
                · rw [s2Observed_boundary7_arena,s2Observed_boundary7_bank,s2Observed_boundary7_record]
                  apply compileHmrSourceWalk_cons (P := s2ObservedPlan8)
                  · exact s2Observed_step8_checked
                  · rw [s2Observed_boundary8_arena,s2Observed_boundary8_bank,s2Observed_boundary8_record]
                    apply compileHmrSourceWalk_cons (P := s2ObservedPlan9)
                    · exact s2Observed_step9_checked
                    · rw [s2Observed_boundary9_arena,s2Observed_boundary9_bank,s2Observed_boundary9_record]
                      apply compileHmrSourceWalk_cons (P := s2ObservedPlan10)
                      · exact s2Observed_step10_checked
                      · rw [s2Observed_boundary10_arena,s2Observed_boundary10_bank,s2Observed_boundary10_record]
                        apply compileHmrSourceWalk_cons (P := s2ObservedPlan11)
                        · exact s2Observed_step11_checked
                        · rw [s2Observed_boundary11_arena,s2Observed_boundary11_bank,s2Observed_boundary11_record]
                          apply compileHmrSourceWalk_cons (P := s2ObservedPlan12)
                          · exact s2Observed_step12_checked
                          · rw [s2Observed_boundary12_arena,s2Observed_boundary12_bank,s2Observed_boundary12_record]
                            apply compileHmrSourceWalk_cons (P := s2ObservedPlan13)
                            · exact s2Observed_step13_checked
                            · rw [s2Observed_boundary13_arena,s2Observed_boundary13_bank,s2Observed_boundary13_record]
                              apply compileHmrSourceWalk_cons (P := s2ObservedPlan14)
                              · exact s2Observed_step14_checked
                              · rw [s2Observed_boundary14_arena,s2Observed_boundary14_bank,s2Observed_boundary14_record]
                                apply compileHmrSourceWalk_cons (P := s2ObservedPlan15)
                                · exact s2Observed_step15_checked
                                · rfl
theorem s2ObservedSegment0_outputArena : s2ObservedSegment0Plan.outputArena=s2ObservedPlan15.outputArena := rfl
theorem s2ObservedSegment0_bank : s2ObservedSegment0Plan.bank=s2ObservedPlan15.bank := rfl
theorem s2ObservedSegment0_record : s2ObservedSegment0Plan.record=s2ObservedPlan15.record [795, 813, 818, 823] := rfl
theorem s2ObservedSegment0_metadata : s2ObservedSegment0Plan.metadata=none := rfl

end ECDSAAdd.Arithmetic.Paper935
