import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitParts
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk0

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step498ExitBank_incomingDistinct : ([s2Step498ExitGRow,s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498ExitBank_outgoingOwned : rowsOwned s2Step498ExitGvAfter [s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitGvAfter (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (920≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitG_Incoming : rowsOwned s2Step498ExitGBefore [s2Step498ExitGRow,s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498ExitGRow,s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] 0 s2Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498ExitGBefore (fun q => (0≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitG_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] :=
  hmrRows_owned_drop s2Step498ExitGvAfter [s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] 0 s2Step498ExitBank_outgoingOwned
theorem s2Step498ExitF_Incoming : rowsOwned s2Step498ExitFBefore [s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498ExitGRow,s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] 1 s2Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498ExitFBefore (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<917) ∨ (918≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitF_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] :=
  hmrRows_owned_drop s2Step498ExitGvAfter [s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] 1 s2Step498ExitBank_outgoingOwned
theorem s2Step498ExitFv_Incoming : rowsOwned s2Step498ExitFvBefore [s2Step498ExitFvRow,s2Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498ExitGRow,s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] 2 s2Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498ExitFvBefore (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (919≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitFv_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitFvOut,s2Step498ExitGvOut] :=
  hmrRows_owned_drop s2Step498ExitGvAfter [s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] 2 s2Step498ExitBank_outgoingOwned
theorem s2Step498ExitGv_Incoming : rowsOwned s2Step498ExitGvBefore [s2Step498ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step498ExitGRow,s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] 3 s2Step498ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step498ExitGvBefore (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (919≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitGv_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitGvOut] :=
  hmrRows_owned_drop s2Step498ExitGvAfter [s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] 3 s2Step498ExitBank_outgoingOwned
theorem s2Step498ExitBank_rows : planWindowRowsLog s2Step498ExitGBefore [(s2Step498ExitGRow,24),(s2Step498ExitFRow,24),(s2Step498ExitFvRow,267),(s2Step498ExitGvRow,266)] [[],[],[],[]]=
    some (s2Step498ExitGvAfter,[s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut],(shrinkRow 769 s2Step498ExitGExtra ++ (shrinkRow 768 s2Step498ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step498ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step498ExitGvAfter [] []=some (s2Step498ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step498ExitGvBefore s2Step498ExitGvAfter s2Step498ExitGvAfter
    s2Step498ExitGvRow s2Step498ExitGvOut 266 [] [] [] []
    (shrinkRow 771 s2Step498ExitGvExtra) ([]) s2Step498ExitGv_Incoming s2Step498ExitGv_checked h4 s2Step498ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step498ExitFvBefore s2Step498ExitFvAfter s2Step498ExitGvAfter
    s2Step498ExitFvRow s2Step498ExitFvOut 267 [] [(s2Step498ExitGvRow,266)] [[]] [s2Step498ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step498ExitGvExtra ++ [])) s2Step498ExitFv_Incoming s2Step498ExitFv_checked h3 s2Step498ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step498ExitFBefore s2Step498ExitFAfter s2Step498ExitGvAfter
    s2Step498ExitFRow s2Step498ExitFOut 24 [] [(s2Step498ExitFvRow,267),(s2Step498ExitGvRow,266)] [[],[]] [s2Step498ExitFvOut,s2Step498ExitGvOut]
    (shrinkRow 768 s2Step498ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step498ExitGvExtra ++ []))) s2Step498ExitF_Incoming s2Step498ExitF_checked h2 s2Step498ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step498ExitGBefore s2Step498ExitGAfter s2Step498ExitGvAfter
    s2Step498ExitGRow s2Step498ExitGOut 24 [] [(s2Step498ExitFRow,24),(s2Step498ExitFvRow,267),(s2Step498ExitGvRow,266)] [[],[],[]] [s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut]
    (shrinkRow 769 s2Step498ExitGExtra) ((shrinkRow 768 s2Step498ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step498ExitGvExtra ++ [])))) s2Step498ExitG_Incoming s2Step498ExitG_checked h1 s2Step498ExitG_Outgoing
  exact h0
theorem s2Step498ExitBank_checked : compileHmrBankResizeLog .exit s2Step498ExitGBefore ⟨s2Step498ExitFRow,s2Step498ExitGRow,s2Step498ExitFvRow,s2Step498ExitGvRow⟩ ⟨24,24,267,266⟩ [[],[],[],[]]=
    some (s2Step498ExitGvAfter,⟨s2Step498ExitFOut,s2Step498ExitGOut,s2Step498ExitFvOut,s2Step498ExitGvOut⟩,(shrinkRow 769 s2Step498ExitGExtra ++ (shrinkRow 768 s2Step498ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step498ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step498ExitBank_rows]
  rfl
theorem s6Step0ExitBank_incomingDistinct : ([s6Step0ExitGRow,s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0ExitBank_outgoingOwned : rowsOwned s6Step0ExitGvAfter [s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitG_Incoming : rowsOwned s6Step0ExitGBefore [s6Step0ExitGRow,s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0ExitGRow,s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] 0 s6Step0ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitG_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] :=
  hmrRows_owned_drop s6Step0ExitGvAfter [s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] 0 s6Step0ExitBank_outgoingOwned
theorem s6Step0ExitF_Incoming : rowsOwned s6Step0ExitFBefore [s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0ExitGRow,s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] 1 s6Step0ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0ExitFBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitF_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] :=
  hmrRows_owned_drop s6Step0ExitGvAfter [s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] 1 s6Step0ExitBank_outgoingOwned
theorem s6Step0ExitFv_Incoming : rowsOwned s6Step0ExitFvBefore [s6Step0ExitFvRow,s6Step0ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0ExitGRow,s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] 2 s6Step0ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0ExitFvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitFv_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitFvOut,s6Step0ExitGvOut] :=
  hmrRows_owned_drop s6Step0ExitGvAfter [s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] 2 s6Step0ExitBank_outgoingOwned
theorem s6Step0ExitGv_Incoming : rowsOwned s6Step0ExitGvBefore [s6Step0ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step0ExitGRow,s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] 3 s6Step0ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step0ExitGvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitGv_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitGvOut] :=
  hmrRows_owned_drop s6Step0ExitGvAfter [s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] 3 s6Step0ExitBank_outgoingOwned
theorem s6Step0ExitBank_rows : planWindowRowsLog s6Step0ExitGBefore [(s6Step0ExitGRow,255),(s6Step0ExitFRow,256),(s6Step0ExitFvRow,2),(s6Step0ExitGvRow,1)] [[],[],[],[]]=
    some (s6Step0ExitGvAfter,[s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut],(shrinkRow 777 s6Step0ExitGExtra ++ (shrinkRow 795 s6Step0ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step0ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step0ExitGvAfter [] []=some (s6Step0ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step0ExitGvBefore s6Step0ExitGvAfter s6Step0ExitGvAfter
    s6Step0ExitGvRow s6Step0ExitGvOut 1 [] [] [] []
    (shrinkRow 775 s6Step0ExitGvExtra) ([]) s6Step0ExitGv_Incoming s6Step0ExitGv_checked h4 s6Step0ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step0ExitFvBefore s6Step0ExitFvAfter s6Step0ExitGvAfter
    s6Step0ExitFvRow s6Step0ExitFvOut 2 [] [(s6Step0ExitGvRow,1)] [[]] [s6Step0ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step0ExitGvExtra ++ [])) s6Step0ExitFv_Incoming s6Step0ExitFv_checked h3 s6Step0ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step0ExitFBefore s6Step0ExitFAfter s6Step0ExitGvAfter
    s6Step0ExitFRow s6Step0ExitFOut 256 [] [(s6Step0ExitFvRow,2),(s6Step0ExitGvRow,1)] [[],[]] [s6Step0ExitFvOut,s6Step0ExitGvOut]
    (shrinkRow 795 s6Step0ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step0ExitGvExtra ++ []))) s6Step0ExitF_Incoming s6Step0ExitF_checked h2 s6Step0ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step0ExitGBefore s6Step0ExitGAfter s6Step0ExitGvAfter
    s6Step0ExitGRow s6Step0ExitGOut 255 [] [(s6Step0ExitFRow,256),(s6Step0ExitFvRow,2),(s6Step0ExitGvRow,1)] [[],[],[]] [s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut]
    (shrinkRow 777 s6Step0ExitGExtra) ((shrinkRow 795 s6Step0ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step0ExitGvExtra ++ [])))) s6Step0ExitG_Incoming s6Step0ExitG_checked h1 s6Step0ExitG_Outgoing
  exact h0
theorem s6Step0ExitBank_checked : compileHmrBankResizeLog .exit s6Step0ExitGBefore ⟨s6Step0ExitFRow,s6Step0ExitGRow,s6Step0ExitFvRow,s6Step0ExitGvRow⟩ ⟨256,255,2,1⟩ [[],[],[],[]]=
    some (s6Step0ExitGvAfter,⟨s6Step0ExitFOut,s6Step0ExitGOut,s6Step0ExitFvOut,s6Step0ExitGvOut⟩,(shrinkRow 777 s6Step0ExitGExtra ++ (shrinkRow 795 s6Step0ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step0ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step0ExitBank_rows]
  rfl
theorem s6Step1ExitBank_incomingDistinct : ([s6Step1ExitGRow,s6Step1ExitFRow,s6Step1ExitFvRow,s6Step1ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1ExitBank_outgoingOwned : rowsOwned s6Step1ExitGvAfter [s6Step1ExitGOut,s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step1ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1ExitG_Incoming : rowsOwned s6Step1ExitGBefore [s6Step1ExitGRow,s6Step1ExitFRow,s6Step1ExitFvRow,s6Step1ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1ExitGRow,s6Step1ExitFRow,s6Step1ExitFvRow,s6Step1ExitGvRow] 0 s6Step1ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1ExitG_Outgoing : rowsOwned s6Step1ExitGvAfter [s6Step1ExitGOut,s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut] :=
  hmrRows_owned_drop s6Step1ExitGvAfter [s6Step1ExitGOut,s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut] 0 s6Step1ExitBank_outgoingOwned
theorem s6Step1ExitF_Incoming : rowsOwned s6Step1ExitFBefore [s6Step1ExitFRow,s6Step1ExitFvRow,s6Step1ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1ExitGRow,s6Step1ExitFRow,s6Step1ExitFvRow,s6Step1ExitGvRow] 1 s6Step1ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1ExitF_Outgoing : rowsOwned s6Step1ExitGvAfter [s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut] :=
  hmrRows_owned_drop s6Step1ExitGvAfter [s6Step1ExitGOut,s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut] 1 s6Step1ExitBank_outgoingOwned
theorem s6Step1ExitFv_Incoming : rowsOwned s6Step1ExitFvBefore [s6Step1ExitFvRow,s6Step1ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1ExitGRow,s6Step1ExitFRow,s6Step1ExitFvRow,s6Step1ExitGvRow] 2 s6Step1ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1ExitFv_Outgoing : rowsOwned s6Step1ExitGvAfter [s6Step1ExitFvOut,s6Step1ExitGvOut] :=
  hmrRows_owned_drop s6Step1ExitGvAfter [s6Step1ExitGOut,s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut] 2 s6Step1ExitBank_outgoingOwned
theorem s6Step1ExitGv_Incoming : rowsOwned s6Step1ExitGvBefore [s6Step1ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step1ExitGRow,s6Step1ExitFRow,s6Step1ExitFvRow,s6Step1ExitGvRow] 3 s6Step1ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step1ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (859≤q ∧ q<861) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step1ExitGv_Outgoing : rowsOwned s6Step1ExitGvAfter [s6Step1ExitGvOut] :=
  hmrRows_owned_drop s6Step1ExitGvAfter [s6Step1ExitGOut,s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut] 3 s6Step1ExitBank_outgoingOwned
theorem s6Step1ExitBank_rows : planWindowRowsLog s6Step1ExitGBefore [(s6Step1ExitGRow,255),(s6Step1ExitFRow,256),(s6Step1ExitFvRow,3),(s6Step1ExitGvRow,1)] [[],[],[],[]]=
    some (s6Step1ExitGvAfter,[s6Step1ExitGOut,s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut],(shrinkRow 777 s6Step1ExitGExtra ++ (shrinkRow 795 s6Step1ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step1ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step1ExitGvAfter [] []=some (s6Step1ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step1ExitGvBefore s6Step1ExitGvAfter s6Step1ExitGvAfter
    s6Step1ExitGvRow s6Step1ExitGvOut 1 [] [] [] []
    (shrinkRow 775 s6Step1ExitGvExtra) ([]) s6Step1ExitGv_Incoming s6Step1ExitGv_checked h4 s6Step1ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step1ExitFvBefore s6Step1ExitFvAfter s6Step1ExitGvAfter
    s6Step1ExitFvRow s6Step1ExitFvOut 3 [] [(s6Step1ExitGvRow,1)] [[]] [s6Step1ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step1ExitGvExtra ++ [])) s6Step1ExitFv_Incoming s6Step1ExitFv_checked h3 s6Step1ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step1ExitFBefore s6Step1ExitFAfter s6Step1ExitGvAfter
    s6Step1ExitFRow s6Step1ExitFOut 256 [] [(s6Step1ExitFvRow,3),(s6Step1ExitGvRow,1)] [[],[]] [s6Step1ExitFvOut,s6Step1ExitGvOut]
    (shrinkRow 795 s6Step1ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step1ExitGvExtra ++ []))) s6Step1ExitF_Incoming s6Step1ExitF_checked h2 s6Step1ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step1ExitGBefore s6Step1ExitGAfter s6Step1ExitGvAfter
    s6Step1ExitGRow s6Step1ExitGOut 255 [] [(s6Step1ExitFRow,256),(s6Step1ExitFvRow,3),(s6Step1ExitGvRow,1)] [[],[],[]] [s6Step1ExitFOut,s6Step1ExitFvOut,s6Step1ExitGvOut]
    (shrinkRow 777 s6Step1ExitGExtra) ((shrinkRow 795 s6Step1ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step1ExitGvExtra ++ [])))) s6Step1ExitG_Incoming s6Step1ExitG_checked h1 s6Step1ExitG_Outgoing
  exact h0
theorem s6Step1ExitBank_checked : compileHmrBankResizeLog .exit s6Step1ExitGBefore ⟨s6Step1ExitFRow,s6Step1ExitGRow,s6Step1ExitFvRow,s6Step1ExitGvRow⟩ ⟨256,255,3,1⟩ [[],[],[],[]]=
    some (s6Step1ExitGvAfter,⟨s6Step1ExitFOut,s6Step1ExitGOut,s6Step1ExitFvOut,s6Step1ExitGvOut⟩,(shrinkRow 777 s6Step1ExitGExtra ++ (shrinkRow 795 s6Step1ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step1ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step1ExitBank_rows]
  rfl
theorem s6Step2ExitBank_incomingDistinct : ([s6Step2ExitGRow,s6Step2ExitFRow,s6Step2ExitFvRow,s6Step2ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step2ExitBank_outgoingOwned : rowsOwned s6Step2ExitGvAfter [s6Step2ExitGOut,s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step2ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896)) rfl
    decide +kernel
theorem s6Step2ExitG_Incoming : rowsOwned s6Step2ExitGBefore [s6Step2ExitGRow,s6Step2ExitFRow,s6Step2ExitFvRow,s6Step2ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2ExitGRow,s6Step2ExitFRow,s6Step2ExitFvRow,s6Step2ExitGvRow] 0 s6Step2ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step2ExitG_Outgoing : rowsOwned s6Step2ExitGvAfter [s6Step2ExitGOut,s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut] :=
  hmrRows_owned_drop s6Step2ExitGvAfter [s6Step2ExitGOut,s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut] 0 s6Step2ExitBank_outgoingOwned
theorem s6Step2ExitF_Incoming : rowsOwned s6Step2ExitFBefore [s6Step2ExitFRow,s6Step2ExitFvRow,s6Step2ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2ExitGRow,s6Step2ExitFRow,s6Step2ExitFvRow,s6Step2ExitGvRow] 1 s6Step2ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step2ExitF_Outgoing : rowsOwned s6Step2ExitGvAfter [s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut] :=
  hmrRows_owned_drop s6Step2ExitGvAfter [s6Step2ExitGOut,s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut] 1 s6Step2ExitBank_outgoingOwned
theorem s6Step2ExitFv_Incoming : rowsOwned s6Step2ExitFvBefore [s6Step2ExitFvRow,s6Step2ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2ExitGRow,s6Step2ExitFRow,s6Step2ExitFvRow,s6Step2ExitGvRow] 2 s6Step2ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step2ExitFv_Outgoing : rowsOwned s6Step2ExitGvAfter [s6Step2ExitFvOut,s6Step2ExitGvOut] :=
  hmrRows_owned_drop s6Step2ExitGvAfter [s6Step2ExitGOut,s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut] 2 s6Step2ExitBank_outgoingOwned
theorem s6Step2ExitGv_Incoming : rowsOwned s6Step2ExitGvBefore [s6Step2ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step2ExitGRow,s6Step2ExitFRow,s6Step2ExitFvRow,s6Step2ExitGvRow] 3 s6Step2ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step2ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (859≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step2ExitGv_Outgoing : rowsOwned s6Step2ExitGvAfter [s6Step2ExitGvOut] :=
  hmrRows_owned_drop s6Step2ExitGvAfter [s6Step2ExitGOut,s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut] 3 s6Step2ExitBank_outgoingOwned
theorem s6Step2ExitBank_rows : planWindowRowsLog s6Step2ExitGBefore [(s6Step2ExitGRow,255),(s6Step2ExitFRow,256),(s6Step2ExitFvRow,4),(s6Step2ExitGvRow,2)] [[],[],[],[]]=
    some (s6Step2ExitGvAfter,[s6Step2ExitGOut,s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut],(shrinkRow 777 s6Step2ExitGExtra ++ (shrinkRow 795 s6Step2ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step2ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step2ExitGvAfter [] []=some (s6Step2ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step2ExitGvBefore s6Step2ExitGvAfter s6Step2ExitGvAfter
    s6Step2ExitGvRow s6Step2ExitGvOut 2 [] [] [] []
    (shrinkRow 775 s6Step2ExitGvExtra) ([]) s6Step2ExitGv_Incoming s6Step2ExitGv_checked h4 s6Step2ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step2ExitFvBefore s6Step2ExitFvAfter s6Step2ExitGvAfter
    s6Step2ExitFvRow s6Step2ExitFvOut 4 [] [(s6Step2ExitGvRow,2)] [[]] [s6Step2ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step2ExitGvExtra ++ [])) s6Step2ExitFv_Incoming s6Step2ExitFv_checked h3 s6Step2ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step2ExitFBefore s6Step2ExitFAfter s6Step2ExitGvAfter
    s6Step2ExitFRow s6Step2ExitFOut 256 [] [(s6Step2ExitFvRow,4),(s6Step2ExitGvRow,2)] [[],[]] [s6Step2ExitFvOut,s6Step2ExitGvOut]
    (shrinkRow 795 s6Step2ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step2ExitGvExtra ++ []))) s6Step2ExitF_Incoming s6Step2ExitF_checked h2 s6Step2ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step2ExitGBefore s6Step2ExitGAfter s6Step2ExitGvAfter
    s6Step2ExitGRow s6Step2ExitGOut 255 [] [(s6Step2ExitFRow,256),(s6Step2ExitFvRow,4),(s6Step2ExitGvRow,2)] [[],[],[]] [s6Step2ExitFOut,s6Step2ExitFvOut,s6Step2ExitGvOut]
    (shrinkRow 777 s6Step2ExitGExtra) ((shrinkRow 795 s6Step2ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step2ExitGvExtra ++ [])))) s6Step2ExitG_Incoming s6Step2ExitG_checked h1 s6Step2ExitG_Outgoing
  exact h0
theorem s6Step2ExitBank_checked : compileHmrBankResizeLog .exit s6Step2ExitGBefore ⟨s6Step2ExitFRow,s6Step2ExitGRow,s6Step2ExitFvRow,s6Step2ExitGvRow⟩ ⟨256,255,4,2⟩ [[],[],[],[]]=
    some (s6Step2ExitGvAfter,⟨s6Step2ExitFOut,s6Step2ExitGOut,s6Step2ExitFvOut,s6Step2ExitGvOut⟩,(shrinkRow 777 s6Step2ExitGExtra ++ (shrinkRow 795 s6Step2ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step2ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step2ExitBank_rows]
  rfl
theorem s6Step3ExitBank_incomingDistinct : ([s6Step3ExitGRow,s6Step3ExitFRow,s6Step3ExitFvRow,s6Step3ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step3ExitBank_outgoingOwned : rowsOwned s6Step3ExitGvAfter [s6Step3ExitGOut,s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step3ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3ExitG_Incoming : rowsOwned s6Step3ExitGBefore [s6Step3ExitGRow,s6Step3ExitFRow,s6Step3ExitFvRow,s6Step3ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3ExitGRow,s6Step3ExitFRow,s6Step3ExitFvRow,s6Step3ExitGvRow] 0 s6Step3ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3ExitG_Outgoing : rowsOwned s6Step3ExitGvAfter [s6Step3ExitGOut,s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut] :=
  hmrRows_owned_drop s6Step3ExitGvAfter [s6Step3ExitGOut,s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut] 0 s6Step3ExitBank_outgoingOwned
theorem s6Step3ExitF_Incoming : rowsOwned s6Step3ExitFBefore [s6Step3ExitFRow,s6Step3ExitFvRow,s6Step3ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3ExitGRow,s6Step3ExitFRow,s6Step3ExitFvRow,s6Step3ExitGvRow] 1 s6Step3ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3ExitF_Outgoing : rowsOwned s6Step3ExitGvAfter [s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut] :=
  hmrRows_owned_drop s6Step3ExitGvAfter [s6Step3ExitGOut,s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut] 1 s6Step3ExitBank_outgoingOwned
theorem s6Step3ExitFv_Incoming : rowsOwned s6Step3ExitFvBefore [s6Step3ExitFvRow,s6Step3ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3ExitGRow,s6Step3ExitFRow,s6Step3ExitFvRow,s6Step3ExitGvRow] 2 s6Step3ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3ExitFv_Outgoing : rowsOwned s6Step3ExitGvAfter [s6Step3ExitFvOut,s6Step3ExitGvOut] :=
  hmrRows_owned_drop s6Step3ExitGvAfter [s6Step3ExitGOut,s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut] 2 s6Step3ExitBank_outgoingOwned
theorem s6Step3ExitGv_Incoming : rowsOwned s6Step3ExitGvBefore [s6Step3ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step3ExitGRow,s6Step3ExitFRow,s6Step3ExitFvRow,s6Step3ExitGvRow] 3 s6Step3ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step3ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step3ExitGv_Outgoing : rowsOwned s6Step3ExitGvAfter [s6Step3ExitGvOut] :=
  hmrRows_owned_drop s6Step3ExitGvAfter [s6Step3ExitGOut,s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut] 3 s6Step3ExitBank_outgoingOwned
theorem s6Step3ExitBank_rows : planWindowRowsLog s6Step3ExitGBefore [(s6Step3ExitGRow,255),(s6Step3ExitFRow,256),(s6Step3ExitFvRow,5),(s6Step3ExitGvRow,3)] [[],[],[],[]]=
    some (s6Step3ExitGvAfter,[s6Step3ExitGOut,s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut],(shrinkRow 777 s6Step3ExitGExtra ++ (shrinkRow 795 s6Step3ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step3ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step3ExitGvAfter [] []=some (s6Step3ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step3ExitGvBefore s6Step3ExitGvAfter s6Step3ExitGvAfter
    s6Step3ExitGvRow s6Step3ExitGvOut 3 [] [] [] []
    (shrinkRow 775 s6Step3ExitGvExtra) ([]) s6Step3ExitGv_Incoming s6Step3ExitGv_checked h4 s6Step3ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step3ExitFvBefore s6Step3ExitFvAfter s6Step3ExitGvAfter
    s6Step3ExitFvRow s6Step3ExitFvOut 5 [] [(s6Step3ExitGvRow,3)] [[]] [s6Step3ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step3ExitGvExtra ++ [])) s6Step3ExitFv_Incoming s6Step3ExitFv_checked h3 s6Step3ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step3ExitFBefore s6Step3ExitFAfter s6Step3ExitGvAfter
    s6Step3ExitFRow s6Step3ExitFOut 256 [] [(s6Step3ExitFvRow,5),(s6Step3ExitGvRow,3)] [[],[]] [s6Step3ExitFvOut,s6Step3ExitGvOut]
    (shrinkRow 795 s6Step3ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step3ExitGvExtra ++ []))) s6Step3ExitF_Incoming s6Step3ExitF_checked h2 s6Step3ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step3ExitGBefore s6Step3ExitGAfter s6Step3ExitGvAfter
    s6Step3ExitGRow s6Step3ExitGOut 255 [] [(s6Step3ExitFRow,256),(s6Step3ExitFvRow,5),(s6Step3ExitGvRow,3)] [[],[],[]] [s6Step3ExitFOut,s6Step3ExitFvOut,s6Step3ExitGvOut]
    (shrinkRow 777 s6Step3ExitGExtra) ((shrinkRow 795 s6Step3ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step3ExitGvExtra ++ [])))) s6Step3ExitG_Incoming s6Step3ExitG_checked h1 s6Step3ExitG_Outgoing
  exact h0
theorem s6Step3ExitBank_checked : compileHmrBankResizeLog .exit s6Step3ExitGBefore ⟨s6Step3ExitFRow,s6Step3ExitGRow,s6Step3ExitFvRow,s6Step3ExitGvRow⟩ ⟨256,255,5,3⟩ [[],[],[],[]]=
    some (s6Step3ExitGvAfter,⟨s6Step3ExitFOut,s6Step3ExitGOut,s6Step3ExitFvOut,s6Step3ExitGvOut⟩,(shrinkRow 777 s6Step3ExitGExtra ++ (shrinkRow 795 s6Step3ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step3ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step3ExitBank_rows]
  rfl
theorem s6Step4ExitBank_incomingDistinct : ([s6Step4ExitGRow,s6Step4ExitFRow,s6Step4ExitFvRow,s6Step4ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step4ExitBank_outgoingOwned : rowsOwned s6Step4ExitGvAfter [s6Step4ExitGOut,s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step4ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4ExitG_Incoming : rowsOwned s6Step4ExitGBefore [s6Step4ExitGRow,s6Step4ExitFRow,s6Step4ExitFvRow,s6Step4ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4ExitGRow,s6Step4ExitFRow,s6Step4ExitFvRow,s6Step4ExitGvRow] 0 s6Step4ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4ExitG_Outgoing : rowsOwned s6Step4ExitGvAfter [s6Step4ExitGOut,s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut] :=
  hmrRows_owned_drop s6Step4ExitGvAfter [s6Step4ExitGOut,s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut] 0 s6Step4ExitBank_outgoingOwned
theorem s6Step4ExitF_Incoming : rowsOwned s6Step4ExitFBefore [s6Step4ExitFRow,s6Step4ExitFvRow,s6Step4ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4ExitGRow,s6Step4ExitFRow,s6Step4ExitFvRow,s6Step4ExitGvRow] 1 s6Step4ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4ExitF_Outgoing : rowsOwned s6Step4ExitGvAfter [s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut] :=
  hmrRows_owned_drop s6Step4ExitGvAfter [s6Step4ExitGOut,s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut] 1 s6Step4ExitBank_outgoingOwned
theorem s6Step4ExitFv_Incoming : rowsOwned s6Step4ExitFvBefore [s6Step4ExitFvRow,s6Step4ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4ExitGRow,s6Step4ExitFRow,s6Step4ExitFvRow,s6Step4ExitGvRow] 2 s6Step4ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4ExitFv_Outgoing : rowsOwned s6Step4ExitGvAfter [s6Step4ExitFvOut,s6Step4ExitGvOut] :=
  hmrRows_owned_drop s6Step4ExitGvAfter [s6Step4ExitGOut,s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut] 2 s6Step4ExitBank_outgoingOwned
theorem s6Step4ExitGv_Incoming : rowsOwned s6Step4ExitGvBefore [s6Step4ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step4ExitGRow,s6Step4ExitFRow,s6Step4ExitFvRow,s6Step4ExitGvRow] 3 s6Step4ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step4ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step4ExitGv_Outgoing : rowsOwned s6Step4ExitGvAfter [s6Step4ExitGvOut] :=
  hmrRows_owned_drop s6Step4ExitGvAfter [s6Step4ExitGOut,s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut] 3 s6Step4ExitBank_outgoingOwned
theorem s6Step4ExitBank_rows : planWindowRowsLog s6Step4ExitGBefore [(s6Step4ExitGRow,255),(s6Step4ExitFRow,256),(s6Step4ExitFvRow,6),(s6Step4ExitGvRow,4)] [[],[],[],[]]=
    some (s6Step4ExitGvAfter,[s6Step4ExitGOut,s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut],(shrinkRow 777 s6Step4ExitGExtra ++ (shrinkRow 795 s6Step4ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step4ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step4ExitGvAfter [] []=some (s6Step4ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step4ExitGvBefore s6Step4ExitGvAfter s6Step4ExitGvAfter
    s6Step4ExitGvRow s6Step4ExitGvOut 4 [] [] [] []
    (shrinkRow 775 s6Step4ExitGvExtra) ([]) s6Step4ExitGv_Incoming s6Step4ExitGv_checked h4 s6Step4ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step4ExitFvBefore s6Step4ExitFvAfter s6Step4ExitGvAfter
    s6Step4ExitFvRow s6Step4ExitFvOut 6 [] [(s6Step4ExitGvRow,4)] [[]] [s6Step4ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step4ExitGvExtra ++ [])) s6Step4ExitFv_Incoming s6Step4ExitFv_checked h3 s6Step4ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step4ExitFBefore s6Step4ExitFAfter s6Step4ExitGvAfter
    s6Step4ExitFRow s6Step4ExitFOut 256 [] [(s6Step4ExitFvRow,6),(s6Step4ExitGvRow,4)] [[],[]] [s6Step4ExitFvOut,s6Step4ExitGvOut]
    (shrinkRow 795 s6Step4ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step4ExitGvExtra ++ []))) s6Step4ExitF_Incoming s6Step4ExitF_checked h2 s6Step4ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step4ExitGBefore s6Step4ExitGAfter s6Step4ExitGvAfter
    s6Step4ExitGRow s6Step4ExitGOut 255 [] [(s6Step4ExitFRow,256),(s6Step4ExitFvRow,6),(s6Step4ExitGvRow,4)] [[],[],[]] [s6Step4ExitFOut,s6Step4ExitFvOut,s6Step4ExitGvOut]
    (shrinkRow 777 s6Step4ExitGExtra) ((shrinkRow 795 s6Step4ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step4ExitGvExtra ++ [])))) s6Step4ExitG_Incoming s6Step4ExitG_checked h1 s6Step4ExitG_Outgoing
  exact h0
theorem s6Step4ExitBank_checked : compileHmrBankResizeLog .exit s6Step4ExitGBefore ⟨s6Step4ExitFRow,s6Step4ExitGRow,s6Step4ExitFvRow,s6Step4ExitGvRow⟩ ⟨256,255,6,4⟩ [[],[],[],[]]=
    some (s6Step4ExitGvAfter,⟨s6Step4ExitFOut,s6Step4ExitGOut,s6Step4ExitFvOut,s6Step4ExitGvOut⟩,(shrinkRow 777 s6Step4ExitGExtra ++ (shrinkRow 795 s6Step4ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step4ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step4ExitBank_rows]
  rfl
theorem s6Step5ExitBank_incomingDistinct : ([s6Step5ExitGRow,s6Step5ExitFRow,s6Step5ExitFvRow,s6Step5ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step5ExitBank_outgoingOwned : rowsOwned s6Step5ExitGvAfter [s6Step5ExitGOut,s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step5ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5ExitG_Incoming : rowsOwned s6Step5ExitGBefore [s6Step5ExitGRow,s6Step5ExitFRow,s6Step5ExitFvRow,s6Step5ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5ExitGRow,s6Step5ExitFRow,s6Step5ExitFvRow,s6Step5ExitGvRow] 0 s6Step5ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5ExitG_Outgoing : rowsOwned s6Step5ExitGvAfter [s6Step5ExitGOut,s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut] :=
  hmrRows_owned_drop s6Step5ExitGvAfter [s6Step5ExitGOut,s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut] 0 s6Step5ExitBank_outgoingOwned
theorem s6Step5ExitF_Incoming : rowsOwned s6Step5ExitFBefore [s6Step5ExitFRow,s6Step5ExitFvRow,s6Step5ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5ExitGRow,s6Step5ExitFRow,s6Step5ExitFvRow,s6Step5ExitGvRow] 1 s6Step5ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5ExitF_Outgoing : rowsOwned s6Step5ExitGvAfter [s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut] :=
  hmrRows_owned_drop s6Step5ExitGvAfter [s6Step5ExitGOut,s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut] 1 s6Step5ExitBank_outgoingOwned
theorem s6Step5ExitFv_Incoming : rowsOwned s6Step5ExitFvBefore [s6Step5ExitFvRow,s6Step5ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5ExitGRow,s6Step5ExitFRow,s6Step5ExitFvRow,s6Step5ExitGvRow] 2 s6Step5ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5ExitFv_Outgoing : rowsOwned s6Step5ExitGvAfter [s6Step5ExitFvOut,s6Step5ExitGvOut] :=
  hmrRows_owned_drop s6Step5ExitGvAfter [s6Step5ExitGOut,s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut] 2 s6Step5ExitBank_outgoingOwned
theorem s6Step5ExitGv_Incoming : rowsOwned s6Step5ExitGvBefore [s6Step5ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step5ExitGRow,s6Step5ExitFRow,s6Step5ExitFvRow,s6Step5ExitGvRow] 3 s6Step5ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step5ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step5ExitGv_Outgoing : rowsOwned s6Step5ExitGvAfter [s6Step5ExitGvOut] :=
  hmrRows_owned_drop s6Step5ExitGvAfter [s6Step5ExitGOut,s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut] 3 s6Step5ExitBank_outgoingOwned
theorem s6Step5ExitBank_rows : planWindowRowsLog s6Step5ExitGBefore [(s6Step5ExitGRow,255),(s6Step5ExitFRow,256),(s6Step5ExitFvRow,7),(s6Step5ExitGvRow,5)] [[],[],[],[]]=
    some (s6Step5ExitGvAfter,[s6Step5ExitGOut,s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut],(shrinkRow 777 s6Step5ExitGExtra ++ (shrinkRow 795 s6Step5ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step5ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step5ExitGvAfter [] []=some (s6Step5ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step5ExitGvBefore s6Step5ExitGvAfter s6Step5ExitGvAfter
    s6Step5ExitGvRow s6Step5ExitGvOut 5 [] [] [] []
    (shrinkRow 775 s6Step5ExitGvExtra) ([]) s6Step5ExitGv_Incoming s6Step5ExitGv_checked h4 s6Step5ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step5ExitFvBefore s6Step5ExitFvAfter s6Step5ExitGvAfter
    s6Step5ExitFvRow s6Step5ExitFvOut 7 [] [(s6Step5ExitGvRow,5)] [[]] [s6Step5ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step5ExitGvExtra ++ [])) s6Step5ExitFv_Incoming s6Step5ExitFv_checked h3 s6Step5ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step5ExitFBefore s6Step5ExitFAfter s6Step5ExitGvAfter
    s6Step5ExitFRow s6Step5ExitFOut 256 [] [(s6Step5ExitFvRow,7),(s6Step5ExitGvRow,5)] [[],[]] [s6Step5ExitFvOut,s6Step5ExitGvOut]
    (shrinkRow 795 s6Step5ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step5ExitGvExtra ++ []))) s6Step5ExitF_Incoming s6Step5ExitF_checked h2 s6Step5ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step5ExitGBefore s6Step5ExitGAfter s6Step5ExitGvAfter
    s6Step5ExitGRow s6Step5ExitGOut 255 [] [(s6Step5ExitFRow,256),(s6Step5ExitFvRow,7),(s6Step5ExitGvRow,5)] [[],[],[]] [s6Step5ExitFOut,s6Step5ExitFvOut,s6Step5ExitGvOut]
    (shrinkRow 777 s6Step5ExitGExtra) ((shrinkRow 795 s6Step5ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step5ExitGvExtra ++ [])))) s6Step5ExitG_Incoming s6Step5ExitG_checked h1 s6Step5ExitG_Outgoing
  exact h0
theorem s6Step5ExitBank_checked : compileHmrBankResizeLog .exit s6Step5ExitGBefore ⟨s6Step5ExitFRow,s6Step5ExitGRow,s6Step5ExitFvRow,s6Step5ExitGvRow⟩ ⟨256,255,7,5⟩ [[],[],[],[]]=
    some (s6Step5ExitGvAfter,⟨s6Step5ExitFOut,s6Step5ExitGOut,s6Step5ExitFvOut,s6Step5ExitGvOut⟩,(shrinkRow 777 s6Step5ExitGExtra ++ (shrinkRow 795 s6Step5ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step5ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step5ExitBank_rows]
  rfl
theorem s6Step6ExitBank_incomingDistinct : ([s6Step6ExitGRow,s6Step6ExitFRow,s6Step6ExitFvRow,s6Step6ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step6ExitBank_outgoingOwned : rowsOwned s6Step6ExitGvAfter [s6Step6ExitGOut,s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step6ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<908) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6ExitG_Incoming : rowsOwned s6Step6ExitGBefore [s6Step6ExitGRow,s6Step6ExitFRow,s6Step6ExitFvRow,s6Step6ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6ExitGRow,s6Step6ExitFRow,s6Step6ExitFvRow,s6Step6ExitGvRow] 0 s6Step6ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6ExitG_Outgoing : rowsOwned s6Step6ExitGvAfter [s6Step6ExitGOut,s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut] :=
  hmrRows_owned_drop s6Step6ExitGvAfter [s6Step6ExitGOut,s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut] 0 s6Step6ExitBank_outgoingOwned
theorem s6Step6ExitF_Incoming : rowsOwned s6Step6ExitFBefore [s6Step6ExitFRow,s6Step6ExitFvRow,s6Step6ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6ExitGRow,s6Step6ExitFRow,s6Step6ExitFvRow,s6Step6ExitGvRow] 1 s6Step6ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6ExitF_Outgoing : rowsOwned s6Step6ExitGvAfter [s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut] :=
  hmrRows_owned_drop s6Step6ExitGvAfter [s6Step6ExitGOut,s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut] 1 s6Step6ExitBank_outgoingOwned
theorem s6Step6ExitFv_Incoming : rowsOwned s6Step6ExitFvBefore [s6Step6ExitFvRow,s6Step6ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6ExitGRow,s6Step6ExitFRow,s6Step6ExitFvRow,s6Step6ExitGvRow] 2 s6Step6ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6ExitFv_Outgoing : rowsOwned s6Step6ExitGvAfter [s6Step6ExitFvOut,s6Step6ExitGvOut] :=
  hmrRows_owned_drop s6Step6ExitGvAfter [s6Step6ExitGOut,s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut] 2 s6Step6ExitBank_outgoingOwned
theorem s6Step6ExitGv_Incoming : rowsOwned s6Step6ExitGvBefore [s6Step6ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step6ExitGRow,s6Step6ExitFRow,s6Step6ExitFvRow,s6Step6ExitGvRow] 3 s6Step6ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step6ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step6ExitGv_Outgoing : rowsOwned s6Step6ExitGvAfter [s6Step6ExitGvOut] :=
  hmrRows_owned_drop s6Step6ExitGvAfter [s6Step6ExitGOut,s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut] 3 s6Step6ExitBank_outgoingOwned
theorem s6Step6ExitBank_rows : planWindowRowsLog s6Step6ExitGBefore [(s6Step6ExitGRow,255),(s6Step6ExitFRow,256),(s6Step6ExitFvRow,8),(s6Step6ExitGvRow,6)] [[],[],[],[]]=
    some (s6Step6ExitGvAfter,[s6Step6ExitGOut,s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut],(shrinkRow 777 s6Step6ExitGExtra ++ (shrinkRow 795 s6Step6ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step6ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step6ExitGvAfter [] []=some (s6Step6ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step6ExitGvBefore s6Step6ExitGvAfter s6Step6ExitGvAfter
    s6Step6ExitGvRow s6Step6ExitGvOut 6 [] [] [] []
    (shrinkRow 775 s6Step6ExitGvExtra) ([]) s6Step6ExitGv_Incoming s6Step6ExitGv_checked h4 s6Step6ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step6ExitFvBefore s6Step6ExitFvAfter s6Step6ExitGvAfter
    s6Step6ExitFvRow s6Step6ExitFvOut 8 [] [(s6Step6ExitGvRow,6)] [[]] [s6Step6ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step6ExitGvExtra ++ [])) s6Step6ExitFv_Incoming s6Step6ExitFv_checked h3 s6Step6ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step6ExitFBefore s6Step6ExitFAfter s6Step6ExitGvAfter
    s6Step6ExitFRow s6Step6ExitFOut 256 [] [(s6Step6ExitFvRow,8),(s6Step6ExitGvRow,6)] [[],[]] [s6Step6ExitFvOut,s6Step6ExitGvOut]
    (shrinkRow 795 s6Step6ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step6ExitGvExtra ++ []))) s6Step6ExitF_Incoming s6Step6ExitF_checked h2 s6Step6ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step6ExitGBefore s6Step6ExitGAfter s6Step6ExitGvAfter
    s6Step6ExitGRow s6Step6ExitGOut 255 [] [(s6Step6ExitFRow,256),(s6Step6ExitFvRow,8),(s6Step6ExitGvRow,6)] [[],[],[]] [s6Step6ExitFOut,s6Step6ExitFvOut,s6Step6ExitGvOut]
    (shrinkRow 777 s6Step6ExitGExtra) ((shrinkRow 795 s6Step6ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step6ExitGvExtra ++ [])))) s6Step6ExitG_Incoming s6Step6ExitG_checked h1 s6Step6ExitG_Outgoing
  exact h0
theorem s6Step6ExitBank_checked : compileHmrBankResizeLog .exit s6Step6ExitGBefore ⟨s6Step6ExitFRow,s6Step6ExitGRow,s6Step6ExitFvRow,s6Step6ExitGvRow⟩ ⟨256,255,8,6⟩ [[],[],[],[]]=
    some (s6Step6ExitGvAfter,⟨s6Step6ExitFOut,s6Step6ExitGOut,s6Step6ExitFvOut,s6Step6ExitGvOut⟩,(shrinkRow 777 s6Step6ExitGExtra ++ (shrinkRow 795 s6Step6ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step6ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step6ExitBank_rows]
  rfl
theorem s6Step7ExitBank_incomingDistinct : ([s6Step7ExitGRow,s6Step7ExitFRow,s6Step7ExitFvRow,s6Step7ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step7ExitBank_outgoingOwned : rowsOwned s6Step7ExitGvAfter [s6Step7ExitGOut,s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step7ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7ExitG_Incoming : rowsOwned s6Step7ExitGBefore [s6Step7ExitGRow,s6Step7ExitFRow,s6Step7ExitFvRow,s6Step7ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7ExitGRow,s6Step7ExitFRow,s6Step7ExitFvRow,s6Step7ExitGvRow] 0 s6Step7ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7ExitG_Outgoing : rowsOwned s6Step7ExitGvAfter [s6Step7ExitGOut,s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut] :=
  hmrRows_owned_drop s6Step7ExitGvAfter [s6Step7ExitGOut,s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut] 0 s6Step7ExitBank_outgoingOwned
theorem s6Step7ExitF_Incoming : rowsOwned s6Step7ExitFBefore [s6Step7ExitFRow,s6Step7ExitFvRow,s6Step7ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7ExitGRow,s6Step7ExitFRow,s6Step7ExitFvRow,s6Step7ExitGvRow] 1 s6Step7ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7ExitF_Outgoing : rowsOwned s6Step7ExitGvAfter [s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut] :=
  hmrRows_owned_drop s6Step7ExitGvAfter [s6Step7ExitGOut,s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut] 1 s6Step7ExitBank_outgoingOwned
theorem s6Step7ExitFv_Incoming : rowsOwned s6Step7ExitFvBefore [s6Step7ExitFvRow,s6Step7ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7ExitGRow,s6Step7ExitFRow,s6Step7ExitFvRow,s6Step7ExitGvRow] 2 s6Step7ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7ExitFv_Outgoing : rowsOwned s6Step7ExitGvAfter [s6Step7ExitFvOut,s6Step7ExitGvOut] :=
  hmrRows_owned_drop s6Step7ExitGvAfter [s6Step7ExitGOut,s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut] 2 s6Step7ExitBank_outgoingOwned
theorem s6Step7ExitGv_Incoming : rowsOwned s6Step7ExitGvBefore [s6Step7ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step7ExitGRow,s6Step7ExitFRow,s6Step7ExitFvRow,s6Step7ExitGvRow] 3 s6Step7ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step7ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step7ExitGv_Outgoing : rowsOwned s6Step7ExitGvAfter [s6Step7ExitGvOut] :=
  hmrRows_owned_drop s6Step7ExitGvAfter [s6Step7ExitGOut,s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut] 3 s6Step7ExitBank_outgoingOwned
theorem s6Step7ExitBank_rows : planWindowRowsLog s6Step7ExitGBefore [(s6Step7ExitGRow,255),(s6Step7ExitFRow,256),(s6Step7ExitFvRow,9),(s6Step7ExitGvRow,7)] [[],[],[],[]]=
    some (s6Step7ExitGvAfter,[s6Step7ExitGOut,s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut],(shrinkRow 777 s6Step7ExitGExtra ++ (shrinkRow 795 s6Step7ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step7ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step7ExitGvAfter [] []=some (s6Step7ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step7ExitGvBefore s6Step7ExitGvAfter s6Step7ExitGvAfter
    s6Step7ExitGvRow s6Step7ExitGvOut 7 [] [] [] []
    (shrinkRow 775 s6Step7ExitGvExtra) ([]) s6Step7ExitGv_Incoming s6Step7ExitGv_checked h4 s6Step7ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step7ExitFvBefore s6Step7ExitFvAfter s6Step7ExitGvAfter
    s6Step7ExitFvRow s6Step7ExitFvOut 9 [] [(s6Step7ExitGvRow,7)] [[]] [s6Step7ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step7ExitGvExtra ++ [])) s6Step7ExitFv_Incoming s6Step7ExitFv_checked h3 s6Step7ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step7ExitFBefore s6Step7ExitFAfter s6Step7ExitGvAfter
    s6Step7ExitFRow s6Step7ExitFOut 256 [] [(s6Step7ExitFvRow,9),(s6Step7ExitGvRow,7)] [[],[]] [s6Step7ExitFvOut,s6Step7ExitGvOut]
    (shrinkRow 795 s6Step7ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step7ExitGvExtra ++ []))) s6Step7ExitF_Incoming s6Step7ExitF_checked h2 s6Step7ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step7ExitGBefore s6Step7ExitGAfter s6Step7ExitGvAfter
    s6Step7ExitGRow s6Step7ExitGOut 255 [] [(s6Step7ExitFRow,256),(s6Step7ExitFvRow,9),(s6Step7ExitGvRow,7)] [[],[],[]] [s6Step7ExitFOut,s6Step7ExitFvOut,s6Step7ExitGvOut]
    (shrinkRow 777 s6Step7ExitGExtra) ((shrinkRow 795 s6Step7ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step7ExitGvExtra ++ [])))) s6Step7ExitG_Incoming s6Step7ExitG_checked h1 s6Step7ExitG_Outgoing
  exact h0
theorem s6Step7ExitBank_checked : compileHmrBankResizeLog .exit s6Step7ExitGBefore ⟨s6Step7ExitFRow,s6Step7ExitGRow,s6Step7ExitFvRow,s6Step7ExitGvRow⟩ ⟨256,255,9,7⟩ [[],[],[],[]]=
    some (s6Step7ExitGvAfter,⟨s6Step7ExitFOut,s6Step7ExitGOut,s6Step7ExitFvOut,s6Step7ExitGvOut⟩,(shrinkRow 777 s6Step7ExitGExtra ++ (shrinkRow 795 s6Step7ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step7ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step7ExitBank_rows]
  rfl
theorem s6Step8ExitBank_incomingDistinct : ([s6Step8ExitGRow,s6Step8ExitFRow,s6Step8ExitFvRow,s6Step8ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step8ExitBank_outgoingOwned : rowsOwned s6Step8ExitGvAfter [s6Step8ExitGOut,s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step8ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (874≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8ExitG_Incoming : rowsOwned s6Step8ExitGBefore [s6Step8ExitGRow,s6Step8ExitFRow,s6Step8ExitFvRow,s6Step8ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8ExitGRow,s6Step8ExitFRow,s6Step8ExitFvRow,s6Step8ExitGvRow] 0 s6Step8ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8ExitG_Outgoing : rowsOwned s6Step8ExitGvAfter [s6Step8ExitGOut,s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut] :=
  hmrRows_owned_drop s6Step8ExitGvAfter [s6Step8ExitGOut,s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut] 0 s6Step8ExitBank_outgoingOwned
theorem s6Step8ExitF_Incoming : rowsOwned s6Step8ExitFBefore [s6Step8ExitFRow,s6Step8ExitFvRow,s6Step8ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8ExitGRow,s6Step8ExitFRow,s6Step8ExitFvRow,s6Step8ExitGvRow] 1 s6Step8ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8ExitF_Outgoing : rowsOwned s6Step8ExitGvAfter [s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut] :=
  hmrRows_owned_drop s6Step8ExitGvAfter [s6Step8ExitGOut,s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut] 1 s6Step8ExitBank_outgoingOwned
theorem s6Step8ExitFv_Incoming : rowsOwned s6Step8ExitFvBefore [s6Step8ExitFvRow,s6Step8ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8ExitGRow,s6Step8ExitFRow,s6Step8ExitFvRow,s6Step8ExitGvRow] 2 s6Step8ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8ExitFv_Outgoing : rowsOwned s6Step8ExitGvAfter [s6Step8ExitFvOut,s6Step8ExitGvOut] :=
  hmrRows_owned_drop s6Step8ExitGvAfter [s6Step8ExitGOut,s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut] 2 s6Step8ExitBank_outgoingOwned
theorem s6Step8ExitGv_Incoming : rowsOwned s6Step8ExitGvBefore [s6Step8ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step8ExitGRow,s6Step8ExitFRow,s6Step8ExitFvRow,s6Step8ExitGvRow] 3 s6Step8ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step8ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (857≤q ∧ q<860) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step8ExitGv_Outgoing : rowsOwned s6Step8ExitGvAfter [s6Step8ExitGvOut] :=
  hmrRows_owned_drop s6Step8ExitGvAfter [s6Step8ExitGOut,s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut] 3 s6Step8ExitBank_outgoingOwned
theorem s6Step8ExitBank_rows : planWindowRowsLog s6Step8ExitGBefore [(s6Step8ExitGRow,255),(s6Step8ExitFRow,256),(s6Step8ExitFvRow,10),(s6Step8ExitGvRow,8)] [[],[],[],[]]=
    some (s6Step8ExitGvAfter,[s6Step8ExitGOut,s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut],(shrinkRow 777 s6Step8ExitGExtra ++ (shrinkRow 795 s6Step8ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step8ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step8ExitGvAfter [] []=some (s6Step8ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step8ExitGvBefore s6Step8ExitGvAfter s6Step8ExitGvAfter
    s6Step8ExitGvRow s6Step8ExitGvOut 8 [] [] [] []
    (shrinkRow 775 s6Step8ExitGvExtra) ([]) s6Step8ExitGv_Incoming s6Step8ExitGv_checked h4 s6Step8ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step8ExitFvBefore s6Step8ExitFvAfter s6Step8ExitGvAfter
    s6Step8ExitFvRow s6Step8ExitFvOut 10 [] [(s6Step8ExitGvRow,8)] [[]] [s6Step8ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step8ExitGvExtra ++ [])) s6Step8ExitFv_Incoming s6Step8ExitFv_checked h3 s6Step8ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step8ExitFBefore s6Step8ExitFAfter s6Step8ExitGvAfter
    s6Step8ExitFRow s6Step8ExitFOut 256 [] [(s6Step8ExitFvRow,10),(s6Step8ExitGvRow,8)] [[],[]] [s6Step8ExitFvOut,s6Step8ExitGvOut]
    (shrinkRow 795 s6Step8ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step8ExitGvExtra ++ []))) s6Step8ExitF_Incoming s6Step8ExitF_checked h2 s6Step8ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step8ExitGBefore s6Step8ExitGAfter s6Step8ExitGvAfter
    s6Step8ExitGRow s6Step8ExitGOut 255 [] [(s6Step8ExitFRow,256),(s6Step8ExitFvRow,10),(s6Step8ExitGvRow,8)] [[],[],[]] [s6Step8ExitFOut,s6Step8ExitFvOut,s6Step8ExitGvOut]
    (shrinkRow 777 s6Step8ExitGExtra) ((shrinkRow 795 s6Step8ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step8ExitGvExtra ++ [])))) s6Step8ExitG_Incoming s6Step8ExitG_checked h1 s6Step8ExitG_Outgoing
  exact h0
theorem s6Step8ExitBank_checked : compileHmrBankResizeLog .exit s6Step8ExitGBefore ⟨s6Step8ExitFRow,s6Step8ExitGRow,s6Step8ExitFvRow,s6Step8ExitGvRow⟩ ⟨256,255,10,8⟩ [[],[],[],[]]=
    some (s6Step8ExitGvAfter,⟨s6Step8ExitFOut,s6Step8ExitGOut,s6Step8ExitFvOut,s6Step8ExitGvOut⟩,(shrinkRow 777 s6Step8ExitGExtra ++ (shrinkRow 795 s6Step8ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step8ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step8ExitBank_rows]
  rfl
theorem s6Step9ExitBank_incomingDistinct : ([s6Step9ExitGRow,s6Step9ExitFRow,s6Step9ExitFvRow,s6Step9ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step9ExitBank_outgoingOwned : rowsOwned s6Step9ExitGvAfter [s6Step9ExitGOut,s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step9ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9ExitG_Incoming : rowsOwned s6Step9ExitGBefore [s6Step9ExitGRow,s6Step9ExitFRow,s6Step9ExitFvRow,s6Step9ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9ExitGRow,s6Step9ExitFRow,s6Step9ExitFvRow,s6Step9ExitGvRow] 0 s6Step9ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9ExitG_Outgoing : rowsOwned s6Step9ExitGvAfter [s6Step9ExitGOut,s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut] :=
  hmrRows_owned_drop s6Step9ExitGvAfter [s6Step9ExitGOut,s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut] 0 s6Step9ExitBank_outgoingOwned
theorem s6Step9ExitF_Incoming : rowsOwned s6Step9ExitFBefore [s6Step9ExitFRow,s6Step9ExitFvRow,s6Step9ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9ExitGRow,s6Step9ExitFRow,s6Step9ExitFvRow,s6Step9ExitGvRow] 1 s6Step9ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9ExitF_Outgoing : rowsOwned s6Step9ExitGvAfter [s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut] :=
  hmrRows_owned_drop s6Step9ExitGvAfter [s6Step9ExitGOut,s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut] 1 s6Step9ExitBank_outgoingOwned
theorem s6Step9ExitFv_Incoming : rowsOwned s6Step9ExitFvBefore [s6Step9ExitFvRow,s6Step9ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9ExitGRow,s6Step9ExitFRow,s6Step9ExitFvRow,s6Step9ExitGvRow] 2 s6Step9ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9ExitFv_Outgoing : rowsOwned s6Step9ExitGvAfter [s6Step9ExitFvOut,s6Step9ExitGvOut] :=
  hmrRows_owned_drop s6Step9ExitGvAfter [s6Step9ExitGOut,s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut] 2 s6Step9ExitBank_outgoingOwned
theorem s6Step9ExitGv_Incoming : rowsOwned s6Step9ExitGvBefore [s6Step9ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step9ExitGRow,s6Step9ExitFRow,s6Step9ExitFvRow,s6Step9ExitGvRow] 3 s6Step9ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step9ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<864) ∨ (868≤q ∧ q<869) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step9ExitGv_Outgoing : rowsOwned s6Step9ExitGvAfter [s6Step9ExitGvOut] :=
  hmrRows_owned_drop s6Step9ExitGvAfter [s6Step9ExitGOut,s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut] 3 s6Step9ExitBank_outgoingOwned
theorem s6Step9ExitBank_rows : planWindowRowsLog s6Step9ExitGBefore [(s6Step9ExitGRow,255),(s6Step9ExitFRow,256),(s6Step9ExitFvRow,11),(s6Step9ExitGvRow,9)] [[],[],[],[]]=
    some (s6Step9ExitGvAfter,[s6Step9ExitGOut,s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut],(shrinkRow 777 s6Step9ExitGExtra ++ (shrinkRow 795 s6Step9ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step9ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step9ExitGvAfter [] []=some (s6Step9ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step9ExitGvBefore s6Step9ExitGvAfter s6Step9ExitGvAfter
    s6Step9ExitGvRow s6Step9ExitGvOut 9 [] [] [] []
    (shrinkRow 775 s6Step9ExitGvExtra) ([]) s6Step9ExitGv_Incoming s6Step9ExitGv_checked h4 s6Step9ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step9ExitFvBefore s6Step9ExitFvAfter s6Step9ExitGvAfter
    s6Step9ExitFvRow s6Step9ExitFvOut 11 [] [(s6Step9ExitGvRow,9)] [[]] [s6Step9ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step9ExitGvExtra ++ [])) s6Step9ExitFv_Incoming s6Step9ExitFv_checked h3 s6Step9ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step9ExitFBefore s6Step9ExitFAfter s6Step9ExitGvAfter
    s6Step9ExitFRow s6Step9ExitFOut 256 [] [(s6Step9ExitFvRow,11),(s6Step9ExitGvRow,9)] [[],[]] [s6Step9ExitFvOut,s6Step9ExitGvOut]
    (shrinkRow 795 s6Step9ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step9ExitGvExtra ++ []))) s6Step9ExitF_Incoming s6Step9ExitF_checked h2 s6Step9ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step9ExitGBefore s6Step9ExitGAfter s6Step9ExitGvAfter
    s6Step9ExitGRow s6Step9ExitGOut 255 [] [(s6Step9ExitFRow,256),(s6Step9ExitFvRow,11),(s6Step9ExitGvRow,9)] [[],[],[]] [s6Step9ExitFOut,s6Step9ExitFvOut,s6Step9ExitGvOut]
    (shrinkRow 777 s6Step9ExitGExtra) ((shrinkRow 795 s6Step9ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step9ExitGvExtra ++ [])))) s6Step9ExitG_Incoming s6Step9ExitG_checked h1 s6Step9ExitG_Outgoing
  exact h0
theorem s6Step9ExitBank_checked : compileHmrBankResizeLog .exit s6Step9ExitGBefore ⟨s6Step9ExitFRow,s6Step9ExitGRow,s6Step9ExitFvRow,s6Step9ExitGvRow⟩ ⟨256,255,11,9⟩ [[],[],[],[]]=
    some (s6Step9ExitGvAfter,⟨s6Step9ExitFOut,s6Step9ExitGOut,s6Step9ExitFvOut,s6Step9ExitGvOut⟩,(shrinkRow 777 s6Step9ExitGExtra ++ (shrinkRow 795 s6Step9ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step9ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step9ExitBank_rows]
  rfl
theorem s6Step10ExitBank_incomingDistinct : ([s6Step10ExitGRow,s6Step10ExitFRow,s6Step10ExitFvRow,s6Step10ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step10ExitBank_outgoingOwned : rowsOwned s6Step10ExitGvAfter [s6Step10ExitGOut,s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step10ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10ExitG_Incoming : rowsOwned s6Step10ExitGBefore [s6Step10ExitGRow,s6Step10ExitFRow,s6Step10ExitFvRow,s6Step10ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10ExitGRow,s6Step10ExitFRow,s6Step10ExitFvRow,s6Step10ExitGvRow] 0 s6Step10ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10ExitG_Outgoing : rowsOwned s6Step10ExitGvAfter [s6Step10ExitGOut,s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut] :=
  hmrRows_owned_drop s6Step10ExitGvAfter [s6Step10ExitGOut,s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut] 0 s6Step10ExitBank_outgoingOwned
theorem s6Step10ExitF_Incoming : rowsOwned s6Step10ExitFBefore [s6Step10ExitFRow,s6Step10ExitFvRow,s6Step10ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10ExitGRow,s6Step10ExitFRow,s6Step10ExitFvRow,s6Step10ExitGvRow] 1 s6Step10ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10ExitF_Outgoing : rowsOwned s6Step10ExitGvAfter [s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut] :=
  hmrRows_owned_drop s6Step10ExitGvAfter [s6Step10ExitGOut,s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut] 1 s6Step10ExitBank_outgoingOwned
theorem s6Step10ExitFv_Incoming : rowsOwned s6Step10ExitFvBefore [s6Step10ExitFvRow,s6Step10ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10ExitGRow,s6Step10ExitFRow,s6Step10ExitFvRow,s6Step10ExitGvRow] 2 s6Step10ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10ExitFv_Outgoing : rowsOwned s6Step10ExitGvAfter [s6Step10ExitFvOut,s6Step10ExitGvOut] :=
  hmrRows_owned_drop s6Step10ExitGvAfter [s6Step10ExitGOut,s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut] 2 s6Step10ExitBank_outgoingOwned
theorem s6Step10ExitGv_Incoming : rowsOwned s6Step10ExitGvBefore [s6Step10ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step10ExitGRow,s6Step10ExitFRow,s6Step10ExitFvRow,s6Step10ExitGvRow] 3 s6Step10ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step10ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step10ExitGv_Outgoing : rowsOwned s6Step10ExitGvAfter [s6Step10ExitGvOut] :=
  hmrRows_owned_drop s6Step10ExitGvAfter [s6Step10ExitGOut,s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut] 3 s6Step10ExitBank_outgoingOwned
theorem s6Step10ExitBank_rows : planWindowRowsLog s6Step10ExitGBefore [(s6Step10ExitGRow,255),(s6Step10ExitFRow,256),(s6Step10ExitFvRow,12),(s6Step10ExitGvRow,10)] [[],[],[],[]]=
    some (s6Step10ExitGvAfter,[s6Step10ExitGOut,s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut],(shrinkRow 777 s6Step10ExitGExtra ++ (shrinkRow 795 s6Step10ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step10ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step10ExitGvAfter [] []=some (s6Step10ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step10ExitGvBefore s6Step10ExitGvAfter s6Step10ExitGvAfter
    s6Step10ExitGvRow s6Step10ExitGvOut 10 [] [] [] []
    (shrinkRow 775 s6Step10ExitGvExtra) ([]) s6Step10ExitGv_Incoming s6Step10ExitGv_checked h4 s6Step10ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step10ExitFvBefore s6Step10ExitFvAfter s6Step10ExitGvAfter
    s6Step10ExitFvRow s6Step10ExitFvOut 12 [] [(s6Step10ExitGvRow,10)] [[]] [s6Step10ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step10ExitGvExtra ++ [])) s6Step10ExitFv_Incoming s6Step10ExitFv_checked h3 s6Step10ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step10ExitFBefore s6Step10ExitFAfter s6Step10ExitGvAfter
    s6Step10ExitFRow s6Step10ExitFOut 256 [] [(s6Step10ExitFvRow,12),(s6Step10ExitGvRow,10)] [[],[]] [s6Step10ExitFvOut,s6Step10ExitGvOut]
    (shrinkRow 795 s6Step10ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step10ExitGvExtra ++ []))) s6Step10ExitF_Incoming s6Step10ExitF_checked h2 s6Step10ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step10ExitGBefore s6Step10ExitGAfter s6Step10ExitGvAfter
    s6Step10ExitGRow s6Step10ExitGOut 255 [] [(s6Step10ExitFRow,256),(s6Step10ExitFvRow,12),(s6Step10ExitGvRow,10)] [[],[],[]] [s6Step10ExitFOut,s6Step10ExitFvOut,s6Step10ExitGvOut]
    (shrinkRow 777 s6Step10ExitGExtra) ((shrinkRow 795 s6Step10ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step10ExitGvExtra ++ [])))) s6Step10ExitG_Incoming s6Step10ExitG_checked h1 s6Step10ExitG_Outgoing
  exact h0
theorem s6Step10ExitBank_checked : compileHmrBankResizeLog .exit s6Step10ExitGBefore ⟨s6Step10ExitFRow,s6Step10ExitGRow,s6Step10ExitFvRow,s6Step10ExitGvRow⟩ ⟨256,255,12,10⟩ [[],[],[],[]]=
    some (s6Step10ExitGvAfter,⟨s6Step10ExitFOut,s6Step10ExitGOut,s6Step10ExitFvOut,s6Step10ExitGvOut⟩,(shrinkRow 777 s6Step10ExitGExtra ++ (shrinkRow 795 s6Step10ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step10ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step10ExitBank_rows]
  rfl
theorem s6Step11ExitBank_incomingDistinct : ([s6Step11ExitGRow,s6Step11ExitFRow,s6Step11ExitFvRow,s6Step11ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step11ExitBank_outgoingOwned : rowsOwned s6Step11ExitGvAfter [s6Step11ExitGOut,s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step11ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11ExitG_Incoming : rowsOwned s6Step11ExitGBefore [s6Step11ExitGRow,s6Step11ExitFRow,s6Step11ExitFvRow,s6Step11ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11ExitGRow,s6Step11ExitFRow,s6Step11ExitFvRow,s6Step11ExitGvRow] 0 s6Step11ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11ExitG_Outgoing : rowsOwned s6Step11ExitGvAfter [s6Step11ExitGOut,s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut] :=
  hmrRows_owned_drop s6Step11ExitGvAfter [s6Step11ExitGOut,s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut] 0 s6Step11ExitBank_outgoingOwned
theorem s6Step11ExitF_Incoming : rowsOwned s6Step11ExitFBefore [s6Step11ExitFRow,s6Step11ExitFvRow,s6Step11ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11ExitGRow,s6Step11ExitFRow,s6Step11ExitFvRow,s6Step11ExitGvRow] 1 s6Step11ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11ExitF_Outgoing : rowsOwned s6Step11ExitGvAfter [s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut] :=
  hmrRows_owned_drop s6Step11ExitGvAfter [s6Step11ExitGOut,s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut] 1 s6Step11ExitBank_outgoingOwned
theorem s6Step11ExitFv_Incoming : rowsOwned s6Step11ExitFvBefore [s6Step11ExitFvRow,s6Step11ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11ExitGRow,s6Step11ExitFRow,s6Step11ExitFvRow,s6Step11ExitGvRow] 2 s6Step11ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11ExitFv_Outgoing : rowsOwned s6Step11ExitGvAfter [s6Step11ExitFvOut,s6Step11ExitGvOut] :=
  hmrRows_owned_drop s6Step11ExitGvAfter [s6Step11ExitGOut,s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut] 2 s6Step11ExitBank_outgoingOwned
theorem s6Step11ExitGv_Incoming : rowsOwned s6Step11ExitGvBefore [s6Step11ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step11ExitGRow,s6Step11ExitFRow,s6Step11ExitFvRow,s6Step11ExitGvRow] 3 s6Step11ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step11ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (873≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step11ExitGv_Outgoing : rowsOwned s6Step11ExitGvAfter [s6Step11ExitGvOut] :=
  hmrRows_owned_drop s6Step11ExitGvAfter [s6Step11ExitGOut,s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut] 3 s6Step11ExitBank_outgoingOwned
theorem s6Step11ExitBank_rows : planWindowRowsLog s6Step11ExitGBefore [(s6Step11ExitGRow,255),(s6Step11ExitFRow,256),(s6Step11ExitFvRow,13),(s6Step11ExitGvRow,11)] [[],[],[],[]]=
    some (s6Step11ExitGvAfter,[s6Step11ExitGOut,s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut],(shrinkRow 777 s6Step11ExitGExtra ++ (shrinkRow 795 s6Step11ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step11ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step11ExitGvAfter [] []=some (s6Step11ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step11ExitGvBefore s6Step11ExitGvAfter s6Step11ExitGvAfter
    s6Step11ExitGvRow s6Step11ExitGvOut 11 [] [] [] []
    (shrinkRow 775 s6Step11ExitGvExtra) ([]) s6Step11ExitGv_Incoming s6Step11ExitGv_checked h4 s6Step11ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step11ExitFvBefore s6Step11ExitFvAfter s6Step11ExitGvAfter
    s6Step11ExitFvRow s6Step11ExitFvOut 13 [] [(s6Step11ExitGvRow,11)] [[]] [s6Step11ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step11ExitGvExtra ++ [])) s6Step11ExitFv_Incoming s6Step11ExitFv_checked h3 s6Step11ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step11ExitFBefore s6Step11ExitFAfter s6Step11ExitGvAfter
    s6Step11ExitFRow s6Step11ExitFOut 256 [] [(s6Step11ExitFvRow,13),(s6Step11ExitGvRow,11)] [[],[]] [s6Step11ExitFvOut,s6Step11ExitGvOut]
    (shrinkRow 795 s6Step11ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step11ExitGvExtra ++ []))) s6Step11ExitF_Incoming s6Step11ExitF_checked h2 s6Step11ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step11ExitGBefore s6Step11ExitGAfter s6Step11ExitGvAfter
    s6Step11ExitGRow s6Step11ExitGOut 255 [] [(s6Step11ExitFRow,256),(s6Step11ExitFvRow,13),(s6Step11ExitGvRow,11)] [[],[],[]] [s6Step11ExitFOut,s6Step11ExitFvOut,s6Step11ExitGvOut]
    (shrinkRow 777 s6Step11ExitGExtra) ((shrinkRow 795 s6Step11ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step11ExitGvExtra ++ [])))) s6Step11ExitG_Incoming s6Step11ExitG_checked h1 s6Step11ExitG_Outgoing
  exact h0
theorem s6Step11ExitBank_checked : compileHmrBankResizeLog .exit s6Step11ExitGBefore ⟨s6Step11ExitFRow,s6Step11ExitGRow,s6Step11ExitFvRow,s6Step11ExitGvRow⟩ ⟨256,255,13,11⟩ [[],[],[],[]]=
    some (s6Step11ExitGvAfter,⟨s6Step11ExitFOut,s6Step11ExitGOut,s6Step11ExitFvOut,s6Step11ExitGvOut⟩,(shrinkRow 777 s6Step11ExitGExtra ++ (shrinkRow 795 s6Step11ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step11ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step11ExitBank_rows]
  rfl
theorem s6Step12ExitBank_incomingDistinct : ([s6Step12ExitGRow,s6Step12ExitFRow,s6Step12ExitFvRow,s6Step12ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step12ExitBank_outgoingOwned : rowsOwned s6Step12ExitGvAfter [s6Step12ExitGOut,s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step12ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<864) ∨ (865≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12ExitG_Incoming : rowsOwned s6Step12ExitGBefore [s6Step12ExitGRow,s6Step12ExitFRow,s6Step12ExitFvRow,s6Step12ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12ExitGRow,s6Step12ExitFRow,s6Step12ExitFvRow,s6Step12ExitGvRow] 0 s6Step12ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12ExitG_Outgoing : rowsOwned s6Step12ExitGvAfter [s6Step12ExitGOut,s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut] :=
  hmrRows_owned_drop s6Step12ExitGvAfter [s6Step12ExitGOut,s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut] 0 s6Step12ExitBank_outgoingOwned
theorem s6Step12ExitF_Incoming : rowsOwned s6Step12ExitFBefore [s6Step12ExitFRow,s6Step12ExitFvRow,s6Step12ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12ExitGRow,s6Step12ExitFRow,s6Step12ExitFvRow,s6Step12ExitGvRow] 1 s6Step12ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12ExitF_Outgoing : rowsOwned s6Step12ExitGvAfter [s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut] :=
  hmrRows_owned_drop s6Step12ExitGvAfter [s6Step12ExitGOut,s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut] 1 s6Step12ExitBank_outgoingOwned
theorem s6Step12ExitFv_Incoming : rowsOwned s6Step12ExitFvBefore [s6Step12ExitFvRow,s6Step12ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12ExitGRow,s6Step12ExitFRow,s6Step12ExitFvRow,s6Step12ExitGvRow] 2 s6Step12ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12ExitFv_Outgoing : rowsOwned s6Step12ExitGvAfter [s6Step12ExitFvOut,s6Step12ExitGvOut] :=
  hmrRows_owned_drop s6Step12ExitGvAfter [s6Step12ExitGOut,s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut] 2 s6Step12ExitBank_outgoingOwned
theorem s6Step12ExitGv_Incoming : rowsOwned s6Step12ExitGvBefore [s6Step12ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step12ExitGRow,s6Step12ExitFRow,s6Step12ExitFvRow,s6Step12ExitGvRow] 3 s6Step12ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step12ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step12ExitGv_Outgoing : rowsOwned s6Step12ExitGvAfter [s6Step12ExitGvOut] :=
  hmrRows_owned_drop s6Step12ExitGvAfter [s6Step12ExitGOut,s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut] 3 s6Step12ExitBank_outgoingOwned
theorem s6Step12ExitBank_rows : planWindowRowsLog s6Step12ExitGBefore [(s6Step12ExitGRow,255),(s6Step12ExitFRow,256),(s6Step12ExitFvRow,14),(s6Step12ExitGvRow,12)] [[],[],[],[]]=
    some (s6Step12ExitGvAfter,[s6Step12ExitGOut,s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut],(shrinkRow 777 s6Step12ExitGExtra ++ (shrinkRow 795 s6Step12ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step12ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step12ExitGvAfter [] []=some (s6Step12ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step12ExitGvBefore s6Step12ExitGvAfter s6Step12ExitGvAfter
    s6Step12ExitGvRow s6Step12ExitGvOut 12 [] [] [] []
    (shrinkRow 775 s6Step12ExitGvExtra) ([]) s6Step12ExitGv_Incoming s6Step12ExitGv_checked h4 s6Step12ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step12ExitFvBefore s6Step12ExitFvAfter s6Step12ExitGvAfter
    s6Step12ExitFvRow s6Step12ExitFvOut 14 [] [(s6Step12ExitGvRow,12)] [[]] [s6Step12ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step12ExitGvExtra ++ [])) s6Step12ExitFv_Incoming s6Step12ExitFv_checked h3 s6Step12ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step12ExitFBefore s6Step12ExitFAfter s6Step12ExitGvAfter
    s6Step12ExitFRow s6Step12ExitFOut 256 [] [(s6Step12ExitFvRow,14),(s6Step12ExitGvRow,12)] [[],[]] [s6Step12ExitFvOut,s6Step12ExitGvOut]
    (shrinkRow 795 s6Step12ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step12ExitGvExtra ++ []))) s6Step12ExitF_Incoming s6Step12ExitF_checked h2 s6Step12ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step12ExitGBefore s6Step12ExitGAfter s6Step12ExitGvAfter
    s6Step12ExitGRow s6Step12ExitGOut 255 [] [(s6Step12ExitFRow,256),(s6Step12ExitFvRow,14),(s6Step12ExitGvRow,12)] [[],[],[]] [s6Step12ExitFOut,s6Step12ExitFvOut,s6Step12ExitGvOut]
    (shrinkRow 777 s6Step12ExitGExtra) ((shrinkRow 795 s6Step12ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step12ExitGvExtra ++ [])))) s6Step12ExitG_Incoming s6Step12ExitG_checked h1 s6Step12ExitG_Outgoing
  exact h0
theorem s6Step12ExitBank_checked : compileHmrBankResizeLog .exit s6Step12ExitGBefore ⟨s6Step12ExitFRow,s6Step12ExitGRow,s6Step12ExitFvRow,s6Step12ExitGvRow⟩ ⟨256,255,14,12⟩ [[],[],[],[]]=
    some (s6Step12ExitGvAfter,⟨s6Step12ExitFOut,s6Step12ExitGOut,s6Step12ExitFvOut,s6Step12ExitGvOut⟩,(shrinkRow 777 s6Step12ExitGExtra ++ (shrinkRow 795 s6Step12ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step12ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step12ExitBank_rows]
  rfl
theorem s6Step13ExitBank_incomingDistinct : ([s6Step13ExitGRow,s6Step13ExitFRow,s6Step13ExitFvRow,s6Step13ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step13ExitBank_outgoingOwned : rowsOwned s6Step13ExitGvAfter [s6Step13ExitGOut,s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step13ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13ExitG_Incoming : rowsOwned s6Step13ExitGBefore [s6Step13ExitGRow,s6Step13ExitFRow,s6Step13ExitFvRow,s6Step13ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13ExitGRow,s6Step13ExitFRow,s6Step13ExitFvRow,s6Step13ExitGvRow] 0 s6Step13ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13ExitG_Outgoing : rowsOwned s6Step13ExitGvAfter [s6Step13ExitGOut,s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut] :=
  hmrRows_owned_drop s6Step13ExitGvAfter [s6Step13ExitGOut,s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut] 0 s6Step13ExitBank_outgoingOwned
theorem s6Step13ExitF_Incoming : rowsOwned s6Step13ExitFBefore [s6Step13ExitFRow,s6Step13ExitFvRow,s6Step13ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13ExitGRow,s6Step13ExitFRow,s6Step13ExitFvRow,s6Step13ExitGvRow] 1 s6Step13ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13ExitF_Outgoing : rowsOwned s6Step13ExitGvAfter [s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut] :=
  hmrRows_owned_drop s6Step13ExitGvAfter [s6Step13ExitGOut,s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut] 1 s6Step13ExitBank_outgoingOwned
theorem s6Step13ExitFv_Incoming : rowsOwned s6Step13ExitFvBefore [s6Step13ExitFvRow,s6Step13ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13ExitGRow,s6Step13ExitFRow,s6Step13ExitFvRow,s6Step13ExitGvRow] 2 s6Step13ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13ExitFv_Outgoing : rowsOwned s6Step13ExitGvAfter [s6Step13ExitFvOut,s6Step13ExitGvOut] :=
  hmrRows_owned_drop s6Step13ExitGvAfter [s6Step13ExitGOut,s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut] 2 s6Step13ExitBank_outgoingOwned
theorem s6Step13ExitGv_Incoming : rowsOwned s6Step13ExitGvBefore [s6Step13ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step13ExitGRow,s6Step13ExitFRow,s6Step13ExitFvRow,s6Step13ExitGvRow] 3 s6Step13ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step13ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step13ExitGv_Outgoing : rowsOwned s6Step13ExitGvAfter [s6Step13ExitGvOut] :=
  hmrRows_owned_drop s6Step13ExitGvAfter [s6Step13ExitGOut,s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut] 3 s6Step13ExitBank_outgoingOwned
theorem s6Step13ExitBank_rows : planWindowRowsLog s6Step13ExitGBefore [(s6Step13ExitGRow,255),(s6Step13ExitFRow,256),(s6Step13ExitFvRow,15),(s6Step13ExitGvRow,13)] [[],[],[],[]]=
    some (s6Step13ExitGvAfter,[s6Step13ExitGOut,s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut],(shrinkRow 777 s6Step13ExitGExtra ++ (shrinkRow 795 s6Step13ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step13ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step13ExitGvAfter [] []=some (s6Step13ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step13ExitGvBefore s6Step13ExitGvAfter s6Step13ExitGvAfter
    s6Step13ExitGvRow s6Step13ExitGvOut 13 [] [] [] []
    (shrinkRow 775 s6Step13ExitGvExtra) ([]) s6Step13ExitGv_Incoming s6Step13ExitGv_checked h4 s6Step13ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step13ExitFvBefore s6Step13ExitFvAfter s6Step13ExitGvAfter
    s6Step13ExitFvRow s6Step13ExitFvOut 15 [] [(s6Step13ExitGvRow,13)] [[]] [s6Step13ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step13ExitGvExtra ++ [])) s6Step13ExitFv_Incoming s6Step13ExitFv_checked h3 s6Step13ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step13ExitFBefore s6Step13ExitFAfter s6Step13ExitGvAfter
    s6Step13ExitFRow s6Step13ExitFOut 256 [] [(s6Step13ExitFvRow,15),(s6Step13ExitGvRow,13)] [[],[]] [s6Step13ExitFvOut,s6Step13ExitGvOut]
    (shrinkRow 795 s6Step13ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step13ExitGvExtra ++ []))) s6Step13ExitF_Incoming s6Step13ExitF_checked h2 s6Step13ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step13ExitGBefore s6Step13ExitGAfter s6Step13ExitGvAfter
    s6Step13ExitGRow s6Step13ExitGOut 255 [] [(s6Step13ExitFRow,256),(s6Step13ExitFvRow,15),(s6Step13ExitGvRow,13)] [[],[],[]] [s6Step13ExitFOut,s6Step13ExitFvOut,s6Step13ExitGvOut]
    (shrinkRow 777 s6Step13ExitGExtra) ((shrinkRow 795 s6Step13ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step13ExitGvExtra ++ [])))) s6Step13ExitG_Incoming s6Step13ExitG_checked h1 s6Step13ExitG_Outgoing
  exact h0
theorem s6Step13ExitBank_checked : compileHmrBankResizeLog .exit s6Step13ExitGBefore ⟨s6Step13ExitFRow,s6Step13ExitGRow,s6Step13ExitFvRow,s6Step13ExitGvRow⟩ ⟨256,255,15,13⟩ [[],[],[],[]]=
    some (s6Step13ExitGvAfter,⟨s6Step13ExitFOut,s6Step13ExitGOut,s6Step13ExitFvOut,s6Step13ExitGvOut⟩,(shrinkRow 777 s6Step13ExitGExtra ++ (shrinkRow 795 s6Step13ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step13ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step13ExitBank_rows]
  rfl
theorem s6Step14ExitBank_incomingDistinct : ([s6Step14ExitGRow,s6Step14ExitFRow,s6Step14ExitFvRow,s6Step14ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step14ExitBank_outgoingOwned : rowsOwned s6Step14ExitGvAfter [s6Step14ExitGOut,s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step14ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14ExitG_Incoming : rowsOwned s6Step14ExitGBefore [s6Step14ExitGRow,s6Step14ExitFRow,s6Step14ExitFvRow,s6Step14ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14ExitGRow,s6Step14ExitFRow,s6Step14ExitFvRow,s6Step14ExitGvRow] 0 s6Step14ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14ExitG_Outgoing : rowsOwned s6Step14ExitGvAfter [s6Step14ExitGOut,s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut] :=
  hmrRows_owned_drop s6Step14ExitGvAfter [s6Step14ExitGOut,s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut] 0 s6Step14ExitBank_outgoingOwned
theorem s6Step14ExitF_Incoming : rowsOwned s6Step14ExitFBefore [s6Step14ExitFRow,s6Step14ExitFvRow,s6Step14ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14ExitGRow,s6Step14ExitFRow,s6Step14ExitFvRow,s6Step14ExitGvRow] 1 s6Step14ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14ExitF_Outgoing : rowsOwned s6Step14ExitGvAfter [s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut] :=
  hmrRows_owned_drop s6Step14ExitGvAfter [s6Step14ExitGOut,s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut] 1 s6Step14ExitBank_outgoingOwned
theorem s6Step14ExitFv_Incoming : rowsOwned s6Step14ExitFvBefore [s6Step14ExitFvRow,s6Step14ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14ExitGRow,s6Step14ExitFRow,s6Step14ExitFvRow,s6Step14ExitGvRow] 2 s6Step14ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14ExitFv_Outgoing : rowsOwned s6Step14ExitGvAfter [s6Step14ExitFvOut,s6Step14ExitGvOut] :=
  hmrRows_owned_drop s6Step14ExitGvAfter [s6Step14ExitGOut,s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut] 2 s6Step14ExitBank_outgoingOwned
theorem s6Step14ExitGv_Incoming : rowsOwned s6Step14ExitGvBefore [s6Step14ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step14ExitGRow,s6Step14ExitFRow,s6Step14ExitFvRow,s6Step14ExitGvRow] 3 s6Step14ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step14ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step14ExitGv_Outgoing : rowsOwned s6Step14ExitGvAfter [s6Step14ExitGvOut] :=
  hmrRows_owned_drop s6Step14ExitGvAfter [s6Step14ExitGOut,s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut] 3 s6Step14ExitBank_outgoingOwned
theorem s6Step14ExitBank_rows : planWindowRowsLog s6Step14ExitGBefore [(s6Step14ExitGRow,255),(s6Step14ExitFRow,256),(s6Step14ExitFvRow,16),(s6Step14ExitGvRow,14)] [[],[],[],[]]=
    some (s6Step14ExitGvAfter,[s6Step14ExitGOut,s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut],(shrinkRow 777 s6Step14ExitGExtra ++ (shrinkRow 795 s6Step14ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step14ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step14ExitGvAfter [] []=some (s6Step14ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step14ExitGvBefore s6Step14ExitGvAfter s6Step14ExitGvAfter
    s6Step14ExitGvRow s6Step14ExitGvOut 14 [] [] [] []
    (shrinkRow 775 s6Step14ExitGvExtra) ([]) s6Step14ExitGv_Incoming s6Step14ExitGv_checked h4 s6Step14ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step14ExitFvBefore s6Step14ExitFvAfter s6Step14ExitGvAfter
    s6Step14ExitFvRow s6Step14ExitFvOut 16 [] [(s6Step14ExitGvRow,14)] [[]] [s6Step14ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step14ExitGvExtra ++ [])) s6Step14ExitFv_Incoming s6Step14ExitFv_checked h3 s6Step14ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step14ExitFBefore s6Step14ExitFAfter s6Step14ExitGvAfter
    s6Step14ExitFRow s6Step14ExitFOut 256 [] [(s6Step14ExitFvRow,16),(s6Step14ExitGvRow,14)] [[],[]] [s6Step14ExitFvOut,s6Step14ExitGvOut]
    (shrinkRow 795 s6Step14ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step14ExitGvExtra ++ []))) s6Step14ExitF_Incoming s6Step14ExitF_checked h2 s6Step14ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step14ExitGBefore s6Step14ExitGAfter s6Step14ExitGvAfter
    s6Step14ExitGRow s6Step14ExitGOut 255 [] [(s6Step14ExitFRow,256),(s6Step14ExitFvRow,16),(s6Step14ExitGvRow,14)] [[],[],[]] [s6Step14ExitFOut,s6Step14ExitFvOut,s6Step14ExitGvOut]
    (shrinkRow 777 s6Step14ExitGExtra) ((shrinkRow 795 s6Step14ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step14ExitGvExtra ++ [])))) s6Step14ExitG_Incoming s6Step14ExitG_checked h1 s6Step14ExitG_Outgoing
  exact h0
theorem s6Step14ExitBank_checked : compileHmrBankResizeLog .exit s6Step14ExitGBefore ⟨s6Step14ExitFRow,s6Step14ExitGRow,s6Step14ExitFvRow,s6Step14ExitGvRow⟩ ⟨256,255,16,14⟩ [[],[],[],[]]=
    some (s6Step14ExitGvAfter,⟨s6Step14ExitFOut,s6Step14ExitGOut,s6Step14ExitFvOut,s6Step14ExitGvOut⟩,(shrinkRow 777 s6Step14ExitGExtra ++ (shrinkRow 795 s6Step14ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step14ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step14ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
