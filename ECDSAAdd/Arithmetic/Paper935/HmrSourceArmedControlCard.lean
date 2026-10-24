import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlLive

namespace ECDSAAdd.Arithmetic.Paper935

theorem s2FirstArmedControl_card (P : HmrArmedControlPlan)
    (h : compileHmrArmedControlLog s2FirstArmedControlArena s2FirstArmedControlG s2FirstArmedControlCounter s2FirstArmedControlTimestamp s2FirstArmedControlRecord 914 777 879 254 253 252 251 916 1 60 s2FirstArmedControlLog=some P) :
    P.outputArena.live.card=914 := by
  have checked := (compileHmrArmedControlLog_contract s2FirstArmedControlArena s2FirstArmedControlG s2FirstArmedControlCounter s2FirstArmedControlTimestamp s2FirstArmedControlRecord 914 777 879 254 253 252 251 916 1 60 s2FirstArmedControlLog P h).2
  have counts := checked.final_card P _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  have initial : s2FirstArmedControlArena.live.card=916 := by decide +kernel
  omega

theorem s6FirstArmedControl_card (P : HmrArmedControlPlan)
    (h : compileHmrArmedControlLog s6FirstArmedControlArena s6FirstArmedControlG s6FirstArmedControlCounter s6FirstArmedControlTimestamp s6FirstArmedControlRecord 819 769 791 254 253 252 251 842 1 60 s6FirstArmedControlLog=some P) :
    P.outputArena.live.card=914 := by
  have checked := (compileHmrArmedControlLog_contract s6FirstArmedControlArena s6FirstArmedControlG s6FirstArmedControlCounter s6FirstArmedControlTimestamp s6FirstArmedControlRecord 819 769 791 254 253 252 251 842 1 60 s6FirstArmedControlLog P h).2
  have counts := checked.final_card P _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  have initial : s6FirstArmedControlArena.live.card=916 := by decide +kernel
  omega

end ECDSAAdd.Arithmetic.Paper935
