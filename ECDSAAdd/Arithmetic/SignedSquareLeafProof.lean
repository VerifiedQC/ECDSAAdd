import ECDSAAdd.Arithmetic.SignedSquareDiagonalProof

namespace ECDSAAdd.Arithmetic

theorem signedSquareTop_correct (xs dst : List Wire)
    (hnd : (xs++dst).Nodup) (hd : dst.length=2*xs.length)
    (s : State) (m : List Bool)
    (htop : regValue (dst.drop (2*xs.length-1)) s.basis=0) :
    let out := run (signedSquareTop xs dst) m s
    out.phase=s.phase ∧
      regValue dst out.basis=regValue dst s.basis+signedTopTerm xs s.basis ∧
      (∀q,q∉dst → out.basis q=s.basis q) ∧
      regValue xs out.basis=regValue xs s.basis := by
  induction xs generalizing dst s with
  | nil =>
    have de : dst=[] := List.eq_nil_of_length_eq_zero (by simpa using hd)
    subst dst
    simp [signedSquareTop,signedTopTerm,run]
  | cons x xs ih =>
    cases xs with
    | nil =>
      cases dst with
      | nil => simp at hd
      | cons a ds =>
        cases ds with
        | nil => simp at hd
        | cons z tail =>
          have te : tail=[] := List.eq_nil_of_length_eq_zero (by simpa using hd)
          subst tail
          have hxz : x≠z := by
            intro e; subst z; simp at hnd
          have haz : a≠z := by
            intro e; subst z; simp at hnd
          have hzx : z≠x := Ne.symm hxz
          have top0 : s.basis z=false := by
            change regValue [z] s.basis=0 at htop
            simpa [regValue] using htop
          simp only [signedSquareTop,run,signedTopTerm,regValue,List.foldr_cons,List.foldr_nil]
          refine ⟨True.intro,?_,?_,?_⟩
          · simp [writeBit,top0,haz,hzx]
            cases s.basis x <;> cases s.basis a <;> rfl
          · intro q hq
            simp [writeBit,show q≠z from fun e => hq (by simp [e])]
          · simp [writeBit,hxz]
    | cons y ys =>
      cases dst with
      | nil => simp at hd
      | cons a ds =>
        cases ds with
        | nil => simp at hd; omega
        | cons b tail =>
          let rest := y::ys
          have htail : tail.length=2*rest.length := by
            dsimp [rest]
            simp only [List.length_cons] at hd
            omega
          have hnTail : (rest++tail).Nodup := by
            apply List.nodup_iff_count.mpr; intro q
            have h := List.nodup_iff_count.mp hnd q
            simp only [rest,List.count_cons,List.count_append] at h ⊢
            omega
          have topTail : regValue (tail.drop (2*rest.length-1)) s.basis=0 := by
            simpa [rest,List.drop_drop,Nat.add_comm,Nat.add_left_comm,Nat.add_assoc] using htop
          have hi := ih tail hnTail htail s topTail
          let out := run (signedSquareTop rest tail) m s
          have dstN : (a::b::tail).Nodup := by
            apply List.nodup_iff_count.mpr; intro q
            have h := List.nodup_iff_count.mp hnd q
            simp only [List.count_cons,List.count_append] at h ⊢
            omega
          have lowSame : regValue [a,b] out.basis=regValue [a,b] s.basis := by
            apply regValue_congr
            intro q hq
            exact hi.2.2.1 q (fun ht =>
              List.disjoint_left.mp (List.disjoint_take_drop dstN (show 2≤2 from le_rfl)) hq ht)
          have splitS := regValue_append [a,b] tail s.basis
          have splitO := regValue_append [a,b] tail out.basis
          change out.phase=s.phase ∧ _
          refine ⟨hi.1,?_,?_,?_⟩
          · change regValue (a::b::tail) out.basis=
              regValue (a::b::tail) s.basis+signedTopTerm (x::rest) s.basis
            rw [← show [a,b]++tail=a::b::tail by rfl,splitO,lowSame,hi.2.1,splitS]
            simp [signedTopTerm,rest]
            omega
          · intro q hq
            exact hi.2.2.1 q (fun ht => hq (by simp [ht]))
          · have srcSame : regValue rest out.basis=regValue rest s.basis := hi.2.2.2
            change (if out.basis x then 1 else 0)+2*regValue rest out.basis=
              (if s.basis x then 1 else 0)+2*regValue rest s.basis
            rw [srcSame,hi.2.2.1 x (by
              intro ht
              have hn := List.nodup_iff_count.mp hnd x
              have h2 := List.count_pos_iff.mpr ht
              simp only [List.count_cons,List.count_append,beq_self_eq_true,if_true] at hn
              omega)]

end ECDSAAdd.Arithmetic
