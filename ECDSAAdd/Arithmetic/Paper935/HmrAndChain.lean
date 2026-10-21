import ECDSAAdd.Arithmetic.Paper935.HmrPolarAnd

namespace ECDSAAdd.Arithmetic.Paper935
structure HmrAndStage where
  a : Wire
  b : Wire
  target : Wire
  pa : Bool
  pb : Bool

def HmrAndStage.advance (g : HmrAndStage) (s : BasisState) : BasisState :=
  writeBit s g.target ((if g.pa then s g.a else !s g.a) && (if g.pb then s g.b else !s g.b))

def HmrAndStage.compute (g : HmrAndStage) : Program := hmrPolarAnd g.a g.b g.target g.pa g.pb

def HmrAndStage.release (g : HmrAndStage) : Program := hmrPolarRelease g.a g.b g.target g.pa g.pb

theorem HmrAndStage.compute_run (g : HmrAndStage) (s : State) (m : List Bool)
    (distinct : [g.a,g.b,g.target].Nodup) (zero : s.basis g.target=false) :
    run g.compute m s=⟨s.phase,g.advance s.basis⟩ :=
  hmrPolarAnd_run g.a g.b g.target g.pa g.pb distinct s m zero

theorem HmrAndStage.release_run (g : HmrAndStage) (s : State) (m : List Bool)
    (distinct : [g.a,g.b,g.target].Nodup) (zero : s.basis g.target=false) :
    run g.release m ⟨s.phase,g.advance s.basis⟩=s := by
  have h := distinct
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at h
  have hat := h.1.2
  have hbt := h.2
  rw [HmrAndStage.release,hmrPolarRelease_run g.a g.b g.target g.pa g.pb distinct _ m
    (by simp [HmrAndStage.advance,writeBit,hat,hbt])]
  change State.mk s.phase (Function.update (Function.update s.basis g.target _) g.target false)=s
  rw [Function.update_idem,←zero,Function.update_eq_self]

def hmrAndSweep : List HmrAndStage → Program
  | [] => []
  | g::gs => g.compute ++ hmrAndSweep gs

def hmrAndUnsweep : List HmrAndStage → Program
  | [] => []
  | g::gs => hmrAndUnsweep gs ++ g.release

def hmrAndAdvance : List HmrAndStage → BasisState → BasisState
  | [],s => s
  | g::gs,s => hmrAndAdvance gs (g.advance s)

def HmrAndReady : List HmrAndStage → BasisState → Prop
  | [],_ => True
  | g::gs,s => [g.a,g.b,g.target].Nodup ∧ s g.target=false ∧ HmrAndReady gs (g.advance s)

theorem HmrAndStage.count (g : HmrAndStage) : measurementCount g.compute=0 := by
  cases g with
  | mk a b t pa pb => cases pa <;> cases pb <;> rfl

theorem hmrAndSweep_run (gs : List HmrAndStage) (s : State) (m : List Bool)
    (ready : HmrAndReady gs s.basis) :
    run (hmrAndSweep gs) m s=⟨s.phase,hmrAndAdvance gs s.basis⟩ := by
  induction gs generalizing s m with
  | nil => rfl
  | cons g gs ih =>
    obtain ⟨distinct,zero,rest⟩ := ready
    rw [hmrAndSweep,run_append,run_take,g.count,List.drop_zero,g.compute_run s m distinct zero]
    exact ih ⟨s.phase,g.advance s.basis⟩ m rest

theorem hmrAndUnsweep_run (gs : List HmrAndStage) (s : State) (m : List Bool)
    (ready : HmrAndReady gs s.basis) :
    run (hmrAndUnsweep gs) m ⟨s.phase,hmrAndAdvance gs s.basis⟩=s := by
  induction gs generalizing s m with
  | nil => rfl
  | cons g gs ih =>
    obtain ⟨distinct,zero,rest⟩ := ready
    rw [hmrAndUnsweep,run_append,run_take]
    change run g.release (m.drop (measurementCount (hmrAndUnsweep gs)))
      (run (hmrAndUnsweep gs) m ⟨s.phase,hmrAndAdvance gs (g.advance s.basis)⟩)=s
    rw [ih ⟨s.phase,g.advance s.basis⟩ m rest]
    exact g.release_run s _ distinct zero



end ECDSAAdd.Arithmetic.Paper935
