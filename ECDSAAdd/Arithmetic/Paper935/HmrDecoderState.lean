import ECDSAAdd.Arithmetic.Paper935.HmrDecoderAllocation
import ECDSAAdd.Arithmetic.Paper935.HmrDecodeFixup

namespace ECDSAAdd.Arithmetic.Paper935

theorem compileHmrDecoder_state (A B : Arena) (v : Fin 13 → Wire) (work : List Wire)
    (h : compileHmrDecoder A v=some (B,work)) (s : State) (m : List Bool)
    (ready : A.Ready s.basis) :
    let w := hmrAllocatedDecoderPorts v work
    let out := run (hmrDecoderCompute w) m s
    out.phase=s.phase ∧ B.Ready out.basis ∧ (∀q∈A.live,out.basis q=s.basis q) := by
  let w := hmrAllocatedDecoderPorts v work
  have clean := compileHmrDecoder_clean A B v work h s.basis ready
  have result := hmrDecoderCompute_run_aliased w (compileHmrDecoder_geometry A B v work h) s m
    ⟨clean 14 (by decide),clean 15 (by decide),clean 16 (by decide),clean 17 (by decide),clean 18 (by decide)⟩
  have hc := compileHmrDecoder_contract A B v work h
  have ports := hmrBorrowPorts_contract A B 6 work hc.2.2
  have port (i : Fin 19) (hi : 13 ≤ i.val) :
      w i=hmrBorrowPorts work (⟨i.val-13,by omega⟩ : Fin 6) := by
    simp only [w,hmrAllocatedDecoderPorts,dif_neg (by omega : ¬ i.val < 13)]
  have frame (q : Wire) (away : ∀i : Fin 6,q≠hmrBorrowPorts work i) :
      (run (hmrDecoderCompute w) m s).basis q=s.basis q := by
    rw [result]
    apply hmrDecoderComputed_frame
    simp only [List.mem_cons,List.not_mem_nil,or_false,not_or]
    refine ⟨?_,?_,?_,?_,?_,?_⟩
    all_goals rw [port _ (by decide)]; exact away _
  dsimp only
  have phase := congrArg State.phase result
  refine ⟨phase,?_,?_⟩
  · intro q hq hn
    rw [frame q (fun i eq => hn (eq ▸ ports.2.1 i))]
    apply ready q hq
    intro old
    apply hn
    rw [(A.borrowMany_live B 6 work hc.2.2).1]
    exact Finset.mem_union_left _ old
  · intro q hq
    exact frame q (fun i eq => ports.2.2 i (eq ▸ hq))

end ECDSAAdd.Arithmetic.Paper935
