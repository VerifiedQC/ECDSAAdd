import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepInitialChunk3
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler

import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkLogFixturesChunk2

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Observed_step48_log :
    (s2ObservedLogs[48]?).map HmrSourceWalkStepLog.log = some (.early s2Step48CompleteLog) := by
  have index : s2ObservedLogs[48]? = s2ObservedLogs48[0]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step49_log :
    (s2ObservedLogs[49]?).map HmrSourceWalkStepLog.log = some (.early s2Step49CompleteLog) := by
  have index : s2ObservedLogs[49]? = s2ObservedLogs48[1]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step50_log :
    (s2ObservedLogs[50]?).map HmrSourceWalkStepLog.log = some (.early s2Step50CompleteLog) := by
  have index : s2ObservedLogs[50]? = s2ObservedLogs48[2]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step51_log :
    (s2ObservedLogs[51]?).map HmrSourceWalkStepLog.log = some (.early s2Step51CompleteLog) := by
  have index : s2ObservedLogs[51]? = s2ObservedLogs48[3]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step52_log :
    (s2ObservedLogs[52]?).map HmrSourceWalkStepLog.log = some (.early s2Step52CompleteLog) := by
  have index : s2ObservedLogs[52]? = s2ObservedLogs48[4]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step53_log :
    (s2ObservedLogs[53]?).map HmrSourceWalkStepLog.log = some (.early s2Step53CompleteLog) := by
  have index : s2ObservedLogs[53]? = s2ObservedLogs48[5]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step54_log :
    (s2ObservedLogs[54]?).map HmrSourceWalkStepLog.log = some (.early s2Step54CompleteLog) := by
  have index : s2ObservedLogs[54]? = s2ObservedLogs48[6]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step55_log :
    (s2ObservedLogs[55]?).map HmrSourceWalkStepLog.log = some (.early s2Step55CompleteLog) := by
  have index : s2ObservedLogs[55]? = s2ObservedLogs48[7]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step56_log :
    (s2ObservedLogs[56]?).map HmrSourceWalkStepLog.log = some (.early s2Step56CompleteLog) := by
  have index : s2ObservedLogs[56]? = s2ObservedLogs48[8]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step57_log :
    (s2ObservedLogs[57]?).map HmrSourceWalkStepLog.log = some (.early s2Step57CompleteLog) := by
  have index : s2ObservedLogs[57]? = s2ObservedLogs48[9]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step58_log :
    (s2ObservedLogs[58]?).map HmrSourceWalkStepLog.log = some (.early s2Step58CompleteLog) := by
  have index : s2ObservedLogs[58]? = s2ObservedLogs48[10]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step59_log :
    (s2ObservedLogs[59]?).map HmrSourceWalkStepLog.log = some (.early s2Step59CompleteLog) := by
  have index : s2ObservedLogs[59]? = s2ObservedLogs48[11]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step60_log :
    (s2ObservedLogs[60]?).map HmrSourceWalkStepLog.log = some (.early s2Step60CompleteLog) := by
  have index : s2ObservedLogs[60]? = s2ObservedLogs48[12]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step61_log :
    (s2ObservedLogs[61]?).map HmrSourceWalkStepLog.log = some (.early s2Step61CompleteLog) := by
  have index : s2ObservedLogs[61]? = s2ObservedLogs48[13]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step62_log :
    (s2ObservedLogs[62]?).map HmrSourceWalkStepLog.log = some (.early s2Step62CompleteLog) := by
  have index : s2ObservedLogs[62]? = s2ObservedLogs48[14]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl

theorem s2Observed_step63_log :
    (s2ObservedLogs[63]?).map HmrSourceWalkStepLog.log = some (.early s2Step63CompleteLog) := by
  have index : s2ObservedLogs[63]? = s2ObservedLogs48[15]? := by
    norm_num only [s2ObservedLogs, List.getElem?_append, List.length_append, ite_true, ite_false, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, s2ObservedLogs384_length, s2ObservedLogs400_length, s2ObservedLogs416_length, s2ObservedLogs432_length, s2ObservedLogs448_length, s2ObservedLogs464_length, s2ObservedLogs480_length, s2ObservedLogs496_length, s2ObservedLogs512_length, s2ObservedLogs528_length]
  rw [index]
  rfl


end ECDSAAdd.Arithmetic.Paper935
