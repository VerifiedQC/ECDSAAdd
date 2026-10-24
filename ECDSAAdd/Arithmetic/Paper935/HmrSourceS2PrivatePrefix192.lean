import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix160
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment160
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment176

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary159_arena : s2PrivateStep159Plan.outputArena=s2PrivateStep160Arena := rfl
private theorem s2Observed_boundary159_bank : s2PrivateStep159Plan.bank=s2PrivateStep160Bank := by decide +kernel
private theorem s2Observed_boundary159_record : s2PrivateStep159Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := rfl
private theorem s2Observed_boundary175_arena : s2PrivateStep175Plan.outputArena=s2PrivateStep176Arena := rfl
private theorem s2Observed_boundary175_bank : s2PrivateStep175Plan.bank=s2PrivateStep176Bank := by decide +kernel
private theorem s2Observed_boundary175_record : s2PrivateStep175Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := rfl
def s2ObservedPrefixPart10Logs := s2ObservedPrefixPart9Logs++s2ObservedSegment160Logs
def s2ObservedPrefixPart10Plan := s2ObservedPrefixPart9Plan.append s2ObservedSegment160Plan
theorem s2ObservedPrefixPart10_length : s2ObservedPrefixPart10Logs.length=176 := by
  rw [s2ObservedPrefixPart10Logs,List.length_append,s2ObservedPrefixPart9_length,s2ObservedSegment160_length]
theorem s2ObservedPrefixPart10_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart10Logs=some s2ObservedPrefixPart10Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart9Plan.metadata s2ObservedPrefixPart9Plan.outputArena s2ObservedPrefixPart9Plan.bank s2ObservedPrefixPart9Plan.record (0+s2ObservedPrefixPart9Logs.length) s2ObservedSegment160Logs=some s2ObservedSegment160Plan := by
    rw [s2ObservedPrefixPart9_metadata,s2ObservedPrefixPart9_outputArena,s2ObservedPrefixPart9_bank,s2ObservedPrefixPart9_record,s2ObservedPrefixPart9_length,Nat.zero_add]
    rw [s2Observed_boundary159_arena,s2Observed_boundary159_bank,s2Observed_boundary159_record]
    exact s2ObservedSegment160_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart9Logs s2ObservedSegment160Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart9Plan s2ObservedSegment160Plan s2ObservedPrefixPart9_checked suffix
theorem s2ObservedPrefixPart10_outputArena : s2ObservedPrefixPart10Plan.outputArena=s2PrivateStep175Plan.outputArena := by
  rw [s2ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment160_outputArena]
theorem s2ObservedPrefixPart10_bank : s2ObservedPrefixPart10Plan.bank=s2PrivateStep175Plan.bank := by
  rw [s2ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment160_bank]
theorem s2ObservedPrefixPart10_record : s2ObservedPrefixPart10Plan.record=s2PrivateStep175Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  rw [s2ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment160_record]
theorem s2ObservedPrefixPart10_metadata : s2ObservedPrefixPart10Plan.metadata=none := by
  rw [s2ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment160_metadata]
def s2ObservedPrefixPart11Logs := s2ObservedPrefixPart10Logs++s2ObservedSegment176Logs
def s2ObservedPrefixPart11Plan := s2ObservedPrefixPart10Plan.append s2ObservedSegment176Plan
theorem s2ObservedPrefixPart11_length : s2ObservedPrefixPart11Logs.length=192 := by
  rw [s2ObservedPrefixPart11Logs,List.length_append,s2ObservedPrefixPart10_length,s2ObservedSegment176_length]
theorem s2ObservedPrefixPart11_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart11Logs=some s2ObservedPrefixPart11Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart10Plan.metadata s2ObservedPrefixPart10Plan.outputArena s2ObservedPrefixPart10Plan.bank s2ObservedPrefixPart10Plan.record (0+s2ObservedPrefixPart10Logs.length) s2ObservedSegment176Logs=some s2ObservedSegment176Plan := by
    rw [s2ObservedPrefixPart10_metadata,s2ObservedPrefixPart10_outputArena,s2ObservedPrefixPart10_bank,s2ObservedPrefixPart10_record,s2ObservedPrefixPart10_length,Nat.zero_add]
    rw [s2Observed_boundary175_arena,s2Observed_boundary175_bank,s2Observed_boundary175_record]
    exact s2ObservedSegment176_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart10Logs s2ObservedSegment176Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart10Plan s2ObservedSegment176Plan s2ObservedPrefixPart10_checked suffix
theorem s2ObservedPrefixPart11_outputArena : s2ObservedPrefixPart11Plan.outputArena=s2PrivateStep191Plan.outputArena := by
  rw [s2ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment176_outputArena]
theorem s2ObservedPrefixPart11_bank : s2ObservedPrefixPart11Plan.bank=s2PrivateStep191Plan.bank := by
  rw [s2ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment176_bank]
theorem s2ObservedPrefixPart11_record : s2ObservedPrefixPart11Plan.record=s2PrivateStep191Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := by
  rw [s2ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment176_record]
theorem s2ObservedPrefixPart11_metadata : s2ObservedPrefixPart11Plan.metadata=none := by
  rw [s2ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment176_metadata]
theorem s2ObservedExtended192_logs : s2ObservedLogs.take 192=s2ObservedPrefixPart11Logs := by
  have first : s2ObservedLogs160=s2ObservedSegment160Logs := rfl
  have second : s2ObservedLogs176=s2ObservedSegment176Logs := rfl
  have split : s2ObservedLogs.take 192=s2ObservedLogs.take 160 ++ s2ObservedLogs160 ++ s2ObservedLogs176 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart11Logs, s2ObservedPrefixPart10Logs, split, s2ObservedExtended160_logs, first, second, List.append_assoc]
def s2ObservedExtended192Plan : HmrSourceWalkPlan := s2ObservedPrefixPart11Plan
theorem s2ObservedExtended192_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 192)=some s2ObservedExtended192Plan := by
  rw [s2ObservedExtended192_logs]
  exact s2ObservedPrefixPart11_checked


end ECDSAAdd.Arithmetic.Paper935
