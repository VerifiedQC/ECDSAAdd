import ECDSAAdd.Arithmetic.OffsetBorrowedSupport

set_option maxRecDepth 8192
set_option maxHeartbeats 1000000
namespace ECDSAAdd.Arithmetic.CompressedFieldSupport
open BalancedCircuit BalancedField
attribute [local irreducible] BalancedCircuit.coreProgram BalancedCircuit.program
  BalancedInverse.program OffsetBorrowedField.program OffsetBorrowedInverse.program
  OffsetBorrowedInverse.tail BalancedCleanupOffset.program BalancedCleanupOffset.chain
  BalancedCleanupOffsetSlim.program BalancedCleanupOffsetSlim.chain
  BalancedCleanupOffset.view BalancedCleanup.prepareSign BalancedCleanup.program
  wires

/-- Descriptor-only Minus/Plus roles are excluded from actual cleanup support.
In the shared caller they name history0/1; no cleanup instruction touches them. -/
def activeOffsetSites (L : BalancedCleanupOffset.Layout) : List Wire :=
  [L.sourceGuard,L.cout] ++ L.toCircuit.toLayout.wires ++ L.offsetCarry

theorem offset_support (L : BalancedCleanupOffset.Layout) (hw : L.Widths) :
    wires (BalancedCleanupOffset.program L) ⊆ (activeOffsetSites L).toFinset := by
  let W := (activeOffsetSites L).toFinset
  have member (q : Wire) : q∈W ↔
      q∈[L.sourceGuard,L.cout,L.parity,L.sign,L.lower,L.one,L.rmsb,L.ymsb,L.r0] ∨
      q∈L.rtail ∨ q∈L.ylow ∨ q∈L.carry ∨ q∈L.offsetCarry := by
    simp [W,activeOffsetSites,BalancedCleanup.Layout.wires,or_assoc]
  have data (q : Wire) (h : q∈L.y++L.r++L.carry++L.offsetCarry) : q∈W := by
    simp only [BalancedCleanup.Layout.y,BalancedCleanup.Layout.r,BalancedCleanup.Layout.low,
      List.mem_append,List.mem_cons,List.not_mem_nil,or_false] at h
    rw [member]
    simp only [List.mem_cons,List.not_mem_nil,or_false]
    tauto
  have own : L.toCircuit.toLayout.wires.toFinset⊆W := by
    intro q hq
    simp only [W,activeOffsetSites,List.mem_toFinset,List.mem_append] at ⊢
    exact Or.inl (Or.inr (List.mem_toFinset.mp hq))
  have sgSub : wires (BalancedCleanup.prepareSign L.toCircuit.toLayout)⊆
      wires (BalancedCleanup.program L.toCircuit.toLayout) := by
    rw [BalancedCleanup.program,wires_append]
    exact Finset.subset_union_left
  have sg := sgSub.trans ((BalancedCleanup.support L.toCircuit.toLayout hw.1).trans own)
  have vw : wires (BalancedCleanupOffset.view L)⊆W := by
    intro q hq
    have h := BalancedCleanupOffset.view_support L hw hq
    simp only [List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false,or_assoc] at h
    rcases h with rfl|rfl|h|h
    · simp [member]
    · simp [member]
    · exact data q (by simp [h])
    · exact data q (by simp [h])
  have ch := OffsetBorrowedSupport.chainSupport (BalancedCleanupOffset.offsetBits L)
    L.y L.r L.offsetCarry L.carry L.one L.cout L.parity W
    (fun q hq => by rw [BalancedCleanupOffset.offsetSources L q hq]; simp [member])
    (fun q hq => data q (by simp [hq])) (fun q hq => data q (by simp [hq]))
    (fun q hq => data q (by simp [hq])) (fun q hq => data q (by simp [hq]))
    (by simp [member]) (by simp [member]) (by simp [member])
  have c : wires [.X L.cout]⊆W := by
    simp [wires,Instr.wires,Finset.subset_iff,member]
  simp only [BalancedCleanupOffset.program,wires_append,wires_reverse,Finset.union_subset_iff]
  exact ⟨⟨⟨⟨⟨⟨sg,vw⟩,c⟩,ch⟩,c⟩,vw⟩,sg⟩

private theorem slim_support_sub (L : BalancedCleanupOffset.Layout) (hw : L.Widths) :
    wires (BalancedCleanupOffsetSlim.program L)⊆wires (BalancedCleanupOffset.program L) := by
  have width := BalancedCleanup.widths L.toCircuit.toLayout hw.1
  have carry : L.carry.length=256 := hw.1.2.2
  have offset : L.offsetCarry.length=256 := hw.2
  have subset := BalancedCleanupOffsetSlim.chain_support (BalancedCleanupOffset.offsetBits L)
    L.y L.r L.offsetCarry L.carry L.one L.cout L.parity
    (by simp [BalancedCleanupOffset.offsetBits,width.2.1])
    (by omega) (by omega) (by omega)
  rw [BalancedCleanupOffset.program_sandwich]
  simp only [BalancedCleanupOffsetSlim.program,wires_append,wires_reverse]
  exact Finset.union_subset_union
    (Finset.union_subset_union (Finset.Subset.refl _) subset) (Finset.Subset.refl _)

def sharedSites (w : Nat → Wire) (sign : Wire) : List Wire :=
  [sign,w 765,w 1026] ++ (balancedSharedPorts w sign).wires ++
    OffsetCleanupBorrowedCaller.carry w

/-- Actual forward and inverse kernels avoid the raw history, despite the
unused descriptor roles in their auxiliary cleanup layout. -/
theorem kernels_support (w : Nat → Wire) (sign : Wire) :
    wires (OffsetBorrowedField.program w sign)⊆(sharedSites w sign).toFinset ∧
    wires (OffsetBorrowedInverse.program w sign)⊆(sharedSites w sign).toFinset := by
  let L := balancedSharedPorts w sign
  let W := (sharedSites w sign).toFinset
  have native : L.wires.toFinset⊆W := by
    intro q hq
    simp only [W,sharedSites,List.mem_toFinset,List.mem_append]
    exact Or.inl (Or.inr (List.mem_toFinset.mp hq))
  have coreSub : wires (BalancedCircuit.coreProgram L)⊆wires (BalancedCircuit.program L) := by
    intro q hq
    simp only [BalancedCircuit.program_eq_core,wires_append,Finset.mem_union]
    exact Or.inl (Or.inl hq)
  have tailSub : wires (OffsetBorrowedInverse.tail L)⊆wires (BalancedInverse.program L) := by
    have eq : BalancedInverse.program L=[.CX L.ymsb L.sourceGuard]++
        BalancedInverse.recoverParity L++OffsetBorrowedInverse.tail L := by
      simp only [BalancedInverse.program,OffsetBorrowedInverse.tail,List.append_assoc]
    intro q hq
    simp only [eq,wires_append,Finset.mem_union]
    exact Or.inr hq
  have active : (activeOffsetSites (OffsetCleanupBorrowedCaller.layout w sign)).toFinset⊆W := by
    intro q hq
    simp only [activeOffsetSites,OffsetCleanupBorrowedCaller.layout,
      List.mem_toFinset,List.mem_append,List.mem_cons,List.not_mem_nil,or_false,or_assoc] at hq
    rcases hq with rfl|rfl|h|h
    · change w 765∈W
      simp [W,sharedSites]
    · simp [W,sharedSites]
    · apply native
      simp only [L,BalancedCircuit.Layout.wires,List.mem_toFinset,List.mem_append]
      exact Or.inr h
    · simp [W,sharedSites,h]
  have core := coreSub.trans ((balancedSharedPorts_support w sign).trans native)
  have tail := tailSub.trans ((BalancedInverse.support L (balancedSharedPorts_widths w sign)).trans native)
  have oldOff := (offset_support _ (OffsetCleanupBorrowedCaller.widths w sign)).trans active
  have off := (slim_support_sub _ (OffsetCleanupBorrowedCaller.widths w sign)).trans oldOff
  have cx : wires [.CX L.ymsb L.sourceGuard]⊆W := by
    apply Finset.Subset.trans (s₂:=L.wires.toFinset) _ native
    simp [wires,Instr.wires,Finset.subset_iff,BalancedCircuit.Layout.wires,
      BalancedCleanup.Layout.wires]
  simp only [OffsetBorrowedField.program,OffsetBorrowedInverse.program,
    OffsetBorrowedInverse.recoverParity,wires_append,Finset.union_subset_iff]
  exact ⟨⟨core,⟨off,cx⟩⟩,⟨⟨cx,off⟩,tail⟩⟩

end ECDSAAdd.Arithmetic.CompressedFieldSupport
#print axioms ECDSAAdd.Arithmetic.CompressedFieldSupport.offset_support
#print axioms ECDSAAdd.Arithmetic.CompressedFieldSupport.kernels_support
