import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceLayoutProof
import ECDSAAdd.Arithmetic.PointAddition.PointInPlaceProgram

namespace ECDSAAdd.Arithmetic
open ControlledPointLayout

private abbrev squareAdapter (L : ControlledPointLayout) : MontLayout := L.inPlaceSquare

private theorem squareAdapter_widths (L : ControlledPointLayout) (hw : L.Widths) :
    (squareAdapter L).Widths := L.inPlaceSquare_widths hw

private theorem squareAdapter_nodup (L : ControlledPointLayout) (hw : L.Widths) (hn : L.wires.Nodup) :
    (squareAdapter L).wires.Nodup := L.inPlaceSquare_nodup hw hn

private theorem square_copy (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A T X : Nat) (hA : A<p) :
    {{ (squareAdapter L).x=A,(squareAdapter L).y=T,(squareAdapter L).out=X,(squareAdapter L).work=0 }}
      copyRegister none L.inPlaceSlope L.inPlaceSquare.y
    {{ (squareAdapter L).x=A,(squareAdapter L).y=(T ^^^ A),(squareAdapter L).out=X,(squareAdapter L).work=0 }} := by
  let F := squareAdapter L
  have hn := squareAdapter_nodup L hw hnd
  have he : F.x=L.inPlaceSlope++[L.inPlaceBit 256] := rfl
  have hy : F.y=L.inPlaceSquare.y := rfl
  have hncopy : (L.inPlaceSlope++L.inPlaceSquare.y).Nodup := by
    apply List.nodup_iff_count.mpr; intro q
    have hh := List.nodup_iff_count.mp hn q
    change (F.x++F.y++F.out++F.work).count q≤1 at hh
    rw [he] at hh
    simp only [List.count_append,List.count_cons,List.count_nil,hy] at hh ⊢
    omega
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hlow := (regValue_low_iff L.inPlaceSlope [L.inPlaceBit 256] s.basis A
    (by rw [L.inPlaceSlope_length hw]; exact hA.trans (by norm_num [p]))).mp (he ▸ h.1.1.1)
  obtain ⟨hp,hframe,hv⟩ := copyRegister_correct none L.inPlaceSlope L.inPlaceSquare.y
    ((L.inPlaceSlope_length hw).trans (L.inPlaceSquare_widths hw).y.symm) hncopy (by simp) s m
  have away (q : Wire) (hq : q∈F.x++F.out++F.work) : q∉L.inPlaceSquare.y := by
    intro hh
    have h1 := List.nodup_iff_count.mp hn q
    have h2 := List.count_pos_iff.mpr hq
    have h3 := List.count_pos_iff.mpr hh
    change (F.x++F.y++F.out++F.work).count q≤1 at h1
    simp only [List.count_append,hy] at h1 h2
    omega
  refine ⟨hp,⟨⟨?_,?_⟩,?_⟩,?_⟩
  · exact (regValue_congr _ _ _ (fun q hq => hframe q (away q (by simp [F,hq])))).trans h.1.1.1
  · simpa only [copyValue,hlow.1,show regValue L.inPlaceSquare.y s.basis=T from h.1.1.2] using hv
  · exact (regValue_congr _ _ _ (fun q hq => hframe q (away q (by simp [F,hq])))).trans h.1.2
  · exact (regValue_congr _ _ _ (fun q hq => hframe q (away q (by simp [F,hq])))).trans h.2

/-- 证明中使用的平方累减子电路：从 point.x 减去斜率平方，随后清理乘数副本。

参数：

- `L`：平方累减的点加布局；inPlaceSlope 是输入，inPlaceSquare.y 暂存副本，point.x 是减去斜率平方的目标，模乘工作区借自布局。
-/
private def squareProgram (L : ControlledPointLayout) : Program :=
  copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++ montMulSub (squareAdapter L) p ++
  copyRegister none L.inPlaceSlope L.inPlaceSquare.y

private theorem square_program_spec (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A X : Nat) (hA : A<p) (hX : X<p) :
    {{ (squareAdapter L).x=A,(squareAdapter L).y=0,(squareAdapter L).out=X,(squareAdapter L).work=0 }}
      squareProgram L
    {{ (squareAdapter L).x=A,(squareAdapter L).y=0,
      (squareAdapter L).out=(X+p-(A*A)%p)%p,(squareAdapter L).work=0 }} := by
  have hc := square_copy L hw hnd A 0 X hA
  simp only [Nat.zero_xor] at hc
  letI : Fact p.Prime := ⟨Secp256k1.p_prime⟩
  have hp : p<2^256 := by norm_num [p]
  have hm := montMulSub_spec (squareAdapter L) p A A X (squareAdapter_widths L hw) (squareAdapter_nodup L hw hnd)
    hp secp256k1_mod_sixteen hA (hA.trans hp) hX
  have he := square_copy L hw hnd A A ((X+p-(A*A)%p)%p) hA
  simp only [Nat.xor_self] at he
  exact (hc.seq hm).seq he

private theorem square_program_frame (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A X : Nat) (hA : A<p) (hX : X<p) (s : State) (m : List Bool)
    (ha : regValue (squareAdapter L).x s.basis=A) (hy : regValue (squareAdapter L).y s.basis=0)
    (hx : regValue (squareAdapter L).out s.basis=X) (hc : regValue (squareAdapter L).work s.basis=0)
    (q : Wire) (hq : q∉(squareAdapter L).out) :
    (run (squareProgram L) m s).basis q=s.basis q := by
  obtain ⟨_,hv⟩ := square_program_spec L hw hnd A X hA hX s m ⟨⟨⟨ha,hy⟩,hx⟩,hc⟩
  by_cases hqa : q∈(squareAdapter L).x
  · exact (regValue_eq_iff _ _ _).mp (hv.1.1.1.trans ha.symm) q hqa
  by_cases hqy : q∈(squareAdapter L).y
  · exact (regValue_eq_iff _ _ _).mp (hv.1.1.2.trans hy.symm) q hqy
  by_cases hqw : q∈(squareAdapter L).work
  · exact (regValue_eq_iff _ _ _).mp (hv.2.trans hc.symm) q hqw
  have hcopy : q∉wires (copyRegister none L.inPlaceSlope L.inPlaceSquare.y) := by
    intro hh
    rw [copyRegister_wires none L.inPlaceSlope L.inPlaceSquare.y
      ((L.inPlaceSlope_length hw).trans (L.inPlaceSquare_widths hw).y.symm)] at hh
    have hmem := hh
    have hqs : q∉L.inPlaceSlope := by
      intro h; exact hqa (by change q∈L.inPlaceSlope++[L.inPlaceBit 256]; simp [h])
    simp only [squareAdapter] at hqy
    split at hmem
    · simp at hmem
    · simp [hqs,hqy] at hmem
  have hmul : q∉wires (montMulSub (squareAdapter L) p) := by
    rw [(montAdapter_wires (squareAdapter L) p (squareAdapter_widths L hw)).2.2]
    have ht : q∉(squareAdapter L).x.take 256 := fun h => hqa (List.mem_of_mem_take h)
    simp [ht,hqy,hqw,hq]
  apply run_preserves_outside
  simp [squareProgram,wires_append,hcopy,hmul]

/-- 减平方块在边界只改变当前x，独立乘数S与Montgomery工作区全部归零。 -/
theorem pointInPlaceSquare_correct (L : ControlledPointLayout) (hw : L.Widths) (hnd : L.wires.Nodup)
    (A X : Nat) (hA : A<p) (hX : X<p) (s : State) (m : List Bool)
    (ha : regValue L.inPlaceSlope s.basis=A) (hx : regValue L.point.x s.basis=X)
    (hc : regValue L.inPlaceBorrow s.basis=0) :
    let P := copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++
      montMulSub L.inPlaceSquare p ++
      copyRegister none L.inPlaceSlope L.inPlaceSquare.y
    (run P m s).phase=s.phase ∧ regValue L.point.x (run P m s).basis=(X+p-(A*A)%p)%p ∧
      ∀ q∉L.point.x,(run P m s).basis q=s.basis q := by
  have hprogram : squareProgram L=copyRegister none L.inPlaceSlope L.inPlaceSquare.y ++
      montMulSub L.inPlaceSquare p ++
      copyRegister none L.inPlaceSlope L.inPlaceSquare.y := by
    rfl
  dsimp only
  rw [← hprogram]
  have hs : (squareAdapter L).y++[L.inPlaceBit 256,L.inPlaceBit 257]++(squareAdapter L).work ⊆ L.inPlaceBorrow := by
    rw [L.inPlaceSquare_borrow hw]; exact (List.take_sublist _ _).subset
  have clean := (regValue_zero _ _).mp hc
  have hy : regValue (squareAdapter L).y s.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => clean q (hs (by simp [hq])))
  have hwork : regValue (squareAdapter L).work s.basis=0 := (regValue_zero _ _).mpr
    (fun q hq => clean q (hs (by simp [hq])))
  have high0 : s.basis (L.inPlaceBit 256)=false := clean _ (hs (by simp))
  have high1 : s.basis (L.inPlaceBit 257)=false := clean _ (hs (by simp))
  have ha' : regValue (squareAdapter L).x s.basis=A := by
    change regValue (L.inPlaceSlope++[L.inPlaceBit 256]) s.basis=A
    rw [regValue_append,ha]
    simp [regValue,high0]
  have hx' : regValue (squareAdapter L).out s.basis=X := by
    change regValue (L.point.x++[L.inPlaceBit 257]) s.basis=X
    rw [regValue_append,hx]
    simp [regValue,high1]
  obtain ⟨hp,hv⟩ := square_program_spec L hw hnd A X hA hX s m ⟨⟨⟨ha',hy⟩,hx'⟩,hwork⟩
  have keep := square_program_frame L hw hnd A X hA hX s m ha' hy hx' hwork
  have hl := (regValue_low_iff L.point.x [L.inPlaceBit 257] (run (squareProgram L) m s).basis
    ((X+p-(A*A)%p)%p)
    (by rw [show L.point.x.length=256 from hw.inputX]; exact (Nat.mod_lt _ (by norm_num [p])).trans (by norm_num [p]))).mp hv.1.2
  refine ⟨hp,hl.1,?_⟩
  intro q hq
  by_cases he : q=L.inPlaceBit 257
  · subst q; exact ((regValue_zero _ _).mp hl.2 _ (by simp)).trans high1.symm
  · apply keep q
    change q∉L.point.x++[L.inPlaceBit 257]
    simp [hq,he]

end ECDSAAdd.Arithmetic
