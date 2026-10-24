import ECDSAAdd.Arithmetic.Paper935.HmrSourceFreezeInitial

namespace ECDSAAdd.Arithmetic.Paper935

theorem s2FirstFreeze_cleanup_checked :
    (compileHmrFreezeEndLog s2FirstFreezeEndArena [827, 786, 812, 839, 849, 844] 1 925 914 919
      s2FirstFreezePlans [901, 879, 918, 845, 917] [922] s2FirstFreezeCleanupLogs).map (fun (C,_) => C.live) =
      some s2FirstFreezeReturnedArena.live := by
  decide +kernel

theorem s6FirstFreeze_cleanup_checked :
    (compileHmrFreezeEndLog s6FirstFreezeEndArena [843, 874, 892, 881, 879, 877] 1 918 819 820
      s6FirstFreezePlans [915, 791, 808, 855, 798] [914] s6FirstFreezeCleanupLogs).map (fun (C,_) => C.live) =
      some s6FirstFreezeReturnedArena.live := by
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
