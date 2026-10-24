import ECDSAAdd.Arithmetic.Paper935.HmrCanonicalResidues
import ECDSAAdd.Arithmetic.Paper935.DepthResidue

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps
open ECDSAAdd.Divsteps.SmallDecoders

theorem hmrCast16_residue (a : Int) (n : Nat) (eq : (n : Int)=a%16) :
    (a : ZMod 16)=(n : ZMod 16) := by
  rw [←ZMod.intCast_mod a 16]
  change ((a%16 : Int) : ZMod 16)=(n : ZMod 16)
  rw [←eq]
  norm_cast

/-- The finite witnesses used by the depth-four law are constructed from
actual integer residues; the caller supplies only physical coefficient bits. -/
theorem hmrDepth4Binding_of_bits (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (hd : padicValInt 2 (zStep st).fv=4) (hpmod : (p : ZMod 16)=15)
    (w : Fin 19 → Wire) (s : BasisState)
    (selected : s (w 0)=false ∧ s (w 1)=false ∧ s (w 2)=true)
    (bits : s (w 3)=decide (bitk (zStep st).f 1=1) ∧
      s (w 4)=decide (bitk (zStep st).f 2=1) ∧ s (w 5)=decide (bitk (zStep st).f 3=1) ∧
      s (w 8)=decide (bitk (zStep st).gv 3=1) ∧ s (w 10)=decide (bitk (zStep st).fv 5=1) ∧
      s (w 11)=decide (bitk (zStep st).fv 6=1) ∧ s (w 12)=decide (bitk (zStep st).fv 7=1)) :
    HmrDepth4Binding p st w s := by
  obtain ⟨f,hf⟩ := hmrOddResidue16 (zStep st).f (inv.zStep hp).fodd
  have mod16 := (depthResidue_iff (zStep st).fv 4 (by decide)).mpr hd
  norm_num at mod16
  have odd : (zStep st).fv/16%2=1 := by omega
  obtain ⟨q,hq⟩ := hmrOddResidue16 ((zStep st).fv/16) odd
  have lo := Int.emod_nonneg (zStep st).gv (by decide : (16 : Int)≠0)
  have hi := Int.emod_lt_of_pos (zStep st).gv (by decide : (0 : Int)<16)
  let gv : Fin 16 := ⟨((zStep st).gv%16).toNat,by omega⟩
  have hgv : (gv.val : Int)=(zStep st).gv%16 := Int.toNat_of_nonneg lo
  refine ⟨f,q,gv,hmrCast16_residue _ _ hf,hmrCast16_residue _ _ hq,hmrCast16_residue _ _ hgv,?_,hpmod⟩
  obtain ⟨b3,b4,b5,b8,b10,b11,b12⟩ := bits
  refine ⟨selected.1,selected.2.1,selected.2.2,?_,?_,?_,?_,?_,?_,?_⟩
  · exact b3.trans (hmrBit16_residue _ _ hf (1 : Fin 4)).symm
  · exact b4.trans (hmrBit16_residue _ _ hf (2 : Fin 4)).symm
  · exact b5.trans (hmrBit16_residue _ _ hf (3 : Fin 4)).symm
  · exact b8.trans (hmrBit16_residue _ _ hgv (3 : Fin 4)).symm
  · have qb := hmrBit16_residue _ _ hq (1 : Fin 4)
    rw [hmrBit_shift4 (zStep st).fv (1 : Fin 4)] at qb
    exact b10.trans qb.symm
  · have qb := hmrBit16_residue _ _ hq (2 : Fin 4)
    rw [hmrBit_shift4 (zStep st).fv (2 : Fin 4)] at qb
    exact b11.trans qb.symm
  · have qb := hmrBit16_residue _ _ hq (3 : Fin 4)
    rw [hmrBit_shift4 (zStep st).fv (3 : Fin 4)] at qb
    exact b12.trans qb.symm

end ECDSAAdd.Arithmetic.Paper935
