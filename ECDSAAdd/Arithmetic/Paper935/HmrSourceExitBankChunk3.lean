import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk3
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk2

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step48ExitBank_incomingDistinct : ([s2Step48ExitGRow,s2Step48ExitFRow,s2Step48ExitFvRow,s2Step48ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48ExitBank_outgoingOwned : rowsOwned s2Step48ExitGvAfter [s2Step48ExitGOut,s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step48ExitGvAfter (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48ExitG_Incoming : rowsOwned s2Step48ExitGBefore [s2Step48ExitGRow,s2Step48ExitFRow,s2Step48ExitFvRow,s2Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48ExitGRow,s2Step48ExitFRow,s2Step48ExitFvRow,s2Step48ExitGvRow] 0 s2Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48ExitG_Outgoing : rowsOwned s2Step48ExitGvAfter [s2Step48ExitGOut,s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut] :=
  hmrRows_owned_drop s2Step48ExitGvAfter [s2Step48ExitGOut,s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut] 0 s2Step48ExitBank_outgoingOwned
theorem s2Step48ExitF_Incoming : rowsOwned s2Step48ExitFBefore [s2Step48ExitFRow,s2Step48ExitFvRow,s2Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48ExitGRow,s2Step48ExitFRow,s2Step48ExitFvRow,s2Step48ExitGvRow] 1 s2Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48ExitFBefore (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48ExitF_Outgoing : rowsOwned s2Step48ExitGvAfter [s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut] :=
  hmrRows_owned_drop s2Step48ExitGvAfter [s2Step48ExitGOut,s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut] 1 s2Step48ExitBank_outgoingOwned
theorem s2Step48ExitFv_Incoming : rowsOwned s2Step48ExitFvBefore [s2Step48ExitFvRow,s2Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48ExitGRow,s2Step48ExitFRow,s2Step48ExitFvRow,s2Step48ExitGvRow] 2 s2Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48ExitFvBefore (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48ExitFv_Outgoing : rowsOwned s2Step48ExitGvAfter [s2Step48ExitFvOut,s2Step48ExitGvOut] :=
  hmrRows_owned_drop s2Step48ExitGvAfter [s2Step48ExitGOut,s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut] 2 s2Step48ExitBank_outgoingOwned
theorem s2Step48ExitGv_Incoming : rowsOwned s2Step48ExitGvBefore [s2Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step48ExitGRow,s2Step48ExitFRow,s2Step48ExitFvRow,s2Step48ExitGvRow] 3 s2Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step48ExitGvBefore (fun q => (0≤q ∧ q<243) ∨ (244≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (807≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step48ExitGv_Outgoing : rowsOwned s2Step48ExitGvAfter [s2Step48ExitGvOut] :=
  hmrRows_owned_drop s2Step48ExitGvAfter [s2Step48ExitGOut,s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut] 3 s2Step48ExitBank_outgoingOwned
theorem s2Step48ExitBank_rows : planWindowRowsLog s2Step48ExitGBefore [(s2Step48ExitGRow,243),(s2Step48ExitFRow,244),(s2Step48ExitFvRow,37),(s2Step48ExitGvRow,37)] [[],[],[],[]]=
    some (s2Step48ExitGvAfter,[s2Step48ExitGOut,s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut],(shrinkRow 769 s2Step48ExitGExtra ++ (shrinkRow 768 s2Step48ExitFExtra ++ (shrinkRow 770 s2Step48ExitFvExtra ++ (shrinkRow 771 s2Step48ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step48ExitGvAfter [] []=some (s2Step48ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step48ExitGvBefore s2Step48ExitGvAfter s2Step48ExitGvAfter
    s2Step48ExitGvRow s2Step48ExitGvOut 37 [] [] [] []
    (shrinkRow 771 s2Step48ExitGvExtra) ([]) s2Step48ExitGv_Incoming s2Step48ExitGv_checked h4 s2Step48ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step48ExitFvBefore s2Step48ExitFvAfter s2Step48ExitGvAfter
    s2Step48ExitFvRow s2Step48ExitFvOut 37 [] [(s2Step48ExitGvRow,37)] [[]] [s2Step48ExitGvOut]
    (shrinkRow 770 s2Step48ExitFvExtra) ((shrinkRow 771 s2Step48ExitGvExtra ++ [])) s2Step48ExitFv_Incoming s2Step48ExitFv_checked h3 s2Step48ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step48ExitFBefore s2Step48ExitFAfter s2Step48ExitGvAfter
    s2Step48ExitFRow s2Step48ExitFOut 244 [] [(s2Step48ExitFvRow,37),(s2Step48ExitGvRow,37)] [[],[]] [s2Step48ExitFvOut,s2Step48ExitGvOut]
    (shrinkRow 768 s2Step48ExitFExtra) ((shrinkRow 770 s2Step48ExitFvExtra ++ (shrinkRow 771 s2Step48ExitGvExtra ++ []))) s2Step48ExitF_Incoming s2Step48ExitF_checked h2 s2Step48ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step48ExitGBefore s2Step48ExitGAfter s2Step48ExitGvAfter
    s2Step48ExitGRow s2Step48ExitGOut 243 [] [(s2Step48ExitFRow,244),(s2Step48ExitFvRow,37),(s2Step48ExitGvRow,37)] [[],[],[]] [s2Step48ExitFOut,s2Step48ExitFvOut,s2Step48ExitGvOut]
    (shrinkRow 769 s2Step48ExitGExtra) ((shrinkRow 768 s2Step48ExitFExtra ++ (shrinkRow 770 s2Step48ExitFvExtra ++ (shrinkRow 771 s2Step48ExitGvExtra ++ [])))) s2Step48ExitG_Incoming s2Step48ExitG_checked h1 s2Step48ExitG_Outgoing
  exact h0
theorem s2Step48ExitBank_checked : compileHmrBankResizeLog .exit s2Step48ExitGBefore ⟨s2Step48ExitFRow,s2Step48ExitGRow,s2Step48ExitFvRow,s2Step48ExitGvRow⟩ ⟨244,243,37,37⟩ [[],[],[],[]]=
    some (s2Step48ExitGvAfter,⟨s2Step48ExitFOut,s2Step48ExitGOut,s2Step48ExitFvOut,s2Step48ExitGvOut⟩,(shrinkRow 769 s2Step48ExitGExtra ++ (shrinkRow 768 s2Step48ExitFExtra ++ (shrinkRow 770 s2Step48ExitFvExtra ++ (shrinkRow 771 s2Step48ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step48ExitBank_rows]
  rfl
theorem s2Step49ExitBank_incomingDistinct : ([s2Step49ExitGRow,s2Step49ExitFRow,s2Step49ExitFvRow,s2Step49ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49ExitBank_outgoingOwned : rowsOwned s2Step49ExitGvAfter [s2Step49ExitGOut,s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step49ExitGvAfter (fun q => (0≤q ∧ q<755) ∨ (756≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49ExitG_Incoming : rowsOwned s2Step49ExitGBefore [s2Step49ExitGRow,s2Step49ExitFRow,s2Step49ExitFvRow,s2Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49ExitGRow,s2Step49ExitFRow,s2Step49ExitFvRow,s2Step49ExitGvRow] 0 s2Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49ExitG_Outgoing : rowsOwned s2Step49ExitGvAfter [s2Step49ExitGOut,s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut] :=
  hmrRows_owned_drop s2Step49ExitGvAfter [s2Step49ExitGOut,s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut] 0 s2Step49ExitBank_outgoingOwned
theorem s2Step49ExitF_Incoming : rowsOwned s2Step49ExitFBefore [s2Step49ExitFRow,s2Step49ExitFvRow,s2Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49ExitGRow,s2Step49ExitFRow,s2Step49ExitFvRow,s2Step49ExitGvRow] 1 s2Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49ExitF_Outgoing : rowsOwned s2Step49ExitGvAfter [s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut] :=
  hmrRows_owned_drop s2Step49ExitGvAfter [s2Step49ExitGOut,s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut] 1 s2Step49ExitBank_outgoingOwned
theorem s2Step49ExitFv_Incoming : rowsOwned s2Step49ExitFvBefore [s2Step49ExitFvRow,s2Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49ExitGRow,s2Step49ExitFRow,s2Step49ExitFvRow,s2Step49ExitGvRow] 2 s2Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49ExitFvBefore (fun q => (0≤q ∧ q<755) ∨ (756≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49ExitFv_Outgoing : rowsOwned s2Step49ExitGvAfter [s2Step49ExitFvOut,s2Step49ExitGvOut] :=
  hmrRows_owned_drop s2Step49ExitGvAfter [s2Step49ExitGOut,s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut] 2 s2Step49ExitBank_outgoingOwned
theorem s2Step49ExitGv_Incoming : rowsOwned s2Step49ExitGvBefore [s2Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step49ExitGRow,s2Step49ExitFRow,s2Step49ExitFvRow,s2Step49ExitGvRow] 3 s2Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step49ExitGvBefore (fun q => (0≤q ∧ q<755) ∨ (756≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step49ExitGv_Outgoing : rowsOwned s2Step49ExitGvAfter [s2Step49ExitGvOut] :=
  hmrRows_owned_drop s2Step49ExitGvAfter [s2Step49ExitGOut,s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut] 3 s2Step49ExitBank_outgoingOwned
theorem s2Step49ExitBank_rows : planWindowRowsLog s2Step49ExitGBefore [(s2Step49ExitGRow,243),(s2Step49ExitFRow,243),(s2Step49ExitFvRow,38),(s2Step49ExitGvRow,37)] [[],[],[],[]]=
    some (s2Step49ExitGvAfter,[s2Step49ExitGOut,s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut],(shrinkRow 769 s2Step49ExitGExtra ++ (shrinkRow 768 s2Step49ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step49ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step49ExitGvAfter [] []=some (s2Step49ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step49ExitGvBefore s2Step49ExitGvAfter s2Step49ExitGvAfter
    s2Step49ExitGvRow s2Step49ExitGvOut 37 [] [] [] []
    (shrinkRow 771 s2Step49ExitGvExtra) ([]) s2Step49ExitGv_Incoming s2Step49ExitGv_checked h4 s2Step49ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step49ExitFvBefore s2Step49ExitFvAfter s2Step49ExitGvAfter
    s2Step49ExitFvRow s2Step49ExitFvOut 38 [] [(s2Step49ExitGvRow,37)] [[]] [s2Step49ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step49ExitGvExtra ++ [])) s2Step49ExitFv_Incoming s2Step49ExitFv_checked h3 s2Step49ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step49ExitFBefore s2Step49ExitFAfter s2Step49ExitGvAfter
    s2Step49ExitFRow s2Step49ExitFOut 243 [] [(s2Step49ExitFvRow,38),(s2Step49ExitGvRow,37)] [[],[]] [s2Step49ExitFvOut,s2Step49ExitGvOut]
    (shrinkRow 768 s2Step49ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step49ExitGvExtra ++ []))) s2Step49ExitF_Incoming s2Step49ExitF_checked h2 s2Step49ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step49ExitGBefore s2Step49ExitGAfter s2Step49ExitGvAfter
    s2Step49ExitGRow s2Step49ExitGOut 243 [] [(s2Step49ExitFRow,243),(s2Step49ExitFvRow,38),(s2Step49ExitGvRow,37)] [[],[],[]] [s2Step49ExitFOut,s2Step49ExitFvOut,s2Step49ExitGvOut]
    (shrinkRow 769 s2Step49ExitGExtra) ((shrinkRow 768 s2Step49ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step49ExitGvExtra ++ [])))) s2Step49ExitG_Incoming s2Step49ExitG_checked h1 s2Step49ExitG_Outgoing
  exact h0
theorem s2Step49ExitBank_checked : compileHmrBankResizeLog .exit s2Step49ExitGBefore ⟨s2Step49ExitFRow,s2Step49ExitGRow,s2Step49ExitFvRow,s2Step49ExitGvRow⟩ ⟨243,243,38,37⟩ [[],[],[],[]]=
    some (s2Step49ExitGvAfter,⟨s2Step49ExitFOut,s2Step49ExitGOut,s2Step49ExitFvOut,s2Step49ExitGvOut⟩,(shrinkRow 769 s2Step49ExitGExtra ++ (shrinkRow 768 s2Step49ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step49ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step49ExitBank_rows]
  rfl
theorem s2Step50ExitBank_incomingDistinct : ([s2Step50ExitGRow,s2Step50ExitFRow,s2Step50ExitFvRow,s2Step50ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50ExitBank_outgoingOwned : rowsOwned s2Step50ExitGvAfter [s2Step50ExitGOut,s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step50ExitGvAfter (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<805) ∨ (806≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50ExitG_Incoming : rowsOwned s2Step50ExitGBefore [s2Step50ExitGRow,s2Step50ExitFRow,s2Step50ExitFvRow,s2Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50ExitGRow,s2Step50ExitFRow,s2Step50ExitFvRow,s2Step50ExitGvRow] 0 s2Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50ExitG_Outgoing : rowsOwned s2Step50ExitGvAfter [s2Step50ExitGOut,s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut] :=
  hmrRows_owned_drop s2Step50ExitGvAfter [s2Step50ExitGOut,s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut] 0 s2Step50ExitBank_outgoingOwned
theorem s2Step50ExitF_Incoming : rowsOwned s2Step50ExitFBefore [s2Step50ExitFRow,s2Step50ExitFvRow,s2Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50ExitGRow,s2Step50ExitFRow,s2Step50ExitFvRow,s2Step50ExitGvRow] 1 s2Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50ExitFBefore (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50ExitF_Outgoing : rowsOwned s2Step50ExitGvAfter [s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut] :=
  hmrRows_owned_drop s2Step50ExitGvAfter [s2Step50ExitGOut,s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut] 1 s2Step50ExitBank_outgoingOwned
theorem s2Step50ExitFv_Incoming : rowsOwned s2Step50ExitFvBefore [s2Step50ExitFvRow,s2Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50ExitGRow,s2Step50ExitFRow,s2Step50ExitFvRow,s2Step50ExitGvRow] 2 s2Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50ExitFvBefore (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50ExitFv_Outgoing : rowsOwned s2Step50ExitGvAfter [s2Step50ExitFvOut,s2Step50ExitGvOut] :=
  hmrRows_owned_drop s2Step50ExitGvAfter [s2Step50ExitGOut,s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut] 2 s2Step50ExitBank_outgoingOwned
theorem s2Step50ExitGv_Incoming : rowsOwned s2Step50ExitGvBefore [s2Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step50ExitGRow,s2Step50ExitFRow,s2Step50ExitFvRow,s2Step50ExitGvRow] 3 s2Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step50ExitGvBefore (fun q => (0≤q ∧ q<242) ∨ (243≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step50ExitGv_Outgoing : rowsOwned s2Step50ExitGvAfter [s2Step50ExitGvOut] :=
  hmrRows_owned_drop s2Step50ExitGvAfter [s2Step50ExitGOut,s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut] 3 s2Step50ExitBank_outgoingOwned
theorem s2Step50ExitBank_rows : planWindowRowsLog s2Step50ExitGBefore [(s2Step50ExitGRow,242),(s2Step50ExitFRow,243),(s2Step50ExitFvRow,38),(s2Step50ExitGvRow,37)] [[],[],[],[]]=
    some (s2Step50ExitGvAfter,[s2Step50ExitGOut,s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut],(shrinkRow 769 s2Step50ExitGExtra ++ (shrinkRow 768 s2Step50ExitFExtra ++ (shrinkRow 770 s2Step50ExitFvExtra ++ (shrinkRow 771 s2Step50ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step50ExitGvAfter [] []=some (s2Step50ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step50ExitGvBefore s2Step50ExitGvAfter s2Step50ExitGvAfter
    s2Step50ExitGvRow s2Step50ExitGvOut 37 [] [] [] []
    (shrinkRow 771 s2Step50ExitGvExtra) ([]) s2Step50ExitGv_Incoming s2Step50ExitGv_checked h4 s2Step50ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step50ExitFvBefore s2Step50ExitFvAfter s2Step50ExitGvAfter
    s2Step50ExitFvRow s2Step50ExitFvOut 38 [] [(s2Step50ExitGvRow,37)] [[]] [s2Step50ExitGvOut]
    (shrinkRow 770 s2Step50ExitFvExtra) ((shrinkRow 771 s2Step50ExitGvExtra ++ [])) s2Step50ExitFv_Incoming s2Step50ExitFv_checked h3 s2Step50ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step50ExitFBefore s2Step50ExitFAfter s2Step50ExitGvAfter
    s2Step50ExitFRow s2Step50ExitFOut 243 [] [(s2Step50ExitFvRow,38),(s2Step50ExitGvRow,37)] [[],[]] [s2Step50ExitFvOut,s2Step50ExitGvOut]
    (shrinkRow 768 s2Step50ExitFExtra) ((shrinkRow 770 s2Step50ExitFvExtra ++ (shrinkRow 771 s2Step50ExitGvExtra ++ []))) s2Step50ExitF_Incoming s2Step50ExitF_checked h2 s2Step50ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step50ExitGBefore s2Step50ExitGAfter s2Step50ExitGvAfter
    s2Step50ExitGRow s2Step50ExitGOut 242 [] [(s2Step50ExitFRow,243),(s2Step50ExitFvRow,38),(s2Step50ExitGvRow,37)] [[],[],[]] [s2Step50ExitFOut,s2Step50ExitFvOut,s2Step50ExitGvOut]
    (shrinkRow 769 s2Step50ExitGExtra) ((shrinkRow 768 s2Step50ExitFExtra ++ (shrinkRow 770 s2Step50ExitFvExtra ++ (shrinkRow 771 s2Step50ExitGvExtra ++ [])))) s2Step50ExitG_Incoming s2Step50ExitG_checked h1 s2Step50ExitG_Outgoing
  exact h0
theorem s2Step50ExitBank_checked : compileHmrBankResizeLog .exit s2Step50ExitGBefore ⟨s2Step50ExitFRow,s2Step50ExitGRow,s2Step50ExitFvRow,s2Step50ExitGvRow⟩ ⟨243,242,38,37⟩ [[],[],[],[]]=
    some (s2Step50ExitGvAfter,⟨s2Step50ExitFOut,s2Step50ExitGOut,s2Step50ExitFvOut,s2Step50ExitGvOut⟩,(shrinkRow 769 s2Step50ExitGExtra ++ (shrinkRow 768 s2Step50ExitFExtra ++ (shrinkRow 770 s2Step50ExitFvExtra ++ (shrinkRow 771 s2Step50ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step50ExitBank_rows]
  rfl
theorem s2Step51ExitBank_incomingDistinct : ([s2Step51ExitGRow,s2Step51ExitFRow,s2Step51ExitFvRow,s2Step51ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51ExitBank_outgoingOwned : rowsOwned s2Step51ExitGvAfter [s2Step51ExitGOut,s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step51ExitGvAfter (fun q => (0≤q ∧ q<754) ∨ (755≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51ExitG_Incoming : rowsOwned s2Step51ExitGBefore [s2Step51ExitGRow,s2Step51ExitFRow,s2Step51ExitFvRow,s2Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51ExitGRow,s2Step51ExitFRow,s2Step51ExitFvRow,s2Step51ExitGvRow] 0 s2Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51ExitG_Outgoing : rowsOwned s2Step51ExitGvAfter [s2Step51ExitGOut,s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut] :=
  hmrRows_owned_drop s2Step51ExitGvAfter [s2Step51ExitGOut,s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut] 0 s2Step51ExitBank_outgoingOwned
theorem s2Step51ExitF_Incoming : rowsOwned s2Step51ExitFBefore [s2Step51ExitFRow,s2Step51ExitFvRow,s2Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51ExitGRow,s2Step51ExitFRow,s2Step51ExitFvRow,s2Step51ExitGvRow] 1 s2Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51ExitF_Outgoing : rowsOwned s2Step51ExitGvAfter [s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut] :=
  hmrRows_owned_drop s2Step51ExitGvAfter [s2Step51ExitGOut,s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut] 1 s2Step51ExitBank_outgoingOwned
theorem s2Step51ExitFv_Incoming : rowsOwned s2Step51ExitFvBefore [s2Step51ExitFvRow,s2Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51ExitGRow,s2Step51ExitFRow,s2Step51ExitFvRow,s2Step51ExitGvRow] 2 s2Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51ExitFvBefore (fun q => (0≤q ∧ q<754) ∨ (755≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51ExitFv_Outgoing : rowsOwned s2Step51ExitGvAfter [s2Step51ExitFvOut,s2Step51ExitGvOut] :=
  hmrRows_owned_drop s2Step51ExitGvAfter [s2Step51ExitGOut,s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut] 2 s2Step51ExitBank_outgoingOwned
theorem s2Step51ExitGv_Incoming : rowsOwned s2Step51ExitGvBefore [s2Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step51ExitGRow,s2Step51ExitFRow,s2Step51ExitFvRow,s2Step51ExitGvRow] 3 s2Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step51ExitGvBefore (fun q => (0≤q ∧ q<754) ∨ (755≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (808≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
    decide +kernel
theorem s2Step51ExitGv_Outgoing : rowsOwned s2Step51ExitGvAfter [s2Step51ExitGvOut] :=
  hmrRows_owned_drop s2Step51ExitGvAfter [s2Step51ExitGOut,s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut] 3 s2Step51ExitBank_outgoingOwned
theorem s2Step51ExitBank_rows : planWindowRowsLog s2Step51ExitGBefore [(s2Step51ExitGRow,242),(s2Step51ExitFRow,242),(s2Step51ExitFvRow,39),(s2Step51ExitGvRow,38)] [[],[],[],[]]=
    some (s2Step51ExitGvAfter,[s2Step51ExitGOut,s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut],(shrinkRow 769 s2Step51ExitGExtra ++ (shrinkRow 768 s2Step51ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step51ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step51ExitGvAfter [] []=some (s2Step51ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step51ExitGvBefore s2Step51ExitGvAfter s2Step51ExitGvAfter
    s2Step51ExitGvRow s2Step51ExitGvOut 38 [] [] [] []
    (shrinkRow 771 s2Step51ExitGvExtra) ([]) s2Step51ExitGv_Incoming s2Step51ExitGv_checked h4 s2Step51ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step51ExitFvBefore s2Step51ExitFvAfter s2Step51ExitGvAfter
    s2Step51ExitFvRow s2Step51ExitFvOut 39 [] [(s2Step51ExitGvRow,38)] [[]] [s2Step51ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step51ExitGvExtra ++ [])) s2Step51ExitFv_Incoming s2Step51ExitFv_checked h3 s2Step51ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step51ExitFBefore s2Step51ExitFAfter s2Step51ExitGvAfter
    s2Step51ExitFRow s2Step51ExitFOut 242 [] [(s2Step51ExitFvRow,39),(s2Step51ExitGvRow,38)] [[],[]] [s2Step51ExitFvOut,s2Step51ExitGvOut]
    (shrinkRow 768 s2Step51ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step51ExitGvExtra ++ []))) s2Step51ExitF_Incoming s2Step51ExitF_checked h2 s2Step51ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step51ExitGBefore s2Step51ExitGAfter s2Step51ExitGvAfter
    s2Step51ExitGRow s2Step51ExitGOut 242 [] [(s2Step51ExitFRow,242),(s2Step51ExitFvRow,39),(s2Step51ExitGvRow,38)] [[],[],[]] [s2Step51ExitFOut,s2Step51ExitFvOut,s2Step51ExitGvOut]
    (shrinkRow 769 s2Step51ExitGExtra) ((shrinkRow 768 s2Step51ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step51ExitGvExtra ++ [])))) s2Step51ExitG_Incoming s2Step51ExitG_checked h1 s2Step51ExitG_Outgoing
  exact h0
theorem s2Step51ExitBank_checked : compileHmrBankResizeLog .exit s2Step51ExitGBefore ⟨s2Step51ExitFRow,s2Step51ExitGRow,s2Step51ExitFvRow,s2Step51ExitGvRow⟩ ⟨242,242,39,38⟩ [[],[],[],[]]=
    some (s2Step51ExitGvAfter,⟨s2Step51ExitFOut,s2Step51ExitGOut,s2Step51ExitFvOut,s2Step51ExitGvOut⟩,(shrinkRow 769 s2Step51ExitGExtra ++ (shrinkRow 768 s2Step51ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step51ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step51ExitBank_rows]
  rfl
theorem s2Step52ExitBank_incomingDistinct : ([s2Step52ExitGRow,s2Step52ExitFRow,s2Step52ExitFvRow,s2Step52ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52ExitBank_outgoingOwned : rowsOwned s2Step52ExitGvAfter [s2Step52ExitGOut,s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step52ExitGvAfter (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<807) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52ExitG_Incoming : rowsOwned s2Step52ExitGBefore [s2Step52ExitGRow,s2Step52ExitFRow,s2Step52ExitFvRow,s2Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52ExitGRow,s2Step52ExitFRow,s2Step52ExitFvRow,s2Step52ExitGvRow] 0 s2Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52ExitG_Outgoing : rowsOwned s2Step52ExitGvAfter [s2Step52ExitGOut,s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut] :=
  hmrRows_owned_drop s2Step52ExitGvAfter [s2Step52ExitGOut,s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut] 0 s2Step52ExitBank_outgoingOwned
theorem s2Step52ExitF_Incoming : rowsOwned s2Step52ExitFBefore [s2Step52ExitFRow,s2Step52ExitFvRow,s2Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52ExitGRow,s2Step52ExitFRow,s2Step52ExitFvRow,s2Step52ExitGvRow] 1 s2Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52ExitFBefore (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52ExitF_Outgoing : rowsOwned s2Step52ExitGvAfter [s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut] :=
  hmrRows_owned_drop s2Step52ExitGvAfter [s2Step52ExitGOut,s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut] 1 s2Step52ExitBank_outgoingOwned
theorem s2Step52ExitFv_Incoming : rowsOwned s2Step52ExitFvBefore [s2Step52ExitFvRow,s2Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52ExitGRow,s2Step52ExitFRow,s2Step52ExitFvRow,s2Step52ExitGvRow] 2 s2Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52ExitFvBefore (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52ExitFv_Outgoing : rowsOwned s2Step52ExitGvAfter [s2Step52ExitFvOut,s2Step52ExitGvOut] :=
  hmrRows_owned_drop s2Step52ExitGvAfter [s2Step52ExitGOut,s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut] 2 s2Step52ExitBank_outgoingOwned
theorem s2Step52ExitGv_Incoming : rowsOwned s2Step52ExitGvBefore [s2Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step52ExitGRow,s2Step52ExitFRow,s2Step52ExitFvRow,s2Step52ExitGvRow] 3 s2Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step52ExitGvBefore (fun q => (0≤q ∧ q<241) ∨ (242≤q ∧ q<753) ∨ (754≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step52ExitGv_Outgoing : rowsOwned s2Step52ExitGvAfter [s2Step52ExitGvOut] :=
  hmrRows_owned_drop s2Step52ExitGvAfter [s2Step52ExitGOut,s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut] 3 s2Step52ExitBank_outgoingOwned
theorem s2Step52ExitBank_rows : planWindowRowsLog s2Step52ExitGBefore [(s2Step52ExitGRow,241),(s2Step52ExitFRow,241),(s2Step52ExitFvRow,39),(s2Step52ExitGvRow,38)] [[],[],[],[]]=
    some (s2Step52ExitGvAfter,[s2Step52ExitGOut,s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut],(shrinkRow 769 s2Step52ExitGExtra ++ (shrinkRow 768 s2Step52ExitFExtra ++ (shrinkRow 770 s2Step52ExitFvExtra ++ (shrinkRow 771 s2Step52ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step52ExitGvAfter [] []=some (s2Step52ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step52ExitGvBefore s2Step52ExitGvAfter s2Step52ExitGvAfter
    s2Step52ExitGvRow s2Step52ExitGvOut 38 [] [] [] []
    (shrinkRow 771 s2Step52ExitGvExtra) ([]) s2Step52ExitGv_Incoming s2Step52ExitGv_checked h4 s2Step52ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step52ExitFvBefore s2Step52ExitFvAfter s2Step52ExitGvAfter
    s2Step52ExitFvRow s2Step52ExitFvOut 39 [] [(s2Step52ExitGvRow,38)] [[]] [s2Step52ExitGvOut]
    (shrinkRow 770 s2Step52ExitFvExtra) ((shrinkRow 771 s2Step52ExitGvExtra ++ [])) s2Step52ExitFv_Incoming s2Step52ExitFv_checked h3 s2Step52ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step52ExitFBefore s2Step52ExitFAfter s2Step52ExitGvAfter
    s2Step52ExitFRow s2Step52ExitFOut 241 [] [(s2Step52ExitFvRow,39),(s2Step52ExitGvRow,38)] [[],[]] [s2Step52ExitFvOut,s2Step52ExitGvOut]
    (shrinkRow 768 s2Step52ExitFExtra) ((shrinkRow 770 s2Step52ExitFvExtra ++ (shrinkRow 771 s2Step52ExitGvExtra ++ []))) s2Step52ExitF_Incoming s2Step52ExitF_checked h2 s2Step52ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step52ExitGBefore s2Step52ExitGAfter s2Step52ExitGvAfter
    s2Step52ExitGRow s2Step52ExitGOut 241 [] [(s2Step52ExitFRow,241),(s2Step52ExitFvRow,39),(s2Step52ExitGvRow,38)] [[],[],[]] [s2Step52ExitFOut,s2Step52ExitFvOut,s2Step52ExitGvOut]
    (shrinkRow 769 s2Step52ExitGExtra) ((shrinkRow 768 s2Step52ExitFExtra ++ (shrinkRow 770 s2Step52ExitFvExtra ++ (shrinkRow 771 s2Step52ExitGvExtra ++ [])))) s2Step52ExitG_Incoming s2Step52ExitG_checked h1 s2Step52ExitG_Outgoing
  exact h0
theorem s2Step52ExitBank_checked : compileHmrBankResizeLog .exit s2Step52ExitGBefore ⟨s2Step52ExitFRow,s2Step52ExitGRow,s2Step52ExitFvRow,s2Step52ExitGvRow⟩ ⟨241,241,39,38⟩ [[],[],[],[]]=
    some (s2Step52ExitGvAfter,⟨s2Step52ExitFOut,s2Step52ExitGOut,s2Step52ExitFvOut,s2Step52ExitGvOut⟩,(shrinkRow 769 s2Step52ExitGExtra ++ (shrinkRow 768 s2Step52ExitFExtra ++ (shrinkRow 770 s2Step52ExitFvExtra ++ (shrinkRow 771 s2Step52ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step52ExitBank_rows]
  rfl
theorem s2Step53ExitBank_incomingDistinct : ([s2Step53ExitGRow,s2Step53ExitFRow,s2Step53ExitFvRow,s2Step53ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53ExitBank_outgoingOwned : rowsOwned s2Step53ExitGvAfter [s2Step53ExitGOut,s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step53ExitGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53ExitG_Incoming : rowsOwned s2Step53ExitGBefore [s2Step53ExitGRow,s2Step53ExitFRow,s2Step53ExitFvRow,s2Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53ExitGRow,s2Step53ExitFRow,s2Step53ExitFvRow,s2Step53ExitGvRow] 0 s2Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53ExitG_Outgoing : rowsOwned s2Step53ExitGvAfter [s2Step53ExitGOut,s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut] :=
  hmrRows_owned_drop s2Step53ExitGvAfter [s2Step53ExitGOut,s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut] 0 s2Step53ExitBank_outgoingOwned
theorem s2Step53ExitF_Incoming : rowsOwned s2Step53ExitFBefore [s2Step53ExitFRow,s2Step53ExitFvRow,s2Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53ExitGRow,s2Step53ExitFRow,s2Step53ExitFvRow,s2Step53ExitGvRow] 1 s2Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53ExitF_Outgoing : rowsOwned s2Step53ExitGvAfter [s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut] :=
  hmrRows_owned_drop s2Step53ExitGvAfter [s2Step53ExitGOut,s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut] 1 s2Step53ExitBank_outgoingOwned
theorem s2Step53ExitFv_Incoming : rowsOwned s2Step53ExitFvBefore [s2Step53ExitFvRow,s2Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53ExitGRow,s2Step53ExitFRow,s2Step53ExitFvRow,s2Step53ExitGvRow] 2 s2Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53ExitFv_Outgoing : rowsOwned s2Step53ExitGvAfter [s2Step53ExitFvOut,s2Step53ExitGvOut] :=
  hmrRows_owned_drop s2Step53ExitGvAfter [s2Step53ExitGOut,s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut] 2 s2Step53ExitBank_outgoingOwned
theorem s2Step53ExitGv_Incoming : rowsOwned s2Step53ExitGvBefore [s2Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step53ExitGRow,s2Step53ExitFRow,s2Step53ExitFvRow,s2Step53ExitGvRow] 3 s2Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step53ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
    decide +kernel
theorem s2Step53ExitGv_Outgoing : rowsOwned s2Step53ExitGvAfter [s2Step53ExitGvOut] :=
  hmrRows_owned_drop s2Step53ExitGvAfter [s2Step53ExitGOut,s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut] 3 s2Step53ExitBank_outgoingOwned
theorem s2Step53ExitBank_rows : planWindowRowsLog s2Step53ExitGBefore [(s2Step53ExitGRow,241),(s2Step53ExitFRow,241),(s2Step53ExitFvRow,40),(s2Step53ExitGvRow,39)] [[],[],[],[]]=
    some (s2Step53ExitGvAfter,[s2Step53ExitGOut,s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut],(shrinkRow 769 s2Step53ExitGExtra ++ (shrinkRow 768 s2Step53ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step53ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step53ExitGvAfter [] []=some (s2Step53ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step53ExitGvBefore s2Step53ExitGvAfter s2Step53ExitGvAfter
    s2Step53ExitGvRow s2Step53ExitGvOut 39 [] [] [] []
    (shrinkRow 771 s2Step53ExitGvExtra) ([]) s2Step53ExitGv_Incoming s2Step53ExitGv_checked h4 s2Step53ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step53ExitFvBefore s2Step53ExitFvAfter s2Step53ExitGvAfter
    s2Step53ExitFvRow s2Step53ExitFvOut 40 [] [(s2Step53ExitGvRow,39)] [[]] [s2Step53ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step53ExitGvExtra ++ [])) s2Step53ExitFv_Incoming s2Step53ExitFv_checked h3 s2Step53ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step53ExitFBefore s2Step53ExitFAfter s2Step53ExitGvAfter
    s2Step53ExitFRow s2Step53ExitFOut 241 [] [(s2Step53ExitFvRow,40),(s2Step53ExitGvRow,39)] [[],[]] [s2Step53ExitFvOut,s2Step53ExitGvOut]
    (shrinkRow 768 s2Step53ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step53ExitGvExtra ++ []))) s2Step53ExitF_Incoming s2Step53ExitF_checked h2 s2Step53ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step53ExitGBefore s2Step53ExitGAfter s2Step53ExitGvAfter
    s2Step53ExitGRow s2Step53ExitGOut 241 [] [(s2Step53ExitFRow,241),(s2Step53ExitFvRow,40),(s2Step53ExitGvRow,39)] [[],[],[]] [s2Step53ExitFOut,s2Step53ExitFvOut,s2Step53ExitGvOut]
    (shrinkRow 769 s2Step53ExitGExtra) ((shrinkRow 768 s2Step53ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step53ExitGvExtra ++ [])))) s2Step53ExitG_Incoming s2Step53ExitG_checked h1 s2Step53ExitG_Outgoing
  exact h0
theorem s2Step53ExitBank_checked : compileHmrBankResizeLog .exit s2Step53ExitGBefore ⟨s2Step53ExitFRow,s2Step53ExitGRow,s2Step53ExitFvRow,s2Step53ExitGvRow⟩ ⟨241,241,40,39⟩ [[],[],[],[]]=
    some (s2Step53ExitGvAfter,⟨s2Step53ExitFOut,s2Step53ExitGOut,s2Step53ExitFvOut,s2Step53ExitGvOut⟩,(shrinkRow 769 s2Step53ExitGExtra ++ (shrinkRow 768 s2Step53ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step53ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step53ExitBank_rows]
  rfl
theorem s2Step54ExitBank_incomingDistinct : ([s2Step54ExitGRow,s2Step54ExitFRow,s2Step54ExitFvRow,s2Step54ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54ExitBank_outgoingOwned : rowsOwned s2Step54ExitGvAfter [s2Step54ExitGOut,s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step54ExitGvAfter (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54ExitG_Incoming : rowsOwned s2Step54ExitGBefore [s2Step54ExitGRow,s2Step54ExitFRow,s2Step54ExitFvRow,s2Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54ExitGRow,s2Step54ExitFRow,s2Step54ExitFvRow,s2Step54ExitGvRow] 0 s2Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54ExitG_Outgoing : rowsOwned s2Step54ExitGvAfter [s2Step54ExitGOut,s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut] :=
  hmrRows_owned_drop s2Step54ExitGvAfter [s2Step54ExitGOut,s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut] 0 s2Step54ExitBank_outgoingOwned
theorem s2Step54ExitF_Incoming : rowsOwned s2Step54ExitFBefore [s2Step54ExitFRow,s2Step54ExitFvRow,s2Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54ExitGRow,s2Step54ExitFRow,s2Step54ExitFvRow,s2Step54ExitGvRow] 1 s2Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54ExitFBefore (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54ExitF_Outgoing : rowsOwned s2Step54ExitGvAfter [s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut] :=
  hmrRows_owned_drop s2Step54ExitGvAfter [s2Step54ExitGOut,s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut] 1 s2Step54ExitBank_outgoingOwned
theorem s2Step54ExitFv_Incoming : rowsOwned s2Step54ExitFvBefore [s2Step54ExitFvRow,s2Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54ExitGRow,s2Step54ExitFRow,s2Step54ExitFvRow,s2Step54ExitGvRow] 2 s2Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54ExitFvBefore (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54ExitFv_Outgoing : rowsOwned s2Step54ExitGvAfter [s2Step54ExitFvOut,s2Step54ExitGvOut] :=
  hmrRows_owned_drop s2Step54ExitGvAfter [s2Step54ExitGOut,s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut] 2 s2Step54ExitBank_outgoingOwned
theorem s2Step54ExitGv_Incoming : rowsOwned s2Step54ExitGvBefore [s2Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step54ExitGRow,s2Step54ExitFRow,s2Step54ExitFvRow,s2Step54ExitGvRow] 3 s2Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step54ExitGvBefore (fun q => (0≤q ∧ q<240) ∨ (241≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step54ExitGv_Outgoing : rowsOwned s2Step54ExitGvAfter [s2Step54ExitGvOut] :=
  hmrRows_owned_drop s2Step54ExitGvAfter [s2Step54ExitGOut,s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut] 3 s2Step54ExitBank_outgoingOwned
theorem s2Step54ExitBank_rows : planWindowRowsLog s2Step54ExitGBefore [(s2Step54ExitGRow,240),(s2Step54ExitFRow,241),(s2Step54ExitFvRow,41),(s2Step54ExitGvRow,40)] [[],[],[],[]]=
    some (s2Step54ExitGvAfter,[s2Step54ExitGOut,s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut],(shrinkRow 769 s2Step54ExitGExtra ++ (shrinkRow 768 s2Step54ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step54ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step54ExitGvAfter [] []=some (s2Step54ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step54ExitGvBefore s2Step54ExitGvAfter s2Step54ExitGvAfter
    s2Step54ExitGvRow s2Step54ExitGvOut 40 [] [] [] []
    (shrinkRow 771 s2Step54ExitGvExtra) ([]) s2Step54ExitGv_Incoming s2Step54ExitGv_checked h4 s2Step54ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step54ExitFvBefore s2Step54ExitFvAfter s2Step54ExitGvAfter
    s2Step54ExitFvRow s2Step54ExitFvOut 41 [] [(s2Step54ExitGvRow,40)] [[]] [s2Step54ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step54ExitGvExtra ++ [])) s2Step54ExitFv_Incoming s2Step54ExitFv_checked h3 s2Step54ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step54ExitFBefore s2Step54ExitFAfter s2Step54ExitGvAfter
    s2Step54ExitFRow s2Step54ExitFOut 241 [] [(s2Step54ExitFvRow,41),(s2Step54ExitGvRow,40)] [[],[]] [s2Step54ExitFvOut,s2Step54ExitGvOut]
    (shrinkRow 768 s2Step54ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step54ExitGvExtra ++ []))) s2Step54ExitF_Incoming s2Step54ExitF_checked h2 s2Step54ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step54ExitGBefore s2Step54ExitGAfter s2Step54ExitGvAfter
    s2Step54ExitGRow s2Step54ExitGOut 240 [] [(s2Step54ExitFRow,241),(s2Step54ExitFvRow,41),(s2Step54ExitGvRow,40)] [[],[],[]] [s2Step54ExitFOut,s2Step54ExitFvOut,s2Step54ExitGvOut]
    (shrinkRow 769 s2Step54ExitGExtra) ((shrinkRow 768 s2Step54ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step54ExitGvExtra ++ [])))) s2Step54ExitG_Incoming s2Step54ExitG_checked h1 s2Step54ExitG_Outgoing
  exact h0
theorem s2Step54ExitBank_checked : compileHmrBankResizeLog .exit s2Step54ExitGBefore ⟨s2Step54ExitFRow,s2Step54ExitGRow,s2Step54ExitFvRow,s2Step54ExitGvRow⟩ ⟨241,240,41,40⟩ [[],[],[],[]]=
    some (s2Step54ExitGvAfter,⟨s2Step54ExitFOut,s2Step54ExitGOut,s2Step54ExitFvOut,s2Step54ExitGvOut⟩,(shrinkRow 769 s2Step54ExitGExtra ++ (shrinkRow 768 s2Step54ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step54ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step54ExitBank_rows]
  rfl
theorem s2Step55ExitBank_incomingDistinct : ([s2Step55ExitGRow,s2Step55ExitFRow,s2Step55ExitFvRow,s2Step55ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55ExitBank_outgoingOwned : rowsOwned s2Step55ExitGvAfter [s2Step55ExitGOut,s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step55ExitGvAfter (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55ExitG_Incoming : rowsOwned s2Step55ExitGBefore [s2Step55ExitGRow,s2Step55ExitFRow,s2Step55ExitFvRow,s2Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55ExitGRow,s2Step55ExitFRow,s2Step55ExitFvRow,s2Step55ExitGvRow] 0 s2Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55ExitG_Outgoing : rowsOwned s2Step55ExitGvAfter [s2Step55ExitGOut,s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut] :=
  hmrRows_owned_drop s2Step55ExitGvAfter [s2Step55ExitGOut,s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut] 0 s2Step55ExitBank_outgoingOwned
theorem s2Step55ExitF_Incoming : rowsOwned s2Step55ExitFBefore [s2Step55ExitFRow,s2Step55ExitFvRow,s2Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55ExitGRow,s2Step55ExitFRow,s2Step55ExitFvRow,s2Step55ExitGvRow] 1 s2Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55ExitFBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55ExitF_Outgoing : rowsOwned s2Step55ExitGvAfter [s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut] :=
  hmrRows_owned_drop s2Step55ExitGvAfter [s2Step55ExitGOut,s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut] 1 s2Step55ExitBank_outgoingOwned
theorem s2Step55ExitFv_Incoming : rowsOwned s2Step55ExitFvBefore [s2Step55ExitFvRow,s2Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55ExitGRow,s2Step55ExitFRow,s2Step55ExitFvRow,s2Step55ExitGvRow] 2 s2Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55ExitFvBefore (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55ExitFv_Outgoing : rowsOwned s2Step55ExitGvAfter [s2Step55ExitFvOut,s2Step55ExitGvOut] :=
  hmrRows_owned_drop s2Step55ExitGvAfter [s2Step55ExitGOut,s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut] 2 s2Step55ExitBank_outgoingOwned
theorem s2Step55ExitGv_Incoming : rowsOwned s2Step55ExitGvBefore [s2Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step55ExitGRow,s2Step55ExitFRow,s2Step55ExitFvRow,s2Step55ExitGvRow] 3 s2Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step55ExitGvBefore (fun q => (0≤q ∧ q<752) ∨ (753≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
    decide +kernel
theorem s2Step55ExitGv_Outgoing : rowsOwned s2Step55ExitGvAfter [s2Step55ExitGvOut] :=
  hmrRows_owned_drop s2Step55ExitGvAfter [s2Step55ExitGOut,s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut] 3 s2Step55ExitBank_outgoingOwned
theorem s2Step55ExitBank_rows : planWindowRowsLog s2Step55ExitGBefore [(s2Step55ExitGRow,240),(s2Step55ExitFRow,240),(s2Step55ExitFvRow,40),(s2Step55ExitGvRow,41)] [[],[],[],[]]=
    some (s2Step55ExitGvAfter,[s2Step55ExitGOut,s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut],(shrinkRow 769 s2Step55ExitGExtra ++ (shrinkRow 768 s2Step55ExitFExtra ++ (shrinkRow 770 s2Step55ExitFvExtra ++ (shrinkRow 771 s2Step55ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step55ExitGvAfter [] []=some (s2Step55ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step55ExitGvBefore s2Step55ExitGvAfter s2Step55ExitGvAfter
    s2Step55ExitGvRow s2Step55ExitGvOut 41 [] [] [] []
    (shrinkRow 771 s2Step55ExitGvExtra) ([]) s2Step55ExitGv_Incoming s2Step55ExitGv_checked h4 s2Step55ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step55ExitFvBefore s2Step55ExitFvAfter s2Step55ExitGvAfter
    s2Step55ExitFvRow s2Step55ExitFvOut 40 [] [(s2Step55ExitGvRow,41)] [[]] [s2Step55ExitGvOut]
    (shrinkRow 770 s2Step55ExitFvExtra) ((shrinkRow 771 s2Step55ExitGvExtra ++ [])) s2Step55ExitFv_Incoming s2Step55ExitFv_checked h3 s2Step55ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step55ExitFBefore s2Step55ExitFAfter s2Step55ExitGvAfter
    s2Step55ExitFRow s2Step55ExitFOut 240 [] [(s2Step55ExitFvRow,40),(s2Step55ExitGvRow,41)] [[],[]] [s2Step55ExitFvOut,s2Step55ExitGvOut]
    (shrinkRow 768 s2Step55ExitFExtra) ((shrinkRow 770 s2Step55ExitFvExtra ++ (shrinkRow 771 s2Step55ExitGvExtra ++ []))) s2Step55ExitF_Incoming s2Step55ExitF_checked h2 s2Step55ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step55ExitGBefore s2Step55ExitGAfter s2Step55ExitGvAfter
    s2Step55ExitGRow s2Step55ExitGOut 240 [] [(s2Step55ExitFRow,240),(s2Step55ExitFvRow,40),(s2Step55ExitGvRow,41)] [[],[],[]] [s2Step55ExitFOut,s2Step55ExitFvOut,s2Step55ExitGvOut]
    (shrinkRow 769 s2Step55ExitGExtra) ((shrinkRow 768 s2Step55ExitFExtra ++ (shrinkRow 770 s2Step55ExitFvExtra ++ (shrinkRow 771 s2Step55ExitGvExtra ++ [])))) s2Step55ExitG_Incoming s2Step55ExitG_checked h1 s2Step55ExitG_Outgoing
  exact h0
theorem s2Step55ExitBank_checked : compileHmrBankResizeLog .exit s2Step55ExitGBefore ⟨s2Step55ExitFRow,s2Step55ExitGRow,s2Step55ExitFvRow,s2Step55ExitGvRow⟩ ⟨240,240,40,41⟩ [[],[],[],[]]=
    some (s2Step55ExitGvAfter,⟨s2Step55ExitFOut,s2Step55ExitGOut,s2Step55ExitFvOut,s2Step55ExitGvOut⟩,(shrinkRow 769 s2Step55ExitGExtra ++ (shrinkRow 768 s2Step55ExitFExtra ++ (shrinkRow 770 s2Step55ExitFvExtra ++ (shrinkRow 771 s2Step55ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step55ExitBank_rows]
  rfl
theorem s2Step56ExitBank_incomingDistinct : ([s2Step56ExitGRow,s2Step56ExitFRow,s2Step56ExitFvRow,s2Step56ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56ExitBank_outgoingOwned : rowsOwned s2Step56ExitGvAfter [s2Step56ExitGOut,s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step56ExitGvAfter (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56ExitG_Incoming : rowsOwned s2Step56ExitGBefore [s2Step56ExitGRow,s2Step56ExitFRow,s2Step56ExitFvRow,s2Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56ExitGRow,s2Step56ExitFRow,s2Step56ExitFvRow,s2Step56ExitGvRow] 0 s2Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56ExitGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56ExitG_Outgoing : rowsOwned s2Step56ExitGvAfter [s2Step56ExitGOut,s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut] :=
  hmrRows_owned_drop s2Step56ExitGvAfter [s2Step56ExitGOut,s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut] 0 s2Step56ExitBank_outgoingOwned
theorem s2Step56ExitF_Incoming : rowsOwned s2Step56ExitFBefore [s2Step56ExitFRow,s2Step56ExitFvRow,s2Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56ExitGRow,s2Step56ExitFRow,s2Step56ExitFvRow,s2Step56ExitGvRow] 1 s2Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56ExitFBefore (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56ExitF_Outgoing : rowsOwned s2Step56ExitGvAfter [s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut] :=
  hmrRows_owned_drop s2Step56ExitGvAfter [s2Step56ExitGOut,s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut] 1 s2Step56ExitBank_outgoingOwned
theorem s2Step56ExitFv_Incoming : rowsOwned s2Step56ExitFvBefore [s2Step56ExitFvRow,s2Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56ExitGRow,s2Step56ExitFRow,s2Step56ExitFvRow,s2Step56ExitGvRow] 2 s2Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56ExitFvBefore (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56ExitFv_Outgoing : rowsOwned s2Step56ExitGvAfter [s2Step56ExitFvOut,s2Step56ExitGvOut] :=
  hmrRows_owned_drop s2Step56ExitGvAfter [s2Step56ExitGOut,s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut] 2 s2Step56ExitBank_outgoingOwned
theorem s2Step56ExitGv_Incoming : rowsOwned s2Step56ExitGvBefore [s2Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step56ExitGRow,s2Step56ExitFRow,s2Step56ExitFvRow,s2Step56ExitGvRow] 3 s2Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step56ExitGvBefore (fun q => (0≤q ∧ q<239) ∨ (240≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step56ExitGv_Outgoing : rowsOwned s2Step56ExitGvAfter [s2Step56ExitGvOut] :=
  hmrRows_owned_drop s2Step56ExitGvAfter [s2Step56ExitGOut,s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut] 3 s2Step56ExitBank_outgoingOwned
theorem s2Step56ExitBank_rows : planWindowRowsLog s2Step56ExitGBefore [(s2Step56ExitGRow,239),(s2Step56ExitFRow,240),(s2Step56ExitFvRow,41),(s2Step56ExitGvRow,41)] [[],[],[],[]]=
    some (s2Step56ExitGvAfter,[s2Step56ExitGOut,s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut],(shrinkRow 769 s2Step56ExitGExtra ++ (shrinkRow 768 s2Step56ExitFExtra ++ (shrinkRow 770 s2Step56ExitFvExtra ++ (shrinkRow 771 s2Step56ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step56ExitGvAfter [] []=some (s2Step56ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step56ExitGvBefore s2Step56ExitGvAfter s2Step56ExitGvAfter
    s2Step56ExitGvRow s2Step56ExitGvOut 41 [] [] [] []
    (shrinkRow 771 s2Step56ExitGvExtra) ([]) s2Step56ExitGv_Incoming s2Step56ExitGv_checked h4 s2Step56ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step56ExitFvBefore s2Step56ExitFvAfter s2Step56ExitGvAfter
    s2Step56ExitFvRow s2Step56ExitFvOut 41 [] [(s2Step56ExitGvRow,41)] [[]] [s2Step56ExitGvOut]
    (shrinkRow 770 s2Step56ExitFvExtra) ((shrinkRow 771 s2Step56ExitGvExtra ++ [])) s2Step56ExitFv_Incoming s2Step56ExitFv_checked h3 s2Step56ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step56ExitFBefore s2Step56ExitFAfter s2Step56ExitGvAfter
    s2Step56ExitFRow s2Step56ExitFOut 240 [] [(s2Step56ExitFvRow,41),(s2Step56ExitGvRow,41)] [[],[]] [s2Step56ExitFvOut,s2Step56ExitGvOut]
    (shrinkRow 768 s2Step56ExitFExtra) ((shrinkRow 770 s2Step56ExitFvExtra ++ (shrinkRow 771 s2Step56ExitGvExtra ++ []))) s2Step56ExitF_Incoming s2Step56ExitF_checked h2 s2Step56ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step56ExitGBefore s2Step56ExitGAfter s2Step56ExitGvAfter
    s2Step56ExitGRow s2Step56ExitGOut 239 [] [(s2Step56ExitFRow,240),(s2Step56ExitFvRow,41),(s2Step56ExitGvRow,41)] [[],[],[]] [s2Step56ExitFOut,s2Step56ExitFvOut,s2Step56ExitGvOut]
    (shrinkRow 769 s2Step56ExitGExtra) ((shrinkRow 768 s2Step56ExitFExtra ++ (shrinkRow 770 s2Step56ExitFvExtra ++ (shrinkRow 771 s2Step56ExitGvExtra ++ [])))) s2Step56ExitG_Incoming s2Step56ExitG_checked h1 s2Step56ExitG_Outgoing
  exact h0
theorem s2Step56ExitBank_checked : compileHmrBankResizeLog .exit s2Step56ExitGBefore ⟨s2Step56ExitFRow,s2Step56ExitGRow,s2Step56ExitFvRow,s2Step56ExitGvRow⟩ ⟨240,239,41,41⟩ [[],[],[],[]]=
    some (s2Step56ExitGvAfter,⟨s2Step56ExitFOut,s2Step56ExitGOut,s2Step56ExitFvOut,s2Step56ExitGvOut⟩,(shrinkRow 769 s2Step56ExitGExtra ++ (shrinkRow 768 s2Step56ExitFExtra ++ (shrinkRow 770 s2Step56ExitFvExtra ++ (shrinkRow 771 s2Step56ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step56ExitBank_rows]
  rfl
theorem s2Step57ExitBank_incomingDistinct : ([s2Step57ExitGRow,s2Step57ExitFRow,s2Step57ExitFvRow,s2Step57ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57ExitBank_outgoingOwned : rowsOwned s2Step57ExitGvAfter [s2Step57ExitGOut,s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step57ExitGvAfter (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57ExitG_Incoming : rowsOwned s2Step57ExitGBefore [s2Step57ExitGRow,s2Step57ExitFRow,s2Step57ExitFvRow,s2Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57ExitGRow,s2Step57ExitFRow,s2Step57ExitFvRow,s2Step57ExitGvRow] 0 s2Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57ExitGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57ExitG_Outgoing : rowsOwned s2Step57ExitGvAfter [s2Step57ExitGOut,s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut] :=
  hmrRows_owned_drop s2Step57ExitGvAfter [s2Step57ExitGOut,s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut] 0 s2Step57ExitBank_outgoingOwned
theorem s2Step57ExitF_Incoming : rowsOwned s2Step57ExitFBefore [s2Step57ExitFRow,s2Step57ExitFvRow,s2Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57ExitGRow,s2Step57ExitFRow,s2Step57ExitFvRow,s2Step57ExitGvRow] 1 s2Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57ExitFBefore (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57ExitF_Outgoing : rowsOwned s2Step57ExitGvAfter [s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut] :=
  hmrRows_owned_drop s2Step57ExitGvAfter [s2Step57ExitGOut,s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut] 1 s2Step57ExitBank_outgoingOwned
theorem s2Step57ExitFv_Incoming : rowsOwned s2Step57ExitFvBefore [s2Step57ExitFvRow,s2Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57ExitGRow,s2Step57ExitFRow,s2Step57ExitFvRow,s2Step57ExitGvRow] 2 s2Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57ExitFvBefore (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57ExitFv_Outgoing : rowsOwned s2Step57ExitGvAfter [s2Step57ExitFvOut,s2Step57ExitGvOut] :=
  hmrRows_owned_drop s2Step57ExitGvAfter [s2Step57ExitGOut,s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut] 2 s2Step57ExitBank_outgoingOwned
theorem s2Step57ExitGv_Incoming : rowsOwned s2Step57ExitGvBefore [s2Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step57ExitGRow,s2Step57ExitFRow,s2Step57ExitFvRow,s2Step57ExitGvRow] 3 s2Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step57ExitGvBefore (fun q => (0≤q ∧ q<238) ∨ (239≤q ∧ q<751) ∨ (752≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (809≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step57ExitGv_Outgoing : rowsOwned s2Step57ExitGvAfter [s2Step57ExitGvOut] :=
  hmrRows_owned_drop s2Step57ExitGvAfter [s2Step57ExitGOut,s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut] 3 s2Step57ExitBank_outgoingOwned
theorem s2Step57ExitBank_rows : planWindowRowsLog s2Step57ExitGBefore [(s2Step57ExitGRow,238),(s2Step57ExitFRow,239),(s2Step57ExitFvRow,41),(s2Step57ExitGvRow,41)] [[],[],[],[]]=
    some (s2Step57ExitGvAfter,[s2Step57ExitGOut,s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut],(shrinkRow 769 s2Step57ExitGExtra ++ (shrinkRow 768 s2Step57ExitFExtra ++ (shrinkRow 770 s2Step57ExitFvExtra ++ (shrinkRow 771 s2Step57ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step57ExitGvAfter [] []=some (s2Step57ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step57ExitGvBefore s2Step57ExitGvAfter s2Step57ExitGvAfter
    s2Step57ExitGvRow s2Step57ExitGvOut 41 [] [] [] []
    (shrinkRow 771 s2Step57ExitGvExtra) ([]) s2Step57ExitGv_Incoming s2Step57ExitGv_checked h4 s2Step57ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step57ExitFvBefore s2Step57ExitFvAfter s2Step57ExitGvAfter
    s2Step57ExitFvRow s2Step57ExitFvOut 41 [] [(s2Step57ExitGvRow,41)] [[]] [s2Step57ExitGvOut]
    (shrinkRow 770 s2Step57ExitFvExtra) ((shrinkRow 771 s2Step57ExitGvExtra ++ [])) s2Step57ExitFv_Incoming s2Step57ExitFv_checked h3 s2Step57ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step57ExitFBefore s2Step57ExitFAfter s2Step57ExitGvAfter
    s2Step57ExitFRow s2Step57ExitFOut 239 [] [(s2Step57ExitFvRow,41),(s2Step57ExitGvRow,41)] [[],[]] [s2Step57ExitFvOut,s2Step57ExitGvOut]
    (shrinkRow 768 s2Step57ExitFExtra) ((shrinkRow 770 s2Step57ExitFvExtra ++ (shrinkRow 771 s2Step57ExitGvExtra ++ []))) s2Step57ExitF_Incoming s2Step57ExitF_checked h2 s2Step57ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step57ExitGBefore s2Step57ExitGAfter s2Step57ExitGvAfter
    s2Step57ExitGRow s2Step57ExitGOut 238 [] [(s2Step57ExitFRow,239),(s2Step57ExitFvRow,41),(s2Step57ExitGvRow,41)] [[],[],[]] [s2Step57ExitFOut,s2Step57ExitFvOut,s2Step57ExitGvOut]
    (shrinkRow 769 s2Step57ExitGExtra) ((shrinkRow 768 s2Step57ExitFExtra ++ (shrinkRow 770 s2Step57ExitFvExtra ++ (shrinkRow 771 s2Step57ExitGvExtra ++ [])))) s2Step57ExitG_Incoming s2Step57ExitG_checked h1 s2Step57ExitG_Outgoing
  exact h0
theorem s2Step57ExitBank_checked : compileHmrBankResizeLog .exit s2Step57ExitGBefore ⟨s2Step57ExitFRow,s2Step57ExitGRow,s2Step57ExitFvRow,s2Step57ExitGvRow⟩ ⟨239,238,41,41⟩ [[],[],[],[]]=
    some (s2Step57ExitGvAfter,⟨s2Step57ExitFOut,s2Step57ExitGOut,s2Step57ExitFvOut,s2Step57ExitGvOut⟩,(shrinkRow 769 s2Step57ExitGExtra ++ (shrinkRow 768 s2Step57ExitFExtra ++ (shrinkRow 770 s2Step57ExitFvExtra ++ (shrinkRow 771 s2Step57ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step57ExitBank_rows]
  rfl
theorem s2Step58ExitBank_incomingDistinct : ([s2Step58ExitGRow,s2Step58ExitFRow,s2Step58ExitFvRow,s2Step58ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58ExitBank_outgoingOwned : rowsOwned s2Step58ExitGvAfter [s2Step58ExitGOut,s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step58ExitGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58ExitG_Incoming : rowsOwned s2Step58ExitGBefore [s2Step58ExitGRow,s2Step58ExitFRow,s2Step58ExitFvRow,s2Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58ExitGRow,s2Step58ExitFRow,s2Step58ExitFvRow,s2Step58ExitGvRow] 0 s2Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58ExitG_Outgoing : rowsOwned s2Step58ExitGvAfter [s2Step58ExitGOut,s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut] :=
  hmrRows_owned_drop s2Step58ExitGvAfter [s2Step58ExitGOut,s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut] 0 s2Step58ExitBank_outgoingOwned
theorem s2Step58ExitF_Incoming : rowsOwned s2Step58ExitFBefore [s2Step58ExitFRow,s2Step58ExitFvRow,s2Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58ExitGRow,s2Step58ExitFRow,s2Step58ExitFvRow,s2Step58ExitGvRow] 1 s2Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58ExitF_Outgoing : rowsOwned s2Step58ExitGvAfter [s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut] :=
  hmrRows_owned_drop s2Step58ExitGvAfter [s2Step58ExitGOut,s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut] 1 s2Step58ExitBank_outgoingOwned
theorem s2Step58ExitFv_Incoming : rowsOwned s2Step58ExitFvBefore [s2Step58ExitFvRow,s2Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58ExitGRow,s2Step58ExitFRow,s2Step58ExitFvRow,s2Step58ExitGvRow] 2 s2Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58ExitFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58ExitFv_Outgoing : rowsOwned s2Step58ExitGvAfter [s2Step58ExitFvOut,s2Step58ExitGvOut] :=
  hmrRows_owned_drop s2Step58ExitGvAfter [s2Step58ExitGOut,s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut] 2 s2Step58ExitBank_outgoingOwned
theorem s2Step58ExitGv_Incoming : rowsOwned s2Step58ExitGvBefore [s2Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step58ExitGRow,s2Step58ExitFRow,s2Step58ExitFvRow,s2Step58ExitGvRow] 3 s2Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step58ExitGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step58ExitGv_Outgoing : rowsOwned s2Step58ExitGvAfter [s2Step58ExitGvOut] :=
  hmrRows_owned_drop s2Step58ExitGvAfter [s2Step58ExitGOut,s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut] 3 s2Step58ExitBank_outgoingOwned
theorem s2Step58ExitBank_rows : planWindowRowsLog s2Step58ExitGBefore [(s2Step58ExitGRow,238),(s2Step58ExitFRow,239),(s2Step58ExitFvRow,42),(s2Step58ExitGvRow,41)] [[],[],[],[]]=
    some (s2Step58ExitGvAfter,[s2Step58ExitGOut,s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut],(shrinkRow 769 s2Step58ExitGExtra ++ (shrinkRow 768 s2Step58ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step58ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step58ExitGvAfter [] []=some (s2Step58ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step58ExitGvBefore s2Step58ExitGvAfter s2Step58ExitGvAfter
    s2Step58ExitGvRow s2Step58ExitGvOut 41 [] [] [] []
    (shrinkRow 771 s2Step58ExitGvExtra) ([]) s2Step58ExitGv_Incoming s2Step58ExitGv_checked h4 s2Step58ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step58ExitFvBefore s2Step58ExitFvAfter s2Step58ExitGvAfter
    s2Step58ExitFvRow s2Step58ExitFvOut 42 [] [(s2Step58ExitGvRow,41)] [[]] [s2Step58ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step58ExitGvExtra ++ [])) s2Step58ExitFv_Incoming s2Step58ExitFv_checked h3 s2Step58ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step58ExitFBefore s2Step58ExitFAfter s2Step58ExitGvAfter
    s2Step58ExitFRow s2Step58ExitFOut 239 [] [(s2Step58ExitFvRow,42),(s2Step58ExitGvRow,41)] [[],[]] [s2Step58ExitFvOut,s2Step58ExitGvOut]
    (shrinkRow 768 s2Step58ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step58ExitGvExtra ++ []))) s2Step58ExitF_Incoming s2Step58ExitF_checked h2 s2Step58ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step58ExitGBefore s2Step58ExitGAfter s2Step58ExitGvAfter
    s2Step58ExitGRow s2Step58ExitGOut 238 [] [(s2Step58ExitFRow,239),(s2Step58ExitFvRow,42),(s2Step58ExitGvRow,41)] [[],[],[]] [s2Step58ExitFOut,s2Step58ExitFvOut,s2Step58ExitGvOut]
    (shrinkRow 769 s2Step58ExitGExtra) ((shrinkRow 768 s2Step58ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step58ExitGvExtra ++ [])))) s2Step58ExitG_Incoming s2Step58ExitG_checked h1 s2Step58ExitG_Outgoing
  exact h0
theorem s2Step58ExitBank_checked : compileHmrBankResizeLog .exit s2Step58ExitGBefore ⟨s2Step58ExitFRow,s2Step58ExitGRow,s2Step58ExitFvRow,s2Step58ExitGvRow⟩ ⟨239,238,42,41⟩ [[],[],[],[]]=
    some (s2Step58ExitGvAfter,⟨s2Step58ExitFOut,s2Step58ExitGOut,s2Step58ExitFvOut,s2Step58ExitGvOut⟩,(shrinkRow 769 s2Step58ExitGExtra ++ (shrinkRow 768 s2Step58ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step58ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step58ExitBank_rows]
  rfl
theorem s2Step59ExitBank_incomingDistinct : ([s2Step59ExitGRow,s2Step59ExitFRow,s2Step59ExitFvRow,s2Step59ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59ExitBank_outgoingOwned : rowsOwned s2Step59ExitGvAfter [s2Step59ExitGOut,s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step59ExitGvAfter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59ExitG_Incoming : rowsOwned s2Step59ExitGBefore [s2Step59ExitGRow,s2Step59ExitFRow,s2Step59ExitFvRow,s2Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59ExitGRow,s2Step59ExitFRow,s2Step59ExitFvRow,s2Step59ExitGvRow] 0 s2Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59ExitGBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59ExitG_Outgoing : rowsOwned s2Step59ExitGvAfter [s2Step59ExitGOut,s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut] :=
  hmrRows_owned_drop s2Step59ExitGvAfter [s2Step59ExitGOut,s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut] 0 s2Step59ExitBank_outgoingOwned
theorem s2Step59ExitF_Incoming : rowsOwned s2Step59ExitFBefore [s2Step59ExitFRow,s2Step59ExitFvRow,s2Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59ExitGRow,s2Step59ExitFRow,s2Step59ExitFvRow,s2Step59ExitGvRow] 1 s2Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59ExitFBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59ExitF_Outgoing : rowsOwned s2Step59ExitGvAfter [s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut] :=
  hmrRows_owned_drop s2Step59ExitGvAfter [s2Step59ExitGOut,s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut] 1 s2Step59ExitBank_outgoingOwned
theorem s2Step59ExitFv_Incoming : rowsOwned s2Step59ExitFvBefore [s2Step59ExitFvRow,s2Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59ExitGRow,s2Step59ExitFRow,s2Step59ExitFvRow,s2Step59ExitGvRow] 2 s2Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59ExitFvBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59ExitFv_Outgoing : rowsOwned s2Step59ExitGvAfter [s2Step59ExitFvOut,s2Step59ExitGvOut] :=
  hmrRows_owned_drop s2Step59ExitGvAfter [s2Step59ExitGOut,s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut] 2 s2Step59ExitBank_outgoingOwned
theorem s2Step59ExitGv_Incoming : rowsOwned s2Step59ExitGvBefore [s2Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step59ExitGRow,s2Step59ExitFRow,s2Step59ExitFvRow,s2Step59ExitGvRow] 3 s2Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step59ExitGvBefore (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<816) ∨ (818≤q ∧ q<820) ∨ (821≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step59ExitGv_Outgoing : rowsOwned s2Step59ExitGvAfter [s2Step59ExitGvOut] :=
  hmrRows_owned_drop s2Step59ExitGvAfter [s2Step59ExitGOut,s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut] 3 s2Step59ExitBank_outgoingOwned
theorem s2Step59ExitBank_rows : planWindowRowsLog s2Step59ExitGBefore [(s2Step59ExitGRow,238),(s2Step59ExitFRow,239),(s2Step59ExitFvRow,43),(s2Step59ExitGvRow,42)] [[],[],[],[]]=
    some (s2Step59ExitGvAfter,[s2Step59ExitGOut,s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut],(shrinkRow 769 s2Step59ExitGExtra ++ (shrinkRow 768 s2Step59ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step59ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step59ExitGvAfter [] []=some (s2Step59ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step59ExitGvBefore s2Step59ExitGvAfter s2Step59ExitGvAfter
    s2Step59ExitGvRow s2Step59ExitGvOut 42 [] [] [] []
    (shrinkRow 771 s2Step59ExitGvExtra) ([]) s2Step59ExitGv_Incoming s2Step59ExitGv_checked h4 s2Step59ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step59ExitFvBefore s2Step59ExitFvAfter s2Step59ExitGvAfter
    s2Step59ExitFvRow s2Step59ExitFvOut 43 [] [(s2Step59ExitGvRow,42)] [[]] [s2Step59ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step59ExitGvExtra ++ [])) s2Step59ExitFv_Incoming s2Step59ExitFv_checked h3 s2Step59ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step59ExitFBefore s2Step59ExitFAfter s2Step59ExitGvAfter
    s2Step59ExitFRow s2Step59ExitFOut 239 [] [(s2Step59ExitFvRow,43),(s2Step59ExitGvRow,42)] [[],[]] [s2Step59ExitFvOut,s2Step59ExitGvOut]
    (shrinkRow 768 s2Step59ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step59ExitGvExtra ++ []))) s2Step59ExitF_Incoming s2Step59ExitF_checked h2 s2Step59ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step59ExitGBefore s2Step59ExitGAfter s2Step59ExitGvAfter
    s2Step59ExitGRow s2Step59ExitGOut 238 [] [(s2Step59ExitFRow,239),(s2Step59ExitFvRow,43),(s2Step59ExitGvRow,42)] [[],[],[]] [s2Step59ExitFOut,s2Step59ExitFvOut,s2Step59ExitGvOut]
    (shrinkRow 769 s2Step59ExitGExtra) ((shrinkRow 768 s2Step59ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step59ExitGvExtra ++ [])))) s2Step59ExitG_Incoming s2Step59ExitG_checked h1 s2Step59ExitG_Outgoing
  exact h0
theorem s2Step59ExitBank_checked : compileHmrBankResizeLog .exit s2Step59ExitGBefore ⟨s2Step59ExitFRow,s2Step59ExitGRow,s2Step59ExitFvRow,s2Step59ExitGvRow⟩ ⟨239,238,43,42⟩ [[],[],[],[]]=
    some (s2Step59ExitGvAfter,⟨s2Step59ExitFOut,s2Step59ExitGOut,s2Step59ExitFvOut,s2Step59ExitGvOut⟩,(shrinkRow 769 s2Step59ExitGExtra ++ (shrinkRow 768 s2Step59ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step59ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step59ExitBank_rows]
  rfl
theorem s2Step60ExitBank_incomingDistinct : ([s2Step60ExitGRow,s2Step60ExitFRow,s2Step60ExitFvRow,s2Step60ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60ExitBank_outgoingOwned : rowsOwned s2Step60ExitGvAfter [s2Step60ExitGOut,s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step60ExitGvAfter (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60ExitG_Incoming : rowsOwned s2Step60ExitGBefore [s2Step60ExitGRow,s2Step60ExitFRow,s2Step60ExitFvRow,s2Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60ExitGRow,s2Step60ExitFRow,s2Step60ExitFvRow,s2Step60ExitGvRow] 0 s2Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60ExitG_Outgoing : rowsOwned s2Step60ExitGvAfter [s2Step60ExitGOut,s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut] :=
  hmrRows_owned_drop s2Step60ExitGvAfter [s2Step60ExitGOut,s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut] 0 s2Step60ExitBank_outgoingOwned
theorem s2Step60ExitF_Incoming : rowsOwned s2Step60ExitFBefore [s2Step60ExitFRow,s2Step60ExitFvRow,s2Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60ExitGRow,s2Step60ExitFRow,s2Step60ExitFvRow,s2Step60ExitGvRow] 1 s2Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60ExitFBefore (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (817≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60ExitF_Outgoing : rowsOwned s2Step60ExitGvAfter [s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut] :=
  hmrRows_owned_drop s2Step60ExitGvAfter [s2Step60ExitGOut,s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut] 1 s2Step60ExitBank_outgoingOwned
theorem s2Step60ExitFv_Incoming : rowsOwned s2Step60ExitFvBefore [s2Step60ExitFvRow,s2Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60ExitGRow,s2Step60ExitFRow,s2Step60ExitFvRow,s2Step60ExitGvRow] 2 s2Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60ExitFvBefore (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60ExitFv_Outgoing : rowsOwned s2Step60ExitGvAfter [s2Step60ExitFvOut,s2Step60ExitGvOut] :=
  hmrRows_owned_drop s2Step60ExitGvAfter [s2Step60ExitGOut,s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut] 2 s2Step60ExitBank_outgoingOwned
theorem s2Step60ExitGv_Incoming : rowsOwned s2Step60ExitGvBefore [s2Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step60ExitGRow,s2Step60ExitFRow,s2Step60ExitFvRow,s2Step60ExitGvRow] 3 s2Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step60ExitGvBefore (fun q => (0≤q ∧ q<237) ∨ (238≤q ∧ q<790) ∨ (791≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step60ExitGv_Outgoing : rowsOwned s2Step60ExitGvAfter [s2Step60ExitGvOut] :=
  hmrRows_owned_drop s2Step60ExitGvAfter [s2Step60ExitGOut,s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut] 3 s2Step60ExitBank_outgoingOwned
theorem s2Step60ExitBank_rows : planWindowRowsLog s2Step60ExitGBefore [(s2Step60ExitGRow,237),(s2Step60ExitFRow,239),(s2Step60ExitFvRow,44),(s2Step60ExitGvRow,43)] [[],[],[],[]]=
    some (s2Step60ExitGvAfter,[s2Step60ExitGOut,s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut],(shrinkRow 769 s2Step60ExitGExtra ++ (shrinkRow 768 s2Step60ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step60ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step60ExitGvAfter [] []=some (s2Step60ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step60ExitGvBefore s2Step60ExitGvAfter s2Step60ExitGvAfter
    s2Step60ExitGvRow s2Step60ExitGvOut 43 [] [] [] []
    (shrinkRow 771 s2Step60ExitGvExtra) ([]) s2Step60ExitGv_Incoming s2Step60ExitGv_checked h4 s2Step60ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step60ExitFvBefore s2Step60ExitFvAfter s2Step60ExitGvAfter
    s2Step60ExitFvRow s2Step60ExitFvOut 44 [] [(s2Step60ExitGvRow,43)] [[]] [s2Step60ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step60ExitGvExtra ++ [])) s2Step60ExitFv_Incoming s2Step60ExitFv_checked h3 s2Step60ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step60ExitFBefore s2Step60ExitFAfter s2Step60ExitGvAfter
    s2Step60ExitFRow s2Step60ExitFOut 239 [] [(s2Step60ExitFvRow,44),(s2Step60ExitGvRow,43)] [[],[]] [s2Step60ExitFvOut,s2Step60ExitGvOut]
    (shrinkRow 768 s2Step60ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step60ExitGvExtra ++ []))) s2Step60ExitF_Incoming s2Step60ExitF_checked h2 s2Step60ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step60ExitGBefore s2Step60ExitGAfter s2Step60ExitGvAfter
    s2Step60ExitGRow s2Step60ExitGOut 237 [] [(s2Step60ExitFRow,239),(s2Step60ExitFvRow,44),(s2Step60ExitGvRow,43)] [[],[],[]] [s2Step60ExitFOut,s2Step60ExitFvOut,s2Step60ExitGvOut]
    (shrinkRow 769 s2Step60ExitGExtra) ((shrinkRow 768 s2Step60ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step60ExitGvExtra ++ [])))) s2Step60ExitG_Incoming s2Step60ExitG_checked h1 s2Step60ExitG_Outgoing
  exact h0
theorem s2Step60ExitBank_checked : compileHmrBankResizeLog .exit s2Step60ExitGBefore ⟨s2Step60ExitFRow,s2Step60ExitGRow,s2Step60ExitFvRow,s2Step60ExitGvRow⟩ ⟨239,237,44,43⟩ [[],[],[],[]]=
    some (s2Step60ExitGvAfter,⟨s2Step60ExitFOut,s2Step60ExitGOut,s2Step60ExitFvOut,s2Step60ExitGvOut⟩,(shrinkRow 769 s2Step60ExitGExtra ++ (shrinkRow 768 s2Step60ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step60ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step60ExitBank_rows]
  rfl
theorem s2Step61ExitBank_incomingDistinct : ([s2Step61ExitGRow,s2Step61ExitFRow,s2Step61ExitFvRow,s2Step61ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61ExitBank_outgoingOwned : rowsOwned s2Step61ExitGvAfter [s2Step61ExitGOut,s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step61ExitGvAfter (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<822) ∨ (823≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61ExitG_Incoming : rowsOwned s2Step61ExitGBefore [s2Step61ExitGRow,s2Step61ExitFRow,s2Step61ExitFvRow,s2Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61ExitGRow,s2Step61ExitFRow,s2Step61ExitFvRow,s2Step61ExitGvRow] 0 s2Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61ExitG_Outgoing : rowsOwned s2Step61ExitGvAfter [s2Step61ExitGOut,s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut] :=
  hmrRows_owned_drop s2Step61ExitGvAfter [s2Step61ExitGOut,s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut] 0 s2Step61ExitBank_outgoingOwned
theorem s2Step61ExitF_Incoming : rowsOwned s2Step61ExitFBefore [s2Step61ExitFRow,s2Step61ExitFvRow,s2Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61ExitGRow,s2Step61ExitFRow,s2Step61ExitFvRow,s2Step61ExitGvRow] 1 s2Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61ExitF_Outgoing : rowsOwned s2Step61ExitGvAfter [s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut] :=
  hmrRows_owned_drop s2Step61ExitGvAfter [s2Step61ExitGOut,s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut] 1 s2Step61ExitBank_outgoingOwned
theorem s2Step61ExitFv_Incoming : rowsOwned s2Step61ExitFvBefore [s2Step61ExitFvRow,s2Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61ExitGRow,s2Step61ExitFRow,s2Step61ExitFvRow,s2Step61ExitGvRow] 2 s2Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61ExitFvBefore (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61ExitFv_Outgoing : rowsOwned s2Step61ExitGvAfter [s2Step61ExitFvOut,s2Step61ExitGvOut] :=
  hmrRows_owned_drop s2Step61ExitGvAfter [s2Step61ExitGOut,s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut] 2 s2Step61ExitBank_outgoingOwned
theorem s2Step61ExitGv_Incoming : rowsOwned s2Step61ExitGvBefore [s2Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step61ExitGRow,s2Step61ExitFRow,s2Step61ExitFvRow,s2Step61ExitGvRow] 3 s2Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step61ExitGvBefore (fun q => (0≤q ∧ q<750) ∨ (751≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<820) ∨ (821≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step61ExitGv_Outgoing : rowsOwned s2Step61ExitGvAfter [s2Step61ExitGvOut] :=
  hmrRows_owned_drop s2Step61ExitGvAfter [s2Step61ExitGOut,s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut] 3 s2Step61ExitBank_outgoingOwned
theorem s2Step61ExitBank_rows : planWindowRowsLog s2Step61ExitGBefore [(s2Step61ExitGRow,237),(s2Step61ExitFRow,238),(s2Step61ExitFvRow,44),(s2Step61ExitGvRow,43)] [[],[],[],[]]=
    some (s2Step61ExitGvAfter,[s2Step61ExitGOut,s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut],(shrinkRow 769 s2Step61ExitGExtra ++ (shrinkRow 768 s2Step61ExitFExtra ++ (shrinkRow 770 s2Step61ExitFvExtra ++ (shrinkRow 771 s2Step61ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step61ExitGvAfter [] []=some (s2Step61ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step61ExitGvBefore s2Step61ExitGvAfter s2Step61ExitGvAfter
    s2Step61ExitGvRow s2Step61ExitGvOut 43 [] [] [] []
    (shrinkRow 771 s2Step61ExitGvExtra) ([]) s2Step61ExitGv_Incoming s2Step61ExitGv_checked h4 s2Step61ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step61ExitFvBefore s2Step61ExitFvAfter s2Step61ExitGvAfter
    s2Step61ExitFvRow s2Step61ExitFvOut 44 [] [(s2Step61ExitGvRow,43)] [[]] [s2Step61ExitGvOut]
    (shrinkRow 770 s2Step61ExitFvExtra) ((shrinkRow 771 s2Step61ExitGvExtra ++ [])) s2Step61ExitFv_Incoming s2Step61ExitFv_checked h3 s2Step61ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step61ExitFBefore s2Step61ExitFAfter s2Step61ExitGvAfter
    s2Step61ExitFRow s2Step61ExitFOut 238 [] [(s2Step61ExitFvRow,44),(s2Step61ExitGvRow,43)] [[],[]] [s2Step61ExitFvOut,s2Step61ExitGvOut]
    (shrinkRow 768 s2Step61ExitFExtra) ((shrinkRow 770 s2Step61ExitFvExtra ++ (shrinkRow 771 s2Step61ExitGvExtra ++ []))) s2Step61ExitF_Incoming s2Step61ExitF_checked h2 s2Step61ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step61ExitGBefore s2Step61ExitGAfter s2Step61ExitGvAfter
    s2Step61ExitGRow s2Step61ExitGOut 237 [] [(s2Step61ExitFRow,238),(s2Step61ExitFvRow,44),(s2Step61ExitGvRow,43)] [[],[],[]] [s2Step61ExitFOut,s2Step61ExitFvOut,s2Step61ExitGvOut]
    (shrinkRow 769 s2Step61ExitGExtra) ((shrinkRow 768 s2Step61ExitFExtra ++ (shrinkRow 770 s2Step61ExitFvExtra ++ (shrinkRow 771 s2Step61ExitGvExtra ++ [])))) s2Step61ExitG_Incoming s2Step61ExitG_checked h1 s2Step61ExitG_Outgoing
  exact h0
theorem s2Step61ExitBank_checked : compileHmrBankResizeLog .exit s2Step61ExitGBefore ⟨s2Step61ExitFRow,s2Step61ExitGRow,s2Step61ExitFvRow,s2Step61ExitGvRow⟩ ⟨238,237,44,43⟩ [[],[],[],[]]=
    some (s2Step61ExitGvAfter,⟨s2Step61ExitFOut,s2Step61ExitGOut,s2Step61ExitFvOut,s2Step61ExitGvOut⟩,(shrinkRow 769 s2Step61ExitGExtra ++ (shrinkRow 768 s2Step61ExitFExtra ++ (shrinkRow 770 s2Step61ExitFvExtra ++ (shrinkRow 771 s2Step61ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step61ExitBank_rows]
  rfl
theorem s2Step62ExitBank_incomingDistinct : ([s2Step62ExitGRow,s2Step62ExitFRow,s2Step62ExitFvRow,s2Step62ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62ExitBank_outgoingOwned : rowsOwned s2Step62ExitGvAfter [s2Step62ExitGOut,s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step62ExitGvAfter (fun q => (0≤q ∧ q<749) ∨ (750≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62ExitG_Incoming : rowsOwned s2Step62ExitGBefore [s2Step62ExitGRow,s2Step62ExitFRow,s2Step62ExitFvRow,s2Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62ExitGRow,s2Step62ExitFRow,s2Step62ExitFvRow,s2Step62ExitGvRow] 0 s2Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62ExitG_Outgoing : rowsOwned s2Step62ExitGvAfter [s2Step62ExitGOut,s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut] :=
  hmrRows_owned_drop s2Step62ExitGvAfter [s2Step62ExitGOut,s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut] 0 s2Step62ExitBank_outgoingOwned
theorem s2Step62ExitF_Incoming : rowsOwned s2Step62ExitFBefore [s2Step62ExitFRow,s2Step62ExitFvRow,s2Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62ExitGRow,s2Step62ExitFRow,s2Step62ExitFvRow,s2Step62ExitGvRow] 1 s2Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62ExitF_Outgoing : rowsOwned s2Step62ExitGvAfter [s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut] :=
  hmrRows_owned_drop s2Step62ExitGvAfter [s2Step62ExitGOut,s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut] 1 s2Step62ExitBank_outgoingOwned
theorem s2Step62ExitFv_Incoming : rowsOwned s2Step62ExitFvBefore [s2Step62ExitFvRow,s2Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62ExitGRow,s2Step62ExitFRow,s2Step62ExitFvRow,s2Step62ExitGvRow] 2 s2Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62ExitFvBefore (fun q => (0≤q ∧ q<749) ∨ (750≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62ExitFv_Outgoing : rowsOwned s2Step62ExitGvAfter [s2Step62ExitFvOut,s2Step62ExitGvOut] :=
  hmrRows_owned_drop s2Step62ExitGvAfter [s2Step62ExitGOut,s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut] 2 s2Step62ExitBank_outgoingOwned
theorem s2Step62ExitGv_Incoming : rowsOwned s2Step62ExitGvBefore [s2Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step62ExitGRow,s2Step62ExitFRow,s2Step62ExitFvRow,s2Step62ExitGvRow] 3 s2Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step62ExitGvBefore (fun q => (0≤q ∧ q<749) ∨ (750≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
    decide +kernel
theorem s2Step62ExitGv_Outgoing : rowsOwned s2Step62ExitGvAfter [s2Step62ExitGvOut] :=
  hmrRows_owned_drop s2Step62ExitGvAfter [s2Step62ExitGOut,s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut] 3 s2Step62ExitBank_outgoingOwned
theorem s2Step62ExitBank_rows : planWindowRowsLog s2Step62ExitGBefore [(s2Step62ExitGRow,237),(s2Step62ExitFRow,237),(s2Step62ExitFvRow,45),(s2Step62ExitGvRow,44)] [[],[],[],[]]=
    some (s2Step62ExitGvAfter,[s2Step62ExitGOut,s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut],(shrinkRow 769 s2Step62ExitGExtra ++ (shrinkRow 768 s2Step62ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step62ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step62ExitGvAfter [] []=some (s2Step62ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step62ExitGvBefore s2Step62ExitGvAfter s2Step62ExitGvAfter
    s2Step62ExitGvRow s2Step62ExitGvOut 44 [] [] [] []
    (shrinkRow 771 s2Step62ExitGvExtra) ([]) s2Step62ExitGv_Incoming s2Step62ExitGv_checked h4 s2Step62ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step62ExitFvBefore s2Step62ExitFvAfter s2Step62ExitGvAfter
    s2Step62ExitFvRow s2Step62ExitFvOut 45 [] [(s2Step62ExitGvRow,44)] [[]] [s2Step62ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step62ExitGvExtra ++ [])) s2Step62ExitFv_Incoming s2Step62ExitFv_checked h3 s2Step62ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step62ExitFBefore s2Step62ExitFAfter s2Step62ExitGvAfter
    s2Step62ExitFRow s2Step62ExitFOut 237 [] [(s2Step62ExitFvRow,45),(s2Step62ExitGvRow,44)] [[],[]] [s2Step62ExitFvOut,s2Step62ExitGvOut]
    (shrinkRow 768 s2Step62ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step62ExitGvExtra ++ []))) s2Step62ExitF_Incoming s2Step62ExitF_checked h2 s2Step62ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step62ExitGBefore s2Step62ExitGAfter s2Step62ExitGvAfter
    s2Step62ExitGRow s2Step62ExitGOut 237 [] [(s2Step62ExitFRow,237),(s2Step62ExitFvRow,45),(s2Step62ExitGvRow,44)] [[],[],[]] [s2Step62ExitFOut,s2Step62ExitFvOut,s2Step62ExitGvOut]
    (shrinkRow 769 s2Step62ExitGExtra) ((shrinkRow 768 s2Step62ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step62ExitGvExtra ++ [])))) s2Step62ExitG_Incoming s2Step62ExitG_checked h1 s2Step62ExitG_Outgoing
  exact h0
theorem s2Step62ExitBank_checked : compileHmrBankResizeLog .exit s2Step62ExitGBefore ⟨s2Step62ExitFRow,s2Step62ExitGRow,s2Step62ExitFvRow,s2Step62ExitGvRow⟩ ⟨237,237,45,44⟩ [[],[],[],[]]=
    some (s2Step62ExitGvAfter,⟨s2Step62ExitFOut,s2Step62ExitGOut,s2Step62ExitFvOut,s2Step62ExitGvOut⟩,(shrinkRow 769 s2Step62ExitGExtra ++ (shrinkRow 768 s2Step62ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step62ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step62ExitBank_rows]
  rfl
theorem s2Step63ExitBank_incomingDistinct : ([s2Step63ExitGRow,s2Step63ExitFRow,s2Step63ExitFvRow,s2Step63ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63ExitBank_outgoingOwned : rowsOwned s2Step63ExitGvAfter [s2Step63ExitGOut,s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step63ExitGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63ExitG_Incoming : rowsOwned s2Step63ExitGBefore [s2Step63ExitGRow,s2Step63ExitFRow,s2Step63ExitFvRow,s2Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63ExitGRow,s2Step63ExitFRow,s2Step63ExitFvRow,s2Step63ExitGvRow] 0 s2Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63ExitG_Outgoing : rowsOwned s2Step63ExitGvAfter [s2Step63ExitGOut,s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut] :=
  hmrRows_owned_drop s2Step63ExitGvAfter [s2Step63ExitGOut,s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut] 0 s2Step63ExitBank_outgoingOwned
theorem s2Step63ExitF_Incoming : rowsOwned s2Step63ExitFBefore [s2Step63ExitFRow,s2Step63ExitFvRow,s2Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63ExitGRow,s2Step63ExitFRow,s2Step63ExitFvRow,s2Step63ExitGvRow] 1 s2Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63ExitF_Outgoing : rowsOwned s2Step63ExitGvAfter [s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut] :=
  hmrRows_owned_drop s2Step63ExitGvAfter [s2Step63ExitGOut,s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut] 1 s2Step63ExitBank_outgoingOwned
theorem s2Step63ExitFv_Incoming : rowsOwned s2Step63ExitFvBefore [s2Step63ExitFvRow,s2Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63ExitGRow,s2Step63ExitFRow,s2Step63ExitFvRow,s2Step63ExitGvRow] 2 s2Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63ExitFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63ExitFv_Outgoing : rowsOwned s2Step63ExitGvAfter [s2Step63ExitFvOut,s2Step63ExitGvOut] :=
  hmrRows_owned_drop s2Step63ExitGvAfter [s2Step63ExitGOut,s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut] 2 s2Step63ExitBank_outgoingOwned
theorem s2Step63ExitGv_Incoming : rowsOwned s2Step63ExitGvBefore [s2Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step63ExitGRow,s2Step63ExitFRow,s2Step63ExitFvRow,s2Step63ExitGvRow] 3 s2Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step63ExitGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
    decide +kernel
theorem s2Step63ExitGv_Outgoing : rowsOwned s2Step63ExitGvAfter [s2Step63ExitGvOut] :=
  hmrRows_owned_drop s2Step63ExitGvAfter [s2Step63ExitGOut,s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut] 3 s2Step63ExitBank_outgoingOwned
theorem s2Step63ExitBank_rows : planWindowRowsLog s2Step63ExitGBefore [(s2Step63ExitGRow,237),(s2Step63ExitFRow,237),(s2Step63ExitFvRow,46),(s2Step63ExitGvRow,44)] [[],[],[],[]]=
    some (s2Step63ExitGvAfter,[s2Step63ExitGOut,s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut],(shrinkRow 769 s2Step63ExitGExtra ++ (shrinkRow 768 s2Step63ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step63ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step63ExitGvAfter [] []=some (s2Step63ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step63ExitGvBefore s2Step63ExitGvAfter s2Step63ExitGvAfter
    s2Step63ExitGvRow s2Step63ExitGvOut 44 [] [] [] []
    (shrinkRow 771 s2Step63ExitGvExtra) ([]) s2Step63ExitGv_Incoming s2Step63ExitGv_checked h4 s2Step63ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step63ExitFvBefore s2Step63ExitFvAfter s2Step63ExitGvAfter
    s2Step63ExitFvRow s2Step63ExitFvOut 46 [] [(s2Step63ExitGvRow,44)] [[]] [s2Step63ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step63ExitGvExtra ++ [])) s2Step63ExitFv_Incoming s2Step63ExitFv_checked h3 s2Step63ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step63ExitFBefore s2Step63ExitFAfter s2Step63ExitGvAfter
    s2Step63ExitFRow s2Step63ExitFOut 237 [] [(s2Step63ExitFvRow,46),(s2Step63ExitGvRow,44)] [[],[]] [s2Step63ExitFvOut,s2Step63ExitGvOut]
    (shrinkRow 768 s2Step63ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step63ExitGvExtra ++ []))) s2Step63ExitF_Incoming s2Step63ExitF_checked h2 s2Step63ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step63ExitGBefore s2Step63ExitGAfter s2Step63ExitGvAfter
    s2Step63ExitGRow s2Step63ExitGOut 237 [] [(s2Step63ExitFRow,237),(s2Step63ExitFvRow,46),(s2Step63ExitGvRow,44)] [[],[],[]] [s2Step63ExitFOut,s2Step63ExitFvOut,s2Step63ExitGvOut]
    (shrinkRow 769 s2Step63ExitGExtra) ((shrinkRow 768 s2Step63ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step63ExitGvExtra ++ [])))) s2Step63ExitG_Incoming s2Step63ExitG_checked h1 s2Step63ExitG_Outgoing
  exact h0
theorem s2Step63ExitBank_checked : compileHmrBankResizeLog .exit s2Step63ExitGBefore ⟨s2Step63ExitFRow,s2Step63ExitGRow,s2Step63ExitFvRow,s2Step63ExitGvRow⟩ ⟨237,237,46,44⟩ [[],[],[],[]]=
    some (s2Step63ExitGvAfter,⟨s2Step63ExitFOut,s2Step63ExitGOut,s2Step63ExitFvOut,s2Step63ExitGvOut⟩,(shrinkRow 769 s2Step63ExitGExtra ++ (shrinkRow 768 s2Step63ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step63ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step63ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
