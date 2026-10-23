import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeEnd

namespace ECDSAAdd.Arithmetic.Paper935

/-- Reconstruct F16 from its two independently checked component equations. -/
theorem compileHmrFreezeEndLog_of_parts (A B C : Arena) (record : List Wire)
    (offset : Nat) (zf frozen fire : Wire) (ps : List HmrBlockPlan)
    (eqLog fireLog : List Wire) (logs : List (List Wire)) (P : HmrFreezeEndPlan)
    (hf : compileHmrFireDropLog A record offset zf frozen fire eqLog fireLog=some (B,P.fire))
    (hz : compileHmrBlockedDropLog B ps logs=some (C,P.zero)) :
    compileHmrFreezeEndLog A record offset zf frozen fire ps eqLog fireLog logs=some (C,P) := by
  unfold compileHmrFreezeEndLog
  rw [hf]
  change (compileHmrBlockedDropLog B ps logs).bind (fun (D,qs) => some (D,⟨P.fire,qs⟩))=some (C,P)
  rw [hz]
  rfl

end ECDSAAdd.Arithmetic.Paper935
