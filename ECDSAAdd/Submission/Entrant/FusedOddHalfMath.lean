import ECDSAAdd.Arithmetic.BalancedFieldHalf

/-! Exact arithmetic interface for a fused half in the incumbent odd-word
representation. This module does not yet assert a circuit or a resource gain. -/
namespace ECDSAAdd.Entrant.FusedOddHalf

/-- The incumbent represents a field element by R + 1/2 modulo p. -/
def Domain (q R : Int) : Prop := -q-1≤R ∧ R≤q-1

def viewed (negate : Bool) (Y : Int) : Int := if negate then -Y-1 else Y

def sum (negate : Bool) (R Y : Int) : Int := R+viewed negate Y+1

def fold (q S : Int) : Int :=
  if S%2≠0 then S/2 else if S<0 then S/2+q else S/2-q-1

/-- The combined correction is one signed sparse-constant add before shifting.
Its high-bit adjustment is retained explicitly, including fold wrap/borrow. -/
def fused (N f S : Int) : Int :=
  if S%2≠0 then (S-1)/2
  else if S<0 then (S-1-f)/2+N/2
  else (S-1+f)/2-N/2

 theorem sum_range (q : Int) (negate : Bool) (R Y : Int)
    (hr : Domain q R) (hy : Domain q Y) :
    -(2*q+1)≤sum negate R Y ∧ sum negate R Y≤2*q := by
  unfold Domain at hr hy
  cases negate <;> simp only [sum,viewed,Bool.false_eq_true,if_false,if_true] <;> omega

 theorem fold_twice (q S : Int) :
    2*fold q S+1 = if S%2≠0 then S else if S<0 then S+(2*q+1) else S-(2*q+1) := by
  unfold fold
  split_ifs <;> omega

 theorem fold_range (q S : Int) (hs : -(2*q+1)≤S ∧ S≤2*q) :
    Domain q (fold q S) := by
  unfold fold Domain
  split_ifs <;> omega

/-- Exact fusion, valid also at zero and both extreme odd representatives. -/
 theorem fused_eq_fold (q N f S : Int) (hmod : N-f=2*q+1) (heven : N%2=0) :
    fused N f S = fold q S := by
  have hn := Int.emod_add_mul_ediv N 2
  unfold fused fold
  split_ifs <;> omega

/-- The discarded parity is recovered by an exact interval test on output and
unchanged source; a plain unsigned comparison is not this predicate. -/
 theorem parity_recovery (q R Y : Int) (negate : Bool)
    (hq : 0≤q) (hr : Domain q R) :
    sum negate R Y%2≠0 ↔ Domain q (2*fold q (sum negate R Y)-viewed negate Y) := by
  have hd := fold_twice q (sum negate R Y)
  have hs : sum negate R Y=R+viewed negate Y+1 := rfl
  unfold Domain at hr ⊢
  split_ifs at hd <;> omega

def magnitude (F : Int) : Int := if F<0 then -F-1 else F

/-- A single exact biased comparison implements interval recovery. The sparse
constant bias cannot be dropped merely because it is small relative to p. -/
 theorem interval_as_compare (q F Y : Int) (negate : Bool)
    (hy : Domain q Y) :
    Domain q (2*F-viewed negate Y) ↔
      2*magnitude F + (if F<0 then 0 else 1) - q - 1 <
        viewed (negate ^^ decide (F<0)) Y := by
  unfold Domain at hy ⊢
  by_cases hn : F<0
  all_goals cases negate <;> simp [magnitude,viewed,hn] <;> omega

 theorem parity_as_compare (q R Y : Int) (negate : Bool)
    (hq : 0≤q) (hr : Domain q R) (hy : Domain q Y) :
    sum negate R Y%2≠0 ↔
      2*magnitude (fold q (sum negate R Y)) +
        (if fold q (sum negate R Y)<0 then 0 else 1) - q - 1 <
      viewed (negate ^^ decide (fold q (sum negate R Y)<0)) Y := by
  rw [parity_recovery q R Y negate hq hr]
  exact interval_as_compare q _ Y negate hy

/-- Explicit sparse-constant form for a power-of-two word width N=2H. -/
 theorem compare_bias (q H F Y : Int) (negate : Bool) :
    (2*magnitude F + (if F<0 then 0 else 1) - q - 1 <
      viewed (negate ^^ decide (F<0)) Y) ↔
    (2*magnitude F + (if F<0 then 0 else 1) + (H-q-1) <
      viewed (negate ^^ decide (F<0)) Y + H) := by omega

/-- Both operands of that comparison fit the ordinary N-bit unsigned range;
the offset on the left is still part of the exact predicate. -/
 theorem compare_range (q H F Y : Int) (negate : Bool)
    (hH : q+1≤H) (hf : Domain q F) (hy : Domain q Y) :
    0≤2*magnitude F+(if F<0 then 0 else 1)+(H-q-1) ∧
    2*magnitude F+(if F<0 then 0 else 1)+(H-q-1)<2*H ∧
    H-q-1≤viewed (negate ^^ decide (F<0)) Y+H ∧
    viewed (negate ^^ decide (F<0)) Y+H<2*H := by
  unfold Domain at hf hy
  by_cases hn : F<0
  all_goals cases negate <;> simp [magnitude,viewed,hn] <;> omega

end ECDSAAdd.Entrant.FusedOddHalf
