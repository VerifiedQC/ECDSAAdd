import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitParts
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk1

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Step15ExitBank_incomingDistinct : ([s6Step15ExitGRow,s6Step15ExitFRow,s6Step15ExitFvRow,s6Step15ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15ExitBank_outgoingOwned : rowsOwned s6Step15ExitGvAfter [s6Step15ExitGOut,s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step15ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15ExitG_Incoming : rowsOwned s6Step15ExitGBefore [s6Step15ExitGRow,s6Step15ExitFRow,s6Step15ExitFvRow,s6Step15ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15ExitGRow,s6Step15ExitFRow,s6Step15ExitFvRow,s6Step15ExitGvRow] 0 s6Step15ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15ExitG_Outgoing : rowsOwned s6Step15ExitGvAfter [s6Step15ExitGOut,s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut] :=
  hmrRows_owned_drop s6Step15ExitGvAfter [s6Step15ExitGOut,s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut] 0 s6Step15ExitBank_outgoingOwned
theorem s6Step15ExitF_Incoming : rowsOwned s6Step15ExitFBefore [s6Step15ExitFRow,s6Step15ExitFvRow,s6Step15ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15ExitGRow,s6Step15ExitFRow,s6Step15ExitFvRow,s6Step15ExitGvRow] 1 s6Step15ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15ExitF_Outgoing : rowsOwned s6Step15ExitGvAfter [s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut] :=
  hmrRows_owned_drop s6Step15ExitGvAfter [s6Step15ExitGOut,s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut] 1 s6Step15ExitBank_outgoingOwned
theorem s6Step15ExitFv_Incoming : rowsOwned s6Step15ExitFvBefore [s6Step15ExitFvRow,s6Step15ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15ExitGRow,s6Step15ExitFRow,s6Step15ExitFvRow,s6Step15ExitGvRow] 2 s6Step15ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15ExitFv_Outgoing : rowsOwned s6Step15ExitGvAfter [s6Step15ExitFvOut,s6Step15ExitGvOut] :=
  hmrRows_owned_drop s6Step15ExitGvAfter [s6Step15ExitGOut,s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut] 2 s6Step15ExitBank_outgoingOwned
theorem s6Step15ExitGv_Incoming : rowsOwned s6Step15ExitGvBefore [s6Step15ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15ExitGRow,s6Step15ExitFRow,s6Step15ExitFvRow,s6Step15ExitGvRow] 3 s6Step15ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15ExitGv_Outgoing : rowsOwned s6Step15ExitGvAfter [s6Step15ExitGvOut] :=
  hmrRows_owned_drop s6Step15ExitGvAfter [s6Step15ExitGOut,s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut] 3 s6Step15ExitBank_outgoingOwned
theorem s6Step15ExitBank_rows : planWindowRowsLog s6Step15ExitGBefore [(s6Step15ExitGRow,255),(s6Step15ExitFRow,256),(s6Step15ExitFvRow,17),(s6Step15ExitGvRow,15)] [[],[],[],[]]=
    some (s6Step15ExitGvAfter,[s6Step15ExitGOut,s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut],(shrinkRow 777 s6Step15ExitGExtra ++ (shrinkRow 795 s6Step15ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step15ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step15ExitGvAfter [] []=some (s6Step15ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step15ExitGvBefore s6Step15ExitGvAfter s6Step15ExitGvAfter
    s6Step15ExitGvRow s6Step15ExitGvOut 15 [] [] [] []
    (shrinkRow 775 s6Step15ExitGvExtra) ([]) s6Step15ExitGv_Incoming s6Step15ExitGv_checked h4 s6Step15ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step15ExitFvBefore s6Step15ExitFvAfter s6Step15ExitGvAfter
    s6Step15ExitFvRow s6Step15ExitFvOut 17 [] [(s6Step15ExitGvRow,15)] [[]] [s6Step15ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step15ExitGvExtra ++ [])) s6Step15ExitFv_Incoming s6Step15ExitFv_checked h3 s6Step15ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step15ExitFBefore s6Step15ExitFAfter s6Step15ExitGvAfter
    s6Step15ExitFRow s6Step15ExitFOut 256 [] [(s6Step15ExitFvRow,17),(s6Step15ExitGvRow,15)] [[],[]] [s6Step15ExitFvOut,s6Step15ExitGvOut]
    (shrinkRow 795 s6Step15ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step15ExitGvExtra ++ []))) s6Step15ExitF_Incoming s6Step15ExitF_checked h2 s6Step15ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step15ExitGBefore s6Step15ExitGAfter s6Step15ExitGvAfter
    s6Step15ExitGRow s6Step15ExitGOut 255 [] [(s6Step15ExitFRow,256),(s6Step15ExitFvRow,17),(s6Step15ExitGvRow,15)] [[],[],[]] [s6Step15ExitFOut,s6Step15ExitFvOut,s6Step15ExitGvOut]
    (shrinkRow 777 s6Step15ExitGExtra) ((shrinkRow 795 s6Step15ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step15ExitGvExtra ++ [])))) s6Step15ExitG_Incoming s6Step15ExitG_checked h1 s6Step15ExitG_Outgoing
  exact h0
theorem s6Step15ExitBank_checked : compileHmrBankResizeLog .exit s6Step15ExitGBefore ⟨s6Step15ExitFRow,s6Step15ExitGRow,s6Step15ExitFvRow,s6Step15ExitGvRow⟩ ⟨256,255,17,15⟩ [[],[],[],[]]=
    some (s6Step15ExitGvAfter,⟨s6Step15ExitFOut,s6Step15ExitGOut,s6Step15ExitFvOut,s6Step15ExitGvOut⟩,(shrinkRow 777 s6Step15ExitGExtra ++ (shrinkRow 795 s6Step15ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step15ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step15ExitBank_rows]
  rfl
theorem s6Step498ExitBank_incomingDistinct : ([s6Step498ExitGRow,s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498ExitBank_outgoingOwned : rowsOwned s6Step498ExitGvAfter [s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitG_Incoming : rowsOwned s6Step498ExitGBefore [s6Step498ExitGRow,s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498ExitGRow,s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] 0 s6Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitG_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] :=
  hmrRows_owned_drop s6Step498ExitGvAfter [s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] 0 s6Step498ExitBank_outgoingOwned
theorem s6Step498ExitF_Incoming : rowsOwned s6Step498ExitFBefore [s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498ExitGRow,s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] 1 s6Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitF_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] :=
  hmrRows_owned_drop s6Step498ExitGvAfter [s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] 1 s6Step498ExitBank_outgoingOwned
theorem s6Step498ExitFv_Incoming : rowsOwned s6Step498ExitFvBefore [s6Step498ExitFvRow,s6Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498ExitGRow,s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] 2 s6Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitFv_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitFvOut,s6Step498ExitGvOut] :=
  hmrRows_owned_drop s6Step498ExitGvAfter [s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] 2 s6Step498ExitBank_outgoingOwned
theorem s6Step498ExitGv_Incoming : rowsOwned s6Step498ExitGvBefore [s6Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498ExitGRow,s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] 3 s6Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitGv_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitGvOut] :=
  hmrRows_owned_drop s6Step498ExitGvAfter [s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] 3 s6Step498ExitBank_outgoingOwned
theorem s6Step498ExitBank_rows : planWindowRowsLog s6Step498ExitGBefore [(s6Step498ExitGRow,24),(s6Step498ExitFRow,24),(s6Step498ExitFvRow,267),(s6Step498ExitGvRow,266)] [[],[],[],[]]=
    some (s6Step498ExitGvAfter,[s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut],(shrinkRow 777 s6Step498ExitGExtra ++ (shrinkRow 795 s6Step498ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step498ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step498ExitGvAfter [] []=some (s6Step498ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step498ExitGvBefore s6Step498ExitGvAfter s6Step498ExitGvAfter
    s6Step498ExitGvRow s6Step498ExitGvOut 266 [] [] [] []
    (shrinkRow 775 s6Step498ExitGvExtra) ([]) s6Step498ExitGv_Incoming s6Step498ExitGv_checked h4 s6Step498ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step498ExitFvBefore s6Step498ExitFvAfter s6Step498ExitGvAfter
    s6Step498ExitFvRow s6Step498ExitFvOut 267 [] [(s6Step498ExitGvRow,266)] [[]] [s6Step498ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step498ExitGvExtra ++ [])) s6Step498ExitFv_Incoming s6Step498ExitFv_checked h3 s6Step498ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step498ExitFBefore s6Step498ExitFAfter s6Step498ExitGvAfter
    s6Step498ExitFRow s6Step498ExitFOut 24 [] [(s6Step498ExitFvRow,267),(s6Step498ExitGvRow,266)] [[],[]] [s6Step498ExitFvOut,s6Step498ExitGvOut]
    (shrinkRow 795 s6Step498ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step498ExitGvExtra ++ []))) s6Step498ExitF_Incoming s6Step498ExitF_checked h2 s6Step498ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step498ExitGBefore s6Step498ExitGAfter s6Step498ExitGvAfter
    s6Step498ExitGRow s6Step498ExitGOut 24 [] [(s6Step498ExitFRow,24),(s6Step498ExitFvRow,267),(s6Step498ExitGvRow,266)] [[],[],[]] [s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut]
    (shrinkRow 777 s6Step498ExitGExtra) ((shrinkRow 795 s6Step498ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step498ExitGvExtra ++ [])))) s6Step498ExitG_Incoming s6Step498ExitG_checked h1 s6Step498ExitG_Outgoing
  exact h0
theorem s6Step498ExitBank_checked : compileHmrBankResizeLog .exit s6Step498ExitGBefore ⟨s6Step498ExitFRow,s6Step498ExitGRow,s6Step498ExitFvRow,s6Step498ExitGvRow⟩ ⟨24,24,267,266⟩ [[],[],[],[]]=
    some (s6Step498ExitGvAfter,⟨s6Step498ExitFOut,s6Step498ExitGOut,s6Step498ExitFvOut,s6Step498ExitGvOut⟩,(shrinkRow 777 s6Step498ExitGExtra ++ (shrinkRow 795 s6Step498ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step498ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step498ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
