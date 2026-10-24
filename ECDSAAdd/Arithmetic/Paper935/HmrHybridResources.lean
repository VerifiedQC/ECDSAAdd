import ECDSAAdd.Arithmetic.Paper935.HmrHybridCompiler

namespace ECDSAAdd.Arithmetic.Paper935

theorem hmrHybridRow_counts (control carry : Wire) (a b work : List Wire)
    (width : a.length=b.length) (room : work.length < b.length) :
    toffoliCount (hmrHybridRow control a b carry work)=3*b.length-2-work.length ∧
    measurementCount (hmrHybridRow control a b carry work)=work.length := by
  induction work generalizing carry a b with
  | nil => simp [hmrHybridRow,rowAdd_toffolis control carry a b width]
  | cons next work ih =>
    cases a with
    | nil => simp at width; omega
    | cons x xs =>
      cases b with
      | nil => simp at width
      | cons y ys =>
        have ht : xs.length=ys.length := by simpa using width
        have hr : work.length < ys.length := by simpa using room
        have tail := ih next xs ys ht hr
        simp only [hmrHybridRow,toffoliCount_append,measurementCount_append]
        simp only [hmrHybridLift,hmrHybridDrop,hmrPolarAnd,hmrPolarRelease,hmrPolarDress,
          toffoliCount,measurementCount,List.cons_append,List.nil_append,
          ite_true] at *
        rw [tail.1,tail.2]
        simp only [List.length_cons]
        omega

theorem compileHmrHybridRow_counts (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work)) :
    toffoliCount (hmrHybridRow control a b carry work)=3*b.length-2-hmrHybridCount A b.length ∧
    measurementCount (hmrHybridRow control a b carry work)=hmrHybridCount A b.length := by
  have hc := compileHmrHybridRow_contract A B control carry a b work h
  have length := (A.borrowMany_contract B _ work hc.2.2.2.2).1
  have result := hmrHybridRow_counts control carry a b work hc.2.1 (compileHmrHybridRow_geometry A B control carry a b work h).2
  simpa only [length] using result

theorem compileHmrHybridRow_census (A B : Arena) (control carry : Wire) (a b work : List Wire)
    (h : compileHmrHybridRow A control carry a b=some (B,work)) :
    B.live.card=A.live.card+hmrHybridCount A b.length ∧ B.live.card≤935 := by
  exact ⟨(A.borrowMany_live B _ work (compileHmrHybridRow_contract A B control carry a b work h).2.2.2.2).2,B.peak_bound⟩

end ECDSAAdd.Arithmetic.Paper935
