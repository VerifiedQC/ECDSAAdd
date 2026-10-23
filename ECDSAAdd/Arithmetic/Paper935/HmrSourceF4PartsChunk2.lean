import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticParts
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBank
import ECDSAAdd.Arithmetic.Paper935.HmrSourceF4PartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step15F4FlagArena : Arena := ⟨s6Step15HeadFvAfter.live∪{888},Finset.union_subset s6Step15HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step15F4_flag : s6Step15HeadFvAfter.checkBorrow 1 [888]=some s6Step15F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15HeadFvAfter,arenaWires]
  · rfl
theorem s6Step15F4_carry : s6Step15F4FlagArena.checkBorrow 1 [886]=some s6Step15Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step15F4FlagArena,s6Step15HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step15F4FlagArena,s6Step15HeadFvAfter,s6Step15Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step15F4_owned : (822::807::((s6Step15Add0A++s6Step15Add1A)++(s6Step15Add0B++s6Step15Add1B))).toFinset⊆s6Step15HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step15HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15F4_distinct : (822::807::888::886::((s6Step15Add0A++s6Step15Add1A)++(s6Step15Add0B++s6Step15Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15F4_apart : Disjoint (s6Step15Add0A++s6Step15Add0B).toFinset (s6Step15Add1A++s6Step15Add1B).toFinset := by
  have nd : ((s6Step15Add0A++s6Step15Add0B)++(s6Step15Add1A++s6Step15Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step15F4Plan : HmrHybridF4Plan := ⟨s6Step15F4FlagArena,[888],s6Step15Add0Arena,[886],s6Step15Add0During,s6Step15Add0Work,s6Step15Add1During,s6Step15Add1Work⟩
theorem s6Step15F4_checked : compileHmrHybridF4Log s6Step15HeadFvAfter 822 807 s6Step15Add0A s6Step15Add0B s6Step15Add1A s6Step15Add1B [888] [886] s6Step15Add0Work s6Step15Add1Work=some s6Step15F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step15HeadFvAfter s6Step15F4FlagArena s6Step15Add0Arena s6Step15Add0During s6Step15Add1During 822 807
    s6Step15Add0A s6Step15Add0B s6Step15Add1A s6Step15Add1B [888] [886] s6Step15Add0Work s6Step15Add1Work
    (fun q hq => s6Step15F4_owned (List.mem_toFinset.mpr hq)) s6Step15F4_flag s6Step15F4_carry
    s6Step15F4_distinct s6Step15F4_apart s6Step15Add0_checked s6Step15Add1_checked
def s6Step498F4FlagArena : Arena := ⟨s6Step498HeadFvAfter.live∪{790},Finset.union_subset s6Step498HeadFvAfter.bounded (by norm_num [arenaWires])⟩
theorem s6Step498F4_flag : s6Step498HeadFvAfter.checkBorrow 1 [790]=some s6Step498F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498HeadFvAfter,arenaWires]
  · rfl
theorem s6Step498F4_carry : s6Step498F4FlagArena.checkBorrow 1 [914]=some s6Step498Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step498F4FlagArena,s6Step498HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step498F4FlagArena,s6Step498HeadFvAfter,s6Step498Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega
theorem s6Step498F4_owned : (791::842::((s6Step498Add0A++s6Step498Add1A)++(s6Step498Add0B++s6Step498Add1B))).toFinset⊆s6Step498HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step498HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498F4_distinct : (791::842::790::914::((s6Step498Add0A++s6Step498Add1A)++(s6Step498Add0B++s6Step498Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498F4_apart : Disjoint (s6Step498Add0A++s6Step498Add0B).toFinset (s6Step498Add1A++s6Step498Add1B).toFinset := by
  have nd : ((s6Step498Add0A++s6Step498Add0B)++(s6Step498Add1A++s6Step498Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
def s6Step498F4Plan : HmrHybridF4Plan := ⟨s6Step498F4FlagArena,[790],s6Step498Add0Arena,[914],s6Step498Add0During,s6Step498Add0Work,s6Step498Add1During,s6Step498Add1Work⟩
theorem s6Step498F4_checked : compileHmrHybridF4Log s6Step498HeadFvAfter 791 842 s6Step498Add0A s6Step498Add0B s6Step498Add1A s6Step498Add1B [790] [914] s6Step498Add0Work s6Step498Add1Work=some s6Step498F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step498HeadFvAfter s6Step498F4FlagArena s6Step498Add0Arena s6Step498Add0During s6Step498Add1During 791 842
    s6Step498Add0A s6Step498Add0B s6Step498Add1A s6Step498Add1B [790] [914] s6Step498Add0Work s6Step498Add1Work
    (fun q hq => s6Step498F4_owned (List.mem_toFinset.mpr hq)) s6Step498F4_flag s6Step498F4_carry
    s6Step498F4_distinct s6Step498F4_apart s6Step498Add0_checked s6Step498Add1_checked

end ECDSAAdd.Arithmetic.Paper935
