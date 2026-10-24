import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix128
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment128
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment144

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary127_arena : s2PrivateStep127Plan.outputArena=s2PrivateStep128Arena := rfl
private theorem s2Observed_boundary127_bank : s2PrivateStep127Plan.bank=s2PrivateStep128Bank := by decide +kernel
private theorem s2Observed_boundary127_record : s2PrivateStep127Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := rfl
private theorem s2Observed_boundary143_arena : s2PrivateStep143Plan.outputArena=s2PrivateStep144Arena := rfl
private theorem s2Observed_boundary143_bank : s2PrivateStep143Plan.bank=s2PrivateStep144Bank := by decide +kernel
private theorem s2Observed_boundary143_record : s2PrivateStep143Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := rfl
def s2ObservedPrefixPart8Logs := s2ObservedPrefixPart7Logs++s2ObservedSegment128Logs
def s2ObservedPrefixPart8Plan := s2ObservedPrefixPart7Plan.append s2ObservedSegment128Plan
theorem s2ObservedPrefixPart8_length : s2ObservedPrefixPart8Logs.length=144 := by
  rw [s2ObservedPrefixPart8Logs,List.length_append,s2ObservedPrefixPart7_length,s2ObservedSegment128_length]
theorem s2ObservedPrefixPart8_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart8Logs=some s2ObservedPrefixPart8Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart7Plan.metadata s2ObservedPrefixPart7Plan.outputArena s2ObservedPrefixPart7Plan.bank s2ObservedPrefixPart7Plan.record (0+s2ObservedPrefixPart7Logs.length) s2ObservedSegment128Logs=some s2ObservedSegment128Plan := by
    rw [s2ObservedPrefixPart7_metadata,s2ObservedPrefixPart7_outputArena,s2ObservedPrefixPart7_bank,s2ObservedPrefixPart7_record,s2ObservedPrefixPart7_length,Nat.zero_add]
    rw [s2Observed_boundary127_arena,s2Observed_boundary127_bank,s2Observed_boundary127_record]
    exact s2ObservedSegment128_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart7Logs s2ObservedSegment128Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart7Plan s2ObservedSegment128Plan s2ObservedPrefixPart7_checked suffix
theorem s2ObservedPrefixPart8_outputArena : s2ObservedPrefixPart8Plan.outputArena=s2PrivateStep143Plan.outputArena := by
  rw [s2ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment128_outputArena]
theorem s2ObservedPrefixPart8_bank : s2ObservedPrefixPart8Plan.bank=s2PrivateStep143Plan.bank := by
  rw [s2ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment128_bank]
theorem s2ObservedPrefixPart8_record : s2ObservedPrefixPart8Plan.record=s2PrivateStep143Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  rw [s2ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment128_record]
theorem s2ObservedPrefixPart8_metadata : s2ObservedPrefixPart8Plan.metadata=none := by
  rw [s2ObservedPrefixPart8Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment128_metadata]
def s2ObservedPrefixPart9Logs := s2ObservedPrefixPart8Logs++s2ObservedSegment144Logs
def s2ObservedPrefixPart9Plan := s2ObservedPrefixPart8Plan.append s2ObservedSegment144Plan
theorem s2ObservedPrefixPart9_length : s2ObservedPrefixPart9Logs.length=160 := by
  rw [s2ObservedPrefixPart9Logs,List.length_append,s2ObservedPrefixPart8_length,s2ObservedSegment144_length]
theorem s2ObservedPrefixPart9_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart9Logs=some s2ObservedPrefixPart9Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart8Plan.metadata s2ObservedPrefixPart8Plan.outputArena s2ObservedPrefixPart8Plan.bank s2ObservedPrefixPart8Plan.record (0+s2ObservedPrefixPart8Logs.length) s2ObservedSegment144Logs=some s2ObservedSegment144Plan := by
    rw [s2ObservedPrefixPart8_metadata,s2ObservedPrefixPart8_outputArena,s2ObservedPrefixPart8_bank,s2ObservedPrefixPart8_record,s2ObservedPrefixPart8_length,Nat.zero_add]
    rw [s2Observed_boundary143_arena,s2Observed_boundary143_bank,s2Observed_boundary143_record]
    exact s2ObservedSegment144_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart8Logs s2ObservedSegment144Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart8Plan s2ObservedSegment144Plan s2ObservedPrefixPart8_checked suffix
theorem s2ObservedPrefixPart9_outputArena : s2ObservedPrefixPart9Plan.outputArena=s2PrivateStep159Plan.outputArena := by
  rw [s2ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment144_outputArena]
theorem s2ObservedPrefixPart9_bank : s2ObservedPrefixPart9Plan.bank=s2PrivateStep159Plan.bank := by
  rw [s2ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment144_bank]
theorem s2ObservedPrefixPart9_record : s2ObservedPrefixPart9Plan.record=s2PrivateStep159Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  rw [s2ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment144_record]
theorem s2ObservedPrefixPart9_metadata : s2ObservedPrefixPart9Plan.metadata=none := by
  rw [s2ObservedPrefixPart9Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment144_metadata]
theorem s2ObservedExtended160_logs : s2ObservedLogs.take 160=s2ObservedPrefixPart9Logs := by
  have first : s2ObservedLogs128=s2ObservedSegment128Logs := rfl
  have second : s2ObservedLogs144=s2ObservedSegment144Logs := rfl
  have split : s2ObservedLogs.take 160=s2ObservedLogs.take 128 ++ s2ObservedLogs128 ++ s2ObservedLogs144 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart9Logs, s2ObservedPrefixPart8Logs, split, s2ObservedExtended128_logs, first, second, List.append_assoc]
def s2ObservedExtended160Plan : HmrSourceWalkPlan := s2ObservedPrefixPart9Plan
theorem s2ObservedExtended160_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 160)=some s2ObservedExtended160Plan := by
  rw [s2ObservedExtended160_logs]
  exact s2ObservedPrefixPart9_checked


end ECDSAAdd.Arithmetic.Paper935
