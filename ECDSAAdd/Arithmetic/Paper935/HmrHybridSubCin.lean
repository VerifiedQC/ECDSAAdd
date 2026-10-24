import ECDSAAdd.Arithmetic.Paper935.HmrHybridSub
import ECDSAAdd.Arithmetic.Paper935.BranchRow

namespace ECDSAAdd.Arithmetic.Paper935

/-- The author's carry-in wrapper for the shared-carry path. -/
def hmrHybridSubCin (c cin k : Wire) (a b work : List Wire) : Program :=
  [.CX cin k] ++ hmrHybridSub c a b k work ++ [.CX cin k]

theorem hmrHybridSubCin_run (c cin k : Wire) (a b work : List Wire)
    (hn : (c::k::(a++b++work)).Nodup) (hl : a.length=b.length)
    (room : work.length < b.length)
    (hik : cin≠k) (hic : c≠k) (hi : cin∉b) (hk : k∉a)
    (s : State) (m : List Bool) (clean : ∀q∈work,s.basis q=false) (hzero : s.basis k=false) :
    let t := run (hmrHybridSubCin c cin k a b work) m s
    t.phase=s.phase ∧ (∀ q,q∉b → t.basis q=s.basis q) ∧
      (if s.basis c then
        (regValue a s.basis+regValue b t.basis+(s.basis cin).toNat)%2^b.length
        else regValue b t.basis)=regValue b s.basis := by
  let u : State := ⟨s.phase,writeBit s.basis k (s.basis cin)⟩
  have hu (n : List Bool) : run [.CX cin k] n s=u := by simp [run,u,writeBit,hzero]
  have hkb : k∉b := (List.nodup_cons.mp (List.nodup_cons.mp hn).2).1 ∘ (fun h => List.mem_append_left _ (List.mem_append_right _ h))
  have ha : regValue a u.basis=regValue a s.basis := by
    apply regValue_congr; intro q hq
    simp [u,writeBit,show q≠k from fun h => hk (h ▸ hq)]
  have hb : regValue b u.basis=regValue b s.basis := by
    apply regValue_congr; intro q hq
    simp [u,writeBit,show q≠k from fun h => hkb (h ▸ hq)]
  let v := run (hmrHybridSub c a b k work) m u
  have cleanU : ∀q∈work,u.basis q=false := by
    intro q hq
    have ne : q≠k := fun eq => (List.nodup_cons.mp (List.nodup_cons.mp hn).2).1 (List.mem_append_right _ (eq ▸ hq))
    simpa [u,writeBit,ne] using clean q hq
  have hv := hmrHybridSub_run c k a b work hn hl room u m cleanU
  have hvk : v.basis k=s.basis cin := by rw [hv.2.1 k hkb]; simp [u,writeBit]
  have hvi : v.basis cin=s.basis cin := by rw [hv.2.1 cin hi]; simp [u,writeBit,hik]
  have hc : u.basis c=s.basis c := by simp [u,writeBit,hic]
  have he : run (hmrHybridSubCin c cin k a b work) m s=run [.CX cin k] (m.drop (measurementCount (hmrHybridSub c a b k work))) v := by
    rw [hmrHybridSubCin,run_append,run_take,run_append,run_take]
    simp only [measurementCount_append,measurementCount,Nat.zero_add,List.drop_zero]
    rw [hu m]
  rw [he]
  refine ⟨hv.1,?_,?_⟩
  · intro q hq
    by_cases hqk : q=k
    · subst q; simp [run,writeBit,hvk,hvi,hzero]
    · change writeBit v.basis k (v.basis k ^^ v.basis cin) q=s.basis q
      simp only [writeBit,Function.update_of_ne hqk]
      rw [hv.2.1 q hq]
      simp [u,writeBit,hqk]
  · have hout : regValue b (run [.CX cin k] (m.drop (measurementCount (hmrHybridSub c a b k work))) v).basis=regValue b v.basis := by
      apply regValue_congr; intro q hq
      simp [run,writeBit,show q≠k from fun h => hkb (h ▸ hq)]
    rw [hout]
    have inverse := hv.2.2
    rw [hc,ha,hb] at inverse
    simpa only [u,writeBit,Function.update_self] using inverse

end ECDSAAdd.Arithmetic.Paper935
