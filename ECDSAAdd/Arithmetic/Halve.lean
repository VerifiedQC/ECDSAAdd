import ECDSAAdd.Arithmetic.HalveSteps
import ECDSAAdd.Math.KaliskiInverse

namespace ECDSAAdd.Arithmetic
open ExternalMod

/-- 加上奇偶性决定的模数后右移；复制结果后用正向加法和左移清理。
左右移位均以已载入的奇模数最低位为控制：该位为真，移位实际执行，且不额外分配控制线。 -/
def halveXor (L : ModLayout) (q : Nat) (src dst : List Wire) : Program :=
  xorConstant (L.reg .modulus) q ++ copyRegister none src L.x ++
  copyRegister (some src.head!) (L.reg .modulus) L.y ++
  add (L.adder .x .y .out .carrySum L.cinSum) ++
  shiftRight (L.reg .modulus).head! L.out ++ copyRegister none L.out dst ++
  shiftLeft (L.reg .modulus).head! L.out ++
  add (L.adder .x .y .out .carrySum L.cinSum) ++
  copyRegister (some src.head!) (L.reg .modulus) L.y ++
  copyRegister none src L.x ++ xorConstant (L.reg .modulus) q

private theorem halve_values (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q X O : Nat) (hq : q < 2^L.width)
    (hqodd : q % 2 = 1) (hX : X < q) :
    Triple (Values L src dst X O (fun _ => 0)) (halveXor L q src dst)
      (Values L src dst X (O ^^^ halveMod q X) (fun _ => 0)) := by
  have hqw : q < 2^(L.width+1) := by rw [pow_succ]; omega
  have hsne : src ≠ [] := by intro he; rw [he] at hs; simp at hs
  let A := halveAddend q X
  let S := X + A
  let H := S / 2
  have heven : S % 2 = 0 := by
    dsimp [S, A, halveAddend]; split_ifs <;> omega
  have hS : S < 2^(L.width+1) := by
    dsimp [S, A, halveAddend]; rw [pow_succ]; split_ifs <;> omega
  have htwice : 2*H = S := by dsimp [H]; omega
  have hhalf : H = halveMod q X := by
    dsimp [H, S, A, halveAddend, halveMod]; split_ifs <;> simp
  have hAeq : halveAddend q X = A := rfl
  have hSeq : X + A = S := rfl
  have hHeq : S / 2 = H := rfl
  let v0 : ModField → Nat := fun _ => 0
  let v1 := Function.update v0 .modulus q
  let v2 := Function.update v1 .x X
  let v3 := Function.update v2 .y A
  let v4 := Function.update v3 .out S
  let v5 := Function.update v4 .out H
  let v6 := Function.update v5 .out S
  let v7 := Function.update v6 .out 0
  let v8 := Function.update v7 .y 0
  let v9 := Function.update v8 .x 0
  let v10 := Function.update v9 .modulus 0
  have h0 : Triple (Values L src dst X O v0) (xorConstant (L.reg .modulus) q)
      (Values L src dst X O v1) := by
    simpa [v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using ExternalMod.constant L src dst hnd X O v0 .modulus q hqw
  have h1 : Triple (Values L src dst X O v1) (copyRegister none src L.x)
      (Values L src dst X O v2) := by
    simpa [v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using copy_into L src dst hnd hs X O v1 .x
  have h2 : Triple (Values L src dst X O v2) (copyRegister (some src.head!) (L.reg .modulus) L.y)
      (Values L src dst X O v3) := by
    simpa [v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using halve_mask L src dst hnd hsne X O v2
  have h3 : Triple (Values L src dst X O v3) (add (L.adder .x .y .out .carrySum L.cinSum))
      (Values L src dst X O v4) := by
    simpa [v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using ExternalMod.add_step L src dst hnd X O v3 .x .y .out .carrySum (by decide) L.cinSum (Or.inl rfl) (by simp [v3,v2,v1,v0])
  have h4 : Triple (Values L src dst X O v4) (shiftRight (L.reg .modulus).head! L.out)
      (Values L src dst X O v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using halve_shift L src dst hnd X O v4 (by simpa [v4,v3,v2,v1,v0] using hqodd) (by simpa [v4] using heven)
  have h5 : Triple (Values L src dst X O v5) (copyRegister none L.out dst)
      (Values L src dst X (O ^^^ H) v5) := by
    simpa [v5, v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using copy_out L src dst hnd hd X O v5
  have h6 : Triple (Values L src dst X (O ^^^ H) v5) (shiftLeft (L.reg .modulus).head! L.out)
      (Values L src dst X (O ^^^ H) v6) := by
    simpa [v6, v5, v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using halve_unshift L src dst hnd X (O ^^^ H) v5 (by simpa [v5,v4,v3,v2,v1,v0] using hqodd) (by simpa [v5,htwice] using hS)
  have h7 : Triple (Values L src dst X (O ^^^ H) v6) (add (L.adder .x .y .out .carrySum L.cinSum))
      (Values L src dst X (O ^^^ H) v7) := by
    simpa [v7, v6, v5, v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using ExternalMod.add_step L src dst hnd X (O ^^^ H) v6 .x .y .out .carrySum (by decide) L.cinSum (Or.inl rfl) (by simp [v6,v5,v4,v3,v2,v1,v0])
  have h8 : Triple (Values L src dst X (O ^^^ H) v7) (copyRegister (some src.head!) (L.reg .modulus) L.y)
      (Values L src dst X (O ^^^ H) v8) := by
    simpa [v8, v7, v6, v5, v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using halve_mask L src dst hnd hsne X (O ^^^ H) v7
  have h9 : Triple (Values L src dst X (O ^^^ H) v8) (copyRegister none src L.x)
      (Values L src dst X (O ^^^ H) v9) := by
    simpa [v9, v8, v7, v6, v5, v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using copy_into L src dst hnd hs X (O ^^^ H) v8 .x
  have h10 : Triple (Values L src dst X (O ^^^ H) v9) (xorConstant (L.reg .modulus) q)
      (Values L src dst X (O ^^^ H) v10) := by
    simpa [v10, v9, v8, v7, v6, v5, v4, v3, v2, v1, v0, ModLayout.x, ModLayout.y, hSeq, Nat.mod_eq_of_lt hS, hHeq, htwice, hAeq] using ExternalMod.constant L src dst hnd X (O ^^^ H) v9 .modulus q hqw
  have hv : v10 = v0 := by
    funext f; cases f <;> simp [v10, v9, v8, v7, v6, v5, v4, v3, v2, v1, v0]
  have h := h0.seq (h1.seq (h2.seq (h3.seq (h4.seq (h5.seq (h6.seq (h7.seq (h8.seq (h9.seq (h10))))))))))
  simpa only [halveXor, List.append_assoc, hv, v0, hhalf] using h

theorem halveXor_spec (L : ModLayout) (src dst : List Wire)
    (hnd : (src ++ dst ++ L.wires).Nodup) (hs : src.length = L.width+1)
    (hd : dst.length = L.width+1) (q X O : Nat) (hq : q < 2^L.width)
    (hqodd : q % 2 = 1) (hX : X < q) :
    {{ src = X, dst = O, L.wires = 0 }} halveXor L q src dst
    {{ src = X, dst = (O ^^^ halveMod q X), L.wires = 0 }} :=
  Triple.conseq (fun st h => ⟨h.1.1, h.1.2, (zeros_iff L st).mpr h.2⟩)
    (halve_values L src dst hnd hs hd q X O hq hqodd hX)
    (fun st h => ⟨⟨h.1, h.2.1⟩, (zeros_iff L st).mp h.2.2⟩)

end ECDSAAdd.Arithmetic
