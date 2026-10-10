import ECDSAAdd.Arithmetic.ModularMultiplication.MontStageSpec
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic

open scoped ECDSAAdd.ProofLanguage

/-- 常数段公开准备契约：记录带与借位明确保留，临时工作区归零。 -/
private theorem constPreparePrefix_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0) :
    (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis w=s.basis w) ∧
    regValue L.acc (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis=montgomeryValue p X Y k%p ∧
    regValue L.history (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis=montgomeryQuotient p X Y k ∧
    (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis L.flag=decide (montgomeryValue p X Y k<p) := Proof
  -- The rounds compute the unreduced value and retain the quotient history.
  have h1 := constPrepareRounds_correct L y p k X Y hw hnd hy hk hp hp16 hX s m vy va vh vw
  let s1 := run (constPrepareRounds L y p X k) m s
  let m1 := m.drop (measurementCount (constPrepareRounds L y p X k))
  { regValue L.acc s1.basis=montgomeryValue p X Y k } as accumulated by h1.2.2.1;
  { regValue L.history s1.basis=montgomeryQuotient p X Y k } as historyRecorded by h1.2.2.2;
  have ad := L.inputs_disjoint [] y hnd
  have keep1 (w : Wire) (hw' : w∈y++[L.flag]++L.work) : s1.basis w=s.basis w := by
    have hh := List.disjoint_left.mp ad hw'
    exact h1.2.1 w (fun hm => hh (List.mem_append_left _ hm)) (fun hm => hh (List.mem_append_right _ hm))
  have work1 : regValue L.work s1.basis=0 :=
    (regValue_congr _ _ _ (fun w hw' => keep1 w (by simp [hw']))).trans vw
  have clean (r : List Wire) (hr : r⊆L.work) := L.work_clean _ work1 r hr
  -- One normalization reduces the accumulator; the quotient history is retained.
  have h2 := montNormalize_correct L p (montgomeryValue p X Y k) (L.normalize_nodup [] y hnd)
    (hw.table.trans hw.acc.symm) (by rw [hw.carry,hw.acc]) hw.acc hp (montgomeryValue_bound p X Y k hX)
    s1 m1 accumulated (clean L.table (by intro w hh; simp [MontStageLayout.work,hh]))
    (clean L.carry (by intro w hh; simp [MontStageLayout.work,hh])) (L.cin_clean _ work1)
    ((keep1 _ (by simp)).trans vf)
  let finished := run (montNormalize L p) m1 s1
  { regValue L.history finished.basis=montgomeryQuotient p X Y k } as historyAfter by (by
    have ha := L.acc_disjoint [] y hnd
    apply Eq.trans (regValue_congr _ _ _ ?_) historyRecorded
    intro w hw'
    apply h2.2.1 w (List.disjoint_left.mp ha (by simp [hw']))
    intro he; subst w
    have hh := List.nodup_iff_count.mp hnd L.flag
    have hm := List.count_pos_iff.mpr hw'
    simp only [MontStageLayout.wires,List.count_append,List.count_cons,List.count_nil,beq_self_eq_true,if_true] at hh; omega);
  { regValue L.acc finished.basis=montgomeryValue p X Y k%p } as reduced by h2.2.2.1;
  { finished.basis L.flag=decide (montgomeryValue p X Y k<p) } as reductionFlag by h2.2.2.2;
  { finished.phase=s.phase } as phaseRestored by h2.1.trans h1.1;
  rw [run_append,run_take]
  conclude {
    finished.phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → finished.basis w=s.basis w) ∧
    regValue L.acc finished.basis=montgomeryValue p X Y k%p ∧
    regValue L.history finished.basis=montgomeryQuotient p X Y k ∧
    finished.basis L.flag=decide (montgomeryValue p X Y k<p)
  } by ⟨phaseRestored, fun w ha hh hf => (h2.2.1 w ha hf).trans (h1.2.1 w ha hh),
      reduced, historyAfter, reductionFlag⟩;

private theorem constPreparePrefix_spec (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} (constPrepareRounds L y p X k ++ montNormalize L p)
    {{ y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k,
       L.flag=decide (montgomeryValue p X Y k<p),L.work=0 }} := Proof
  For every s, m assuming h
  simp only [Holds.holds] at h ⊢
  rcases h with ⟨⟨⟨⟨vy,va⟩,vh⟩,vf⟩,vw⟩
  have hh := constPreparePrefix_correct L y p k X Y hw hnd hy hk hp hp16 hX s m vy va vh vf vw
  have hd := L.stable_disjoint [] y hnd
  have keep (r : List Wire) (hr : r⊆y++L.work) : regValue r (run ((constPrepareRounds L y p X k ++ montNormalize L p)) m s).basis=regValue r s.basis := by
    apply regValue_congr; intro w hw'
    have hn := List.disjoint_left.mp hd (hr hw')
    exact hh.2.1 w (fun hm => hn (by simp [hm])) (fun hm => hn (by simp [hm])) (fun he => hn (by simp [he]))
  let finished := run (constPrepareRounds L y p X k ++ montNormalize L p) m s
  { regValue y finished.basis=Y } as inputYPreserved by
    (keep y (by intro w hw'; simp [hw'])).trans vy;
  { regValue L.work finished.basis=0 } as workspaceClean by
    (keep L.work (by intro w hw'; simp [hw'])).trans vw;
  conclude {
    finished.phase=s.phase ∧
    ((((regValue y finished.basis=Y ∧
      regValue L.acc finished.basis=montgomeryValue p X Y k%p) ∧
      regValue L.history finished.basis=montgomeryQuotient p X Y k) ∧
      finished.basis L.flag=decide (montgomeryValue p X Y k<p)) ∧ regValue L.work finished.basis=0)
  } by ⟨hh.1, ⟨⟨⟨inputYPreserved, hh.2.2.1⟩, hh.2.2.2.1⟩, hh.2.2.2.2⟩,
      workspaceClean⟩;

theorem constPrepare_correct (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=0) (vh : regValue L.history s.basis=0)
    (vf : s.basis L.flag=false) (vw : regValue L.work s.basis=0) :
    (run (constPrepare L y p X) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run (constPrepare L y p X) m s).basis w=s.basis w) ∧
    regValue L.acc (run (constPrepare L y p X) m s).basis=montgomeryValue p X Y 64%p ∧
    regValue L.history (run (constPrepare L y p X) m s).basis=montgomeryQuotient p X Y 64 ∧
    (run (constPrepare L y p X) m s).basis L.flag=decide (montgomeryValue p X Y 64<p) := by
  simpa only [constPrepare] using constPreparePrefix_correct L y p 64 X Y hw hnd hy (by omega) hp hp16 hX s m vy va vh vf vw

theorem constPrepare_spec (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} constPrepare L y p X
    {{ y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64,
       L.flag=decide (montgomeryValue p X Y 64<p),L.work=0 }} := by
  exact constPreparePrefix_spec L y p 64 X Y hw hnd hy (by omega) hp hp16 hX


private theorem constRestorePrefix_correct (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y k%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y k)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y k<p)) (vw : regValue L.work s.basis=0) :
    (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis w=s.basis w) ∧
    regValue L.acc (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis=0 ∧
    regValue L.history (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis=0 ∧
    (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis L.flag=false := Proof
  -- Undo normalization before reversing the rounds.
  have clean (r : List Wire) (hr : r⊆L.work) := L.work_clean _ vw r hr
  have h1 := montDenormalize_correct L p (montgomeryValue p X Y k) (L.normalize_nodup [] y hnd)
    (hw.table.trans hw.acc.symm) (by rw [hw.carry,hw.acc]) hw.acc hp (montgomeryValue_bound p X Y k hX)
    s m va (clean L.table (by intro w hh; simp [MontStageLayout.work,hh]))
    (clean L.carry (by intro w hh; simp [MontStageLayout.work,hh])) (L.cin_clean _ vw) vf
  let s1 := run (montDenormalize L p) m s
  let m1 := m.drop (measurementCount (montDenormalize L p))
  have keep1 (w : Wire) (hw' : w∈y++L.history++L.work) : s1.basis w=s.basis w := by
    have hh := List.nodup_iff_count.mp hnd w
    have hm := List.count_pos_iff.mpr hw'
    simp only [MontStageLayout.wires,List.count_append,List.count_cons,List.count_nil] at hh hm
    apply h1.2.1 w
    · intro ha; have hma := List.count_pos_iff.mpr ha; omega
    · intro he; subst w; simp only [beq_self_eq_true,if_true] at hh; omega
  have keepReg (r : List Wire) (hr : r⊆y++L.history++L.work) : regValue r s1.basis=regValue r s.basis :=
    regValue_congr _ _ _ (fun w hw' => keep1 w (hr hw'))
  { regValue L.acc s1.basis=montgomeryValue p X Y k } as unreduced by h1.2.2.1;
  { regValue L.history s1.basis=montgomeryQuotient p X Y k } as historyRetained by
    (keepReg L.history (by intro w hh; simp [hh])).trans vh;
  -- The retained quotient digits let the reverse rounds clear accumulator and history.
  have h2 := constRestoreRounds_correct L y p k X Y hw hnd hy hk hp hp16 hX s1 m1
    ((keepReg y (by intro w hh; simp [hh])).trans vy)
    unreduced historyRetained
    ((keepReg L.work (by intro w hh; simp [hh])).trans vw)
  let finished := run (constRestoreRounds L y p X k) m1 s1
  { finished.basis L.flag=false } as flagCleared by (by
    have hout := List.disjoint_left.mp (L.inputs_disjoint [] y hnd) (show L.flag∈y++[L.flag]++L.work by simp)
    exact (h2.2.1 L.flag (fun h => hout (by simp [h])) (fun h => hout (by simp [h]))).trans h1.2.2.2);
  { regValue L.acc finished.basis=0 } as accumulatorCleared by h2.2.2.1;
  { regValue L.history finished.basis=0 } as historyCleared by h2.2.2.2;
  { finished.phase=s.phase } as phaseRestored by h2.1.trans h1.1;
  rw [run_append,run_take]
  conclude {
    finished.phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → finished.basis w=s.basis w) ∧
    regValue L.acc finished.basis=0 ∧ regValue L.history finished.basis=0 ∧
    finished.basis L.flag=false
  } by ⟨phaseRestored, fun w ha hh hf => (h2.2.1 w ha hh).trans (h1.2.1 w ha hf),
      accumulatorCleared, historyCleared, flagCleared⟩;

private theorem constRestorePrefix_spec (L : MontStageLayout) (y : List Wire) (p k X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hk : k≤64) (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=montgomeryValue p X Y k%p,L.history=montgomeryQuotient p X Y k,
       L.flag=decide (montgomeryValue p X Y k<p),L.work=0 }} (montDenormalize L p ++ constRestoreRounds L y p X k)
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} := Proof
  For every s, m assuming h
  simp only [Holds.holds] at h ⊢
  rcases h with ⟨⟨⟨⟨vy,va⟩,vh⟩,vf⟩,vw⟩
  have hh := constRestorePrefix_correct L y p k X Y hw hnd hy hk hp hp16 hX s m vy va vh vf vw
  have hd := L.stable_disjoint [] y hnd
  have keep (r : List Wire) (hr : r⊆y++L.work) : regValue r (run ((montDenormalize L p ++ constRestoreRounds L y p X k)) m s).basis=regValue r s.basis := by
    apply regValue_congr; intro w hw'
    have hn := List.disjoint_left.mp hd (hr hw')
    exact hh.2.1 w (fun hm => hn (by simp [hm])) (fun hm => hn (by simp [hm])) (fun he => hn (by simp [he]))
  let finished := run (montDenormalize L p ++ constRestoreRounds L y p X k) m s
  { regValue y finished.basis=Y } as inputYPreserved by
    (keep y (by intro w hw'; simp [hw'])).trans vy;
  { regValue L.work finished.basis=0 } as workspaceClean by
    (keep L.work (by intro w hw'; simp [hw'])).trans vw;
  conclude {
    finished.phase=s.phase ∧
    ((((regValue y finished.basis=Y ∧
      regValue L.acc finished.basis=0) ∧
      regValue L.history finished.basis=0) ∧
      finished.basis L.flag=false) ∧ regValue L.work finished.basis=0)
  } by ⟨hh.1, ⟨⟨⟨inputYPreserved, hh.2.2.1⟩, hh.2.2.2.1⟩, hh.2.2.2.2⟩,
      workspaceClean⟩;

theorem constRestore_correct (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p)
    (s : State) (m : List Bool) (vy : regValue y s.basis=Y)
    (va : regValue L.acc s.basis=montgomeryValue p X Y 64%p) (vh : regValue L.history s.basis=montgomeryQuotient p X Y 64)
    (vf : s.basis L.flag=decide (montgomeryValue p X Y 64<p)) (vw : regValue L.work s.basis=0) :
    (run (constRestore L y p X) m s).phase=s.phase ∧
    (∀ w, w∉L.acc → w∉L.history → w≠L.flag → (run (constRestore L y p X) m s).basis w=s.basis w) ∧
    regValue L.acc (run (constRestore L y p X) m s).basis=0 ∧
    regValue L.history (run (constRestore L y p X) m s).basis=0 ∧
    (run (constRestore L y p X) m s).basis L.flag=false := by
  simpa only [constRestore] using constRestorePrefix_correct L y p 64 X Y hw hnd hy (by omega) hp hp16 hX s m vy va vh vf vw

theorem constRestore_spec (L : MontStageLayout) (y : List Wire) (p X Y : Nat)
    (hw : L.Widths) (hnd : (y++L.wires).Nodup) (hy : 256≤y.length)
    (hp : p<2^256) (hp16 : p%16=15) (hX : X<p) :
    {{ y=Y,L.acc=montgomeryValue p X Y 64%p,L.history=montgomeryQuotient p X Y 64,
       L.flag=decide (montgomeryValue p X Y 64<p),L.work=0 }} constRestore L y p X
    {{ y=Y,L.acc=0,L.history=0,L.flag=false,L.work=0 }} := by
  simpa only [constRestore] using constRestorePrefix_spec L y p 64 X Y hw hnd hy (by omega) hp hp16 hX

end ECDSAAdd.Arithmetic
