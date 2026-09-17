import ECDSAAdd.Arithmetic.ValueLoopState

namespace ECDSAAdd.Arithmetic

private theorem partition_nodup (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) : (r.wires++L.swapCounter.tapeWires rs).Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  have h := List.nodup_iff_count.mp hnd w
  have hp := L.shared_swap_perm.count_eq w
  simp only [KaliskiRoundLayout.tapeWires,List.flatMap_cons,List.count_append] at h ⊢
  omega

private theorem record_rest_disjoint (L : KaliskiRoundLayout) (r : RoundRecord) (rs : List RoundRecord)
    (hnd : (L.tapeWires (r::rs)).Nodup) :
    (rs.flatMap RoundRecord.wires).Disjoint (L.withRecord r).wires := by
  apply (List.nodup_append'.mp ?_).2.2
  apply List.nodup_iff_count.mpr
  intro w
  have h := List.nodup_iff_count.mp hnd w
  have hp := (L.withRecord_perm r).count_eq w
  simp only [KaliskiRoundLayout.tapeWires,List.flatMap_cons,List.count_append] at h hp ⊢
  omega

private theorem step_uv (z : KState) : (valueKStep z).u≤z.u ∧ (valueKStep z).v≤z.v := by
  unfold valueKStep valueStep KState.value
  split_ifs <;> (try dsimp) <;> omega

private theorem value_count_step (i : Nat) (z : KState) (h : KRoundCount i z) :
    KRoundCount (i+1) (valueKStep z) := by
  have he := valueStep_projection z
  have hv := congrArg ValueState.v he
  have hk := congrArg ValueState.k he
  change (kaliskiStep z).v=(valueKStep z).v at hv
  change (kaliskiStep z).k=(valueKStep z).k at hk
  simpa only [KRoundCount,hv,hk] using kaliski_round_count_step i z h

/-- 固定长度正逆循环：每轮独占记录对，递归部分保留先前记录，逆向则全部清零。 -/
theorem valueLoop_correct (L : KaliskiRoundLayout) (rs : List RoundRecord) (i : Nat) (z : KState)
    (hnd : (L.tapeWires rs).Nodup) (hw : L.counter.width=10) (hd : 2≤L.data.width)
    (hlen : i+rs.length≤512) (hk : KRoundCount i z)
    (hu : z.u<2^L.data.width) (hv : z.v<2^L.data.width) :
    Triple (fun st => LoopState L z st ∧ TapeValues rs (List.replicate rs.length (false,false)) st)
      (valueLoop L i rs)
      (fun st => LoopState (loopEndLayout L rs.length) ((valueKStep^[rs.length]) z) st ∧ TapeValues rs (valueCodes rs.length z) st) ∧
    Triple (fun st => LoopState (loopEndLayout L rs.length) ((valueKStep^[rs.length]) z) st ∧ TapeValues rs (valueCodes rs.length z) st)
      (valueUnloop L i rs)
      (fun st => LoopState L z st ∧ TapeValues rs (List.replicate rs.length (false,false)) st) := by
  induction rs generalizing L i z with
  | nil => constructor <;> intro s m h <;> exact ⟨rfl,h⟩
  | cons r rs ih =>
    have hi : i<512 := by simp only [List.length_cons] at hlen; omega
    have hnw : L.swapCounter.counter.width=10 := by rw [L.swapCounter_counter,L.counter.swapCounter_fields.2.2.2.2.2,hw]
    have ht := ih L.swapCounter (i+1) (valueKStep z) (L.tail_nodup r rs hnd) hnw hd
      (by simp only [List.length_cons] at hlen; omega) (value_count_step i z hk)
      ((step_uv z).1.trans_lt hu) ((step_uv z).2.trans_lt hv)
    have hround := valueRound_tape L r rs hnd hw i z hi hk hu hv
    have hunround := valueUnround_tape L r rs hnd hw i z hi hk hu hv
    have hrw := valueRound_wires (L.withRecord r) hw hd i
    have htw := valueLoop_wires L.swapCounter rs (i+1) hnw hd
    have hdis := record_rest_disjoint L r rs hnd
    have hhead := (List.nodup_append'.mp (partition_nodup L r rs hnd)).2.2
    have restFrame (circ : Program) (hcirc : wires circ=(L.withRecord r).valueUsedWires.toFinset)
        (cs : List (Bool×Bool)) (s t : BasisState) (he : ∀ w, w∉wires circ → s w=t w)
        (h : TapeValues rs cs s) : TapeValues rs cs t := by
      apply TapeValues.congr rs cs s t h
      intro w hw
      exact (he w (by rw [hcirc]; exact fun hm => List.disjoint_left.mp hdis hw ((L.withRecord r).valueUsedWires_sublist.subset (List.mem_toFinset.mp hm)))).symm
    have headFrame (circ : Program) (hcirc : wires circ=(if rs.isEmpty then ∅ else (L.swapCounter.valueTapeWires rs).toFinset))
        (S T : Bool) (s t : BasisState) (he : ∀ w, w∉wires circ → s w=t w)
        (h : s r.swap=S ∧ s r.subtract=T) : t r.swap=S ∧ t r.subtract=T := by
      have hh (w : Wire) (hm : w∈r.wires) : t w=s w := by
        apply (he w ?_).symm
        rw [hcirc]
        split_ifs
        · simp
        · exact fun hc => List.disjoint_left.mp hhead hm ((L.swapCounter.valueTapeWires_sublist rs).subset (List.mem_toFinset.mp hc))
      exact ⟨(hh _ (by simp [RoundRecord.wires])).trans h.1,(hh _ (by simp [RoundRecord.wires])).trans h.2⟩
    have hf1 := hround.frame (restFrame _ hrw.1 (List.replicate rs.length (false,false)))
    have hf2 := ht.1.frame (headFrame _ htw.1 (kaliskiCode z).1 (kaliskiCode z).2)
    have hb1 := ht.2.frame (headFrame _ htw.2 (kaliskiCode z).1 (kaliskiCode z).2)
    have hb2 := hunround.frame (restFrame _ hrw.2 (List.replicate rs.length (false,false)))
    let P0 := fun st => LoopState L z st ∧ TapeValues (r::rs) ((false,false)::List.replicate rs.length (false,false)) st
    let PM := fun st => (LoopState L.swapCounter (valueKStep z) st ∧ TapeValues rs (List.replicate rs.length (false,false)) st) ∧
      st r.swap=(kaliskiCode z).1 ∧ st r.subtract=(kaliskiCode z).2
    let PF := fun st => LoopState (loopEndLayout L.swapCounter rs.length) ((valueKStep^[rs.length]) (valueKStep z)) st ∧
      TapeValues (r::rs) (kaliskiCode z::valueCodes rs.length (valueKStep z)) st
    let PB := fun st => (LoopState L.swapCounter (valueKStep z) st ∧ st r.swap=(kaliskiCode z).1 ∧
      st r.subtract=(kaliskiCode z).2) ∧ TapeValues rs (List.replicate rs.length (false,false)) st
    constructor
    · have h1 : Triple P0 (valueRound (L.withRecord r) i) PM := hf1.conseq
        (fun st h => ⟨⟨h.1,h.2.1,h.2.2.1⟩,h.2.2.2⟩)
        (fun st h => ⟨⟨h.1.1,h.2⟩,h.1.2⟩)
      have h2 : Triple PM (valueLoop L.swapCounter (i+1) rs) PF := hf2.conseq (fun _ h => h)
        (fun st h => ⟨h.1.1,h.2.1,h.2.2,h.1.2⟩)
      have h := h1.seq h2
      simpa only [P0,PF,valueLoop,List.length_cons,List.replicate_succ,valueCodes,TapeValues,
        loopEndLayout,Function.iterate_succ_apply] using h
    · have h1 : Triple PF (valueUnloop L.swapCounter (i+1) rs) PB := hb1.conseq
        (fun st h => ⟨⟨h.1,h.2.2.2⟩,h.2.1,h.2.2.1⟩)
        (fun st h => ⟨⟨h.1.1,h.2⟩,h.1.2⟩)
      have h2 : Triple PB (valueUnround (L.withRecord r) i) P0 := hb2.conseq (fun _ h => h)
        (fun st h => ⟨h.1.1,h.1.2.1,h.1.2.2,h.2⟩)
      have h := h1.seq h2
      simpa only [P0,PF,valueUnloop,List.length_cons,List.replicate_succ,valueCodes,TapeValues,
        loopEndLayout,Function.iterate_succ_apply] using h

end ECDSAAdd.Arithmetic
