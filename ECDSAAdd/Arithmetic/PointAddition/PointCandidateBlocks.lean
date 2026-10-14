import ECDSAAdd.Arithmetic.PointAddition.PointCandidateSteps
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic

open scoped ECDSAAdd.ProofLanguage
open GateProof

theorem CandidateValues.subConstant (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool) (a o : CandidateField)
    (ha : (L.reg a).length=257) (ho : (L.reg o).length=257)
    (haK : a≠.constant) (hoK : o≠.constant)
    (hn : (L.reg a++L.constant++L.reg o++L.pool).Nodup)
    (hA : v a<p) (hK : v .constant=0) (k : Nat) (hk : k<p) :
    Triple (CandidateValues L v G) (pointSubConstantKernel L (L.reg a) (L.reg o) k)
      (CandidateValues L (Function.update v o (v o ^^^ ((v a+p-k)%p))) G) := Proof
  have hkl : (L.reg .constant).length=257 := h.words L.constant (by simp [PointAddLayout.words])
  have hkb : k<2^(L.reg .constant).length := by rw [hkl]; exact hk.trans (show p<2^257 by norm_num [p, Nat.pow_succ])
  let v1 := Function.update v CandidateField.constant (v .constant ^^^ k)
  let v2 := Function.update v1 o (v1 o ^^^ ((v1 a+p-v1 .constant)%p))
  { Triple (CandidateValues L v G) (xorConstant (L.reg .constant) k) (CandidateValues L v1 G) }
    as loadConstant by CandidateValues.constant L hnd v G .constant k hkb;
  { Triple (CandidateValues L v1 G)
      (fieldSub (poolSub L.poolWire (L.reg a) (L.reg .constant) (L.reg o))) (CandidateValues L v2 G)
  } as subtractConstant by CandidateValues.sub L h hnd v1 G a .constant o ha hkl ho hn
      (by simpa [v1,haK] using hA) (by simpa [v1,hK] using hk);
  { Triple (CandidateValues L v2 G) (xorConstant (L.reg .constant) k)
      (CandidateValues L (Function.update v2 .constant (v2 .constant ^^^ k)) G)
  } as clearConstant by CandidateValues.constant L hnd v2 G .constant k hkb;
  have hf : Function.update v2 CandidateField.constant (v2 .constant ^^^ k)=
      Function.update v o (v o ^^^ ((v a+p-k)%p)) := by
    funext f
    by_cases hfo : f=o
    · subst f; simp [v2,v1,hK,haK,hoK]
    · by_cases hfK : f=.constant
      · subst f; simp [v2,v1,hK,haK,hoK,Ne.symm hoK]
      · simp [v2,v1,hK,haK,hoK,hfo,hfK]
  change Triple (CandidateValues L v G)
    (xorConstant (L.reg .constant) k++
      fieldSub (poolSub L.poolWire (L.reg a) (L.reg .constant) (L.reg o))++
      xorConstant (L.reg .constant) k) _
  have unloaded : Triple (CandidateValues L v2 G) (xorConstant (L.reg .constant) k)
      (CandidateValues L (Function.update v o (v o ^^^ ((v a+p-k)%p))) G) := by
    simpa only [hf] using clearConstant
  simpa only [List.append_assoc] using (hoare_steps {
    Precondition { satisfies (CandidateValues L v G) };

    after command { call (xorConstant (L.reg .constant) k); }
    get { satisfies (CandidateValues L (Function.update v .constant (v .constant ^^^ k)) G) } by exact loadConstant;

    after command { call (fieldSub (poolSub L.poolWire (L.reg a) (L.reg .constant) (L.reg o))); }
    get { satisfies (CandidateValues L (Function.update v1 o (v1 o ^^^ ((v1 a+p-v1 .constant)%p))) G) } by exact subtractConstant;

    after command { call (xorConstant (L.reg .constant) k); }
    get { satisfies (CandidateValues L (Function.update v o (v o ^^^ ((v a+p-k)%p))) G) } by exact unloaded;

    Conclusion { satisfies (CandidateValues L (Function.update v o (v o ^^^ ((v a+p-k)%p))) G) };
  })

theorem CandidateValues.square (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool)
    (hn : (L.slope++L.constant.take 256++L.square++L.pool).Nodup)
    (hS : v .slope<p) (hK : v .constant=0) :
    Triple (CandidateValues L v G) (pointSquareKernel L)
      (CandidateValues L (Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p))) G) := Proof
  have hs : (L.reg .slope).length=257 := h.words L.slope (by simp [PointAddLayout.words])
  have hk : (L.reg .constant).length=257 := h.words L.constant (by simp [PointAddLayout.words])
  have ho : (L.reg .square).length=257 := h.words L.square (by simp [PointAddLayout.words])
  let v1 := Function.update v CandidateField.constant (v .constant ^^^ v .slope)
  let v2 := Function.update v1 CandidateField.square (v1 .square ^^^ ((v1 .slope*v1 .constant)%p))
  { Triple (CandidateValues L v G) (copyRegister none (L.reg .slope) (L.reg .constant))
      (CandidateValues L v1 G)
  } as copySlope by CandidateValues.copy L hnd v G .slope .constant (by decide) (hs.trans hk.symm);
  { Triple (CandidateValues L v1 G)
      (fieldMul (poolMul L.poolWire (L.reg .slope) ((L.reg .constant).take 256) (L.reg .square)))
      (CandidateValues L v2 G)
  } as multiplyCopies by CandidateValues.mul L h hnd v1 G .slope .constant .square hs (by omega) ho hn
      (by simpa [v1] using hS)
      (by simpa [v1,hK] using hS.trans (show p<2^256 by norm_num [p]));
  { Triple (CandidateValues L v2 G) (copyRegister none (L.reg .slope) (L.reg .constant))
      (CandidateValues L (Function.update v2 .constant (v2 .constant ^^^ v2 .slope)) G)
  } as clearCopy by CandidateValues.copy L hnd v2 G .slope .constant (by decide) (hs.trans hk.symm);
  have hf : Function.update v2 CandidateField.constant (v2 .constant ^^^ v2 .slope)=
      Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p)) := by
    funext f
    cases f <;> simp [v2,v1,hK]
  change Triple (CandidateValues L v G)
    (copyRegister none (L.reg .slope) (L.reg .constant)++
      fieldMul (poolMul L.poolWire (L.reg .slope) ((L.reg .constant).take 256) (L.reg .square))++
      copyRegister none (L.reg .slope) (L.reg .constant)) _
  have copyCleared : Triple (CandidateValues L v2 G)
      (copyRegister none (L.reg .slope) (L.reg .constant))
      (CandidateValues L (Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p))) G) := by
    simpa only [hf] using clearCopy
  simpa only [List.append_assoc] using (hoare_steps {
    Precondition { satisfies (CandidateValues L v G) };

    after command { call (copyRegister none (L.reg .slope) (L.reg .constant)); }
    get { satisfies (CandidateValues L (Function.update v .constant (v .constant ^^^ v .slope)) G) } by exact copySlope;

    after command { call (fieldMul (poolMul L.poolWire (L.reg .slope) ((L.reg .constant).take 256) (L.reg .square))); }
    get { satisfies (CandidateValues L (Function.update v1 .square (v1 .square ^^^ ((v1 .slope*v1 .constant)%p))) G) } by exact multiplyCopies;

    after command { call (copyRegister none (L.reg .slope) (L.reg .constant)); }
    get { satisfies (CandidateValues L (Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p))) G) } by exact copyCleared;

    Conclusion { satisfies (CandidateValues L (Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p))) G) };
  })

end ECDSAAdd.Arithmetic
