import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlComposition

namespace ECDSAAdd.Arithmetic.Paper935

/-- The guard and the reserve transaction can be certified separately. -/
theorem Arena.checkBorrow_of_parts (A B : Arena) (n : Nat) (work : List Wire)
    (shape : work.length=n ∧ work.Nodup) (reserved : A.reserve work.toFinset=some B) :
    A.checkBorrow n work=some B := by
  simp only [Arena.checkBorrow,if_pos shape,reserved]

theorem hmrArena_release_false_of_live (A B : Arena) (qs : Finset Wire)
    (owned : qs⊆A.live) (live : B.live=A.live\qs) :
    A.release qs (fun _ => false)=some B := by
  rw [Arena.release,if_pos (And.intro owned (by simp))]
  apply congrArg some
  exact hmrArena_eq_of_live _ _ live.symm

theorem compileHmrEqualityLog_of_parts (A B : Arena) (bits : List Wire) (k : Nat)
    (work : List Wire) (P : HmrEqualityPlan)
    (inputs : bits.toFinset⊆A.live ∧ k<2^bits.length ∧ 2≤bits.length)
    (borrow : A.checkBorrow (bits.length-1) work=some B)
    (shape : (HmrEqualityPlan.mk ((hmrEqualityLiterals bits k).headD ⟨0,false⟩)
      (((hmrEqualityLiterals bits k).tail.zip work).map (fun x => ⟨x.1,x.2⟩)))=P)
    (valid : P.Valid bits k work) :
    compileHmrEqualityLog A bits k work=some (B,work,P) := by
  simp only [compileHmrEqualityLog,if_pos inputs,borrow,Bind.bind,Option.bind,shape,if_pos valid]

theorem compileHmrSourceClassLog_of_logged (P : HmrSourceClassPlan) (A : Arena)
    (armed : Bool) (sign zeroFlag frozen sigma : Wire)
    (h : P.Logged A armed sign zeroFlag frozen sigma) :
    compileHmrSourceClassLog A armed sign zeroFlag frozen sigma P.positiveWork P.equalityWork=some P := by
  simp only [compileHmrSourceClassLog,if_pos (And.intro h.distinct h.owned),h.positiveBorrow,
    Bind.bind,Option.bind]
  change (compileHmrEqualityLog P.positiveArena (hmrSourceClassInputs armed frozen sigma P.positive)
    0 P.equalityWork >>= fun (C,work,Q) => pure ⟨P.positiveArena,P.positiveWork,C,work,Q⟩)=some P
  rw [h.equality]
  rfl

theorem compileHmrFlagsLog_of_parts (A B : Arena) (c3 b2 b3 b4 : Wire) (work : List Wire)
    (inputs : c3∉[b2,b3,b4] ∧ [c3,b2,b3,b4].toFinset⊆A.live)
    (borrow : A.checkBorrow 6 work=some B) :
    compileHmrFlagsLog A c3 b2 b3 b4 work=some B := by
  simp only [compileHmrFlagsLog,if_pos inputs,borrow]

theorem compileHmrRecordGrowLog_of_parts (A B : Arena) (old : List Wire) (need : Nat)
    (fresh : List Wire) (inputs : old.Nodup ∧ old.toFinset⊆A.live ∧ old.length≤need)
    (borrow : A.checkBorrow (need-old.length) fresh=some B) :
    compileHmrRecordGrowLog A old need fresh=some B := by
  simp only [compileHmrRecordGrowLog,if_pos inputs,borrow]

theorem compileHmrSigmaDropLog_early_of_parts (A B : Arena) (fv1 sigma : Wire)
    (inputs : [fv1,sigma].Nodup ∧ [fv1,sigma].toFinset⊆A.live)
    (released : A.release {sigma} (fun _ => false)=some B) :
    compileHmrSigmaDropLog A false 0 0 fv1 sigma []=some B := by
  simp only [compileHmrSigmaDropLog,compileHmrSigmaLog,Bool.false_eq_true,ite_false,
    true_and,if_pos inputs,Bind.bind,Option.bind,released]

end ECDSAAdd.Arithmetic.Paper935
