import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix192
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment192
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment208

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary191_arena : s2PrivateStep191Plan.outputArena=s2PrivateStep192Arena := rfl
private theorem s2Observed_boundary191_bank : s2PrivateStep191Plan.bank=s2PrivateStep192Bank := by decide +kernel
private theorem s2Observed_boundary191_record : s2PrivateStep191Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888] := rfl
private theorem s2Observed_boundary207_arena : s2PrivateStep207Plan.outputArena=s2PrivateStep208Arena := rfl
private theorem s2Observed_boundary207_bank : s2PrivateStep207Plan.bank=s2PrivateStep208Bank := by decide +kernel
private theorem s2Observed_boundary207_record : s2PrivateStep207Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := rfl
def s2ObservedPrefixPart12Logs := s2ObservedPrefixPart11Logs++s2ObservedSegment192Logs
def s2ObservedPrefixPart12Plan := s2ObservedPrefixPart11Plan.append s2ObservedSegment192Plan
theorem s2ObservedPrefixPart12_length : s2ObservedPrefixPart12Logs.length=208 := by
  rw [s2ObservedPrefixPart12Logs,List.length_append,s2ObservedPrefixPart11_length,s2ObservedSegment192_length]
theorem s2ObservedPrefixPart12_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart12Logs=some s2ObservedPrefixPart12Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart11Plan.metadata s2ObservedPrefixPart11Plan.outputArena s2ObservedPrefixPart11Plan.bank s2ObservedPrefixPart11Plan.record (0+s2ObservedPrefixPart11Logs.length) s2ObservedSegment192Logs=some s2ObservedSegment192Plan := by
    rw [s2ObservedPrefixPart11_metadata,s2ObservedPrefixPart11_outputArena,s2ObservedPrefixPart11_bank,s2ObservedPrefixPart11_record,s2ObservedPrefixPart11_length,Nat.zero_add]
    rw [s2Observed_boundary191_arena,s2Observed_boundary191_bank,s2Observed_boundary191_record]
    exact s2ObservedSegment192_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart11Logs s2ObservedSegment192Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart11Plan s2ObservedSegment192Plan s2ObservedPrefixPart11_checked suffix
theorem s2ObservedPrefixPart12_outputArena : s2ObservedPrefixPart12Plan.outputArena=s2PrivateStep207Plan.outputArena := by
  rw [s2ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment192_outputArena]
theorem s2ObservedPrefixPart12_bank : s2ObservedPrefixPart12Plan.bank=s2PrivateStep207Plan.bank := by
  rw [s2ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment192_bank]
theorem s2ObservedPrefixPart12_record : s2ObservedPrefixPart12Plan.record=s2PrivateStep207Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  rw [s2ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment192_record]
theorem s2ObservedPrefixPart12_metadata : s2ObservedPrefixPart12Plan.metadata=none := by
  rw [s2ObservedPrefixPart12Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment192_metadata]
def s2ObservedPrefixPart13Logs := s2ObservedPrefixPart12Logs++s2ObservedSegment208Logs
def s2ObservedPrefixPart13Plan := s2ObservedPrefixPart12Plan.append s2ObservedSegment208Plan
theorem s2ObservedPrefixPart13_length : s2ObservedPrefixPart13Logs.length=224 := by
  rw [s2ObservedPrefixPart13Logs,List.length_append,s2ObservedPrefixPart12_length,s2ObservedSegment208_length]
theorem s2ObservedPrefixPart13_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart13Logs=some s2ObservedPrefixPart13Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart12Plan.metadata s2ObservedPrefixPart12Plan.outputArena s2ObservedPrefixPart12Plan.bank s2ObservedPrefixPart12Plan.record (0+s2ObservedPrefixPart12Logs.length) s2ObservedSegment208Logs=some s2ObservedSegment208Plan := by
    rw [s2ObservedPrefixPart12_metadata,s2ObservedPrefixPart12_outputArena,s2ObservedPrefixPart12_bank,s2ObservedPrefixPart12_record,s2ObservedPrefixPart12_length,Nat.zero_add]
    rw [s2Observed_boundary207_arena,s2Observed_boundary207_bank,s2Observed_boundary207_record]
    exact s2ObservedSegment208_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart12Logs s2ObservedSegment208Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart12Plan s2ObservedSegment208Plan s2ObservedPrefixPart12_checked suffix
theorem s2ObservedPrefixPart13_outputArena : s2ObservedPrefixPart13Plan.outputArena=s2PrivateStep223Plan.outputArena := by
  rw [s2ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment208_outputArena]
theorem s2ObservedPrefixPart13_bank : s2ObservedPrefixPart13Plan.bank=s2PrivateStep223Plan.bank := by
  rw [s2ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment208_bank]
theorem s2ObservedPrefixPart13_record : s2ObservedPrefixPart13Plan.record=s2PrivateStep223Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  rw [s2ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment208_record]
theorem s2ObservedPrefixPart13_metadata : s2ObservedPrefixPart13Plan.metadata=none := by
  rw [s2ObservedPrefixPart13Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment208_metadata]
theorem s2ObservedExtended224_logs : s2ObservedLogs.take 224=s2ObservedPrefixPart13Logs := by
  have first : s2ObservedLogs192=s2ObservedSegment192Logs := rfl
  have second : s2ObservedLogs208=s2ObservedSegment208Logs := rfl
  have split : s2ObservedLogs.take 224=s2ObservedLogs.take 192 ++ s2ObservedLogs192 ++ s2ObservedLogs208 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart13Logs, s2ObservedPrefixPart12Logs, split, s2ObservedExtended192_logs, first, second, List.append_assoc]
def s2ObservedExtended224Plan : HmrSourceWalkPlan := s2ObservedPrefixPart13Plan
theorem s2ObservedExtended224_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 224)=some s2ObservedExtended224Plan := by
  rw [s2ObservedExtended224_logs]
  exact s2ObservedPrefixPart13_checked


end ECDSAAdd.Arithmetic.Paper935
