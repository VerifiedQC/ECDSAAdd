import ECDSAAdd.Arithmetic.CompressedSkywalkLayout

set_option maxRecDepth 8192
set_option maxHeartbeats 1000000
namespace ECDSAAdd.Arithmetic

/-- Decode only the current three raw letters, execute their actual field
cells, and encode the same group again before advancing. Final one/two
letters stay raw, matching the full512 delayed integer pack schedule. -/
def codecGroupForward {α : Type} (w : Nat → Wire) (cell : α → Program)
    (start : Nat) : List α → Program
  | a::b::c::tail => compressedHistoryDecode w start ++ cell a ++ cell b ++ cell c ++
      compressedHistoryEncode w start ++ codecGroupForward w cell (start+3) tail
  | [a,b] => cell a ++ cell b
  | [a] => cell a
  | [] => []

/-- Reverse field replay visits groups and cells in reverse, while retaining
the same independent decoder and measured encoder at each group boundary. -/
def codecGroupBackward {α : Type} (w : Nat → Wire) (cell : α → Program)
    (start : Nat) : List α → Program
  | a::b::c::tail => codecGroupBackward w cell (start+3) tail ++
      compressedHistoryDecode w start ++ cell c ++ cell b ++ cell a ++
      compressedHistoryEncode w start
  | [a,b] => cell b ++ cell a
  | [a] => cell a
  | [] => []

/-- Counts belong to these emitted packet programs. They do not assert a
complete compressed arithmetic caller or any reduced physical allocation. -/
theorem codecGroups_counts {α : Type} (w : Nat → Wire) (cell : α → Program)
    (hc : ∀ a, toffoliCount (cell a)=1283 ∧ measurementCount (cell a)=1027)
    (start : Nat) (ls : List α) :
    toffoliCount (codecGroupForward w cell start ls)=1283*ls.length+7*(ls.length/3) ∧
    measurementCount (codecGroupForward w cell start ls)=1027*ls.length+ls.length/3 ∧
    toffoliCount (codecGroupBackward w cell start ls)=1283*ls.length+7*(ls.length/3) ∧
    measurementCount (codecGroupBackward w cell start ls)=1027*ls.length+ls.length/3 := by
  suffices aux : ∀ n start (ls : List α), ls.length=n →
      toffoliCount (codecGroupForward w cell start ls)=1283*ls.length+7*(ls.length/3) ∧
      measurementCount (codecGroupForward w cell start ls)=1027*ls.length+ls.length/3 ∧
      toffoliCount (codecGroupBackward w cell start ls)=1283*ls.length+7*(ls.length/3) ∧
      measurementCount (codecGroupBackward w cell start ls)=1027*ls.length+ls.length/3 by
    exact aux ls.length start ls rfl
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
    intro start ls hlen
    cases ls with
    | nil => simp [codecGroupForward,codecGroupBackward,toffoliCount,measurementCount]
    | cons a rest =>
      cases rest with
      | nil =>
        simp only [codecGroupForward,codecGroupBackward,(hc a).1,(hc a).2,List.length_cons,
          List.length_nil]
        norm_num
      | cons b rest =>
        cases rest with
        | nil =>
          simp only [codecGroupForward,codecGroupBackward,toffoliCount_append,
            measurementCount_append,(hc a).1,(hc a).2,(hc b).1,(hc b).2,
            List.length_cons,List.length_nil]
          norm_num
        | cons c tail =>
          have ht : tail.length < n := by simp only [List.length_cons] at hlen; omega
          have next := ih tail.length ht (start+3) tail rfl
          have codec := compressedHistory_counts w start
          simp only [codecGroupForward,codecGroupBackward,toffoliCount_append,
            measurementCount_append,codec.1,codec.2.1,codec.2.2.1,codec.2.2.2,
            (hc a).1,(hc a).2,(hc b).1,(hc b).2,(hc c).1,(hc c).2,
            next.1,next.2.1,next.2.2.1,next.2.2.2,List.length_cons]
          and_intros <;> omega

theorem codecGroups_512_counts {α : Type} (w : Nat → Wire) (cell : α → Program)
    (hc : ∀ a, toffoliCount (cell a)=1283 ∧ measurementCount (cell a)=1027)
    (ls : List α) (hl : ls.length=512) :
    toffoliCount (codecGroupForward w cell 0 ls)=658086 ∧
    measurementCount (codecGroupForward w cell 0 ls)=525994 ∧
    toffoliCount (codecGroupBackward w cell 0 ls)=658086 ∧
    measurementCount (codecGroupBackward w cell 0 ls)=525994 := by
  have h := codecGroups_counts w cell hc 0 ls
  simpa only [hl,Nat.reduceMul,Nat.reduceDiv,Nat.reduceAdd] using h

end ECDSAAdd.Arithmetic
#print axioms ECDSAAdd.Arithmetic.codecGroups_counts
#print axioms ECDSAAdd.Arithmetic.codecGroups_512_counts
