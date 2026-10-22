import ECDSAAdd.Arithmetic.Paper935.HmrHybridPair
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedHybridCin

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrHybridPairAddLog_run (A B C : Arena) (control cin carry : Wire) (a b x y wa wb : List Wire)
    (first : compileHmrHybridCinLog A control cin carry a b wa=some B)
    (second : compileHmrHybridCinLog A control cin carry x y wb=some C)
    (apart : (a++b).Disjoint (x++y)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (zero : s.basis carry=false) :
    let out := run (hmrHybridPairAdd control cin carry a b x y wa wb) m s
    out.phase=s.phase ∧ A.Ready out.basis ∧
    (∀q,q∉b++y → out.basis q=s.basis q) ∧
    regValue b out.basis=(if s.basis control then
      (regValue a s.basis+regValue b s.basis+(s.basis cin).toNat)%2^b.length else regValue b s.basis) ∧
    regValue y out.basis=(if s.basis control then
      (regValue x s.basis+regValue y s.basis+(s.basis cin).toNat)%2^y.length else regValue y s.basis) := by
  let u := run (hmrHybridRowCin control cin carry a b wa) m s
  let ms := m.drop (measurementCount (hmrHybridRowCin control cin carry a b wa))
  have left := compileHmrHybridCinLog_run A B control cin carry a b wa first s m ready zero
  have leftReady := (compileHmrHybridCinLog_return A B control cin carry a b wa first s m ready zero).1
  have nd := (compileHmrHybridCinLog_contract A B control cin carry a b wa first).1
  have hn := List.nodup_cons.mp nd
  have hc := List.nodup_cons.mp hn.2
  have hk := List.nodup_cons.mp hc.2
  have cinApart : cin∉b := fun h => hn.1 (by simp [h])
  have controlApart : control∉b := fun h => hc.1 (by simp [h])
  have carryApart : carry∉b := fun h => hk.1 (List.mem_append_right _ h)
  have carryZero : u.basis carry=false := (left.2.1 carry carryApart).trans zero
  have right := compileHmrHybridCinLog_run A C control cin carry x y wb second u ms leftReady carryZero
  have rightReady := (compileHmrHybridCinLog_return A C control cin carry x y wb second u ms leftReady carryZero).1
  have oldX : regValue x u.basis=regValue x s.basis := regValue_congr _ _ _ (fun q hq =>
    left.2.1 q (fun hb => List.disjoint_left.mp apart (List.mem_append_right _ hb) (List.mem_append_left _ hq)))
  have oldY : regValue y u.basis=regValue y s.basis := regValue_congr _ _ _ (fun q hq =>
    left.2.1 q (fun hb => List.disjoint_left.mp apart (List.mem_append_right _ hb) (List.mem_append_right _ hq)))
  dsimp only
  rw [hmrHybridPairAdd,run_append,run_take]
  change (run (hmrHybridRowCin control cin carry x y wb) ms u).phase=s.phase ∧ _
  refine ⟨right.1.trans left.1,rightReady,?_,?_,?_⟩
  · intro q hq
    exact (right.2.1 q (fun hy => hq (List.mem_append_right _ hy))).trans
      (left.2.1 q (fun hb => hq (List.mem_append_left _ hb)))
  · rw [regValue_congr b _ u.basis (fun q hq => right.2.1 q
      (fun hy => List.disjoint_left.mp apart (List.mem_append_right _ hq) (List.mem_append_right _ hy)))]
    exact left.2.2
  · rw [right.2.2,oldX,oldY,left.2.1 control controlApart,left.2.1 cin cinApart]

end ECDSAAdd.Arithmetic.Paper935
