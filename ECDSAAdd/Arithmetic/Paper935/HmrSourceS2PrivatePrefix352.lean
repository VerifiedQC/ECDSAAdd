import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix320
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment320
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment336

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary319_arena : s2PrivateStep319Plan.outputArena=s2PrivateStep320Arena := rfl
private theorem s2Observed_boundary319_bank : s2PrivateStep319Plan.bank=s2PrivateStep320Bank := by decide +kernel
private theorem s2Observed_boundary319_record : s2PrivateStep319Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910] := rfl
private theorem s2Observed_boundary335_arena : s2PrivateStep335Plan.outputArena=s2PrivateStep336Arena := rfl
private theorem s2Observed_boundary335_bank : s2PrivateStep335Plan.bank=s2PrivateStep336Bank := by decide +kernel
private theorem s2Observed_boundary335_record : s2PrivateStep335Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := rfl
def s2ObservedPrefixPart20Logs := s2ObservedPrefixPart19Logs++s2ObservedSegment320Logs
def s2ObservedPrefixPart20Plan := s2ObservedPrefixPart19Plan.append s2ObservedSegment320Plan
theorem s2ObservedPrefixPart20_length : s2ObservedPrefixPart20Logs.length=336 := by
  rw [s2ObservedPrefixPart20Logs,List.length_append,s2ObservedPrefixPart19_length,s2ObservedSegment320_length]
theorem s2ObservedPrefixPart20_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart20Logs=some s2ObservedPrefixPart20Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart19Plan.metadata s2ObservedPrefixPart19Plan.outputArena s2ObservedPrefixPart19Plan.bank s2ObservedPrefixPart19Plan.record (0+s2ObservedPrefixPart19Logs.length) s2ObservedSegment320Logs=some s2ObservedSegment320Plan := by
    rw [s2ObservedPrefixPart19_metadata,s2ObservedPrefixPart19_outputArena,s2ObservedPrefixPart19_bank,s2ObservedPrefixPart19_record,s2ObservedPrefixPart19_length,Nat.zero_add]
    rw [s2Observed_boundary319_arena,s2Observed_boundary319_bank,s2Observed_boundary319_record]
    exact s2ObservedSegment320_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart19Logs s2ObservedSegment320Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart19Plan s2ObservedSegment320Plan s2ObservedPrefixPart19_checked suffix
theorem s2ObservedPrefixPart20_outputArena : s2ObservedPrefixPart20Plan.outputArena=s2PrivateStep335Plan.outputArena := by
  rw [s2ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment320_outputArena]
theorem s2ObservedPrefixPart20_bank : s2ObservedPrefixPart20Plan.bank=s2PrivateStep335Plan.bank := by
  rw [s2ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment320_bank]
theorem s2ObservedPrefixPart20_record : s2ObservedPrefixPart20Plan.record=s2PrivateStep335Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  rw [s2ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment320_record]
theorem s2ObservedPrefixPart20_metadata : s2ObservedPrefixPart20Plan.metadata=none := by
  rw [s2ObservedPrefixPart20Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment320_metadata]
def s2ObservedPrefixPart21Logs := s2ObservedPrefixPart20Logs++s2ObservedSegment336Logs
def s2ObservedPrefixPart21Plan := s2ObservedPrefixPart20Plan.append s2ObservedSegment336Plan
theorem s2ObservedPrefixPart21_length : s2ObservedPrefixPart21Logs.length=352 := by
  rw [s2ObservedPrefixPart21Logs,List.length_append,s2ObservedPrefixPart20_length,s2ObservedSegment336_length]
theorem s2ObservedPrefixPart21_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart21Logs=some s2ObservedPrefixPart21Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart20Plan.metadata s2ObservedPrefixPart20Plan.outputArena s2ObservedPrefixPart20Plan.bank s2ObservedPrefixPart20Plan.record (0+s2ObservedPrefixPart20Logs.length) s2ObservedSegment336Logs=some s2ObservedSegment336Plan := by
    rw [s2ObservedPrefixPart20_metadata,s2ObservedPrefixPart20_outputArena,s2ObservedPrefixPart20_bank,s2ObservedPrefixPart20_record,s2ObservedPrefixPart20_length,Nat.zero_add]
    rw [s2Observed_boundary335_arena,s2Observed_boundary335_bank,s2Observed_boundary335_record]
    exact s2ObservedSegment336_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart20Logs s2ObservedSegment336Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart20Plan s2ObservedSegment336Plan s2ObservedPrefixPart20_checked suffix
theorem s2ObservedPrefixPart21_outputArena : s2ObservedPrefixPart21Plan.outputArena=s2PrivateStep351Plan.outputArena := by
  rw [s2ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment336_outputArena]
theorem s2ObservedPrefixPart21_bank : s2ObservedPrefixPart21Plan.bank=s2PrivateStep351Plan.bank := by
  rw [s2ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment336_bank]
theorem s2ObservedPrefixPart21_record : s2ObservedPrefixPart21Plan.record=s2PrivateStep351Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  rw [s2ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment336_record]
theorem s2ObservedPrefixPart21_metadata : s2ObservedPrefixPart21Plan.metadata=none := by
  rw [s2ObservedPrefixPart21Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment336_metadata]
theorem s2ObservedExtended352_logs : s2ObservedLogs.take 352=s2ObservedPrefixPart21Logs := by
  have first : s2ObservedLogs320=s2ObservedSegment320Logs := rfl
  have second : s2ObservedLogs336=s2ObservedSegment336Logs := rfl
  have split : s2ObservedLogs.take 352=s2ObservedLogs.take 320 ++ s2ObservedLogs320 ++ s2ObservedLogs336 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart21Logs, s2ObservedPrefixPart20Logs, split, s2ObservedExtended320_logs, first, second, List.append_assoc]
def s2ObservedExtended352Plan : HmrSourceWalkPlan := s2ObservedPrefixPart21Plan
theorem s2ObservedExtended352_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 352)=some s2ObservedExtended352Plan := by
  rw [s2ObservedExtended352_logs]
  exact s2ObservedPrefixPart21_checked


end ECDSAAdd.Arithmetic.Paper935
