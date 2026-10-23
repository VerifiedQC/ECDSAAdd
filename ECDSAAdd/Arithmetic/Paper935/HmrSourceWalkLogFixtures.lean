import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceLifecycleInitial

namespace ECDSAAdd.Arithmetic.Paper935

theorem s2Observed_step0_log :
    (s2ObservedLogs[0]?).map HmrSourceWalkStepLog.log = some (.early s2Step0CompleteLog) := by
  have index : s2ObservedLogs[0]? = s2ObservedLogs0[0]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step1_log :
    (s2ObservedLogs[1]?).map HmrSourceWalkStepLog.log = some (.early s2Step1CompleteLog) := by
  have index : s2ObservedLogs[1]? = s2ObservedLogs0[1]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step2_log :
    (s2ObservedLogs[2]?).map HmrSourceWalkStepLog.log = some (.early s2Step2CompleteLog) := by
  have index : s2ObservedLogs[2]? = s2ObservedLogs0[2]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step3_log :
    (s2ObservedLogs[3]?).map HmrSourceWalkStepLog.log = some (.early s2Step3CompleteLog) := by
  have index : s2ObservedLogs[3]? = s2ObservedLogs0[3]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step4_log :
    (s2ObservedLogs[4]?).map HmrSourceWalkStepLog.log = some (.early s2Step4CompleteLog) := by
  have index : s2ObservedLogs[4]? = s2ObservedLogs0[4]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step5_log :
    (s2ObservedLogs[5]?).map HmrSourceWalkStepLog.log = some (.early s2Step5CompleteLog) := by
  have index : s2ObservedLogs[5]? = s2ObservedLogs0[5]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step6_log :
    (s2ObservedLogs[6]?).map HmrSourceWalkStepLog.log = some (.early s2Step6CompleteLog) := by
  have index : s2ObservedLogs[6]? = s2ObservedLogs0[6]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step7_log :
    (s2ObservedLogs[7]?).map HmrSourceWalkStepLog.log = some (.early s2Step7CompleteLog) := by
  have index : s2ObservedLogs[7]? = s2ObservedLogs0[7]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step8_log :
    (s2ObservedLogs[8]?).map HmrSourceWalkStepLog.log = some (.early s2Step8CompleteLog) := by
  have index : s2ObservedLogs[8]? = s2ObservedLogs0[8]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step9_log :
    (s2ObservedLogs[9]?).map HmrSourceWalkStepLog.log = some (.early s2Step9CompleteLog) := by
  have index : s2ObservedLogs[9]? = s2ObservedLogs0[9]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step10_log :
    (s2ObservedLogs[10]?).map HmrSourceWalkStepLog.log = some (.early s2Step10CompleteLog) := by
  have index : s2ObservedLogs[10]? = s2ObservedLogs0[10]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step11_log :
    (s2ObservedLogs[11]?).map HmrSourceWalkStepLog.log = some (.early s2Step11CompleteLog) := by
  have index : s2ObservedLogs[11]? = s2ObservedLogs0[11]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step12_log :
    (s2ObservedLogs[12]?).map HmrSourceWalkStepLog.log = some (.early s2Step12CompleteLog) := by
  have index : s2ObservedLogs[12]? = s2ObservedLogs0[12]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step13_log :
    (s2ObservedLogs[13]?).map HmrSourceWalkStepLog.log = some (.early s2Step13CompleteLog) := by
  have index : s2ObservedLogs[13]? = s2ObservedLogs0[13]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step14_log :
    (s2ObservedLogs[14]?).map HmrSourceWalkStepLog.log = some (.early s2Step14CompleteLog) := by
  have index : s2ObservedLogs[14]? = s2ObservedLogs0[14]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step15_log :
    (s2ObservedLogs[15]?).map HmrSourceWalkStepLog.log = some (.early s2Step15CompleteLog) := by
  have index : s2ObservedLogs[15]? = s2ObservedLogs0[15]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step498_log :
    (s2ObservedLogs[498]?).map HmrSourceWalkStepLog.log = some (.arm s2ArmBoundaryMetadata s2Step498CompleteLog) := by
  have index : s2ObservedLogs[498]? = s2ObservedLogs496[2]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step0_log :
    (s6ObservedLogs[0]?).map HmrSourceWalkStepLog.log = some (.early s6Step0CompleteLog) := by
  have index : s6ObservedLogs[0]? = s6ObservedLogs0[0]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step1_log :
    (s6ObservedLogs[1]?).map HmrSourceWalkStepLog.log = some (.early s6Step1CompleteLog) := by
  have index : s6ObservedLogs[1]? = s6ObservedLogs0[1]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step2_log :
    (s6ObservedLogs[2]?).map HmrSourceWalkStepLog.log = some (.early s6Step2CompleteLog) := by
  have index : s6ObservedLogs[2]? = s6ObservedLogs0[2]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step3_log :
    (s6ObservedLogs[3]?).map HmrSourceWalkStepLog.log = some (.early s6Step3CompleteLog) := by
  have index : s6ObservedLogs[3]? = s6ObservedLogs0[3]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step4_log :
    (s6ObservedLogs[4]?).map HmrSourceWalkStepLog.log = some (.early s6Step4CompleteLog) := by
  have index : s6ObservedLogs[4]? = s6ObservedLogs0[4]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step5_log :
    (s6ObservedLogs[5]?).map HmrSourceWalkStepLog.log = some (.early s6Step5CompleteLog) := by
  have index : s6ObservedLogs[5]? = s6ObservedLogs0[5]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step6_log :
    (s6ObservedLogs[6]?).map HmrSourceWalkStepLog.log = some (.early s6Step6CompleteLog) := by
  have index : s6ObservedLogs[6]? = s6ObservedLogs0[6]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step7_log :
    (s6ObservedLogs[7]?).map HmrSourceWalkStepLog.log = some (.early s6Step7CompleteLog) := by
  have index : s6ObservedLogs[7]? = s6ObservedLogs0[7]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step8_log :
    (s6ObservedLogs[8]?).map HmrSourceWalkStepLog.log = some (.early s6Step8CompleteLog) := by
  have index : s6ObservedLogs[8]? = s6ObservedLogs0[8]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step9_log :
    (s6ObservedLogs[9]?).map HmrSourceWalkStepLog.log = some (.early s6Step9CompleteLog) := by
  have index : s6ObservedLogs[9]? = s6ObservedLogs0[9]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step10_log :
    (s6ObservedLogs[10]?).map HmrSourceWalkStepLog.log = some (.early s6Step10CompleteLog) := by
  have index : s6ObservedLogs[10]? = s6ObservedLogs0[10]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step11_log :
    (s6ObservedLogs[11]?).map HmrSourceWalkStepLog.log = some (.early s6Step11CompleteLog) := by
  have index : s6ObservedLogs[11]? = s6ObservedLogs0[11]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step12_log :
    (s6ObservedLogs[12]?).map HmrSourceWalkStepLog.log = some (.early s6Step12CompleteLog) := by
  have index : s6ObservedLogs[12]? = s6ObservedLogs0[12]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step13_log :
    (s6ObservedLogs[13]?).map HmrSourceWalkStepLog.log = some (.early s6Step13CompleteLog) := by
  have index : s6ObservedLogs[13]? = s6ObservedLogs0[13]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step14_log :
    (s6ObservedLogs[14]?).map HmrSourceWalkStepLog.log = some (.early s6Step14CompleteLog) := by
  have index : s6ObservedLogs[14]? = s6ObservedLogs0[14]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step15_log :
    (s6ObservedLogs[15]?).map HmrSourceWalkStepLog.log = some (.early s6Step15CompleteLog) := by
  have index : s6ObservedLogs[15]? = s6ObservedLogs0[15]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step498_log :
    (s6ObservedLogs[498]?).map HmrSourceWalkStepLog.log = some (.arm s6ArmBoundaryMetadata s6Step498CompleteLog) := by
  have index : s6ObservedLogs[498]? = s6ObservedLogs496[2]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

end ECDSAAdd.Arithmetic.Paper935
