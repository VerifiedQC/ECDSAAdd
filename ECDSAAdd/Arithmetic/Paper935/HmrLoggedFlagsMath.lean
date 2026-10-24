import ECDSAAdd.Arithmetic.Paper935.HmrFlagsMath
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFlags

namespace ECDSAAdd.Arithmetic.Paper935
open ECDSAAdd.Divsteps

theorem compileHmrFlagsLog_depths (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (h : compileHmrFlagsLog A c3 b2 b3 b4 work=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) (v : Int)
    (div4 : s.basis c3=true → (4 : Int)∣v)
    (bits : s.basis b2=decide (bitk v 2=1) ∧ s.basis b3=decide (bitk v 3=1) ∧
      s.basis b4=decide (bitk v 4=1)) :
    let w : Fin 6 → Wire := hmrBorrowPorts work
    let out := run (hmrFlags c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)) m s
    out.basis (w 0)=(s.basis c3 && decide (padicValInt 2 v=2)) ∧
    out.basis (w 2)=(s.basis c3 && decide (padicValInt 2 v=3)) ∧
    out.basis (w 4)=(s.basis c3 && decide (padicValInt 2 v=4)) ∧
    out.basis (w 5)=(s.basis c3 && decide ((32 : Int)∣v)) := by
  have hc := compileHmrFlagsLog_contract A B c3 b2 b3 b4 work h
  have ports := hmrLoggedPorts_contract A B 6 work hc.2.2
  let w : Fin 6 → Wire := hmrBorrowPorts work
  have clean : ∀q∈[w 0,w 1,w 2,w 3,w 4,w 5],s.basis q=false := by
    intro q hq
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hq
    rcases hq with rfl|rfl|rfl|rfl|rfl|rfl
    all_goals exact hmrLoggedPorts_clean A B 6 work hc.2.2 s.basis ready _
  have result := hmrFlags_run_aliased c3 b2 b3 b4 (w 0) (w 1) (w 2) (w 3) (w 4) (w 5)
    (compileHmrFlagsLog_geometry A B c3 b2 b3 b4 work h) s m clean
  have injective : Function.Injective w := ports.1
  dsimp only
  rw [result]
  cases enabled : s.basis c3 with
  | false => simp [w,injective.eq_iff,writeBit]
  | true =>
    have values := hmrFlagDepthBits v (div4 enabled)
    simpa [w,injective.eq_iff,writeBit,bits.1,bits.2.1,bits.2.2] using values

end ECDSAAdd.Arithmetic.Paper935
