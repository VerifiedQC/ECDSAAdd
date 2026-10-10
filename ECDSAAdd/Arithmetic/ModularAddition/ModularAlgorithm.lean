import ECDSAAdd.Framework.ProofLanguage

open scoped ECDSAAdd.ProofLanguage

namespace ECDSAAdd.Arithmetic.ModReductionAlgorithm

/- 算法层：只描述每个计算基态上要 XOR 到 out 的数，不涉及 wire、进位或测量。
两条互补 if 只有一条写入，因此结果由下面的分支表达式给出。
与实际 prog 的连接由 ModularBackend 的 refines 定理证明，不把这里的 if 当作测量。 -/

/-- 和小于 q 时保留和，否则减一次 q。 -/
def addResult (X Y q : Nat) : Nat :=
  if X + Y < q then X + Y else X + Y - q

/-- 有借位时给数学差加回 q，否则保留差。
X+q-Y 表示加回 q 后的非负结果，不是先做 Nat 截断减法再加 q。 -/
def subResult (X Y q : Nat) : Nat :=
  if X < Y then X + q - Y else X - Y

/-- 模加的算法证明：分别检查两个 if 分支；只要求和小于 2q。 -/
theorem addResult_correct (X Y q : Nat) (hSum : X + Y < 2 * q) :
    addResult X Y q = (X + Y) % q := Proof
  let sum := X + Y

  if (sum < q) {
    { sum % q = sum }
      by the small remainder rule;

    { addResult X Y q = sum }
      by definition;

    conclude { addResult X Y q = sum % q };
  } else {
    { sum % q = sum - q }
      by one subtraction using hSum and the branch condition;

    { addResult X Y q = sum - q }
      by definition;

    conclude { addResult X Y q = sum % q };
  }

/-- 模减的算法证明：有借位时加回 q，无借位时直接保留差。 -/
theorem subResult_correct (X Y q : Nat) (hX : X < q) (hY : Y < q) :
    subResult X Y q = (X + q - Y) % q := Proof
  if (X < Y) {
    { (X + q - Y) % q = X + q - Y }
      by the small remainder rule using [hX, hY];
    { subResult X Y q = X + q - Y } by definition;
    conclude { subResult X Y q = (X + q - Y) % q };
  } else {
    { (X + q - Y) % q = X - Y }
      by the shifted remainder rule using [hX] and the branch condition;
    { subResult X Y q = X - Y } by definition;
    conclude { subResult X Y q = (X + q - Y) % q };
  }

-- 后端只需要分支结果的范围，不依赖最终“等于模运算”的结论。
theorem addResult_lt (X Y q : Nat) (hSum : X + Y < 2 * q) :
    addResult X Y q < q := by
  unfold addResult
  split_ifs <;> omega

theorem subResult_lt (X Y q : Nat) (hX : X < q) (hY : Y < q) :
    subResult X Y q < q := by
  unfold subResult
  split_ifs <;> omega

end ECDSAAdd.Arithmetic.ModReductionAlgorithm
