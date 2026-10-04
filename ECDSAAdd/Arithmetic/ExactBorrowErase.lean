import ECDSAAdd.Arithmetic.InPlaceAdder

namespace ECDSAAdd.Arithmetic

/-- Borrow-prefix carry without changing either data bit. -/
def borrowMajority (x y cin target : Wire) : Program :=
  [.X x]++majority x y cin target++[.X x]

/-- Immediate Clifford correction for a known borrow. The predicate prefix
is prepared before measuring the target, so no later arithmetic depends on a
saved measurement outcome. -/
def eraseBorrow (x y cin target : Wire) : Program :=
  [.X x]++eraseCarry x y cin target++[.X x]

theorem borrowMajority_correct (x y cin target : Wire)
    (hn : [x,y,cin,target].Nodup) (s : State) (m : List Bool) :
    run (borrowMajority x y cin target) m s=
      ⟨s.phase,writeBit s.basis target
        (s.basis target ^^ carryBit (!s.basis x) (s.basis y) (s.basis cin))⟩ := by
  simp only [List.nodup_cons,List.mem_cons,List.not_mem_nil,List.nodup_nil,
    not_or,not_false_eq_true,and_true] at hn
  obtain ⟨⟨hxy,hxc,hxt⟩,⟨hyc,hyt⟩,hct⟩ := hn
  have hyx := Ne.symm hxy
  have hcx := Ne.symm hxc
  have hcy := Ne.symm hyc
  simp only [borrowMajority,majority,List.cons_append,List.nil_append,run]
  apply congrArg (State.mk s.phase)
  funext w
  by_cases hwx : w=x <;> by_cases hwy : w=y <;>
    by_cases hwc : w=cin <;> by_cases hwt : w=target <;>
    simp_all [writeBit,Function.update,carryBit]
  all_goals cases s.basis x <;> cases s.basis y <;> cases s.basis cin <;>
    cases s.basis target <;> simp_all

theorem eraseBorrow_correct (x y cin target : Wire)
    (hx : x≠target) (hy : y≠target) (hc : cin≠target)
    (hxy : x≠y) (hxc : x≠cin)
    (s : State) (m : List Bool)
    (h : s.basis target=carryBit (!s.basis x) (s.basis y) (s.basis cin)) :
    run (eraseBorrow x y cin target) m s=
      ⟨s.phase,writeBit s.basis target false⟩ := by
  let t : State := ⟨s.phase,writeBit s.basis x (!s.basis x)⟩
  have known : t.basis target=carryBit (t.basis x) (t.basis y) (t.basis cin) := by
    simpa [t,writeBit,Ne.symm hx,Ne.symm hxy,Ne.symm hxc] using h
  have clear := eraseCarry_correct x y cin target hx hy hc t known m
  simp only [eraseBorrow,List.cons_append,List.nil_append,run]
  change run (eraseCarry x y cin target++[.X x]) m t=_
  rw [run_append,run_take,clear]
  simp only [run]
  apply congrArg (State.mk s.phase)
  funext w
  by_cases hwt : w=target <;> by_cases hwx : w=x <;>
    simp_all [t,writeBit,Function.update]

/-- Low-to-high borrow preparation, target measurement at the top, then
high-to-low independent measured cleanup. Carries never outlive this block. -/
def eraseLtChain : List Wire → List Wire → List Wire → Wire → Wire → Program
  | a::a'::as,b::b'::bs,c::cs,cin,target =>
      borrowMajority a b cin c++eraseLtChain (a'::as) (b'::bs) cs c target++
        eraseBorrow a b cin c
  | [a],[b],_,cin,target => eraseBorrow a b cin target
  | _,_,_,_,_ => []

theorem borrowMajority_counts (x y cin target : Wire) :
    toffoliCount (borrowMajority x y cin target)=1 ∧
    measurementCount (borrowMajority x y cin target)=0 := by constructor <;> rfl

theorem eraseBorrow_counts (x y cin target : Wire) :
    toffoliCount (eraseBorrow x y cin target)=0 ∧
    measurementCount (eraseBorrow x y cin target)=1 := by constructor <;> rfl

theorem eraseLtChain_counts (x y carry : List Wire) (cin target : Wire)
    (hxy : x.length=y.length) (hc : carry.length+1=y.length) :
    toffoliCount (eraseLtChain x y carry cin target)=y.length-1 ∧
    measurementCount (eraseLtChain x y carry cin target)=y.length := by
  induction y generalizing x carry cin with
  | nil => simp at hc
  | cons b bs ih =>
    cases x with
    | nil => simp at hxy
    | cons a as =>
      cases bs with
      | nil =>
        have ha : as=[] := List.eq_nil_of_length_eq_zero (by simpa using hxy)
        subst ha
        simp [eraseLtChain,eraseBorrow_counts]
      | cons b' bs =>
        cases as with
        | nil => simp at hxy
        | cons a' as =>
          cases carry with
          | nil => simp at hc
          | cons c cs =>
            have h := ih (a'::as) cs c (by simpa using hxy) (by simpa using hc)
            rw [eraseLtChain]
            constructor
            · simp only [toffoliCount_append,(borrowMajority_counts _ _ _ _).1,
                (eraseBorrow_counts _ _ _ _).1]
              rw [h.1]
              simp [Nat.add_comm]
            · simp only [measurementCount_append,(borrowMajority_counts _ _ _ _).2,
                (eraseBorrow_counts _ _ _ _).2]
              rw [h.2]
              simp


end ECDSAAdd.Arithmetic
