import ECDSAAdd.Arithmetic.ModularInverse.RoundControls
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic
open scoped ECDSAAdd.ProofLanguage

theorem round_body_bounds (L : KaliskiRoundLayout) (p a : Nat) (z : KState)
    (hi : KInvariant p a z) (hp : p<2^L.low.length)
    (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length) (hr : z.r<2^L.data.width) :
    let A := decide (z.v≠0)
    let code := kaliskiCode z
    let t := kaliskiSwap code.1 z
    t.u<2^L.data.width ∧
    (if code.2 then t.v else 0)≤t.u ∧
    t.r+(if code.2 then t.s else 0)<2^L.data.width ∧
    (A=true → (t.u-(if code.2 then t.v else 0))%2=0) ∧
    (A=true → 2*t.s<2^L.data.width) := by
  have hw : L.data.width=L.low.length+1 := by simp [KaliskiRoundLayout.data,RoundDataLayout.width]
  have hpow : 2^L.low.length≤2^L.data.width := by rw [hw,pow_succ]; omega
  have hut : (kaliskiSwap (kaliskiCode z).1 z).u<2^L.data.width := by
    cases (kaliskiCode z).1 <;> simp [kaliskiSwap] <;> omega
  by_cases hz : z.v=0
  · simpa [kaliskiCode,hz,kaliskiSwap] using (show z.u<2^L.data.width ∧ z.r<2^L.data.width from ⟨hu.trans_le hpow,hr⟩)
  · have h := kaliski_body_bounds p a L.low.length z hi hz hp
    rw [← hw] at h
    exact ⟨hut,h.1,h.2.2.1,fun _ => h.2.1,fun _ => h.2.2.2⟩

theorem step_counter (z : KState) :
    (kaliskiStep z).k=z.k+(decide (z.v≠0)).toNat := by
  unfold kaliskiStep
  split_ifs <;> simp_all [Bool.toNat]

theorem step_done (z : KState) :
    (decide (z.v=0) ^^ (decide (z.v≠0) && decide ((kaliskiStep z).v=0))) =
      decide ((kaliskiStep z).v=0) := by
  by_cases hz : z.v=0
  · simp [kaliskiStep,hz]
  · simp [hz]

/-- 一轮完整正向规格：更新四份数据和计数，保存两位分支，恢复所有工作区。
范围条件来自 I1 的可达状态界；计数更新包含使 v 首次为零的终止轮。 -/
theorem kaliskiRound_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (hr : z.r<2^L.data.width) :
    Triple (RoundState L z z.k 0 false (decide (z.v=0)) false false) (kaliskiRound L i)
      (RoundState L (kaliskiStep z) 0 (kaliskiStep z).k false (decide ((kaliskiStep z).v=0))
        (kaliskiCode z).1 (kaliskiCode z).2) := Proof
  let A := decide (z.v≠0)
  let code := kaliskiCode z
  have hA : (!decide (z.v=0))=A := by simp [A]
  have hcount : (kaliskiStep z).k≤512 := (kaliski_round_count_step i z hk).1.trans (by omega)
  { (z.k+A.toNat)%1024 = (kaliskiStep z).k } as updatedCount by (by
    rw [← step_counter z]
    exact Nat.mod_eq_of_lt (by omega));
  { decide (i < (kaliskiStep z).k) = A } as recoverActive by
    (by simp only [A,kaliski_round_active i z hk]);

  -- Load the activity flag and record which swap/subtraction the data update will use.
  have loadActivity := loadActive_state L hnd z z.k 0 false (decide (z.v=0)) false false
  simp only [Bool.false_xor,hA] at loadActivity
  have recordBranches := recordRound_state L hnd z z.k 0 (decide (z.v=0)) false false
  simp only [Bool.false_xor] at recordBranches
  obtain ⟨hU,hsub,hR,heven,hfit⟩ := round_body_bounds L p a z hinv hp hu hv hr
  { Triple (RoundState L z z.k 0 A (decide (z.v=0)) code.1 code.2)
      (kaliskiBodyProgram L.data L.active L.swap L.subtract)
      (RoundState L (kaliskiStep z) z.k 0 A (decide (z.v=0)) code.1 code.2)
  } as updateData by (by
    have body := kaliskiBodyProgram_state L hnd z z.k 0 A (decide (z.v=0)) code.1 code.2 hU hsub hR heven hfit
    change Triple _ _ (RoundState L (kaliskiBody A code z) z.k 0 A (decide (z.v=0)) code.1 code.2) at body
    rw [kaliski_body_step] at body
    exact body);
  -- Count this active round, update done, then recover and erase the activity flag.
  have countRound := counterInc_state L hnd hw (kaliskiStep z) z.k A (decide (z.v=0)) code.1 code.2
  rw [updatedCount] at countRound
  have updateDone := zeroDone_state L hnd (kaliskiStep z) 0 (kaliskiStep z).k A (decide (z.v=0)) code.1 code.2
  rw [step_done] at updateDone
  have clearActivity := roundActiveXor_state L hnd hw (kaliskiStep z) (kaliskiStep z).k i hi A
    (decide ((kaliskiStep z).v=0)) code.1 code.2
  rw [recoverActive,Bool.xor_self] at clearActivity
  conclude {
    Triple (RoundState L z z.k 0 false (decide (z.v=0)) false false) (kaliskiRound L i)
      (RoundState L (kaliskiStep z) 0 (kaliskiStep z).k false (decide ((kaliskiStep z).v=0)) code.1 code.2)
  } by (((((loadActivity.seq recordBranches).seq updateData).seq countRound).seq updateDone).seq clearActivity);

/-- 一轮完整逆向规格：由更新后 k 恢复活动性，清除保存的两位记录并恢复旧状态。 -/
theorem kaliskiUnround_state (L : KaliskiRoundLayout) (hnd : L.wires.Nodup)
    (hw : L.counter.width=10) (i p a : Nat) (z : KState)
    (hi : i<512) (hk : KRoundCount i z) (hinv : KInvariant p a z)
    (hp : p<2^L.low.length) (hu : z.u<2^L.low.length) (hv : z.v<2^L.low.length)
    (hr : z.r<2^L.data.width) :
    Triple (RoundState L (kaliskiStep z) 0 (kaliskiStep z).k false (decide ((kaliskiStep z).v=0))
        (kaliskiCode z).1 (kaliskiCode z).2) (kaliskiUnround L i)
      (RoundState L z z.k 0 false (decide (z.v=0)) false false) := Proof
  let A := decide (z.v≠0)
  let code := kaliskiCode z
  have hcount : (kaliskiStep z).k≤512 := (kaliski_round_count_step i z hk).1.trans (by omega)
  { decide (i < (kaliskiStep z).k) = A } as recoverActive by
    (by simp only [A,kaliski_round_active i z hk]);
  { ((kaliskiStep z).k+1024-A.toNat)%1024 = z.k } as restoredCount by (by
    rw [step_counter]
    have hk0 : z.k<1024 := by have h := hk.1; omega
    change (z.k+A.toNat+1024-A.toNat)%1024=z.k
    rw [show z.k+A.toNat+1024-A.toNat=z.k+1024 by omega,Nat.add_mod_right,Nat.mod_eq_of_lt hk0]);
  have hdone : (decide ((kaliskiStep z).v=0) ^^ (A && decide ((kaliskiStep z).v=0))) = decide (z.v=0) := by
    have h := step_done z
    change (decide (z.v=0) ^^ (A && decide ((kaliskiStep z).v=0)))=decide ((kaliskiStep z).v=0) at h
    calc
      _ = ((decide (z.v=0) ^^ (A && decide ((kaliskiStep z).v=0))) ^^
          (A && decide ((kaliskiStep z).v=0))) := congrArg (fun b => b ^^ (A && decide ((kaliskiStep z).v=0))) h.symm
      _ = _ := by simp
  -- The updated count recovers the activity flag, allowing done and the data update to be undone.
  have loadActivity := roundActiveXor_state L hnd hw (kaliskiStep z) (kaliskiStep z).k i hi false
    (decide ((kaliskiStep z).v=0)) code.1 code.2
  rw [Bool.false_xor,recoverActive] at loadActivity
  have restoreDone := zeroDone_state L hnd (kaliskiStep z) 0 (kaliskiStep z).k A (decide ((kaliskiStep z).v=0)) code.1 code.2
  rw [hdone] at restoreDone
  obtain ⟨hU,hsub,hR,heven,_⟩ := round_body_bounds L p a z hinv hp hu hv hr
  { Triple (RoundState L (kaliskiStep z) 0 (kaliskiStep z).k A (decide (z.v=0)) code.1 code.2)
      (kaliskiUnbodyProgram L.data L.active L.swap L.subtract)
      (RoundState L z 0 (kaliskiStep z).k A (decide (z.v=0)) code.1 code.2)
  } as restoreData by (by
    have body := kaliskiUnbodyProgram_state L hnd z 0 (kaliskiStep z).k A (decide (z.v=0)) code.1 code.2 hU hsub hR heven
    change Triple (RoundState L (kaliskiBody A code z) 0 (kaliskiStep z).k A (decide (z.v=0)) code.1 code.2) _ _ at body
    rw [kaliski_body_step] at body
    exact body);
  -- Restore the count, then erase the saved branches and activity flag using the old data.
  have restoreCount := counterDec_state L hnd hw z (kaliskiStep z).k A (decide (z.v=0)) code.1 code.2
  rw [restoredCount] at restoreCount
  have clearBranches := recordRound_state L hnd z z.k 0 (decide (z.v=0)) code.1 code.2
  simp only [code,Bool.xor_self] at clearBranches
  have clearActivity := loadActive_state L hnd z z.k 0 A (decide (z.v=0)) false false
  have hA : (!decide (z.v=0))=A := by simp [A]
  rw [hA,Bool.xor_self] at clearActivity
  conclude {
    Triple (RoundState L (kaliskiStep z) 0 (kaliskiStep z).k false (decide ((kaliskiStep z).v=0))
        code.1 code.2) (kaliskiUnround L i)
      (RoundState L z z.k 0 false (decide (z.v=0)) false false)
  } by (((((loadActivity.seq restoreDone).seq restoreData).seq restoreCount).seq clearBranches).seq clearActivity);

end ECDSAAdd.Arithmetic
