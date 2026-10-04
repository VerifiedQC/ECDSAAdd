import ECDSAAdd.Arithmetic.ModularAddition.LanguageExample

-- 新记号是 scoped 的；未打开该作用域时，arith 仍可作为普通变量名。
example : (let arith : Nat := 3; arith) = 3 := rfl

open ECDSAAdd ECDSAAdd.ArithmeticLanguage ECDSAAdd.Arithmetic.ModAddLanguage
open ECDSAAdd.Arithmetic.ModAddLanguage.Example
open ECDSAAdd.Instr

-- 语法只构造高层操作，不把寄存器加法当成 Lean 的 Nat 加法求值。
example : (arith { y = (x + y) mod q; } : Code 3) = [⟨operation, none⟩] := rfl
example : (arith { y = (x + y) mod q using masked; } : Code 3) =
    [⟨operation, some "masked"⟩] := rfl
example : algorithm.code = twice operation none none := rfl
example : maskedAlgorithm.code = algorithm.code := rfl
example : mixedAlgorithm.code = twice operation none (some "masked") := rfl
example : algorithm.compile = .ok plan := compiles
example : maskedAlgorithm.compile = .ok maskedPlan := masked_compiles
example : mixedAlgorithm.compile = .ok mixedPlan := mixed_compiles
example : implementation.circuit ≠ maskedImplementation.circuit := implementations_differ

-- 多条语句必须完整保留；空程序不要求任意工作位初始为零。
example : (arith { y = (x + y) mod q; y = (x + y) mod q; y = (x + y) mod q; } : Code 3) =
    [⟨operation, none⟩, ⟨operation, none⟩, ⟨operation, none⟩] := rfl
example : (arith using arithmetic {}).compile = .ok .nil := rfl
example (s : BasisState) : (Lowering.nil : Lowering ([] : Code 3)).Ready s := True.intro

-- 显式选择优先；默认名称不存在时，显式选择仍然有效。
def missingDefault : Config 3 := { arithmetic with defaultImplementation := "missing" }
example : (arith using missingDefault { y = (x + y) mod q using direct; }).compile =
    .ok (.cons implementation .nil) := rfl

def failed {α : Type} : Except String α → Bool
  | .ok _ => false
  | .error _ => true

-- 未知实现不得静默回退，已知名称也不能误用在未注册的寄存器/模数上。
example : failed (arith using arithmetic { y = (x + y) mod q using missing; }).compile = true := rfl
example : failed (arith using missingDefault { y = (x + y) mod q; }).compile = true := rfl
example : failed (arith using arithmetic { y = (x + y) mod 5; }).compile = true := rfl
example : failed (arith using arithmetic { x = (y + x) mod q; }).compile = true := rfl
example : failed (arith using arithmetic { y = (x + y) mod q; y = (x + y) mod 5; }).compile = true := rfl

-- 重叠寄存器不能构造满足接口的实现。
example : ¬ (ModAdd.mk x x q).Valid := by decide
example : failed (arith using arithmetic { x = (x + x) mod q; }).compile = true := rfl
example : ¬ (ModAdd.mk x y 0).Valid := by decide
example : ¬ (ModAdd.mk x y 8).Valid := by decide

-- 不等宽、量子模数、错误 RHS 以及覆盖未知值不在这版语言内。
example : True := by
  let small : QReg 2 := ⟨[22, 23], by decide, by decide⟩
  fail_if_success
    have _bad : Code 3 := arith { y = (small + y) mod q; }
  fail_if_success
    have _bad : Code 3 := arith { y = (x + y) mod x; }
  fail_if_success
    have _bad : Code 3 := arith { y = (x + x) mod q; }
  fail_if_success
    have _bad : Code 3 := arith { y = 3; }
  fail_if_success
    have _bad : QReg 2 := ⟨[0, 0], by decide, by decide⟩
  trivial

-- 零工作区和输入范围是实际的证明义务，不是编译成功后的隐含假设。
def dirty : BasisState := fun w => decide (w = 6)
example : ¬ plan.Ready dirty := by
  intro h
  have hh := h.2.1 6 (by decide)
  change true = false at hh
  contradiction

def outOfRange : BasisState := fun w => decide (w < 3)
example : ¬ plan.Ready outOfRange := by
  intro h
  have hh := h.1.1
  change 7 < 7 at hh
  omega

example : True := by
  fail_if_success
    have _bad : Verified algorithm.code (fun _ => True) (fun _ => True) := {
      plan := plan
      specification := fun _ _ _ _ => True.intro
      ready := by intro s _; trivial
    }
  trivial

-- 非零输入、任意相位和任意测量记录均由普遍定理覆盖，不只测试全零态。
example (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Triple (initial X Y) plan.circuit (finalState X Y) := correct X Y hX hY
example (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Triple (extendedInitial X Y) mixedPlan.circuit (extendedFinal X Y) := mixed_correct X Y hX hY
example (X Y : Nat) (hX : X < q) (hY : Y < q) :
    Triple (extendedInitial X Y) maskedPlan.circuit (extendedFinal X Y) := masked_correct X Y hX hY

-- 6+6=12，先按 3 位溢出再模 7 会算错；正确两次模加的输出为 4。
example (s : State) (m : List Bool) (h : initial 6 6 s.basis) :
    y.value (run plan.circuit m s).basis = 4 := by
  exact ((correct 6 6 (by decide) (by decide) s m h).2).2.1
example (s : State) (m : List Bool) (h : extendedInitial 6 6 s.basis) :
    y.value (run mixedPlan.circuit m s).basis = 4 := by
  exact ((mixed_correct 6 6 (by decide) (by decide) s m h).2).2.1

example (s : State) (m : List Bool) (h : initial 2 4 s.basis) :
    (run plan.circuit m s).phase = s.phase := (correct 2 4 (by decide) (by decide) s m h).1
example (s : State) (m : List Bool) (h : initial 2 4 s.basis) :
    (run plan.circuit m s).basis 100 = s.basis 100 := frame 2 4 (by decide) (by decide) s m h 100 (by decide)

example : toffoliCount plan.circuit = 22 ∧ measurementCount plan.circuit = 22 ∧
    qubitCount plan.circuit = 16 := resources
example : toffoliCount maskedPlan.circuit = 34 ∧ measurementCount maskedPlan.circuit = 22 ∧
    qubitCount maskedPlan.circuit = 20 := masked_resources
example : toffoliCount mixedPlan.circuit = 28 ∧ measurementCount mixedPlan.circuit = 22 ∧
    qubitCount mixedPlan.circuit = 21 := mixed_resources

-- 旧门级 prog 与新语法并存，不改变已有展开。
example (a b : Wire) : (prog { CX a b; }) = [Instr.CX a b] := rfl
