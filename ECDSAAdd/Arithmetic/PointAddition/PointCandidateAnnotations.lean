import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.PointAddition.PointCandidateBlocks

namespace ECDSAAdd.Arithmetic
open CertifiedTranslation

/-- 常数装载、模减、清理的独立规格；不依赖上层候选程序。 -/
theorem pointSubConstantKernel_spec (L : PointAddLayout) (x out : List Wire) (k : Nat)
    (h : L.Widths) (hnd : L.wires.Nodup) (v : CandidateField → Nat) (G : Bool)
    (a o : CandidateField) (hx : x=L.reg a) (hout : out=L.reg o)
    (ha : x.length=257) (ho : out.length=257) (haK : a≠.constant) (hoK : o≠.constant)
    (hn : (x++L.constant++out++L.pool).Nodup) (hA : v a<p) (hK : v .constant=0) (hk : k<p) :
    Triple (fun s => CandidateValues L v G s ∧ regValue x s=v a ∧ regValue out s=v o)
      (pointSubConstantKernel L x out k)
      (fun t => CandidateValues L (Function.update v o (v o ^^^ ((v a+p-k)%p))) G t ∧
        regValue out t=v o ^^^ ((v a+p-k)%p)) := by
  subst x; subst out
  intro s m hp
  obtain ⟨phase, result⟩ := CandidateValues.subConstant L h hnd v G a o ha ho haK hoK hn hA hK k hk s m hp.1
  exact ⟨phase, result, by simpa using result.1 o⟩

theorem pointSquareKernel_spec (L : PointAddLayout) (h : L.Widths) (hnd : L.wires.Nodup)
    (v : CandidateField → Nat) (G : Bool)
    (hn : (L.slope++L.constant.take 256++L.square++L.pool).Nodup)
    (hS : v .slope<p) (hK : v .constant=0) :
    Triple (fun s => CandidateValues L v G s ∧
      regValue L.slope s=v .slope ∧ regValue L.square s=v .square)
      (pointSquareKernel L)
      (fun t => CandidateValues L (Function.update v .square (v .square ^^^ ((v .slope*v .slope)%p))) G t ∧
        regValue L.square t=v .square ^^^ ((v .slope*v .slope)%p)) := by
  intro s m hp
  obtain ⟨phase, result⟩ := CandidateValues.square L h hnd v G hn hS hK s m hp.1
  exact ⟨phase, result, by simpa [PointAddLayout.reg] using result.1 .square⟩

/-- 保留源寄存器、工作区及所有非输出位的逐线规格。 -/
theorem candidateSub_spec (pool : Nat → Wire) (x y out : List Wire)
    (hx : x.length=257) (hy : y.length=257) (ho : out.length=257)
    (hn : (poolSub pool x y out).wires.Nodup) (initial : BasisState)
    (hX : regValue x initial<p) (hY : regValue y initial<p)
    (hz : regValue (poolSub pool x y out).work initial=0) :
    Triple (fun s => s=initial) (fieldSubXor pool x y out)
      (fun t => regValue out t=regValue out initial ^^^
        ((regValue x initial+p-regValue y initial)%p) ∧ ∀ w∉out,t w=initial w) := by
  intro s m hs
  subst initial
  have hi := poolSub_inputs pool x y out hx hy ho
  obtain ⟨phase, keep, value⟩ := fieldSub_correct (poolSub pool x y out) hn
    (poolSub_width pool x y out) s m (hi.1.symm ▸ hX) (hi.2.1.symm ▸ hY) hz
  generalize hrun : run (fieldSubXor pool x y out) m s=t at phase keep value ⊢
  exact ⟨phase, by simpa only [hi.1,hi.2.1,hi.2.2] using value,
    by simpa only [hi.2.2] using keep⟩

theorem candidateMul_spec (pool : Nat → Wire) (x y out : List Wire)
    (hn : (poolMul pool x y out).wires.Nodup) (hw : (poolMul pool x y out).Widths)
    (initial : BasisState) (hx : regValue x initial<p)
    (hz : regValue (poolMul pool x y out).work initial=0) :
    Triple (fun s => s=initial) (fieldMulXor pool x y out)
      (fun t => regValue out t=regValue out initial ^^^
        ((regValue x initial*regValue y initial)%p) ∧ ∀ w∉out,t w=initial w) := by
  intro s m hs
  subst initial
  obtain ⟨phase, keep, value⟩ := fieldMul_correct (poolMul pool x y out) hn hw s m hx hz
  exact ⟨phase, value, keep⟩

theorem candidateInverse_spec (pool : Nat → Wire) (x out : List Wire) (ho : out.length=256)
    (hn : (poolInverse pool x out).wires.Nodup) (hw : (poolInverse pool x out).Widths)
    (initial : BasisState) (hx0 : 0<regValue x initial) (hx : regValue x initial<p)
    (hz : regValue (poolInverse pool x out).work initial=0) :
    Triple (fun s => s=initial) (fieldInverseXor pool x out)
      (fun t => regValue out t=regValue out initial ^^^
        ((regValue x initial : Fp)⁻¹).val ∧ ∀ w∉out,t w=initial w) := by
  intro s m hs
  subst initial
  have hi := poolInverse_inputs pool x out ho
  obtain ⟨phase, keep, value⟩ := fieldInverse_correct (poolInverse pool x out) hn hw s m hx0 hx hz
  generalize hrun : run (fieldInverseXor pool x out) m s=t at phase keep value ⊢
  exact ⟨phase, by simpa only [hi.1,hi.2] using value, by simpa only [hi.2] using keep⟩

theorem candidateSafe_spec (g : Wire) (src : List Wire) (head : Wire) (tail : List Wire)
    (hlen : src.length=(head::tail).length) (hn : (g::src++head::tail).Nodup)
    (initial : BasisState) :
    Triple (fun s => s=initial) (safeDivisor g src head tail)
      (fun t => regValue (head::tail) t=regValue (head::tail) initial ^^^
        (if initial g then regValue src initial else 1) ∧ ∀ w∉head::tail,t w=initial w) := by
  intro s m hs
  subst initial
  obtain ⟨phase, keep, value⟩ := safeDivisor_correct g src head tail hlen hn s m
  exact ⟨phase, value, keep⟩

end ECDSAAdd.Arithmetic
