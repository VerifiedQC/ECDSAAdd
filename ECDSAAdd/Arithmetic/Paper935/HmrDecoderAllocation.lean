import ECDSAAdd.Arithmetic.Paper935.HmrBorrowPorts
import ECDSAAdd.Arithmetic.Paper935.HmrDecoderCopy

namespace ECDSAAdd.Arithmetic.Paper935

def HmrDecoderInputs (v : Fin 13 → Wire) : Prop :=
  ∀i j, i.val < 3 ∨ j.val < 3 → (v i=v j ↔ i=j)

instance (v : Fin 13 → Wire) : Decidable (HmrDecoderInputs v) :=
  inferInstanceAs (Decidable (∀i j : Fin 13, i.val < 3 ∨ j.val < 3 → (v i=v j ↔ i=j)))

def compileHmrDecoder (A : Arena) (v : Fin 13 → Wire) : Option (Arena × List Wire) :=
  if HmrDecoderInputs v ∧ ∀i,v i∈A.live then A.borrowMany 6 else none

def hmrAllocatedDecoderPorts (v : Fin 13 → Wire) (work : List Wire) (i : Fin 19) : Wire :=
  if h : i.val < 13 then v ⟨i.val,h⟩ else hmrBorrowPorts work (⟨i.val-13,by omega⟩ : Fin 6)

theorem compileHmrDecoder_contract (A B : Arena) (v : Fin 13 → Wire) (work : List Wire)
    (h : compileHmrDecoder A v=some (B,work)) :
    HmrDecoderInputs v ∧ (∀i,v i∈A.live) ∧ A.borrowMany 6=some (B,work) := by
  unfold compileHmrDecoder at h
  split at h
  next valid => exact ⟨valid.1,valid.2,h⟩
  next invalid => simp at h

theorem compileHmrDecoder_exists (A : Arena) (v : Fin 13 → Wire)
    (valid : HmrDecoderInputs v) (owned : ∀i,v i∈A.live)
    (capacity : A.live.card+6≤935) :
    ∃ B work,compileHmrDecoder A v=some (B,work) := by
  obtain ⟨B,work,h⟩ := (A.borrowMany_capacity 6).mpr capacity
  exact ⟨B,work,by simp only [compileHmrDecoder,if_pos (And.intro valid owned),h]⟩

theorem compileHmrDecoder_geometry (A B : Arena) (v : Fin 13 → Wire) (work : List Wire)
    (h : compileHmrDecoder A v=some (B,work)) :
    HmrDecoderGeometry (hmrAllocatedDecoderPorts v work) := by
  have hc := compileHmrDecoder_contract A B v work h
  have hw := hmrBorrowPorts_contract A B 6 work hc.2.2
  intro i j special
  constructor
  · intro eq
    unfold hmrAllocatedDecoderPorts at eq
    split at eq <;> split at eq
    · next hi hj =>
      apply Fin.ext
      exact congrArg (fun k : Fin 13 => k.val) ((hc.1 ⟨i.val,hi⟩ ⟨j.val,hj⟩ (by dsimp; omega)).mp eq)
    · next hi hj => exact False.elim (hw.2.2 _ (eq ▸ hc.2.1 _))
    · next hi hj => exact False.elim (hw.2.2 _ (eq.symm ▸ hc.2.1 _))
    · next hi hj =>
      have e := congrArg (fun k : Fin 6 => k.val) (hw.1 eq)
      apply Fin.ext
      dsimp at e
      omega
  · intro eq; subst j; rfl

theorem compileHmrDecoder_clean (A B : Arena) (v : Fin 13 → Wire) (work : List Wire)
    (h : compileHmrDecoder A v=some (B,work)) (s : BasisState) (ready : A.Ready s)
    (i : Fin 19) (lower : 13 ≤ i.val) : s (hmrAllocatedDecoderPorts v work i)=false := by
  unfold hmrAllocatedDecoderPorts
  rw [dif_neg (by omega)]
  exact hmrBorrowPorts_clean A B 6 work (compileHmrDecoder_contract A B v work h).2.2 s ready _

end ECDSAAdd.Arithmetic.Paper935
