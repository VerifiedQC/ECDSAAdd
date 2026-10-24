import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix288
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment288
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment304

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary287_arena : s2PrivateStep287Plan.outputArena=s2PrivateStep288Arena := rfl
private theorem s2Observed_boundary287_bank : s2PrivateStep287Plan.bank=s2PrivateStep288Bank := by decide +kernel
private theorem s2Observed_boundary287_record : s2PrivateStep287Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := rfl
private theorem s2Observed_boundary303_arena : s2PrivateStep303Plan.outputArena=s2PrivateStep304Arena := rfl
private theorem s2Observed_boundary303_bank : s2PrivateStep303Plan.bank=s2PrivateStep304Bank := by decide +kernel
private theorem s2Observed_boundary303_record : s2PrivateStep303Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := rfl
def s2ObservedPrefixPart18Logs := s2ObservedPrefixPart17Logs++s2ObservedSegment288Logs
def s2ObservedPrefixPart18Plan := s2ObservedPrefixPart17Plan.append s2ObservedSegment288Plan
theorem s2ObservedPrefixPart18_length : s2ObservedPrefixPart18Logs.length=304 := by
  rw [s2ObservedPrefixPart18Logs,List.length_append,s2ObservedPrefixPart17_length,s2ObservedSegment288_length]
theorem s2ObservedPrefixPart18_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart18Logs=some s2ObservedPrefixPart18Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart17Plan.metadata s2ObservedPrefixPart17Plan.outputArena s2ObservedPrefixPart17Plan.bank s2ObservedPrefixPart17Plan.record (0+s2ObservedPrefixPart17Logs.length) s2ObservedSegment288Logs=some s2ObservedSegment288Plan := by
    rw [s2ObservedPrefixPart17_metadata,s2ObservedPrefixPart17_outputArena,s2ObservedPrefixPart17_bank,s2ObservedPrefixPart17_record,s2ObservedPrefixPart17_length,Nat.zero_add]
    rw [s2Observed_boundary287_arena,s2Observed_boundary287_bank,s2Observed_boundary287_record]
    exact s2ObservedSegment288_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart17Logs s2ObservedSegment288Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart17Plan s2ObservedSegment288Plan s2ObservedPrefixPart17_checked suffix
theorem s2ObservedPrefixPart18_outputArena : s2ObservedPrefixPart18Plan.outputArena=s2PrivateStep303Plan.outputArena := by
  rw [s2ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment288_outputArena]
theorem s2ObservedPrefixPart18_bank : s2ObservedPrefixPart18Plan.bank=s2PrivateStep303Plan.bank := by
  rw [s2ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment288_bank]
theorem s2ObservedPrefixPart18_record : s2ObservedPrefixPart18Plan.record=s2PrivateStep303Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904] := by
  rw [s2ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment288_record]
theorem s2ObservedPrefixPart18_metadata : s2ObservedPrefixPart18Plan.metadata=none := by
  rw [s2ObservedPrefixPart18Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment288_metadata]
def s2ObservedPrefixPart19Logs := s2ObservedPrefixPart18Logs++s2ObservedSegment304Logs
def s2ObservedPrefixPart19Plan := s2ObservedPrefixPart18Plan.append s2ObservedSegment304Plan
theorem s2ObservedPrefixPart19_length : s2ObservedPrefixPart19Logs.length=320 := by
  rw [s2ObservedPrefixPart19Logs,List.length_append,s2ObservedPrefixPart18_length,s2ObservedSegment304_length]
theorem s2ObservedPrefixPart19_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart19Logs=some s2ObservedPrefixPart19Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart18Plan.metadata s2ObservedPrefixPart18Plan.outputArena s2ObservedPrefixPart18Plan.bank s2ObservedPrefixPart18Plan.record (0+s2ObservedPrefixPart18Logs.length) s2ObservedSegment304Logs=some s2ObservedSegment304Plan := by
    rw [s2ObservedPrefixPart18_metadata,s2ObservedPrefixPart18_outputArena,s2ObservedPrefixPart18_bank,s2ObservedPrefixPart18_record,s2ObservedPrefixPart18_length,Nat.zero_add]
    rw [s2Observed_boundary303_arena,s2Observed_boundary303_bank,s2Observed_boundary303_record]
    exact s2ObservedSegment304_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart18Logs s2ObservedSegment304Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart18Plan s2ObservedSegment304Plan s2ObservedPrefixPart18_checked suffix
theorem s2ObservedPrefixPart19_outputArena : s2ObservedPrefixPart19Plan.outputArena=s2PrivateStep319Plan.outputArena := by
  rw [s2ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment304_outputArena]
theorem s2ObservedPrefixPart19_bank : s2ObservedPrefixPart19Plan.bank=s2PrivateStep319Plan.bank := by
  rw [s2ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment304_bank]
theorem s2ObservedPrefixPart19_record : s2ObservedPrefixPart19Plan.record=s2PrivateStep319Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  rw [s2ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment304_record]
theorem s2ObservedPrefixPart19_metadata : s2ObservedPrefixPart19Plan.metadata=none := by
  rw [s2ObservedPrefixPart19Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment304_metadata]
theorem s2ObservedExtended320_logs : s2ObservedLogs.take 320=s2ObservedPrefixPart19Logs := by
  have first : s2ObservedLogs288=s2ObservedSegment288Logs := rfl
  have second : s2ObservedLogs304=s2ObservedSegment304Logs := rfl
  have split : s2ObservedLogs.take 320=s2ObservedLogs.take 288 ++ s2ObservedLogs288 ++ s2ObservedLogs304 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart19Logs, s2ObservedPrefixPart18Logs, split, s2ObservedExtended288_logs, first, second, List.append_assoc]
def s2ObservedExtended320Plan : HmrSourceWalkPlan := s2ObservedPrefixPart19Plan
theorem s2ObservedExtended320_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 320)=some s2ObservedExtended320Plan := by
  rw [s2ObservedExtended320_logs]
  exact s2ObservedPrefixPart19_checked


end ECDSAAdd.Arithmetic.Paper935
