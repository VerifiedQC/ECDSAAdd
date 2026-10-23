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

theorem s6Observed_step498_log :
    (s6ObservedLogs[498]?).map HmrSourceWalkStepLog.log = some (.arm s6ArmBoundaryMetadata s6Step498CompleteLog) := by
  have index : s6ObservedLogs[498]? = s6ObservedLogs496[2]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

end ECDSAAdd.Arithmetic.Paper935
