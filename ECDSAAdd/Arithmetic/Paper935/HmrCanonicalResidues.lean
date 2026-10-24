import ECDSAAdd.Arithmetic.Paper935.HmrDecoderStrata

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps
open ECDSAAdd.Divsteps.SmallDecoders

theorem hmrOddResidue8 (v : Int) (odd : v%2=1) :
    ∃f : Fin 4,(oddValue f : Int)=v%8 := by
  have lo := Int.emod_nonneg v (by decide : (8 : Int)≠0)
  have hi := Int.emod_lt_of_pos v (by decide : (0 : Int)<8)
  let f : Fin 4 := ⟨(v%8).toNat/2,by omega⟩
  refine ⟨f,?_⟩
  simp only [oddValue,Nat.cast_add,Nat.cast_mul,Nat.cast_ofNat]
  dsimp only [f]
  omega

theorem hmrOddResidue16 (v : Int) (odd : v%2=1) :
    ∃f : Fin 8,(oddValue f : Int)=v%16 := by
  have lo := Int.emod_nonneg v (by decide : (16 : Int)≠0)
  have hi := Int.emod_lt_of_pos v (by decide : (0 : Int)<16)
  let f : Fin 8 := ⟨(v%16).toNat/2,by omega⟩
  refine ⟨f,?_⟩
  simp only [oddValue,Nat.cast_add,Nat.cast_mul,Nat.cast_ofNat]
  dsimp only [f]
  omega

theorem hmrBit8_residue (v : Int) (r : Nat) (eq : (r : Int)=v%8) (i : Fin 3) :
    bit r i.val=decide (bitk v i.val=1) := by
  fin_cases i <;> apply Bool.eq_iff_iff.mpr <;> norm_num [bit,bitk] <;> omega

theorem hmrBit16_residue (v : Int) (r : Nat) (eq : (r : Int)=v%16) (i : Fin 4) :
    bit r i.val=decide (bitk v i.val=1) := by
  fin_cases i <;> apply Bool.eq_iff_iff.mpr <;> norm_num [bit,bitk] <;> omega

theorem hmrBit_shift3 (v : Int) (i : Fin 3) : bitk (v/8) i.val=bitk v (i.val+3) := by
  fin_cases i <;> norm_num [bitk] <;> omega

theorem hmrBit_shift4 (v : Int) (i : Fin 4) : bitk (v/16) i.val=bitk v (i.val+4) := by
  fin_cases i <;> norm_num [bitk] <;> omega

end ECDSAAdd.Arithmetic.Paper935
