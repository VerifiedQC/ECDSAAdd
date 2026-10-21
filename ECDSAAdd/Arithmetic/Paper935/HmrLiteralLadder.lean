import ECDSAAdd.Arithmetic.Paper935.HmrChainFree

namespace ECDSAAdd.Arithmetic.Paper935

structure HmrLiteral where
  wire : Wire
  pol : Bool
  deriving DecidableEq

def HmrLiteral.value (a : HmrLiteral) (s : BasisState) : Bool :=
  if a.pol then s a.wire else !s a.wire

structure HmrLadderCell where
  literal : HmrLiteral
  target : Wire
  deriving DecidableEq

def hmrLadderPorts (cs : List HmrLadderCell) : List Wire :=
  cs.flatMap (fun c => [c.literal.wire,c.target])

def hmrLadder (a : HmrLiteral) : List HmrLadderCell → List HmrAndStage
  | [] => []
  | c::cs => ⟨a.wire,c.literal.wire,c.target,a.pol,c.literal.pol⟩ ::
      hmrLadder ⟨c.target,true⟩ cs

def hmrLadderOutput (a : HmrLiteral) : List HmrLadderCell → HmrLiteral
  | [] => a
  | c::cs => hmrLadderOutput ⟨c.target,true⟩ cs

def hmrLadderValue (a : HmrLiteral) (cs : List HmrLadderCell) (s : BasisState) : Bool :=
  a.value s && cs.all (fun c => c.literal.value s)

theorem hmrLadder_ready (a : HmrLiteral) (cs : List HmrLadderCell)
    (distinct : (a.wire::hmrLadderPorts cs).Nodup) (s : BasisState)
    (clean : ∀c∈cs,s c.target=false) : HmrAndReady (hmrLadder a cs) s := by
  induction cs generalizing a s with
  | nil => trivial
  | cons c cs ih =>
    change (a.wire::c.literal.wire::c.target::hmrLadderPorts cs).Nodup at distinct
    obtain ⟨ha,hrest⟩ := List.nodup_cons.mp distinct
    obtain ⟨hb,htail⟩ := List.nodup_cons.mp hrest
    have hc := (List.nodup_cons.mp htail).1
    refine ⟨?_,clean c (by simp),?_⟩
    · simpa only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
        not_or,not_false_eq_true,and_true,and_assoc] using
        (show a.wire≠c.literal.wire ∧ a.wire≠c.target ∧ c.literal.wire≠c.target from
          ⟨fun eq => ha (by simp [eq]),fun eq => ha (by simp [eq]),fun eq => hb (by simp [eq])⟩)
    · apply ih ⟨c.target,true⟩ htail
      intro d hd
      have ne : d.target≠c.target := by
        intro eq
        apply hc
        unfold hmrLadderPorts
        exact List.mem_flatMap.mpr ⟨d,hd,by simp [eq]⟩
      simpa [HmrAndStage.advance,writeBit,ne] using clean d (by simp [hd])

theorem hmrLadder_all_write (cs : List HmrLadderCell) (q : Wire)
    (outside : q∉hmrLadderPorts cs) (s : BasisState) (v : Bool) :
    cs.all (fun c => c.literal.value (writeBit s q v))=cs.all (fun c => c.literal.value s) := by
  induction cs with
  | nil => rfl
  | cons c cs ih =>
    have ne : c.literal.wire≠q := fun eq => outside (by simp [hmrLadderPorts,eq])
    have rest : q∉hmrLadderPorts cs := fun mem => outside (by
      change q∈c.literal.wire::c.target::hmrLadderPorts cs
      exact List.mem_cons_of_mem _ (List.mem_cons_of_mem _ mem))
    simp only [List.all_cons]
    rw [ih rest]
    simp only [HmrLiteral.value,writeBit,Function.update_of_ne ne]

theorem hmrLadder_value (a : HmrLiteral) (cs : List HmrLadderCell)
    (distinct : (a.wire::hmrLadderPorts cs).Nodup) (s : BasisState) :
    (hmrLadderOutput a cs).value (hmrAndAdvance (hmrLadder a cs) s)=hmrLadderValue a cs s := by
  induction cs generalizing a s with
  | nil => simp [hmrLadderOutput,hmrLadder,hmrAndAdvance,hmrLadderValue]
  | cons c cs ih =>
    change (a.wire::c.literal.wire::c.target::hmrLadderPorts cs).Nodup at distinct
    have tail := (List.nodup_cons.mp (List.nodup_cons.mp distinct).2).2
    have outside := (List.nodup_cons.mp tail).1
    rw [hmrLadder,hmrAndAdvance,hmrLadderOutput,ih ⟨c.target,true⟩ tail]
    simp only [hmrLadderValue,HmrAndStage.advance]
    rw [hmrLadder_all_write cs c.target outside]
    simp [HmrLiteral.value,writeBit,Bool.and_assoc]


theorem hmrLadder_outside (a : HmrLiteral) (cs : List HmrLadderCell) (q : Wire)
    (outside : q∉a.wire::hmrLadderPorts cs) : HmrAndOutside (hmrLadder a cs) q := by
  induction cs generalizing a with
  | nil => intro g hg; simp [hmrLadder] at hg
  | cons c cs ih =>
    have ha : a.wire≠q := fun eq => outside (by simp [eq])
    have hb : c.literal.wire≠q := fun eq => outside (by simp [hmrLadderPorts,eq])
    have ht : c.target≠q := fun eq => outside (by simp [hmrLadderPorts,eq])
    have rest : q∉c.target::hmrLadderPorts cs := fun mem => outside (by
      change q∈a.wire::c.literal.wire::c.target::hmrLadderPorts cs
      exact List.mem_cons_of_mem _ (List.mem_cons_of_mem _ mem))
    intro g hg
    simp only [hmrLadder,List.mem_cons] at hg
    rcases hg with rfl | hg
    · exact ⟨ha,hb,ht⟩
    · exact ih ⟨c.target,true⟩ rest g hg

theorem hmrLadderOutput_pol (a : HmrLiteral) (cs : List HmrLadderCell)
    (nonempty : cs≠[]) : (hmrLadderOutput a cs).pol=true := by
  induction cs generalizing a with
  | nil => exact False.elim (nonempty rfl)
  | cons c cs ih =>
    cases cs with
    | nil => rfl
    | cons d ds => exact ih ⟨c.target,true⟩ (by simp)

theorem hmrLadderKeep_run (a : HmrLiteral) (cs : List HmrLadderCell) (keeper : Wire)
    (nonempty : cs≠[]) (distinct : (a.wire::hmrLadderPorts cs).Nodup)
    (outside : keeper∉a.wire::hmrLadderPorts cs) (s : State) (m : List Bool)
    (clean : ∀c∈cs,s.basis c.target=false) :
    run (hmrChainKeep (hmrLadder a cs) (hmrLadderOutput a cs).wire keeper) m s=
      ⟨s.phase,writeBit s.basis keeper (s.basis keeper ^^ hmrLadderValue a cs s.basis)⟩ := by
  rw [hmrChainKeep_run _ _ _ (hmrLadder_outside a cs keeper outside) s m
    (hmrLadder_ready a cs distinct s.basis clean)]
  have value := hmrLadder_value a cs distinct s.basis
  simpa only [HmrLiteral.value,hmrLadderOutput_pol a cs nonempty,ite_true] using
    congrArg (fun b => (⟨s.phase,writeBit s.basis keeper (s.basis keeper ^^ b)⟩ : State)) value

end ECDSAAdd.Arithmetic.Paper935
