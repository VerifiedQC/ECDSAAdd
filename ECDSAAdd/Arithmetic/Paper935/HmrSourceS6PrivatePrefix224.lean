import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix192
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment192
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment208

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary191_arena : s6PrivateStep191Plan.outputArena=s6PrivateStep192Arena := rfl
private theorem s6Observed_boundary191_bank : s6PrivateStep191Plan.bank=s6PrivateStep192Bank := by decide +kernel
private theorem s6Observed_boundary191_record : s6PrivateStep191Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := rfl
private theorem s6Observed_boundary207_arena : s6PrivateStep207Plan.outputArena=s6PrivateStep208Arena := rfl
private theorem s6Observed_boundary207_bank : s6PrivateStep207Plan.bank=s6PrivateStep208Bank := by decide +kernel
private theorem s6Observed_boundary207_record : s6PrivateStep207Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := rfl
def s6ObservedPrefixPart12Logs := s6ObservedPrefixPart11Logs++s6ObservedSegment192Logs
def s6ObservedPrefixPart12Plan := s6ObservedPrefixPart11Plan.append s6ObservedSegment192Plan
theorem s6ObservedPrefixPart12_length : s6ObservedPrefixPart12Logs.length=208 := by
  rw [s6ObservedPrefixPart12Logs,List.length_append,s6ObservedPrefixPart11_length,s6ObservedSegment192_length]
theorem s6ObservedPrefixPart12_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart12Logs=some s6ObservedPrefixPart12Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart11Plan.metadata s6ObservedPrefixPart11Plan.outputArena s6ObservedPrefixPart11Plan.bank s6ObservedPrefixPart11Plan.record (0+s6ObservedPrefixPart11Logs.length) s6ObservedSegment192Logs=some s6ObservedSegment192Plan := by
    rw [s6ObservedPrefixPart11_metadata,s6ObservedPrefixPart11_outputArena,s6ObservedPrefixPart11_bank,s6ObservedPrefixPart11_record,s6ObservedPrefixPart11_length,Nat.zero_add]
    rw [s6Observed_boundary191_arena,s6Observed_boundary191_bank,s6Observed_boundary191_record]
    exact s6ObservedSegment192_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart11Logs s6ObservedSegment192Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart11Plan s6ObservedSegment192Plan s6ObservedPrefixPart11_checked suffix
theorem s6ObservedPrefixPart12_outputArena : s6ObservedPrefixPart12Plan.outputArena=s6PrivateStep207Plan.outputArena := by
  rw [s6ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment192_outputArena]
theorem s6ObservedPrefixPart12_bank : s6ObservedPrefixPart12Plan.bank=s6PrivateStep207Plan.bank := by
  rw [s6ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment192_bank]
theorem s6ObservedPrefixPart12_record : s6ObservedPrefixPart12Plan.record=s6PrivateStep207Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  rw [s6ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment192_record]
theorem s6ObservedPrefixPart12_metadata : s6ObservedPrefixPart12Plan.metadata=none := by
  rw [s6ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment192_metadata]
def s6ObservedPrefixPart13Logs := s6ObservedPrefixPart12Logs++s6ObservedSegment208Logs
def s6ObservedPrefixPart13Plan := s6ObservedPrefixPart12Plan.append s6ObservedSegment208Plan
theorem s6ObservedPrefixPart13_length : s6ObservedPrefixPart13Logs.length=224 := by
  rw [s6ObservedPrefixPart13Logs,List.length_append,s6ObservedPrefixPart12_length,s6ObservedSegment208_length]
theorem s6ObservedPrefixPart13_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart13Logs=some s6ObservedPrefixPart13Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart12Plan.metadata s6ObservedPrefixPart12Plan.outputArena s6ObservedPrefixPart12Plan.bank s6ObservedPrefixPart12Plan.record (0+s6ObservedPrefixPart12Logs.length) s6ObservedSegment208Logs=some s6ObservedSegment208Plan := by
    rw [s6ObservedPrefixPart12_metadata,s6ObservedPrefixPart12_outputArena,s6ObservedPrefixPart12_bank,s6ObservedPrefixPart12_record,s6ObservedPrefixPart12_length,Nat.zero_add]
    rw [s6Observed_boundary207_arena,s6Observed_boundary207_bank,s6Observed_boundary207_record]
    exact s6ObservedSegment208_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart12Logs s6ObservedSegment208Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart12Plan s6ObservedSegment208Plan s6ObservedPrefixPart12_checked suffix
theorem s6ObservedPrefixPart13_outputArena : s6ObservedPrefixPart13Plan.outputArena=s6PrivateStep223Plan.outputArena := by
  rw [s6ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment208_outputArena]
theorem s6ObservedPrefixPart13_bank : s6ObservedPrefixPart13Plan.bank=s6PrivateStep223Plan.bank := by
  rw [s6ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment208_bank]
theorem s6ObservedPrefixPart13_record : s6ObservedPrefixPart13Plan.record=s6PrivateStep223Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834] := by
  rw [s6ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment208_record]
theorem s6ObservedPrefixPart13_metadata : s6ObservedPrefixPart13Plan.metadata=none := by
  rw [s6ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment208_metadata]
theorem s6ObservedExtended224_logs : s6ObservedLogs.take 224=s6ObservedPrefixPart13Logs := by
  have first : s6ObservedLogs192=s6ObservedSegment192Logs := rfl
  have second : s6ObservedLogs208=s6ObservedSegment208Logs := rfl
  have split : s6ObservedLogs.take 224=s6ObservedLogs.take 192 ++ s6ObservedLogs192 ++ s6ObservedLogs208 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, s6ObservedLogs192_length, s6ObservedLogs208_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart13Logs, s6ObservedPrefixPart12Logs, split, s6ObservedExtended192_logs, first, second, List.append_assoc]
def s6ObservedExtended224Plan : HmrSourceWalkPlan := s6ObservedPrefixPart13Plan
theorem s6ObservedExtended224_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 224)=some s6ObservedExtended224Plan := by
  rw [s6ObservedExtended224_logs]
  exact s6ObservedPrefixPart13_checked


end ECDSAAdd.Arithmetic.Paper935
