import ECDSAAdd.Arithmetic.Paper935.HmrSigmaWitness
import ECDSAAdd.Arithmetic.Paper935.FreezeLatch

namespace ECDSAAdd.Arithmetic.Paper935

/-- Derive the F15 sigma witness after the actual F7 latch, rather than
assuming that the new frozen flag still equals its old value. -/
theorem hmrSigma_afterLatch (r : WindowRow) (nonempty : r.payload≠[])
    (p : Int) (old : PinState) (inv : ECDSAAdd.Divsteps.Inv p old.rows) (odd : p%2=1)
    (s : State) (m : List Bool) (zf frozen fire sigma : Wire) (record : List Wire) (k : Nat)
    (hn : record.Nodup) (hzf : zf≠frozen) (hfr : fire≠frozen)
    (hf : fire∉record) (hz : frozen∉record) (hk : k<2^record.length)
    (clean : s.basis fire=false) (frozenValue : s.basis frozen=old.frozen)
    (sigmaValue : s.basis sigma=decide (0≤old.rows.z ∧ old.rows.g%2=1))
    (rowValue : r.value s.basis=(if old.frozen then old.rows else ECDSAAdd.Divsteps.zStep old.rows).fv)
    (frozenZero : old.frozen=true → old.rows.g=0)
    (sigmaAway : sigma≠fire ∧ sigma≠frozen ∧ sigma∉record)
    (rowAway : ∀q∈r.wires,q≠fire ∧ q≠frozen ∧ q∉record) :
    let t := run (freezeLatch zf frozen fire record k) m s
    t.basis sigma=(t.basis r.second && !(t.basis frozen && !t.basis fire)) := by
  let t := run (freezeLatch zf frozen fire record k) m s
  have spec := freezeLatch_run zf frozen fire record k hn hzf hfr hf hz hk s m clean
  have sigmaKeep := spec.2.2.2.2 sigma sigmaAway.1 sigmaAway.2.1 sigmaAway.2.2
  have rowKeep : r.value t.basis=r.value s.basis := by
    unfold WindowRow.value signedRegValue
    congr 1
    apply regValue_congr
    intro q hq
    obtain ⟨a,b,c⟩ := rowAway q hq
    exact spec.2.2.2.2 q a b c
  exact hmrSigma_witness r nonempty p old inv odd t.basis sigma frozen fire (s.basis zf)
    (sigmaKeep.trans sigmaValue) (rowKeep.trans rowValue) frozenZero
    (by simpa [frozenValue] using spec.2.2.1) (by simpa [frozenValue] using spec.2.1)

end ECDSAAdd.Arithmetic.Paper935
