import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix352
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment352
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment368

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary351_arena : s2PrivateStep351Plan.outputArena=s2PrivateStep352Arena := rfl
private theorem s2Observed_boundary351_bank : s2PrivateStep351Plan.bank=s2PrivateStep352Bank := by decide +kernel
private theorem s2Observed_boundary351_record : s2PrivateStep351Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := rfl
private theorem s2Observed_boundary367_arena : s2PrivateStep367Plan.outputArena=s2PrivateStep368Arena := rfl
private theorem s2Observed_boundary367_bank : s2PrivateStep367Plan.bank=s2PrivateStep368Bank := by decide +kernel
private theorem s2Observed_boundary367_record : s2PrivateStep367Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := rfl
def s2ObservedPrefixPart22Logs := s2ObservedPrefixPart21Logs++s2ObservedSegment352Logs
def s2ObservedPrefixPart22Plan := s2ObservedPrefixPart21Plan.append s2ObservedSegment352Plan
theorem s2ObservedPrefixPart22_length : s2ObservedPrefixPart22Logs.length=368 := by
  rw [s2ObservedPrefixPart22Logs,List.length_append,s2ObservedPrefixPart21_length,s2ObservedSegment352_length]
theorem s2ObservedPrefixPart22_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart22Logs=some s2ObservedPrefixPart22Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart21Plan.metadata s2ObservedPrefixPart21Plan.outputArena s2ObservedPrefixPart21Plan.bank s2ObservedPrefixPart21Plan.record (0+s2ObservedPrefixPart21Logs.length) s2ObservedSegment352Logs=some s2ObservedSegment352Plan := by
    rw [s2ObservedPrefixPart21_metadata,s2ObservedPrefixPart21_outputArena,s2ObservedPrefixPart21_bank,s2ObservedPrefixPart21_record,s2ObservedPrefixPart21_length,Nat.zero_add]
    rw [s2Observed_boundary351_arena,s2Observed_boundary351_bank,s2Observed_boundary351_record]
    exact s2ObservedSegment352_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart21Logs s2ObservedSegment352Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart21Plan s2ObservedSegment352Plan s2ObservedPrefixPart21_checked suffix
theorem s2ObservedPrefixPart22_outputArena : s2ObservedPrefixPart22Plan.outputArena=s2PrivateStep367Plan.outputArena := by
  rw [s2ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment352_outputArena]
theorem s2ObservedPrefixPart22_bank : s2ObservedPrefixPart22Plan.bank=s2PrivateStep367Plan.bank := by
  rw [s2ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment352_bank]
theorem s2ObservedPrefixPart22_record : s2ObservedPrefixPart22Plan.record=s2PrivateStep367Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  rw [s2ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment352_record]
theorem s2ObservedPrefixPart22_metadata : s2ObservedPrefixPart22Plan.metadata=none := by
  rw [s2ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment352_metadata]
def s2ObservedPrefixPart23Logs := s2ObservedPrefixPart22Logs++s2ObservedSegment368Logs
def s2ObservedPrefixPart23Plan := s2ObservedPrefixPart22Plan.append s2ObservedSegment368Plan
theorem s2ObservedPrefixPart23_length : s2ObservedPrefixPart23Logs.length=384 := by
  rw [s2ObservedPrefixPart23Logs,List.length_append,s2ObservedPrefixPart22_length,s2ObservedSegment368_length]
theorem s2ObservedPrefixPart23_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart23Logs=some s2ObservedPrefixPart23Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart22Plan.metadata s2ObservedPrefixPart22Plan.outputArena s2ObservedPrefixPart22Plan.bank s2ObservedPrefixPart22Plan.record (0+s2ObservedPrefixPart22Logs.length) s2ObservedSegment368Logs=some s2ObservedSegment368Plan := by
    rw [s2ObservedPrefixPart22_metadata,s2ObservedPrefixPart22_outputArena,s2ObservedPrefixPart22_bank,s2ObservedPrefixPart22_record,s2ObservedPrefixPart22_length,Nat.zero_add]
    rw [s2Observed_boundary367_arena,s2Observed_boundary367_bank,s2Observed_boundary367_record]
    exact s2ObservedSegment368_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart22Logs s2ObservedSegment368Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart22Plan s2ObservedSegment368Plan s2ObservedPrefixPart22_checked suffix
theorem s2ObservedPrefixPart23_outputArena : s2ObservedPrefixPart23Plan.outputArena=s2PrivateStep383Plan.outputArena := by
  rw [s2ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment368_outputArena]
theorem s2ObservedPrefixPart23_bank : s2ObservedPrefixPart23Plan.bank=s2PrivateStep383Plan.bank := by
  rw [s2ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment368_bank]
theorem s2ObservedPrefixPart23_record : s2ObservedPrefixPart23Plan.record=s2PrivateStep383Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912] := by
  rw [s2ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment368_record]
theorem s2ObservedPrefixPart23_metadata : s2ObservedPrefixPart23Plan.metadata=none := by
  rw [s2ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment368_metadata]
theorem s2ObservedExtended384_logs : s2ObservedLogs.take 384=s2ObservedPrefixPart23Logs := by
  have first : s2ObservedLogs352=s2ObservedSegment352Logs := rfl
  have second : s2ObservedLogs368=s2ObservedSegment368Logs := rfl
  have split : s2ObservedLogs.take 384=s2ObservedLogs.take 352 ++ s2ObservedLogs352 ++ s2ObservedLogs368 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, s2ObservedLogs256_length, s2ObservedLogs272_length, s2ObservedLogs288_length, s2ObservedLogs304_length, s2ObservedLogs320_length, s2ObservedLogs336_length, s2ObservedLogs352_length, s2ObservedLogs368_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart23Logs, s2ObservedPrefixPart22Logs, split, s2ObservedExtended352_logs, first, second, List.append_assoc]
def s2ObservedExtended384Plan : HmrSourceWalkPlan := s2ObservedPrefixPart23Plan
theorem s2ObservedExtended384_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 384)=some s2ObservedExtended384Plan := by
  rw [s2ObservedExtended384_logs]
  exact s2ObservedPrefixPart23_checked


end ECDSAAdd.Arithmetic.Paper935
