import ECDSAAdd

-- Pre-refactor recursive definitions, retained only as regression references.
-- Equality of Programs preserves every gate and the ordering of measurement consumption.
namespace ECDSAAdd.Arithmetic
open Instr

private def old_copyRegister (control : Option Wire) : List Wire → List Wire → Program
  | a :: src, b :: dst =>
      [copyGate control a b] ++
        old_copyRegister control src dst
  | _, _ => []

example (control : Option Wire) (src dst : List Wire) :
    copyRegister control src dst = old_copyRegister control src dst := by
  induction src generalizing dst with
  | nil => simp [copyRegister, old_copyRegister]
  | cons a src ih =>
    cases dst with
    | nil => simp [copyRegister, old_copyRegister]
    | cons b dst =>
      simpa only [old_copyRegister] using
        congrArg ([copyGate control a b] ++ ·) (ih dst)

private def old_selectXor : List SelectBit → Wire → Program
  | [], _ => []
  | b :: bs, flag => prog { Instr.CX b.no b.out;
      Instr.CX b.yes b.no; Instr.CCX flag b.no b.out; Instr.CX b.yes b.no } ++ old_selectXor bs flag

example (bs : List SelectBit) (flag : Wire) : selectXor bs flag = old_selectXor bs flag := by
  induction bs with
  | nil => rfl
  | cons b bs ih =>
    simpa only [old_selectXor] using congrArg
      ([Instr.CX b.no b.out, Instr.CX b.yes b.no, Instr.CCX flag b.no b.out, Instr.CX b.yes b.no] ++ ·) ih

private def old_montPrepareRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) : Nat → Program
  | 0 => []
  | k+1 => old_montPrepareRounds L x y p k ++ montWindow L x y p k

example (L : MontStageLayout) (x y : List Wire) (p k : Nat) :
    montPrepareRounds L x y p k = old_montPrepareRounds L x y p k := by
  induction k with
  | zero => rfl
  | succ k ih => rw [montPrepareRounds_succ, old_montPrepareRounds, ih]

private def old_montRestoreRounds (L : MontStageLayout) (x y : List Wire) (p : Nat) : Nat → Program
  | 0 => []
  | k+1 => montRestoreWindow L x y p k ++ old_montRestoreRounds L x y p k

example (L : MontStageLayout) (x y : List Wire) (p k : Nat) :
    montRestoreRounds L x y p k = old_montRestoreRounds L x y p k := by
  induction k with
  | zero => rfl
  | succ k ih => rw [montRestoreRounds_succ, old_montRestoreRounds, ih]

private def old_constPrepareRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) : Nat → Program
  | 0 => []
  | k+1 => old_constPrepareRounds L y p K k ++ constMontWindow L y p K k

example (L : MontStageLayout) (y : List Wire) (p K k : Nat) :
    constPrepareRounds L y p K k = old_constPrepareRounds L y p K k := by
  induction k with
  | zero => rfl
  | succ k ih => rw [constPrepareRounds_succ, old_constPrepareRounds, ih]

private def old_constRestoreRounds (L : MontStageLayout) (y : List Wire) (p K : Nat) : Nat → Program
  | 0 => []
  | k+1 => constMontRestoreWindow L y p K k ++ old_constRestoreRounds L y p K k

example (L : MontStageLayout) (y : List Wire) (p K k : Nat) :
    constRestoreRounds L y p K k = old_constRestoreRounds L y p K k := by
  induction k with
  | zero => rfl
  | succ k ih => rw [constRestoreRounds_succ, old_constRestoreRounds, ih]

private def old_kaliskiLoop (L : KaliskiRoundLayout) (i : Nat) : List RoundRecord → Program
  | [] => []
  | r::rs => kaliskiRound (L.withRecord r) i ++ old_kaliskiLoop L.swapCounter (i+1) rs

example (L : KaliskiRoundLayout) (i : Nat) (rs : List RoundRecord) :
    kaliskiLoop L i rs = old_kaliskiLoop L i rs := by
  induction rs generalizing L i with
  | nil => rfl
  | cons r rs ih => rw [kaliskiLoop_cons, old_kaliskiLoop, ih]

private def old_kaliskiUnloop (L : KaliskiRoundLayout) (i : Nat) : List RoundRecord → Program
  | [] => []
  | r::rs => old_kaliskiUnloop L.swapCounter (i+1) rs ++ kaliskiUnround (L.withRecord r) i

example (L : KaliskiRoundLayout) (i : Nat) (rs : List RoundRecord) :
    kaliskiUnloop L i rs = old_kaliskiUnloop L i rs := by
  induction rs generalizing L i with
  | nil => rfl
  | cons r rs ih => rw [kaliskiUnloop_cons, old_kaliskiUnloop, ih]

private def old_compareChain (control : Option Wire) :
    List Wire → List Wire → List Wire → Wire → Wire → Program
  | a :: as, b :: bs, c :: cs, cin, target =>
      majority a b cin c ++ old_compareChain control as bs cs c target ++ eraseCarry a b cin c
  | [], [], [], cin, target => flipBelow control cin target
  | _, _, _, _, _ => []

-- This includes unequal register lengths, not only the well-formed layouts of the specs.
example (control : Option Wire) (x y carry : List Wire) (cin target : Wire) :
    compareChain control x y carry cin target = old_compareChain control x y carry cin target := by
  induction x generalizing y carry cin with
  | nil => cases y <;> cases carry <;> simp [compareChain, old_compareChain]
  | cons a as ih =>
    cases y with
    | nil => simp [compareChain, old_compareChain]
    | cons b bs =>
      cases carry with
      | nil => simp [compareChain, old_compareChain]
      | cons c cs =>
        have step : compareChain control (a::as) (b::bs) (c::cs) cin target =
            majority a b cin c ++ compareChain control as bs cs c target ++ eraseCarry a b cin c := by
          simp [compareChain, Nat.succ_min_succ, List.ofFn_succ, List.reverse_cons,
            List.flatten_append, List.append_assoc]
        rw [step, old_compareChain, ih]

private def old_zeroControlled (c target : Wire) : List ZeroBit → Program
  | [] => [.CX c target]
  | b::bs =>
      [.X b.input, .CCX c b.input b.work, .X b.input] ++
      old_zeroControlled b.work target bs ++
      [.X b.input, .measureX b.work [] [.CZ c b.input], .X b.input]

example (c target : Wire) (bs : List ZeroBit) :
    zeroControlled c target bs = old_zeroControlled c target bs := by
  induction bs generalizing c with
  | nil => rfl
  | cons b bs ih =>
    have step : zeroControlled c target (b::bs) =
        [.X b.input, .CCX c b.input b.work, .X b.input] ++ zeroControlled b.work target bs ++
        [.X b.input, .measureX b.work [] [.CZ c b.input], .X b.input] := by
      simp [zeroControlled, List.ofFn_succ, List.reverse_cons, List.flatten_append, List.append_assoc]
      rfl
    rw [step, old_zeroControlled, ih]

-- Degenerate and unequal-length cases retain their original instruction lists.
example : compareChain none [0, 1] [2] [3, 4] 5 6 =
    majority 0 2 5 3 ++ eraseCarry 0 2 5 3 := by decide
example : copyRegister none [0, 1] [2] = [.CX 0 2] := rfl
example (c : Wire) : shiftRight c [] = [] ∧ shiftLeft c [0] = [] := ⟨rfl, rfl⟩
example : rotateRight [] = [] ∧ rotateLeft [0] = [] := ⟨rfl, rfl⟩

private def old_shiftRight (c : Wire) : List Wire → Program
  | a::b::bs => cswap c a b ++ old_shiftRight c (b::bs)
  | _ => []

example (c : Wire) (r : List Wire) : shiftRight c r = old_shiftRight c r := by
  induction r with
  | nil => rfl
  | cons a r ih =>
    cases r with
    | nil => rfl
    | cons b bs =>
      have step : shiftRight c (a::b::bs) = cswap c a b ++ shiftRight c (b::bs) := by
        rfl
      rw [step, old_shiftRight, ih]

private def old_shiftLeft (c : Wire) : List Wire → Program
  | a::b::bs => old_shiftLeft c (b::bs) ++ cswap c a b
  | _ => []

example (c : Wire) (r : List Wire) : shiftLeft c r = old_shiftLeft c r := by
  induction r with
  | nil => rfl
  | cons a r ih =>
    cases r with
    | nil => rfl
    | cons b bs =>
      have step : shiftLeft c (a::b::bs) = shiftLeft c (b::bs) ++ cswap c a b := by
        simp [shiftLeft, List.reverse_cons, List.flatMap_append]
      rw [step, old_shiftLeft, ih]

private def old_rotateRight : List Wire → Program
  | a::b::bs => swapBits a b ++ old_rotateRight (b::bs)
  | _ => []

example (r : List Wire) : rotateRight r = old_rotateRight r := by
  induction r with
  | nil => rfl
  | cons a r ih =>
    cases r with
    | nil => rfl
    | cons b bs =>
      have step : rotateRight (a::b::bs) = swapBits a b ++ rotateRight (b::bs) := by
        rfl
      rw [step, old_rotateRight, ih]

private def old_rotateLeft : List Wire → Program
  | a::b::bs => old_rotateLeft (b::bs) ++ swapBits a b
  | _ => []

example (r : List Wire) : rotateLeft r = old_rotateLeft r := by
  induction r with
  | nil => rfl
  | cons a r ih =>
    cases r with
    | nil => rfl
    | cons b bs =>
      have step : rotateLeft (a::b::bs) = rotateLeft (b::bs) ++ swapBits a b := by
        simp [rotateLeft, List.reverse_cons, List.flatMap_append]
      rw [step, old_rotateLeft, ih]

end ECDSAAdd.Arithmetic
