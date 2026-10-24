import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivatePrefix96
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment96
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateSegment112

namespace ECDSAAdd.Arithmetic.Paper935
private theorem s2Observed_boundary95_arena : s2PrivateStep95Plan.outputArena=s2PrivateStep96Arena := rfl
private theorem s2Observed_boundary95_bank : s2PrivateStep95Plan.bank=s2PrivateStep96Bank := by decide +kernel
private theorem s2Observed_boundary95_record : s2PrivateStep95Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := rfl
private theorem s2Observed_boundary111_arena : s2PrivateStep111Plan.outputArena=s2PrivateStep112Arena := rfl
private theorem s2Observed_boundary111_bank : s2PrivateStep111Plan.bank=s2PrivateStep112Bank := by decide +kernel
private theorem s2Observed_boundary111_record : s2PrivateStep111Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]=[795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := rfl
def s2ObservedPrefixPart6Logs := s2ObservedPrefixPart5Logs++s2ObservedSegment96Logs
def s2ObservedPrefixPart6Plan := s2ObservedPrefixPart5Plan.append s2ObservedSegment96Plan
theorem s2ObservedPrefixPart6_length : s2ObservedPrefixPart6Logs.length=112 := by
  rw [s2ObservedPrefixPart6Logs,List.length_append,s2ObservedPrefixPart5_length,s2ObservedSegment96_length]
theorem s2ObservedPrefixPart6_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart6Logs=some s2ObservedPrefixPart6Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart5Plan.metadata s2ObservedPrefixPart5Plan.outputArena s2ObservedPrefixPart5Plan.bank s2ObservedPrefixPart5Plan.record (0+s2ObservedPrefixPart5Logs.length) s2ObservedSegment96Logs=some s2ObservedSegment96Plan := by
    rw [s2ObservedPrefixPart5_metadata,s2ObservedPrefixPart5_outputArena,s2ObservedPrefixPart5_bank,s2ObservedPrefixPart5_record,s2ObservedPrefixPart5_length,Nat.zero_add]
    rw [s2Observed_boundary95_arena,s2Observed_boundary95_bank,s2Observed_boundary95_record]
    exact s2ObservedSegment96_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart5Logs s2ObservedSegment96Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart5Plan s2ObservedSegment96Plan s2ObservedPrefixPart5_checked suffix
theorem s2ObservedPrefixPart6_outputArena : s2ObservedPrefixPart6Plan.outputArena=s2PrivateStep111Plan.outputArena := by
  rw [s2ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment96_outputArena]
theorem s2ObservedPrefixPart6_bank : s2ObservedPrefixPart6Plan.bank=s2PrivateStep111Plan.bank := by
  rw [s2ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment96_bank]
theorem s2ObservedPrefixPart6_record : s2ObservedPrefixPart6Plan.record=s2PrivateStep111Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  rw [s2ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment96_record]
theorem s2ObservedPrefixPart6_metadata : s2ObservedPrefixPart6Plan.metadata=none := by
  rw [s2ObservedPrefixPart6Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment96_metadata]
def s2ObservedPrefixPart7Logs := s2ObservedPrefixPart6Logs++s2ObservedSegment112Logs
def s2ObservedPrefixPart7Plan := s2ObservedPrefixPart6Plan.append s2ObservedSegment112Plan
theorem s2ObservedPrefixPart7_length : s2ObservedPrefixPart7Logs.length=128 := by
  rw [s2ObservedPrefixPart7Logs,List.length_append,s2ObservedPrefixPart6_length,s2ObservedSegment112_length]
theorem s2ObservedPrefixPart7_checked : compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart7Logs=some s2ObservedPrefixPart7Plan := by
  have suffix : compileHmrSourceWalk s2ObservedCounter 6 498 s2ObservedPrefixPart6Plan.metadata s2ObservedPrefixPart6Plan.outputArena s2ObservedPrefixPart6Plan.bank s2ObservedPrefixPart6Plan.record (0+s2ObservedPrefixPart6Logs.length) s2ObservedSegment112Logs=some s2ObservedSegment112Plan := by
    rw [s2ObservedPrefixPart6_metadata,s2ObservedPrefixPart6_outputArena,s2ObservedPrefixPart6_bank,s2ObservedPrefixPart6_record,s2ObservedPrefixPart6_length,Nat.zero_add]
    rw [s2Observed_boundary111_arena,s2Observed_boundary111_bank,s2Observed_boundary111_record]
    exact s2ObservedSegment112_checked
  exact compileHmrSourceWalk_append s2ObservedCounter 6 498 s2ObservedPrefixPart6Logs s2ObservedSegment112Logs none s2ObservedArena s2ObservedBank s2ObservedRecord 0 s2ObservedPrefixPart6Plan s2ObservedSegment112Plan s2ObservedPrefixPart6_checked suffix
theorem s2ObservedPrefixPart7_outputArena : s2ObservedPrefixPart7Plan.outputArena=s2PrivateStep127Plan.outputArena := by
  rw [s2ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_outputArena,s2ObservedSegment112_outputArena]
theorem s2ObservedPrefixPart7_bank : s2ObservedPrefixPart7Plan.bank=s2PrivateStep127Plan.bank := by
  rw [s2ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_bank,s2ObservedSegment112_bank]
theorem s2ObservedPrefixPart7_record : s2ObservedPrefixPart7Plan.record=s2PrivateStep127Plan.record [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  rw [s2ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_record,s2ObservedSegment112_record]
theorem s2ObservedPrefixPart7_metadata : s2ObservedPrefixPart7Plan.metadata=none := by
  rw [s2ObservedPrefixPart7Plan,HmrSourceWalkPlan.append_metadata,s2ObservedSegment112_metadata]
theorem s2ObservedExtended128_logs : s2ObservedLogs.take 128=s2ObservedPrefixPart7Logs := rfl
def s2ObservedExtended128Plan : HmrSourceWalkPlan := s2ObservedPrefixPart7Plan
theorem s2ObservedExtended128_checked :
    compileHmrSourceWalk s2ObservedCounter 6 498 none s2ObservedArena s2ObservedBank s2ObservedRecord 0 (s2ObservedLogs.take 128)=some s2ObservedExtended128Plan := by
  rw [s2ObservedExtended128_logs]
  exact s2ObservedPrefixPart7_checked


end ECDSAAdd.Arithmetic.Paper935
