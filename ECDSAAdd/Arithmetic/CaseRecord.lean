import ECDSAAdd.Arithmetic.Registers

namespace ECDSAAdd.Arithmetic

/-- 两位完整分支记录与本轮复用的两个 AND 工作位。borrow 表示 v<u。 -/
structure CaseLayout where
  active : Wire
  uOdd : Wire
  vOdd : Wire
  borrow : Wire
  swap : Wire
  subtract : Wire
  oddWork : Wire
  bothWork : Wire

def CaseLayout.wires (L : CaseLayout) : List Wire :=
  [L.active,L.uOdd,L.vOdd,L.borrow,L.swap,L.subtract,L.oddWork,L.bothWork]

/-- 记录位不参与自身的计算，因此同一前向程序也适用于恢复状态后的 XOR 清理。 -/
def recordCase (L : CaseLayout) : Program :=
  [.CCX L.active L.uOdd L.oddWork, .CCX L.oddWork L.vOdd L.bothWork,
   .CX L.bothWork L.subtract, .CX L.oddWork L.swap, .CCX L.bothWork L.borrow L.swap,
   .CCX L.oddWork L.vOdd L.bothWork, .CCX L.active L.uOdd L.oddWork]

set_option maxHeartbeats 2000000 in
set_option maxRecDepth 4000 in
/-- 固定门列只更新两位记录，两个 AND 工作位恢复为零。 -/
theorem recordCase_correct (L : CaseLayout) (hnd : L.wires.Nodup)
    (s : State) (m : List Bool) (ho : s.basis L.oddWork=false) (hb : s.basis L.bothWork=false) :
    run (recordCase L) m s =
      ⟨s.phase, writeBit (writeBit s.basis L.swap
        (s.basis L.swap ^^ ((s.basis L.active && s.basis L.uOdd) ^^
          (s.basis L.active && s.basis L.uOdd && s.basis L.vOdd && s.basis L.borrow))))
        L.subtract (s.basis L.subtract ^^ (s.basis L.active && s.basis L.uOdd && s.basis L.vOdd))⟩ := by
  rcases L with ⟨a,u,v,b,sw,su,o,t⟩
  have hr : [t,o,su,sw,b,v,u,a].Nodup := List.nodup_reverse.mpr hnd
  simp only [CaseLayout.wires, List.nodup_cons, List.mem_cons, List.not_mem_nil,
    not_or, not_false_eq_true, and_true] at hnd hr
  apply congrArg (State.mk s.phase)
  funext w
  by_cases hsw : w=sw
  · subst w
    simp_all [writeBit, Bool.and_assoc]
  by_cases hsu : w=su
  · subst w
    simp_all [writeBit, Bool.and_assoc]
  by_cases how : w=o
  · subst w
    simp_all [writeBit, Bool.and_assoc]
  by_cases htw : w=t
  · subst w
    simp_all [writeBit, Bool.and_assoc]
  · simp_all [writeBit]

theorem recordCase_spec (L : CaseLayout) (hnd : L.wires.Nodup) (A U V B S D : Bool) :
    {{ L.active=A, L.uOdd=U, L.vOdd=V, L.borrow=B, L.swap=S, L.subtract=D,
       L.oddWork=false, L.bothWork=false }} recordCase L
    {{ L.active=A, L.uOdd=U, L.vOdd=V, L.borrow=B,
       L.swap=(S ^^ ((A && U) ^^ (A && U && V && B))),
       L.subtract=(D ^^ (A && U && V)), L.oddWork=false, L.bothWork=false }} := by
  intro s m h
  rw [recordCase_correct L hnd s m h.1.2 h.2]
  rcases L with ⟨a,u,v,b,sw,su,o,t⟩
  have hr : [t,o,su,sw,b,v,u,a].Nodup := List.nodup_reverse.mpr hnd
  simp only [CaseLayout.wires, List.nodup_cons, List.mem_cons, List.not_mem_nil,
    not_or, not_false_eq_true, and_true] at hnd hr
  simp_all [Holds.holds, writeBit, Bool.and_assoc]

theorem recordCase_resources (L : CaseLayout) (hnd : L.wires.Nodup) :
    toffoliCount (recordCase L)=5 ∧ measurementCount (recordCase L)=0 ∧
    qubitCount (recordCase L)=8 := by
  refine ⟨rfl,rfl,?_⟩
  have hw : wires (recordCase L)=L.wires.toFinset := by
    ext w
    simp [recordCase, wires, Instr.wires, CaseLayout.wires, or_comm, or_left_comm]
  rw [qubitCount,hw,List.toFinset_card_of_nodup hnd]
  rfl

end ECDSAAdd.Arithmetic
