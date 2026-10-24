import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk2
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler

import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixturesChunk1

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Observed_step32_log :
    (s2ObservedLogs[32]?).map HmrSourceWalkStepLog.log = some (.early s2Step32CompleteLog) := by
  have index : s2ObservedLogs[32]? = s2ObservedLogs32[0]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step33_log :
    (s2ObservedLogs[33]?).map HmrSourceWalkStepLog.log = some (.early s2Step33CompleteLog) := by
  have index : s2ObservedLogs[33]? = s2ObservedLogs32[1]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step34_log :
    (s2ObservedLogs[34]?).map HmrSourceWalkStepLog.log = some (.early s2Step34CompleteLog) := by
  have index : s2ObservedLogs[34]? = s2ObservedLogs32[2]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step35_log :
    (s2ObservedLogs[35]?).map HmrSourceWalkStepLog.log = some (.early s2Step35CompleteLog) := by
  have index : s2ObservedLogs[35]? = s2ObservedLogs32[3]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step36_log :
    (s2ObservedLogs[36]?).map HmrSourceWalkStepLog.log = some (.early s2Step36CompleteLog) := by
  have index : s2ObservedLogs[36]? = s2ObservedLogs32[4]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step37_log :
    (s2ObservedLogs[37]?).map HmrSourceWalkStepLog.log = some (.early s2Step37CompleteLog) := by
  have index : s2ObservedLogs[37]? = s2ObservedLogs32[5]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step38_log :
    (s2ObservedLogs[38]?).map HmrSourceWalkStepLog.log = some (.early s2Step38CompleteLog) := by
  have index : s2ObservedLogs[38]? = s2ObservedLogs32[6]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step39_log :
    (s2ObservedLogs[39]?).map HmrSourceWalkStepLog.log = some (.early s2Step39CompleteLog) := by
  have index : s2ObservedLogs[39]? = s2ObservedLogs32[7]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step40_log :
    (s2ObservedLogs[40]?).map HmrSourceWalkStepLog.log = some (.early s2Step40CompleteLog) := by
  have index : s2ObservedLogs[40]? = s2ObservedLogs32[8]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step41_log :
    (s2ObservedLogs[41]?).map HmrSourceWalkStepLog.log = some (.early s2Step41CompleteLog) := by
  have index : s2ObservedLogs[41]? = s2ObservedLogs32[9]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step42_log :
    (s2ObservedLogs[42]?).map HmrSourceWalkStepLog.log = some (.early s2Step42CompleteLog) := by
  have index : s2ObservedLogs[42]? = s2ObservedLogs32[10]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step43_log :
    (s2ObservedLogs[43]?).map HmrSourceWalkStepLog.log = some (.early s2Step43CompleteLog) := by
  have index : s2ObservedLogs[43]? = s2ObservedLogs32[11]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step44_log :
    (s2ObservedLogs[44]?).map HmrSourceWalkStepLog.log = some (.early s2Step44CompleteLog) := by
  have index : s2ObservedLogs[44]? = s2ObservedLogs32[12]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step45_log :
    (s2ObservedLogs[45]?).map HmrSourceWalkStepLog.log = some (.early s2Step45CompleteLog) := by
  have index : s2ObservedLogs[45]? = s2ObservedLogs32[13]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step46_log :
    (s2ObservedLogs[46]?).map HmrSourceWalkStepLog.log = some (.early s2Step46CompleteLog) := by
  have index : s2ObservedLogs[46]? = s2ObservedLogs32[14]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step47_log :
    (s2ObservedLogs[47]?).map HmrSourceWalkStepLog.log = some (.early s2Step47CompleteLog) := by
  have index : s2ObservedLogs[47]? = s2ObservedLogs32[15]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl


end ECDSAAdd.Arithmetic.Paper935
