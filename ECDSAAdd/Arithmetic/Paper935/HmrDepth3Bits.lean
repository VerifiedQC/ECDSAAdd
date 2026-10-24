import ECDSAAdd.Arithmetic.Paper935.HmrCanonicalResidues
import ECDSAAdd.Arithmetic.Paper935.DepthResidue

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps
open ECDSAAdd.Divsteps.SmallDecoders

theorem hmrCast8_residue (a : Int) (n : Nat) (eq : (n : Int)=a%8) :
    (a : ZMod 8)=(n : ZMod 8) := by
  rw [←ZMod.intCast_mod a 8]
  change ((a%8 : Int) : ZMod 8)=(n : ZMod 8)
  rw [←eq]
  norm_cast

/-- The finite witnesses used by the depth-three law are constructed from
actual integer residues; the caller supplies only physical coefficient bits. -/
theorem hmrDepth3Binding_of_bits (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (hd : padicValInt 2 (zStep st).fv=3) (hpmod : (p : ZMod 8)=7)
    (w : Fin 19 → Wire) (s : BasisState)
    (selected : s (w 0)=false ∧ s (w 1)=true ∧ s (w 2)=false)
    (bits : s (w 4)=decide (bitk (zStep st).f 2=1) ∧
      s (w 7)=decide (bitk (zStep st).gv 2=1) ∧ s (w 10)=decide (bitk (zStep st).fv 5=1)) :
    HmrDepth3Binding p st w s := by
  obtain ⟨f,hf⟩ := hmrOddResidue8 (zStep st).f (inv.zStep hp).fodd
  have mod16 := (depthResidue_iff (zStep st).fv 3 (by decide)).mpr hd
  norm_num at mod16
  have odd : (zStep st).fv/8%2=1 := by omega
  obtain ⟨q,hq⟩ := hmrOddResidue8 ((zStep st).fv/8) odd
  have lo := Int.emod_nonneg (zStep st).gv (by decide : (8 : Int)≠0)
  have hi := Int.emod_lt_of_pos (zStep st).gv (by decide : (0 : Int)<8)
  let gv : Fin 8 := ⟨((zStep st).gv%8).toNat,by omega⟩
  have hgv : (gv.val : Int)=(zStep st).gv%8 := Int.toNat_of_nonneg lo
  refine ⟨f,q,gv,hmrCast8_residue _ _ hf,hmrCast8_residue _ _ hq,hmrCast8_residue _ _ hgv,?_,hpmod⟩
  refine ⟨selected.1,selected.2.1,selected.2.2,?_,?_,?_⟩
  · exact bits.1.trans (hmrBit8_residue _ _ hf (2 : Fin 3)).symm
  · exact bits.2.1.trans (hmrBit8_residue _ _ hgv (2 : Fin 3)).symm
  · have qb := hmrBit8_residue _ _ hq (2 : Fin 3)
    rw [hmrBit_shift3 (zStep st).fv (2 : Fin 3)] at qb
    exact bits.2.2.trans qb.symm

end ECDSAAdd.Arithmetic.Paper935
