import ECDSAAdd.Arithmetic.ModularMultiplication.MontAdapterLayout
import ECDSAAdd.Framework.ProofLanguage

namespace ECDSAAdd.Arithmetic

open scoped ECDSAAdd.ProofLanguage

private theorem pow256_lt_pow257 : (2:Nat)^256<2^257 := by
  rw [show (257:Nat)=256+1 from rfl,Nat.pow_succ]
  have h := Nat.two_pow_pos 256
  omega

private theorem prepared_preserved (M : MontLayout) (p X Y : Nat) (hnd : M.wires.Nodup)
    (s t : BasisState) (h : MontPrepared M p X Y s)
    (he : ∀w, w∉M.out → t w=s w) : MontPrepared M p X Y t := by
  have keep (r : List Wire) (hr : r⊆M.x++M.y++M.work) : regValue r t=regValue r s :=
    regValue_congr _ _ _ (fun w hw => he w (List.disjoint_left.mp (M.out_disjoint hnd) (hr hw)))
  have hwA : M.a⊆M.x++M.y++M.work := by intro w hw; simp [MontLayout.work,MontLayout.activeA,hw]
  have hwZ : M.z⊆M.x++M.y++M.work := by intro w hw; simp [MontLayout.work,MontLayout.activeZ,hw]
  have hhA : M.hA⊆M.x++M.y++M.work := by intro w hw; simp [MontLayout.work,MontLayout.activeA,hw]
  have hhZ : M.hZ⊆M.x++M.y++M.work := by intro w hw; simp [MontLayout.work,MontLayout.activeZ,hw]
  refine ⟨(keep M.x (by intro w hw; simp [hw])).trans h.x,
    (keep M.y (by intro w hw; simp [hw])).trans h.y,
    (keep M.a hwA).trans h.a,(keep M.z hwZ).trans h.z,
    (keep M.hA hhA).trans h.hA,(keep M.hZ hhZ).trans h.hZ,?_,?_,
    (keep M.shared (by intro w hw; simp [MontLayout.work,hw])).trans h.shared⟩
  · exact (he M.fA (List.disjoint_left.mp (M.out_disjoint hnd)
      (by simp [MontLayout.work,MontLayout.activeA]))).trans h.fA
  · exact (he M.fZ (List.disjoint_left.mp (M.out_disjoint hnd)
      (by simp [MontLayout.work,MontLayout.activeZ]))).trans h.fZ

/-- 中段只更新输出即可复用完整P/Q；此组合引理不增加程序或状态抽象。 -/
private theorem montSandwich_spec (M : MontLayout) (p X Y O V : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (middle : Program)
    (hmid : ∀s m, MontPrepared M p X Y s.basis → regValue M.out s.basis=O →
      (run middle m s).phase=s.phase ∧
      (∀w, w∉M.out → (run middle m s).basis w=s.basis w) ∧
      regValue M.out (run middle m s).basis=V) :
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montP M p ++ middle ++ montQ M p
    {{ M.x=X,M.y=Y,M.out=V,M.work=0 }} := Proof
  -- Prepare the product and its reversible history without changing the output.
  { Triple (fun s => ((regValue M.x s=X ∧ regValue M.y s=Y) ∧ regValue M.out s=O) ∧ regValue M.work s=0)
      (montP M p) (fun s => MontPrepared M p X Y s ∧ regValue M.out s=O) } as prepared by (by
    intro s m h
    have hh := montP_correct M p X Y hw hnd hp hp16 hX hY s m h.1.1.1 h.1.1.2 h.2
    have hout : regValue M.out (run (montP M p) m s).basis=O := by
      apply Eq.trans (regValue_congr _ _ _ ?_) h.1.2
      intro w ho
      exact hh.2.1 w (fun hw' => List.disjoint_left.mp (M.out_disjoint hnd) (by simp [hw']) ho)
    exact ⟨hh.1,hh.2.2,hout⟩);
  -- The selected operation changes only the output; preparation remains available for cleanup.
  { Triple (fun s => MontPrepared M p X Y s ∧ regValue M.out s=O) middle
      (fun s => MontPrepared M p X Y s ∧ regValue M.out s=V) } as updated by (by
    intro s m h
    have hh := hmid s m h.1 h.2
    exact ⟨hh.1,prepared_preserved M p X Y hnd s.basis _ h.1 hh.2.1,hh.2.2⟩);
  -- Uncompute the product and all history, retaining the new output.
  { Triple (fun s => MontPrepared M p X Y s ∧ regValue M.out s=V) (montQ M p)
      (fun s => ((regValue M.x s=X ∧ regValue M.y s=Y) ∧ regValue M.out s=V) ∧ regValue M.work s=0) } as restored by (by
    intro s m h
    have hh := montQ_correct M p X Y hw hnd hp hp16 hX hY s m h.1
    have hout : regValue M.out (run (montQ M p) m s).basis=V := by
      apply Eq.trans (regValue_congr _ _ _ ?_) h.2
      intro w ho
      exact hh.2.1 w (fun hw' => List.disjoint_left.mp (M.out_disjoint hnd) (by simp [hw']) ho)
    exact ⟨hh.1,⟨⟨hh.2.2.1,hh.2.2.2.1⟩,hout⟩,hh.2.2.2.2⟩);
  conclude {
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montP M p ++ middle ++ montQ M p
    {{ M.x=X,M.y=Y,M.out=V,M.work=0 }}
  } by (prepared.seq updated).seq restored;

/-- 任意257位输出的标准模积XOR，全部历史由Q清空。 -/
theorem montMulXor_spec (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) :
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulXor M p
    {{ M.x=X,M.y=Y,M.out=(O ^^^ ((X*Y)%p)),M.work=0 }} := Proof
  { (X*Y)%p < p } as productBound by Nat.mod_lt _ (Fact.out : p.Prime).pos;
  { ∀ (s : State) (m : List Bool), MontPrepared M p X Y s.basis →
      regValue M.out s.basis=O →
      (run (copyRegister none M.product M.out) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (copyRegister none M.product M.out) m s).basis w=s.basis w) ∧
      regValue M.out (run (copyRegister none M.product M.out) m s).basis=O ^^^ ((X*Y)%p)
  } as copied by (by
    intro s m prepared outputBefore
    have distinct : (M.product++M.out).Nodup := by
      apply List.nodup_iff_count.mpr; intro w
      have hh := List.nodup_iff_count.mp hnd w
      have ht := (List.take_sublist 257 M.z).count_le w
      simp only [MontLayout.wires,MontLayout.work,MontLayout.activeZ,MontLayout.product,List.count_append] at hh ht ⊢
      omega
    { regValue M.product s.basis=(X*Y)%p } as productReady by
      M.product_value hw s.basis _ prepared.z
        (lt_trans productBound (lt_trans hp pow256_lt_pow257));
    have copy := copyRegister_correct none M.product M.out
      (by simp [MontLayout.product,hw.z,hw.out]) distinct (by simp) s m
    { regValue M.out (run (copyRegister none M.product M.out) m s).basis=O ^^^ ((X*Y)%p) }
      as outputAfter by (by simpa only [copyValue,outputBefore,productReady] using copy.2.2);
    conclude {
      (run (copyRegister none M.product M.out) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (copyRegister none M.product M.out) m s).basis w=s.basis w) ∧
      regValue M.out (run (copyRegister none M.product M.out) m s).basis=O ^^^ ((X*Y)%p)
    } by ⟨copy.1, copy.2.1, outputAfter⟩;);
  conclude {
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulXor M p
    {{ M.x=X,M.y=Y,M.out=(O ^^^ ((X*Y)%p)),M.work=0 }}
  } by montSandwich_spec M p X Y O _ hw hnd hp hp16 hX hY
      (copyRegister none M.product M.out) copied;



theorem montMulAdd_spec (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) :
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulAdd M p
    {{ M.x=X,M.y=Y,M.out=(O+(X*Y)%p)%p,M.work=0 }} := Proof
  -- The prepared product is the usual residue, not a Montgomery-encoded output.
  { (X*Y)%p < p } as productBound by Nat.mod_lt _ (Fact.out : p.Prime).pos;
  { ∀ (s : State) (m : List Bool), MontPrepared M p X Y s.basis →
      regValue M.out s.basis=O →
      (run (modAddInPlace M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (modAddInPlace M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (modAddInPlace M.addView p) m s).basis=(O+(X*Y)%p)%p
  } as updated by (by
    intro s m prepared outputBefore
    have hp0 := (Fact.out : p.Prime).pos
    { regValue M.addView.a s.basis=(X*Y)%p } as productReady by
      M.product_value hw s.basis _ prepared.z
        (lt_trans productBound (lt_trans hp pow256_lt_pow257));
    { regValue M.addView.z s.basis=O } as outputReady by
      (by rw [(M.add_ports hw).2]; exact outputBefore);
    { regValue M.addView.work s.basis=0 } as workClean by
      (regValue_zero _ _).mpr
        (fun w hw' => (regValue_zero _ _).mp prepared.shared w (M.add_work_subset hw hw'));
    have operation := modAddInPlace_spec M.addView 256 p ((X*Y)%p) O
      (M.add_widths hw) (M.add_nodup hw hnd)
      hp0 hp (Nat.le_of_lt productBound) hO s m ⟨⟨productReady,outputReady⟩,workClean⟩
    { ∀ w, w∉M.out → (run (modAddInPlace M.addView p) m s).basis w=s.basis w } as unchanged by (by
      intro w outside
      exact modAddInPlace_frame M.addView 256 p ((X*Y)%p) O
        (M.add_widths hw) (M.add_nodup hw hnd)
        hp0 hp (Nat.le_of_lt productBound) hO s m productReady outputReady workClean w
        (by rw [(M.add_ports hw).2]; exact outside));
    { regValue M.out (run (modAddInPlace M.addView p) m s).basis=(O+(X*Y)%p)%p } as outputAfter by
      (by simpa only [(M.add_ports hw).2] using operation.2.1.2);
    conclude {
      (run (modAddInPlace M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (modAddInPlace M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (modAddInPlace M.addView p) m s).basis=(O+(X*Y)%p)%p
    } by ⟨operation.1, unchanged, outputAfter⟩;);
  -- Prepare, update the output, then uncompute every product/history register.
  conclude {
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulAdd M p
    {{ M.x=X,M.y=Y,M.out=(O+(X*Y)%p)%p,M.work=0 }}
  } by montSandwich_spec M p X Y O _ hw hnd hp hp16 hX hY
      (modAddInPlace M.addView p) updated;



theorem montMulSub_spec (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : M.wires.Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) :
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulSub M p
    {{ M.x=X,M.y=Y,M.out=(O+p-(X*Y)%p)%p,M.work=0 }} := Proof
  -- The prepared product is the usual residue, not a Montgomery-encoded output.
  { (X*Y)%p < p } as productBound by Nat.mod_lt _ (Fact.out : p.Prime).pos;
  { ∀ (s : State) (m : List Bool), MontPrepared M p X Y s.basis →
      regValue M.out s.basis=O →
      (run (modSubInPlace M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (modSubInPlace M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (modSubInPlace M.addView p) m s).basis=(O+p-(X*Y)%p)%p
  } as updated by (by
    intro s m prepared outputBefore
    have hp0 := (Fact.out : p.Prime).pos
    { regValue M.addView.a s.basis=(X*Y)%p } as productReady by
      M.product_value hw s.basis _ prepared.z
        (lt_trans productBound (lt_trans hp pow256_lt_pow257));
    { regValue M.addView.z s.basis=O } as outputReady by
      (by rw [(M.add_ports hw).2]; exact outputBefore);
    { regValue M.addView.work s.basis=0 } as workClean by
      (regValue_zero _ _).mpr
        (fun w hw' => (regValue_zero _ _).mp prepared.shared w (M.add_work_subset hw hw'));
    have operation := modSubInPlace_spec M.addView 256 p ((X*Y)%p) O
      (M.add_widths hw) (M.add_nodup hw hnd)
      hp0 hp (Nat.le_of_lt productBound) hO s m ⟨⟨productReady,outputReady⟩,workClean⟩
    { ∀ w, w∉M.out → (run (modSubInPlace M.addView p) m s).basis w=s.basis w } as unchanged by (by
      intro w outside
      exact modSubInPlace_frame M.addView 256 p ((X*Y)%p) O
        (M.add_widths hw) (M.add_nodup hw hnd)
        hp0 hp (Nat.le_of_lt productBound) hO s m productReady outputReady workClean w
        (by rw [(M.add_ports hw).2]; exact outside));
    { regValue M.out (run (modSubInPlace M.addView p) m s).basis=(O+p-(X*Y)%p)%p } as outputAfter by
      (by simpa only [(M.add_ports hw).2] using operation.2.1.2);
    conclude {
      (run (modSubInPlace M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (modSubInPlace M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (modSubInPlace M.addView p) m s).basis=(O+p-(X*Y)%p)%p
    } by ⟨operation.1, unchanged, outputAfter⟩;);
  -- Prepare, update the output, then uncompute every product/history register.
  conclude {
    {{ M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulSub M p
    {{ M.x=X,M.y=Y,M.out=(O+p-(X*Y)%p)%p,M.work=0 }}
  } by montSandwich_spec M p X Y O _ hw hnd hp hp16 hX hY
      (modSubInPlace M.addView p) updated;




private theorem montControlledSandwich_spec (c : Wire) (B : Bool) (M : MontLayout) (p X Y O V : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (middle : Program)
    (hmid : ∀s m, s.basis c=B → MontPrepared M p X Y s.basis → regValue M.out s.basis=O →
      (run middle m s).phase=s.phase ∧
      (∀w, w∉M.out → (run middle m s).basis w=s.basis w) ∧
      regValue M.out (run middle m s).basis=V) :
    {{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }} montP M p ++ middle ++ montQ M p
    {{ c=B,M.x=X,M.y=Y,M.out=V,M.work=0 }} := Proof
  have hn := hnd.tail
  have hcnot : c∉M.work := fun h => (List.nodup_cons.mp hnd).1 (by simp [MontLayout.wires,h])
  have hcout : c∉M.out := fun h => (List.nodup_cons.mp hnd).1 (by simp [MontLayout.wires,h])
  -- The control is retained while preparing the product.
  { Triple (fun s => (((s c=B ∧ regValue M.x s=X) ∧ regValue M.y s=Y) ∧ regValue M.out s=O) ∧ regValue M.work s=0)
      (montP M p) (fun s => s c=B ∧ MontPrepared M p X Y s ∧ regValue M.out s=O) } as prepared by (by
    intro s m h
    have hh := montP_correct M p X Y hw hn hp hp16 hX hY s m h.1.1.1.2 h.1.1.2 h.2
    have hout : regValue M.out (run (montP M p) m s).basis=O := by
      apply Eq.trans (regValue_congr _ _ _ ?_) h.1.2
      intro w ho
      exact hh.2.1 w (fun hw' => List.disjoint_left.mp (M.out_disjoint hn) (by simp [hw']) ho)
    exact ⟨hh.1,(hh.2.1 c hcnot).trans h.1.1.1.1,hh.2.2,hout⟩);
  -- Only the selected output changes; control and product history are framed.
  { Triple (fun s => s c=B ∧ MontPrepared M p X Y s ∧ regValue M.out s=O) middle
      (fun s => s c=B ∧ MontPrepared M p X Y s ∧ regValue M.out s=V) } as updated by (by
    intro s m h
    have hh := hmid s m h.1 h.2.1 h.2.2
    exact ⟨hh.1,(hh.2.1 c hcout).trans h.1,prepared_preserved M p X Y hn s.basis _ h.2.1 hh.2.1,hh.2.2⟩);
  -- Cleanup restores every workspace register regardless of the control value.
  { Triple (fun s => s c=B ∧ MontPrepared M p X Y s ∧ regValue M.out s=V) (montQ M p)
      (fun s => (((s c=B ∧ regValue M.x s=X) ∧ regValue M.y s=Y) ∧ regValue M.out s=V) ∧ regValue M.work s=0) } as restored by (by
    intro s m h
    have hh := montQ_correct M p X Y hw hn hp hp16 hX hY s m h.2.1
    have hout : regValue M.out (run (montQ M p) m s).basis=V := by
      apply Eq.trans (regValue_congr _ _ _ ?_) h.2.2
      intro w ho
      exact hh.2.1 w (fun hw' => List.disjoint_left.mp (M.out_disjoint hn) (by simp [hw']) ho)
    exact ⟨hh.1,⟨⟨⟨(hh.2.1 c hcnot).trans h.1,hh.2.2.1⟩,hh.2.2.2.1⟩,hout⟩,hh.2.2.2.2⟩);
  conclude {
    {{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }} montP M p ++ middle ++ montQ M p
    {{ c=B,M.x=X,M.y=Y,M.out=V,M.work=0 }}
  } by (prepared.seq updated).seq restored;


theorem montMulControlledAdd_spec (c : Wire) (B : Bool) (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) :
    {{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulControlledAdd c M p
    {{ c=B,M.x=X,M.y=Y,M.out=(if B then (O+(X*Y)%p)%p else O),M.work=0 }} := Proof
  -- The prepared product is the usual residue, not a Montgomery-encoded output.
  { (X*Y)%p < p } as productBound by Nat.mod_lt _ (Fact.out : p.Prime).pos;
  { ∀ (s : State) (m : List Bool), s.basis c=B → MontPrepared M p X Y s.basis →
      regValue M.out s.basis=O →
      (run (controlledModAdd c M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (controlledModAdd c M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (controlledModAdd c M.addView p) m s).basis=(if B then (O+(X*Y)%p)%p else O)
  } as updated by (by
    intro s m hb prepared outputBefore
    have hp0 := (Fact.out : p.Prime).pos
    have hn := MontLayout.controlled_add_nodup c M hw hnd
    { regValue M.addView.a s.basis=(X*Y)%p } as productReady by
      M.product_value hw s.basis _ prepared.z
        (lt_trans productBound (lt_trans hp pow256_lt_pow257));
    { regValue M.addView.z s.basis=O } as outputReady by
      (by rw [(M.add_ports hw).2]; exact outputBefore);
    { regValue M.addView.work s.basis=0 } as workClean by
      (regValue_zero _ _).mpr
        (fun w hw' => (regValue_zero _ _).mp prepared.shared w (M.add_work_subset hw hw'));
    have operation := controlledModAdd_spec c M.addView 256 p ((X*Y)%p) O B
      (M.add_widths hw) hn
      hp0 hp (Nat.le_of_lt productBound) hO s m ⟨⟨⟨hb,productReady⟩,outputReady⟩,workClean⟩
    { ∀ w, w∉M.out → (run (controlledModAdd c M.addView p) m s).basis w=s.basis w } as unchanged by (by
      intro w outside
      exact controlledModAdd_frame c M.addView 256 p ((X*Y)%p) O B
        (M.add_widths hw) hn
        hp0 hp (Nat.le_of_lt productBound) hO s m hb productReady outputReady workClean w
        (by rw [(M.add_ports hw).2]; exact outside));
    { regValue M.out (run (controlledModAdd c M.addView p) m s).basis=(if B then (O+(X*Y)%p)%p else O) } as outputAfter by
      (by simpa only [(M.add_ports hw).2] using operation.2.1.2);
    conclude {
      (run (controlledModAdd c M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (controlledModAdd c M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (controlledModAdd c M.addView p) m s).basis=(if B then (O+(X*Y)%p)%p else O)
    } by ⟨operation.1, unchanged, outputAfter⟩;);
  -- Prepare, update the output, then uncompute every product/history register.
  conclude {
    {{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulControlledAdd c M p
    {{ c=B,M.x=X,M.y=Y,M.out=(if B then (O+(X*Y)%p)%p else O),M.work=0 }}
  } by montControlledSandwich_spec c B M p X Y O _ hw hnd hp hp16 hX hY
      (controlledModAdd c M.addView p) updated;



theorem montMulControlledSub_spec (c : Wire) (B : Bool) (M : MontLayout) (p X Y O : Nat) [Fact p.Prime]
    (hw : M.Widths) (hnd : (c::M.wires).Nodup) (hp : p<2^256) (hp16 : p%16=15)
    (hX : X<p) (hY : Y<2^256) (hO : O<p) :
    {{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulControlledSub c M p
    {{ c=B,M.x=X,M.y=Y,M.out=(if B then (O+p-(X*Y)%p)%p else O),M.work=0 }} := Proof
  -- The prepared product is the usual residue, not a Montgomery-encoded output.
  { (X*Y)%p < p } as productBound by Nat.mod_lt _ (Fact.out : p.Prime).pos;
  { ∀ (s : State) (m : List Bool), s.basis c=B → MontPrepared M p X Y s.basis →
      regValue M.out s.basis=O →
      (run (controlledModSub c M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (controlledModSub c M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (controlledModSub c M.addView p) m s).basis=(if B then (O+p-(X*Y)%p)%p else O)
  } as updated by (by
    intro s m hb prepared outputBefore
    have hp0 := (Fact.out : p.Prime).pos
    have hn := MontLayout.controlled_add_nodup c M hw hnd
    { regValue M.addView.a s.basis=(X*Y)%p } as productReady by
      M.product_value hw s.basis _ prepared.z
        (lt_trans productBound (lt_trans hp pow256_lt_pow257));
    { regValue M.addView.z s.basis=O } as outputReady by
      (by rw [(M.add_ports hw).2]; exact outputBefore);
    { regValue M.addView.work s.basis=0 } as workClean by
      (regValue_zero _ _).mpr
        (fun w hw' => (regValue_zero _ _).mp prepared.shared w (M.add_work_subset hw hw'));
    have operation := controlledModSub_spec c M.addView 256 p ((X*Y)%p) O B
      (M.add_widths hw) hn
      hp0 hp (Nat.le_of_lt productBound) hO s m ⟨⟨⟨hb,productReady⟩,outputReady⟩,workClean⟩
    { ∀ w, w∉M.out → (run (controlledModSub c M.addView p) m s).basis w=s.basis w } as unchanged by (by
      intro w outside
      exact controlledModSub_frame c M.addView 256 p ((X*Y)%p) O B
        (M.add_widths hw) hn
        hp0 hp (Nat.le_of_lt productBound) hO s m hb productReady outputReady workClean w
        (by rw [(M.add_ports hw).2]; exact outside));
    { regValue M.out (run (controlledModSub c M.addView p) m s).basis=(if B then (O+p-(X*Y)%p)%p else O) } as outputAfter by
      (by simpa only [(M.add_ports hw).2] using operation.2.1.2);
    conclude {
      (run (controlledModSub c M.addView p) m s).phase=s.phase ∧
      (∀ w, w∉M.out → (run (controlledModSub c M.addView p) m s).basis w=s.basis w) ∧
      regValue M.out (run (controlledModSub c M.addView p) m s).basis=(if B then (O+p-(X*Y)%p)%p else O)
    } by ⟨operation.1, unchanged, outputAfter⟩;);
  -- Prepare, update the output, then uncompute every product/history register.
  conclude {
    {{ c=B,M.x=X,M.y=Y,M.out=O,M.work=0 }} montMulControlledSub c M p
    {{ c=B,M.x=X,M.y=Y,M.out=(if B then (O+p-(X*Y)%p)%p else O),M.work=0 }}
  } by montControlledSandwich_spec c B M p X Y O _ hw hnd hp hp16 hX hY
      (controlledModSub c M.addView p) updated;


end ECDSAAdd.Arithmetic
