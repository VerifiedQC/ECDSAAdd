import ECDSAAdd.Arithmetic.Paper935.HmrSourceArmedControlInputs
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrClassProjection

namespace ECDSAAdd.Arithmetic.Paper935

def s6FirstArmedControlZeroArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlFreezeArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlCounterArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 915) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlPositiveArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 916) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 916) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlFlagArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlSigmaArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlFireEqualityArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (798 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 914) ∨ (915 ≤ q ∧ q < 916) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlFireDroppedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlEndArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlOutputArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlFreezePlan : HmrFreezePlan := ⟨s6FirstArmedControlZeroArena,[⟨⟨0,false⟩,[⟨⟨1,false⟩,820⟩, ⟨⟨2,false⟩,915⟩, ⟨⟨3,false⟩,808⟩, ⟨⟨4,false⟩,855⟩, ⟨⟨5,false⟩,798⟩, ⟨⟨6,false⟩,790⟩, ⟨⟨7,false⟩,914⟩, ⟨⟨8,false⟩,916⟩, ⟨⟨9,false⟩,800⟩, ⟨⟨10,false⟩,918⟩, ⟨⟨11,false⟩,797⟩, ⟨⟨12,false⟩,832⟩, ⟨⟨13,false⟩,928⟩, ⟨⟨14,false⟩,930⟩, ⟨⟨15,false⟩,931⟩],782⟩, ⟨⟨782,true⟩,[⟨⟨16,false⟩,820⟩, ⟨⟨17,false⟩,915⟩, ⟨⟨18,false⟩,808⟩, ⟨⟨19,false⟩,855⟩, ⟨⟨20,false⟩,798⟩, ⟨⟨21,false⟩,790⟩, ⟨⟨22,false⟩,914⟩, ⟨⟨23,false⟩,916⟩, ⟨⟨777,false⟩,800⟩],918⟩],918,[820]⟩

def s6FirstArmedControlCounterPlans : List HmrBlockPlan := [⟨⟨774,false⟩,[⟨⟨773,false⟩,915⟩, ⟨⟨772,false⟩,808⟩, ⟨⟨771,false⟩,855⟩, ⟨⟨770,false⟩,798⟩, ⟨⟨769,false⟩,790⟩],914⟩]

def s6FirstArmedControlClassPlan : HmrSourceClassPlan := ⟨s6FirstArmedControlPositiveArena,[915],s6FirstArmedControlEqualityArena,[808, 855],⟨⟨819,false⟩,[⟨⟨791,false⟩,808⟩, ⟨⟨915,false⟩,855⟩]⟩⟩

def s6FirstArmedControlCounterDrop : List HmrBlockFreePlan := [.chain ⟨774,false⟩ [⟨⟨773,false⟩,915⟩, ⟨⟨772,false⟩,808⟩, ⟨⟨771,false⟩,855⟩, ⟨⟨770,false⟩,798⟩] ⟨769,false⟩ 914]

def s6FirstArmedControlEndPlan : HmrFreezeEndPlan := ⟨⟨s6FirstArmedControlFireEqualityArena,[915, 791, 808, 855, 798],⟨⟨843,true⟩,[⟨⟨874,false⟩,915⟩, ⟨⟨892,false⟩,791⟩, ⟨⟨881,false⟩,808⟩, ⟨⟨879,false⟩,855⟩, ⟨⟨877,false⟩,798⟩]⟩,[914]⟩,[.chain ⟨782,true⟩ [⟨⟨16,false⟩,915⟩, ⟨⟨17,false⟩,791⟩, ⟨⟨18,false⟩,808⟩, ⟨⟨19,false⟩,855⟩, ⟨⟨20,false⟩,798⟩, ⟨⟨21,false⟩,914⟩, ⟨⟨22,false⟩,820⟩, ⟨⟨23,false⟩,790⟩] ⟨777,false⟩ 918, .chain ⟨0,false⟩ [⟨⟨1,false⟩,915⟩, ⟨⟨2,false⟩,791⟩, ⟨⟨3,false⟩,808⟩, ⟨⟨4,false⟩,855⟩, ⟨⟨5,false⟩,798⟩, ⟨⟨6,false⟩,914⟩, ⟨⟨7,false⟩,820⟩, ⟨⟨8,false⟩,790⟩, ⟨⟨9,false⟩,918⟩, ⟨⟨10,false⟩,916⟩, ⟨⟨11,false⟩,800⟩, ⟨⟨12,false⟩,797⟩, ⟨⟨13,false⟩,832⟩, ⟨⟨14,false⟩,928⟩] ⟨15,false⟩ 782]⟩

local instance s6FirstArmedControlDisjointDecidable (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

theorem s6FirstArmedControl_layout :
    List.Disjoint [s6FirstArmedControlClassPlan.equality.top,253,252,251] (842::s6FirstArmedControlRecord) ∧
    List.Disjoint (hmrSourceClassAnchors true 769 914 819 791) (842::s6FirstArmedControlRecord) := by
  decide +kernel

theorem s6FirstArmedControl_length : s6FirstArmedControlRecord.length=60 := by
  decide +kernel

theorem s6FirstArmedControl_freezeProjection : (compileHmrFreezeLog s6FirstArmedControlArena s6FirstArmedControlG 819 s6FirstArmedControlTimestamp 1 s6FirstArmedControlLog.freezeZero s6FirstArmedControlLog.fire).map (fun (_,P) => (P.zeroPlans,P.zeroKeeper,P.fireWork))=some (s6FirstArmedControlFreezePlan.zeroPlans,s6FirstArmedControlFreezePlan.zeroKeeper,s6FirstArmedControlFreezePlan.fireWork) := by
  decide +kernel

theorem s6FirstArmedControl_zeroProjection : (compileHmrZeroLog s6FirstArmedControlFreezeArena s6FirstArmedControlCounter s6FirstArmedControlCounter.length s6FirstArmedControlLog.counterZero).map Prod.snd=some (s6FirstArmedControlCounterPlans,914) := by
  decide +kernel

theorem s6FirstArmedControl_classProjection : (compileHmrSourceClassLog s6FirstArmedControlCounterArena true 769 914 819 791 s6FirstArmedControlLog.positive s6FirstArmedControlLog.classWork).map (fun P => (P.positiveWork,P.equalityWork,P.equality))=some (s6FirstArmedControlClassPlan.positiveWork,s6FirstArmedControlClassPlan.equalityWork,s6FirstArmedControlClassPlan.equality) := by
  decide +kernel

theorem s6FirstArmedControl_flagsProjection : (compileHmrFlagsLog s6FirstArmedControlClassPlan.equalityArena s6FirstArmedControlClassPlan.equality.top 253 252 251 s6FirstArmedControlLog.flags).map (fun _ => true)=some true := by
  decide +kernel

theorem s6FirstArmedControl_counterDropProjection : (compileHmrBlockedDropLog s6FirstArmedControlCounterArena s6FirstArmedControlCounterPlans s6FirstArmedControlLog.counterDrop).map Prod.snd=some s6FirstArmedControlCounterDrop := by
  decide +kernel

theorem s6FirstArmedControl_sigmaProjection : (compileHmrSigmaDropLog s6FirstArmedControlFreezeArena true 819 s6FirstArmedControlFreezePlan.fire 254 791 s6FirstArmedControlLog.sigmaGuard).map (fun _ => true)=some true := by
  decide +kernel

theorem s6FirstArmedControl_branchProjection : (compileHmrBranchRetirement s6FirstArmedControlEndArena 842).map (fun _ => true)=some true := by
  decide +kernel

theorem s6FirstArmedControl_fireProjection :
    (compileHmrFireDropLog s6FirstArmedControlSigmaArena s6FirstArmedControlTimestamp 1 s6FirstArmedControlFreezePlan.zeroKeeper 819 s6FirstArmedControlFreezePlan.fire s6FirstArmedControlLog.timestampEq s6FirstArmedControlLog.fireGuard).map
      (fun (_,P) => (P.equalityWork,P.equality,P.fireWork))=some (s6FirstArmedControlEndPlan.fire.equalityWork,s6FirstArmedControlEndPlan.fire.equality,s6FirstArmedControlEndPlan.fire.fireWork) := by
  decide +kernel

theorem s6FirstArmedControl_endZeroProjection :
    (compileHmrBlockedDropLog s6FirstArmedControlFireDroppedArena s6FirstArmedControlFreezePlan.zeroPlans s6FirstArmedControlLog.freezeDrop).map Prod.snd=some s6FirstArmedControlEndPlan.zero := by
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
