import ECDSAAdd.Arithmetic.Paper935.HmrEqualityLiterals
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrEqualityPlan where
  head : HmrLiteral
  cells : List HmrLadderCell

def HmrEqualityPlan.Valid (P : HmrEqualityPlan) (bits : List Wire) (k : Nat) (work : List Wire) : Prop :=
  P.head::P.cells.map HmrLadderCell.literal=hmrEqualityLiterals bits k ∧
  (P.head.wire::hmrLadderPorts P.cells).Nodup ∧ P.cells≠[] ∧
  (P.cells.map HmrLadderCell.target).toFinset⊆work.toFinset

instance hmrEqualityValidDecidable (P : HmrEqualityPlan) (bits : List Wire) (k : Nat) (work : List Wire) :
    Decidable (P.Valid bits k work) := inferInstanceAs (Decidable (
      P.head::P.cells.map HmrLadderCell.literal=hmrEqualityLiterals bits k ∧
      (P.head.wire::hmrLadderPorts P.cells).Nodup ∧ P.cells≠[] ∧
      (P.cells.map HmrLadderCell.target).toFinset⊆work.toFinset))

def HmrEqualityPlan.stages (P : HmrEqualityPlan) : List HmrAndStage := hmrLadder P.head P.cells

def HmrEqualityPlan.top (P : HmrEqualityPlan) : Wire := (hmrLadderOutput P.head P.cells).wire

/-- Source eq_const keeps its whole length-1 ladder alive. There is no
extra keeper or copy gate in this allocator. -/
def compileHmrEquality (A : Arena) (bits : List Wire) (k : Nat) :
    Option (Arena × List Wire × HmrEqualityPlan) := do
  if bits.toFinset⊆A.live ∧ k<2^bits.length ∧ 2≤bits.length then
    let (B,work) ← A.borrowMany (bits.length-1)
    let ls := hmrEqualityLiterals bits k
    let P : HmrEqualityPlan := ⟨ls.headD ⟨0,false⟩,
      (ls.tail.zip work).map (fun x => ⟨x.1,x.2⟩)⟩
    if P.Valid bits k work then some (B,work,P) else none
  else none

theorem compileHmrEquality_contract (A B : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEquality A bits k=some (B,work,P)) :
    (bits.toFinset⊆A.live ∧ k<2^bits.length ∧ 2≤bits.length) ∧
    A.borrowMany (bits.length-1)=some (B,work) ∧ P.Valid bits k work := by
  unfold compileHmrEquality at h
  split at h
  next input =>
    obtain ⟨⟨C,ws⟩,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next valid => cases h; exact ⟨input,borrow,valid⟩
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrEquality_ready (A B : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEquality A bits k=some (B,work,P)) (s : BasisState) (ready : A.Ready s) :
    HmrAndReady P.stages s := by
  have hc := compileHmrEquality_contract A B bits k work P h
  have clean := (A.reserve_ready B work.toFinset s ready
    (A.borrowMany_contract B (bits.length-1) work hc.2.1).2.2).2
  apply hmrLadder_ready P.head P.cells hc.2.2.2.1
  intro c mem
  exact clean c.target (hc.2.2.2.2.2 (List.mem_toFinset.mpr (List.mem_map.mpr ⟨c,mem,rfl⟩)))

theorem compileHmrEquality_value (A B : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (h : compileHmrEquality A bits k=some (B,work,P)) (s : BasisState) :
    hmrAndAdvance P.stages s P.top=decide (regValue bits s=k) := by
  have hc := compileHmrEquality_contract A B bits k work P h
  have value := hmrLadder_value P.head P.cells hc.2.2.2.1 s
  rw [HmrLiteral.value,hmrLadderOutput_pol P.head P.cells hc.2.2.2.2.1] at value
  simp only [ite_true] at value
  rw [hmrLadderValue_literals,hc.2.2.1,hmrEqualityLiterals_value bits k s hc.1.2.1] at value
  exact value

end ECDSAAdd.Arithmetic.Paper935
