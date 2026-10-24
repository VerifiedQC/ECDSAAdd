import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmInitial
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk8
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler

import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixturesChunk7

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Observed_step63_log :
    (s6ObservedLogs[63]?).map HmrSourceWalkStepLog.log = some (.early s6Step63CompleteLog) := by
  have index : s6ObservedLogs[63]? = s6ObservedLogs48[15]? := by
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
