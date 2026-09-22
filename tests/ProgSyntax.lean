import ECDSAAdd.Arithmetic.Addition.InPlaceAdder

open ECDSAAdd ECDSAAdd.Arithmetic ECDSAAdd.Instr

-- Old notation, including the empty circuit, remains supported.
example : (prog {} : Program) = [] := rfl
example : prog { CX 0 1; X 2 } = [CX 0 1, X 2] := rfl
example : prog { if meas 0 = 1 then [Correction.Z 1] else skip } =
    [measureX 0 [] [Correction.Z 1]] := rfl

-- A statement can be a gate or a subcircuit; arguments retain their order.
example : prog { CX(0, 1); majority(2, 3, 4, 5); X(6); } =
    [CX 0 1] ++ majority 2 3 4 5 ++ [X 6] := rfl

-- Forward/reverse iteration, empty ranges, and loop-local bindings.
example : prog {
    for i in range(3) { X(i); };
    for i in reversed(range(3)) { CX(i, 9); };
  } = [X 0, X 1, X 2, CX 2 9, CX 1 9, CX 0 9] := by decide

example : prog {
    for i in range(0) { X(i); };
    for i in reversed(range(0)) { X(i); };
  } = [] := by decide

example : prog {
    let i := 9;
    for i in range(2) {
      let target := i + 3;
      CX(i, target);
    };
    X(i);
  } = [CX 0 3, CX 1 4, X 9] := by decide

example : prog {
    for i in range(2) {
      for j in reversed(range(2)) { CX(i, j); };
    };
  } = [CX 0 1, CX 0 0, CX 1 1, CX 1 0] := by decide

-- Loop bounds support safe indexing, without fallback wires.
example (x : List Wire) : Program := prog {
  for i in range(x.length) { X(x[i]); };
}

example (_x : List Wire) : True := by
  fail_if_success
    have _bad : Program := prog { X(_x[_x.length]); }
  trivial

-- One-bit base case and a three-bit instruction-order regression.
example : addInPlace [0] [1] [] 2 = [CX 0 1, CX 2 1] := by decide

example : addInPlace [0, 1, 2] [3, 4, 5] [6, 7] 8 =
    majority 0 3 8 6 ++ majority 1 4 6 7 ++
    [CX 2 5, CX 7 5] ++
    eraseCarry 1 4 6 7 ++ [CX 1 4, CX 6 4] ++
    eraseCarry 0 3 8 6 ++ [CX 0 3, CX 8 3] := by decide

-- Unsupported register shapes are rejected by returning an empty circuit.
example : addInPlace [] [] [] 0 = [] := by decide
example : addInPlace [0, 1] [2] [] 3 = [] := by decide
example : addInPlace [0, 1] [2, 3] [] 4 = [] := by decide

#print axioms ECDSAAdd.Arithmetic.addInPlace_correct
#print axioms ECDSAAdd.Arithmetic.addInPlace_spec
#print axioms ECDSAAdd.Arithmetic.addInPlace_resources
