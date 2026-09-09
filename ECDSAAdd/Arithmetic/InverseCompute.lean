import ECDSAAdd.Arithmetic.InverseMiddle

namespace ECDSAAdd.Arithmetic

def inverseCompute (L : InverseLoopLayout) (q : Nat) : Program :=
  kaliskiLoop L.first 0 L.records ++ negativeInit L.arithmetic q L.middle.r L.temp L.a ++
    halvingLoop L.phase q 0 512

def inverseUncompute (L : InverseLoopLayout) (q : Nat) : Program :=
  halvingUnloop L.phase q 0 512 ++ negativeInit L.arithmetic q L.middle.r L.temp L.a ++
    kaliskiUnloop L.first 0 L.records

def inverseLoop (L : InverseLoopLayout) (q : Nat) : Program :=
  inverseCompute L q ++ copyRegister none L.a L.out ++ inverseUncompute L q

def InverseInitial (L : InverseLoopLayout) (q a : Nat) (s : BasisState) : Prop :=
  (LoopState L.first (kaliskiInit q a) s ∧ TapeValues L.records (List.replicate L.records.length (false,false)) s) ∧
    InverseExtra L 0 0 s

theorem InverseExtra.congr (L : InverseLoopLayout) (A B : Nat) (s t : BasisState)
    (h : InverseExtra L A B s) (he : ∀ w∈L.extra,t w=s w) : InverseExtra L A B t := by
  have keep (r : List Wire) (hr : r ⊆ L.extra) : regValue r t=regValue r s :=
    regValue_congr _ _ _ (fun w hw => he w (hr hw))
  exact ⟨(keep L.a (by intro w hw; simp [InverseLoopLayout.extra,hw])).trans h.1,
    (keep L.b (by intro w hw; simp [InverseLoopLayout.extra,hw])).trans h.2.1,
    (keep L.temp (by intro w hw; simp [InverseLoopLayout.extra,hw])).trans h.2.2.1,
    (keep L.arithmetic.wires (by intro w hw; simp [InverseLoopLayout.extra,hw])).trans h.2.2.2⟩

theorem inverseFirst_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (q a : Nat) (hq0 : 0<q) (hq : q<2^L.first.low.length) (ha : a<q) (hcop : q.Coprime a) :
    Triple (InverseInitial L q a) (kaliskiLoop L.first 0 L.records)
      (InverseMiddle L (kaliskiStep^[512] (kaliskiInit q a)) (kaliskiCodes 512 (kaliskiInit q a)) 0 0) ∧
    Triple (InverseMiddle L (kaliskiStep^[512] (kaliskiInit q a)) (kaliskiCodes 512 (kaliskiInit q a)) 0 0)
      (kaliskiUnloop L.first 0 L.records) (InverseInitial L q a) := by
  have hd : 2≤L.first.data.width := by
    have hpos : 0<L.first.low.length := by
      by_contra hh
      have hz : L.first.low.length=0 := by omega
      simp [hz] at hq
      omega
    simp only [KaliskiRoundLayout.data,RoundDataLayout.width,List.length_append,List.length_cons,List.length_nil]
    omega
  have hh := kaliskiLoop_correct L.first L.records 0 q a (kaliskiInit q a) (L.first_nodup hnd) hw hd
    (by omega) (kaliski_round_count_init q a) (kaliski_init_invariant q a hq0 hcop) hq hq (lt_trans ha hq)
  have hwire := kaliskiLoop_wires L.first L.records 0 hw hd
  have hne : L.records.isEmpty=false := by
    cases he : L.records with
    | nil => rw [he] at hn; simp at hn
    | cons r rs => rfl
  simp only [hne] at hwire
  have hdis := (List.nodup_append'.mp (List.nodup_append'.mp hnd).1).2.2
  have frame (circ : Program) (hc : wires circ=(L.first.tapeWires L.records).toFinset)
      (s t : BasisState) (he : ∀ w,w∉wires circ → s w=t w) (h : InverseExtra L 0 0 s) :
      InverseExtra L 0 0 t := by
    apply InverseExtra.congr L 0 0 s t h
    intro w hw
    apply (he w ?_).symm
    rw [hc]
    exact fun hh => List.disjoint_left.mp hdis (List.mem_toFinset.mp hh) hw
  have hf := hh.1.frame (frame _ hwire.1)
  have hb := hh.2.frame (frame _ hwire.2)
  have hm : loopEndLayout L.first 512=L.middle := by rw [InverseLoopLayout.middle,hn]
  rw [hn,hm] at hf hb
  refine ⟨Triple.conseq (fun _ h => by simpa only [InverseInitial,hn] using h) hf ?_,
    Triple.conseq ?_ hb (fun _ h => by simpa only [InverseInitial,hn] using h)⟩
  · intro s h; exact (InverseMiddle.iff L _ _ 0 0 s).mpr ⟨h.1.1,h.1.2,h.2⟩
  · intro s h; have hh := (InverseMiddle.iff L _ _ 0 0 s).mp h; exact ⟨⟨hh.1,hh.2.1⟩,hh.2.2⟩

theorem inverseCompute_values (L : InverseLoopLayout) (hnd : L.wires.Nodup)
    (hn : L.records.length=512) (hw : L.first.counter.width=10)
    (hwidth : L.first.data.width=L.arithmetic.width+1)
    (ha : L.a.length=L.arithmetic.width+1) (hb : L.b.length=L.arithmetic.width+1)
    (ht : L.temp.length=L.arithmetic.width+1)
    (q a : Nat) (hq0 : 0<q) (hq : q<2^L.first.low.length)
    (hqa : q<2^L.arithmetic.width) (ho : q%2=1) (hx : a<q) (hcop : q.Coprime a) :
    let z := kaliskiStep^[512] (kaliskiInit q a)
    let cs := kaliskiCodes 512 (kaliskiInit q a)
    let R := halveFixed q z.k 512 (-(z.r : ZMod q)).val
    Triple (InverseInitial L q a) (inverseCompute L q) (InverseMiddle L z cs R 0) ∧
    Triple (InverseMiddle L z cs R 0) (inverseUncompute L q) (InverseInitial L q a) := by
  dsimp only
  let z := kaliskiStep^[512] (kaliskiInit q a)
  let cs := kaliskiCodes 512 (kaliskiInit q a)
  let N := (-(z.r : ZMod q)).val
  have hbnd := kaliski_register_bounds q a 512 hq0 hcop
  have hr : z.r<2*q := hbnd.2.2.1
  have hk : z.k≤512 := hbnd.2.2.2.2
  have hN : N<q := by
    letI : NeZero q := ⟨by omega⟩
    exact ZMod.val_lt _
  have hfirst := inverseFirst_values L hnd hn hw q a hq0 hq hx hcop
  have hneg : Triple (InverseMiddle L z cs 0 0) (negativeInit L.arithmetic q L.middle.r L.temp L.a)
      (InverseMiddle L z cs N 0) := by
    simpa only [Nat.zero_xor] using inverseNegative_values L hnd hwidth ha ht q z cs 0 0 hq0 hqa hr
  have hnegback : Triple (InverseMiddle L z cs N 0) (negativeInit L.arithmetic q L.middle.r L.temp L.a)
      (InverseMiddle L z cs 0 0) := by
    simpa only [N,Nat.xor_self] using inverseNegative_values L hnd hwidth ha ht q z cs N 0 hq0 hqa hr
  have hhalf := inverseHalving_values L hnd ha hb ht hw q N z cs hqa ho hN hk
  exact ⟨(hfirst.1.seq hneg).seq hhalf.1,(hhalf.2.seq hnegback).seq hfirst.2⟩

end ECDSAAdd.Arithmetic
