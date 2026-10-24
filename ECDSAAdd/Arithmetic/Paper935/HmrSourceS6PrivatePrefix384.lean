import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix352
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment352
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment368

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary351_arena : s6PrivateStep351Plan.outputArena=s6PrivateStep352Arena := rfl
private theorem s6Observed_boundary351_bank : s6PrivateStep351Plan.bank=s6PrivateStep352Bank := by decide +kernel
private theorem s6Observed_boundary351_record : s6PrivateStep351Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := rfl
private theorem s6Observed_boundary367_arena : s6PrivateStep367Plan.outputArena=s6PrivateStep368Arena := rfl
private theorem s6Observed_boundary367_bank : s6PrivateStep367Plan.bank=s6PrivateStep368Bank := by decide +kernel
private theorem s6Observed_boundary367_record : s6PrivateStep367Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := rfl
def s6ObservedPrefixPart22Logs := s6ObservedPrefixPart21Logs++s6ObservedSegment352Logs
def s6ObservedPrefixPart22Plan := s6ObservedPrefixPart21Plan.append s6ObservedSegment352Plan
theorem s6ObservedPrefixPart22_length : s6ObservedPrefixPart22Logs.length=368 := by
  rw [s6ObservedPrefixPart22Logs,List.length_append,s6ObservedPrefixPart21_length,s6ObservedSegment352_length]
theorem s6ObservedPrefixPart22_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart22Logs=some s6ObservedPrefixPart22Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart21Plan.metadata s6ObservedPrefixPart21Plan.outputArena s6ObservedPrefixPart21Plan.bank s6ObservedPrefixPart21Plan.record (0+s6ObservedPrefixPart21Logs.length) s6ObservedSegment352Logs=some s6ObservedSegment352Plan := by
    rw [s6ObservedPrefixPart21_metadata,s6ObservedPrefixPart21_outputArena,s6ObservedPrefixPart21_bank,s6ObservedPrefixPart21_record,s6ObservedPrefixPart21_length,Nat.zero_add]
    rw [s6Observed_boundary351_arena,s6Observed_boundary351_bank,s6Observed_boundary351_record]
    exact s6ObservedSegment352_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart21Logs s6ObservedSegment352Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart21Plan s6ObservedSegment352Plan s6ObservedPrefixPart21_checked suffix
theorem s6ObservedPrefixPart22_outputArena : s6ObservedPrefixPart22Plan.outputArena=s6PrivateStep367Plan.outputArena := by
  rw [s6ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment352_outputArena]
theorem s6ObservedPrefixPart22_bank : s6ObservedPrefixPart22Plan.bank=s6PrivateStep367Plan.bank := by
  rw [s6ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment352_bank]
theorem s6ObservedPrefixPart22_record : s6ObservedPrefixPart22Plan.record=s6PrivateStep367Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  rw [s6ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment352_record]
theorem s6ObservedPrefixPart22_metadata : s6ObservedPrefixPart22Plan.metadata=none := by
  rw [s6ObservedPrefixPart22Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment352_metadata]
def s6ObservedPrefixPart23Logs := s6ObservedPrefixPart22Logs++s6ObservedSegment368Logs
def s6ObservedPrefixPart23Plan := s6ObservedPrefixPart22Plan.append s6ObservedSegment368Plan
theorem s6ObservedPrefixPart23_length : s6ObservedPrefixPart23Logs.length=384 := by
  rw [s6ObservedPrefixPart23Logs,List.length_append,s6ObservedPrefixPart22_length,s6ObservedSegment368_length]
theorem s6ObservedPrefixPart23_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart23Logs=some s6ObservedPrefixPart23Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart22Plan.metadata s6ObservedPrefixPart22Plan.outputArena s6ObservedPrefixPart22Plan.bank s6ObservedPrefixPart22Plan.record (0+s6ObservedPrefixPart22Logs.length) s6ObservedSegment368Logs=some s6ObservedSegment368Plan := by
    rw [s6ObservedPrefixPart22_metadata,s6ObservedPrefixPart22_outputArena,s6ObservedPrefixPart22_bank,s6ObservedPrefixPart22_record,s6ObservedPrefixPart22_length,Nat.zero_add]
    rw [s6Observed_boundary367_arena,s6Observed_boundary367_bank,s6Observed_boundary367_record]
    exact s6ObservedSegment368_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart22Logs s6ObservedSegment368Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart22Plan s6ObservedSegment368Plan s6ObservedPrefixPart22_checked suffix
theorem s6ObservedPrefixPart23_outputArena : s6ObservedPrefixPart23Plan.outputArena=s6PrivateStep383Plan.outputArena := by
  rw [s6ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment368_outputArena]
theorem s6ObservedPrefixPart23_bank : s6ObservedPrefixPart23Plan.bank=s6PrivateStep383Plan.bank := by
  rw [s6ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment368_bank]
theorem s6ObservedPrefixPart23_record : s6ObservedPrefixPart23Plan.record=s6PrivateStep383Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815] := by
  rw [s6ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment368_record]
theorem s6ObservedPrefixPart23_metadata : s6ObservedPrefixPart23Plan.metadata=none := by
  rw [s6ObservedPrefixPart23Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment368_metadata]
theorem s6ObservedExtended384_logs : s6ObservedLogs.take 384=s6ObservedPrefixPart23Logs := by
  have first : s6ObservedLogs352=s6ObservedSegment352Logs := rfl
  have second : s6ObservedLogs368=s6ObservedSegment368Logs := rfl
  have split : s6ObservedLogs.take 384=s6ObservedLogs.take 352 ++ s6ObservedLogs352 ++ s6ObservedLogs368 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, s6ObservedLogs224_length, s6ObservedLogs240_length, s6ObservedLogs256_length, s6ObservedLogs272_length, s6ObservedLogs288_length, s6ObservedLogs304_length, s6ObservedLogs320_length, s6ObservedLogs336_length, s6ObservedLogs352_length, s6ObservedLogs368_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart23Logs, s6ObservedPrefixPart22Logs, split, s6ObservedExtended352_logs, first, second, List.append_assoc]
def s6ObservedExtended384Plan : HmrSourceWalkPlan := s6ObservedPrefixPart23Plan
theorem s6ObservedExtended384_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 384)=some s6ObservedExtended384Plan := by
  rw [s6ObservedExtended384_logs]
  exact s6ObservedPrefixPart23_checked


end ECDSAAdd.Arithmetic.Paper935
