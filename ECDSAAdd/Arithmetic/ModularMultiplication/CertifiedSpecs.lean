import ECDSAAdd.Arithmetic.ModularMultiplication.MontLookup
import ECDSAAdd.Arithmetic.ModularMultiplication.MontConstant

namespace ECDSAAdd.Arithmetic.CertifiedSpecs

/- 仅把逐状态 correct 定理整理为 Hoare 形式；原逐线 frame 结论完整保留。 -/

theorem montLookupAdd (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hnd : (L.cin::(addr++L.table++L.acc++L.carry++L.scratch)).Nodup)
    (ha : addr.length=4) (hs : L.scratch.length=3)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : ∀ d<16, d*K<2^L.table.length)
    (initial : BasisState) (hz : regValue L.table initial=0)
    (hsc : regValue L.scratch initial=0)
    (hca : regValue L.carry initial=0) (hci : initial L.cin=false) :
    Triple (fun s => s=initial) (montLookupAdd L addr K)
      (fun t => (∀ w, w∉L.acc → t w=initial w) ∧
        regValue L.acc t=(regValue L.acc initial + regValue addr initial*K)%2^L.acc.length) := by
  intro s m h
  subst initial
  exact montLookupAdd_correct L addr K hnd ha hs ht hc hK s m hz hsc hca hci

theorem montLookupSub (L : MontStageLayout) (addr : List Wire) (K : Nat)
    (hnd : (L.cin::(addr++L.table++L.acc++L.carry++L.scratch)).Nodup)
    (ha : addr.length=4) (hs : L.scratch.length=3)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : ∀ d<16, d*K<2^L.table.length)
    (initial : BasisState) (hz : regValue L.table initial=0)
    (hsc : regValue L.scratch initial=0)
    (hca : regValue L.carry initial=0) (hci : initial L.cin=false) :
    Triple (fun s => s=initial) (montLookupSub L addr K)
      (fun t => (∀ w, w∉L.acc → t w=initial w) ∧
        regValue L.acc t=(regValue L.acc initial + 2^L.acc.length -
          (regValue addr initial*K)%2^L.acc.length)%2^L.acc.length) := by
  intro s m h
  subst initial
  have haddr : regValue addr s.basis < 16 := by simpa [ha] using regValue_lt addr s.basis
  have hbound : regValue addr s.basis*K < 2^L.acc.length := by simpa [ht] using hK _ haddr
  simpa only [Nat.mod_eq_of_lt hbound] using
    montLookupSub_correct L addr K hnd ha hs ht hc hK s m hz hsc hca hci

theorem montConstantAdd (L : MontStageLayout) (K : Nat)
    (hnd : (L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : K<2^L.table.length)
    (initial : BasisState) (hz : regValue L.table initial=0)
    (hca : regValue L.carry initial=0) (hci : initial L.cin=false) :
    Triple (fun s => s=initial) (montConstantAdd L K)
      (fun t => (∀ w, w∉L.acc → t w=initial w) ∧
        regValue L.acc t=(regValue L.acc initial + K)%2^L.acc.length) := by
  intro s m h
  subst initial
  exact montConstantAdd_correct L K hnd ht hc hK s m hz hca hci

theorem montConstantSub (L : MontStageLayout) (K : Nat)
    (hnd : (L.cin::(L.table++L.acc++L.carry)).Nodup)
    (ht : L.table.length=L.acc.length) (hc : L.carry.length+1=L.acc.length)
    (hK : K<2^L.table.length)
    (initial : BasisState) (hz : regValue L.table initial=0)
    (hca : regValue L.carry initial=0) (hci : initial L.cin=false) :
    Triple (fun s => s=initial) (montConstantSub L K)
      (fun t => (∀ w, w∉L.acc → t w=initial w) ∧
        regValue L.acc t=(regValue L.acc initial + 2^L.acc.length - K)%2^L.acc.length) := by
  intro s m h
  subst initial
  exact montConstantSub_correct L K hnd ht hc hK s m hz hca hci

end ECDSAAdd.Arithmetic.CertifiedSpecs
