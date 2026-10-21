import ECDSAAdd.Arithmetic.Paper935.HmrLadderValues
import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrBlockPlan where
  head : HmrLiteral
  cells : List HmrLadderCell
  keeper : Wire

def HmrBlockPlan.Valid (P : HmrBlockPlan) (literals : List HmrLiteral) (work : List Wire) : Prop :=
  P.head::P.cells.map HmrLadderCell.literal=literals ∧
  (P.head.wire::hmrLadderPorts P.cells).Nodup ∧
  P.keeper∉P.head.wire::hmrLadderPorts P.cells ∧
  (P.cells.map HmrLadderCell.target).toFinset⊆work.toFinset ∧ P.keeper∈work

instance (P : HmrBlockPlan) (literals : List HmrLiteral) (work : List Wire) :
    Decidable (P.Valid literals work) := inferInstanceAs (Decidable (
      P.head::P.cells.map HmrLadderCell.literal=literals ∧
      (P.head.wire::hmrLadderPorts P.cells).Nodup ∧
      P.keeper∉P.head.wire::hmrLadderPorts P.cells ∧
      (P.cells.map HmrLadderCell.target).toFinset⊆work.toFinset ∧ P.keeper∈work))

def HmrBlockPlan.program (P : HmrBlockPlan) : Program :=
  if P.cells=[] then hmrLiteralCopy P.head P.keeper
  else hmrChainKeep (hmrLadder P.head P.cells) (hmrLadderOutput P.head P.cells).wire P.keeper

def compileHmrBlock (A : Arena) (literals : List HmrLiteral) :
    Option (Arena × List Wire × HmrBlockPlan) := do
  if (literals.map HmrLiteral.wire).toFinset⊆A.live then
    let (B,work) ← A.borrowMany literals.length
    let P : HmrBlockPlan := ⟨literals.headD ⟨0,false⟩,
      (literals.tail.zip (work.take (literals.length-1))).map (fun x => ⟨x.1,x.2⟩),
      work.getLastD 0⟩
    if P.Valid literals work then some (B,work,P) else none
  else none

theorem compileHmrBlock_contract (A B : Arena) (literals : List HmrLiteral)
    (work : List Wire) (P : HmrBlockPlan)
    (h : compileHmrBlock A literals=some (B,work,P)) :
    (literals.map HmrLiteral.wire).toFinset⊆A.live ∧
    A.borrowMany literals.length=some (B,work) ∧ P.Valid literals work := by
  unfold compileHmrBlock at h
  split at h
  next owned =>
    obtain ⟨⟨C,ws⟩,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    split at h
    next valid =>
      cases h
      exact ⟨owned,borrow,valid⟩
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrBlock_run (A B : Arena) (literals : List HmrLiteral)
    (work : List Wire) (P : HmrBlockPlan)
    (h : compileHmrBlock A literals=some (B,work,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    run P.program m s=⟨s.phase,writeBit s.basis P.keeper (literals.all (fun l => l.value s.basis))⟩ := by
  have hc := compileHmrBlock_contract A B literals work P h
  have borrow := A.borrowMany_contract B literals.length work hc.2.1
  have clean := (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2
  have keeperZero := clean P.keeper (List.mem_toFinset.mpr hc.2.2.2.2.2.2)
  have targets : ∀c∈P.cells,s.basis c.target=false := by
    intro c mem
    exact clean c.target (hc.2.2.2.2.2.1 (List.mem_toFinset.mpr (List.mem_map.mpr ⟨c,mem,rfl⟩)))
  unfold HmrBlockPlan.program
  split
  next empty =>
    rw [hmrLiteralCopy_run P.head P.keeper (by
      intro eq
      exact hc.2.2.2.2.1 (by simp [eq])),keeperZero,Bool.false_xor]
    have lits : literals=[P.head] := by simpa [empty] using hc.2.2.1.symm
    simp [lits]
  next nonempty =>
    rw [hmrLadderKeep_run P.head P.cells P.keeper nonempty hc.2.2.2.1 hc.2.2.2.2.1 s m targets,
      keeperZero,Bool.false_xor,hmrLadderValue_literals,hc.2.2.1]

end ECDSAAdd.Arithmetic.Paper935
