import ECDSAAdd.Math.KaliskiRound

namespace ECDSAAdd

/-- 值走只保留欧几里得数据与活动计数，不分配整数系数字。 -/
@[ext] structure ValueState where
  u : Nat
  v : Nat
  k : Nat
  deriving DecidableEq

def KState.value (z : KState) : ValueState := ⟨z.u,z.v,z.k⟩
def valueInit (p x : Nat) : ValueState := ⟨p,x,0⟩

def valueStep (z : ValueState) : ValueState :=
  if z.v=0 then z
  else if z.u%2=0 then ⟨z.u/2,z.v,z.k+1⟩
  else if z.v%2=0 then ⟨z.u,z.v/2,z.k+1⟩
  else if z.v<z.u then ⟨(z.u-z.v)/2,z.v,z.k+1⟩
  else ⟨z.u,(z.v-z.u)/2,z.k+1⟩

def valueCode (z : ValueState) : Bool × Bool :=
  if z.v=0 then (false,false)
  else if z.u%2=0 then (false,false)
  else if z.v%2=0 then (true,false)
  else if z.v<z.u then (false,true)
  else (true,true)

@[simp] theorem valueInit_projection (p x : Nat) :
    (kaliskiInit p x).value=valueInit p x := rfl
@[simp] theorem valueStep_projection (z : KState) :
    (kaliskiStep z).value=valueStep z.value := by
  unfold kaliskiStep valueStep KState.value
  split_ifs <;> rfl
@[simp] theorem valueCode_projection (z : KState) :
    valueCode z.value=kaliskiCode z := rfl

/-- 任意轮数逐步继承旧状态机，不以新收敛假设替代原定理。 -/
theorem valueIter_projection (n : Nat) (z : KState) :
    (kaliskiStep^[n] z).value=valueStep^[n] z.value := by
  induction n with
  | zero => rfl
  | succ n ih =>
    simp only [Function.iterate_succ_apply',valueStep_projection,ih]

theorem valueIter_terminal (p x n : Nat) (hp0 : 0<p) (hx0 : 0<x)
    (hp : p<2^n) (hx : x<2^n) (hc : p.Coprime x) :
    (valueStep^[2*n] (valueInit p x)).v=0 ∧
    (valueStep^[2*n] (valueInit p x)).u=1 ∧
    (valueStep^[2*n] (valueInit p x)).k≤2*n := by
  have h := kaliski_terminates p x n hp0 hx0 hp hx hc
  rw [← valueInit_projection,← valueIter_projection]
  exact h

/-- 保留两位记录和更新后的计数，逆向恢复旧的u/v。 -/
def valueUnstep (i : Nat) (code : Bool × Bool) (z : ValueState) : ValueState :=
  if i<z.k then
    match code with
    | (false,false) => ⟨2*z.u,z.v,z.k-1⟩
    | (true,false) => ⟨z.u,2*z.v,z.k-1⟩
    | (false,true) => ⟨2*z.u+z.v,z.v,z.k-1⟩
    | (true,true) => ⟨z.u,2*z.v+z.u,z.k-1⟩
  else z
@[simp] theorem valueUnstep_projection (i : Nat) (code : Bool × Bool) (z : KState) :
    (kaliskiUnstep i code z).value=valueUnstep i code z.value := by
  rcases code with ⟨a,b⟩
  cases a <;> cases b <;> unfold kaliskiUnstep valueUnstep KState.value <;>
    split_ifs <;> rfl

theorem value_unstep_step (i : Nat) (z : ValueState)
    (h : z.k ≤ i ∧ (z.v ≠ 0 → z.k = i)) :
    valueUnstep i (valueCode z) (valueStep z)=z := by
  let full : KState := ⟨z.u,z.v,0,0,z.k⟩
  have hf : KRoundCount i full := h
  have he := congrArg KState.value (kaliski_unstep_step i full hf)
  simpa only [valueUnstep_projection,valueStep_projection,← valueCode_projection] using he

end ECDSAAdd
