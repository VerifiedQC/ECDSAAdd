import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2ArmedParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6ArmedParts
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlComposition

namespace ECDSAAdd.Arithmetic.Paper935

theorem s2FirstArmedControl_checked :
    (compileHmrArmedControlLog s2FirstArmedControlArena s2FirstArmedControlG s2FirstArmedControlCounter s2FirstArmedControlTimestamp s2FirstArmedControlRecord
      914 777 879 254 253 252 251 916 1 60 s2FirstArmedControlLog).map
      (fun _ => true) = some true := by
  apply compileHmrArmedControlLog_of_parts (P := ⟨s2FirstArmedControlFreezeArena,s2FirstArmedControlFreezePlan,s2FirstArmedControlCounterArena,s2FirstArmedControlCounterPlans,922,s2FirstArmedControlClassPlan,s2FirstArmedControlFlagArena,s2FirstArmedControlFlagArena,s2FirstArmedControlCounterDrop,s2FirstArmedControlSigmaArena,s2FirstArmedControlEndArena,s2FirstArmedControlEndPlan,s2FirstArmedControlOutputArena,s2FirstArmedControlLog⟩)
  · exact s2FirstArmedControl_inputs
  · exact s2FirstArmedControl_freeze
  · exact s2FirstArmedControl_zero
  · exact s2FirstArmedControl_class
  · exact s2FirstArmedControl_layout.1
  · exact s2FirstArmedControl_layout.2
  · exact s2FirstArmedControl_flags
  · exact s2FirstArmedControl_counterDrop
  · exact s2FirstArmedControl_sigma
  · exact s2FirstArmedControl_ending
  · exact s2FirstArmedControl_branch
  · exact s2FirstArmedControl_length

theorem s6FirstArmedControl_checked :
    (compileHmrArmedControlLog s6FirstArmedControlArena s6FirstArmedControlG s6FirstArmedControlCounter s6FirstArmedControlTimestamp s6FirstArmedControlRecord
      819 769 791 254 253 252 251 842 1 60 s6FirstArmedControlLog).map
      (fun _ => true) = some true := by
  apply compileHmrArmedControlLog_of_parts (P := ⟨s6FirstArmedControlFreezeArena,s6FirstArmedControlFreezePlan,s6FirstArmedControlCounterArena,s6FirstArmedControlCounterPlans,914,s6FirstArmedControlClassPlan,s6FirstArmedControlFlagArena,s6FirstArmedControlFlagArena,s6FirstArmedControlCounterDrop,s6FirstArmedControlSigmaArena,s6FirstArmedControlEndArena,s6FirstArmedControlEndPlan,s6FirstArmedControlOutputArena,s6FirstArmedControlLog⟩)
  · exact s6FirstArmedControl_inputs
  · exact s6FirstArmedControl_freeze
  · exact s6FirstArmedControl_zero
  · exact s6FirstArmedControl_class
  · exact s6FirstArmedControl_layout.1
  · exact s6FirstArmedControl_layout.2
  · exact s6FirstArmedControl_flags
  · exact s6FirstArmedControl_counterDrop
  · exact s6FirstArmedControl_sigma
  · exact s6FirstArmedControl_ending
  · exact s6FirstArmedControl_branch
  · exact s6FirstArmedControl_length

end ECDSAAdd.Arithmetic.Paper935
