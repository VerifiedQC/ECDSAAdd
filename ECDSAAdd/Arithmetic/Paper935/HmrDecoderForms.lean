import ECDSAAdd.Math.Divsteps.ShallowRecovery

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps.SmallDecoders

def hmrForm2 (gv q : Nat) : Bool := bit gv 1 ^^ bit q 1

theorem hmrForm2_correct : ∀ f q : Fin 2, ∀ gv : Fin 4,
    (oddValue f * gv.val)%4=3 →
    hmrForm2 gv.val (oddValue q)=decode2 (oddValue f) (oddValue q) := by
  decide +kernel

/-- The production j=3 grouped form, before physical wire binding. -/
def hmrForm3 (f gv q : Nat) : Bool := bit q 2 ^^ (!bit f 2 && bit gv 2)

/-- The production j=4 grouped form, preserving XOR rather than OR between
cube terms, including their cancellations on overlapping cubes. -/
def hmrForm4 (f gv q : Nat) : Bool :=
  ((!bit f 1 ^^ bit f 2) && (bit q 1 ^^ bit q 2)) ^^ bit q 3 ^^
    ((!bit f 1 ^^ !bit f 2 ^^ !bit f 3) && bit gv 3)

theorem hmrForm3_correct : ∀ f q : Fin 4, ∀ gv : Fin 8,
    (oddValue f * gv.val)%8=7 →
    hmrForm3 (oddValue f) gv.val (oddValue q)=decode3 (oddValue f) (oddValue q) := by
  decide +kernel

theorem hmrForm4_correct : ∀ f q : Fin 8, ∀ gv : Fin 16,
    (oddValue f * gv.val)%16=15 →
    hmrForm4 (oddValue f) gv.val (oddValue q)=decode4 (oddValue f) (oddValue q) := by
  decide +kernel

/-- The coefficient relation used by the source forms follows from the
independent determinant invariant whenever the other coefficient is divisible. -/
theorem hmrCoefficient_congruence (p : Int) (s : ECDSAAdd.Divsteps.ZState)
    (inv : ECDSAAdd.Divsteps.Inv p s) (n : Nat) (divisible : (n : Int)∣s.fv) :
    (s.f : ZMod n)*(s.gv : ZMod n)=(p : ZMod n) := by
  have h := congrArg (fun x : Int => (x : ZMod n)) inv.det
  push_cast at h
  have zero : (s.fv : ZMod n)=0 := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).mpr divisible
  simpa only [zero,mul_zero,sub_zero] using h

end ECDSAAdd.Arithmetic.Paper935
