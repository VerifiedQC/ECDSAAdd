import ECDSAAdd.Arithmetic.Paper935.HmrClassAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrBranchPartition

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

/-- Mathematical class predicate; the forward frozen input already contains
any newly fired lane, while the reverse mode additionally excludes fire. -/
def hmrClassEnabled (mode : HmrClassMode) (frozen fire sigma : Bool) (z : Int) : Bool :=
  match mode with
  | .early => !sigma && decide (z≤0)
  | .forwardArmed => !frozen && !sigma && decide (z≤0)
  | .reverseArmed => !frozen && !sigma && decide (z≤0) && !fire

theorem hmrClassValue_math (mode : HmrClassMode) (w : Fin 9 → Wire) (s : BasisState)
    (z : Int) (sign : s (w 0)=decide (z<0)) (zero : s (w 1)=decide (z=0)) :
    hmrClassValue mode w s=hmrClassEnabled mode (s (w 3)) (s (w 4)) (s (w 2)) z := by
  have pos : (!(!s (w 0) && !s (w 1)))=decide (z≤0) := by
    rw [sign,zero]
    by_cases hz : z<0
    · simp [hz,show z≠0 by omega,show z≤0 by omega]
    · by_cases he : z=0
      · simp [he]
      · simp [hz,he,show ¬z≤0 by omega]
  cases mode <;> simp only [hmrClassValue,hmrClassEnabled,pos]

theorem compileHmrClass_math (A B : Arena) (mode : HmrClassMode) (inputs work : List Wire)
    (h : compileHmrClass A mode inputs=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (z : Int)
    (sign : s.basis (hmrAllocatedClassPorts mode inputs work 0)=decide (z<0))
    (zero : s.basis (hmrAllocatedClassPorts mode inputs work 1)=decide (z=0)) :
    let w := hmrAllocatedClassPorts mode inputs work
    (run (hmrAndSweep (hmrClassChain mode w)) m s).basis (w 8)=
      hmrClassEnabled mode (s.basis (w 3)) (s.basis (w 4)) (s.basis (w 2)) z := by
  dsimp only
  rw [compileHmrClass_run A B mode inputs work h s m ready]
  exact (compileHmrClass_value A B mode inputs work h s.basis).trans
    (hmrClassValue_math mode _ s.basis z sign zero)

/-- The reverse class's negative old counter and divisibility facts follow
from the independent step invariant and sigma binding. -/
theorem hmrRecoverClass_conditions (p : Int) (st : ZState) (inv : Inv p st) (hp : p%2=1)
    (frozen fire sigma : Bool) (hs : sigma=(!frozen && decide (0≤st.z ∧ st.g%2=1)))
    (enabled : (!(frozen || fire) && !sigma && decide ((zStep st).z≤0))=true) :
    st.z<0 ∧ (4 : Int)∣(zStep st).fv := by
  have hf : frozen=false := by cases frozen <;> simp_all
  have hswap : ¬(0≤st.z ∧ st.g%2=1) := by
    intro hswap
    simp [hf,hs,hswap] at enabled
  have hz : (zStep st).z≤0 := by
    by_contra hz
    simp [hz] at enabled
  have step := zStep_nonswap hswap
  have oldneg : st.z<0 := by rw [step] at hz; dsimp at hz; omega
  exact ⟨oldneg,(sigma_class inv hp).2.2 hswap⟩

end ECDSAAdd.Arithmetic.Paper935
