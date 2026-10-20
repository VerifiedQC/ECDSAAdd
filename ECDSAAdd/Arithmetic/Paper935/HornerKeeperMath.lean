import ECDSAAdd.Arithmetic.Paper935.HornerCarryHigh

namespace ECDSAAdd.Arithmetic.Paper935

/-- The abstract high carry is precisely the integer overflow test. -/
theorem hornerWordCarry_overflow (bs : List HornerCarryCell) (cin : Bool) (s : BasisState) :
    hornerWordCarry bs cin s=decide (2^bs.length ≤
      regValue (bs.map HornerCarryCell.target) s+regValue (bs.map HornerCarryCell.addend) s+cin.toNat) := by
  have eq := hornerWordSum_carry bs cin s
  have bound : hornerWordSum bs cin s<2^bs.length := by
    rw [hornerWordSum_value]
    exact Nat.mod_lt _ (by positivity)
  cases h : hornerWordCarry bs cin s
  · simp only [h,Bool.toNat_false,Nat.mul_zero,Nat.add_zero] at eq
    simp [show ¬2^bs.length ≤ regValue (bs.map HornerCarryCell.target) s+
      regValue (bs.map HornerCarryCell.addend) s+cin.toNat by omega]
  · simp only [h,Bool.toNat_true,Nat.mul_one] at eq
    simp [show 2^bs.length ≤ regValue (bs.map HornerCarryCell.target) s+
      regValue (bs.map HornerCarryCell.addend) s+cin.toNat by omega]

/-- The keeper-erasure identity used at luo_core.py:1084–1100. -/
theorem hornerKeeper_identity (a e width : Nat) (cin ctrl : Bool)
    (ha : a<2^width) (he : e<2^width) :
    let low := if ctrl then (a+e+cin.toNat)%2^width else a
    let dressed := if ctrl then 2^width-1-e else e
    decide (2^width ≤ low+dressed+(cin ^^ ctrl).toNat)=
      (decide (2^width ≤ a+e+cin.toNat) ^^ ctrl) := by
  dsimp only
  cases ctrl
  · simp
  · simp only [if_true, Bool.xor_true]
    have pos : 0<2^width := by positivity
    have cb : cin.toNat ≤ 1 := by cases cin <;> decide
    have nc : (!cin).toNat+cin.toNat=1 := by cases cin <;> decide
    by_cases high : 2^width ≤ a+e+cin.toNat
    · have bound : a+e+cin.toNat-2^width<2^width := by omega
      rw [Nat.mod_eq_sub_mod high,Nat.mod_eq_of_lt bound]
      have small : a+e+cin.toNat-2^width+(2^width-1-e)+(!cin).toNat<2^width := by omega
      simp [high, Nat.not_le.mpr small]
    · rw [Nat.mod_eq_of_lt (Nat.not_le.mp high)]
      have large : 2^width ≤ a+(e+cin.toNat)+(2^width-1-e)+(!cin).toNat := by omega
      simp [high,show 2^width ≤ a+e+cin.toNat+(2^width-1-e)+(!cin).toNat by omega]

/-- Bind the keeper identity to a carry recomputation on the written low
word and control-complemented addend. The state is a pure input invariant. -/
theorem hornerWordCarry_after_sum (bs : List HornerCarryCell) (s : BasisState)
    (a e : Nat) (cin ctrl : Bool)
    (ha : a<2^bs.length) (he : e<2^bs.length)
    (low : regValue (bs.map HornerCarryCell.target) s=
      if ctrl then (a+e+cin.toNat)%2^bs.length else a)
    (dressed : regValue (bs.map HornerCarryCell.addend) s=
      if ctrl then 2^bs.length-1-e else e) :
    hornerWordCarry bs (cin ^^ ctrl) s=
      (decide (2^bs.length ≤ a+e+cin.toNat) ^^ ctrl) := by
  rw [hornerWordCarry_overflow,low,dressed]
  exact hornerKeeper_identity a e bs.length cin ctrl ha he

end ECDSAAdd.Arithmetic.Paper935
