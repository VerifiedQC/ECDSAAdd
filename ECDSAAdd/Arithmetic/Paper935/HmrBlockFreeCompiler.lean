import ECDSAAdd.Arithmetic.Paper935.HmrBlockKeepCompiler

namespace ECDSAAdd.Arithmetic.Paper935

inductive HmrBlockFreePlan where
  | copy (literal : HmrLiteral) (keeper : Wire)
  | chain (head : HmrLiteral) (cells : List HmrLadderCell) (last : HmrLiteral) (keeper : Wire)

def HmrBlockFreePlan.keeper : HmrBlockFreePlan → Wire
  | .copy _ k => k
  | .chain _ _ _ k => k

def HmrBlockFreePlan.literals : HmrBlockFreePlan → List HmrLiteral
  | .copy a _ => [a]
  | .chain a cs last _ => a::cs.map HmrLadderCell.literal++[last]

def HmrBlockFreePlan.targets : HmrBlockFreePlan → List Wire
  | .copy _ _ => []
  | .chain _ cs _ _ => cs.map HmrLadderCell.target

def HmrBlockFreePlan.Valid : HmrBlockFreePlan → Prop
  | .copy a k => a.wire≠k
  | .chain a cs last k =>
      (a.wire::hmrLadderPorts cs).Nodup ∧ k∉a.wire::hmrLadderPorts cs ∧
      last.wire∉a.wire::hmrLadderPorts cs ∧ [(hmrLadderOutput a cs).wire,last.wire,k].Nodup

instance (P : HmrBlockFreePlan) : Decidable P.Valid := by
  cases P <;> unfold HmrBlockFreePlan.Valid <;> infer_instance

def HmrBlockFreePlan.program : HmrBlockFreePlan → Program
  | .copy a k => hmrLiteralCopy a k
  | .chain a cs last k => hmrChainFree (hmrLadder a cs) (hmrLadderOutput a cs).wire
      last.wire k (hmrLadderOutput a cs).pol last.pol

theorem HmrBlockFreePlan.run (P : HmrBlockFreePlan) (valid : P.Valid)
    (s : State) (m : List Bool) (clean : ∀q∈P.targets,s.basis q=false)
    (value : s.basis P.keeper=P.literals.all (fun l => l.value s.basis)) :
    run P.program m s=⟨s.phase,writeBit s.basis P.keeper false⟩ := by
  cases P with
  | copy a k =>
    exact hmrLiteralCopy_clear a k valid s m (by simpa [HmrBlockFreePlan.literals] using value)
  | chain a cs last k =>
    apply hmrLadderFree_run a cs last k valid.1 valid.2.1 valid.2.2.1 valid.2.2.2 s m
    · intro c hc
      exact clean c.target (List.mem_map.mpr ⟨c,hc,rfl⟩)
    · simpa [HmrBlockFreePlan.keeper,HmrBlockFreePlan.literals,hmrLadderValue,Function.comp_def,
        Bool.and_assoc] using value

def hmrFreePlanFor (literals : List HmrLiteral) (keeper : Wire) (work : List Wire) :
    Option HmrBlockFreePlan :=
  match literals with
  | [] => none
  | [a] => some (.copy a keeper)
  | a::b::rest => some (.chain a
      (((b::rest).dropLast.zip work).map (fun x => ⟨x.1,x.2⟩))
      ((b::rest).getLastD b) keeper)

def compileHmrBlockFree (A : Arena) (literals : List HmrLiteral) (keeper : Wire) :
    Option (Arena × List Wire × HmrBlockFreePlan) := do
  if (keeper::literals.map HmrLiteral.wire).toFinset⊆A.live then
    let (B,work) ← A.borrowMany (literals.length-2)
    let plan ← hmrFreePlanFor literals keeper work
    if plan.Valid ∧ plan.literals=literals ∧ plan.keeper=keeper ∧
      plan.targets.toFinset⊆work.toFinset then some (B,work,plan) else none
  else none

theorem compileHmrBlockFree_contract (A B : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (work : List Wire) (P : HmrBlockFreePlan)
    (h : compileHmrBlockFree A literals keeper=some (B,work,P)) :
    (keeper::literals.map HmrLiteral.wire).toFinset⊆A.live ∧
    A.borrowMany (literals.length-2)=some (B,work) ∧
    P.Valid ∧ P.literals=literals ∧ P.keeper=keeper ∧ P.targets.toFinset⊆work.toFinset := by
  unfold compileHmrBlockFree at h
  split at h
  next owned =>
    obtain ⟨⟨C,ws⟩,borrow,h⟩ := Option.bind_eq_some_iff.mp h
    dsimp only at h
    obtain ⟨Q,_,h⟩ := Option.bind_eq_some_iff.mp h
    split at h
    next valid =>
      cases h
      exact ⟨owned,borrow,valid⟩
    next invalid => simp at h
  next invalid => simp at h

theorem compileHmrBlockFree_run (A B : Arena) (literals : List HmrLiteral) (keeper : Wire)
    (work : List Wire) (P : HmrBlockFreePlan)
    (h : compileHmrBlockFree A literals keeper=some (B,work,P))
    (s : State) (m : List Bool) (ready : A.Ready s.basis)
    (value : s.basis keeper=literals.all (fun l => l.value s.basis)) :
    run P.program m s=⟨s.phase,writeBit s.basis keeper false⟩ := by
  have hc := compileHmrBlockFree_contract A B literals keeper work P h
  have borrow := A.borrowMany_contract B (literals.length-2) work hc.2.1
  have clean := (A.reserve_ready B work.toFinset s.basis ready borrow.2.2).2
  have runeq := P.run hc.2.2.1 s m (fun q hq => clean q (hc.2.2.2.2.2 (List.mem_toFinset.mpr hq)))
    (by simpa only [hc.2.2.2.1,hc.2.2.2.2.1] using value)
  simpa only [hc.2.2.2.2.1] using runeq

end ECDSAAdd.Arithmetic.Paper935
