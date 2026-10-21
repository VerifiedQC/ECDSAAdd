import ECDSAAdd.Arithmetic.Paper935.HmrReadResources

namespace ECDSAAdd.Arithmetic.Paper935

theorem HmrReadPlan.Compiled.assembly_exists (P : HmrReadPlan) (A : Arena) (L : HmrReadLayout)
    (compiled : P.Compiled A L) (early : Bool) (parity fire : Wire)
    (owned : parity∈A.live ∧ fire∈A.live) (distinct : parity≠fire)
    (capacity : A.live.card+13+(if early then 0 else 1)≤935) :
    ∃ B work,compileHmrAssembly P.decoderArena early (P.decoderPorts L 13) parity fire P.output=some (B,work) := by
  have hf := (compileHmrFlags_contract A P.flagArena L.c3 (hmrRowPos L.fv L.fvs 2)
    (hmrRowPos L.fv L.fvs 3) (hmrRowPos L.fv L.fvs 4) P.flagWork compiled.flags).2.2
  have hp := (compileHmrPop_contract P.flagArena P.popArena (P.flag 5) L.record P.popWork compiled.pop).2.2
  have hd := (compileHmrDecoder_contract P.popArena P.decoderArena (P.inputs L) P.decoderWork compiled.decoder).2.2
  have ab : A.live⊆P.flagArena.live := by
    rw [(A.borrowMany_live P.flagArena 6 P.flagWork hf).1]
    exact Finset.subset_union_left
  have bc : P.flagArena.live⊆P.popArena.live := by
    rw [(P.flagArena.borrowMany_live P.popArena 1 P.popWork hp).1]
    exact Finset.subset_union_left
  have cd : P.popArena.live⊆P.decoderArena.live := by
    rw [(P.popArena.borrowMany_live P.decoderArena 6 P.decoderWork hd).1]
    exact Finset.subset_union_left
  have branch := hmrBorrowPorts_contract P.flagArena P.popArena 1 P.popWork hp
  have cache := hmrBorrowPorts_contract P.popArena P.decoderArena 6 P.decoderWork hd
  have predEq : P.decoderPorts L 13=hmrBorrowPorts P.decoderWork (0 : Fin 6) := rfl
  have predAway (q : Wire) (hq : q∈P.popArena.live) : P.decoderPorts L 13≠q := by
    rw [predEq]
    intro eq
    exact cache.2.2 0 (eq ▸ hq)
  have branchAway (q : Wire) (hq : q∈A.live) : q≠P.output := by
    intro eq
    apply branch.2.2 0
    change P.output∈P.flagArena.live
    rw [←eq]
    exact ab hq
  have pown : P.decoderPorts L 13∈P.decoderArena.live := by rw [predEq];exact cache.2.1 0
  have oown : P.output∈P.decoderArena.live := cd (branch.2.1 0)
  have pn := predAway parity (bc (ab owned.1))
  have fn := predAway fire (bc (ab owned.2))
  have on := predAway P.output (branch.2.1 0)
  have po := branchAway parity owned.1
  have fo := branchAway fire owned.2
  have nd : (hmrAssemblyInputs early (P.decoderPorts L 13) parity fire P.output).Nodup := by
    cases early <;> simp [hmrAssemblyInputs,pn,fn,on,po,fo,distinct]
  have allOwned : (hmrAssemblyInputs early (P.decoderPorts L 13) parity fire P.output).toFinset⊆P.decoderArena.live := by
    cases early <;> simp [hmrAssemblyInputs,Finset.insert_subset_iff,pown,oown,cd (bc (ab owned.1)),cd (bc (ab owned.2))]
  have count := (compiled.live_counts P A L).2.2
  cases he : early with
  | true =>
    simp only [he] at nd allOwned
    exact ⟨P.decoderArena,[],by simp only [compileHmrAssembly,if_pos (And.intro nd allOwned),ite_true]⟩
  | false =>
    simp only [he] at nd allOwned
    obtain ⟨B,work,h⟩ := (P.decoderArena.borrowMany_capacity 1).mpr (by simp only [he,Bool.false_eq_true,ite_false] at capacity;omega)
    exact ⟨B,work,by simp only [compileHmrAssembly,if_pos (And.intro nd allOwned),Bool.false_eq_true,ite_false,h]⟩

end ECDSAAdd.Arithmetic.Paper935
