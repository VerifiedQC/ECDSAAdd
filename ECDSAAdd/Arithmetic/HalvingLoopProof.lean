import ECDSAAdd.Arithmetic.HalvingStep

namespace ECDSAAdd.Arithmetic

theorem PhaseValues.swap_eq (L : HalvingLoopLayout) (K A B : Nat) (C : Bool) :
    PhaseValues L.swap K A B C = PhaseValues L K B A C := by
  funext s
  apply propext
  simp only [PhaseValues,HalvingLoopLayout.swap,HalvingLoopLayout.counter,HalveValues.swap]

theorem halvingLoop_correct (L : HalvingLoopLayout) (hnd : L.wires.Nodup)
    (ha : L.data.a.length=L.data.arithmetic.width+1)
    (hb : L.data.b.length=L.data.arithmetic.width+1)
    (ht : L.data.temp.length=L.data.arithmetic.width+1) (hw : L.counter.width=10)
    (q X K i n : Nat) (hq : q<2^L.data.arithmetic.width) (ho : q%2=1)
    (hx : X<q) (hk : K≤512) (hi : i+n≤512) :
    Triple (PhaseValues L K X 0 false) (halvingLoop L q i n)
      (PhaseValues (halvingEnd L n) K (halvingRun q K i n X) 0 false) ∧
    Triple (PhaseValues (halvingEnd L n) K (halvingRun q K i n X) 0 false) (halvingUnloop L q i n)
      (PhaseValues L K X 0 false) := by
  induction n generalizing L X i with
  | zero => constructor <;> intro s m h <;> exact ⟨rfl,h⟩
  | succ n ih =>
    let Y := if i<K then halveMod q X else X
    have hy : Y<q := by dsimp [Y]; split_ifs; exact halve_mod_bound q X ho hx; exact hx
    have hs := halvingStep_values L hnd ha hb ht hw q X K i hq ho hx hk (by omega)
    have ht' := ih L.swap (L.swap_perm.nodup_iff.mpr hnd) hb ha ht hw Y (i+1) hq hy (by omega)
    have hforward : Triple (PhaseValues L K X 0 false) (halvingStep L q i)
        (PhaseValues L.swap K Y 0 false) := by simpa only [PhaseValues.swap_eq] using hs.1
    have hback : Triple (PhaseValues L.swap K Y 0 false) (halvingUnstep L q i)
        (PhaseValues L K X 0 false) := by simpa only [PhaseValues.swap_eq] using hs.2
    exact ⟨hforward.seq ht'.1, ht'.2.seq hback⟩

theorem halvingRun_eq (q K i n X : Nat) :
    halvingRun q K i n X = (halveMod q)^[min n (K-i)] X := by
  induction n generalizing i X with
  | zero => rfl
  | succ n ih =>
    rw [halvingRun,ih]
    by_cases hi : i<K
    · have hm : min (n+1) (K-i) = min n (K-(i+1))+1 := by omega
      rw [if_pos hi,hm,Function.iterate_succ_apply]
    · have hm : K-i=0 := by omega
      have hm' : K-(i+1)=0 := by omega
      simp [hi,hm,hm']

/-- 512 次静态循环中只有 i<k 的轮次减半，计数 k 不递减。 -/
theorem halvingRun_fixed (q K X : Nat) :
    halvingRun q K 0 512 X = halveFixed q K 512 X := by
  rw [halvingRun_eq,halveFixed_eq]
  simp

end ECDSAAdd.Arithmetic
