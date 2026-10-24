import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix256
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment256
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment272

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary255_arena : s2PrivateStep255Plan.outputArena=s2PrivateStep256Arena := rfl
private theorem s2Observed_boundary255_bank : s2PrivateStep255Plan.bank=s2PrivateStep256Bank := by decide +kernel
private theorem s2Observed_boundary255_record : s2PrivateStep255Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := rfl
private theorem s2Observed_boundary271_arena : s2PrivateStep271Plan.outputArena=s2PrivateStep272Arena := rfl
private theorem s2Observed_boundary271_bank : s2PrivateStep271Plan.bank=s2PrivateStep272Bank := by decide +kernel
private theorem s2Observed_boundary271_record : s2PrivateStep271Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := rfl
def s2ObservedPrefixPart16Logs := s2ObservedPrefixPart15Logs++s2ObservedSegment256Logs
def s2ObservedPrefixPart16Plan := s2ObservedPrefixPart15Plan.append s2ObservedSegment256Plan
theorem s2ObservedPrefixPart16_length : s2ObservedPrefixPart16Logs.length=272 := by
  rw [s2ObservedPrefixPart16Logs,List.length_append,s2ObservedPrefixPart15_length,s2ObservedSegment256_length]
theorem s2ObservedPrefixPart16_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart16Logs=some s2ObservedPrefixPart16Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart15Plan.metadata s2ObservedPrefixPart15Plan.outputArena s2ObservedPrefixPart15Plan.bank s2ObservedPrefixPart15Plan.record (0+s2ObservedPrefixPart15Logs.length) s2ObservedSegment256Logs=some s2ObservedSegment256Plan := by
    rw [s2ObservedPrefixPart15_metadata,s2ObservedPrefixPart15_outputArena,s2ObservedPrefixPart15_bank,s2ObservedPrefixPart15_record,s2ObservedPrefixPart15_length,Nat.zero_add]
    rw [s2Observed_boundary255_arena,s2Observed_boundary255_bank,s2Observed_boundary255_record]
    exact s2ObservedSegment256_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart15Logs s2ObservedSegment256Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart15Plan s2ObservedSegment256Plan s2ObservedPrefixPart15_checked suffix
theorem s2ObservedPrefixPart16_outputArena : s2ObservedPrefixPart16Plan.outputArena=s2PrivateStep271Plan.outputArena := by
  rw [s2ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment256_outputArena]
theorem s2ObservedPrefixPart16_bank : s2ObservedPrefixPart16Plan.bank=s2PrivateStep271Plan.bank := by
  rw [s2ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment256_bank]
theorem s2ObservedPrefixPart16_record : s2ObservedPrefixPart16Plan.record=s2PrivateStep271Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906] := by
  rw [s2ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment256_record]
theorem s2ObservedPrefixPart16_metadata : s2ObservedPrefixPart16Plan.metadata=none := by
  rw [s2ObservedPrefixPart16Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment256_metadata]
def s2ObservedPrefixPart17Logs := s2ObservedPrefixPart16Logs++s2ObservedSegment272Logs
def s2ObservedPrefixPart17Plan := s2ObservedPrefixPart16Plan.append s2ObservedSegment272Plan
theorem s2ObservedPrefixPart17_length : s2ObservedPrefixPart17Logs.length=288 := by
  rw [s2ObservedPrefixPart17Logs,List.length_append,s2ObservedPrefixPart16_length,s2ObservedSegment272_length]
theorem s2ObservedPrefixPart17_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart17Logs=some s2ObservedPrefixPart17Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart16Plan.metadata s2ObservedPrefixPart16Plan.outputArena s2ObservedPrefixPart16Plan.bank s2ObservedPrefixPart16Plan.record (0+s2ObservedPrefixPart16Logs.length) s2ObservedSegment272Logs=some s2ObservedSegment272Plan := by
    rw [s2ObservedPrefixPart16_metadata,s2ObservedPrefixPart16_outputArena,s2ObservedPrefixPart16_bank,s2ObservedPrefixPart16_record,s2ObservedPrefixPart16_length,Nat.zero_add]
    rw [s2Observed_boundary271_arena,s2Observed_boundary271_bank,s2Observed_boundary271_record]
    exact s2ObservedSegment272_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart16Logs s2ObservedSegment272Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart16Plan s2ObservedSegment272Plan s2ObservedPrefixPart16_checked suffix
theorem s2ObservedPrefixPart17_outputArena : s2ObservedPrefixPart17Plan.outputArena=s2PrivateStep287Plan.outputArena := by
  rw [s2ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment272_outputArena]
theorem s2ObservedPrefixPart17_bank : s2ObservedPrefixPart17Plan.bank=s2PrivateStep287Plan.bank := by
  rw [s2ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment272_bank]
theorem s2ObservedPrefixPart17_record : s2ObservedPrefixPart17Plan.record=s2PrivateStep287Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905] := by
  rw [s2ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment272_record]
theorem s2ObservedPrefixPart17_metadata : s2ObservedPrefixPart17Plan.metadata=none := by
  rw [s2ObservedPrefixPart17Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment272_metadata]
theorem s2ObservedExtended288_logs : s2ObservedLogs.take 288=s2ObservedPrefixPart17Logs := by
  have first : s2ObservedLogs256=s2ObservedSegment256Logs := rfl
  have second : s2ObservedLogs272=s2ObservedSegment272Logs := rfl
  have split : s2ObservedLogs.take 288=s2ObservedLogs.take 256 ++ s2ObservedLogs256 ++ s2ObservedLogs272 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart17Logs, s2ObservedPrefixPart16Logs, split, s2ObservedExtended256_logs, first, second, List.append_assoc]
def s2ObservedExtended288Plan : HmrSourceWalkPlan := s2ObservedPrefixPart17Plan
theorem s2ObservedExtended288_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 288)=some s2ObservedExtended288Plan := by
  rw [s2ObservedExtended288_logs]
  exact s2ObservedPrefixPart17_checked


end ECDSAAdd.Arithmetic.Paper935
