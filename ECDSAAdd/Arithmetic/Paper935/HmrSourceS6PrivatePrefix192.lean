import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivatePrefix160
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment160
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateSegment176

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s6Observed_boundary159_arena : s6PrivateStep159Plan.outputArena=s6PrivateStep160Arena := rfl
private theorem s6Observed_boundary159_bank : s6PrivateStep159Plan.bank=s6PrivateStep160Bank := by decide +kernel
private theorem s6Observed_boundary159_record : s6PrivateStep159Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := rfl
private theorem s6Observed_boundary175_arena : s6PrivateStep175Plan.outputArena=s6PrivateStep176Arena := rfl
private theorem s6Observed_boundary175_bank : s6PrivateStep175Plan.bank=s6PrivateStep176Bank := by decide +kernel
private theorem s6Observed_boundary175_record : s6PrivateStep175Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]=[895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := rfl
def s6ObservedPrefixPart10Logs := s6ObservedPrefixPart9Logs++s6ObservedSegment160Logs
def s6ObservedPrefixPart10Plan := s6ObservedPrefixPart9Plan.append s6ObservedSegment160Plan
theorem s6ObservedPrefixPart10_length : s6ObservedPrefixPart10Logs.length=176 := by
  rw [s6ObservedPrefixPart10Logs,List.length_append,s6ObservedPrefixPart9_length,s6ObservedSegment160_length]
theorem s6ObservedPrefixPart10_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart10Logs=some s6ObservedPrefixPart10Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart9Plan.metadata s6ObservedPrefixPart9Plan.outputArena s6ObservedPrefixPart9Plan.bank s6ObservedPrefixPart9Plan.record (0+s6ObservedPrefixPart9Logs.length) s6ObservedSegment160Logs=some s6ObservedSegment160Plan := by
    rw [s6ObservedPrefixPart9_metadata,s6ObservedPrefixPart9_outputArena,s6ObservedPrefixPart9_bank,s6ObservedPrefixPart9_record,s6ObservedPrefixPart9_length,Nat.zero_add]
    rw [s6Observed_boundary159_arena,s6Observed_boundary159_bank,s6Observed_boundary159_record]
    exact s6ObservedSegment160_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart9Logs s6ObservedSegment160Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart9Plan s6ObservedSegment160Plan s6ObservedPrefixPart9_checked suffix
theorem s6ObservedPrefixPart10_outputArena : s6ObservedPrefixPart10Plan.outputArena=s6PrivateStep175Plan.outputArena := by
  rw [s6ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment160_outputArena]
theorem s6ObservedPrefixPart10_bank : s6ObservedPrefixPart10Plan.bank=s6PrivateStep175Plan.bank := by
  rw [s6ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment160_bank]
theorem s6ObservedPrefixPart10_record : s6ObservedPrefixPart10Plan.record=s6PrivateStep175Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  rw [s6ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment160_record]
theorem s6ObservedPrefixPart10_metadata : s6ObservedPrefixPart10Plan.metadata=none := by
  rw [s6ObservedPrefixPart10Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment160_metadata]
def s6ObservedPrefixPart11Logs := s6ObservedPrefixPart10Logs++s6ObservedSegment176Logs
def s6ObservedPrefixPart11Plan := s6ObservedPrefixPart10Plan.append s6ObservedSegment176Plan
theorem s6ObservedPrefixPart11_length : s6ObservedPrefixPart11Logs.length=192 := by
  rw [s6ObservedPrefixPart11Logs,List.length_append,s6ObservedPrefixPart10_length,s6ObservedSegment176_length]
theorem s6ObservedPrefixPart11_checked : compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart11Logs=some s6ObservedPrefixPart11Plan := by
  have suffix : compileHmrSourceWalk s6ObservedCounter 6 498 s6ObservedPrefixPart10Plan.metadata s6ObservedPrefixPart10Plan.outputArena s6ObservedPrefixPart10Plan.bank s6ObservedPrefixPart10Plan.record (0+s6ObservedPrefixPart10Logs.length) s6ObservedSegment176Logs=some s6ObservedSegment176Plan := by
    rw [s6ObservedPrefixPart10_metadata,s6ObservedPrefixPart10_outputArena,s6ObservedPrefixPart10_bank,s6ObservedPrefixPart10_record,s6ObservedPrefixPart10_length,Nat.zero_add]
    rw [s6Observed_boundary175_arena,s6Observed_boundary175_bank,s6Observed_boundary175_record]
    exact s6ObservedSegment176_checked
  exact compileHmrSourceWalk_append s6ObservedCounter 6 498 s6ObservedPrefixPart10Logs s6ObservedSegment176Logs none s6ObservedArena s6ObservedBank s6ObservedRecord 0 s6ObservedPrefixPart10Plan s6ObservedSegment176Plan s6ObservedPrefixPart10_checked suffix
theorem s6ObservedPrefixPart11_outputArena : s6ObservedPrefixPart11Plan.outputArena=s6PrivateStep191Plan.outputArena := by
  rw [s6ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_outputArena,s6ObservedSegment176_outputArena]
theorem s6ObservedPrefixPart11_bank : s6ObservedPrefixPart11Plan.bank=s6PrivateStep191Plan.bank := by
  rw [s6ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_bank,s6ObservedSegment176_bank]
theorem s6ObservedPrefixPart11_record : s6ObservedPrefixPart11Plan.record=s6PrivateStep191Plan.record [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  rw [s6ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_record,s6ObservedSegment176_record]
theorem s6ObservedPrefixPart11_metadata : s6ObservedPrefixPart11Plan.metadata=none := by
  rw [s6ObservedPrefixPart11Plan,HmrSourceWalkPlan.append_metadata,s6ObservedSegment176_metadata]
theorem s6ObservedExtended192_logs : s6ObservedLogs.take 192=s6ObservedPrefixPart11Logs := by
  have first : s6ObservedLogs160=s6ObservedSegment160Logs := rfl
  have second : s6ObservedLogs176=s6ObservedSegment176Logs := rfl
  have split : s6ObservedLogs.take 192=s6ObservedLogs.take 160 ++ s6ObservedLogs160 ++ s6ObservedLogs176 := by
    simp [s6ObservedLogs, List.take_append, s6ObservedLogs0_length, s6ObservedLogs16_length, s6ObservedLogs32_length, s6ObservedLogs48_length, s6ObservedLogs64_length, s6ObservedLogs80_length, s6ObservedLogs96_length, s6ObservedLogs112_length, s6ObservedLogs128_length, s6ObservedLogs144_length, s6ObservedLogs160_length, s6ObservedLogs176_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s6ObservedPrefixPart11Logs, s6ObservedPrefixPart10Logs, split, s6ObservedExtended160_logs, first, second, List.append_assoc]
def s6ObservedExtended192Plan : HmrSourceWalkPlan := s6ObservedPrefixPart11Plan
theorem s6ObservedExtended192_checked :
    compileHmrSourceWalk s6ObservedCounter 6 498 none s6ObservedArena s6ObservedBank s6ObservedRecord 0 (s6ObservedLogs.take 192)=some s6ObservedExtended192Plan := by
  rw [s6ObservedExtended192_logs]
  exact s6ObservedPrefixPart11_checked


end ECDSAAdd.Arithmetic.Paper935
