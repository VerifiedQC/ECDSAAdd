import ECDSAAdd.Arithmetic.HornerSteps

namespace ECDSAAdd.Arithmetic

private theorem mulIntoRounds_spec (M : MulInPlaceLayout) (n p X Y k : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hY : Y<2^n) (hk : k≤n) :
    {{ M.x=X,M.y=Y,M.acc=0,M.work=0 }} mulIntoRounds M p k
    {{ M.x=X,M.y=Y,M.acc=hornerValue p X Y (n-k),M.work=0 }} := by
  induction k with
  | zero =>
    intro s m h
    simpa only [mulIntoRounds,run,Holds.holds,Nat.sub_zero,hornerValue_start p X Y n hY] using And.intro (rfl : s.phase=s.phase) h
  | succ k ih =>
    have hprev := ih (by omega)
    have hi : n-(k+1)<n := by omega
    have he : n-(k+1)+1=n-k := by omega
    have hstep := hornerIntoStep_spec M n p X Y (n-(k+1)) hw hnd hp hpn hX hi
    rw [he] at hstep
    simpa only [mulIntoRounds,hw.y] using hprev.seq hstep

private theorem mulClearRounds_spec (M : MulInPlaceLayout) (n p X Y k : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hY : Y<2^n) (hk : k≤n) :
    {{ M.x=X,M.y=Y,M.acc=hornerValue p X Y (n-k),M.work=0 }} mulClearRounds M p k
    {{ M.x=X,M.y=Y,M.acc=0,M.work=0 }} := by
  induction k with
  | zero =>
    intro s m h
    simpa only [mulClearRounds,run,Holds.holds,Nat.sub_zero,hornerValue_start p X Y n hY] using And.intro (rfl : s.phase=s.phase) h
  | succ k ih =>
    have hnext := ih (by omega)
    have hi : n-(k+1)<n := by omega
    have he : n-(k+1)+1=n-k := by omega
    have hstep := hornerClearStep_spec M n p X Y (n-(k+1)) hw hnd hp hpn hX hi
    rw [he] at hstep
    simpa only [mulClearRounds,hw.y] using hstep.seq hnext

/-- 零累加器得到完整乘积，两个输入保持，全部工作位归零。 -/
theorem mulInto_spec (M : MulInPlaceLayout) (n p X Y : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hY : Y<2^n) :
    {{ M.x=X,M.y=Y,M.acc=0,M.work=0 }} mulInto M p
    {{ M.x=X,M.y=Y,M.acc=(X*Y)%p,M.work=0 }} := by
  simpa only [mulInto,hw.y,Nat.sub_self,hornerValue_finish] using
    mulIntoRounds_spec M n p X Y n hw hnd hp hpn hX hY (Nat.le_refl n)

/-- 从该输入的乘积清回零；执行已证模减与模减半，不倒放测量。 -/
theorem mulClear_spec (M : MulInPlaceLayout) (n p X Y : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hp : p%2=1) (hpn : p<2^n)
    (hX : X<p) (hY : Y<2^n) :
    {{ M.x=X,M.y=Y,M.acc=(X*Y)%p,M.work=0 }} mulClear M p
    {{ M.x=X,M.y=Y,M.acc=0,M.work=0 }} := by
  simpa only [mulClear,hw.y,Nat.sub_self,hornerValue_finish] using
    mulClearRounds_spec M n p X Y n hw hnd hp hpn hX hY (Nat.le_refl n)

theorem hornerStep_counts (M : MulInPlaceLayout) (n p i : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hn : 0<n) (hi : i<n) :
    toffoliCount (hornerIntoStep M p i)=8*n-2 ∧ measurementCount (hornerIntoStep M p i)=6*n-2 ∧
    toffoliCount (hornerClearStep M p i)=10*n-1 ∧ measurementCount (hornerClearStep M p i)=8*n-1 := by
  have hi' : i<M.y.length := by simpa only [hw.y] using hi
  have ha := controlledModAdd_resources (M.bit i) M.addView n p (M.add_widths n hw) (M.add_nodup i hnd hi') hn
  have hs := controlledModSub_resources (M.bit i) M.addView n p (M.add_widths n hw) (M.add_nodup i hnd hi') hn
  have hu := modUnary_counts M.unary n p hw.unary hn
  simp only [hornerIntoStep,hornerClearStep,toffoliCount_append,measurementCount_append,
    ha.1,ha.2.1,hs.1,hs.2.1,hu.1,hu.2.1,hu.2.2.1,hu.2.2.2]
  omega

private theorem mulRounds_counts (M : MulInPlaceLayout) (n p k : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hn : 0<n) (hk : k≤n) :
    toffoliCount (mulIntoRounds M p k)=k*(8*n-2) ∧ measurementCount (mulIntoRounds M p k)=k*(6*n-2) ∧
    toffoliCount (mulClearRounds M p k)=k*(10*n-1) ∧ measurementCount (mulClearRounds M p k)=k*(8*n-1) := by
  induction k with
  | zero => simp [mulIntoRounds,mulClearRounds,toffoliCount,measurementCount]
  | succ k ih =>
    have ht := ih (by omega)
    have hs := hornerStep_counts M n p (n-(k+1)) hw hnd hn (by omega)
    simp only [mulIntoRounds,mulClearRounds,hw.y,toffoliCount_append,measurementCount_append,
      ht.1,ht.2.1,ht.2.2.1,ht.2.2.2,hs.1,hs.2.1,hs.2.2.1,hs.2.2.2,Nat.succ_mul]
    simp only [Nat.add_comm,and_self]

/-- 同一正向与清理程序的完整门数；它们不是任意初值上的乘加接口。 -/
theorem mulInPlace_counts (M : MulInPlaceLayout) (n p : Nat)
    (hw : M.Widths n) (hnd : M.wires.Nodup) (hn : 0<n) :
    toffoliCount (mulInto M p)=n*(8*n-2) ∧ measurementCount (mulInto M p)=n*(6*n-2) ∧
    toffoliCount (mulClear M p)=n*(10*n-1) ∧ measurementCount (mulClear M p)=n*(8*n-1) := by
  simpa only [mulInto,mulClear,hw.y] using mulRounds_counts M n p n hw hnd hn (Nat.le_refl n)

end ECDSAAdd.Arithmetic
