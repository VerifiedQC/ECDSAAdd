import ECDSAAdd.Arithmetic.Paper935.HmrDecoderForms

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps
open ECDSAAdd.Divsteps.SmallDecoders

theorem hmrForm3_branch (p : Int) (s : ZState) (inv : Inv p s)
    (hp : p%2=1) (hz : s.z<0) (hd : padicValInt 2 (zStep s).fv=3)
    (f q : Fin 4) (gv : Fin 8) (hpmod : (p : ZMod 8)=7)
    (hf : ((zStep s).f : ZMod 8)=(oddValue f : ZMod 8))
    (hq : (((zStep s).fv/8 : Int) : ZMod 8)=(oddValue q : ZMod 8))
    (hgv : ((zStep s).gv : ZMod 8)=(gv.val : ZMod 8)) :
    decide (bbit s=1)=hmrForm3 (oddValue f) gv.val (oddValue q) := by
  have div : (8 : Int)∣(zStep s).fv := by
    have h := padicValInt_dvd (p:=2) (zStep s).fv
    simpa only [hd,Int.reducePow] using h
  have det := hmrCoefficient_congruence p (zStep s) (inv.zStep hp) 8 div
  rw [hf,hgv,hpmod,←Nat.cast_mul] at det
  have mod : (oddValue f * gv.val)%8=7 := by
    have h := congrArg ZMod.val det
    simpa only [ZMod.val_natCast] using h
  exact (depth3_branch p s inv hp hz hd f q hpmod hf hq).trans
    (hmrForm3_correct f q gv mod).symm

theorem hmrForm4_branch (p : Int) (s : ZState) (inv : Inv p s)
    (hp : p%2=1) (hz : s.z<0) (hd : padicValInt 2 (zStep s).fv=4)
    (f q : Fin 8) (gv : Fin 16) (hpmod : (p : ZMod 16)=15)
    (hf : ((zStep s).f : ZMod 16)=(oddValue f : ZMod 16))
    (hq : (((zStep s).fv/16 : Int) : ZMod 16)=(oddValue q : ZMod 16))
    (hgv : ((zStep s).gv : ZMod 16)=(gv.val : ZMod 16)) :
    decide (bbit s=1)=hmrForm4 (oddValue f) gv.val (oddValue q) := by
  have div : (16 : Int)∣(zStep s).fv := by
    have h := padicValInt_dvd (p:=2) (zStep s).fv
    simpa only [hd,Int.reducePow] using h
  have det := hmrCoefficient_congruence p (zStep s) (inv.zStep hp) 16 div
  rw [hf,hgv,hpmod,←Nat.cast_mul] at det
  have mod : (oddValue f * gv.val)%16=15 := by
    have h := congrArg ZMod.val det
    simpa only [ZMod.val_natCast] using h
  exact (depth4_branch p s inv hp hz hd f q hpmod hf hq).trans
    (hmrForm4_correct f q gv mod).symm

end ECDSAAdd.Arithmetic.Paper935
