import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrClassProjection

namespace ECDSAAdd.Arithmetic.Paper935

def s2FirstArmedControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (920 ≤ q ∧ q < 921) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlFreezeArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (919 ≤ q ∧ q < 921) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlCounterArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (919 ≤ q ∧ q < 921) ∨ (922 ≤ q ∧ q < 923) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 917) ∨ (919 ≤ q ∧ q < 921) ∨ (922 ≤ q ∧ q < 923) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 917) ∨ (918 ≤ q ∧ q < 921) ∨ (922 ≤ q ∧ q < 923) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 928) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 879) ∨ (880 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (919 ≤ q ∧ q < 921) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlFireEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 921) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlFireDroppedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 879) ∨ (880 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (920 ≤ q ∧ q < 921) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstArmedControlEndArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 879) ∨ (880 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (920 ≤ q ∧ q < 921)),Finset.filter_subset _ _⟩

def s2FirstArmedControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 879) ∨ (880 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 916) ∨ (920 ≤ q ∧ q < 921)),Finset.filter_subset _ _⟩

def s2FirstArmedControlFreezePlan : HmrFreezePlan := ⟨s2FirstArmedControlZeroArena,[⟨⟨0,false⟩,[⟨⟨1,false⟩,919⟩, ⟨⟨2,false⟩,901⟩, ⟨⟨3,false⟩,918⟩, ⟨⟨4,false⟩,845⟩, ⟨⟨5,false⟩,917⟩, ⟨⟨6,false⟩,921⟩, ⟨⟨7,false⟩,922⟩, ⟨⟨8,false⟩,923⟩, ⟨⟨9,false⟩,924⟩, ⟨⟨10,false⟩,925⟩, ⟨⟨11,false⟩,926⟩, ⟨⟨12,false⟩,927⟩, ⟨⟨13,false⟩,928⟩, ⟨⟨14,false⟩,929⟩, ⟨⟨15,false⟩,930⟩],931⟩, ⟨⟨931,true⟩,[⟨⟨16,false⟩,919⟩, ⟨⟨17,false⟩,901⟩, ⟨⟨18,false⟩,918⟩, ⟨⟨19,false⟩,845⟩, ⟨⟨20,false⟩,917⟩, ⟨⟨21,false⟩,921⟩, ⟨⟨22,false⟩,922⟩, ⟨⟨23,false⟩,923⟩, ⟨⟨769,false⟩,924⟩],925⟩],925,[919]⟩

def s2FirstArmedControlCounterPlans : List HmrBlockPlan := [⟨⟨772,false⟩,[⟨⟨773,false⟩,901⟩, ⟨⟨774,false⟩,918⟩, ⟨⟨775,false⟩,845⟩, ⟨⟨776,false⟩,917⟩, ⟨⟨777,false⟩,921⟩],922⟩]

def s2FirstArmedControlClassPlan : HmrSourceClassPlan := ⟨s2FirstArmedControlPositiveArena,[901],s2FirstArmedControlEqualityArena,[918, 845],⟨⟨914,false⟩,[⟨⟨879,false⟩,918⟩, ⟨⟨901,false⟩,845⟩]⟩⟩

def s2FirstArmedControlCounterDrop : List HmrBlockFreePlan := [.chain ⟨772,false⟩ [⟨⟨773,false⟩,901⟩, ⟨⟨774,false⟩,918⟩, ⟨⟨775,false⟩,845⟩, ⟨⟨776,false⟩,917⟩] ⟨777,false⟩ 922]

def s2FirstArmedControlEndPlan : HmrFreezeEndPlan := ⟨⟨s2FirstArmedControlFireEqualityArena,[901, 879, 918, 845, 917],⟨⟨827,true⟩,[⟨⟨786,false⟩,901⟩, ⟨⟨812,false⟩,879⟩, ⟨⟨839,false⟩,918⟩, ⟨⟨849,false⟩,845⟩, ⟨⟨844,false⟩,917⟩]⟩,[922]⟩,[.chain ⟨931,true⟩ [⟨⟨16,false⟩,901⟩, ⟨⟨17,false⟩,879⟩, ⟨⟨18,false⟩,918⟩, ⟨⟨19,false⟩,845⟩, ⟨⟨20,false⟩,917⟩, ⟨⟨21,false⟩,922⟩, ⟨⟨22,false⟩,919⟩, ⟨⟨23,false⟩,921⟩] ⟨769,false⟩ 925, .chain ⟨0,false⟩ [⟨⟨1,false⟩,901⟩, ⟨⟨2,false⟩,879⟩, ⟨⟨3,false⟩,918⟩, ⟨⟨4,false⟩,845⟩, ⟨⟨5,false⟩,917⟩, ⟨⟨6,false⟩,922⟩, ⟨⟨7,false⟩,919⟩, ⟨⟨8,false⟩,921⟩, ⟨⟨9,false⟩,925⟩, ⟨⟨10,false⟩,923⟩, ⟨⟨11,false⟩,924⟩, ⟨⟨12,false⟩,926⟩, ⟨⟨13,false⟩,927⟩, ⟨⟨14,false⟩,928⟩] ⟨15,false⟩ 931]⟩

local instance s2FirstArmedControlDisjointDecidable (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

theorem s2FirstArmedControl_layout :
    List.Disjoint [s2FirstArmedControlClassPlan.equality.top,253,252,251] (916::s2FirstArmedControlRecord) ∧
    List.Disjoint (hmrSourceClassAnchors true 777 922 914 879) (916::s2FirstArmedControlRecord) := by
  decide +kernel

theorem s2FirstArmedControl_length : s2FirstArmedControlRecord.length=60 := by
  decide +kernel

theorem s2FirstArmedControl_freezeProjection : (compileHmrFreezeLog s2FirstArmedControlArena s2FirstArmedControlG 914 s2FirstArmedControlTimestamp 1 s2FirstArmedControlLog.freezeZero s2FirstArmedControlLog.fire).map (fun (_,P) => (P.zeroPlans,P.zeroKeeper,P.fireWork))=some (s2FirstArmedControlFreezePlan.zeroPlans,s2FirstArmedControlFreezePlan.zeroKeeper,s2FirstArmedControlFreezePlan.fireWork) := by
  decide +kernel

theorem s2FirstArmedControl_zeroProjection : (compileHmrZeroLog s2FirstArmedControlFreezeArena s2FirstArmedControlCounter s2FirstArmedControlCounter.length s2FirstArmedControlLog.counterZero).map Prod.snd=some (s2FirstArmedControlCounterPlans,922) := by
  decide +kernel

theorem s2FirstArmedControl_classProjection : (compileHmrSourceClassLog s2FirstArmedControlCounterArena true 777 922 914 879 s2FirstArmedControlLog.positive s2FirstArmedControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s2FirstArmedControlClassPlan.positiveWork,s2FirstArmedControlClassPlan.equalityWork,s2FirstArmedControlClassPlan.equality) := by
  decide +kernel

theorem s2FirstArmedControl_flagsProjection : (compileHmrFlagsLog s2FirstArmedControlClassPlan.equalityArena s2FirstArmedControlClassPlan.equality.top 253 252 251 s2FirstArmedControlLog.flags).map (fun _ => true)=some true := by
  decide +kernel

theorem s2FirstArmedControl_counterDropProjection : (compileHmrBlockedDropLog s2FirstArmedControlCounterArena s2FirstArmedControlCounterPlans s2FirstArmedControlLog.counterDrop).map Prod.snd=some s2FirstArmedControlCounterDrop := by
  decide +kernel

theorem s2FirstArmedControl_sigmaProjection : (compileHmrSigmaDropLog s2FirstArmedControlFreezeArena true 914 s2FirstArmedControlFreezePlan.fire 254 879 s2FirstArmedControlLog.sigmaGuard).map (fun _ => true)=some true := by
  decide +kernel

theorem s2FirstArmedControl_branchProjection : (compileHmrBranchRetirement s2FirstArmedControlEndArena 916).map (fun _ => true)=some true := by
  decide +kernel

theorem s2FirstArmedControl_fireProjection :
    (compileHmrFireDropLog s2FirstArmedControlSigmaArena s2FirstArmedControlTimestamp 1 s2FirstArmedControlFreezePlan.zeroKeeper 914 s2FirstArmedControlFreezePlan.fire s2FirstArmedControlLog.timestampEq s2FirstArmedControlLog.fireGuard).map
      (fun (_,P) => (P.equalityWork,P.equality,P.fireWork))=some (s2FirstArmedControlEndPlan.fire.equalityWork,s2FirstArmedControlEndPlan.fire.equality,s2FirstArmedControlEndPlan.fire.fireWork) := by
  decide +kernel

theorem s2FirstArmedControl_endZeroProjection :
    (compileHmrBlockedDropLog s2FirstArmedControlFireDroppedArena s2FirstArmedControlFreezePlan.zeroPlans s2FirstArmedControlLog.freezeDrop).map Prod.snd=some s2FirstArmedControlEndPlan.zero := by
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
