import ECDSAAdd.Arithmetic.Paper935.HmrPolarAnd
import ECDSAAdd.Arithmetic.Paper935.CarryAdder

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source `ctrl_add_rows` low-position carry computation. -/
def hmrHybridLift (a b carry next : Wire) : Program :=
  [.CX carry b,.CX carry a] ++ hmrPolarAnd b a next true true ++ [.CX carry next]

/-- Source low-position release and controlled sum write. -/
def hmrHybridDrop (control a b carry next : Wire) : Program :=
  [.CX carry next] ++ hmrPolarRelease b a next true true ++
    [.CX carry b,.CCX control a b,.CX carry a]

theorem hmrHybridLift_run (a b carry next : Wire) (nd : [carry,a,b,next].Nodup)
    (s : State) (m : List Bool) (clean : s.basis next=false) :
    let t := run (hmrHybridLift a b carry next) m s
    t.phase=s.phase ∧ t.basis next=carryBit (s.basis a) (s.basis b) (s.basis carry) ∧
    t.basis a=(s.basis a ^^ s.basis carry) ∧ t.basis b=(s.basis b ^^ s.basis carry) ∧
    ∀q,q∉[a,b,next] → t.basis q=s.basis q := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at nd
  obtain ⟨⟨hca,hcb,hcn⟩,⟨hab,han⟩,hbn⟩ := nd
  have bits : (run (hmrHybridLift a b carry next) m s).basis next=carryBit (s.basis a) (s.basis b) (s.basis carry) ∧
      (run (hmrHybridLift a b carry next) m s).basis a=(s.basis a ^^ s.basis carry) ∧
      (run (hmrHybridLift a b carry next) m s).basis b=(s.basis b ^^ s.basis carry) := by
    cases ha : s.basis a <;> cases hb : s.basis b <;> cases hc : s.basis carry <;>
      simp_all [hmrHybridLift,hmrPolarAnd,hmrPolarDress,run,writeBit,carryBit,Ne.symm han,Ne.symm hbn,Ne.symm hab]
  refine ⟨rfl,bits.1,bits.2.1,bits.2.2,?_⟩
  intro q hq
  simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at hq
  simp [hmrHybridLift,hmrPolarAnd,hmrPolarDress,run,writeBit,hq.1,hq.2.1,hq.2.2]

theorem hmrHybridDrop_run (control a b carry next : Wire) (nd : [control,carry,a,b,next].Nodup)
    (s : State) (m : List Bool) (A B C : Bool)
    (hc : s.basis carry=C) (ha : s.basis a=(A ^^ C)) (hb : s.basis b=(B ^^ C))
    (hn : s.basis next=carryBit A B C) :
    let t := run (hmrHybridDrop control a b carry next) m s
    t.phase=s.phase ∧ t.basis a=A ∧ t.basis next=false ∧
    t.basis b=(if s.basis control then sumBit A B C else B) ∧
    ∀q,q∉[a,b,next] → t.basis q=s.basis q := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at nd
  obtain ⟨⟨hcc,hca,hcb,hcn⟩,⟨hka,hkb,hkn⟩,⟨hab,han⟩,hbn⟩ := nd
  have all : (run (hmrHybridDrop control a b carry next) m s).phase=s.phase ∧
      (run (hmrHybridDrop control a b carry next) m s).basis a=A ∧
      (run (hmrHybridDrop control a b carry next) m s).basis next=false ∧
      (run (hmrHybridDrop control a b carry next) m s).basis b=(if s.basis control then sumBit A B C else B) := by
    cases A <;> cases B <;> cases C <;> cases flag : s.basis control <;> cases tape : m.head?.getD false <;>
      simp_all [hmrHybridDrop,hmrPolarRelease,hmrPolarDress,run,writeBit,measureAndCorrect,correct,
        carryBit,sumBit,Ne.symm han,Ne.symm hbn,Ne.symm hab]
  refine ⟨all.1,all.2.1,all.2.2.1,all.2.2.2,?_⟩
  intro q hq
  simp only [List.mem_cons,List.not_mem_nil,or_false,not_or] at hq
  simp [hmrHybridDrop,hmrPolarRelease,hmrPolarDress,run,writeBit,measureAndCorrect,hq.1,hq.2.1,hq.2.2]

end ECDSAAdd.Arithmetic.Paper935
