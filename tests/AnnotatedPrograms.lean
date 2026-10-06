import ECDSAAdd

open ECDSAAdd ECDSAAdd.Arithmetic ECDSAAdd.CertifiedTranslation
open scoped CircuitDSL

namespace AnnotatedPrograms

-- Parse the exact staged form with all generic/certified syntax imported together.
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    (prog {
      let borrow := (x + y) < const(q) using (ModAddPrepare W) by modAddPrepare_correct;
      {
        if (borrow XOR 1) { out ^= ((x + y) - const(q)); };
        if borrow { out ^= (x + y); };
      } using (ModAddSelectAndClear W) by modAddSelectAndClear_correct;
    } : Program) = modAddOn x y out q W := rfl

example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    (prog {
      let borrow := x < y using (ModSubPrepare W) by modSubPrepare_correct;
      {
        if (borrow XOR 1) { out ^= (x - y); };
        if borrow { out ^= ((x - y) + const(q)); };
      } using (ModSubSelectAndClear W) by modSubSelectAndClear_correct;
    } : Program) = modSubOn x y out q W := rfl

-- Generic layouts and arbitrary output values: no special all-zero output assumption.
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modAddOn x y out q W =
      ModReductionBackend.addPrepare W x y q ++ ModReductionBackend.addFinish W x y out q := rfl
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    modSubOn x y out q W =
      ModReductionBackend.subPrepare W x y q ++ ModReductionBackend.subFinish W x y out q := rfl

example (L : ModLayout) (hn : L.wires.Nodup) (q X Y O : Nat)
    (hq0 : 0<q) (hq : q<2^L.width) (hXY : X+Y<2*q) :
    Triple (ModValues L (ModValues.clean X Y O))
      (ModReductionBackend.addPrepare L.reductionWorkspace L.x L.y q)
      (ReductionKind.add.Ready L X Y O q) :=
  modAddPrepare_correct L rfl hn q hq0 hq X Y O hXY

example (L : ModLayout) (hn : L.wires.Nodup) (q X Y O : Nat)
    (hq0 : 0<q) (hq : q<2^L.width) (hX : X<q) (hY : Y<q) :
    Triple (ReductionKind.sub.Ready L X Y O q)
      (ModReductionBackend.subFinish L.reductionWorkspace L.x L.y (L.lowReg .out) q)
      (ModValues L (ModValues.clean X Y (O ^^^ ModReductionAlgorithm.subResult X Y q))) :=
  modSubSelectAndClear_correct L rfl hn q hq0 hq X Y O ⟨hX,hY⟩

-- The live interface says more than "borrow has the right value".
example (k : ReductionKind) (L : ModLayout) (X Y O q : Nat) (s : BasisState)
    (h : k.Ready L X Y O q s) :
    s L.high.diff = k.comparison X Y q ∧
    regValue (L.reg .modulus) s = q ∧ s L.cinSum = false ∧ s L.cinDiff = false := by
  refine ⟨h.2, ?_, h.1.2⟩
  have hm := h.1.1 ModField.modulus
  cases k <;> simpa [ReductionKind.prepared, ModReductionBackend.addPrepared,
    ModReductionBackend.subPrepared] using hm

-- Exact gate-list equivalence implies unchanged resources and measurement ordering.
example (W : ModReductionWorkspace) (x y out : List Wire) (q : Nat) :
    toffoliCount (modAddOn x y out q W) =
      toffoliCount ((modReductionContext W).operations.reduceAdd x y out q) ∧
    measurementCount (modSubOn x y out q W) =
      measurementCount ((modReductionContext W).operations.reduceSub x y out q) := by
  rw [modAddOn_backend, modSubOn_backend]
  exact ⟨rfl,rfl⟩

-- Inline single statements and shared blocks still retain their entire certificates.
example (L : ModLayout) (q : Nat) :
    (prog { L.out ^= (L.x+L.y) mod q using (modAdd L q)
      by (fun hn => modAddOn_mod_spec L hn q); } : CheckedProgram).circuit = modAdd L q := rfl
example (L : ModLayout) (q : Nat) :
    (prog {
      {
        let sum := L.x + L.y;
        L.out ^= sum mod q;
      } using (modAdd L q) by (fun hn => modAddOn_mod_spec L hn q);
    } : CheckedProgram).circuit = modAdd L q := rfl

example (_W _W' : ModReductionWorkspace) (_x _y _out : List Wire) (_q : Nat) : True := by
  -- Wrong preparation proof.
  fail_if_success
    have _bad : Program := prog {
      let borrow := (_x+_y) < const(_q) using (ModAddPrepare _W) by modSubPrepare_correct;
      {
        if (borrow XOR 1) { _out ^= ((_x+_y)-const(_q)); };
        if borrow { _out ^= (_x+_y); };
      } using (ModAddSelectAndClear _W) by modAddSelectAndClear_correct;
    }
  -- Both stages must use the same physical workspace.
  fail_if_success
    have _bad : Program := prog {
      let borrow := (_x+_y) < const(_q) using (ModAddPrepare _W) by modAddPrepare_correct;
      {
        if (borrow XOR 1) { _out ^= ((_x+_y)-const(_q)); };
        if borrow { _out ^= (_x+_y); };
      } using (ModAddSelectAndClear _W') by modAddSelectAndClear_correct;
    }
  -- A subtraction finish cannot consume an addition-ready state.
  fail_if_success
    have _bad : Program := prog {
      let borrow := (_x+_y) < const(_q) using (ModAddPrepare _W) by modAddPrepare_correct;
      {
        if (borrow XOR 1) { _out ^= ((_x+_y)-const(_q)); };
        if borrow { _out ^= (_x+_y); };
      } using (ModSubSelectAndClear _W) by modSubSelectAndClear_correct;
    }
  -- A theorem about a different circuit does not certify an empty implementation.
  fail_if_success
    have _bad : Program := prog {
      let borrow := (_x+_y) < const(_q)
        using (⟨_W, fun _ _ _ => []⟩ : ReductionPrepare) by modAddPrepare_correct;
      {
        if (borrow XOR 1) { _out ^= ((_x+_y)-const(_q)); };
        if borrow { _out ^= (_x+_y); };
      } using (ModAddSelectAndClear _W) by modAddSelectAndClear_correct;
    }
  -- The source is checked; it is not an ignored comment attached to an implementation.
  fail_if_success
    have _bad : Program := prog {
      let borrow := (_x+_y) < const(_q) using (ModAddPrepare _W) by modAddPrepare_correct;
      {
        if (borrow XOR 1) { _out ^= ((_x+_y)-const(_q)); };
        if borrow { _out ^= (_x+_x); };
      } using (ModAddSelectAndClear _W) by modAddSelectAndClear_correct;
    }
  -- An unrelated proof is rejected even if the implementation name is right.
  fail_if_success
    have _bad : Program := prog {
      let borrow := _x < _y using (ModSubPrepare _W) by True.intro;
      {
        if (borrow XOR 1) { _out ^= (_x-_y); };
        if borrow { _out ^= ((_x-_y)+const(_q)); };
      } using (ModSubSelectAndClear _W) by modSubSelectAndClear_correct;
    }
  trivial

example (_L : ModLayout) (_q : Nat) : True := by
  fail_if_success
    have _bad : CheckedProgram := prog {
      _L.out ^= (_L.x*_L.y) mod _q using (modAdd _L _q) by (fun hn => modAddOn_mod_spec _L hn _q);
    }
  fail_if_success
    have _bad : CheckedProgram := prog {
      {
        let sum := _L.x + _L.x;
        _L.out ^= sum mod _q;
      } using (modAdd _L _q) by (fun hn => modAddOn_mod_spec _L hn _q);
    }
  trivial

end AnnotatedPrograms
