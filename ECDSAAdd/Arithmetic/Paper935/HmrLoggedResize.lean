import ECDSAAdd.Arithmetic.Paper935.WindowAllocator

namespace ECDSAAdd.Arithmetic.Paper935

/-- Check source-selected growth addresses. This does not choose addresses
or model a second home-pool allocator. The original resize planner is unchanged. -/
def planRowResizeLog (A : Arena) (r : WindowRow) (width : Nat) (fresh : List Wire) :
    Option (Arena × WindowRow × Program) :=
  if (r.sign::r.payload).Nodup ∧ (r.sign::r.payload).toFinset⊆A.live then
    if r.payload.length≤width then
      if fresh.length=width-r.payload.length ∧ fresh.Nodup then do
        let B ← A.reserve fresh.toFinset
        pure (B,⟨r.payload++fresh,r.sign⟩,growRow r.sign fresh)
      else none
    else if fresh=[] then planRowResize A r width else none
  else none

theorem growRow_reserved (A B : Arena) (lo fresh : List Wire) (sign : Wire)
    (nd : (sign::lo).Nodup) (owned : (sign::lo).toFinset⊆A.live)
    (freshND : fresh.Nodup) (reserved : A.reserve fresh.toFinset=some B)
    (s : State) (m : List Bool) (ready : A.Ready s.basis) :
    B.Ready (run (growRow sign fresh) m s).basis ∧
    (sign::(lo++fresh)).Nodup ∧
    signedRegValue ((lo++fresh)++[sign]) (run (growRow sign fresh) m s).basis=
      signedRegValue (lo++[sign]) s.basis := by
  have valid := (A.reserve_success fresh.toFinset).mp ⟨B,reserved⟩
  have clean := A.reserve_ready B fresh.toFinset s.basis ready reserved
  have distinct : (sign::(lo++fresh)).Nodup := by
    change ((sign::lo)++fresh).Nodup
    apply List.nodup_append.mpr
    refine ⟨nd,freshND,?_⟩
    intro a ha b hb eq
    subst b
    exact Finset.disjoint_left.mp valid.2 (owned (List.mem_toFinset.mpr ha)) (List.mem_toFinset.mpr hb)
  have live : B.live=A.live∪fresh.toFinset := by
    simp only [Arena.reserve,dif_pos valid,Option.some.injEq] at reserved
    cases reserved
    rfl
  refine ⟨?_,distinct,growRow_values lo fresh sign distinct s m (fun q hq => clean.2 q (List.mem_toFinset.mpr hq))⟩
  intro q bound absent
  rw [(growRow_frame sign fresh s m).2 q (by
    intro member
    exact absent (by rw [live]; exact Finset.mem_union_right _ (List.mem_toFinset.mpr member)))]
  exact clean.1 q bound absent

theorem planRowResizeLog_correct (A B : Arena) (r out : WindowRow) (width : Nat) (fresh : List Wire) (p : Program)
    (h : planRowResizeLog A r width fresh=some (B,out,p)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) (fits : PayloadFits width (r.value s.basis)) :
    out.payload.length=width ∧ (out.sign::out.payload).Nodup ∧
    (out.sign::out.payload).toFinset⊆B.live ∧ B.Ready (run p m s).basis ∧
    out.value (run p m s).basis=r.value s.basis := by
  unfold planRowResizeLog at h
  split at h
  next valid =>
    split at h
    next grows =>
      split at h
      next selected =>
        obtain ⟨C,reserved,h⟩ := Option.bind_eq_some_iff.mp h
        cases h
        have grown := growRow_reserved A B r.payload fresh r.sign valid.1 valid.2 selected.2 reserved s m ready
        have legal := (A.reserve_success fresh.toFinset).mp ⟨B,reserved⟩
        have live : B.live=A.live∪fresh.toFinset := by
          simp only [Arena.reserve,dif_pos legal,Option.some.injEq] at reserved
          cases reserved
          rfl
        refine ⟨?_,grown.2.1,?_,grown.1,grown.2.2⟩
        · simp only [List.length_append,selected.1]
          omega
        · rw [live]
          intro q hq
          simp only [List.mem_toFinset,List.mem_cons,List.mem_append] at hq
          rcases hq with hs | hr | hf
          · exact Finset.mem_union_left _ (valid.2 (by simp [hs]))
          · exact Finset.mem_union_left _ (valid.2 (by simp [hr]))
          · exact Finset.mem_union_right _ (List.mem_toFinset.mpr hf)
      next invalid => simp at h
    next shrinks =>
      split at h
      next empty => exact planRowResize_correct A B r out width p h s m ready fits
      next nonempty => simp at h
  next invalid => simp at h

theorem planRowResizeLog_locality (A B : Arena) (r out : WindowRow) (width : Nat) (fresh : List Wire) (p : Program)
    (h : planRowResizeLog A r width fresh=some (B,out,p)) (s : State) (m : List Bool) :
    ∀ w∈A.live,w∉r.wires → w∈B.live ∧ (run p m s).basis w=s.basis w := by
  unfold planRowResizeLog at h
  split at h
  next valid =>
    split at h
    next grow =>
      split at h
      next selected =>
        obtain ⟨C,reserved,h⟩ := Option.bind_eq_some_iff.mp h
        cases h
        have hv := (A.reserve_success fresh.toFinset).mp ⟨B,reserved⟩
        have hlive : B.live=A.live∪fresh.toFinset := by
          have he := reserved
          simp only [Arena.reserve,dif_pos hv,Option.some.injEq] at he
          cases he
          rfl
        intro w hw _
        refine ⟨by rw [hlive]; exact Finset.mem_union_left _ hw,?_⟩
        exact (growRow_frame r.sign fresh s m).2 w
          (fun hq => Finset.disjoint_left.mp hv.2 hw (List.mem_toFinset.mpr hq))
      next rejected => simp at h
    next shrink =>
      split at h
      next empty => exact planRowResize_locality A B r out width p h s m
      next nonempty => simp at h
  next invalid => simp at h

theorem planRowResizeLog_resources (A B : Arena) (r out : WindowRow) (width : Nat) (fresh : List Wire) (p : Program)
    (h : planRowResizeLog A r width fresh=some (B,out,p)) :
    ProperProgram p ∧ toffoliCount p=0 ∧ measurementCount p=0 ∧ wires p⊆arenaWires := by
  unfold planRowResizeLog at h
  split at h
  next valid =>
    split at h
    next grow =>
      split at h
      next selected =>
        obtain ⟨C,reserved,h⟩ := Option.bind_eq_some_iff.mp h
        cases h
        have hv := (A.reserve_success fresh.toFinset).mp ⟨B,reserved⟩
        have hs : r.sign∈A.live := valid.2 (by simp)
        have hn : r.sign∉fresh := fun hq => Finset.disjoint_left.mp hv.2 hs (List.mem_toFinset.mpr hq)
        refine ⟨growRow_proper _ _ hn,(rowWindow_cost _ _).1,(rowWindow_cost _ _).2.1,?_⟩
        intro w hw
        have hmem := growRow_support r.sign fresh hw
        rcases Finset.mem_insert.mp hmem with hmem|hmem
        · subst w; exact A.bounded hs
        · exact hv.1 hmem
      next rejected => simp at h
    next shrink =>
      split at h
      next empty => exact planRowResize_resources A B r out width p h
      next nonempty => simp at h
  next invalid => simp at h

theorem planRowResizeLog_old_sites (A B : Arena) (r out : WindowRow) (width : Nat) (fresh : List Wire) (p : Program)
    (h : planRowResizeLog A r width fresh=some (B,out,p)) :
    ∀ w∈out.wires,w∈A.live → w∈r.wires := by
  unfold planRowResizeLog at h
  split at h
  next valid =>
    split at h
    next grow =>
      split at h
      next selected =>
        obtain ⟨C,reserved,h⟩ := Option.bind_eq_some_iff.mp h
        cases h
        have hv := (A.reserve_success fresh.toFinset).mp ⟨B,reserved⟩
        intro w hw ha
        simp only [WindowRow.wires,List.mem_append,List.mem_singleton] at hw ⊢
        rcases hw with (hw|hw)|hw
        · exact Or.inl hw
        · exact False.elim (Finset.disjoint_left.mp hv.2 ha (List.mem_toFinset.mpr hw))
        · exact Or.inr hw
      next rejected => simp at h
    next shrink =>
      split at h
      next empty => exact planRowResize_old_sites A B r out width p h
      next nonempty => simp at h
  next invalid => simp at h

end ECDSAAdd.Arithmetic.Paper935
