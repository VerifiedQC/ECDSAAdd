import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix224
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment224
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment240

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary223_arena : s2PrivateStep223Plan.outputArena=s2PrivateStep224Arena := rfl
private theorem s2Observed_boundary223_bank : s2PrivateStep223Plan.bank=s2PrivateStep224Bank := by decide +kernel
private theorem s2Observed_boundary223_record : s2PrivateStep223Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := rfl
private theorem s2Observed_boundary239_arena : s2PrivateStep239Plan.outputArena=s2PrivateStep240Arena := rfl
private theorem s2Observed_boundary239_bank : s2PrivateStep239Plan.bank=s2PrivateStep240Bank := by decide +kernel
private theorem s2Observed_boundary239_record : s2PrivateStep239Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := rfl
def s2ObservedPrefixPart14Logs := s2ObservedPrefixPart13Logs++s2ObservedSegment224Logs
def s2ObservedPrefixPart14Plan := s2ObservedPrefixPart13Plan.append s2ObservedSegment224Plan
theorem s2ObservedPrefixPart14_length : s2ObservedPrefixPart14Logs.length=240 := by
  rw [s2ObservedPrefixPart14Logs,List.length_append,s2ObservedPrefixPart13_length,s2ObservedSegment224_length]
theorem s2ObservedPrefixPart14_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart14Logs=some s2ObservedPrefixPart14Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart13Plan.metadata s2ObservedPrefixPart13Plan.outputArena s2ObservedPrefixPart13Plan.bank s2ObservedPrefixPart13Plan.record (0+s2ObservedPrefixPart13Logs.length) s2ObservedSegment224Logs=some s2ObservedSegment224Plan := by
    rw [s2ObservedPrefixPart13_metadata,s2ObservedPrefixPart13_outputArena,s2ObservedPrefixPart13_bank,s2ObservedPrefixPart13_record,s2ObservedPrefixPart13_length,Nat.zero_add]
    rw [s2Observed_boundary223_arena,s2Observed_boundary223_bank,s2Observed_boundary223_record]
    exact s2ObservedSegment224_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart13Logs s2ObservedSegment224Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart13Plan s2ObservedSegment224Plan s2ObservedPrefixPart13_checked suffix
theorem s2ObservedPrefixPart14_outputArena : s2ObservedPrefixPart14Plan.outputArena=s2PrivateStep239Plan.outputArena := by
  rw [s2ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment224_outputArena]
theorem s2ObservedPrefixPart14_bank : s2ObservedPrefixPart14Plan.bank=s2PrivateStep239Plan.bank := by
  rw [s2ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment224_bank]
theorem s2ObservedPrefixPart14_record : s2ObservedPrefixPart14Plan.record=s2PrivateStep239Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  rw [s2ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment224_record]
theorem s2ObservedPrefixPart14_metadata : s2ObservedPrefixPart14Plan.metadata=none := by
  rw [s2ObservedPrefixPart14Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment224_metadata]
def s2ObservedPrefixPart15Logs := s2ObservedPrefixPart14Logs++s2ObservedSegment240Logs
def s2ObservedPrefixPart15Plan := s2ObservedPrefixPart14Plan.append s2ObservedSegment240Plan
theorem s2ObservedPrefixPart15_length : s2ObservedPrefixPart15Logs.length=256 := by
  rw [s2ObservedPrefixPart15Logs,List.length_append,s2ObservedPrefixPart14_length,s2ObservedSegment240_length]
theorem s2ObservedPrefixPart15_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart15Logs=some s2ObservedPrefixPart15Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart14Plan.metadata s2ObservedPrefixPart14Plan.outputArena s2ObservedPrefixPart14Plan.bank s2ObservedPrefixPart14Plan.record (0+s2ObservedPrefixPart14Logs.length) s2ObservedSegment240Logs=some s2ObservedSegment240Plan := by
    rw [s2ObservedPrefixPart14_metadata,s2ObservedPrefixPart14_outputArena,s2ObservedPrefixPart14_bank,s2ObservedPrefixPart14_record,s2ObservedPrefixPart14_length,Nat.zero_add]
    rw [s2Observed_boundary239_arena,s2Observed_boundary239_bank,s2Observed_boundary239_record]
    exact s2ObservedSegment240_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart14Logs s2ObservedSegment240Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart14Plan s2ObservedSegment240Plan s2ObservedPrefixPart14_checked suffix
theorem s2ObservedPrefixPart15_outputArena : s2ObservedPrefixPart15Plan.outputArena=s2PrivateStep255Plan.outputArena := by
  rw [s2ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment240_outputArena]
theorem s2ObservedPrefixPart15_bank : s2ObservedPrefixPart15Plan.bank=s2PrivateStep255Plan.bank := by
  rw [s2ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment240_bank]
theorem s2ObservedPrefixPart15_record : s2ObservedPrefixPart15Plan.record=s2PrivateStep255Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  rw [s2ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment240_record]
theorem s2ObservedPrefixPart15_metadata : s2ObservedPrefixPart15Plan.metadata=none := by
  rw [s2ObservedPrefixPart15Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment240_metadata]
theorem s2ObservedExtended256_logs : s2ObservedLogs.take 256=s2ObservedPrefixPart15Logs := by
  have first : s2ObservedLogs224=s2ObservedSegment224Logs := rfl
  have second : s2ObservedLogs240=s2ObservedSegment240Logs := rfl
  have split : s2ObservedLogs.take 256=s2ObservedLogs.take 224 ++ s2ObservedLogs224 ++ s2ObservedLogs240 := by
    simp [s2ObservedLogs, List.take_append, s2ObservedLogs0_length, s2ObservedLogs16_length, s2ObservedLogs32_length, s2ObservedLogs48_length, s2ObservedLogs64_length, s2ObservedLogs80_length, s2ObservedLogs96_length, s2ObservedLogs112_length, s2ObservedLogs128_length, s2ObservedLogs144_length, s2ObservedLogs160_length, s2ObservedLogs176_length, s2ObservedLogs192_length, s2ObservedLogs208_length, s2ObservedLogs224_length, s2ObservedLogs240_length, List.take_of_length_le, Nat.reduceSub, List.append_assoc]
  rw [s2ObservedPrefixPart15Logs, s2ObservedPrefixPart14Logs, split, s2ObservedExtended224_logs, first, second, List.append_assoc]
def s2ObservedExtended256Plan : HmrSourceWalkPlan := s2ObservedPrefixPart15Plan
theorem s2ObservedExtended256_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 256)=some s2ObservedExtended256Plan := by
  rw [s2ObservedExtended256_logs]
  exact s2ObservedPrefixPart15_checked


end ECDSAAdd.Arithmetic.Paper935
