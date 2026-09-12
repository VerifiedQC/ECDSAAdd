import ECDSAAdd.Arithmetic.MaskedConstant
import ECDSAAdd.Arithmetic.Constant

namespace ECDSAAdd.Arithmetic
open Instr Correction

/-- 匹配位的AND链控制常数XOR；递归返回时测量清理每层辅助位。 -/
def lookupAnd (a : Wire) (controls scratch target : List Wire) (K : Nat) : Program :=
  match controls, scratch with
  | [], _ => maskedConstant a target K
  | b::bs, s::ss => [CCX a b s] ++ lookupAnd s bs ss target K ++ [measureX s [] [CZ a b]]
  | _::_, [] => []

/-- 同一AND链的门数只取决于后续匹配位数。 -/
theorem lookupAnd_counts (a : Wire) (controls scratch target : List Wire) (K : Nat)
    (hlen : scratch.length=controls.length) :
    toffoliCount (lookupAnd a controls scratch target K)=controls.length ∧
    measurementCount (lookupAnd a controls scratch target K)=controls.length := by
  induction controls generalizing a scratch with
  | nil => simp [lookupAnd,(maskedConstant_counts a target K).1,(maskedConstant_counts a target K).2]
  | cons b bs ih =>
    cases scratch with
    | nil => simp at hlen
    | cons s ss =>
      have h := ih s ss (by simpa using hlen)
      simp [lookupAnd,toffoliCount_append,measurementCount_append,toffoliCount,measurementCount,h.1,h.2,Nat.add_comm]

/-- AND链只改变目标，所有辅助位与控制位恢复。 -/
theorem lookupAnd_correct (a : Wire) (controls scratch target : List Wire) (K : Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hlen : scratch.length=controls.length) (hK : K<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false) :
    (run (lookupAnd a controls scratch target K) m s).phase=s.phase ∧
    (∀ w, w∉target → (run (lookupAnd a controls scratch target K) m s).basis w=s.basis w) ∧
    regValue target (run (lookupAnd a controls scratch target K) m s).basis =
      regValue target s.basis ^^^ (if s.basis a && controls.all s.basis then K else 0) := by
  induction controls generalizing a scratch s m with
  | nil =>
    have hn := List.nodup_cons.mp hnd
    have ht : target.Nodup := (List.nodup_append.mp (by simpa using hn.2)).2.1
    have ha : a∉target := by intro h; exact hn.1 (by simp [h])
    simpa [lookupAnd] using maskedConstant_correct a target K ht ha hK s m
  | cons b bs ih =>
    cases scratch with
    | nil => simp at hlen
    | cons c cs =>
      have hn : (c::(bs++cs++target)).Nodup := by
        apply List.nodup_iff_count.mpr
        intro w
        have h := List.nodup_iff_count.mp hnd w
        simp only [List.count_cons,List.count_append] at h ⊢
        omega
      have hct : c∉bs ∧ c∉cs := by
        have h := (List.nodup_cons.mp hn).1
        simp only [List.mem_append,not_or] at h
        exact h.1
      have ha0 := (List.nodup_cons.mp hnd).1
      have hb0 := (List.nodup_cons.mp (List.nodup_cons.mp hnd).2).1
      have hdist : a≠c ∧ b≠c ∧ c∉target := by
        refine ⟨?_,?_,?_⟩
        · intro h; subst a; exact ha0 (by simp)
        · intro h; subst b; exact hb0 (by simp)
        · intro h; exact (List.nodup_cons.mp hn).1 (by simp [h])
      have hab : a∉target ∧ b∉target := by
        constructor
        · intro h; exact ha0 (by simp [h])
        · intro h; exact hb0 (by simp [h])
      let s1 : State := ⟨s.phase,writeBit s.basis c (s.basis a && s.basis b)⟩
      have hc0 := hz c (by simp)
      have he : ∀ w, w≠c → s1.basis w=s.basis w := by
        intro w hw; simp [s1,writeBit,hw]
      have hz1 : ∀ w∈cs, s1.basis w=false := by
        intro w hw; rw [he w (by aesop)]; exact hz w (by simp [hw])
      obtain ⟨hp,hout,hval⟩ := ih c cs hn (by simpa using hlen) s1 m hz1
      let t := run (lookupAnd c bs cs target K) m s1
      change t.phase=s.phase at hp
      change ∀ w, w∉target → t.basis w=s1.basis w at hout
      change regValue target t.basis = _ at hval
      have htA : t.basis a=s.basis a := (hout a hab.1).trans (he a hdist.1)
      have htB : t.basis b=s.basis b := (hout b hab.2).trans (he b hdist.2.1)
      have htC : t.basis c=(s.basis a && s.basis b) := by rw [hout c hdist.2.2]; simp [s1,writeBit]
      have hfirst : run [CCX a b c] m s=s1 := by simp [run,s1,hc0]
      rw [lookupAnd,run_append,run_take,run_append,run_take]
      simp only [measurementCount_append,measurementCount,Nat.zero_add,List.drop_zero,hfirst]
      change (run [measureX c [] [CZ a b]] _ t).phase=s.phase ∧ _
      have hpEnd : (run [measureX c [] [CZ a b]] (m.drop (measurementCount (lookupAnd c bs cs target K))) t).phase=s.phase := by
        change (measureAndCorrect c [] [CZ a b] ((m.drop (measurementCount (lookupAnd c bs cs target K))).headD false) t).phase = s.phase
        cases hm : ((m.drop (measurementCount (lookupAnd c bs cs target K))).headD false) <;>
          simp [measureAndCorrect,correct,htC,hp,writeBit,hdist.1,hdist.2.1,htA,htB]
      refine ⟨hpEnd,?_,?_⟩
      · intro w hw
        by_cases h : w=c
        · subst w; simp [run,measureAndCorrect,writeBit,hc0]
        · simpa [run,measureAndCorrect,writeBit,h] using (hout w hw).trans (he w h)
      · have hr : regValue target s1.basis=regValue target s.basis :=
          regValue_congr _ _ _ (fun w hw => he w (by aesop))
        have hb : bs.all s1.basis=bs.all s.basis := by
          apply Bool.eq_iff_iff.mpr
          simp only [List.all_eq_true]
          constructor <;> intro h w hw
          · rw [← he w (by aesop)]; exact h w hw
          · rw [he w (by aesop)]; exact h w hw
        have hf : regValue target (run [measureX c [] [CZ a b]] (m.drop (measurementCount (lookupAnd c bs cs target K))) t).basis=regValue target t.basis := by
          apply regValue_congr; intro w hw
          simp [run,measureAndCorrect,writeBit,show w≠c by aesop]
        rw [hf,hval,hr,hb]
        simp [s1,writeBit,List.all_cons,Bool.and_assoc]

private theorem all_bits_value (r : List Wire) (s : BasisState) :
    r.all s=true ↔ regValue r s=2^r.length-1 := by
  have hones : regValue r (fun _ => true)=2^r.length-1 := by
    induction r with
    | nil => rfl
    | cons a as ih =>
      have hp := Nat.two_pow_pos as.length
      simp only [regValue,List.foldr_cons,ite_true,List.length_cons,Nat.pow_succ] at ih ⊢
      omega
  rw [← hones,regValue_eq_iff]
  simp

/-- 一个地址表项：翻转不匹配的字面位，AND控制常数，恢复地址。 -/
def lookupRow (a : Wire) (controls scratch target : List Wire) (j K : Nat) : Program :=
  xorConstant (a::controls) (j ^^^ 15) ++ lookupAnd a controls scratch target K ++
    xorConstant (a::controls) (j ^^^ 15)

private theorem lookup_match (D j : Nat) : D ^^^ (j ^^^ 15)=15 ↔ D=j := by
  constructor
  · intro h
    have h1 := congrArg (fun v : Nat => v ^^^ 15) h
    have h2 := congrArg (fun v : Nat => v ^^^ j) h1
    simpa [Nat.xor_assoc] using h2
  · intro h; subst D; simp

theorem lookupRow_correct (a : Wire) (controls scratch target : List Wire) (j K : Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3)
    (hj : j<16) (hK : K<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false) :
    (run (lookupRow a controls scratch target j K) m s).phase=s.phase ∧
    (∀ w, w∉target → (run (lookupRow a controls scratch target j K) m s).basis w=s.basis w) ∧
    regValue target (run (lookupRow a controls scratch target j K) m s).basis =
      regValue target s.basis ^^^ (if regValue (a::controls) s.basis=j then K else 0) := by
  let addr := a::controls
  have hn : (addr++(scratch++target)).Nodup := by simpa [addr,List.append_assoc] using hnd
  have hn' := List.nodup_append.mp hn
  have hj' : j ^^^ 15 < 2^addr.length := by
    have h := Nat.xor_lt_two_pow (n:=4) hj (by decide : 15<2^4)
    simpa [addr,hc] using h
  have hdis : ∀ w∈scratch++target, w∉addr := by
    intro w hw ha; exact hn'.2.2 w ha w hw rfl
  let s1 := run (xorConstant addr (j ^^^ 15)) m s
  obtain ⟨hp1,ho1,hv1⟩ := xorConstant_correct addr hn'.1 (j ^^^ 15) hj' s m
  change s1.phase=s.phase at hp1
  change ∀ w, w∉addr → s1.basis w=s.basis w at ho1
  change regValue addr s1.basis=regValue addr s.basis ^^^ (j ^^^ 15) at hv1
  have hz1 : ∀ w∈scratch, s1.basis w=false := by
    intro w hw; rw [ho1 w (hdis w (List.mem_append_left _ hw))]; exact hz w hw
  let s2 := run (lookupAnd a controls scratch target K) m s1
  obtain ⟨hp2,ho2,hv2⟩ := lookupAnd_correct a controls scratch target K hnd (hs.trans hc.symm) hK s1 m hz1
  change s2.phase=s1.phase at hp2
  change ∀ w, w∉target → s2.basis w=s1.basis w at ho2
  change regValue target s2.basis=_ at hv2
  have hat : ∀ w∈addr, w∉target := by
    intro w hw ht; exact hdis w (List.mem_append_right _ ht) hw
  have haddr : regValue addr s2.basis=regValue addr s1.basis := regValue_congr _ _ _ (fun w hw => ho2 w (hat w hw))
  have hvtarget : regValue target s1.basis=regValue target s.basis :=
    regValue_congr _ _ _ (fun w hw => ho1 w (hdis w (List.mem_append_right _ hw)))
  have hcond : (s1.basis a && controls.all s1.basis)=true ↔ regValue addr s.basis=j := by
    change addr.all s1.basis=true ↔ _
    rw [all_bits_value,hv1]
    simpa [addr,hc] using lookup_match (regValue addr s.basis) j
  let records := m.drop (measurementCount (lookupAnd a controls scratch target K))
  let s3 := run (xorConstant addr (j ^^^ 15)) records s2
  obtain ⟨hp3,ho3,hv3⟩ := xorConstant_correct addr hn'.1 (j ^^^ 15) hj' s2 records
  change s3.phase=s2.phase at hp3
  change ∀ w, w∉addr → s3.basis w=s2.basis w at ho3
  change regValue addr s3.basis=_ at hv3
  have hrestore : regValue addr s3.basis=regValue addr s.basis := by
    rw [hv3,haddr,hv1]; simp
  have hrun : run (lookupRow a controls scratch target j K) m s=s3 := by
    change run (xorConstant addr (j ^^^ 15) ++ lookupAnd a controls scratch target K ++ xorConstant addr (j ^^^ 15)) m s=s3
    rw [run_append,run_take,run_append,run_take]
    simp only [measurementCount_append,(xorConstant_counts addr (j ^^^ 15)).2,Nat.zero_add,List.drop_zero]
    rfl
  rw [hrun]
  refine ⟨hp3.trans (hp2.trans hp1),?_,?_⟩
  · intro w hw
    by_cases ha : w∈addr
    · exact (regValue_eq_iff addr _ _).mp hrestore w ha
    · exact (ho3 w ha).trans ((ho2 w hw).trans (ho1 w ha))
  · have ht3 : regValue target s3.basis=regValue target s2.basis :=
      regValue_congr _ _ _ (fun w hw => ho3 w (hdis w (List.mem_append_right _ hw)))
    rw [ht3,hv2,hvtarget]
    simp only [hcond]
    rfl

/-- 显式逐项查表，不跳过零表项。 -/
def lookupRows (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (rows : List Nat) : Program := rows.flatMap (fun j => lookupRow a controls scratch target j (table j))

private theorem lookupRows_correct (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (rows : List Nat) (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3) (hr : rows.Nodup)
    (hrows : ∀ j∈rows, j<16) (ht : ∀ j<16, table j<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false) :
    (run (lookupRows a controls scratch target table rows) m s).phase=s.phase ∧
    (∀ w, w∉target → (run (lookupRows a controls scratch target table rows) m s).basis w=s.basis w) ∧
    regValue target (run (lookupRows a controls scratch target table rows) m s).basis =
      regValue target s.basis ^^^ (if regValue (a::controls) s.basis∈rows then table (regValue (a::controls) s.basis) else 0) := by
  have hsep : ∀ w∈a::controls++scratch, w∉target := by
    have h : ((a::controls++scratch)++target).Nodup := by simpa using hnd
    have hh := (List.nodup_append.mp h).2.2
    intro w hw ht; exact hh w hw w ht rfl
  induction rows generalizing s m with
  | nil => simp [lookupRows,run]
  | cons j js ih =>
    have hj := hrows j (by simp)
    let s1 := run (lookupRow a controls scratch target j (table j)) m s
    obtain ⟨hp,ho,hv⟩ := lookupRow_correct a controls scratch target j (table j) hnd hc hs hj (ht j hj) s m hz
    change s1.phase=s.phase at hp
    change ∀ w, w∉target → s1.basis w=s.basis w at ho
    change regValue target s1.basis=_ at hv
    have ha : regValue (a::controls) s1.basis=regValue (a::controls) s.basis := by
      apply regValue_congr; intro w hw
      exact ho w (hsep w (by simp only [List.cons_append,List.mem_cons,List.mem_append] at hw ⊢; tauto))
    have hz1 : ∀ w∈scratch, s1.basis w=false := by
      intro w hw; rw [ho w (hsep w (by simp [hw]))]; exact hz w hw
    obtain ⟨hp2,ho2,hv2⟩ := ih (List.nodup_cons.mp hr).2
      (fun k hk => hrows k (by simp [hk])) s1
      (m.drop (measurementCount (lookupRow a controls scratch target j (table j)))) hz1
    have hprog : lookupRows a controls scratch target table (j::js)=lookupRow a controls scratch target j (table j) ++ lookupRows a controls scratch target table js := rfl
    simp only [hprog,run_append,run_take]
    refine ⟨hp2.trans hp,fun w hw => (ho2 w hw).trans (ho w hw),?_⟩
    rw [hv2,ha,hv]
    by_cases h : regValue (a::controls) s.basis=j
    · have hjnot := (List.nodup_cons.mp hr).1
      simp [h,hjnot]
    · simp [h]

/-- 四位地址、十六项经典表的XOR查表。 -/
def lookup (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat) : Program :=
  lookupRows a controls scratch target table (List.range 16)

/-- 查表保持地址与目标外所有线路，对全部测量记录恢复相位。 -/
theorem lookup_correct (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3)
    (ht : ∀ j<16, table j<2^target.length)
    (s : State) (m : List Bool) (hz : ∀ w∈scratch, s.basis w=false) :
    (run (lookup a controls scratch target table) m s).phase=s.phase ∧
    (∀ w, w∉target → (run (lookup a controls scratch target table) m s).basis w=s.basis w) ∧
    regValue target (run (lookup a controls scratch target table) m s).basis =
      regValue target s.basis ^^^ table (regValue (a::controls) s.basis) := by
  have haddr : regValue (a::controls) s.basis<16 := by
    simpa [hc] using regValue_lt (a::controls) s.basis
  simpa [lookup,List.mem_range,haddr] using lookupRows_correct a controls scratch target table
    (List.range 16) hnd hc hs List.nodup_range (by simp) ht s m hz

/-- 公开寄存器接口；工作辅助位初末均为零。 -/
theorem lookup_spec (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3)
    (ht : ∀ j<16, table j<2^target.length) (D T : Nat) :
    {{ (a::controls) = D, target = T, scratch = 0 }} lookup a controls scratch target table
    {{ (a::controls) = D, target = (T ^^^ table D), scratch = 0 }} := by
  intro s m h
  simp only [Holds.holds] at h ⊢
  have hz : ∀ w∈scratch, s.basis w=false := (regValue_zero scratch s.basis).mp h.2
  obtain ⟨hp,ho,hv⟩ := lookup_correct a controls scratch target table hnd hc hs ht s m hz
  have hd : ((a::controls++scratch)++target).Nodup := by simpa using hnd
  have hn := (List.nodup_append.mp hd).2.2
  have ha : regValue (a::controls) (run (lookup a controls scratch target table) m s).basis=D := by
    rw [← h.1.1]; apply regValue_congr; intro w hw
    apply ho w; intro ht; exact hn w (by simp only [List.cons_append,List.mem_cons,List.mem_append] at hw ⊢; tauto) w ht rfl
  have hw : regValue scratch (run (lookup a controls scratch target table) m s).basis=0 := by
    rw [← h.2]; apply regValue_congr; intro w hw
    apply ho w; intro ht; exact hn w (by simp [hw]) w ht rfl
  exact ⟨hp,⟨ha,by simpa [h.1.1,h.1.2] using hv⟩,hw⟩

/-- 固定门列包含16条三层AND链，包括零表项。 -/
theorem lookup_counts (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hc : controls.length=3) (hs : scratch.length=3) :
    toffoliCount (lookup a controls scratch target table)=48 ∧
    measurementCount (lookup a controls scratch target table)=48 := by
  have hrow (j : Nat) : toffoliCount (lookupRow a controls scratch target j (table j))=3 ∧
      measurementCount (lookupRow a controls scratch target j (table j))=3 := by
    have h := lookupAnd_counts a controls scratch target (table j) (hs.trans hc.symm)
    simp [lookupRow,toffoliCount_append,measurementCount_append,
      (xorConstant_counts (a::controls) (j ^^^ 15)).1,
      (xorConstant_counts (a::controls) (j ^^^ 15)).2,h.1,h.2,hc]
  have hrows (rows : List Nat) : toffoliCount (lookupRows a controls scratch target table rows)=3*rows.length ∧
      measurementCount (lookupRows a controls scratch target table rows)=3*rows.length := by
    induction rows with
    | nil => simp [lookupRows,toffoliCount,measurementCount]
    | cons j js ih =>
      have hprog : lookupRows a controls scratch target table (j::js)=lookupRow a controls scratch target j (table j) ++ lookupRows a controls scratch target table js := rfl
      simp [hprog,toffoliCount_append,measurementCount_append,(hrow j).1,(hrow j).2,ih.1,ih.2,Nat.mul_add,Nat.add_comm]
  simpa [lookup] using hrows (List.range 16)

theorem lookupAnd_wires_subset (a : Wire) (controls scratch target : List Wire) (K : Nat) :
    wires (lookupAnd a controls scratch target K) ⊆ (a::controls++scratch++target).toFinset := by
  induction controls generalizing a scratch with
  | nil =>
    intro w hw
    have h := maskedConstant_wires_subset a target K hw
    simpa [lookupAnd] using (show w∈(a::[]++scratch++target).toFinset by
      simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at h ⊢; tauto)
  | cons b bs ih =>
    cases scratch with
    | nil => simp [lookupAnd,wires]
    | cons c cs =>
      intro w hw
      simp only [lookupAnd,wires_append,wires,Instr.wires,correctionWires,
        Finset.mem_union,Finset.mem_insert,Finset.mem_singleton,Finset.notMem_empty,or_false] at hw
      have h := ih c cs
      simp only [Finset.subset_iff,List.mem_toFinset,List.mem_cons,List.mem_append] at h
      simp only [List.mem_toFinset,List.mem_cons,List.mem_append]
      specialize h (x:=w)
      tauto

/-- 查表支持包含于地址、三辅助位及目标；零表项不强迫目标位出现在实际支持中。 -/
theorem lookup_wires_subset (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat) :
    wires (lookup a controls scratch target table) ⊆ (a::controls++scratch++target).toFinset := by
  have hrow (j : Nat) : wires (lookupRow a controls scratch target j (table j)) ⊆
      (a::controls++scratch++target).toFinset := by
    intro w hw
    simp only [lookupRow,wires_append,Finset.mem_union] at hw
    have hx := xorConstant_wires_subset (a::controls) (j ^^^ 15)
    have ha := lookupAnd_wires_subset a controls scratch target (table j)
    rcases hw with (hw|hw)|hw
    · have h := hx hw; simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at h ⊢; tauto
    · exact ha hw
    · have h := hx hw; simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at h ⊢; tauto
  have hrows (rows : List Nat) : wires (lookupRows a controls scratch target table rows) ⊆
      (a::controls++scratch++target).toFinset := by
    induction rows with
    | nil => simp [lookupRows,wires]
    | cons j js ih =>
      change wires (lookupRow a controls scratch target j (table j) ++ lookupRows a controls scratch target table js) ⊆ _
      rw [wires_append]
      exact Finset.union_subset (hrow j) ih
  exact hrows (List.range 16)

/-- 比支持集更强的frame：所有目标外线路（包括控制与scratch）初末相同。 -/
theorem lookup_frame (a : Wire) (controls scratch target : List Wire) (table : Nat → Nat)
    (hnd : (a::(controls++scratch++target)).Nodup)
    (hc : controls.length=3) (hs : scratch.length=3)
    (ht : ∀ j<16, table j<2^target.length)
    (s : State) (m : List Bool) (hz : regValue scratch s.basis=0) (w : Wire) (hw : w∉target) :
    (run (lookup a controls scratch target table) m s).basis w=s.basis w :=
  (lookup_correct a controls scratch target table hnd hc hs ht s m ((regValue_zero _ _).mp hz)).2.1 w hw

end ECDSAAdd.Arithmetic
