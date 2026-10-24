import ECDSAAdd.Arithmetic.Paper935.HmrSourceFrontShift
import ECDSAAdd.Arithmetic.Paper935.HmrShiftPairValue

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrSourceFront.Compiled.shift_value (P : HmrSourceFront) (A : Arena) (bank : WindowBank)
    (fgWidth vWidth : Nat) (exitWidth : RowWindow) (early : Bool) (frozen : Wire) (counter : List Wire)
    (h : P.Compiled A bank fgWidth vWidth exitWidth early frozen counter)
    (s : State) (m : List Bool)
    (even : P.headBank.g.value s.basis%2=0)
    (lower : early=true ∨ s.basis frozen=false → -((2^vWidth:Nat):Int) ≤ P.headBank.fv.value s.basis)
    (upper : early=true ∨ s.basis frozen=false → P.headBank.fv.value s.basis < ((2^vWidth:Nat):Int)) :
    let out := run (P.shift early frozen) m s
    P.headBank.g.value out.basis=P.headBank.g.value s.basis/2 ∧
    P.headBank.fv.value out.basis=(if early then 2*P.headBank.fv.value s.basis else
      if s.basis frozen then P.headBank.fv.value s.basis else 2*P.headBank.fv.value s.basis) := by
  have geometry := h.head_geometry P A bank fgWidth vWidth exitWidth early frozen counter
  have pieces := List.nodup_append'.mp (List.nodup_cons.mp (List.nodup_cons.mp geometry.1).2).2
  have perm : ((P.headBank.g.wires++P.headBank.fv.wires)++
      (P.headBank.f.wires++P.headBank.gv.wires)).Perm (P.headBank.rows.flatMap WindowRow.wires) := by
    apply List.perm_iff_count.mpr
    intro q
    simp [WindowBank.rows,List.count_append,Nat.add_left_comm]
  have nd := (List.nodup_append'.mp (perm.nodup_iff.mpr pieces.2.1)).1
  have armed : early=false → frozen∉P.headBank.g.wires++P.headBank.fv.wires := by
    intro eq member
    have fm : frozen∈hmrFrontInputs early frozen counter := by simp [hmrFrontInputs,eq]
    apply List.disjoint_left.mp pieces.2.2 fm
    exact perm.mem_iff.mp (List.mem_append_left _ member)
  have widths := (h.widths P A bank fgWidth vWidth exitWidth early frozen counter).2.1
  have gn : P.headBank.g.payload≠[] := by
    intro eq
    have hg := widths.2.1
    rw [eq] at hg
    simp only [List.length_nil] at hg
    omega
  have vn : P.headBank.fv.payload≠[] := by
    intro eq
    have hv := widths.2.2.1
    rw [eq] at hv
    simp only [List.length_nil] at hv
    omega
  apply hmrShiftPair_value P.headBank.g P.headBank.fv early frozen nd armed gn vn s m even
  · simpa only [widths.2.2.1,Nat.add_sub_cancel] using lower
  · simpa only [widths.2.2.1,Nat.add_sub_cancel] using upper

end ECDSAAdd.Arithmetic.Paper935
