import ECDSAAdd.Framework.CertifiedTranslation
import ECDSAAdd.Arithmetic.ModularAddition.Modular
import ECDSAAdd.Arithmetic.ModularAddition.ModInPlace

namespace ECDSAAdd.Arithmetic.Certified
open CertifiedTranslation

/-- 输出 XOR 模加；实现一次准备、选择、清理，共享和与差。
requires 保留互异、范围、零工作区条件，ensures 保留输入及工作区恢复。 -/
def modAddOn (L : ModLayout) (q : Nat) : CheckedProgram :=
  prog {
    L.out ^= (L.x + L.y) mod q using (Arithmetic.modAdd L q) by (fun hnd => modAddOn_mod_spec L hnd q);
  }

/-- 输出 XOR 模减；using 指定完整共享约减电路，不逐条重复计算差。 -/
def modSubOn (L : ModLayout) (q : Nat) : CheckedProgram :=
  prog {
    L.out ^= (L.x - L.y) mod q using (Arithmetic.modSub L q) by (fun hnd => modSubOn_mod_spec L hnd q);
  }

/-- 原地模加核；L.z 包含高位，完整前提来自 modAddCore_spec。 -/
def modAddCore (L : ModAddCoreLayout) (p : Nat) : CheckedProgram :=
  prog {
    L.z = (L.a + L.z) mod p using (Arithmetic.modAddCore L p) by (fun n A Z => modAddCore_spec L n p A Z);
  }

end ECDSAAdd.Arithmetic.Certified
