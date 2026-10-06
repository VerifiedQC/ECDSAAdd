import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.ModularMultiplication.MontAdapterSpec
import ECDSAAdd.Arithmetic.ModularMultiplication.CertifiedSpecs

namespace ECDSAAdd.Arithmetic.Certified
open CertifiedTranslation

/-- 查表、加法、清表为一个实现块；不为各表达式重新计算查表值。 -/
def montLookupAdd (L : MontStageLayout) (addr : List Wire) (K : Nat) : CheckedProgram :=
  certified {
    L.acc = (L.acc + addr * const(K)) mod (2^L.acc.length);
  } using (Arithmetic.montLookupAdd L addr K) by (CertifiedSpecs.montLookupAdd L addr K)

def montLookupSub (L : MontStageLayout) (addr : List Wire) (K : Nat) : CheckedProgram :=
  certified {
    L.acc = (L.acc - addr * const(K)) mod (2^L.acc.length);
  } using (Arithmetic.montLookupSub L addr K) by (CertifiedSpecs.montLookupSub L addr K)

def montConstantAdd (L : MontStageLayout) (K : Nat) : CheckedProgram :=
  certified {
    L.acc = (L.acc + const(K)) mod (2^L.acc.length);
  } using (Arithmetic.montConstantAdd L K) by (CertifiedSpecs.montConstantAdd L K)

def montConstantSub (L : MontStageLayout) (K : Nat) : CheckedProgram :=
  certified {
    L.acc = (L.acc - const(K)) mod (2^L.acc.length);
  } using (Arithmetic.montConstantSub L K) by (CertifiedSpecs.montConstantSub L K)

/-- 同一份乘积计算及清理；标准模积，不是 Montgomery 表示的积。 -/
def montMulXor (M : MontLayout) (p : Nat) [Fact p.Prime] : CheckedProgram :=
  certified {
    M.out ^= (M.x * M.y) mod p;
  } using (Arithmetic.montMulXor M p) by (montMulXor_spec M p)

def montMulAdd (M : MontLayout) (p : Nat) [Fact p.Prime] : CheckedProgram :=
  certified {
    M.out = (M.out + M.x * M.y) mod p;
  } using (Arithmetic.montMulAdd M p) by (montMulAdd_spec M p)

def montMulSub (M : MontLayout) (p : Nat) [Fact p.Prime] : CheckedProgram :=
  certified {
    M.out = (M.out - M.x * M.y) mod p;
  } using (Arithmetic.montMulSub M p) by (montMulSub_spec M p)

def montMulControlledAdd (c : Wire) (M : MontLayout) (p : Nat) [Fact p.Prime] : CheckedProgram :=
  certified {
    if c { M.out = (M.out + M.x * M.y) mod p; };
  } using (Arithmetic.montMulControlledAdd c M p)
    by (fun B => montMulControlledAdd_spec c B M p)

def montMulControlledSub (c : Wire) (M : MontLayout) (p : Nat) [Fact p.Prime] : CheckedProgram :=
  certified {
    if c { M.out = (M.out - M.x * M.y) mod p; };
  } using (Arithmetic.montMulControlledSub c M p)
    by (fun B => montMulControlledSub_spec c B M p)

end ECDSAAdd.Arithmetic.Certified
