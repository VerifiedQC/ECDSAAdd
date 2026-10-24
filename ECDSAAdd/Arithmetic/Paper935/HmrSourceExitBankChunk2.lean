import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk2
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk1

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step32ExitBank_incomingDistinct : ([s2Step32ExitGRow,s2Step32ExitFRow,s2Step32ExitFvRow,s2Step32ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32ExitBank_outgoingOwned : rowsOwned s2Step32ExitGvAfter [s2Step32ExitGOut,s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step32ExitGvAfter (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32ExitG_Incoming : rowsOwned s2Step32ExitGBefore [s2Step32ExitGRow,s2Step32ExitFRow,s2Step32ExitFvRow,s2Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32ExitGRow,s2Step32ExitFRow,s2Step32ExitFvRow,s2Step32ExitGvRow] 0 s2Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32ExitG_Outgoing : rowsOwned s2Step32ExitGvAfter [s2Step32ExitGOut,s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut] :=
  hmrRows_owned_drop s2Step32ExitGvAfter [s2Step32ExitGOut,s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut] 0 s2Step32ExitBank_outgoingOwned
theorem s2Step32ExitF_Incoming : rowsOwned s2Step32ExitFBefore [s2Step32ExitFRow,s2Step32ExitFvRow,s2Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32ExitGRow,s2Step32ExitFRow,s2Step32ExitFvRow,s2Step32ExitGvRow] 1 s2Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32ExitF_Outgoing : rowsOwned s2Step32ExitGvAfter [s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut] :=
  hmrRows_owned_drop s2Step32ExitGvAfter [s2Step32ExitGOut,s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut] 1 s2Step32ExitBank_outgoingOwned
theorem s2Step32ExitFv_Incoming : rowsOwned s2Step32ExitFvBefore [s2Step32ExitFvRow,s2Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32ExitGRow,s2Step32ExitFRow,s2Step32ExitFvRow,s2Step32ExitGvRow] 2 s2Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32ExitFvBefore (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32ExitFv_Outgoing : rowsOwned s2Step32ExitGvAfter [s2Step32ExitFvOut,s2Step32ExitGvOut] :=
  hmrRows_owned_drop s2Step32ExitGvAfter [s2Step32ExitGOut,s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut] 2 s2Step32ExitBank_outgoingOwned
theorem s2Step32ExitGv_Incoming : rowsOwned s2Step32ExitGvBefore [s2Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step32ExitGRow,s2Step32ExitFRow,s2Step32ExitFvRow,s2Step32ExitGvRow] 3 s2Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step32ExitGvBefore (fun q => (0≤q ∧ q<764) ∨ (765≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step32ExitGv_Outgoing : rowsOwned s2Step32ExitGvAfter [s2Step32ExitGvOut] :=
  hmrRows_owned_drop s2Step32ExitGvAfter [s2Step32ExitGOut,s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut] 3 s2Step32ExitBank_outgoingOwned
theorem s2Step32ExitBank_rows : planWindowRowsLog s2Step32ExitGBefore [(s2Step32ExitGRow,252),(s2Step32ExitFRow,252),(s2Step32ExitFvRow,29),(s2Step32ExitGvRow,28)] [[],[],[],[]]=
    some (s2Step32ExitGvAfter,[s2Step32ExitGOut,s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut],(shrinkRow 769 s2Step32ExitGExtra ++ (shrinkRow 768 s2Step32ExitFExtra ++ (shrinkRow 770 s2Step32ExitFvExtra ++ (shrinkRow 771 s2Step32ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step32ExitGvAfter [] []=some (s2Step32ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step32ExitGvBefore s2Step32ExitGvAfter s2Step32ExitGvAfter
    s2Step32ExitGvRow s2Step32ExitGvOut 28 [] [] [] []
    (shrinkRow 771 s2Step32ExitGvExtra) ([]) s2Step32ExitGv_Incoming s2Step32ExitGv_checked h4 s2Step32ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step32ExitFvBefore s2Step32ExitFvAfter s2Step32ExitGvAfter
    s2Step32ExitFvRow s2Step32ExitFvOut 29 [] [(s2Step32ExitGvRow,28)] [[]] [s2Step32ExitGvOut]
    (shrinkRow 770 s2Step32ExitFvExtra) ((shrinkRow 771 s2Step32ExitGvExtra ++ [])) s2Step32ExitFv_Incoming s2Step32ExitFv_checked h3 s2Step32ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step32ExitFBefore s2Step32ExitFAfter s2Step32ExitGvAfter
    s2Step32ExitFRow s2Step32ExitFOut 252 [] [(s2Step32ExitFvRow,29),(s2Step32ExitGvRow,28)] [[],[]] [s2Step32ExitFvOut,s2Step32ExitGvOut]
    (shrinkRow 768 s2Step32ExitFExtra) ((shrinkRow 770 s2Step32ExitFvExtra ++ (shrinkRow 771 s2Step32ExitGvExtra ++ []))) s2Step32ExitF_Incoming s2Step32ExitF_checked h2 s2Step32ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step32ExitGBefore s2Step32ExitGAfter s2Step32ExitGvAfter
    s2Step32ExitGRow s2Step32ExitGOut 252 [] [(s2Step32ExitFRow,252),(s2Step32ExitFvRow,29),(s2Step32ExitGvRow,28)] [[],[],[]] [s2Step32ExitFOut,s2Step32ExitFvOut,s2Step32ExitGvOut]
    (shrinkRow 769 s2Step32ExitGExtra) ((shrinkRow 768 s2Step32ExitFExtra ++ (shrinkRow 770 s2Step32ExitFvExtra ++ (shrinkRow 771 s2Step32ExitGvExtra ++ [])))) s2Step32ExitG_Incoming s2Step32ExitG_checked h1 s2Step32ExitG_Outgoing
  exact h0
theorem s2Step32ExitBank_checked : compileHmrBankResizeLog .exit s2Step32ExitGBefore ⟨s2Step32ExitFRow,s2Step32ExitGRow,s2Step32ExitFvRow,s2Step32ExitGvRow⟩ ⟨252,252,29,28⟩ [[],[],[],[]]=
    some (s2Step32ExitGvAfter,⟨s2Step32ExitFOut,s2Step32ExitGOut,s2Step32ExitFvOut,s2Step32ExitGvOut⟩,(shrinkRow 769 s2Step32ExitGExtra ++ (shrinkRow 768 s2Step32ExitFExtra ++ (shrinkRow 770 s2Step32ExitFvExtra ++ (shrinkRow 771 s2Step32ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step32ExitBank_rows]
  rfl
theorem s2Step33ExitBank_incomingDistinct : ([s2Step33ExitGRow,s2Step33ExitFRow,s2Step33ExitFvRow,s2Step33ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33ExitBank_outgoingOwned : rowsOwned s2Step33ExitGvAfter [s2Step33ExitGOut,s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step33ExitGvAfter (fun q => (0≤q ∧ q<763) ∨ (764≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33ExitG_Incoming : rowsOwned s2Step33ExitGBefore [s2Step33ExitGRow,s2Step33ExitFRow,s2Step33ExitFvRow,s2Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33ExitGRow,s2Step33ExitFRow,s2Step33ExitFvRow,s2Step33ExitGvRow] 0 s2Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33ExitG_Outgoing : rowsOwned s2Step33ExitGvAfter [s2Step33ExitGOut,s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut] :=
  hmrRows_owned_drop s2Step33ExitGvAfter [s2Step33ExitGOut,s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut] 0 s2Step33ExitBank_outgoingOwned
theorem s2Step33ExitF_Incoming : rowsOwned s2Step33ExitFBefore [s2Step33ExitFRow,s2Step33ExitFvRow,s2Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33ExitGRow,s2Step33ExitFRow,s2Step33ExitFvRow,s2Step33ExitGvRow] 1 s2Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33ExitF_Outgoing : rowsOwned s2Step33ExitGvAfter [s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut] :=
  hmrRows_owned_drop s2Step33ExitGvAfter [s2Step33ExitGOut,s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut] 1 s2Step33ExitBank_outgoingOwned
theorem s2Step33ExitFv_Incoming : rowsOwned s2Step33ExitFvBefore [s2Step33ExitFvRow,s2Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33ExitGRow,s2Step33ExitFRow,s2Step33ExitFvRow,s2Step33ExitGvRow] 2 s2Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33ExitFvBefore (fun q => (0≤q ∧ q<763) ∨ (764≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33ExitFv_Outgoing : rowsOwned s2Step33ExitGvAfter [s2Step33ExitFvOut,s2Step33ExitGvOut] :=
  hmrRows_owned_drop s2Step33ExitGvAfter [s2Step33ExitGOut,s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut] 2 s2Step33ExitBank_outgoingOwned
theorem s2Step33ExitGv_Incoming : rowsOwned s2Step33ExitGvBefore [s2Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step33ExitGRow,s2Step33ExitFRow,s2Step33ExitFvRow,s2Step33ExitGvRow] 3 s2Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step33ExitGvBefore (fun q => (0≤q ∧ q<763) ∨ (764≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
    decide +kernel
theorem s2Step33ExitGv_Outgoing : rowsOwned s2Step33ExitGvAfter [s2Step33ExitGvOut] :=
  hmrRows_owned_drop s2Step33ExitGvAfter [s2Step33ExitGOut,s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut] 3 s2Step33ExitBank_outgoingOwned
theorem s2Step33ExitBank_rows : planWindowRowsLog s2Step33ExitGBefore [(s2Step33ExitGRow,251),(s2Step33ExitFRow,251),(s2Step33ExitFvRow,30),(s2Step33ExitGvRow,29)] [[],[],[],[]]=
    some (s2Step33ExitGvAfter,[s2Step33ExitGOut,s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut],(shrinkRow 769 s2Step33ExitGExtra ++ (shrinkRow 768 s2Step33ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step33ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step33ExitGvAfter [] []=some (s2Step33ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step33ExitGvBefore s2Step33ExitGvAfter s2Step33ExitGvAfter
    s2Step33ExitGvRow s2Step33ExitGvOut 29 [] [] [] []
    (shrinkRow 771 s2Step33ExitGvExtra) ([]) s2Step33ExitGv_Incoming s2Step33ExitGv_checked h4 s2Step33ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step33ExitFvBefore s2Step33ExitFvAfter s2Step33ExitGvAfter
    s2Step33ExitFvRow s2Step33ExitFvOut 30 [] [(s2Step33ExitGvRow,29)] [[]] [s2Step33ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step33ExitGvExtra ++ [])) s2Step33ExitFv_Incoming s2Step33ExitFv_checked h3 s2Step33ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step33ExitFBefore s2Step33ExitFAfter s2Step33ExitGvAfter
    s2Step33ExitFRow s2Step33ExitFOut 251 [] [(s2Step33ExitFvRow,30),(s2Step33ExitGvRow,29)] [[],[]] [s2Step33ExitFvOut,s2Step33ExitGvOut]
    (shrinkRow 768 s2Step33ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step33ExitGvExtra ++ []))) s2Step33ExitF_Incoming s2Step33ExitF_checked h2 s2Step33ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step33ExitGBefore s2Step33ExitGAfter s2Step33ExitGvAfter
    s2Step33ExitGRow s2Step33ExitGOut 251 [] [(s2Step33ExitFRow,251),(s2Step33ExitFvRow,30),(s2Step33ExitGvRow,29)] [[],[],[]] [s2Step33ExitFOut,s2Step33ExitFvOut,s2Step33ExitGvOut]
    (shrinkRow 769 s2Step33ExitGExtra) ((shrinkRow 768 s2Step33ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step33ExitGvExtra ++ [])))) s2Step33ExitG_Incoming s2Step33ExitG_checked h1 s2Step33ExitG_Outgoing
  exact h0
theorem s2Step33ExitBank_checked : compileHmrBankResizeLog .exit s2Step33ExitGBefore ⟨s2Step33ExitFRow,s2Step33ExitGRow,s2Step33ExitFvRow,s2Step33ExitGvRow⟩ ⟨251,251,30,29⟩ [[],[],[],[]]=
    some (s2Step33ExitGvAfter,⟨s2Step33ExitFOut,s2Step33ExitGOut,s2Step33ExitFvOut,s2Step33ExitGvOut⟩,(shrinkRow 769 s2Step33ExitGExtra ++ (shrinkRow 768 s2Step33ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step33ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step33ExitBank_rows]
  rfl
theorem s2Step34ExitBank_incomingDistinct : ([s2Step34ExitGRow,s2Step34ExitFRow,s2Step34ExitFvRow,s2Step34ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34ExitBank_outgoingOwned : rowsOwned s2Step34ExitGvAfter [s2Step34ExitGOut,s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step34ExitGvAfter (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<779) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34ExitG_Incoming : rowsOwned s2Step34ExitGBefore [s2Step34ExitGRow,s2Step34ExitFRow,s2Step34ExitFvRow,s2Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34ExitGRow,s2Step34ExitFRow,s2Step34ExitFvRow,s2Step34ExitGvRow] 0 s2Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34ExitG_Outgoing : rowsOwned s2Step34ExitGvAfter [s2Step34ExitGOut,s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut] :=
  hmrRows_owned_drop s2Step34ExitGvAfter [s2Step34ExitGOut,s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut] 0 s2Step34ExitBank_outgoingOwned
theorem s2Step34ExitF_Incoming : rowsOwned s2Step34ExitFBefore [s2Step34ExitFRow,s2Step34ExitFvRow,s2Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34ExitGRow,s2Step34ExitFRow,s2Step34ExitFvRow,s2Step34ExitGvRow] 1 s2Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34ExitFBefore (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34ExitF_Outgoing : rowsOwned s2Step34ExitGvAfter [s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut] :=
  hmrRows_owned_drop s2Step34ExitGvAfter [s2Step34ExitGOut,s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut] 1 s2Step34ExitBank_outgoingOwned
theorem s2Step34ExitFv_Incoming : rowsOwned s2Step34ExitFvBefore [s2Step34ExitFvRow,s2Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34ExitGRow,s2Step34ExitFRow,s2Step34ExitFvRow,s2Step34ExitGvRow] 2 s2Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34ExitFvBefore (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34ExitFv_Outgoing : rowsOwned s2Step34ExitGvAfter [s2Step34ExitFvOut,s2Step34ExitGvOut] :=
  hmrRows_owned_drop s2Step34ExitGvAfter [s2Step34ExitGOut,s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut] 2 s2Step34ExitBank_outgoingOwned
theorem s2Step34ExitGv_Incoming : rowsOwned s2Step34ExitGvBefore [s2Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step34ExitGRow,s2Step34ExitFRow,s2Step34ExitFvRow,s2Step34ExitGvRow] 3 s2Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step34ExitGvBefore (fun q => (0≤q ∧ q<250) ∨ (251≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step34ExitGv_Outgoing : rowsOwned s2Step34ExitGvAfter [s2Step34ExitGvOut] :=
  hmrRows_owned_drop s2Step34ExitGvAfter [s2Step34ExitGOut,s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut] 3 s2Step34ExitBank_outgoingOwned
theorem s2Step34ExitBank_rows : planWindowRowsLog s2Step34ExitGBefore [(s2Step34ExitGRow,250),(s2Step34ExitFRow,251),(s2Step34ExitFvRow,30),(s2Step34ExitGvRow,30)] [[],[],[],[]]=
    some (s2Step34ExitGvAfter,[s2Step34ExitGOut,s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut],(shrinkRow 769 s2Step34ExitGExtra ++ (shrinkRow 768 s2Step34ExitFExtra ++ (shrinkRow 770 s2Step34ExitFvExtra ++ (shrinkRow 771 s2Step34ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step34ExitGvAfter [] []=some (s2Step34ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step34ExitGvBefore s2Step34ExitGvAfter s2Step34ExitGvAfter
    s2Step34ExitGvRow s2Step34ExitGvOut 30 [] [] [] []
    (shrinkRow 771 s2Step34ExitGvExtra) ([]) s2Step34ExitGv_Incoming s2Step34ExitGv_checked h4 s2Step34ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step34ExitFvBefore s2Step34ExitFvAfter s2Step34ExitGvAfter
    s2Step34ExitFvRow s2Step34ExitFvOut 30 [] [(s2Step34ExitGvRow,30)] [[]] [s2Step34ExitGvOut]
    (shrinkRow 770 s2Step34ExitFvExtra) ((shrinkRow 771 s2Step34ExitGvExtra ++ [])) s2Step34ExitFv_Incoming s2Step34ExitFv_checked h3 s2Step34ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step34ExitFBefore s2Step34ExitFAfter s2Step34ExitGvAfter
    s2Step34ExitFRow s2Step34ExitFOut 251 [] [(s2Step34ExitFvRow,30),(s2Step34ExitGvRow,30)] [[],[]] [s2Step34ExitFvOut,s2Step34ExitGvOut]
    (shrinkRow 768 s2Step34ExitFExtra) ((shrinkRow 770 s2Step34ExitFvExtra ++ (shrinkRow 771 s2Step34ExitGvExtra ++ []))) s2Step34ExitF_Incoming s2Step34ExitF_checked h2 s2Step34ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step34ExitGBefore s2Step34ExitGAfter s2Step34ExitGvAfter
    s2Step34ExitGRow s2Step34ExitGOut 250 [] [(s2Step34ExitFRow,251),(s2Step34ExitFvRow,30),(s2Step34ExitGvRow,30)] [[],[],[]] [s2Step34ExitFOut,s2Step34ExitFvOut,s2Step34ExitGvOut]
    (shrinkRow 769 s2Step34ExitGExtra) ((shrinkRow 768 s2Step34ExitFExtra ++ (shrinkRow 770 s2Step34ExitFvExtra ++ (shrinkRow 771 s2Step34ExitGvExtra ++ [])))) s2Step34ExitG_Incoming s2Step34ExitG_checked h1 s2Step34ExitG_Outgoing
  exact h0
theorem s2Step34ExitBank_checked : compileHmrBankResizeLog .exit s2Step34ExitGBefore ⟨s2Step34ExitFRow,s2Step34ExitGRow,s2Step34ExitFvRow,s2Step34ExitGvRow⟩ ⟨251,250,30,30⟩ [[],[],[],[]]=
    some (s2Step34ExitGvAfter,⟨s2Step34ExitFOut,s2Step34ExitGOut,s2Step34ExitFvOut,s2Step34ExitGvOut⟩,(shrinkRow 769 s2Step34ExitGExtra ++ (shrinkRow 768 s2Step34ExitFExtra ++ (shrinkRow 770 s2Step34ExitFvExtra ++ (shrinkRow 771 s2Step34ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step34ExitBank_rows]
  rfl
theorem s2Step35ExitBank_incomingDistinct : ([s2Step35ExitGRow,s2Step35ExitFRow,s2Step35ExitFvRow,s2Step35ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35ExitBank_outgoingOwned : rowsOwned s2Step35ExitGvAfter [s2Step35ExitGOut,s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step35ExitGvAfter (fun q => (0≤q ∧ q<762) ∨ (763≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (788≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35ExitG_Incoming : rowsOwned s2Step35ExitGBefore [s2Step35ExitGRow,s2Step35ExitFRow,s2Step35ExitFvRow,s2Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35ExitGRow,s2Step35ExitFRow,s2Step35ExitFvRow,s2Step35ExitGvRow] 0 s2Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35ExitG_Outgoing : rowsOwned s2Step35ExitGvAfter [s2Step35ExitGOut,s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut] :=
  hmrRows_owned_drop s2Step35ExitGvAfter [s2Step35ExitGOut,s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut] 0 s2Step35ExitBank_outgoingOwned
theorem s2Step35ExitF_Incoming : rowsOwned s2Step35ExitFBefore [s2Step35ExitFRow,s2Step35ExitFvRow,s2Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35ExitGRow,s2Step35ExitFRow,s2Step35ExitFvRow,s2Step35ExitGvRow] 1 s2Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35ExitFBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35ExitF_Outgoing : rowsOwned s2Step35ExitGvAfter [s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut] :=
  hmrRows_owned_drop s2Step35ExitGvAfter [s2Step35ExitGOut,s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut] 1 s2Step35ExitBank_outgoingOwned
theorem s2Step35ExitFv_Incoming : rowsOwned s2Step35ExitFvBefore [s2Step35ExitFvRow,s2Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35ExitGRow,s2Step35ExitFRow,s2Step35ExitFvRow,s2Step35ExitGvRow] 2 s2Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35ExitFvBefore (fun q => (0≤q ∧ q<762) ∨ (763≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35ExitFv_Outgoing : rowsOwned s2Step35ExitGvAfter [s2Step35ExitFvOut,s2Step35ExitGvOut] :=
  hmrRows_owned_drop s2Step35ExitGvAfter [s2Step35ExitGOut,s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut] 2 s2Step35ExitBank_outgoingOwned
theorem s2Step35ExitGv_Incoming : rowsOwned s2Step35ExitGvBefore [s2Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step35ExitGRow,s2Step35ExitFRow,s2Step35ExitFvRow,s2Step35ExitGvRow] 3 s2Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step35ExitGvBefore (fun q => (0≤q ∧ q<762) ∨ (763≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
    decide +kernel
theorem s2Step35ExitGv_Outgoing : rowsOwned s2Step35ExitGvAfter [s2Step35ExitGvOut] :=
  hmrRows_owned_drop s2Step35ExitGvAfter [s2Step35ExitGOut,s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut] 3 s2Step35ExitBank_outgoingOwned
theorem s2Step35ExitBank_rows : planWindowRowsLog s2Step35ExitGBefore [(s2Step35ExitGRow,251),(s2Step35ExitFRow,250),(s2Step35ExitFvRow,31),(s2Step35ExitGvRow,30)] [[],[],[],[]]=
    some (s2Step35ExitGvAfter,[s2Step35ExitGOut,s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut],(shrinkRow 769 s2Step35ExitGExtra ++ (shrinkRow 768 s2Step35ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step35ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step35ExitGvAfter [] []=some (s2Step35ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step35ExitGvBefore s2Step35ExitGvAfter s2Step35ExitGvAfter
    s2Step35ExitGvRow s2Step35ExitGvOut 30 [] [] [] []
    (shrinkRow 771 s2Step35ExitGvExtra) ([]) s2Step35ExitGv_Incoming s2Step35ExitGv_checked h4 s2Step35ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step35ExitFvBefore s2Step35ExitFvAfter s2Step35ExitGvAfter
    s2Step35ExitFvRow s2Step35ExitFvOut 31 [] [(s2Step35ExitGvRow,30)] [[]] [s2Step35ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step35ExitGvExtra ++ [])) s2Step35ExitFv_Incoming s2Step35ExitFv_checked h3 s2Step35ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step35ExitFBefore s2Step35ExitFAfter s2Step35ExitGvAfter
    s2Step35ExitFRow s2Step35ExitFOut 250 [] [(s2Step35ExitFvRow,31),(s2Step35ExitGvRow,30)] [[],[]] [s2Step35ExitFvOut,s2Step35ExitGvOut]
    (shrinkRow 768 s2Step35ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step35ExitGvExtra ++ []))) s2Step35ExitF_Incoming s2Step35ExitF_checked h2 s2Step35ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step35ExitGBefore s2Step35ExitGAfter s2Step35ExitGvAfter
    s2Step35ExitGRow s2Step35ExitGOut 251 [] [(s2Step35ExitFRow,250),(s2Step35ExitFvRow,31),(s2Step35ExitGvRow,30)] [[],[],[]] [s2Step35ExitFOut,s2Step35ExitFvOut,s2Step35ExitGvOut]
    (shrinkRow 769 s2Step35ExitGExtra) ((shrinkRow 768 s2Step35ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step35ExitGvExtra ++ [])))) s2Step35ExitG_Incoming s2Step35ExitG_checked h1 s2Step35ExitG_Outgoing
  exact h0
theorem s2Step35ExitBank_checked : compileHmrBankResizeLog .exit s2Step35ExitGBefore ⟨s2Step35ExitFRow,s2Step35ExitGRow,s2Step35ExitFvRow,s2Step35ExitGvRow⟩ ⟨250,251,31,30⟩ [[],[],[],[]]=
    some (s2Step35ExitGvAfter,⟨s2Step35ExitFOut,s2Step35ExitGOut,s2Step35ExitFvOut,s2Step35ExitGvOut⟩,(shrinkRow 769 s2Step35ExitGExtra ++ (shrinkRow 768 s2Step35ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step35ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step35ExitBank_rows]
  rfl
theorem s2Step36ExitBank_incomingDistinct : ([s2Step36ExitGRow,s2Step36ExitFRow,s2Step36ExitFvRow,s2Step36ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36ExitBank_outgoingOwned : rowsOwned s2Step36ExitGvAfter [s2Step36ExitGOut,s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step36ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36ExitG_Incoming : rowsOwned s2Step36ExitGBefore [s2Step36ExitGRow,s2Step36ExitFRow,s2Step36ExitFvRow,s2Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36ExitGRow,s2Step36ExitFRow,s2Step36ExitFvRow,s2Step36ExitGvRow] 0 s2Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36ExitG_Outgoing : rowsOwned s2Step36ExitGvAfter [s2Step36ExitGOut,s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut] :=
  hmrRows_owned_drop s2Step36ExitGvAfter [s2Step36ExitGOut,s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut] 0 s2Step36ExitBank_outgoingOwned
theorem s2Step36ExitF_Incoming : rowsOwned s2Step36ExitFBefore [s2Step36ExitFRow,s2Step36ExitFvRow,s2Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36ExitGRow,s2Step36ExitFRow,s2Step36ExitFvRow,s2Step36ExitGvRow] 1 s2Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36ExitF_Outgoing : rowsOwned s2Step36ExitGvAfter [s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut] :=
  hmrRows_owned_drop s2Step36ExitGvAfter [s2Step36ExitGOut,s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut] 1 s2Step36ExitBank_outgoingOwned
theorem s2Step36ExitFv_Incoming : rowsOwned s2Step36ExitFvBefore [s2Step36ExitFvRow,s2Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36ExitGRow,s2Step36ExitFRow,s2Step36ExitFvRow,s2Step36ExitGvRow] 2 s2Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36ExitFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36ExitFv_Outgoing : rowsOwned s2Step36ExitGvAfter [s2Step36ExitFvOut,s2Step36ExitGvOut] :=
  hmrRows_owned_drop s2Step36ExitGvAfter [s2Step36ExitGOut,s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut] 2 s2Step36ExitBank_outgoingOwned
theorem s2Step36ExitGv_Incoming : rowsOwned s2Step36ExitGvBefore [s2Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step36ExitGRow,s2Step36ExitFRow,s2Step36ExitFvRow,s2Step36ExitGvRow] 3 s2Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step36ExitGvBefore (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<793) ∨ (794≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step36ExitGv_Outgoing : rowsOwned s2Step36ExitGvAfter [s2Step36ExitGvOut] :=
  hmrRows_owned_drop s2Step36ExitGvAfter [s2Step36ExitGOut,s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut] 3 s2Step36ExitBank_outgoingOwned
theorem s2Step36ExitBank_rows : planWindowRowsLog s2Step36ExitGBefore [(s2Step36ExitGRow,250),(s2Step36ExitFRow,250),(s2Step36ExitFvRow,31),(s2Step36ExitGvRow,31)] [[],[],[],[]]=
    some (s2Step36ExitGvAfter,[s2Step36ExitGOut,s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut],(shrinkRow 769 s2Step36ExitGExtra ++ (shrinkRow 768 s2Step36ExitFExtra ++ (shrinkRow 770 s2Step36ExitFvExtra ++ (shrinkRow 771 s2Step36ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step36ExitGvAfter [] []=some (s2Step36ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step36ExitGvBefore s2Step36ExitGvAfter s2Step36ExitGvAfter
    s2Step36ExitGvRow s2Step36ExitGvOut 31 [] [] [] []
    (shrinkRow 771 s2Step36ExitGvExtra) ([]) s2Step36ExitGv_Incoming s2Step36ExitGv_checked h4 s2Step36ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step36ExitFvBefore s2Step36ExitFvAfter s2Step36ExitGvAfter
    s2Step36ExitFvRow s2Step36ExitFvOut 31 [] [(s2Step36ExitGvRow,31)] [[]] [s2Step36ExitGvOut]
    (shrinkRow 770 s2Step36ExitFvExtra) ((shrinkRow 771 s2Step36ExitGvExtra ++ [])) s2Step36ExitFv_Incoming s2Step36ExitFv_checked h3 s2Step36ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step36ExitFBefore s2Step36ExitFAfter s2Step36ExitGvAfter
    s2Step36ExitFRow s2Step36ExitFOut 250 [] [(s2Step36ExitFvRow,31),(s2Step36ExitGvRow,31)] [[],[]] [s2Step36ExitFvOut,s2Step36ExitGvOut]
    (shrinkRow 768 s2Step36ExitFExtra) ((shrinkRow 770 s2Step36ExitFvExtra ++ (shrinkRow 771 s2Step36ExitGvExtra ++ []))) s2Step36ExitF_Incoming s2Step36ExitF_checked h2 s2Step36ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step36ExitGBefore s2Step36ExitGAfter s2Step36ExitGvAfter
    s2Step36ExitGRow s2Step36ExitGOut 250 [] [(s2Step36ExitFRow,250),(s2Step36ExitFvRow,31),(s2Step36ExitGvRow,31)] [[],[],[]] [s2Step36ExitFOut,s2Step36ExitFvOut,s2Step36ExitGvOut]
    (shrinkRow 769 s2Step36ExitGExtra) ((shrinkRow 768 s2Step36ExitFExtra ++ (shrinkRow 770 s2Step36ExitFvExtra ++ (shrinkRow 771 s2Step36ExitGvExtra ++ [])))) s2Step36ExitG_Incoming s2Step36ExitG_checked h1 s2Step36ExitG_Outgoing
  exact h0
theorem s2Step36ExitBank_checked : compileHmrBankResizeLog .exit s2Step36ExitGBefore ⟨s2Step36ExitFRow,s2Step36ExitGRow,s2Step36ExitFvRow,s2Step36ExitGvRow⟩ ⟨250,250,31,31⟩ [[],[],[],[]]=
    some (s2Step36ExitGvAfter,⟨s2Step36ExitFOut,s2Step36ExitGOut,s2Step36ExitFvOut,s2Step36ExitGvOut⟩,(shrinkRow 769 s2Step36ExitGExtra ++ (shrinkRow 768 s2Step36ExitFExtra ++ (shrinkRow 770 s2Step36ExitFvExtra ++ (shrinkRow 771 s2Step36ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step36ExitBank_rows]
  rfl
theorem s2Step37ExitBank_incomingDistinct : ([s2Step37ExitGRow,s2Step37ExitFRow,s2Step37ExitFvRow,s2Step37ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37ExitBank_outgoingOwned : rowsOwned s2Step37ExitGvAfter [s2Step37ExitGOut,s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step37ExitGvAfter (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37ExitG_Incoming : rowsOwned s2Step37ExitGBefore [s2Step37ExitGRow,s2Step37ExitFRow,s2Step37ExitFvRow,s2Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37ExitGRow,s2Step37ExitFRow,s2Step37ExitFvRow,s2Step37ExitGvRow] 0 s2Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37ExitG_Outgoing : rowsOwned s2Step37ExitGvAfter [s2Step37ExitGOut,s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut] :=
  hmrRows_owned_drop s2Step37ExitGvAfter [s2Step37ExitGOut,s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut] 0 s2Step37ExitBank_outgoingOwned
theorem s2Step37ExitF_Incoming : rowsOwned s2Step37ExitFBefore [s2Step37ExitFRow,s2Step37ExitFvRow,s2Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37ExitGRow,s2Step37ExitFRow,s2Step37ExitFvRow,s2Step37ExitGvRow] 1 s2Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37ExitFBefore (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37ExitF_Outgoing : rowsOwned s2Step37ExitGvAfter [s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut] :=
  hmrRows_owned_drop s2Step37ExitGvAfter [s2Step37ExitGOut,s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut] 1 s2Step37ExitBank_outgoingOwned
theorem s2Step37ExitFv_Incoming : rowsOwned s2Step37ExitFvBefore [s2Step37ExitFvRow,s2Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37ExitGRow,s2Step37ExitFRow,s2Step37ExitFvRow,s2Step37ExitGvRow] 2 s2Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37ExitFvBefore (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37ExitFv_Outgoing : rowsOwned s2Step37ExitGvAfter [s2Step37ExitFvOut,s2Step37ExitGvOut] :=
  hmrRows_owned_drop s2Step37ExitGvAfter [s2Step37ExitGOut,s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut] 2 s2Step37ExitBank_outgoingOwned
theorem s2Step37ExitGv_Incoming : rowsOwned s2Step37ExitGvBefore [s2Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step37ExitGRow,s2Step37ExitFRow,s2Step37ExitFvRow,s2Step37ExitGvRow] 3 s2Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step37ExitGvBefore (fun q => (0≤q ∧ q<249) ∨ (250≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (792≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
    decide +kernel
theorem s2Step37ExitGv_Outgoing : rowsOwned s2Step37ExitGvAfter [s2Step37ExitGvOut] :=
  hmrRows_owned_drop s2Step37ExitGvAfter [s2Step37ExitGOut,s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut] 3 s2Step37ExitBank_outgoingOwned
theorem s2Step37ExitBank_rows : planWindowRowsLog s2Step37ExitGBefore [(s2Step37ExitGRow,249),(s2Step37ExitFRow,250),(s2Step37ExitFvRow,32),(s2Step37ExitGvRow,32)] [[],[],[],[]]=
    some (s2Step37ExitGvAfter,[s2Step37ExitGOut,s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut],(shrinkRow 769 s2Step37ExitGExtra ++ (shrinkRow 768 s2Step37ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step37ExitGvAfter [] []=some (s2Step37ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step37ExitGvBefore s2Step37ExitGvAfter s2Step37ExitGvAfter
    s2Step37ExitGvRow s2Step37ExitGvOut 32 [] [] [] []
    (growRow 771 []) ([]) s2Step37ExitGv_Incoming s2Step37ExitGv_checked h4 s2Step37ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step37ExitFvBefore s2Step37ExitFvAfter s2Step37ExitGvAfter
    s2Step37ExitFvRow s2Step37ExitFvOut 32 [] [(s2Step37ExitGvRow,32)] [[]] [s2Step37ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step37ExitFv_Incoming s2Step37ExitFv_checked h3 s2Step37ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step37ExitFBefore s2Step37ExitFAfter s2Step37ExitGvAfter
    s2Step37ExitFRow s2Step37ExitFOut 250 [] [(s2Step37ExitFvRow,32),(s2Step37ExitGvRow,32)] [[],[]] [s2Step37ExitFvOut,s2Step37ExitGvOut]
    (shrinkRow 768 s2Step37ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step37ExitF_Incoming s2Step37ExitF_checked h2 s2Step37ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step37ExitGBefore s2Step37ExitGAfter s2Step37ExitGvAfter
    s2Step37ExitGRow s2Step37ExitGOut 249 [] [(s2Step37ExitFRow,250),(s2Step37ExitFvRow,32),(s2Step37ExitGvRow,32)] [[],[],[]] [s2Step37ExitFOut,s2Step37ExitFvOut,s2Step37ExitGvOut]
    (shrinkRow 769 s2Step37ExitGExtra) ((shrinkRow 768 s2Step37ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step37ExitG_Incoming s2Step37ExitG_checked h1 s2Step37ExitG_Outgoing
  exact h0
theorem s2Step37ExitBank_checked : compileHmrBankResizeLog .exit s2Step37ExitGBefore ⟨s2Step37ExitFRow,s2Step37ExitGRow,s2Step37ExitFvRow,s2Step37ExitGvRow⟩ ⟨250,249,32,32⟩ [[],[],[],[]]=
    some (s2Step37ExitGvAfter,⟨s2Step37ExitFOut,s2Step37ExitGOut,s2Step37ExitFvOut,s2Step37ExitGvOut⟩,(shrinkRow 769 s2Step37ExitGExtra ++ (shrinkRow 768 s2Step37ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step37ExitBank_rows]
  rfl
theorem s2Step38ExitBank_incomingDistinct : ([s2Step38ExitGRow,s2Step38ExitFRow,s2Step38ExitFvRow,s2Step38ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38ExitBank_outgoingOwned : rowsOwned s2Step38ExitGvAfter [s2Step38ExitGOut,s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step38ExitGvAfter (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<790) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38ExitG_Incoming : rowsOwned s2Step38ExitGBefore [s2Step38ExitGRow,s2Step38ExitFRow,s2Step38ExitFvRow,s2Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38ExitGRow,s2Step38ExitFRow,s2Step38ExitFvRow,s2Step38ExitGvRow] 0 s2Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38ExitG_Outgoing : rowsOwned s2Step38ExitGvAfter [s2Step38ExitGOut,s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut] :=
  hmrRows_owned_drop s2Step38ExitGvAfter [s2Step38ExitGOut,s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut] 0 s2Step38ExitBank_outgoingOwned
theorem s2Step38ExitF_Incoming : rowsOwned s2Step38ExitFBefore [s2Step38ExitFRow,s2Step38ExitFvRow,s2Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38ExitGRow,s2Step38ExitFRow,s2Step38ExitFvRow,s2Step38ExitGvRow] 1 s2Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38ExitF_Outgoing : rowsOwned s2Step38ExitGvAfter [s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut] :=
  hmrRows_owned_drop s2Step38ExitGvAfter [s2Step38ExitGOut,s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut] 1 s2Step38ExitBank_outgoingOwned
theorem s2Step38ExitFv_Incoming : rowsOwned s2Step38ExitFvBefore [s2Step38ExitFvRow,s2Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38ExitGRow,s2Step38ExitFRow,s2Step38ExitFvRow,s2Step38ExitGvRow] 2 s2Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38ExitFvBefore (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38ExitFv_Outgoing : rowsOwned s2Step38ExitGvAfter [s2Step38ExitFvOut,s2Step38ExitGvOut] :=
  hmrRows_owned_drop s2Step38ExitGvAfter [s2Step38ExitGOut,s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut] 2 s2Step38ExitBank_outgoingOwned
theorem s2Step38ExitGv_Incoming : rowsOwned s2Step38ExitGvBefore [s2Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step38ExitGRow,s2Step38ExitFRow,s2Step38ExitFvRow,s2Step38ExitGvRow] 3 s2Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step38ExitGvBefore (fun q => (0≤q ∧ q<761) ∨ (762≤q ∧ q<780) ∨ (781≤q ∧ q<786) ∨ (787≤q ∧ q<791) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step38ExitGv_Outgoing : rowsOwned s2Step38ExitGvAfter [s2Step38ExitGvOut] :=
  hmrRows_owned_drop s2Step38ExitGvAfter [s2Step38ExitGOut,s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut] 3 s2Step38ExitBank_outgoingOwned
theorem s2Step38ExitBank_rows : planWindowRowsLog s2Step38ExitGBefore [(s2Step38ExitGRow,249),(s2Step38ExitFRow,249),(s2Step38ExitFvRow,32),(s2Step38ExitGvRow,32)] [[],[],[],[]]=
    some (s2Step38ExitGvAfter,[s2Step38ExitGOut,s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut],(shrinkRow 769 s2Step38ExitGExtra ++ (shrinkRow 768 s2Step38ExitFExtra ++ (shrinkRow 770 s2Step38ExitFvExtra ++ (shrinkRow 771 s2Step38ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step38ExitGvAfter [] []=some (s2Step38ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step38ExitGvBefore s2Step38ExitGvAfter s2Step38ExitGvAfter
    s2Step38ExitGvRow s2Step38ExitGvOut 32 [] [] [] []
    (shrinkRow 771 s2Step38ExitGvExtra) ([]) s2Step38ExitGv_Incoming s2Step38ExitGv_checked h4 s2Step38ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step38ExitFvBefore s2Step38ExitFvAfter s2Step38ExitGvAfter
    s2Step38ExitFvRow s2Step38ExitFvOut 32 [] [(s2Step38ExitGvRow,32)] [[]] [s2Step38ExitGvOut]
    (shrinkRow 770 s2Step38ExitFvExtra) ((shrinkRow 771 s2Step38ExitGvExtra ++ [])) s2Step38ExitFv_Incoming s2Step38ExitFv_checked h3 s2Step38ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step38ExitFBefore s2Step38ExitFAfter s2Step38ExitGvAfter
    s2Step38ExitFRow s2Step38ExitFOut 249 [] [(s2Step38ExitFvRow,32),(s2Step38ExitGvRow,32)] [[],[]] [s2Step38ExitFvOut,s2Step38ExitGvOut]
    (shrinkRow 768 s2Step38ExitFExtra) ((shrinkRow 770 s2Step38ExitFvExtra ++ (shrinkRow 771 s2Step38ExitGvExtra ++ []))) s2Step38ExitF_Incoming s2Step38ExitF_checked h2 s2Step38ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step38ExitGBefore s2Step38ExitGAfter s2Step38ExitGvAfter
    s2Step38ExitGRow s2Step38ExitGOut 249 [] [(s2Step38ExitFRow,249),(s2Step38ExitFvRow,32),(s2Step38ExitGvRow,32)] [[],[],[]] [s2Step38ExitFOut,s2Step38ExitFvOut,s2Step38ExitGvOut]
    (shrinkRow 769 s2Step38ExitGExtra) ((shrinkRow 768 s2Step38ExitFExtra ++ (shrinkRow 770 s2Step38ExitFvExtra ++ (shrinkRow 771 s2Step38ExitGvExtra ++ [])))) s2Step38ExitG_Incoming s2Step38ExitG_checked h1 s2Step38ExitG_Outgoing
  exact h0
theorem s2Step38ExitBank_checked : compileHmrBankResizeLog .exit s2Step38ExitGBefore ⟨s2Step38ExitFRow,s2Step38ExitGRow,s2Step38ExitFvRow,s2Step38ExitGvRow⟩ ⟨249,249,32,32⟩ [[],[],[],[]]=
    some (s2Step38ExitGvAfter,⟨s2Step38ExitFOut,s2Step38ExitGOut,s2Step38ExitFvOut,s2Step38ExitGvOut⟩,(shrinkRow 769 s2Step38ExitGExtra ++ (shrinkRow 768 s2Step38ExitFExtra ++ (shrinkRow 770 s2Step38ExitFvExtra ++ (shrinkRow 771 s2Step38ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step38ExitBank_rows]
  rfl
theorem s2Step39ExitBank_incomingDistinct : ([s2Step39ExitGRow,s2Step39ExitFRow,s2Step39ExitFvRow,s2Step39ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39ExitBank_outgoingOwned : rowsOwned s2Step39ExitGvAfter [s2Step39ExitGOut,s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step39ExitGvAfter (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39ExitG_Incoming : rowsOwned s2Step39ExitGBefore [s2Step39ExitGRow,s2Step39ExitFRow,s2Step39ExitFvRow,s2Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39ExitGRow,s2Step39ExitFRow,s2Step39ExitFvRow,s2Step39ExitGvRow] 0 s2Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39ExitG_Outgoing : rowsOwned s2Step39ExitGvAfter [s2Step39ExitGOut,s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut] :=
  hmrRows_owned_drop s2Step39ExitGvAfter [s2Step39ExitGOut,s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut] 0 s2Step39ExitBank_outgoingOwned
theorem s2Step39ExitF_Incoming : rowsOwned s2Step39ExitFBefore [s2Step39ExitFRow,s2Step39ExitFvRow,s2Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39ExitGRow,s2Step39ExitFRow,s2Step39ExitFvRow,s2Step39ExitGvRow] 1 s2Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39ExitFBefore (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39ExitF_Outgoing : rowsOwned s2Step39ExitGvAfter [s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut] :=
  hmrRows_owned_drop s2Step39ExitGvAfter [s2Step39ExitGOut,s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut] 1 s2Step39ExitBank_outgoingOwned
theorem s2Step39ExitFv_Incoming : rowsOwned s2Step39ExitFvBefore [s2Step39ExitFvRow,s2Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39ExitGRow,s2Step39ExitFRow,s2Step39ExitFvRow,s2Step39ExitGvRow] 2 s2Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39ExitFvBefore (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39ExitFv_Outgoing : rowsOwned s2Step39ExitGvAfter [s2Step39ExitFvOut,s2Step39ExitGvOut] :=
  hmrRows_owned_drop s2Step39ExitGvAfter [s2Step39ExitGOut,s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut] 2 s2Step39ExitBank_outgoingOwned
theorem s2Step39ExitGv_Incoming : rowsOwned s2Step39ExitGvBefore [s2Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step39ExitGRow,s2Step39ExitFRow,s2Step39ExitFvRow,s2Step39ExitGvRow] 3 s2Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step39ExitGvBefore (fun q => (0≤q ∧ q<248) ∨ (249≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step39ExitGv_Outgoing : rowsOwned s2Step39ExitGvAfter [s2Step39ExitGvOut] :=
  hmrRows_owned_drop s2Step39ExitGvAfter [s2Step39ExitGOut,s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut] 3 s2Step39ExitBank_outgoingOwned
theorem s2Step39ExitBank_rows : planWindowRowsLog s2Step39ExitGBefore [(s2Step39ExitGRow,248),(s2Step39ExitFRow,249),(s2Step39ExitFvRow,33),(s2Step39ExitGvRow,32)] [[],[],[],[]]=
    some (s2Step39ExitGvAfter,[s2Step39ExitGOut,s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut],(shrinkRow 769 s2Step39ExitGExtra ++ (shrinkRow 768 s2Step39ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step39ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step39ExitGvAfter [] []=some (s2Step39ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step39ExitGvBefore s2Step39ExitGvAfter s2Step39ExitGvAfter
    s2Step39ExitGvRow s2Step39ExitGvOut 32 [] [] [] []
    (shrinkRow 771 s2Step39ExitGvExtra) ([]) s2Step39ExitGv_Incoming s2Step39ExitGv_checked h4 s2Step39ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step39ExitFvBefore s2Step39ExitFvAfter s2Step39ExitGvAfter
    s2Step39ExitFvRow s2Step39ExitFvOut 33 [] [(s2Step39ExitGvRow,32)] [[]] [s2Step39ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step39ExitGvExtra ++ [])) s2Step39ExitFv_Incoming s2Step39ExitFv_checked h3 s2Step39ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step39ExitFBefore s2Step39ExitFAfter s2Step39ExitGvAfter
    s2Step39ExitFRow s2Step39ExitFOut 249 [] [(s2Step39ExitFvRow,33),(s2Step39ExitGvRow,32)] [[],[]] [s2Step39ExitFvOut,s2Step39ExitGvOut]
    (shrinkRow 768 s2Step39ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step39ExitGvExtra ++ []))) s2Step39ExitF_Incoming s2Step39ExitF_checked h2 s2Step39ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step39ExitGBefore s2Step39ExitGAfter s2Step39ExitGvAfter
    s2Step39ExitGRow s2Step39ExitGOut 248 [] [(s2Step39ExitFRow,249),(s2Step39ExitFvRow,33),(s2Step39ExitGvRow,32)] [[],[],[]] [s2Step39ExitFOut,s2Step39ExitFvOut,s2Step39ExitGvOut]
    (shrinkRow 769 s2Step39ExitGExtra) ((shrinkRow 768 s2Step39ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step39ExitGvExtra ++ [])))) s2Step39ExitG_Incoming s2Step39ExitG_checked h1 s2Step39ExitG_Outgoing
  exact h0
theorem s2Step39ExitBank_checked : compileHmrBankResizeLog .exit s2Step39ExitGBefore ⟨s2Step39ExitFRow,s2Step39ExitGRow,s2Step39ExitFvRow,s2Step39ExitGvRow⟩ ⟨249,248,33,32⟩ [[],[],[],[]]=
    some (s2Step39ExitGvAfter,⟨s2Step39ExitFOut,s2Step39ExitGOut,s2Step39ExitFvOut,s2Step39ExitGvOut⟩,(shrinkRow 769 s2Step39ExitGExtra ++ (shrinkRow 768 s2Step39ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step39ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step39ExitBank_rows]
  rfl
theorem s2Step40ExitBank_incomingDistinct : ([s2Step40ExitGRow,s2Step40ExitFRow,s2Step40ExitFvRow,s2Step40ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40ExitBank_outgoingOwned : rowsOwned s2Step40ExitGvAfter [s2Step40ExitGOut,s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step40ExitGvAfter (fun q => (0≤q ∧ q<760) ∨ (761≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40ExitG_Incoming : rowsOwned s2Step40ExitGBefore [s2Step40ExitGRow,s2Step40ExitFRow,s2Step40ExitFvRow,s2Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40ExitGRow,s2Step40ExitFRow,s2Step40ExitFvRow,s2Step40ExitGvRow] 0 s2Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40ExitG_Outgoing : rowsOwned s2Step40ExitGvAfter [s2Step40ExitGOut,s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut] :=
  hmrRows_owned_drop s2Step40ExitGvAfter [s2Step40ExitGOut,s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut] 0 s2Step40ExitBank_outgoingOwned
theorem s2Step40ExitF_Incoming : rowsOwned s2Step40ExitFBefore [s2Step40ExitFRow,s2Step40ExitFvRow,s2Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40ExitGRow,s2Step40ExitFRow,s2Step40ExitFvRow,s2Step40ExitGvRow] 1 s2Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40ExitF_Outgoing : rowsOwned s2Step40ExitGvAfter [s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut] :=
  hmrRows_owned_drop s2Step40ExitGvAfter [s2Step40ExitGOut,s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut] 1 s2Step40ExitBank_outgoingOwned
theorem s2Step40ExitFv_Incoming : rowsOwned s2Step40ExitFvBefore [s2Step40ExitFvRow,s2Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40ExitGRow,s2Step40ExitFRow,s2Step40ExitFvRow,s2Step40ExitGvRow] 2 s2Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40ExitFvBefore (fun q => (0≤q ∧ q<760) ∨ (761≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40ExitFv_Outgoing : rowsOwned s2Step40ExitGvAfter [s2Step40ExitFvOut,s2Step40ExitGvOut] :=
  hmrRows_owned_drop s2Step40ExitGvAfter [s2Step40ExitGOut,s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut] 2 s2Step40ExitBank_outgoingOwned
theorem s2Step40ExitGv_Incoming : rowsOwned s2Step40ExitGvBefore [s2Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step40ExitGRow,s2Step40ExitFRow,s2Step40ExitFvRow,s2Step40ExitGvRow] 3 s2Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step40ExitGvBefore (fun q => (0≤q ∧ q<760) ∨ (761≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step40ExitGv_Outgoing : rowsOwned s2Step40ExitGvAfter [s2Step40ExitGvOut] :=
  hmrRows_owned_drop s2Step40ExitGvAfter [s2Step40ExitGOut,s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut] 3 s2Step40ExitBank_outgoingOwned
theorem s2Step40ExitBank_rows : planWindowRowsLog s2Step40ExitGBefore [(s2Step40ExitGRow,248),(s2Step40ExitFRow,248),(s2Step40ExitFvRow,34),(s2Step40ExitGvRow,33)] [[],[],[],[]]=
    some (s2Step40ExitGvAfter,[s2Step40ExitGOut,s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut],(shrinkRow 769 s2Step40ExitGExtra ++ (shrinkRow 768 s2Step40ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step40ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step40ExitGvAfter [] []=some (s2Step40ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step40ExitGvBefore s2Step40ExitGvAfter s2Step40ExitGvAfter
    s2Step40ExitGvRow s2Step40ExitGvOut 33 [] [] [] []
    (shrinkRow 771 s2Step40ExitGvExtra) ([]) s2Step40ExitGv_Incoming s2Step40ExitGv_checked h4 s2Step40ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step40ExitFvBefore s2Step40ExitFvAfter s2Step40ExitGvAfter
    s2Step40ExitFvRow s2Step40ExitFvOut 34 [] [(s2Step40ExitGvRow,33)] [[]] [s2Step40ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step40ExitGvExtra ++ [])) s2Step40ExitFv_Incoming s2Step40ExitFv_checked h3 s2Step40ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step40ExitFBefore s2Step40ExitFAfter s2Step40ExitGvAfter
    s2Step40ExitFRow s2Step40ExitFOut 248 [] [(s2Step40ExitFvRow,34),(s2Step40ExitGvRow,33)] [[],[]] [s2Step40ExitFvOut,s2Step40ExitGvOut]
    (shrinkRow 768 s2Step40ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step40ExitGvExtra ++ []))) s2Step40ExitF_Incoming s2Step40ExitF_checked h2 s2Step40ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step40ExitGBefore s2Step40ExitGAfter s2Step40ExitGvAfter
    s2Step40ExitGRow s2Step40ExitGOut 248 [] [(s2Step40ExitFRow,248),(s2Step40ExitFvRow,34),(s2Step40ExitGvRow,33)] [[],[],[]] [s2Step40ExitFOut,s2Step40ExitFvOut,s2Step40ExitGvOut]
    (shrinkRow 769 s2Step40ExitGExtra) ((shrinkRow 768 s2Step40ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step40ExitGvExtra ++ [])))) s2Step40ExitG_Incoming s2Step40ExitG_checked h1 s2Step40ExitG_Outgoing
  exact h0
theorem s2Step40ExitBank_checked : compileHmrBankResizeLog .exit s2Step40ExitGBefore ⟨s2Step40ExitFRow,s2Step40ExitGRow,s2Step40ExitFvRow,s2Step40ExitGvRow⟩ ⟨248,248,34,33⟩ [[],[],[],[]]=
    some (s2Step40ExitGvAfter,⟨s2Step40ExitFOut,s2Step40ExitGOut,s2Step40ExitFvOut,s2Step40ExitGvOut⟩,(shrinkRow 769 s2Step40ExitGExtra ++ (shrinkRow 768 s2Step40ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step40ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step40ExitBank_rows]
  rfl
theorem s2Step41ExitBank_incomingDistinct : ([s2Step41ExitGRow,s2Step41ExitFRow,s2Step41ExitFvRow,s2Step41ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41ExitBank_outgoingOwned : rowsOwned s2Step41ExitGvAfter [s2Step41ExitGOut,s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step41ExitGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41ExitG_Incoming : rowsOwned s2Step41ExitGBefore [s2Step41ExitGRow,s2Step41ExitFRow,s2Step41ExitFvRow,s2Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41ExitGRow,s2Step41ExitFRow,s2Step41ExitFvRow,s2Step41ExitGvRow] 0 s2Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41ExitG_Outgoing : rowsOwned s2Step41ExitGvAfter [s2Step41ExitGOut,s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut] :=
  hmrRows_owned_drop s2Step41ExitGvAfter [s2Step41ExitGOut,s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut] 0 s2Step41ExitBank_outgoingOwned
theorem s2Step41ExitF_Incoming : rowsOwned s2Step41ExitFBefore [s2Step41ExitFRow,s2Step41ExitFvRow,s2Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41ExitGRow,s2Step41ExitFRow,s2Step41ExitFvRow,s2Step41ExitGvRow] 1 s2Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41ExitF_Outgoing : rowsOwned s2Step41ExitGvAfter [s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut] :=
  hmrRows_owned_drop s2Step41ExitGvAfter [s2Step41ExitGOut,s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut] 1 s2Step41ExitBank_outgoingOwned
theorem s2Step41ExitFv_Incoming : rowsOwned s2Step41ExitFvBefore [s2Step41ExitFvRow,s2Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41ExitGRow,s2Step41ExitFRow,s2Step41ExitFvRow,s2Step41ExitGvRow] 2 s2Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41ExitFv_Outgoing : rowsOwned s2Step41ExitGvAfter [s2Step41ExitFvOut,s2Step41ExitGvOut] :=
  hmrRows_owned_drop s2Step41ExitGvAfter [s2Step41ExitGOut,s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut] 2 s2Step41ExitBank_outgoingOwned
theorem s2Step41ExitGv_Incoming : rowsOwned s2Step41ExitGvBefore [s2Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step41ExitGRow,s2Step41ExitFRow,s2Step41ExitFvRow,s2Step41ExitGvRow] 3 s2Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step41ExitGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
    decide +kernel
theorem s2Step41ExitGv_Outgoing : rowsOwned s2Step41ExitGvAfter [s2Step41ExitGvOut] :=
  hmrRows_owned_drop s2Step41ExitGvAfter [s2Step41ExitGOut,s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut] 3 s2Step41ExitBank_outgoingOwned
theorem s2Step41ExitBank_rows : planWindowRowsLog s2Step41ExitGBefore [(s2Step41ExitGRow,248),(s2Step41ExitFRow,248),(s2Step41ExitFvRow,34),(s2Step41ExitGvRow,33)] [[],[],[],[]]=
    some (s2Step41ExitGvAfter,[s2Step41ExitGOut,s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut],(shrinkRow 769 s2Step41ExitGExtra ++ (shrinkRow 768 s2Step41ExitFExtra ++ (shrinkRow 770 s2Step41ExitFvExtra ++ (shrinkRow 771 s2Step41ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step41ExitGvAfter [] []=some (s2Step41ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step41ExitGvBefore s2Step41ExitGvAfter s2Step41ExitGvAfter
    s2Step41ExitGvRow s2Step41ExitGvOut 33 [] [] [] []
    (shrinkRow 771 s2Step41ExitGvExtra) ([]) s2Step41ExitGv_Incoming s2Step41ExitGv_checked h4 s2Step41ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step41ExitFvBefore s2Step41ExitFvAfter s2Step41ExitGvAfter
    s2Step41ExitFvRow s2Step41ExitFvOut 34 [] [(s2Step41ExitGvRow,33)] [[]] [s2Step41ExitGvOut]
    (shrinkRow 770 s2Step41ExitFvExtra) ((shrinkRow 771 s2Step41ExitGvExtra ++ [])) s2Step41ExitFv_Incoming s2Step41ExitFv_checked h3 s2Step41ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step41ExitFBefore s2Step41ExitFAfter s2Step41ExitGvAfter
    s2Step41ExitFRow s2Step41ExitFOut 248 [] [(s2Step41ExitFvRow,34),(s2Step41ExitGvRow,33)] [[],[]] [s2Step41ExitFvOut,s2Step41ExitGvOut]
    (shrinkRow 768 s2Step41ExitFExtra) ((shrinkRow 770 s2Step41ExitFvExtra ++ (shrinkRow 771 s2Step41ExitGvExtra ++ []))) s2Step41ExitF_Incoming s2Step41ExitF_checked h2 s2Step41ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step41ExitGBefore s2Step41ExitGAfter s2Step41ExitGvAfter
    s2Step41ExitGRow s2Step41ExitGOut 248 [] [(s2Step41ExitFRow,248),(s2Step41ExitFvRow,34),(s2Step41ExitGvRow,33)] [[],[],[]] [s2Step41ExitFOut,s2Step41ExitFvOut,s2Step41ExitGvOut]
    (shrinkRow 769 s2Step41ExitGExtra) ((shrinkRow 768 s2Step41ExitFExtra ++ (shrinkRow 770 s2Step41ExitFvExtra ++ (shrinkRow 771 s2Step41ExitGvExtra ++ [])))) s2Step41ExitG_Incoming s2Step41ExitG_checked h1 s2Step41ExitG_Outgoing
  exact h0
theorem s2Step41ExitBank_checked : compileHmrBankResizeLog .exit s2Step41ExitGBefore ⟨s2Step41ExitFRow,s2Step41ExitGRow,s2Step41ExitFvRow,s2Step41ExitGvRow⟩ ⟨248,248,34,33⟩ [[],[],[],[]]=
    some (s2Step41ExitGvAfter,⟨s2Step41ExitFOut,s2Step41ExitGOut,s2Step41ExitFvOut,s2Step41ExitGvOut⟩,(shrinkRow 769 s2Step41ExitGExtra ++ (shrinkRow 768 s2Step41ExitFExtra ++ (shrinkRow 770 s2Step41ExitFvExtra ++ (shrinkRow 771 s2Step41ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step41ExitBank_rows]
  rfl
theorem s2Step42ExitBank_incomingDistinct : ([s2Step42ExitGRow,s2Step42ExitFRow,s2Step42ExitFvRow,s2Step42ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42ExitBank_outgoingOwned : rowsOwned s2Step42ExitGvAfter [s2Step42ExitGOut,s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step42ExitGvAfter (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<759) ∨ (760≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42ExitG_Incoming : rowsOwned s2Step42ExitGBefore [s2Step42ExitGRow,s2Step42ExitFRow,s2Step42ExitFvRow,s2Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42ExitGRow,s2Step42ExitFRow,s2Step42ExitFvRow,s2Step42ExitGvRow] 0 s2Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42ExitG_Outgoing : rowsOwned s2Step42ExitGvAfter [s2Step42ExitGOut,s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut] :=
  hmrRows_owned_drop s2Step42ExitGvAfter [s2Step42ExitGOut,s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut] 0 s2Step42ExitBank_outgoingOwned
theorem s2Step42ExitF_Incoming : rowsOwned s2Step42ExitFBefore [s2Step42ExitFRow,s2Step42ExitFvRow,s2Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42ExitGRow,s2Step42ExitFRow,s2Step42ExitFvRow,s2Step42ExitGvRow] 1 s2Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42ExitFBefore (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42ExitF_Outgoing : rowsOwned s2Step42ExitGvAfter [s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut] :=
  hmrRows_owned_drop s2Step42ExitGvAfter [s2Step42ExitGOut,s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut] 1 s2Step42ExitBank_outgoingOwned
theorem s2Step42ExitFv_Incoming : rowsOwned s2Step42ExitFvBefore [s2Step42ExitFvRow,s2Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42ExitGRow,s2Step42ExitFRow,s2Step42ExitFvRow,s2Step42ExitGvRow] 2 s2Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42ExitFvBefore (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<759) ∨ (760≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42ExitFv_Outgoing : rowsOwned s2Step42ExitGvAfter [s2Step42ExitFvOut,s2Step42ExitGvOut] :=
  hmrRows_owned_drop s2Step42ExitGvAfter [s2Step42ExitGOut,s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut] 2 s2Step42ExitBank_outgoingOwned
theorem s2Step42ExitGv_Incoming : rowsOwned s2Step42ExitGvBefore [s2Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step42ExitGRow,s2Step42ExitFRow,s2Step42ExitFvRow,s2Step42ExitGvRow] 3 s2Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step42ExitGvBefore (fun q => (0≤q ∧ q<247) ∨ (248≤q ∧ q<759) ∨ (760≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step42ExitGv_Outgoing : rowsOwned s2Step42ExitGvAfter [s2Step42ExitGvOut] :=
  hmrRows_owned_drop s2Step42ExitGvAfter [s2Step42ExitGOut,s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut] 3 s2Step42ExitBank_outgoingOwned
theorem s2Step42ExitBank_rows : planWindowRowsLog s2Step42ExitGBefore [(s2Step42ExitGRow,247),(s2Step42ExitFRow,247),(s2Step42ExitFvRow,34),(s2Step42ExitGvRow,35)] [[],[],[],[]]=
    some (s2Step42ExitGvAfter,[s2Step42ExitGOut,s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut],(shrinkRow 769 s2Step42ExitGExtra ++ (shrinkRow 768 s2Step42ExitFExtra ++ (shrinkRow 770 s2Step42ExitFvExtra ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step42ExitGvAfter [] []=some (s2Step42ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step42ExitGvBefore s2Step42ExitGvAfter s2Step42ExitGvAfter
    s2Step42ExitGvRow s2Step42ExitGvOut 35 [] [] [] []
    (growRow 771 []) ([]) s2Step42ExitGv_Incoming s2Step42ExitGv_checked h4 s2Step42ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step42ExitFvBefore s2Step42ExitFvAfter s2Step42ExitGvAfter
    s2Step42ExitFvRow s2Step42ExitFvOut 34 [] [(s2Step42ExitGvRow,35)] [[]] [s2Step42ExitGvOut]
    (shrinkRow 770 s2Step42ExitFvExtra) ((growRow 771 [] ++ [])) s2Step42ExitFv_Incoming s2Step42ExitFv_checked h3 s2Step42ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step42ExitFBefore s2Step42ExitFAfter s2Step42ExitGvAfter
    s2Step42ExitFRow s2Step42ExitFOut 247 [] [(s2Step42ExitFvRow,34),(s2Step42ExitGvRow,35)] [[],[]] [s2Step42ExitFvOut,s2Step42ExitGvOut]
    (shrinkRow 768 s2Step42ExitFExtra) ((shrinkRow 770 s2Step42ExitFvExtra ++ (growRow 771 [] ++ []))) s2Step42ExitF_Incoming s2Step42ExitF_checked h2 s2Step42ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step42ExitGBefore s2Step42ExitGAfter s2Step42ExitGvAfter
    s2Step42ExitGRow s2Step42ExitGOut 247 [] [(s2Step42ExitFRow,247),(s2Step42ExitFvRow,34),(s2Step42ExitGvRow,35)] [[],[],[]] [s2Step42ExitFOut,s2Step42ExitFvOut,s2Step42ExitGvOut]
    (shrinkRow 769 s2Step42ExitGExtra) ((shrinkRow 768 s2Step42ExitFExtra ++ (shrinkRow 770 s2Step42ExitFvExtra ++ (growRow 771 [] ++ [])))) s2Step42ExitG_Incoming s2Step42ExitG_checked h1 s2Step42ExitG_Outgoing
  exact h0
theorem s2Step42ExitBank_checked : compileHmrBankResizeLog .exit s2Step42ExitGBefore ⟨s2Step42ExitFRow,s2Step42ExitGRow,s2Step42ExitFvRow,s2Step42ExitGvRow⟩ ⟨247,247,34,35⟩ [[],[],[],[]]=
    some (s2Step42ExitGvAfter,⟨s2Step42ExitFOut,s2Step42ExitGOut,s2Step42ExitFvOut,s2Step42ExitGvOut⟩,(shrinkRow 769 s2Step42ExitGExtra ++ (shrinkRow 768 s2Step42ExitFExtra ++ (shrinkRow 770 s2Step42ExitFvExtra ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step42ExitBank_rows]
  rfl
theorem s2Step43ExitBank_incomingDistinct : ([s2Step43ExitGRow,s2Step43ExitFRow,s2Step43ExitFvRow,s2Step43ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43ExitBank_outgoingOwned : rowsOwned s2Step43ExitGvAfter [s2Step43ExitGOut,s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step43ExitGvAfter (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43ExitG_Incoming : rowsOwned s2Step43ExitGBefore [s2Step43ExitGRow,s2Step43ExitFRow,s2Step43ExitFvRow,s2Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43ExitGRow,s2Step43ExitFRow,s2Step43ExitFvRow,s2Step43ExitGvRow] 0 s2Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43ExitG_Outgoing : rowsOwned s2Step43ExitGvAfter [s2Step43ExitGOut,s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut] :=
  hmrRows_owned_drop s2Step43ExitGvAfter [s2Step43ExitGOut,s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut] 0 s2Step43ExitBank_outgoingOwned
theorem s2Step43ExitF_Incoming : rowsOwned s2Step43ExitFBefore [s2Step43ExitFRow,s2Step43ExitFvRow,s2Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43ExitGRow,s2Step43ExitFRow,s2Step43ExitFvRow,s2Step43ExitGvRow] 1 s2Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43ExitFBefore (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43ExitF_Outgoing : rowsOwned s2Step43ExitGvAfter [s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut] :=
  hmrRows_owned_drop s2Step43ExitGvAfter [s2Step43ExitGOut,s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut] 1 s2Step43ExitBank_outgoingOwned
theorem s2Step43ExitFv_Incoming : rowsOwned s2Step43ExitFvBefore [s2Step43ExitFvRow,s2Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43ExitGRow,s2Step43ExitFRow,s2Step43ExitFvRow,s2Step43ExitGvRow] 2 s2Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43ExitFvBefore (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43ExitFv_Outgoing : rowsOwned s2Step43ExitGvAfter [s2Step43ExitFvOut,s2Step43ExitGvOut] :=
  hmrRows_owned_drop s2Step43ExitGvAfter [s2Step43ExitGOut,s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut] 2 s2Step43ExitBank_outgoingOwned
theorem s2Step43ExitGv_Incoming : rowsOwned s2Step43ExitGvBefore [s2Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step43ExitGRow,s2Step43ExitFRow,s2Step43ExitFvRow,s2Step43ExitGvRow] 3 s2Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step43ExitGvBefore (fun q => (0≤q ∧ q<246) ∨ (247≤q ∧ q<758) ∨ (759≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step43ExitGv_Outgoing : rowsOwned s2Step43ExitGvAfter [s2Step43ExitGvOut] :=
  hmrRows_owned_drop s2Step43ExitGvAfter [s2Step43ExitGOut,s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut] 3 s2Step43ExitBank_outgoingOwned
theorem s2Step43ExitBank_rows : planWindowRowsLog s2Step43ExitGBefore [(s2Step43ExitGRow,246),(s2Step43ExitFRow,246),(s2Step43ExitFvRow,34),(s2Step43ExitGvRow,35)] [[],[],[],[]]=
    some (s2Step43ExitGvAfter,[s2Step43ExitGOut,s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut],(shrinkRow 769 s2Step43ExitGExtra ++ (shrinkRow 768 s2Step43ExitFExtra ++ (shrinkRow 770 s2Step43ExitFvExtra ++ (shrinkRow 771 s2Step43ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step43ExitGvAfter [] []=some (s2Step43ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step43ExitGvBefore s2Step43ExitGvAfter s2Step43ExitGvAfter
    s2Step43ExitGvRow s2Step43ExitGvOut 35 [] [] [] []
    (shrinkRow 771 s2Step43ExitGvExtra) ([]) s2Step43ExitGv_Incoming s2Step43ExitGv_checked h4 s2Step43ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step43ExitFvBefore s2Step43ExitFvAfter s2Step43ExitGvAfter
    s2Step43ExitFvRow s2Step43ExitFvOut 34 [] [(s2Step43ExitGvRow,35)] [[]] [s2Step43ExitGvOut]
    (shrinkRow 770 s2Step43ExitFvExtra) ((shrinkRow 771 s2Step43ExitGvExtra ++ [])) s2Step43ExitFv_Incoming s2Step43ExitFv_checked h3 s2Step43ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step43ExitFBefore s2Step43ExitFAfter s2Step43ExitGvAfter
    s2Step43ExitFRow s2Step43ExitFOut 246 [] [(s2Step43ExitFvRow,34),(s2Step43ExitGvRow,35)] [[],[]] [s2Step43ExitFvOut,s2Step43ExitGvOut]
    (shrinkRow 768 s2Step43ExitFExtra) ((shrinkRow 770 s2Step43ExitFvExtra ++ (shrinkRow 771 s2Step43ExitGvExtra ++ []))) s2Step43ExitF_Incoming s2Step43ExitF_checked h2 s2Step43ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step43ExitGBefore s2Step43ExitGAfter s2Step43ExitGvAfter
    s2Step43ExitGRow s2Step43ExitGOut 246 [] [(s2Step43ExitFRow,246),(s2Step43ExitFvRow,34),(s2Step43ExitGvRow,35)] [[],[],[]] [s2Step43ExitFOut,s2Step43ExitFvOut,s2Step43ExitGvOut]
    (shrinkRow 769 s2Step43ExitGExtra) ((shrinkRow 768 s2Step43ExitFExtra ++ (shrinkRow 770 s2Step43ExitFvExtra ++ (shrinkRow 771 s2Step43ExitGvExtra ++ [])))) s2Step43ExitG_Incoming s2Step43ExitG_checked h1 s2Step43ExitG_Outgoing
  exact h0
theorem s2Step43ExitBank_checked : compileHmrBankResizeLog .exit s2Step43ExitGBefore ⟨s2Step43ExitFRow,s2Step43ExitGRow,s2Step43ExitFvRow,s2Step43ExitGvRow⟩ ⟨246,246,34,35⟩ [[],[],[],[]]=
    some (s2Step43ExitGvAfter,⟨s2Step43ExitFOut,s2Step43ExitGOut,s2Step43ExitFvOut,s2Step43ExitGvOut⟩,(shrinkRow 769 s2Step43ExitGExtra ++ (shrinkRow 768 s2Step43ExitFExtra ++ (shrinkRow 770 s2Step43ExitFvExtra ++ (shrinkRow 771 s2Step43ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step43ExitBank_rows]
  rfl
theorem s2Step44ExitBank_incomingDistinct : ([s2Step44ExitGRow,s2Step44ExitFRow,s2Step44ExitFvRow,s2Step44ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44ExitBank_outgoingOwned : rowsOwned s2Step44ExitGvAfter [s2Step44ExitGOut,s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step44ExitGvAfter (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44ExitG_Incoming : rowsOwned s2Step44ExitGBefore [s2Step44ExitGRow,s2Step44ExitFRow,s2Step44ExitFvRow,s2Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44ExitGRow,s2Step44ExitFRow,s2Step44ExitFvRow,s2Step44ExitGvRow] 0 s2Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44ExitG_Outgoing : rowsOwned s2Step44ExitGvAfter [s2Step44ExitGOut,s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut] :=
  hmrRows_owned_drop s2Step44ExitGvAfter [s2Step44ExitGOut,s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut] 0 s2Step44ExitBank_outgoingOwned
theorem s2Step44ExitF_Incoming : rowsOwned s2Step44ExitFBefore [s2Step44ExitFRow,s2Step44ExitFvRow,s2Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44ExitGRow,s2Step44ExitFRow,s2Step44ExitFvRow,s2Step44ExitGvRow] 1 s2Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44ExitFBefore (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44ExitF_Outgoing : rowsOwned s2Step44ExitGvAfter [s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut] :=
  hmrRows_owned_drop s2Step44ExitGvAfter [s2Step44ExitGOut,s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut] 1 s2Step44ExitBank_outgoingOwned
theorem s2Step44ExitFv_Incoming : rowsOwned s2Step44ExitFvBefore [s2Step44ExitFvRow,s2Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44ExitGRow,s2Step44ExitFRow,s2Step44ExitFvRow,s2Step44ExitGvRow] 2 s2Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44ExitFvBefore (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44ExitFv_Outgoing : rowsOwned s2Step44ExitGvAfter [s2Step44ExitFvOut,s2Step44ExitGvOut] :=
  hmrRows_owned_drop s2Step44ExitGvAfter [s2Step44ExitGOut,s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut] 2 s2Step44ExitBank_outgoingOwned
theorem s2Step44ExitGv_Incoming : rowsOwned s2Step44ExitGvBefore [s2Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step44ExitGRow,s2Step44ExitFRow,s2Step44ExitFvRow,s2Step44ExitGvRow] 3 s2Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step44ExitGvBefore (fun q => (0≤q ∧ q<245) ∨ (246≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step44ExitGv_Outgoing : rowsOwned s2Step44ExitGvAfter [s2Step44ExitGvOut] :=
  hmrRows_owned_drop s2Step44ExitGvAfter [s2Step44ExitGOut,s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut] 3 s2Step44ExitBank_outgoingOwned
theorem s2Step44ExitBank_rows : planWindowRowsLog s2Step44ExitGBefore [(s2Step44ExitGRow,245),(s2Step44ExitFRow,246),(s2Step44ExitFvRow,35),(s2Step44ExitGvRow,35)] [[],[],[],[]]=
    some (s2Step44ExitGvAfter,[s2Step44ExitGOut,s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut],(shrinkRow 769 s2Step44ExitGExtra ++ (shrinkRow 768 s2Step44ExitFExtra ++ (shrinkRow 770 s2Step44ExitFvExtra ++ (shrinkRow 771 s2Step44ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step44ExitGvAfter [] []=some (s2Step44ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step44ExitGvBefore s2Step44ExitGvAfter s2Step44ExitGvAfter
    s2Step44ExitGvRow s2Step44ExitGvOut 35 [] [] [] []
    (shrinkRow 771 s2Step44ExitGvExtra) ([]) s2Step44ExitGv_Incoming s2Step44ExitGv_checked h4 s2Step44ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step44ExitFvBefore s2Step44ExitFvAfter s2Step44ExitGvAfter
    s2Step44ExitFvRow s2Step44ExitFvOut 35 [] [(s2Step44ExitGvRow,35)] [[]] [s2Step44ExitGvOut]
    (shrinkRow 770 s2Step44ExitFvExtra) ((shrinkRow 771 s2Step44ExitGvExtra ++ [])) s2Step44ExitFv_Incoming s2Step44ExitFv_checked h3 s2Step44ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step44ExitFBefore s2Step44ExitFAfter s2Step44ExitGvAfter
    s2Step44ExitFRow s2Step44ExitFOut 246 [] [(s2Step44ExitFvRow,35),(s2Step44ExitGvRow,35)] [[],[]] [s2Step44ExitFvOut,s2Step44ExitGvOut]
    (shrinkRow 768 s2Step44ExitFExtra) ((shrinkRow 770 s2Step44ExitFvExtra ++ (shrinkRow 771 s2Step44ExitGvExtra ++ []))) s2Step44ExitF_Incoming s2Step44ExitF_checked h2 s2Step44ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step44ExitGBefore s2Step44ExitGAfter s2Step44ExitGvAfter
    s2Step44ExitGRow s2Step44ExitGOut 245 [] [(s2Step44ExitFRow,246),(s2Step44ExitFvRow,35),(s2Step44ExitGvRow,35)] [[],[],[]] [s2Step44ExitFOut,s2Step44ExitFvOut,s2Step44ExitGvOut]
    (shrinkRow 769 s2Step44ExitGExtra) ((shrinkRow 768 s2Step44ExitFExtra ++ (shrinkRow 770 s2Step44ExitFvExtra ++ (shrinkRow 771 s2Step44ExitGvExtra ++ [])))) s2Step44ExitG_Incoming s2Step44ExitG_checked h1 s2Step44ExitG_Outgoing
  exact h0
theorem s2Step44ExitBank_checked : compileHmrBankResizeLog .exit s2Step44ExitGBefore ⟨s2Step44ExitFRow,s2Step44ExitGRow,s2Step44ExitFvRow,s2Step44ExitGvRow⟩ ⟨246,245,35,35⟩ [[],[],[],[]]=
    some (s2Step44ExitGvAfter,⟨s2Step44ExitFOut,s2Step44ExitGOut,s2Step44ExitFvOut,s2Step44ExitGvOut⟩,(shrinkRow 769 s2Step44ExitGExtra ++ (shrinkRow 768 s2Step44ExitFExtra ++ (shrinkRow 770 s2Step44ExitFvExtra ++ (shrinkRow 771 s2Step44ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step44ExitBank_rows]
  rfl
theorem s2Step45ExitBank_incomingDistinct : ([s2Step45ExitGRow,s2Step45ExitFRow,s2Step45ExitFvRow,s2Step45ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45ExitBank_outgoingOwned : rowsOwned s2Step45ExitGvAfter [s2Step45ExitGOut,s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step45ExitGvAfter (fun q => (0≤q ∧ q<757) ∨ (758≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45ExitG_Incoming : rowsOwned s2Step45ExitGBefore [s2Step45ExitGRow,s2Step45ExitFRow,s2Step45ExitFvRow,s2Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45ExitGRow,s2Step45ExitFRow,s2Step45ExitFvRow,s2Step45ExitGvRow] 0 s2Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45ExitG_Outgoing : rowsOwned s2Step45ExitGvAfter [s2Step45ExitGOut,s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut] :=
  hmrRows_owned_drop s2Step45ExitGvAfter [s2Step45ExitGOut,s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut] 0 s2Step45ExitBank_outgoingOwned
theorem s2Step45ExitF_Incoming : rowsOwned s2Step45ExitFBefore [s2Step45ExitFRow,s2Step45ExitFvRow,s2Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45ExitGRow,s2Step45ExitFRow,s2Step45ExitFvRow,s2Step45ExitGvRow] 1 s2Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45ExitFBefore (fun q => (0≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45ExitF_Outgoing : rowsOwned s2Step45ExitGvAfter [s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut] :=
  hmrRows_owned_drop s2Step45ExitGvAfter [s2Step45ExitGOut,s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut] 1 s2Step45ExitBank_outgoingOwned
theorem s2Step45ExitFv_Incoming : rowsOwned s2Step45ExitFvBefore [s2Step45ExitFvRow,s2Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45ExitGRow,s2Step45ExitFRow,s2Step45ExitFvRow,s2Step45ExitGvRow] 2 s2Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45ExitFvBefore (fun q => (0≤q ∧ q<757) ∨ (758≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45ExitFv_Outgoing : rowsOwned s2Step45ExitGvAfter [s2Step45ExitFvOut,s2Step45ExitGvOut] :=
  hmrRows_owned_drop s2Step45ExitGvAfter [s2Step45ExitGOut,s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut] 2 s2Step45ExitBank_outgoingOwned
theorem s2Step45ExitGv_Incoming : rowsOwned s2Step45ExitGvBefore [s2Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step45ExitGRow,s2Step45ExitFRow,s2Step45ExitFvRow,s2Step45ExitGvRow] 3 s2Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step45ExitGvBefore (fun q => (0≤q ∧ q<757) ∨ (758≤q ∧ q<787) ∨ (788≤q ∧ q<791) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step45ExitGv_Outgoing : rowsOwned s2Step45ExitGvAfter [s2Step45ExitGvOut] :=
  hmrRows_owned_drop s2Step45ExitGvAfter [s2Step45ExitGOut,s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut] 3 s2Step45ExitBank_outgoingOwned
theorem s2Step45ExitBank_rows : planWindowRowsLog s2Step45ExitGBefore [(s2Step45ExitGRow,245),(s2Step45ExitFRow,245),(s2Step45ExitFvRow,36),(s2Step45ExitGvRow,35)] [[],[],[],[]]=
    some (s2Step45ExitGvAfter,[s2Step45ExitGOut,s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut],(shrinkRow 769 s2Step45ExitGExtra ++ (shrinkRow 768 s2Step45ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step45ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step45ExitGvAfter [] []=some (s2Step45ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step45ExitGvBefore s2Step45ExitGvAfter s2Step45ExitGvAfter
    s2Step45ExitGvRow s2Step45ExitGvOut 35 [] [] [] []
    (shrinkRow 771 s2Step45ExitGvExtra) ([]) s2Step45ExitGv_Incoming s2Step45ExitGv_checked h4 s2Step45ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step45ExitFvBefore s2Step45ExitFvAfter s2Step45ExitGvAfter
    s2Step45ExitFvRow s2Step45ExitFvOut 36 [] [(s2Step45ExitGvRow,35)] [[]] [s2Step45ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step45ExitGvExtra ++ [])) s2Step45ExitFv_Incoming s2Step45ExitFv_checked h3 s2Step45ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step45ExitFBefore s2Step45ExitFAfter s2Step45ExitGvAfter
    s2Step45ExitFRow s2Step45ExitFOut 245 [] [(s2Step45ExitFvRow,36),(s2Step45ExitGvRow,35)] [[],[]] [s2Step45ExitFvOut,s2Step45ExitGvOut]
    (shrinkRow 768 s2Step45ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step45ExitGvExtra ++ []))) s2Step45ExitF_Incoming s2Step45ExitF_checked h2 s2Step45ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step45ExitGBefore s2Step45ExitGAfter s2Step45ExitGvAfter
    s2Step45ExitGRow s2Step45ExitGOut 245 [] [(s2Step45ExitFRow,245),(s2Step45ExitFvRow,36),(s2Step45ExitGvRow,35)] [[],[],[]] [s2Step45ExitFOut,s2Step45ExitFvOut,s2Step45ExitGvOut]
    (shrinkRow 769 s2Step45ExitGExtra) ((shrinkRow 768 s2Step45ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step45ExitGvExtra ++ [])))) s2Step45ExitG_Incoming s2Step45ExitG_checked h1 s2Step45ExitG_Outgoing
  exact h0
theorem s2Step45ExitBank_checked : compileHmrBankResizeLog .exit s2Step45ExitGBefore ⟨s2Step45ExitFRow,s2Step45ExitGRow,s2Step45ExitFvRow,s2Step45ExitGvRow⟩ ⟨245,245,36,35⟩ [[],[],[],[]]=
    some (s2Step45ExitGvAfter,⟨s2Step45ExitFOut,s2Step45ExitGOut,s2Step45ExitFvOut,s2Step45ExitGvOut⟩,(shrinkRow 769 s2Step45ExitGExtra ++ (shrinkRow 768 s2Step45ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step45ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step45ExitBank_rows]
  rfl
theorem s2Step46ExitBank_incomingDistinct : ([s2Step46ExitGRow,s2Step46ExitFRow,s2Step46ExitFvRow,s2Step46ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46ExitBank_outgoingOwned : rowsOwned s2Step46ExitGvAfter [s2Step46ExitGOut,s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step46ExitGvAfter (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (802≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46ExitG_Incoming : rowsOwned s2Step46ExitGBefore [s2Step46ExitGRow,s2Step46ExitFRow,s2Step46ExitFvRow,s2Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46ExitGRow,s2Step46ExitFRow,s2Step46ExitFvRow,s2Step46ExitGvRow] 0 s2Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46ExitG_Outgoing : rowsOwned s2Step46ExitGvAfter [s2Step46ExitGOut,s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut] :=
  hmrRows_owned_drop s2Step46ExitGvAfter [s2Step46ExitGOut,s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut] 0 s2Step46ExitBank_outgoingOwned
theorem s2Step46ExitF_Incoming : rowsOwned s2Step46ExitFBefore [s2Step46ExitFRow,s2Step46ExitFvRow,s2Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46ExitGRow,s2Step46ExitFRow,s2Step46ExitFvRow,s2Step46ExitGvRow] 1 s2Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46ExitFBefore (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46ExitF_Outgoing : rowsOwned s2Step46ExitGvAfter [s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut] :=
  hmrRows_owned_drop s2Step46ExitGvAfter [s2Step46ExitGOut,s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut] 1 s2Step46ExitBank_outgoingOwned
theorem s2Step46ExitFv_Incoming : rowsOwned s2Step46ExitFvBefore [s2Step46ExitFvRow,s2Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46ExitGRow,s2Step46ExitFRow,s2Step46ExitFvRow,s2Step46ExitGvRow] 2 s2Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46ExitFvBefore (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46ExitFv_Outgoing : rowsOwned s2Step46ExitGvAfter [s2Step46ExitFvOut,s2Step46ExitGvOut] :=
  hmrRows_owned_drop s2Step46ExitGvAfter [s2Step46ExitGOut,s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut] 2 s2Step46ExitBank_outgoingOwned
theorem s2Step46ExitGv_Incoming : rowsOwned s2Step46ExitGvBefore [s2Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step46ExitGRow,s2Step46ExitFRow,s2Step46ExitFvRow,s2Step46ExitGvRow] 3 s2Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step46ExitGvBefore (fun q => (0≤q ∧ q<244) ∨ (245≤q ∧ q<756) ∨ (757≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step46ExitGv_Outgoing : rowsOwned s2Step46ExitGvAfter [s2Step46ExitGvOut] :=
  hmrRows_owned_drop s2Step46ExitGvAfter [s2Step46ExitGOut,s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut] 3 s2Step46ExitBank_outgoingOwned
theorem s2Step46ExitBank_rows : planWindowRowsLog s2Step46ExitGBefore [(s2Step46ExitGRow,244),(s2Step46ExitFRow,244),(s2Step46ExitFvRow,36),(s2Step46ExitGvRow,36)] [[],[],[],[]]=
    some (s2Step46ExitGvAfter,[s2Step46ExitGOut,s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut],(shrinkRow 769 s2Step46ExitGExtra ++ (shrinkRow 768 s2Step46ExitFExtra ++ (shrinkRow 770 s2Step46ExitFvExtra ++ (shrinkRow 771 s2Step46ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step46ExitGvAfter [] []=some (s2Step46ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step46ExitGvBefore s2Step46ExitGvAfter s2Step46ExitGvAfter
    s2Step46ExitGvRow s2Step46ExitGvOut 36 [] [] [] []
    (shrinkRow 771 s2Step46ExitGvExtra) ([]) s2Step46ExitGv_Incoming s2Step46ExitGv_checked h4 s2Step46ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step46ExitFvBefore s2Step46ExitFvAfter s2Step46ExitGvAfter
    s2Step46ExitFvRow s2Step46ExitFvOut 36 [] [(s2Step46ExitGvRow,36)] [[]] [s2Step46ExitGvOut]
    (shrinkRow 770 s2Step46ExitFvExtra) ((shrinkRow 771 s2Step46ExitGvExtra ++ [])) s2Step46ExitFv_Incoming s2Step46ExitFv_checked h3 s2Step46ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step46ExitFBefore s2Step46ExitFAfter s2Step46ExitGvAfter
    s2Step46ExitFRow s2Step46ExitFOut 244 [] [(s2Step46ExitFvRow,36),(s2Step46ExitGvRow,36)] [[],[]] [s2Step46ExitFvOut,s2Step46ExitGvOut]
    (shrinkRow 768 s2Step46ExitFExtra) ((shrinkRow 770 s2Step46ExitFvExtra ++ (shrinkRow 771 s2Step46ExitGvExtra ++ []))) s2Step46ExitF_Incoming s2Step46ExitF_checked h2 s2Step46ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step46ExitGBefore s2Step46ExitGAfter s2Step46ExitGvAfter
    s2Step46ExitGRow s2Step46ExitGOut 244 [] [(s2Step46ExitFRow,244),(s2Step46ExitFvRow,36),(s2Step46ExitGvRow,36)] [[],[],[]] [s2Step46ExitFOut,s2Step46ExitFvOut,s2Step46ExitGvOut]
    (shrinkRow 769 s2Step46ExitGExtra) ((shrinkRow 768 s2Step46ExitFExtra ++ (shrinkRow 770 s2Step46ExitFvExtra ++ (shrinkRow 771 s2Step46ExitGvExtra ++ [])))) s2Step46ExitG_Incoming s2Step46ExitG_checked h1 s2Step46ExitG_Outgoing
  exact h0
theorem s2Step46ExitBank_checked : compileHmrBankResizeLog .exit s2Step46ExitGBefore ⟨s2Step46ExitFRow,s2Step46ExitGRow,s2Step46ExitFvRow,s2Step46ExitGvRow⟩ ⟨244,244,36,36⟩ [[],[],[],[]]=
    some (s2Step46ExitGvAfter,⟨s2Step46ExitFOut,s2Step46ExitGOut,s2Step46ExitFvOut,s2Step46ExitGvOut⟩,(shrinkRow 769 s2Step46ExitGExtra ++ (shrinkRow 768 s2Step46ExitFExtra ++ (shrinkRow 770 s2Step46ExitFvExtra ++ (shrinkRow 771 s2Step46ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step46ExitBank_rows]
  rfl
theorem s2Step47ExitBank_incomingDistinct : ([s2Step47ExitGRow,s2Step47ExitFRow,s2Step47ExitFvRow,s2Step47ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47ExitBank_outgoingOwned : rowsOwned s2Step47ExitGvAfter [s2Step47ExitGOut,s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step47ExitGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47ExitG_Incoming : rowsOwned s2Step47ExitGBefore [s2Step47ExitGRow,s2Step47ExitFRow,s2Step47ExitFvRow,s2Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47ExitGRow,s2Step47ExitFRow,s2Step47ExitFvRow,s2Step47ExitGvRow] 0 s2Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47ExitG_Outgoing : rowsOwned s2Step47ExitGvAfter [s2Step47ExitGOut,s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut] :=
  hmrRows_owned_drop s2Step47ExitGvAfter [s2Step47ExitGOut,s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut] 0 s2Step47ExitBank_outgoingOwned
theorem s2Step47ExitF_Incoming : rowsOwned s2Step47ExitFBefore [s2Step47ExitFRow,s2Step47ExitFvRow,s2Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47ExitGRow,s2Step47ExitFRow,s2Step47ExitFvRow,s2Step47ExitGvRow] 1 s2Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47ExitF_Outgoing : rowsOwned s2Step47ExitGvAfter [s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut] :=
  hmrRows_owned_drop s2Step47ExitGvAfter [s2Step47ExitGOut,s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut] 1 s2Step47ExitBank_outgoingOwned
theorem s2Step47ExitFv_Incoming : rowsOwned s2Step47ExitFvBefore [s2Step47ExitFvRow,s2Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47ExitGRow,s2Step47ExitFRow,s2Step47ExitFvRow,s2Step47ExitGvRow] 2 s2Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47ExitFv_Outgoing : rowsOwned s2Step47ExitGvAfter [s2Step47ExitFvOut,s2Step47ExitGvOut] :=
  hmrRows_owned_drop s2Step47ExitGvAfter [s2Step47ExitGOut,s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut] 2 s2Step47ExitBank_outgoingOwned
theorem s2Step47ExitGv_Incoming : rowsOwned s2Step47ExitGvBefore [s2Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step47ExitGRow,s2Step47ExitFRow,s2Step47ExitFvRow,s2Step47ExitGvRow] 3 s2Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step47ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
    decide +kernel
theorem s2Step47ExitGv_Outgoing : rowsOwned s2Step47ExitGvAfter [s2Step47ExitGvOut] :=
  hmrRows_owned_drop s2Step47ExitGvAfter [s2Step47ExitGOut,s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut] 3 s2Step47ExitBank_outgoingOwned
theorem s2Step47ExitBank_rows : planWindowRowsLog s2Step47ExitGBefore [(s2Step47ExitGRow,244),(s2Step47ExitFRow,244),(s2Step47ExitFvRow,37),(s2Step47ExitGvRow,37)] [[],[],[],[]]=
    some (s2Step47ExitGvAfter,[s2Step47ExitGOut,s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut],(shrinkRow 769 s2Step47ExitGExtra ++ (shrinkRow 768 s2Step47ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step47ExitGvAfter [] []=some (s2Step47ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step47ExitGvBefore s2Step47ExitGvAfter s2Step47ExitGvAfter
    s2Step47ExitGvRow s2Step47ExitGvOut 37 [] [] [] []
    (growRow 771 []) ([]) s2Step47ExitGv_Incoming s2Step47ExitGv_checked h4 s2Step47ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step47ExitFvBefore s2Step47ExitFvAfter s2Step47ExitGvAfter
    s2Step47ExitFvRow s2Step47ExitFvOut 37 [] [(s2Step47ExitGvRow,37)] [[]] [s2Step47ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step47ExitFv_Incoming s2Step47ExitFv_checked h3 s2Step47ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step47ExitFBefore s2Step47ExitFAfter s2Step47ExitGvAfter
    s2Step47ExitFRow s2Step47ExitFOut 244 [] [(s2Step47ExitFvRow,37),(s2Step47ExitGvRow,37)] [[],[]] [s2Step47ExitFvOut,s2Step47ExitGvOut]
    (shrinkRow 768 s2Step47ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step47ExitF_Incoming s2Step47ExitF_checked h2 s2Step47ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step47ExitGBefore s2Step47ExitGAfter s2Step47ExitGvAfter
    s2Step47ExitGRow s2Step47ExitGOut 244 [] [(s2Step47ExitFRow,244),(s2Step47ExitFvRow,37),(s2Step47ExitGvRow,37)] [[],[],[]] [s2Step47ExitFOut,s2Step47ExitFvOut,s2Step47ExitGvOut]
    (shrinkRow 769 s2Step47ExitGExtra) ((shrinkRow 768 s2Step47ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step47ExitG_Incoming s2Step47ExitG_checked h1 s2Step47ExitG_Outgoing
  exact h0
theorem s2Step47ExitBank_checked : compileHmrBankResizeLog .exit s2Step47ExitGBefore ⟨s2Step47ExitFRow,s2Step47ExitGRow,s2Step47ExitFvRow,s2Step47ExitGvRow⟩ ⟨244,244,37,37⟩ [[],[],[],[]]=
    some (s2Step47ExitGvAfter,⟨s2Step47ExitFOut,s2Step47ExitGOut,s2Step47ExitFvOut,s2Step47ExitGvOut⟩,(shrinkRow 769 s2Step47ExitGExtra ++ (shrinkRow 768 s2Step47ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step47ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
