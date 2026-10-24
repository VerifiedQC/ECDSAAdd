import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrHybridF4_exists (A : Arena) (swap control : Wire) (a b x y : List Wire)
    (nd : (swap::control::((a++x)++(b++y))).Nodup)
    (owned : ∀q∈swap::control::((a++x)++(b++y)),q∈A.live)
    (positiveB : 0<b.length) (widthB : a.length=b.length)
    (positiveY : 0<y.length) (widthY : x.length=y.length)
    (capacity : A.live.card+2≤935) :
    ∃ P,compileHmrHybridF4 A swap control a b x y=some P := by
  obtain ⟨U,uw,hu⟩ := (A.borrowMany_capacity 1).mpr (by omega)
  have uLive := A.borrowMany_live U 1 uw hu
  obtain ⟨K,kw,hk⟩ := (U.borrowMany_capacity 1).mpr (by omega)
  have kLive := U.borrowMany_live K 1 kw hk
  let u := hmrBorrowPorts uw (0 : Fin 1)
  let k := hmrBorrowPorts kw (0 : Fin 1)
  have up := hmrBorrowPorts_contract A U 1 uw hu
  have kp := hmrBorrowPorts_contract U K 1 kw hk
  have rootU (q : Wire) (h : q∈A.live) : q∈U.live := by rw [uLive.1]; exact Finset.mem_union_left _ h
  have fromU (q : Wire) (h : q∈U.live) : q∈K.live := by rw [kLive.1]; exact Finset.mem_union_left _ h
  have uAway : u∉swap::control::((a++x)++(b++y)) := fun h => up.2.2 0 (owned u h)
  have kAway : k∉swap::control::((a++x)++(b++y)) := fun h => kp.2.2 0 (rootU k (owned k h))
  have uk : u≠k := by
    intro eq
    apply kp.2.2 0
    change k∈U.live
    rw [←eq]
    exact up.2.1 0
  have enlarged : ((swap::control::((a++x)++(b++y)))++[u,k]).Nodup := by
    apply List.nodup_append'.mpr
    refine ⟨nd,by simp [uk],?_⟩
    apply List.disjoint_left.mpr
    intro q hq hw
    simp only [List.mem_cons,List.not_mem_nil,or_false] at hw
    rcases hw with rfl|rfl
    · exact uAway hq
    · exact kAway hq
  have full : (swap::control::u::k::((a++x)++(b++y))).Nodup := by
    apply List.nodup_iff_count.mpr
    intro q
    have h := List.nodup_iff_count.mp enlarged q
    simp only [List.count_cons,List.count_append,List.count_nil] at h ⊢
    omega
  have firstND : (u::control::k::(a++b)).Nodup := by
    apply List.nodup_iff_count.mpr
    intro q
    have h := List.nodup_iff_count.mp full q
    simp only [List.count_cons,List.count_append] at h ⊢
    omega
  have secondND : (u::control::k::(x++y)).Nodup := by
    apply List.nodup_iff_count.mpr
    intro q
    have h := List.nodup_iff_count.mp full q
    simp only [List.count_cons,List.count_append] at h ⊢
    omega
  have inputs (q : Wire) (hq : q∈u::control::k::((a++x)++(b++y))) : q∈K.live := by
    simp only [List.mem_cons] at hq
    rcases hq with rfl|rfl|rfl|hrow
    · exact fromU u (up.2.1 0)
    · exact fromU q (rootU q (owned q (by simp)))
    · exact kp.2.1 0
    · exact fromU q (rootU q (owned q (List.mem_cons_of_mem swap (List.mem_cons_of_mem control hrow))))
  obtain ⟨B,wa,ha⟩ := compileHmrHybridCin_exists K control u k a b positiveB widthB firstND
    (fun q hq => inputs q (by simp_all only [List.mem_cons,List.mem_append]; tauto))
  obtain ⟨C,wb,hb⟩ := compileHmrHybridCin_exists K control u k x y positiveY widthY secondND
    (fun q hq => inputs q (by simp_all only [List.mem_cons,List.mem_append]; tauto))
  have apart : Disjoint (a++b).toFinset (x++y).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    have left := List.count_pos_iff.mpr (List.mem_toFinset.mp hq)
    have right := List.count_pos_iff.mpr (List.mem_toFinset.mp hr)
    have bound := List.nodup_iff_count.mp nd q
    simp only [List.count_cons,List.count_append] at left right bound
    omega
  refine ⟨⟨U,uw,K,kw,B,wa,C,wb⟩,?_⟩
  simp only [compileHmrHybridF4,if_neg (not_not_intro owned),hu]
  dsimp only [Bind.bind,Option.bind]
  rw [hk]
  dsimp only [Bind.bind,Option.bind]
  change (if ¬(swap::control::u::k::((a++x)++(b++y))).Nodup then none else _)=_
  rw [if_neg (not_not_intro full),if_neg (not_not_intro apart),ha]
  dsimp only [Bind.bind,Option.bind]
  rw [hb]
  rfl

end ECDSAAdd.Arithmetic.Paper935
