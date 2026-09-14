import ECDSAAdd.Arithmetic.KaliskiLoopState
import ECDSAAdd.Arithmetic.OneBitRoundResources

namespace ECDSAAdd.Arithmetic

namespace KaliskiRoundLayout

/-- 共享交换临时位与逐轮减法位；不修改旧两位记录的分配。 -/
def oneBitTapeWires (L : KaliskiRoundLayout) (sw : Wire) (ts : List Wire) : List Wire :=
  sw :: (ts ++ L.sharedWires)

theorem oneBit_round_nodup (L : KaliskiRoundLayout) (sw t : Wire) (ts : List Wire)
    (hnd : (L.oneBitTapeWires sw (t::ts)).Nodup) :
    (L.withRecord ⟨sw,t⟩).wires.Nodup := by
  apply (L.withRecord_perm ⟨sw,t⟩).nodup_iff.mpr
  apply List.nodup_iff_count.mpr
  intro w
  have h := List.nodup_iff_count.mp hnd w
  simp [oneBitTapeWires,RoundRecord.wires,List.count_cons] at h ⊢
  omega

theorem oneBit_tail_nodup (L : KaliskiRoundLayout) (sw t : Wire) (ts : List Wire)
    (hnd : (L.oneBitTapeWires sw (t::ts)).Nodup) :
    (L.swapCounter.oneBitTapeWires sw ts).Nodup := by
  apply List.nodup_iff_count.mpr
  intro w
  have h := List.nodup_iff_count.mp hnd w
  have hp := L.shared_swap_perm.count_eq w
  simp [oneBitTapeWires,List.count_cons] at h ⊢
  omega

end KaliskiRoundLayout

/-- sw 在每轮边界归零；递归始终传同一根线路。 -/
def oneBitLoop (L : KaliskiRoundLayout) (sw : Wire) (i : Nat) : List Wire → Program
  | [] => []
  | t::ts => oneBitRound (L.withRecord ⟨sw,t⟩) i ++ oneBitLoop L.swapCounter sw (i+1) ts

def oneBitUnloop (L : KaliskiRoundLayout) (sw : Wire) (i : Nat) : List Wire → Program
  | [] => []
  | t::ts => oneBitUnloop L.swapCounter sw (i+1) ts ++ oneBitUnround (L.withRecord ⟨sw,t⟩) i

/-- 只记录 subtract；共享 swap 的零值由循环边界单独断言。 -/
def OneBitTapeValues : List Wire → List (Bool×Bool) → BasisState → Prop
  | [],[],_ => True
  | t::ts,c::cs,st => st t=c.2 ∧ OneBitTapeValues ts cs st
  | _,_,_ => False

theorem OneBitTapeValues.congr (ts : List Wire) (cs : List (Bool×Bool)) (s u : BasisState)
    (h : OneBitTapeValues ts cs s) (he : ∀ w, w∈ts → u w=s w) : OneBitTapeValues ts cs u := by
  induction ts generalizing cs with
  | nil => cases cs <;> exact h
  | cons t ts ih =>
    cases cs with
    | nil => exact h
    | cons c cs =>
      exact ⟨(he t (by simp)).trans h.1,ih cs h.2 (fun w hw => he w (by simp [hw]))⟩

/-- 一轮在共享状态与当前记录对上的接口；便于固定长度归纳。 -/
theorem oneBitRound_tape (L : KaliskiRoundLayout) (sw t : Wire) (ts : List Wire)
    (hnd : (L.oneBitTapeWires sw (t::ts)).Nodup) (hw : L.counter.width=10)
    (i p a : Nat) (z : KState) (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z) (hodd : p%2=1)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length) :
    Triple (fun st => LoopState L z st ∧ st sw=false ∧ st t=false)
      (oneBitRound (L.withRecord ⟨sw,t⟩) i)
      (fun st => LoopState L.swapCounter (kaliskiStep z) st ∧
        st sw=false ∧ st t=(kaliskiCode z).2) := by
  intro s m h
  have hs := h.1.round_before L ⟨sw,t⟩ z false false s.basis h.2.1 h.2.2
  have hp' := (roundState_iff (L.withRecord ⟨sw,t⟩) z z.k 0 _ _ _ s.basis).mp hs
  obtain ⟨hphase,hout⟩ := oneBitRound_spec (L.withRecord ⟨sw,t⟩) (L.oneBit_round_nodup sw t ts hnd) hw i p a z
    hi hk hinv hodd hp hu hv s m hp'
  have he := (roundState_iff (L.withRecord ⟨sw,t⟩) (kaliskiStep z) 0 (kaliskiStep z).k _ _ _ _).mpr hout
  exact ⟨hphase,LoopState.of_round_after L ⟨sw,t⟩ _ _ _ _ he,he.2.swap,he.2.subtract⟩

theorem oneBitUnround_tape (L : KaliskiRoundLayout) (sw t : Wire) (ts : List Wire)
    (hnd : (L.oneBitTapeWires sw (t::ts)).Nodup) (hw : L.counter.width=10)
    (i p a : Nat) (z : KState) (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z) (hodd : p%2=1)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length) :
    Triple (fun st => LoopState L.swapCounter (kaliskiStep z) st ∧
        st sw=false ∧ st t=(kaliskiCode z).2)
      (oneBitUnround (L.withRecord ⟨sw,t⟩) i)
      (fun st => LoopState L z st ∧ st sw=false ∧ st t=false) := by
  intro s m h
  have hs := h.1.round_after L ⟨sw,t⟩ (kaliskiStep z) _ _ s.basis h.2.1 h.2.2
  have hp' := (roundState_iff (L.withRecord ⟨sw,t⟩) (kaliskiStep z) 0 (kaliskiStep z).k _ _ _ s.basis).mp hs
  obtain ⟨hphase,hout⟩ := oneBitUnround_spec (L.withRecord ⟨sw,t⟩) (L.oneBit_round_nodup sw t ts hnd) hw i p a z
    hi hk hinv hodd hp hu hv s m hp'
  have he := (roundState_iff (L.withRecord ⟨sw,t⟩) z z.k 0 _ _ _ _).mpr hout
  exact ⟨hphase,LoopState.of_round_before L ⟨sw,t⟩ _ _ _ _ he,he.2.swap,he.2.subtract⟩

end ECDSAAdd.Arithmetic
