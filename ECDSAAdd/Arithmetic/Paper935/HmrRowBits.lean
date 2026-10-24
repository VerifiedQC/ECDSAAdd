import ECDSAAdd.Arithmetic.Paper935.HmrDecoderBitBindings
import ECDSAAdd.Arithmetic.Divsteps.SwapHistory

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Source WRow.pos: reads beyond the payload reuse the dedicated sign wire. -/
def hmrRowPos (payload : List Wire) (sign : Wire) (k : Nat) : Wire :=
  payload[k]?.getD sign

private theorem bitk_cons_small (v : Int) (b : Bool) (i : Fin 7) :
    bitk (2*v+(b.toNat : Int)) (i.val+1)=bitk v i.val := by
  fin_cases i <;> cases b <;> norm_num [bitk] <;> omega

/-- All positions used by jflags and the shared decoder read the integer bit,
including short rows whose high reads alias the sign wire. -/
theorem hmrRowPos_bit (payload : List Wire) (sign : Wire) (s : BasisState)
    (k : Nat) (hk : k≤7) :
    s (hmrRowPos payload sign k)=decide (bitk (signedRegValue (payload++[sign]) s) k=1) := by
  induction k generalizing payload with
  | zero =>
    cases payload with
    | nil =>
      have value := signedRegValue_msb [] sign s
      cases hs : s sign <;> simp [hmrRowPos,bitk,regValue,hs] at value ⊢ <;> omega
    | cons a rest =>
      have even := signedRegValue_even_iff a (rest++[sign]) s
      simp only [hmrRowPos,List.getElem?_cons_zero,Option.getD_some,List.cons_append]
      unfold bitk
      norm_num only [Nat.reduceAdd,pow_one,pow_zero,Int.ediv_one]
      have lo := Int.emod_nonneg (signedRegValue (a::(rest++[sign])) s) (by decide : (2 : Int)≠0)
      have hi := Int.emod_lt_of_pos (signedRegValue (a::(rest++[sign])) s) (by decide : (0 : Int)<2)
      cases ha : s a <;> simp_all
  | succ k ih =>
    cases payload with
    | nil =>
      have value := signedRegValue_msb [] sign s
      have hk' : k<7 := by omega
      let i : Fin 7 := ⟨k,hk'⟩
      have all : ∀j : Fin 7, bitk (-1) (j.val+1)=1 ∧ bitk 0 (j.val+1)=0 := by
        intro j; fin_cases j <;> norm_num [bitk]
      cases hs : s sign <;> simp [regValue,hs] at value <;>
        simp [hmrRowPos,value,hs,show k+1=i.val+1 from rfl,(all i).1,(all i).2]
    | cons a rest =>
      have value := signedRegValue_cons a (rest++[sign]) s (by simp)
      have shift := bitk_cons_small (signedRegValue (rest++[sign]) s) (s a) ⟨k,by omega⟩
      simpa only [hmrRowPos,List.getElem?_cons_succ,List.cons_append,value,shift] using
        ih rest (by omega)

end ECDSAAdd.Arithmetic.Paper935
