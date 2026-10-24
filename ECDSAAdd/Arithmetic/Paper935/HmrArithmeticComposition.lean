import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout

namespace ECDSAAdd.Arithmetic.Paper935

/-- Factor the long row-layout checks from the source scratch reservation. -/
theorem compileHmrHybridCinLog_of_parts (A B : Arena) (control cin carry : Wire)
    (a b work : List Wire) (positive : 0<b.length) (length : a.length=b.length)
    (distinct : (cin::control::carry::(a++b)).Nodup)
    (owned : ∀q∈cin::control::carry::(a++b),q∈A.live)
    (borrowed : A.checkBorrow (hmrHybridCount A b.length) work=some B) :
    compileHmrHybridCinLog A control cin carry a b work=some B := by
  have cinOwned := owned cin (List.mem_cons_self ..)
  have restOwned : ∀q∈control::carry::(a++b),q∈A.live :=
    fun q hq => owned q (List.mem_cons_of_mem _ hq)
  simp only [compileHmrHybridCinLog,if_pos (And.intro distinct cinOwned),
    compileHmrHybridRowLog,if_pos (And.intro positive (And.intro length
      (And.intro (List.nodup_cons.mp distinct).2 restOwned))),borrowed]

/-- Assemble the two source additions using their exact observed temporary
addresses. This theorem does not execute or reverse any measured program. -/
theorem compileHmrHybridF4Log_of_parts (A U K B C : Arena) (swap control : Wire)
    (a b x y uw kw wa wb : List Wire)
    (owned : ∀q∈swap::control::((a++x)++(b++y)),q∈A.live)
    (flag : A.checkBorrow 1 uw=some U) (carry : U.checkBorrow 1 kw=some K)
    (distinct : (swap::control::hmrBorrowPorts uw (0 : Fin 1)::hmrBorrowPorts kw (0 : Fin 1)::
      ((a++x)++(b++y))).Nodup)
    (apart : Disjoint (a++b).toFinset (x++y).toFinset)
    (first : compileHmrHybridCinLog K control (hmrBorrowPorts uw (0 : Fin 1))
      (hmrBorrowPorts kw (0 : Fin 1)) a b wa=some B)
    (second : compileHmrHybridCinLog K control (hmrBorrowPorts uw (0 : Fin 1))
      (hmrBorrowPorts kw (0 : Fin 1)) x y wb=some C) :
    compileHmrHybridF4Log A swap control a b x y uw kw wa wb=
      some ⟨U,uw,K,kw,B,wa,C,wb⟩ := by
  simp only [compileHmrHybridF4Log,if_neg (not_not.mpr owned),flag,Bind.bind,Option.bind,
    carry,if_neg (not_not.mpr distinct),if_neg (not_not.mpr apart),first,second,pure]

/-- Source work addresses are tested against the incoming live predicate. -/
theorem hmrLayout_disjoint_of_filter (A : Arena) (pred : Wire → Prop) [DecidablePred pred]
    (live : A.live=arenaWires.filter pred) (qs : List Wire)
    (checked : qs.all (fun q => decide (¬pred q))=true) : Disjoint A.live qs.toFinset := by
  apply Finset.disjoint_left.mpr
  intro q owned member
  have absent := of_decide_eq_true (List.all_eq_true.mp checked q (List.mem_toFinset.mp member))
  exact absent (Finset.mem_filter.mp (live ▸ owned)).2

end ECDSAAdd.Arithmetic.Paper935
