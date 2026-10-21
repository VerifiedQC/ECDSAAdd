import ECDSAAdd.Arithmetic.Paper935.HmrHybridCell
import ECDSAAdd.Arithmetic.Paper935.RowInverse

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source subtraction low-position unwrite and fresh AND mint. -/
def hmrHybridUnwrite (control a b carry next : Wire) : Program :=
  [.CX carry a,.CCX control a b,.CX carry b] ++ hmrPolarAnd b a next true true ++ [.CX carry next]

/-- Source subtraction low-position release; no measured list is reversed. -/
def hmrHybridUnlift (a b carry next : Wire) : Program :=
  [.CX carry next] ++ hmrPolarRelease b a next true true ++ [.CX carry b,.CX carry a]

def hmrOldLow (control A D C : Bool) : Bool := if control then sumBit A D C else D

theorem hmrOldLow_sum (A D C : Bool) : sumBit A (hmrOldLow true A D C) C=D := by
  cases A <;> cases D <;> cases C <;> rfl

theorem hmrHybridUnwrite_run (control a b carry next : Wire) (nd : [control,carry,a,b,next].Nodup)
    (s : State) (m : List Bool) (clean : s.basis next=false) :
    let B := hmrOldLow (s.basis control) (s.basis a) (s.basis b) (s.basis carry)
    let t := run (hmrHybridUnwrite control a b carry next) m s
    t.phase=s.phase ∧ t.basis next=carryBit (s.basis a) B (s.basis carry) ∧
    t.basis a=(s.basis a ^^ s.basis carry) ∧ t.basis b=(B ^^ s.basis carry) ∧
    ∀q,q∉[a,b,next] → t.basis q=s.basis q := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at nd
  obtain ⟨⟨hcc,hca,hcb,hcn⟩,⟨hka,hkb,hkn⟩,⟨hab,han⟩,hbn⟩ := nd
  have bits : (run (hmrHybridUnwrite control a b carry next) m s).basis next=
      carryBit (s.basis a) (hmrOldLow (s.basis control) (s.basis a) (s.basis b) (s.basis carry)) (s.basis carry) ∧
      (run (hmrHybridUnwrite control a b carry next) m s).basis a=(s.basis a ^^ s.basis carry) ∧
      (run (hmrHybridUnwrite control a b carry next) m s).basis b=
        (hmrOldLow (s.basis control) (s.basis a) (s.basis b) (s.basis carry) ^^ s.basis carry) := by
    cases ha : s.basis a <;> cases hb : s.basis b <;> cases hc : s.basis carry <;> cases flag : s.basis control <;>
      simp_all [hmrHybridUnwrite,hmrOldLow,hmrPolarAnd,hmrPolarDress,run,writeBit,carryBit,sumBit,
        Ne.symm han,Ne.symm hbn,Ne.symm hab]
  refine ⟨rfl,bits.1,bits.2.1,bits.2.2,?_⟩
  intro q hq
  simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at hq
  simp [hmrHybridUnwrite,hmrPolarAnd,hmrPolarDress,run,writeBit,hq.1,hq.2.1,hq.2.2]

theorem hmrHybridUnlift_run (a b carry next : Wire) (nd : [carry,a,b,next].Nodup)
    (s : State) (m : List Bool) (A B C : Bool)
    (hc : s.basis carry=C) (ha : s.basis a=(A ^^ C)) (hb : s.basis b=(B ^^ C))
    (hn : s.basis next=carryBit A B C) :
    let t := run (hmrHybridUnlift a b carry next) m s
    t.phase=s.phase ∧ t.basis a=A ∧ t.basis next=false ∧ t.basis b=B ∧
    ∀q,q∉[a,b,next] → t.basis q=s.basis q := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at nd
  obtain ⟨⟨hka,hkb,hkn⟩,⟨hab,han⟩,hbn⟩ := nd
  have all : (run (hmrHybridUnlift a b carry next) m s).phase=s.phase ∧
      (run (hmrHybridUnlift a b carry next) m s).basis a=A ∧
      (run (hmrHybridUnlift a b carry next) m s).basis next=false ∧
      (run (hmrHybridUnlift a b carry next) m s).basis b=B := by
    cases A <;> cases B <;> cases C <;> cases tape : m.head?.getD false <;>
      simp_all [hmrHybridUnlift,hmrPolarRelease,hmrPolarDress,run,writeBit,measureAndCorrect,correct,
        carryBit,Ne.symm han,Ne.symm hbn,Ne.symm hab]
  refine ⟨all.1,all.2.1,all.2.2.1,all.2.2.2,?_⟩
  intro q hq
  simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at hq
  simp [hmrHybridUnlift,hmrPolarRelease,hmrPolarDress,run,writeBit,measureAndCorrect,hq.1,hq.2.1,hq.2.2]

end ECDSAAdd.Arithmetic.Paper935
