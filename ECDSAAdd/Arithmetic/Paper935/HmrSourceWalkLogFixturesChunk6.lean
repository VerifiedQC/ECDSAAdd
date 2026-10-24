import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk6
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler

import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixturesChunk5

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Observed_step31_log :
    (s6ObservedLogs[31]?).map HmrSourceWalkStepLog.log = some (.early s6Step31CompleteLog) := by
  have index : s6ObservedLogs[31]? = s6ObservedLogs16[15]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step32_log :
    (s6ObservedLogs[32]?).map HmrSourceWalkStepLog.log = some (.early s6Step32CompleteLog) := by
  have index : s6ObservedLogs[32]? = s6ObservedLogs32[0]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step33_log :
    (s6ObservedLogs[33]?).map HmrSourceWalkStepLog.log = some (.early s6Step33CompleteLog) := by
  have index : s6ObservedLogs[33]? = s6ObservedLogs32[1]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step34_log :
    (s6ObservedLogs[34]?).map HmrSourceWalkStepLog.log = some (.early s6Step34CompleteLog) := by
  have index : s6ObservedLogs[34]? = s6ObservedLogs32[2]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step35_log :
    (s6ObservedLogs[35]?).map HmrSourceWalkStepLog.log = some (.early s6Step35CompleteLog) := by
  have index : s6ObservedLogs[35]? = s6ObservedLogs32[3]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step36_log :
    (s6ObservedLogs[36]?).map HmrSourceWalkStepLog.log = some (.early s6Step36CompleteLog) := by
  have index : s6ObservedLogs[36]? = s6ObservedLogs32[4]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step37_log :
    (s6ObservedLogs[37]?).map HmrSourceWalkStepLog.log = some (.early s6Step37CompleteLog) := by
  have index : s6ObservedLogs[37]? = s6ObservedLogs32[5]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step38_log :
    (s6ObservedLogs[38]?).map HmrSourceWalkStepLog.log = some (.early s6Step38CompleteLog) := by
  have index : s6ObservedLogs[38]? = s6ObservedLogs32[6]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step39_log :
    (s6ObservedLogs[39]?).map HmrSourceWalkStepLog.log = some (.early s6Step39CompleteLog) := by
  have index : s6ObservedLogs[39]? = s6ObservedLogs32[7]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step40_log :
    (s6ObservedLogs[40]?).map HmrSourceWalkStepLog.log = some (.early s6Step40CompleteLog) := by
  have index : s6ObservedLogs[40]? = s6ObservedLogs32[8]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step41_log :
    (s6ObservedLogs[41]?).map HmrSourceWalkStepLog.log = some (.early s6Step41CompleteLog) := by
  have index : s6ObservedLogs[41]? = s6ObservedLogs32[9]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step42_log :
    (s6ObservedLogs[42]?).map HmrSourceWalkStepLog.log = some (.early s6Step42CompleteLog) := by
  have index : s6ObservedLogs[42]? = s6ObservedLogs32[10]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step43_log :
    (s6ObservedLogs[43]?).map HmrSourceWalkStepLog.log = some (.early s6Step43CompleteLog) := by
  have index : s6ObservedLogs[43]? = s6ObservedLogs32[11]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step44_log :
    (s6ObservedLogs[44]?).map HmrSourceWalkStepLog.log = some (.early s6Step44CompleteLog) := by
  have index : s6ObservedLogs[44]? = s6ObservedLogs32[12]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step45_log :
    (s6ObservedLogs[45]?).map HmrSourceWalkStepLog.log = some (.early s6Step45CompleteLog) := by
  have index : s6ObservedLogs[45]? = s6ObservedLogs32[13]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl

theorem s6Observed_step46_log :
    (s6ObservedLogs[46]?).map HmrSourceWalkStepLog.log = some (.early s6Step46CompleteLog) := by
  have index : s6ObservedLogs[46]? = s6ObservedLogs32[14]? := by
    norm_num only [s6ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, s6ObservedLogs384_length, s6ObservedLogs400_length, s6ObservedLogs416_length, s6ObservedLogs432_length, s6ObservedLogs448_length, s6ObservedLogs464_length, s6ObservedLogs480_length, s6ObservedLogs496_length, s6ObservedLogs512_length, s6ObservedLogs528_length]
  rw [index]
  rfl


end ECDSAAdd.Arithmetic.Paper935
