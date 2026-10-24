import ECDSAAdd.Arithmetic.Paper935.HmrScheduledStep

namespace ECDSAAdd.Arithmetic.Paper935

/-- Source order is timestamp sites first, then the frozen flag. -/
structure HmrFreezeMetadata where
  timestamp : List Wire
  frozen : Wire

def HmrFreezeMetadata.wires (M : HmrFreezeMetadata) : List Wire := M.timestamp++[M.frozen]

def compileHmrArmLog (A : Arena) (width : Nat) (M : HmrFreezeMetadata) : Option Arena :=
  A.checkBorrow (width+1) M.wires

/-- Before the source arm boundary the metadata is absent physically. The
mathematical freeze fields are still represented by their known zero state. -/
def HmrSourceEncoding (A : Arena) (bank : WindowBank) (counter : List Wire)
    (metadata : Option HmrFreezeMetadata) (s : State) (old : PinState) : Prop :=
  A.Ready s.basis ∧ bank.Encodes s.basis old.rows ∧ signedRegValue counter s.basis=old.rows.z ∧
  match metadata with
  | none => old.frozen=false ∧ old.offset=0
  | some M => s.basis M.frozen=old.frozen ∧ regValue M.timestamp s.basis=old.offset

/-- Allocation adds no gates. Freshness plus incoming readiness supplies
all newly allocated zero bits; no zero-value premise is added. -/
theorem compileHmrArmLog_encoding (A B : Arena) (width : Nat) (M : HmrFreezeMetadata)
    (checked : compileHmrArmLog A width M=some B)
    (bank : WindowBank) (counter : List Wire) (s : State) (old : PinState)
    (encoding : HmrSourceEncoding A bank counter none s old) :
    HmrSourceEncoding B bank counter (some M) s old := by
  obtain ⟨ready,rows,counterValue,unfrozen,unset⟩ := encoding
  have clean := A.checkBorrow_clean B (width+1) M.wires checked s.basis ready
  refine ⟨clean.1,rows,counterValue,?_,?_⟩
  · rw [unfrozen]
    exact clean.2 M.frozen (by simp [HmrFreezeMetadata.wires])
  · rw [unset]
    exact (regValue_zero M.timestamp s.basis).mpr (fun q hq => clean.2 q (List.mem_append_left _ hq))

theorem compileHmrArmLog_layout (A B : Arena) (width : Nat) (M : HmrFreezeMetadata)
    (checked : compileHmrArmLog A width M=some B) :
    M.timestamp.length=width ∧ M.wires.Nodup ∧ B.live=A.live∪M.wires.toFinset := by
  have c := A.checkBorrow_contract B (width+1) M.wires checked
  refine ⟨?_,c.2.1,A.checkBorrow_live B (width+1) M.wires checked⟩
  simpa only [HmrFreezeMetadata.wires,List.length_append,List.length_singleton,Nat.add_right_cancel_iff] using c.1

theorem compileHmrArmLog_card (A B : Arena) (width : Nat) (M : HmrFreezeMetadata)
    (checked : compileHmrArmLog A width M=some B) : B.live.card=A.live.card+(width+1) :=
  A.checkBorrow_card B (width+1) M.wires checked

end ECDSAAdd.Arithmetic.Paper935
