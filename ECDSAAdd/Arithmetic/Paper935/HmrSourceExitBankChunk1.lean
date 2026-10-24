import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk1
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk0

namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step16ExitBank_incomingDistinct : ([s2Step16ExitGRow,s2Step16ExitFRow,s2Step16ExitFvRow,s2Step16ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16ExitBank_outgoingOwned : rowsOwned s2Step16ExitGvAfter [s2Step16ExitGOut,s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step16ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16ExitG_Incoming : rowsOwned s2Step16ExitGBefore [s2Step16ExitGRow,s2Step16ExitFRow,s2Step16ExitFvRow,s2Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16ExitGRow,s2Step16ExitFRow,s2Step16ExitFvRow,s2Step16ExitGvRow] 0 s2Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16ExitGBefore (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16ExitG_Outgoing : rowsOwned s2Step16ExitGvAfter [s2Step16ExitGOut,s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut] :=
  hmrRows_owned_drop s2Step16ExitGvAfter [s2Step16ExitGOut,s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut] 0 s2Step16ExitBank_outgoingOwned
theorem s2Step16ExitF_Incoming : rowsOwned s2Step16ExitFBefore [s2Step16ExitFRow,s2Step16ExitFvRow,s2Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16ExitGRow,s2Step16ExitFRow,s2Step16ExitFvRow,s2Step16ExitGvRow] 1 s2Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16ExitF_Outgoing : rowsOwned s2Step16ExitGvAfter [s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut] :=
  hmrRows_owned_drop s2Step16ExitGvAfter [s2Step16ExitGOut,s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut] 1 s2Step16ExitBank_outgoingOwned
theorem s2Step16ExitFv_Incoming : rowsOwned s2Step16ExitFvBefore [s2Step16ExitFvRow,s2Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16ExitGRow,s2Step16ExitFRow,s2Step16ExitFvRow,s2Step16ExitGvRow] 2 s2Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16ExitFv_Outgoing : rowsOwned s2Step16ExitGvAfter [s2Step16ExitFvOut,s2Step16ExitGvOut] :=
  hmrRows_owned_drop s2Step16ExitGvAfter [s2Step16ExitGOut,s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut] 2 s2Step16ExitBank_outgoingOwned
theorem s2Step16ExitGv_Incoming : rowsOwned s2Step16ExitGvBefore [s2Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step16ExitGRow,s2Step16ExitFRow,s2Step16ExitFvRow,s2Step16ExitGvRow] 3 s2Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step16ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<821) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step16ExitGv_Outgoing : rowsOwned s2Step16ExitGvAfter [s2Step16ExitGvOut] :=
  hmrRows_owned_drop s2Step16ExitGvAfter [s2Step16ExitGOut,s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut] 3 s2Step16ExitBank_outgoingOwned
theorem s2Step16ExitBank_rows : planWindowRowsLog s2Step16ExitGBefore [(s2Step16ExitGRow,255),(s2Step16ExitFRow,256),(s2Step16ExitFvRow,18),(s2Step16ExitGvRow,16)] [[],[],[],[]]=
    some (s2Step16ExitGvAfter,[s2Step16ExitGOut,s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut],(shrinkRow 769 s2Step16ExitGExtra ++ (shrinkRow 768 s2Step16ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step16ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step16ExitGvAfter [] []=some (s2Step16ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step16ExitGvBefore s2Step16ExitGvAfter s2Step16ExitGvAfter
    s2Step16ExitGvRow s2Step16ExitGvOut 16 [] [] [] []
    (shrinkRow 771 s2Step16ExitGvExtra) ([]) s2Step16ExitGv_Incoming s2Step16ExitGv_checked h4 s2Step16ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step16ExitFvBefore s2Step16ExitFvAfter s2Step16ExitGvAfter
    s2Step16ExitFvRow s2Step16ExitFvOut 18 [] [(s2Step16ExitGvRow,16)] [[]] [s2Step16ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step16ExitGvExtra ++ [])) s2Step16ExitFv_Incoming s2Step16ExitFv_checked h3 s2Step16ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step16ExitFBefore s2Step16ExitFAfter s2Step16ExitGvAfter
    s2Step16ExitFRow s2Step16ExitFOut 256 [] [(s2Step16ExitFvRow,18),(s2Step16ExitGvRow,16)] [[],[]] [s2Step16ExitFvOut,s2Step16ExitGvOut]
    (shrinkRow 768 s2Step16ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step16ExitGvExtra ++ []))) s2Step16ExitF_Incoming s2Step16ExitF_checked h2 s2Step16ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step16ExitGBefore s2Step16ExitGAfter s2Step16ExitGvAfter
    s2Step16ExitGRow s2Step16ExitGOut 255 [] [(s2Step16ExitFRow,256),(s2Step16ExitFvRow,18),(s2Step16ExitGvRow,16)] [[],[],[]] [s2Step16ExitFOut,s2Step16ExitFvOut,s2Step16ExitGvOut]
    (shrinkRow 769 s2Step16ExitGExtra) ((shrinkRow 768 s2Step16ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step16ExitGvExtra ++ [])))) s2Step16ExitG_Incoming s2Step16ExitG_checked h1 s2Step16ExitG_Outgoing
  exact h0
theorem s2Step16ExitBank_checked : compileHmrBankResizeLog .exit s2Step16ExitGBefore ⟨s2Step16ExitFRow,s2Step16ExitGRow,s2Step16ExitFvRow,s2Step16ExitGvRow⟩ ⟨256,255,18,16⟩ [[],[],[],[]]=
    some (s2Step16ExitGvAfter,⟨s2Step16ExitFOut,s2Step16ExitGOut,s2Step16ExitFvOut,s2Step16ExitGvOut⟩,(shrinkRow 769 s2Step16ExitGExtra ++ (shrinkRow 768 s2Step16ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step16ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step16ExitBank_rows]
  rfl
theorem s2Step17ExitBank_incomingDistinct : ([s2Step17ExitGRow,s2Step17ExitFRow,s2Step17ExitFvRow,s2Step17ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17ExitBank_outgoingOwned : rowsOwned s2Step17ExitGvAfter [s2Step17ExitGOut,s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step17ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<821) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17ExitG_Incoming : rowsOwned s2Step17ExitGBefore [s2Step17ExitGRow,s2Step17ExitFRow,s2Step17ExitFvRow,s2Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17ExitGRow,s2Step17ExitFRow,s2Step17ExitFvRow,s2Step17ExitGvRow] 0 s2Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17ExitGBefore (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17ExitG_Outgoing : rowsOwned s2Step17ExitGvAfter [s2Step17ExitGOut,s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut] :=
  hmrRows_owned_drop s2Step17ExitGvAfter [s2Step17ExitGOut,s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut] 0 s2Step17ExitBank_outgoingOwned
theorem s2Step17ExitF_Incoming : rowsOwned s2Step17ExitFBefore [s2Step17ExitFRow,s2Step17ExitFvRow,s2Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17ExitGRow,s2Step17ExitFRow,s2Step17ExitFvRow,s2Step17ExitGvRow] 1 s2Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17ExitF_Outgoing : rowsOwned s2Step17ExitGvAfter [s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut] :=
  hmrRows_owned_drop s2Step17ExitGvAfter [s2Step17ExitGOut,s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut] 1 s2Step17ExitBank_outgoingOwned
theorem s2Step17ExitFv_Incoming : rowsOwned s2Step17ExitFvBefore [s2Step17ExitFvRow,s2Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17ExitGRow,s2Step17ExitFRow,s2Step17ExitFvRow,s2Step17ExitGvRow] 2 s2Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17ExitFv_Outgoing : rowsOwned s2Step17ExitGvAfter [s2Step17ExitFvOut,s2Step17ExitGvOut] :=
  hmrRows_owned_drop s2Step17ExitGvAfter [s2Step17ExitGOut,s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut] 2 s2Step17ExitBank_outgoingOwned
theorem s2Step17ExitGv_Incoming : rowsOwned s2Step17ExitGvBefore [s2Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step17ExitGRow,s2Step17ExitFRow,s2Step17ExitFvRow,s2Step17ExitGvRow] 3 s2Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step17ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
    decide +kernel
theorem s2Step17ExitGv_Outgoing : rowsOwned s2Step17ExitGvAfter [s2Step17ExitGvOut] :=
  hmrRows_owned_drop s2Step17ExitGvAfter [s2Step17ExitGOut,s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut] 3 s2Step17ExitBank_outgoingOwned
theorem s2Step17ExitBank_rows : planWindowRowsLog s2Step17ExitGBefore [(s2Step17ExitGRow,255),(s2Step17ExitFRow,256),(s2Step17ExitFvRow,19),(s2Step17ExitGvRow,17)] [[],[],[],[]]=
    some (s2Step17ExitGvAfter,[s2Step17ExitGOut,s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut],(shrinkRow 769 s2Step17ExitGExtra ++ (shrinkRow 768 s2Step17ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step17ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step17ExitGvAfter [] []=some (s2Step17ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step17ExitGvBefore s2Step17ExitGvAfter s2Step17ExitGvAfter
    s2Step17ExitGvRow s2Step17ExitGvOut 17 [] [] [] []
    (shrinkRow 771 s2Step17ExitGvExtra) ([]) s2Step17ExitGv_Incoming s2Step17ExitGv_checked h4 s2Step17ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step17ExitFvBefore s2Step17ExitFvAfter s2Step17ExitGvAfter
    s2Step17ExitFvRow s2Step17ExitFvOut 19 [] [(s2Step17ExitGvRow,17)] [[]] [s2Step17ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step17ExitGvExtra ++ [])) s2Step17ExitFv_Incoming s2Step17ExitFv_checked h3 s2Step17ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step17ExitFBefore s2Step17ExitFAfter s2Step17ExitGvAfter
    s2Step17ExitFRow s2Step17ExitFOut 256 [] [(s2Step17ExitFvRow,19),(s2Step17ExitGvRow,17)] [[],[]] [s2Step17ExitFvOut,s2Step17ExitGvOut]
    (shrinkRow 768 s2Step17ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step17ExitGvExtra ++ []))) s2Step17ExitF_Incoming s2Step17ExitF_checked h2 s2Step17ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step17ExitGBefore s2Step17ExitGAfter s2Step17ExitGvAfter
    s2Step17ExitGRow s2Step17ExitGOut 255 [] [(s2Step17ExitFRow,256),(s2Step17ExitFvRow,19),(s2Step17ExitGvRow,17)] [[],[],[]] [s2Step17ExitFOut,s2Step17ExitFvOut,s2Step17ExitGvOut]
    (shrinkRow 769 s2Step17ExitGExtra) ((shrinkRow 768 s2Step17ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step17ExitGvExtra ++ [])))) s2Step17ExitG_Incoming s2Step17ExitG_checked h1 s2Step17ExitG_Outgoing
  exact h0
theorem s2Step17ExitBank_checked : compileHmrBankResizeLog .exit s2Step17ExitGBefore ⟨s2Step17ExitFRow,s2Step17ExitGRow,s2Step17ExitFvRow,s2Step17ExitGvRow⟩ ⟨256,255,19,17⟩ [[],[],[],[]]=
    some (s2Step17ExitGvAfter,⟨s2Step17ExitFOut,s2Step17ExitGOut,s2Step17ExitFvOut,s2Step17ExitGvOut⟩,(shrinkRow 769 s2Step17ExitGExtra ++ (shrinkRow 768 s2Step17ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step17ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step17ExitBank_rows]
  rfl
theorem s2Step18ExitBank_incomingDistinct : ([s2Step18ExitGRow,s2Step18ExitFRow,s2Step18ExitFvRow,s2Step18ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18ExitBank_outgoingOwned : rowsOwned s2Step18ExitGvAfter [s2Step18ExitGOut,s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step18ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<824) ∨ (825≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18ExitG_Incoming : rowsOwned s2Step18ExitGBefore [s2Step18ExitGRow,s2Step18ExitFRow,s2Step18ExitFvRow,s2Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18ExitGRow,s2Step18ExitFRow,s2Step18ExitFvRow,s2Step18ExitGvRow] 0 s2Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18ExitG_Outgoing : rowsOwned s2Step18ExitGvAfter [s2Step18ExitGOut,s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut] :=
  hmrRows_owned_drop s2Step18ExitGvAfter [s2Step18ExitGOut,s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut] 0 s2Step18ExitBank_outgoingOwned
theorem s2Step18ExitF_Incoming : rowsOwned s2Step18ExitFBefore [s2Step18ExitFRow,s2Step18ExitFvRow,s2Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18ExitGRow,s2Step18ExitFRow,s2Step18ExitFvRow,s2Step18ExitGvRow] 1 s2Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18ExitF_Outgoing : rowsOwned s2Step18ExitGvAfter [s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut] :=
  hmrRows_owned_drop s2Step18ExitGvAfter [s2Step18ExitGOut,s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut] 1 s2Step18ExitBank_outgoingOwned
theorem s2Step18ExitFv_Incoming : rowsOwned s2Step18ExitFvBefore [s2Step18ExitFvRow,s2Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18ExitGRow,s2Step18ExitFRow,s2Step18ExitFvRow,s2Step18ExitGvRow] 2 s2Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18ExitFv_Outgoing : rowsOwned s2Step18ExitGvAfter [s2Step18ExitFvOut,s2Step18ExitGvOut] :=
  hmrRows_owned_drop s2Step18ExitGvAfter [s2Step18ExitGOut,s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut] 2 s2Step18ExitBank_outgoingOwned
theorem s2Step18ExitGv_Incoming : rowsOwned s2Step18ExitGvBefore [s2Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step18ExitGRow,s2Step18ExitFRow,s2Step18ExitFvRow,s2Step18ExitGvRow] 3 s2Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step18ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step18ExitGv_Outgoing : rowsOwned s2Step18ExitGvAfter [s2Step18ExitGvOut] :=
  hmrRows_owned_drop s2Step18ExitGvAfter [s2Step18ExitGOut,s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut] 3 s2Step18ExitBank_outgoingOwned
theorem s2Step18ExitBank_rows : planWindowRowsLog s2Step18ExitGBefore [(s2Step18ExitGRow,255),(s2Step18ExitFRow,256),(s2Step18ExitFvRow,20),(s2Step18ExitGvRow,18)] [[],[],[],[]]=
    some (s2Step18ExitGvAfter,[s2Step18ExitGOut,s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut],(shrinkRow 769 s2Step18ExitGExtra ++ (shrinkRow 768 s2Step18ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step18ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step18ExitGvAfter [] []=some (s2Step18ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step18ExitGvBefore s2Step18ExitGvAfter s2Step18ExitGvAfter
    s2Step18ExitGvRow s2Step18ExitGvOut 18 [] [] [] []
    (shrinkRow 771 s2Step18ExitGvExtra) ([]) s2Step18ExitGv_Incoming s2Step18ExitGv_checked h4 s2Step18ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step18ExitFvBefore s2Step18ExitFvAfter s2Step18ExitGvAfter
    s2Step18ExitFvRow s2Step18ExitFvOut 20 [] [(s2Step18ExitGvRow,18)] [[]] [s2Step18ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step18ExitGvExtra ++ [])) s2Step18ExitFv_Incoming s2Step18ExitFv_checked h3 s2Step18ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step18ExitFBefore s2Step18ExitFAfter s2Step18ExitGvAfter
    s2Step18ExitFRow s2Step18ExitFOut 256 [] [(s2Step18ExitFvRow,20),(s2Step18ExitGvRow,18)] [[],[]] [s2Step18ExitFvOut,s2Step18ExitGvOut]
    (shrinkRow 768 s2Step18ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step18ExitGvExtra ++ []))) s2Step18ExitF_Incoming s2Step18ExitF_checked h2 s2Step18ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step18ExitGBefore s2Step18ExitGAfter s2Step18ExitGvAfter
    s2Step18ExitGRow s2Step18ExitGOut 255 [] [(s2Step18ExitFRow,256),(s2Step18ExitFvRow,20),(s2Step18ExitGvRow,18)] [[],[],[]] [s2Step18ExitFOut,s2Step18ExitFvOut,s2Step18ExitGvOut]
    (shrinkRow 769 s2Step18ExitGExtra) ((shrinkRow 768 s2Step18ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step18ExitGvExtra ++ [])))) s2Step18ExitG_Incoming s2Step18ExitG_checked h1 s2Step18ExitG_Outgoing
  exact h0
theorem s2Step18ExitBank_checked : compileHmrBankResizeLog .exit s2Step18ExitGBefore ⟨s2Step18ExitFRow,s2Step18ExitGRow,s2Step18ExitFvRow,s2Step18ExitGvRow⟩ ⟨256,255,20,18⟩ [[],[],[],[]]=
    some (s2Step18ExitGvAfter,⟨s2Step18ExitFOut,s2Step18ExitGOut,s2Step18ExitFvOut,s2Step18ExitGvOut⟩,(shrinkRow 769 s2Step18ExitGExtra ++ (shrinkRow 768 s2Step18ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step18ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step18ExitBank_rows]
  rfl
theorem s2Step19ExitBank_incomingDistinct : ([s2Step19ExitGRow,s2Step19ExitFRow,s2Step19ExitFvRow,s2Step19ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19ExitBank_outgoingOwned : rowsOwned s2Step19ExitGvAfter [s2Step19ExitGOut,s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step19ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19ExitG_Incoming : rowsOwned s2Step19ExitGBefore [s2Step19ExitGRow,s2Step19ExitFRow,s2Step19ExitFvRow,s2Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19ExitGRow,s2Step19ExitFRow,s2Step19ExitFvRow,s2Step19ExitGvRow] 0 s2Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19ExitGBefore (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19ExitG_Outgoing : rowsOwned s2Step19ExitGvAfter [s2Step19ExitGOut,s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut] :=
  hmrRows_owned_drop s2Step19ExitGvAfter [s2Step19ExitGOut,s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut] 0 s2Step19ExitBank_outgoingOwned
theorem s2Step19ExitF_Incoming : rowsOwned s2Step19ExitFBefore [s2Step19ExitFRow,s2Step19ExitFvRow,s2Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19ExitGRow,s2Step19ExitFRow,s2Step19ExitFvRow,s2Step19ExitGvRow] 1 s2Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19ExitF_Outgoing : rowsOwned s2Step19ExitGvAfter [s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut] :=
  hmrRows_owned_drop s2Step19ExitGvAfter [s2Step19ExitGOut,s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut] 1 s2Step19ExitBank_outgoingOwned
theorem s2Step19ExitFv_Incoming : rowsOwned s2Step19ExitFvBefore [s2Step19ExitFvRow,s2Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19ExitGRow,s2Step19ExitFRow,s2Step19ExitFvRow,s2Step19ExitGvRow] 2 s2Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19ExitFv_Outgoing : rowsOwned s2Step19ExitGvAfter [s2Step19ExitFvOut,s2Step19ExitGvOut] :=
  hmrRows_owned_drop s2Step19ExitGvAfter [s2Step19ExitGOut,s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut] 2 s2Step19ExitBank_outgoingOwned
theorem s2Step19ExitGv_Incoming : rowsOwned s2Step19ExitGvBefore [s2Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step19ExitGRow,s2Step19ExitFRow,s2Step19ExitFvRow,s2Step19ExitGvRow] 3 s2Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step19ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
    decide +kernel
theorem s2Step19ExitGv_Outgoing : rowsOwned s2Step19ExitGvAfter [s2Step19ExitGvOut] :=
  hmrRows_owned_drop s2Step19ExitGvAfter [s2Step19ExitGOut,s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut] 3 s2Step19ExitBank_outgoingOwned
theorem s2Step19ExitBank_rows : planWindowRowsLog s2Step19ExitGBefore [(s2Step19ExitGRow,255),(s2Step19ExitFRow,256),(s2Step19ExitFvRow,21),(s2Step19ExitGvRow,19)] [[],[],[],[]]=
    some (s2Step19ExitGvAfter,[s2Step19ExitGOut,s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut],(shrinkRow 769 s2Step19ExitGExtra ++ (shrinkRow 768 s2Step19ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step19ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step19ExitGvAfter [] []=some (s2Step19ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step19ExitGvBefore s2Step19ExitGvAfter s2Step19ExitGvAfter
    s2Step19ExitGvRow s2Step19ExitGvOut 19 [] [] [] []
    (shrinkRow 771 s2Step19ExitGvExtra) ([]) s2Step19ExitGv_Incoming s2Step19ExitGv_checked h4 s2Step19ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step19ExitFvBefore s2Step19ExitFvAfter s2Step19ExitGvAfter
    s2Step19ExitFvRow s2Step19ExitFvOut 21 [] [(s2Step19ExitGvRow,19)] [[]] [s2Step19ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step19ExitGvExtra ++ [])) s2Step19ExitFv_Incoming s2Step19ExitFv_checked h3 s2Step19ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step19ExitFBefore s2Step19ExitFAfter s2Step19ExitGvAfter
    s2Step19ExitFRow s2Step19ExitFOut 256 [] [(s2Step19ExitFvRow,21),(s2Step19ExitGvRow,19)] [[],[]] [s2Step19ExitFvOut,s2Step19ExitGvOut]
    (shrinkRow 768 s2Step19ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step19ExitGvExtra ++ []))) s2Step19ExitF_Incoming s2Step19ExitF_checked h2 s2Step19ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step19ExitGBefore s2Step19ExitGAfter s2Step19ExitGvAfter
    s2Step19ExitGRow s2Step19ExitGOut 255 [] [(s2Step19ExitFRow,256),(s2Step19ExitFvRow,21),(s2Step19ExitGvRow,19)] [[],[],[]] [s2Step19ExitFOut,s2Step19ExitFvOut,s2Step19ExitGvOut]
    (shrinkRow 769 s2Step19ExitGExtra) ((shrinkRow 768 s2Step19ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step19ExitGvExtra ++ [])))) s2Step19ExitG_Incoming s2Step19ExitG_checked h1 s2Step19ExitG_Outgoing
  exact h0
theorem s2Step19ExitBank_checked : compileHmrBankResizeLog .exit s2Step19ExitGBefore ⟨s2Step19ExitFRow,s2Step19ExitGRow,s2Step19ExitFvRow,s2Step19ExitGvRow⟩ ⟨256,255,21,19⟩ [[],[],[],[]]=
    some (s2Step19ExitGvAfter,⟨s2Step19ExitFOut,s2Step19ExitGOut,s2Step19ExitFvOut,s2Step19ExitGvOut⟩,(shrinkRow 769 s2Step19ExitGExtra ++ (shrinkRow 768 s2Step19ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step19ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step19ExitBank_rows]
  rfl
theorem s2Step20ExitBank_incomingDistinct : ([s2Step20ExitGRow,s2Step20ExitFRow,s2Step20ExitFvRow,s2Step20ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20ExitBank_outgoingOwned : rowsOwned s2Step20ExitGvAfter [s2Step20ExitGOut,s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step20ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20ExitG_Incoming : rowsOwned s2Step20ExitGBefore [s2Step20ExitGRow,s2Step20ExitFRow,s2Step20ExitFvRow,s2Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20ExitGRow,s2Step20ExitFRow,s2Step20ExitFvRow,s2Step20ExitGvRow] 0 s2Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20ExitGBefore (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20ExitG_Outgoing : rowsOwned s2Step20ExitGvAfter [s2Step20ExitGOut,s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut] :=
  hmrRows_owned_drop s2Step20ExitGvAfter [s2Step20ExitGOut,s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut] 0 s2Step20ExitBank_outgoingOwned
theorem s2Step20ExitF_Incoming : rowsOwned s2Step20ExitFBefore [s2Step20ExitFRow,s2Step20ExitFvRow,s2Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20ExitGRow,s2Step20ExitFRow,s2Step20ExitFvRow,s2Step20ExitGvRow] 1 s2Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20ExitF_Outgoing : rowsOwned s2Step20ExitGvAfter [s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut] :=
  hmrRows_owned_drop s2Step20ExitGvAfter [s2Step20ExitGOut,s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut] 1 s2Step20ExitBank_outgoingOwned
theorem s2Step20ExitFv_Incoming : rowsOwned s2Step20ExitFvBefore [s2Step20ExitFvRow,s2Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20ExitGRow,s2Step20ExitFRow,s2Step20ExitFvRow,s2Step20ExitGvRow] 2 s2Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20ExitFv_Outgoing : rowsOwned s2Step20ExitGvAfter [s2Step20ExitFvOut,s2Step20ExitGvOut] :=
  hmrRows_owned_drop s2Step20ExitGvAfter [s2Step20ExitGOut,s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut] 2 s2Step20ExitBank_outgoingOwned
theorem s2Step20ExitGv_Incoming : rowsOwned s2Step20ExitGvBefore [s2Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step20ExitGRow,s2Step20ExitFRow,s2Step20ExitFvRow,s2Step20ExitGvRow] 3 s2Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step20ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (785≤q ∧ q<831) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step20ExitGv_Outgoing : rowsOwned s2Step20ExitGvAfter [s2Step20ExitGvOut] :=
  hmrRows_owned_drop s2Step20ExitGvAfter [s2Step20ExitGOut,s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut] 3 s2Step20ExitBank_outgoingOwned
theorem s2Step20ExitBank_rows : planWindowRowsLog s2Step20ExitGBefore [(s2Step20ExitGRow,255),(s2Step20ExitFRow,256),(s2Step20ExitFvRow,22),(s2Step20ExitGvRow,20)] [[],[],[],[]]=
    some (s2Step20ExitGvAfter,[s2Step20ExitGOut,s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut],(shrinkRow 769 s2Step20ExitGExtra ++ (shrinkRow 768 s2Step20ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step20ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step20ExitGvAfter [] []=some (s2Step20ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step20ExitGvBefore s2Step20ExitGvAfter s2Step20ExitGvAfter
    s2Step20ExitGvRow s2Step20ExitGvOut 20 [] [] [] []
    (shrinkRow 771 s2Step20ExitGvExtra) ([]) s2Step20ExitGv_Incoming s2Step20ExitGv_checked h4 s2Step20ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step20ExitFvBefore s2Step20ExitFvAfter s2Step20ExitGvAfter
    s2Step20ExitFvRow s2Step20ExitFvOut 22 [] [(s2Step20ExitGvRow,20)] [[]] [s2Step20ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step20ExitGvExtra ++ [])) s2Step20ExitFv_Incoming s2Step20ExitFv_checked h3 s2Step20ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step20ExitFBefore s2Step20ExitFAfter s2Step20ExitGvAfter
    s2Step20ExitFRow s2Step20ExitFOut 256 [] [(s2Step20ExitFvRow,22),(s2Step20ExitGvRow,20)] [[],[]] [s2Step20ExitFvOut,s2Step20ExitGvOut]
    (shrinkRow 768 s2Step20ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step20ExitGvExtra ++ []))) s2Step20ExitF_Incoming s2Step20ExitF_checked h2 s2Step20ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step20ExitGBefore s2Step20ExitGAfter s2Step20ExitGvAfter
    s2Step20ExitGRow s2Step20ExitGOut 255 [] [(s2Step20ExitFRow,256),(s2Step20ExitFvRow,22),(s2Step20ExitGvRow,20)] [[],[],[]] [s2Step20ExitFOut,s2Step20ExitFvOut,s2Step20ExitGvOut]
    (shrinkRow 769 s2Step20ExitGExtra) ((shrinkRow 768 s2Step20ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step20ExitGvExtra ++ [])))) s2Step20ExitG_Incoming s2Step20ExitG_checked h1 s2Step20ExitG_Outgoing
  exact h0
theorem s2Step20ExitBank_checked : compileHmrBankResizeLog .exit s2Step20ExitGBefore ⟨s2Step20ExitFRow,s2Step20ExitGRow,s2Step20ExitFvRow,s2Step20ExitGvRow⟩ ⟨256,255,22,20⟩ [[],[],[],[]]=
    some (s2Step20ExitGvAfter,⟨s2Step20ExitFOut,s2Step20ExitGOut,s2Step20ExitFvOut,s2Step20ExitGvOut⟩,(shrinkRow 769 s2Step20ExitGExtra ++ (shrinkRow 768 s2Step20ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step20ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step20ExitBank_rows]
  rfl
theorem s2Step21ExitBank_incomingDistinct : ([s2Step21ExitGRow,s2Step21ExitFRow,s2Step21ExitFvRow,s2Step21ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21ExitBank_outgoingOwned : rowsOwned s2Step21ExitGvAfter [s2Step21ExitGOut,s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step21ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21ExitG_Incoming : rowsOwned s2Step21ExitGBefore [s2Step21ExitGRow,s2Step21ExitFRow,s2Step21ExitFvRow,s2Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21ExitGRow,s2Step21ExitFRow,s2Step21ExitFvRow,s2Step21ExitGvRow] 0 s2Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21ExitGBefore (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21ExitG_Outgoing : rowsOwned s2Step21ExitGvAfter [s2Step21ExitGOut,s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut] :=
  hmrRows_owned_drop s2Step21ExitGvAfter [s2Step21ExitGOut,s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut] 0 s2Step21ExitBank_outgoingOwned
theorem s2Step21ExitF_Incoming : rowsOwned s2Step21ExitFBefore [s2Step21ExitFRow,s2Step21ExitFvRow,s2Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21ExitGRow,s2Step21ExitFRow,s2Step21ExitFvRow,s2Step21ExitGvRow] 1 s2Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21ExitF_Outgoing : rowsOwned s2Step21ExitGvAfter [s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut] :=
  hmrRows_owned_drop s2Step21ExitGvAfter [s2Step21ExitGOut,s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut] 1 s2Step21ExitBank_outgoingOwned
theorem s2Step21ExitFv_Incoming : rowsOwned s2Step21ExitFvBefore [s2Step21ExitFvRow,s2Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21ExitGRow,s2Step21ExitFRow,s2Step21ExitFvRow,s2Step21ExitGvRow] 2 s2Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21ExitFv_Outgoing : rowsOwned s2Step21ExitGvAfter [s2Step21ExitFvOut,s2Step21ExitGvOut] :=
  hmrRows_owned_drop s2Step21ExitGvAfter [s2Step21ExitGOut,s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut] 2 s2Step21ExitBank_outgoingOwned
theorem s2Step21ExitGv_Incoming : rowsOwned s2Step21ExitGvBefore [s2Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step21ExitGRow,s2Step21ExitFRow,s2Step21ExitFvRow,s2Step21ExitGvRow] 3 s2Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step21ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (784≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
    decide +kernel
theorem s2Step21ExitGv_Outgoing : rowsOwned s2Step21ExitGvAfter [s2Step21ExitGvOut] :=
  hmrRows_owned_drop s2Step21ExitGvAfter [s2Step21ExitGOut,s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut] 3 s2Step21ExitBank_outgoingOwned
theorem s2Step21ExitBank_rows : planWindowRowsLog s2Step21ExitGBefore [(s2Step21ExitGRow,255),(s2Step21ExitFRow,256),(s2Step21ExitFvRow,23),(s2Step21ExitGvRow,21)] [[],[],[],[]]=
    some (s2Step21ExitGvAfter,[s2Step21ExitGOut,s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut],(shrinkRow 769 s2Step21ExitGExtra ++ (shrinkRow 768 s2Step21ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step21ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step21ExitGvAfter [] []=some (s2Step21ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step21ExitGvBefore s2Step21ExitGvAfter s2Step21ExitGvAfter
    s2Step21ExitGvRow s2Step21ExitGvOut 21 [] [] [] []
    (shrinkRow 771 s2Step21ExitGvExtra) ([]) s2Step21ExitGv_Incoming s2Step21ExitGv_checked h4 s2Step21ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step21ExitFvBefore s2Step21ExitFvAfter s2Step21ExitGvAfter
    s2Step21ExitFvRow s2Step21ExitFvOut 23 [] [(s2Step21ExitGvRow,21)] [[]] [s2Step21ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step21ExitGvExtra ++ [])) s2Step21ExitFv_Incoming s2Step21ExitFv_checked h3 s2Step21ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step21ExitFBefore s2Step21ExitFAfter s2Step21ExitGvAfter
    s2Step21ExitFRow s2Step21ExitFOut 256 [] [(s2Step21ExitFvRow,23),(s2Step21ExitGvRow,21)] [[],[]] [s2Step21ExitFvOut,s2Step21ExitGvOut]
    (shrinkRow 768 s2Step21ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step21ExitGvExtra ++ []))) s2Step21ExitF_Incoming s2Step21ExitF_checked h2 s2Step21ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step21ExitGBefore s2Step21ExitGAfter s2Step21ExitGvAfter
    s2Step21ExitGRow s2Step21ExitGOut 255 [] [(s2Step21ExitFRow,256),(s2Step21ExitFvRow,23),(s2Step21ExitGvRow,21)] [[],[],[]] [s2Step21ExitFOut,s2Step21ExitFvOut,s2Step21ExitGvOut]
    (shrinkRow 769 s2Step21ExitGExtra) ((shrinkRow 768 s2Step21ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step21ExitGvExtra ++ [])))) s2Step21ExitG_Incoming s2Step21ExitG_checked h1 s2Step21ExitG_Outgoing
  exact h0
theorem s2Step21ExitBank_checked : compileHmrBankResizeLog .exit s2Step21ExitGBefore ⟨s2Step21ExitFRow,s2Step21ExitGRow,s2Step21ExitFvRow,s2Step21ExitGvRow⟩ ⟨256,255,23,21⟩ [[],[],[],[]]=
    some (s2Step21ExitGvAfter,⟨s2Step21ExitFOut,s2Step21ExitGOut,s2Step21ExitFvOut,s2Step21ExitGvOut⟩,(shrinkRow 769 s2Step21ExitGExtra ++ (shrinkRow 768 s2Step21ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step21ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step21ExitBank_rows]
  rfl
theorem s2Step22ExitBank_incomingDistinct : ([s2Step22ExitGRow,s2Step22ExitFRow,s2Step22ExitFvRow,s2Step22ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22ExitBank_outgoingOwned : rowsOwned s2Step22ExitGvAfter [s2Step22ExitGOut,s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step22ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22ExitG_Incoming : rowsOwned s2Step22ExitGBefore [s2Step22ExitGRow,s2Step22ExitFRow,s2Step22ExitFvRow,s2Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22ExitGRow,s2Step22ExitFRow,s2Step22ExitFvRow,s2Step22ExitGvRow] 0 s2Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22ExitGBefore (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22ExitG_Outgoing : rowsOwned s2Step22ExitGvAfter [s2Step22ExitGOut,s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut] :=
  hmrRows_owned_drop s2Step22ExitGvAfter [s2Step22ExitGOut,s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut] 0 s2Step22ExitBank_outgoingOwned
theorem s2Step22ExitF_Incoming : rowsOwned s2Step22ExitFBefore [s2Step22ExitFRow,s2Step22ExitFvRow,s2Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22ExitGRow,s2Step22ExitFRow,s2Step22ExitFvRow,s2Step22ExitGvRow] 1 s2Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22ExitF_Outgoing : rowsOwned s2Step22ExitGvAfter [s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut] :=
  hmrRows_owned_drop s2Step22ExitGvAfter [s2Step22ExitGOut,s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut] 1 s2Step22ExitBank_outgoingOwned
theorem s2Step22ExitFv_Incoming : rowsOwned s2Step22ExitFvBefore [s2Step22ExitFvRow,s2Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22ExitGRow,s2Step22ExitFRow,s2Step22ExitFvRow,s2Step22ExitGvRow] 2 s2Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22ExitFv_Outgoing : rowsOwned s2Step22ExitGvAfter [s2Step22ExitFvOut,s2Step22ExitGvOut] :=
  hmrRows_owned_drop s2Step22ExitGvAfter [s2Step22ExitGOut,s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut] 2 s2Step22ExitBank_outgoingOwned
theorem s2Step22ExitGv_Incoming : rowsOwned s2Step22ExitGvBefore [s2Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step22ExitGRow,s2Step22ExitFRow,s2Step22ExitFvRow,s2Step22ExitGvRow] 3 s2Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step22ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (785≤q ∧ q<836) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step22ExitGv_Outgoing : rowsOwned s2Step22ExitGvAfter [s2Step22ExitGvOut] :=
  hmrRows_owned_drop s2Step22ExitGvAfter [s2Step22ExitGOut,s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut] 3 s2Step22ExitBank_outgoingOwned
theorem s2Step22ExitBank_rows : planWindowRowsLog s2Step22ExitGBefore [(s2Step22ExitGRow,255),(s2Step22ExitFRow,256),(s2Step22ExitFvRow,24),(s2Step22ExitGvRow,22)] [[],[],[],[]]=
    some (s2Step22ExitGvAfter,[s2Step22ExitGOut,s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut],(shrinkRow 769 s2Step22ExitGExtra ++ (shrinkRow 768 s2Step22ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step22ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step22ExitGvAfter [] []=some (s2Step22ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step22ExitGvBefore s2Step22ExitGvAfter s2Step22ExitGvAfter
    s2Step22ExitGvRow s2Step22ExitGvOut 22 [] [] [] []
    (shrinkRow 771 s2Step22ExitGvExtra) ([]) s2Step22ExitGv_Incoming s2Step22ExitGv_checked h4 s2Step22ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step22ExitFvBefore s2Step22ExitFvAfter s2Step22ExitGvAfter
    s2Step22ExitFvRow s2Step22ExitFvOut 24 [] [(s2Step22ExitGvRow,22)] [[]] [s2Step22ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step22ExitGvExtra ++ [])) s2Step22ExitFv_Incoming s2Step22ExitFv_checked h3 s2Step22ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step22ExitFBefore s2Step22ExitFAfter s2Step22ExitGvAfter
    s2Step22ExitFRow s2Step22ExitFOut 256 [] [(s2Step22ExitFvRow,24),(s2Step22ExitGvRow,22)] [[],[]] [s2Step22ExitFvOut,s2Step22ExitGvOut]
    (shrinkRow 768 s2Step22ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step22ExitGvExtra ++ []))) s2Step22ExitF_Incoming s2Step22ExitF_checked h2 s2Step22ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step22ExitGBefore s2Step22ExitGAfter s2Step22ExitGvAfter
    s2Step22ExitGRow s2Step22ExitGOut 255 [] [(s2Step22ExitFRow,256),(s2Step22ExitFvRow,24),(s2Step22ExitGvRow,22)] [[],[],[]] [s2Step22ExitFOut,s2Step22ExitFvOut,s2Step22ExitGvOut]
    (shrinkRow 769 s2Step22ExitGExtra) ((shrinkRow 768 s2Step22ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step22ExitGvExtra ++ [])))) s2Step22ExitG_Incoming s2Step22ExitG_checked h1 s2Step22ExitG_Outgoing
  exact h0
theorem s2Step22ExitBank_checked : compileHmrBankResizeLog .exit s2Step22ExitGBefore ⟨s2Step22ExitFRow,s2Step22ExitGRow,s2Step22ExitFvRow,s2Step22ExitGvRow⟩ ⟨256,255,24,22⟩ [[],[],[],[]]=
    some (s2Step22ExitGvAfter,⟨s2Step22ExitFOut,s2Step22ExitGOut,s2Step22ExitFvOut,s2Step22ExitGvOut⟩,(shrinkRow 769 s2Step22ExitGExtra ++ (shrinkRow 768 s2Step22ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step22ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step22ExitBank_rows]
  rfl
theorem s2Step23ExitBank_incomingDistinct : ([s2Step23ExitGRow,s2Step23ExitFRow,s2Step23ExitFvRow,s2Step23ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23ExitBank_outgoingOwned : rowsOwned s2Step23ExitGvAfter [s2Step23ExitGOut,s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step23ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<836) ∨ (837≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23ExitG_Incoming : rowsOwned s2Step23ExitGBefore [s2Step23ExitGRow,s2Step23ExitFRow,s2Step23ExitFvRow,s2Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23ExitGRow,s2Step23ExitFRow,s2Step23ExitFvRow,s2Step23ExitGvRow] 0 s2Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23ExitGBefore (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23ExitG_Outgoing : rowsOwned s2Step23ExitGvAfter [s2Step23ExitGOut,s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut] :=
  hmrRows_owned_drop s2Step23ExitGvAfter [s2Step23ExitGOut,s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut] 0 s2Step23ExitBank_outgoingOwned
theorem s2Step23ExitF_Incoming : rowsOwned s2Step23ExitFBefore [s2Step23ExitFRow,s2Step23ExitFvRow,s2Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23ExitGRow,s2Step23ExitFRow,s2Step23ExitFvRow,s2Step23ExitGvRow] 1 s2Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23ExitF_Outgoing : rowsOwned s2Step23ExitGvAfter [s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut] :=
  hmrRows_owned_drop s2Step23ExitGvAfter [s2Step23ExitGOut,s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut] 1 s2Step23ExitBank_outgoingOwned
theorem s2Step23ExitFv_Incoming : rowsOwned s2Step23ExitFvBefore [s2Step23ExitFvRow,s2Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23ExitGRow,s2Step23ExitFRow,s2Step23ExitFvRow,s2Step23ExitGvRow] 2 s2Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23ExitFv_Outgoing : rowsOwned s2Step23ExitGvAfter [s2Step23ExitFvOut,s2Step23ExitGvOut] :=
  hmrRows_owned_drop s2Step23ExitGvAfter [s2Step23ExitGOut,s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut] 2 s2Step23ExitBank_outgoingOwned
theorem s2Step23ExitGv_Incoming : rowsOwned s2Step23ExitGvBefore [s2Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step23ExitGRow,s2Step23ExitFRow,s2Step23ExitFvRow,s2Step23ExitGvRow] 3 s2Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step23ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
    decide +kernel
theorem s2Step23ExitGv_Outgoing : rowsOwned s2Step23ExitGvAfter [s2Step23ExitGvOut] :=
  hmrRows_owned_drop s2Step23ExitGvAfter [s2Step23ExitGOut,s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut] 3 s2Step23ExitBank_outgoingOwned
theorem s2Step23ExitBank_rows : planWindowRowsLog s2Step23ExitGBefore [(s2Step23ExitGRow,255),(s2Step23ExitFRow,256),(s2Step23ExitFvRow,25),(s2Step23ExitGvRow,23)] [[],[],[],[]]=
    some (s2Step23ExitGvAfter,[s2Step23ExitGOut,s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut],(shrinkRow 769 s2Step23ExitGExtra ++ (shrinkRow 768 s2Step23ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step23ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step23ExitGvAfter [] []=some (s2Step23ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step23ExitGvBefore s2Step23ExitGvAfter s2Step23ExitGvAfter
    s2Step23ExitGvRow s2Step23ExitGvOut 23 [] [] [] []
    (shrinkRow 771 s2Step23ExitGvExtra) ([]) s2Step23ExitGv_Incoming s2Step23ExitGv_checked h4 s2Step23ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step23ExitFvBefore s2Step23ExitFvAfter s2Step23ExitGvAfter
    s2Step23ExitFvRow s2Step23ExitFvOut 25 [] [(s2Step23ExitGvRow,23)] [[]] [s2Step23ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step23ExitGvExtra ++ [])) s2Step23ExitFv_Incoming s2Step23ExitFv_checked h3 s2Step23ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step23ExitFBefore s2Step23ExitFAfter s2Step23ExitGvAfter
    s2Step23ExitFRow s2Step23ExitFOut 256 [] [(s2Step23ExitFvRow,25),(s2Step23ExitGvRow,23)] [[],[]] [s2Step23ExitFvOut,s2Step23ExitGvOut]
    (shrinkRow 768 s2Step23ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step23ExitGvExtra ++ []))) s2Step23ExitF_Incoming s2Step23ExitF_checked h2 s2Step23ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step23ExitGBefore s2Step23ExitGAfter s2Step23ExitGvAfter
    s2Step23ExitGRow s2Step23ExitGOut 255 [] [(s2Step23ExitFRow,256),(s2Step23ExitFvRow,25),(s2Step23ExitGvRow,23)] [[],[],[]] [s2Step23ExitFOut,s2Step23ExitFvOut,s2Step23ExitGvOut]
    (shrinkRow 769 s2Step23ExitGExtra) ((shrinkRow 768 s2Step23ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step23ExitGvExtra ++ [])))) s2Step23ExitG_Incoming s2Step23ExitG_checked h1 s2Step23ExitG_Outgoing
  exact h0
theorem s2Step23ExitBank_checked : compileHmrBankResizeLog .exit s2Step23ExitGBefore ⟨s2Step23ExitFRow,s2Step23ExitGRow,s2Step23ExitFvRow,s2Step23ExitGvRow⟩ ⟨256,255,25,23⟩ [[],[],[],[]]=
    some (s2Step23ExitGvAfter,⟨s2Step23ExitFOut,s2Step23ExitGOut,s2Step23ExitFvOut,s2Step23ExitGvOut⟩,(shrinkRow 769 s2Step23ExitGExtra ++ (shrinkRow 768 s2Step23ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step23ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step23ExitBank_rows]
  rfl
theorem s2Step24ExitBank_incomingDistinct : ([s2Step24ExitGRow,s2Step24ExitFRow,s2Step24ExitFvRow,s2Step24ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24ExitBank_outgoingOwned : rowsOwned s2Step24ExitGvAfter [s2Step24ExitGOut,s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step24ExitGvAfter (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<780) ∨ (781≤q ∧ q<782) ∨ (785≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24ExitG_Incoming : rowsOwned s2Step24ExitGBefore [s2Step24ExitGRow,s2Step24ExitFRow,s2Step24ExitFvRow,s2Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24ExitGRow,s2Step24ExitFRow,s2Step24ExitFvRow,s2Step24ExitGvRow] 0 s2Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24ExitGBefore (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24ExitG_Outgoing : rowsOwned s2Step24ExitGvAfter [s2Step24ExitGOut,s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut] :=
  hmrRows_owned_drop s2Step24ExitGvAfter [s2Step24ExitGOut,s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut] 0 s2Step24ExitBank_outgoingOwned
theorem s2Step24ExitF_Incoming : rowsOwned s2Step24ExitFBefore [s2Step24ExitFRow,s2Step24ExitFvRow,s2Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24ExitGRow,s2Step24ExitFRow,s2Step24ExitFvRow,s2Step24ExitGvRow] 1 s2Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24ExitFBefore (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24ExitF_Outgoing : rowsOwned s2Step24ExitGvAfter [s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut] :=
  hmrRows_owned_drop s2Step24ExitGvAfter [s2Step24ExitGOut,s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut] 1 s2Step24ExitBank_outgoingOwned
theorem s2Step24ExitFv_Incoming : rowsOwned s2Step24ExitFvBefore [s2Step24ExitFvRow,s2Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24ExitGRow,s2Step24ExitFRow,s2Step24ExitFvRow,s2Step24ExitGvRow] 2 s2Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24ExitFvBefore (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<782) ∨ (785≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24ExitFv_Outgoing : rowsOwned s2Step24ExitGvAfter [s2Step24ExitFvOut,s2Step24ExitGvOut] :=
  hmrRows_owned_drop s2Step24ExitGvAfter [s2Step24ExitGOut,s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut] 2 s2Step24ExitBank_outgoingOwned
theorem s2Step24ExitGv_Incoming : rowsOwned s2Step24ExitGvBefore [s2Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step24ExitGRow,s2Step24ExitFRow,s2Step24ExitFvRow,s2Step24ExitGvRow] 3 s2Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step24ExitGvBefore (fun q => (0≤q ∧ q<254) ∨ (255≤q ∧ q<767) ∨ (768≤q ∧ q<782) ∨ (785≤q ∧ q<840) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step24ExitGv_Outgoing : rowsOwned s2Step24ExitGvAfter [s2Step24ExitGvOut] :=
  hmrRows_owned_drop s2Step24ExitGvAfter [s2Step24ExitGOut,s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut] 3 s2Step24ExitBank_outgoingOwned
theorem s2Step24ExitBank_rows : planWindowRowsLog s2Step24ExitGBefore [(s2Step24ExitGRow,254),(s2Step24ExitFRow,255),(s2Step24ExitFvRow,25),(s2Step24ExitGvRow,24)] [[],[],[],[]]=
    some (s2Step24ExitGvAfter,[s2Step24ExitGOut,s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut],(shrinkRow 769 s2Step24ExitGExtra ++ (shrinkRow 768 s2Step24ExitFExtra ++ (shrinkRow 770 s2Step24ExitFvExtra ++ (shrinkRow 771 s2Step24ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step24ExitGvAfter [] []=some (s2Step24ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step24ExitGvBefore s2Step24ExitGvAfter s2Step24ExitGvAfter
    s2Step24ExitGvRow s2Step24ExitGvOut 24 [] [] [] []
    (shrinkRow 771 s2Step24ExitGvExtra) ([]) s2Step24ExitGv_Incoming s2Step24ExitGv_checked h4 s2Step24ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step24ExitFvBefore s2Step24ExitFvAfter s2Step24ExitGvAfter
    s2Step24ExitFvRow s2Step24ExitFvOut 25 [] [(s2Step24ExitGvRow,24)] [[]] [s2Step24ExitGvOut]
    (shrinkRow 770 s2Step24ExitFvExtra) ((shrinkRow 771 s2Step24ExitGvExtra ++ [])) s2Step24ExitFv_Incoming s2Step24ExitFv_checked h3 s2Step24ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step24ExitFBefore s2Step24ExitFAfter s2Step24ExitGvAfter
    s2Step24ExitFRow s2Step24ExitFOut 255 [] [(s2Step24ExitFvRow,25),(s2Step24ExitGvRow,24)] [[],[]] [s2Step24ExitFvOut,s2Step24ExitGvOut]
    (shrinkRow 768 s2Step24ExitFExtra) ((shrinkRow 770 s2Step24ExitFvExtra ++ (shrinkRow 771 s2Step24ExitGvExtra ++ []))) s2Step24ExitF_Incoming s2Step24ExitF_checked h2 s2Step24ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step24ExitGBefore s2Step24ExitGAfter s2Step24ExitGvAfter
    s2Step24ExitGRow s2Step24ExitGOut 254 [] [(s2Step24ExitFRow,255),(s2Step24ExitFvRow,25),(s2Step24ExitGvRow,24)] [[],[],[]] [s2Step24ExitFOut,s2Step24ExitFvOut,s2Step24ExitGvOut]
    (shrinkRow 769 s2Step24ExitGExtra) ((shrinkRow 768 s2Step24ExitFExtra ++ (shrinkRow 770 s2Step24ExitFvExtra ++ (shrinkRow 771 s2Step24ExitGvExtra ++ [])))) s2Step24ExitG_Incoming s2Step24ExitG_checked h1 s2Step24ExitG_Outgoing
  exact h0
theorem s2Step24ExitBank_checked : compileHmrBankResizeLog .exit s2Step24ExitGBefore ⟨s2Step24ExitFRow,s2Step24ExitGRow,s2Step24ExitFvRow,s2Step24ExitGvRow⟩ ⟨255,254,25,24⟩ [[],[],[],[]]=
    some (s2Step24ExitGvAfter,⟨s2Step24ExitFOut,s2Step24ExitGOut,s2Step24ExitFvOut,s2Step24ExitGvOut⟩,(shrinkRow 769 s2Step24ExitGExtra ++ (shrinkRow 768 s2Step24ExitFExtra ++ (shrinkRow 770 s2Step24ExitFvExtra ++ (shrinkRow 771 s2Step24ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step24ExitBank_rows]
  rfl
theorem s2Step25ExitBank_incomingDistinct : ([s2Step25ExitGRow,s2Step25ExitFRow,s2Step25ExitFvRow,s2Step25ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25ExitBank_outgoingOwned : rowsOwned s2Step25ExitGvAfter [s2Step25ExitGOut,s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step25ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25ExitG_Incoming : rowsOwned s2Step25ExitGBefore [s2Step25ExitGRow,s2Step25ExitFRow,s2Step25ExitFvRow,s2Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25ExitGRow,s2Step25ExitFRow,s2Step25ExitFvRow,s2Step25ExitGvRow] 0 s2Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25ExitG_Outgoing : rowsOwned s2Step25ExitGvAfter [s2Step25ExitGOut,s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut] :=
  hmrRows_owned_drop s2Step25ExitGvAfter [s2Step25ExitGOut,s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut] 0 s2Step25ExitBank_outgoingOwned
theorem s2Step25ExitF_Incoming : rowsOwned s2Step25ExitFBefore [s2Step25ExitFRow,s2Step25ExitFvRow,s2Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25ExitGRow,s2Step25ExitFRow,s2Step25ExitFvRow,s2Step25ExitGvRow] 1 s2Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25ExitF_Outgoing : rowsOwned s2Step25ExitGvAfter [s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut] :=
  hmrRows_owned_drop s2Step25ExitGvAfter [s2Step25ExitGOut,s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut] 1 s2Step25ExitBank_outgoingOwned
theorem s2Step25ExitFv_Incoming : rowsOwned s2Step25ExitFvBefore [s2Step25ExitFvRow,s2Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25ExitGRow,s2Step25ExitFRow,s2Step25ExitFvRow,s2Step25ExitGvRow] 2 s2Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25ExitFv_Outgoing : rowsOwned s2Step25ExitGvAfter [s2Step25ExitFvOut,s2Step25ExitGvOut] :=
  hmrRows_owned_drop s2Step25ExitGvAfter [s2Step25ExitGOut,s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut] 2 s2Step25ExitBank_outgoingOwned
theorem s2Step25ExitGv_Incoming : rowsOwned s2Step25ExitGvBefore [s2Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step25ExitGRow,s2Step25ExitFRow,s2Step25ExitFvRow,s2Step25ExitGvRow] 3 s2Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step25ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (784≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
    decide +kernel
theorem s2Step25ExitGv_Outgoing : rowsOwned s2Step25ExitGvAfter [s2Step25ExitGvOut] :=
  hmrRows_owned_drop s2Step25ExitGvAfter [s2Step25ExitGOut,s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut] 3 s2Step25ExitBank_outgoingOwned
theorem s2Step25ExitBank_rows : planWindowRowsLog s2Step25ExitGBefore [(s2Step25ExitGRow,254),(s2Step25ExitFRow,255),(s2Step25ExitFvRow,26),(s2Step25ExitGvRow,25)] [[],[],[],[]]=
    some (s2Step25ExitGvAfter,[s2Step25ExitGOut,s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut],(shrinkRow 769 s2Step25ExitGExtra ++ (shrinkRow 768 s2Step25ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step25ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step25ExitGvAfter [] []=some (s2Step25ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step25ExitGvBefore s2Step25ExitGvAfter s2Step25ExitGvAfter
    s2Step25ExitGvRow s2Step25ExitGvOut 25 [] [] [] []
    (shrinkRow 771 s2Step25ExitGvExtra) ([]) s2Step25ExitGv_Incoming s2Step25ExitGv_checked h4 s2Step25ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step25ExitFvBefore s2Step25ExitFvAfter s2Step25ExitGvAfter
    s2Step25ExitFvRow s2Step25ExitFvOut 26 [] [(s2Step25ExitGvRow,25)] [[]] [s2Step25ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step25ExitGvExtra ++ [])) s2Step25ExitFv_Incoming s2Step25ExitFv_checked h3 s2Step25ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step25ExitFBefore s2Step25ExitFAfter s2Step25ExitGvAfter
    s2Step25ExitFRow s2Step25ExitFOut 255 [] [(s2Step25ExitFvRow,26),(s2Step25ExitGvRow,25)] [[],[]] [s2Step25ExitFvOut,s2Step25ExitGvOut]
    (shrinkRow 768 s2Step25ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step25ExitGvExtra ++ []))) s2Step25ExitF_Incoming s2Step25ExitF_checked h2 s2Step25ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step25ExitGBefore s2Step25ExitGAfter s2Step25ExitGvAfter
    s2Step25ExitGRow s2Step25ExitGOut 254 [] [(s2Step25ExitFRow,255),(s2Step25ExitFvRow,26),(s2Step25ExitGvRow,25)] [[],[],[]] [s2Step25ExitFOut,s2Step25ExitFvOut,s2Step25ExitGvOut]
    (shrinkRow 769 s2Step25ExitGExtra) ((shrinkRow 768 s2Step25ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step25ExitGvExtra ++ [])))) s2Step25ExitG_Incoming s2Step25ExitG_checked h1 s2Step25ExitG_Outgoing
  exact h0
theorem s2Step25ExitBank_checked : compileHmrBankResizeLog .exit s2Step25ExitGBefore ⟨s2Step25ExitFRow,s2Step25ExitGRow,s2Step25ExitFvRow,s2Step25ExitGvRow⟩ ⟨255,254,26,25⟩ [[],[],[],[]]=
    some (s2Step25ExitGvAfter,⟨s2Step25ExitFOut,s2Step25ExitGOut,s2Step25ExitFvOut,s2Step25ExitGvOut⟩,(shrinkRow 769 s2Step25ExitGExtra ++ (shrinkRow 768 s2Step25ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step25ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step25ExitBank_rows]
  rfl
theorem s2Step26ExitBank_incomingDistinct : ([s2Step26ExitGRow,s2Step26ExitFRow,s2Step26ExitFvRow,s2Step26ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26ExitBank_outgoingOwned : rowsOwned s2Step26ExitGvAfter [s2Step26ExitGOut,s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step26ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26ExitG_Incoming : rowsOwned s2Step26ExitGBefore [s2Step26ExitGRow,s2Step26ExitFRow,s2Step26ExitFvRow,s2Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26ExitGRow,s2Step26ExitFRow,s2Step26ExitFvRow,s2Step26ExitGvRow] 0 s2Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26ExitGBefore (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26ExitG_Outgoing : rowsOwned s2Step26ExitGvAfter [s2Step26ExitGOut,s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut] :=
  hmrRows_owned_drop s2Step26ExitGvAfter [s2Step26ExitGOut,s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut] 0 s2Step26ExitBank_outgoingOwned
theorem s2Step26ExitF_Incoming : rowsOwned s2Step26ExitFBefore [s2Step26ExitFRow,s2Step26ExitFvRow,s2Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26ExitGRow,s2Step26ExitFRow,s2Step26ExitFvRow,s2Step26ExitGvRow] 1 s2Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26ExitF_Outgoing : rowsOwned s2Step26ExitGvAfter [s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut] :=
  hmrRows_owned_drop s2Step26ExitGvAfter [s2Step26ExitGOut,s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut] 1 s2Step26ExitBank_outgoingOwned
theorem s2Step26ExitFv_Incoming : rowsOwned s2Step26ExitFvBefore [s2Step26ExitFvRow,s2Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26ExitGRow,s2Step26ExitFRow,s2Step26ExitFvRow,s2Step26ExitGvRow] 2 s2Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26ExitFv_Outgoing : rowsOwned s2Step26ExitGvAfter [s2Step26ExitFvOut,s2Step26ExitGvOut] :=
  hmrRows_owned_drop s2Step26ExitGvAfter [s2Step26ExitGOut,s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut] 2 s2Step26ExitBank_outgoingOwned
theorem s2Step26ExitGv_Incoming : rowsOwned s2Step26ExitGvBefore [s2Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step26ExitGRow,s2Step26ExitFRow,s2Step26ExitFvRow,s2Step26ExitGvRow] 3 s2Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step26ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step26ExitGv_Outgoing : rowsOwned s2Step26ExitGvAfter [s2Step26ExitGvOut] :=
  hmrRows_owned_drop s2Step26ExitGvAfter [s2Step26ExitGOut,s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut] 3 s2Step26ExitBank_outgoingOwned
theorem s2Step26ExitBank_rows : planWindowRowsLog s2Step26ExitGBefore [(s2Step26ExitGRow,254),(s2Step26ExitFRow,255),(s2Step26ExitFvRow,27),(s2Step26ExitGvRow,25)] [[],[],[],[]]=
    some (s2Step26ExitGvAfter,[s2Step26ExitGOut,s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut],(shrinkRow 769 s2Step26ExitGExtra ++ (shrinkRow 768 s2Step26ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step26ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step26ExitGvAfter [] []=some (s2Step26ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step26ExitGvBefore s2Step26ExitGvAfter s2Step26ExitGvAfter
    s2Step26ExitGvRow s2Step26ExitGvOut 25 [] [] [] []
    (shrinkRow 771 s2Step26ExitGvExtra) ([]) s2Step26ExitGv_Incoming s2Step26ExitGv_checked h4 s2Step26ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step26ExitFvBefore s2Step26ExitFvAfter s2Step26ExitGvAfter
    s2Step26ExitFvRow s2Step26ExitFvOut 27 [] [(s2Step26ExitGvRow,25)] [[]] [s2Step26ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step26ExitGvExtra ++ [])) s2Step26ExitFv_Incoming s2Step26ExitFv_checked h3 s2Step26ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step26ExitFBefore s2Step26ExitFAfter s2Step26ExitGvAfter
    s2Step26ExitFRow s2Step26ExitFOut 255 [] [(s2Step26ExitFvRow,27),(s2Step26ExitGvRow,25)] [[],[]] [s2Step26ExitFvOut,s2Step26ExitGvOut]
    (shrinkRow 768 s2Step26ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step26ExitGvExtra ++ []))) s2Step26ExitF_Incoming s2Step26ExitF_checked h2 s2Step26ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step26ExitGBefore s2Step26ExitGAfter s2Step26ExitGvAfter
    s2Step26ExitGRow s2Step26ExitGOut 254 [] [(s2Step26ExitFRow,255),(s2Step26ExitFvRow,27),(s2Step26ExitGvRow,25)] [[],[],[]] [s2Step26ExitFOut,s2Step26ExitFvOut,s2Step26ExitGvOut]
    (shrinkRow 769 s2Step26ExitGExtra) ((shrinkRow 768 s2Step26ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step26ExitGvExtra ++ [])))) s2Step26ExitG_Incoming s2Step26ExitG_checked h1 s2Step26ExitG_Outgoing
  exact h0
theorem s2Step26ExitBank_checked : compileHmrBankResizeLog .exit s2Step26ExitGBefore ⟨s2Step26ExitFRow,s2Step26ExitGRow,s2Step26ExitFvRow,s2Step26ExitGvRow⟩ ⟨255,254,27,25⟩ [[],[],[],[]]=
    some (s2Step26ExitGvAfter,⟨s2Step26ExitFOut,s2Step26ExitGOut,s2Step26ExitFvOut,s2Step26ExitGvOut⟩,(shrinkRow 769 s2Step26ExitGExtra ++ (shrinkRow 768 s2Step26ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step26ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step26ExitBank_rows]
  rfl
theorem s2Step27ExitBank_incomingDistinct : ([s2Step27ExitGRow,s2Step27ExitFRow,s2Step27ExitFvRow,s2Step27ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27ExitBank_outgoingOwned : rowsOwned s2Step27ExitGvAfter [s2Step27ExitGOut,s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step27ExitGvAfter (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<766) ∨ (767≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27ExitG_Incoming : rowsOwned s2Step27ExitGBefore [s2Step27ExitGRow,s2Step27ExitFRow,s2Step27ExitFvRow,s2Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27ExitGRow,s2Step27ExitFRow,s2Step27ExitFvRow,s2Step27ExitGvRow] 0 s2Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27ExitG_Outgoing : rowsOwned s2Step27ExitGvAfter [s2Step27ExitGOut,s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut] :=
  hmrRows_owned_drop s2Step27ExitGvAfter [s2Step27ExitGOut,s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut] 0 s2Step27ExitBank_outgoingOwned
theorem s2Step27ExitF_Incoming : rowsOwned s2Step27ExitFBefore [s2Step27ExitFRow,s2Step27ExitFvRow,s2Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27ExitGRow,s2Step27ExitFRow,s2Step27ExitFvRow,s2Step27ExitGvRow] 1 s2Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27ExitFBefore (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27ExitF_Outgoing : rowsOwned s2Step27ExitGvAfter [s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut] :=
  hmrRows_owned_drop s2Step27ExitGvAfter [s2Step27ExitGOut,s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut] 1 s2Step27ExitBank_outgoingOwned
theorem s2Step27ExitFv_Incoming : rowsOwned s2Step27ExitFvBefore [s2Step27ExitFvRow,s2Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27ExitGRow,s2Step27ExitFRow,s2Step27ExitFvRow,s2Step27ExitGvRow] 2 s2Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27ExitFvBefore (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<766) ∨ (767≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27ExitFv_Outgoing : rowsOwned s2Step27ExitGvAfter [s2Step27ExitFvOut,s2Step27ExitGvOut] :=
  hmrRows_owned_drop s2Step27ExitGvAfter [s2Step27ExitGOut,s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut] 2 s2Step27ExitBank_outgoingOwned
theorem s2Step27ExitGv_Incoming : rowsOwned s2Step27ExitGvBefore [s2Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step27ExitGRow,s2Step27ExitFRow,s2Step27ExitFvRow,s2Step27ExitGvRow] 3 s2Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step27ExitGvBefore (fun q => (0≤q ∧ q<253) ∨ (254≤q ∧ q<766) ∨ (767≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
    decide +kernel
theorem s2Step27ExitGv_Outgoing : rowsOwned s2Step27ExitGvAfter [s2Step27ExitGvOut] :=
  hmrRows_owned_drop s2Step27ExitGvAfter [s2Step27ExitGOut,s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut] 3 s2Step27ExitBank_outgoingOwned
theorem s2Step27ExitBank_rows : planWindowRowsLog s2Step27ExitGBefore [(s2Step27ExitGRow,253),(s2Step27ExitFRow,254),(s2Step27ExitFvRow,28),(s2Step27ExitGvRow,26)] [[],[],[],[]]=
    some (s2Step27ExitGvAfter,[s2Step27ExitGOut,s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut],(shrinkRow 769 s2Step27ExitGExtra ++ (shrinkRow 768 s2Step27ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step27ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step27ExitGvAfter [] []=some (s2Step27ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step27ExitGvBefore s2Step27ExitGvAfter s2Step27ExitGvAfter
    s2Step27ExitGvRow s2Step27ExitGvOut 26 [] [] [] []
    (shrinkRow 771 s2Step27ExitGvExtra) ([]) s2Step27ExitGv_Incoming s2Step27ExitGv_checked h4 s2Step27ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step27ExitFvBefore s2Step27ExitFvAfter s2Step27ExitGvAfter
    s2Step27ExitFvRow s2Step27ExitFvOut 28 [] [(s2Step27ExitGvRow,26)] [[]] [s2Step27ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step27ExitGvExtra ++ [])) s2Step27ExitFv_Incoming s2Step27ExitFv_checked h3 s2Step27ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step27ExitFBefore s2Step27ExitFAfter s2Step27ExitGvAfter
    s2Step27ExitFRow s2Step27ExitFOut 254 [] [(s2Step27ExitFvRow,28),(s2Step27ExitGvRow,26)] [[],[]] [s2Step27ExitFvOut,s2Step27ExitGvOut]
    (shrinkRow 768 s2Step27ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step27ExitGvExtra ++ []))) s2Step27ExitF_Incoming s2Step27ExitF_checked h2 s2Step27ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step27ExitGBefore s2Step27ExitGAfter s2Step27ExitGvAfter
    s2Step27ExitGRow s2Step27ExitGOut 253 [] [(s2Step27ExitFRow,254),(s2Step27ExitFvRow,28),(s2Step27ExitGvRow,26)] [[],[],[]] [s2Step27ExitFOut,s2Step27ExitFvOut,s2Step27ExitGvOut]
    (shrinkRow 769 s2Step27ExitGExtra) ((shrinkRow 768 s2Step27ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step27ExitGvExtra ++ [])))) s2Step27ExitG_Incoming s2Step27ExitG_checked h1 s2Step27ExitG_Outgoing
  exact h0
theorem s2Step27ExitBank_checked : compileHmrBankResizeLog .exit s2Step27ExitGBefore ⟨s2Step27ExitFRow,s2Step27ExitGRow,s2Step27ExitFvRow,s2Step27ExitGvRow⟩ ⟨254,253,28,26⟩ [[],[],[],[]]=
    some (s2Step27ExitGvAfter,⟨s2Step27ExitFOut,s2Step27ExitGOut,s2Step27ExitFvOut,s2Step27ExitGvOut⟩,(shrinkRow 769 s2Step27ExitGExtra ++ (shrinkRow 768 s2Step27ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step27ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step27ExitBank_rows]
  rfl
theorem s2Step28ExitBank_incomingDistinct : ([s2Step28ExitGRow,s2Step28ExitFRow,s2Step28ExitFvRow,s2Step28ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28ExitBank_outgoingOwned : rowsOwned s2Step28ExitGvAfter [s2Step28ExitGOut,s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step28ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28ExitG_Incoming : rowsOwned s2Step28ExitGBefore [s2Step28ExitGRow,s2Step28ExitFRow,s2Step28ExitFvRow,s2Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28ExitGRow,s2Step28ExitFRow,s2Step28ExitFvRow,s2Step28ExitGvRow] 0 s2Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28ExitG_Outgoing : rowsOwned s2Step28ExitGvAfter [s2Step28ExitGOut,s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut] :=
  hmrRows_owned_drop s2Step28ExitGvAfter [s2Step28ExitGOut,s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut] 0 s2Step28ExitBank_outgoingOwned
theorem s2Step28ExitF_Incoming : rowsOwned s2Step28ExitFBefore [s2Step28ExitFRow,s2Step28ExitFvRow,s2Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28ExitGRow,s2Step28ExitFRow,s2Step28ExitFvRow,s2Step28ExitGvRow] 1 s2Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28ExitF_Outgoing : rowsOwned s2Step28ExitGvAfter [s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut] :=
  hmrRows_owned_drop s2Step28ExitGvAfter [s2Step28ExitGOut,s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut] 1 s2Step28ExitBank_outgoingOwned
theorem s2Step28ExitFv_Incoming : rowsOwned s2Step28ExitFvBefore [s2Step28ExitFvRow,s2Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28ExitGRow,s2Step28ExitFRow,s2Step28ExitFvRow,s2Step28ExitGvRow] 2 s2Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28ExitFv_Outgoing : rowsOwned s2Step28ExitGvAfter [s2Step28ExitFvOut,s2Step28ExitGvOut] :=
  hmrRows_owned_drop s2Step28ExitGvAfter [s2Step28ExitGOut,s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut] 2 s2Step28ExitBank_outgoingOwned
theorem s2Step28ExitGv_Incoming : rowsOwned s2Step28ExitGvBefore [s2Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step28ExitGRow,s2Step28ExitFRow,s2Step28ExitFvRow,s2Step28ExitGvRow] 3 s2Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step28ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<841) ∨ (842≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step28ExitGv_Outgoing : rowsOwned s2Step28ExitGvAfter [s2Step28ExitGvOut] :=
  hmrRows_owned_drop s2Step28ExitGvAfter [s2Step28ExitGOut,s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut] 3 s2Step28ExitBank_outgoingOwned
theorem s2Step28ExitBank_rows : planWindowRowsLog s2Step28ExitGBefore [(s2Step28ExitGRow,253),(s2Step28ExitFRow,254),(s2Step28ExitFvRow,28),(s2Step28ExitGvRow,27)] [[],[],[],[]]=
    some (s2Step28ExitGvAfter,[s2Step28ExitGOut,s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut],(shrinkRow 769 s2Step28ExitGExtra ++ (shrinkRow 768 s2Step28ExitFExtra ++ (shrinkRow 770 s2Step28ExitFvExtra ++ (shrinkRow 771 s2Step28ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step28ExitGvAfter [] []=some (s2Step28ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step28ExitGvBefore s2Step28ExitGvAfter s2Step28ExitGvAfter
    s2Step28ExitGvRow s2Step28ExitGvOut 27 [] [] [] []
    (shrinkRow 771 s2Step28ExitGvExtra) ([]) s2Step28ExitGv_Incoming s2Step28ExitGv_checked h4 s2Step28ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step28ExitFvBefore s2Step28ExitFvAfter s2Step28ExitGvAfter
    s2Step28ExitFvRow s2Step28ExitFvOut 28 [] [(s2Step28ExitGvRow,27)] [[]] [s2Step28ExitGvOut]
    (shrinkRow 770 s2Step28ExitFvExtra) ((shrinkRow 771 s2Step28ExitGvExtra ++ [])) s2Step28ExitFv_Incoming s2Step28ExitFv_checked h3 s2Step28ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step28ExitFBefore s2Step28ExitFAfter s2Step28ExitGvAfter
    s2Step28ExitFRow s2Step28ExitFOut 254 [] [(s2Step28ExitFvRow,28),(s2Step28ExitGvRow,27)] [[],[]] [s2Step28ExitFvOut,s2Step28ExitGvOut]
    (shrinkRow 768 s2Step28ExitFExtra) ((shrinkRow 770 s2Step28ExitFvExtra ++ (shrinkRow 771 s2Step28ExitGvExtra ++ []))) s2Step28ExitF_Incoming s2Step28ExitF_checked h2 s2Step28ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step28ExitGBefore s2Step28ExitGAfter s2Step28ExitGvAfter
    s2Step28ExitGRow s2Step28ExitGOut 253 [] [(s2Step28ExitFRow,254),(s2Step28ExitFvRow,28),(s2Step28ExitGvRow,27)] [[],[],[]] [s2Step28ExitFOut,s2Step28ExitFvOut,s2Step28ExitGvOut]
    (shrinkRow 769 s2Step28ExitGExtra) ((shrinkRow 768 s2Step28ExitFExtra ++ (shrinkRow 770 s2Step28ExitFvExtra ++ (shrinkRow 771 s2Step28ExitGvExtra ++ [])))) s2Step28ExitG_Incoming s2Step28ExitG_checked h1 s2Step28ExitG_Outgoing
  exact h0
theorem s2Step28ExitBank_checked : compileHmrBankResizeLog .exit s2Step28ExitGBefore ⟨s2Step28ExitFRow,s2Step28ExitGRow,s2Step28ExitFvRow,s2Step28ExitGvRow⟩ ⟨254,253,28,27⟩ [[],[],[],[]]=
    some (s2Step28ExitGvAfter,⟨s2Step28ExitFOut,s2Step28ExitGOut,s2Step28ExitFvOut,s2Step28ExitGvOut⟩,(shrinkRow 769 s2Step28ExitGExtra ++ (shrinkRow 768 s2Step28ExitFExtra ++ (shrinkRow 770 s2Step28ExitFvExtra ++ (shrinkRow 771 s2Step28ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step28ExitBank_rows]
  rfl
theorem s2Step29ExitBank_incomingDistinct : ([s2Step29ExitGRow,s2Step29ExitFRow,s2Step29ExitFvRow,s2Step29ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29ExitBank_outgoingOwned : rowsOwned s2Step29ExitGvAfter [s2Step29ExitGOut,s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step29ExitGvAfter (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<765) ∨ (766≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29ExitG_Incoming : rowsOwned s2Step29ExitGBefore [s2Step29ExitGRow,s2Step29ExitFRow,s2Step29ExitFvRow,s2Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29ExitGRow,s2Step29ExitFRow,s2Step29ExitFvRow,s2Step29ExitGvRow] 0 s2Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29ExitG_Outgoing : rowsOwned s2Step29ExitGvAfter [s2Step29ExitGOut,s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut] :=
  hmrRows_owned_drop s2Step29ExitGvAfter [s2Step29ExitGOut,s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut] 0 s2Step29ExitBank_outgoingOwned
theorem s2Step29ExitF_Incoming : rowsOwned s2Step29ExitFBefore [s2Step29ExitFRow,s2Step29ExitFvRow,s2Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29ExitGRow,s2Step29ExitFRow,s2Step29ExitFvRow,s2Step29ExitGvRow] 1 s2Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29ExitFBefore (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<779) ∨ (780≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29ExitF_Outgoing : rowsOwned s2Step29ExitGvAfter [s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut] :=
  hmrRows_owned_drop s2Step29ExitGvAfter [s2Step29ExitGOut,s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut] 1 s2Step29ExitBank_outgoingOwned
theorem s2Step29ExitFv_Incoming : rowsOwned s2Step29ExitFvBefore [s2Step29ExitFvRow,s2Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29ExitGRow,s2Step29ExitFRow,s2Step29ExitFvRow,s2Step29ExitGvRow] 2 s2Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29ExitFvBefore (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<765) ∨ (766≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29ExitFv_Outgoing : rowsOwned s2Step29ExitGvAfter [s2Step29ExitFvOut,s2Step29ExitGvOut] :=
  hmrRows_owned_drop s2Step29ExitGvAfter [s2Step29ExitGOut,s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut] 2 s2Step29ExitBank_outgoingOwned
theorem s2Step29ExitGv_Incoming : rowsOwned s2Step29ExitGvBefore [s2Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step29ExitGRow,s2Step29ExitFRow,s2Step29ExitFvRow,s2Step29ExitGvRow] 3 s2Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step29ExitGvBefore (fun q => (0≤q ∧ q<252) ∨ (253≤q ∧ q<765) ∨ (766≤q ∧ q<779) ∨ (780≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
    decide +kernel
theorem s2Step29ExitGv_Outgoing : rowsOwned s2Step29ExitGvAfter [s2Step29ExitGvOut] :=
  hmrRows_owned_drop s2Step29ExitGvAfter [s2Step29ExitGOut,s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut] 3 s2Step29ExitBank_outgoingOwned
theorem s2Step29ExitBank_rows : planWindowRowsLog s2Step29ExitGBefore [(s2Step29ExitGRow,252),(s2Step29ExitFRow,253),(s2Step29ExitFvRow,29),(s2Step29ExitGvRow,27)] [[],[],[],[]]=
    some (s2Step29ExitGvAfter,[s2Step29ExitGOut,s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut],(shrinkRow 769 s2Step29ExitGExtra ++ (shrinkRow 768 s2Step29ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step29ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step29ExitGvAfter [] []=some (s2Step29ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step29ExitGvBefore s2Step29ExitGvAfter s2Step29ExitGvAfter
    s2Step29ExitGvRow s2Step29ExitGvOut 27 [] [] [] []
    (shrinkRow 771 s2Step29ExitGvExtra) ([]) s2Step29ExitGv_Incoming s2Step29ExitGv_checked h4 s2Step29ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step29ExitFvBefore s2Step29ExitFvAfter s2Step29ExitGvAfter
    s2Step29ExitFvRow s2Step29ExitFvOut 29 [] [(s2Step29ExitGvRow,27)] [[]] [s2Step29ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step29ExitGvExtra ++ [])) s2Step29ExitFv_Incoming s2Step29ExitFv_checked h3 s2Step29ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step29ExitFBefore s2Step29ExitFAfter s2Step29ExitGvAfter
    s2Step29ExitFRow s2Step29ExitFOut 253 [] [(s2Step29ExitFvRow,29),(s2Step29ExitGvRow,27)] [[],[]] [s2Step29ExitFvOut,s2Step29ExitGvOut]
    (shrinkRow 768 s2Step29ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step29ExitGvExtra ++ []))) s2Step29ExitF_Incoming s2Step29ExitF_checked h2 s2Step29ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step29ExitGBefore s2Step29ExitGAfter s2Step29ExitGvAfter
    s2Step29ExitGRow s2Step29ExitGOut 252 [] [(s2Step29ExitFRow,253),(s2Step29ExitFvRow,29),(s2Step29ExitGvRow,27)] [[],[],[]] [s2Step29ExitFOut,s2Step29ExitFvOut,s2Step29ExitGvOut]
    (shrinkRow 769 s2Step29ExitGExtra) ((shrinkRow 768 s2Step29ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step29ExitGvExtra ++ [])))) s2Step29ExitG_Incoming s2Step29ExitG_checked h1 s2Step29ExitG_Outgoing
  exact h0
theorem s2Step29ExitBank_checked : compileHmrBankResizeLog .exit s2Step29ExitGBefore ⟨s2Step29ExitFRow,s2Step29ExitGRow,s2Step29ExitFvRow,s2Step29ExitGvRow⟩ ⟨253,252,29,27⟩ [[],[],[],[]]=
    some (s2Step29ExitGvAfter,⟨s2Step29ExitFOut,s2Step29ExitGOut,s2Step29ExitFvOut,s2Step29ExitGvOut⟩,(shrinkRow 769 s2Step29ExitGExtra ++ (shrinkRow 768 s2Step29ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step29ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step29ExitBank_rows]
  rfl
theorem s2Step30ExitBank_incomingDistinct : ([s2Step30ExitGRow,s2Step30ExitFRow,s2Step30ExitFvRow,s2Step30ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30ExitBank_outgoingOwned : rowsOwned s2Step30ExitGvAfter [s2Step30ExitGOut,s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step30ExitGvAfter (fun q => (0≤q ∧ q<779) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30ExitG_Incoming : rowsOwned s2Step30ExitGBefore [s2Step30ExitGRow,s2Step30ExitFRow,s2Step30ExitFvRow,s2Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30ExitGRow,s2Step30ExitFRow,s2Step30ExitFvRow,s2Step30ExitGvRow] 0 s2Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30ExitG_Outgoing : rowsOwned s2Step30ExitGvAfter [s2Step30ExitGOut,s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut] :=
  hmrRows_owned_drop s2Step30ExitGvAfter [s2Step30ExitGOut,s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut] 0 s2Step30ExitBank_outgoingOwned
theorem s2Step30ExitF_Incoming : rowsOwned s2Step30ExitFBefore [s2Step30ExitFRow,s2Step30ExitFvRow,s2Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30ExitGRow,s2Step30ExitFRow,s2Step30ExitFvRow,s2Step30ExitGvRow] 1 s2Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30ExitF_Outgoing : rowsOwned s2Step30ExitGvAfter [s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut] :=
  hmrRows_owned_drop s2Step30ExitGvAfter [s2Step30ExitGOut,s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut] 1 s2Step30ExitBank_outgoingOwned
theorem s2Step30ExitFv_Incoming : rowsOwned s2Step30ExitFvBefore [s2Step30ExitFvRow,s2Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30ExitGRow,s2Step30ExitFRow,s2Step30ExitFvRow,s2Step30ExitGvRow] 2 s2Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30ExitFv_Outgoing : rowsOwned s2Step30ExitGvAfter [s2Step30ExitFvOut,s2Step30ExitGvOut] :=
  hmrRows_owned_drop s2Step30ExitGvAfter [s2Step30ExitGOut,s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut] 2 s2Step30ExitBank_outgoingOwned
theorem s2Step30ExitGv_Incoming : rowsOwned s2Step30ExitGvBefore [s2Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step30ExitGRow,s2Step30ExitFRow,s2Step30ExitFvRow,s2Step30ExitGvRow] 3 s2Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step30ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step30ExitGv_Outgoing : rowsOwned s2Step30ExitGvAfter [s2Step30ExitGvOut] :=
  hmrRows_owned_drop s2Step30ExitGvAfter [s2Step30ExitGOut,s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut] 3 s2Step30ExitBank_outgoingOwned
theorem s2Step30ExitBank_rows : planWindowRowsLog s2Step30ExitGBefore [(s2Step30ExitGRow,252),(s2Step30ExitFRow,253),(s2Step30ExitFvRow,29),(s2Step30ExitGvRow,28)] [[],[],[],[]]=
    some (s2Step30ExitGvAfter,[s2Step30ExitGOut,s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut],(shrinkRow 769 s2Step30ExitGExtra ++ (shrinkRow 768 s2Step30ExitFExtra ++ (shrinkRow 770 s2Step30ExitFvExtra ++ (shrinkRow 771 s2Step30ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step30ExitGvAfter [] []=some (s2Step30ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step30ExitGvBefore s2Step30ExitGvAfter s2Step30ExitGvAfter
    s2Step30ExitGvRow s2Step30ExitGvOut 28 [] [] [] []
    (shrinkRow 771 s2Step30ExitGvExtra) ([]) s2Step30ExitGv_Incoming s2Step30ExitGv_checked h4 s2Step30ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step30ExitFvBefore s2Step30ExitFvAfter s2Step30ExitGvAfter
    s2Step30ExitFvRow s2Step30ExitFvOut 29 [] [(s2Step30ExitGvRow,28)] [[]] [s2Step30ExitGvOut]
    (shrinkRow 770 s2Step30ExitFvExtra) ((shrinkRow 771 s2Step30ExitGvExtra ++ [])) s2Step30ExitFv_Incoming s2Step30ExitFv_checked h3 s2Step30ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step30ExitFBefore s2Step30ExitFAfter s2Step30ExitGvAfter
    s2Step30ExitFRow s2Step30ExitFOut 253 [] [(s2Step30ExitFvRow,29),(s2Step30ExitGvRow,28)] [[],[]] [s2Step30ExitFvOut,s2Step30ExitGvOut]
    (shrinkRow 768 s2Step30ExitFExtra) ((shrinkRow 770 s2Step30ExitFvExtra ++ (shrinkRow 771 s2Step30ExitGvExtra ++ []))) s2Step30ExitF_Incoming s2Step30ExitF_checked h2 s2Step30ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step30ExitGBefore s2Step30ExitGAfter s2Step30ExitGvAfter
    s2Step30ExitGRow s2Step30ExitGOut 252 [] [(s2Step30ExitFRow,253),(s2Step30ExitFvRow,29),(s2Step30ExitGvRow,28)] [[],[],[]] [s2Step30ExitFOut,s2Step30ExitFvOut,s2Step30ExitGvOut]
    (shrinkRow 769 s2Step30ExitGExtra) ((shrinkRow 768 s2Step30ExitFExtra ++ (shrinkRow 770 s2Step30ExitFvExtra ++ (shrinkRow 771 s2Step30ExitGvExtra ++ [])))) s2Step30ExitG_Incoming s2Step30ExitG_checked h1 s2Step30ExitG_Outgoing
  exact h0
theorem s2Step30ExitBank_checked : compileHmrBankResizeLog .exit s2Step30ExitGBefore ⟨s2Step30ExitFRow,s2Step30ExitGRow,s2Step30ExitFvRow,s2Step30ExitGvRow⟩ ⟨253,252,29,28⟩ [[],[],[],[]]=
    some (s2Step30ExitGvAfter,⟨s2Step30ExitFOut,s2Step30ExitGOut,s2Step30ExitFvOut,s2Step30ExitGvOut⟩,(shrinkRow 769 s2Step30ExitGExtra ++ (shrinkRow 768 s2Step30ExitFExtra ++ (shrinkRow 770 s2Step30ExitFvExtra ++ (shrinkRow 771 s2Step30ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step30ExitBank_rows]
  rfl
theorem s2Step31ExitBank_incomingDistinct : ([s2Step31ExitGRow,s2Step31ExitFRow,s2Step31ExitFvRow,s2Step31ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31ExitBank_outgoingOwned : rowsOwned s2Step31ExitGvAfter [s2Step31ExitGOut,s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step31ExitGvAfter (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<789) ∨ (790≤q ∧ q<839) ∨ (840≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31ExitG_Incoming : rowsOwned s2Step31ExitGBefore [s2Step31ExitGRow,s2Step31ExitFRow,s2Step31ExitFvRow,s2Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31ExitGRow,s2Step31ExitFRow,s2Step31ExitFvRow,s2Step31ExitGvRow] 0 s2Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31ExitGBefore (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31ExitG_Outgoing : rowsOwned s2Step31ExitGvAfter [s2Step31ExitGOut,s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut] :=
  hmrRows_owned_drop s2Step31ExitGvAfter [s2Step31ExitGOut,s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut] 0 s2Step31ExitBank_outgoingOwned
theorem s2Step31ExitF_Incoming : rowsOwned s2Step31ExitFBefore [s2Step31ExitFRow,s2Step31ExitFvRow,s2Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31ExitGRow,s2Step31ExitFRow,s2Step31ExitFvRow,s2Step31ExitGvRow] 1 s2Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31ExitFBefore (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31ExitF_Outgoing : rowsOwned s2Step31ExitGvAfter [s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut] :=
  hmrRows_owned_drop s2Step31ExitGvAfter [s2Step31ExitGOut,s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut] 1 s2Step31ExitBank_outgoingOwned
theorem s2Step31ExitFv_Incoming : rowsOwned s2Step31ExitFvBefore [s2Step31ExitFvRow,s2Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31ExitGRow,s2Step31ExitFRow,s2Step31ExitFvRow,s2Step31ExitGvRow] 2 s2Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31ExitFvBefore (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31ExitFv_Outgoing : rowsOwned s2Step31ExitGvAfter [s2Step31ExitFvOut,s2Step31ExitGvOut] :=
  hmrRows_owned_drop s2Step31ExitGvAfter [s2Step31ExitGOut,s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut] 2 s2Step31ExitBank_outgoingOwned
theorem s2Step31ExitGv_Incoming : rowsOwned s2Step31ExitGvBefore [s2Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step31ExitGRow,s2Step31ExitFRow,s2Step31ExitFvRow,s2Step31ExitGvRow] 3 s2Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step31ExitGvBefore (fun q => (0≤q ∧ q<251) ∨ (252≤q ∧ q<780) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<787) ∨ (788≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
    decide +kernel
theorem s2Step31ExitGv_Outgoing : rowsOwned s2Step31ExitGvAfter [s2Step31ExitGvOut] :=
  hmrRows_owned_drop s2Step31ExitGvAfter [s2Step31ExitGOut,s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut] 3 s2Step31ExitBank_outgoingOwned
theorem s2Step31ExitBank_rows : planWindowRowsLog s2Step31ExitGBefore [(s2Step31ExitGRow,251),(s2Step31ExitFRow,253),(s2Step31ExitFvRow,29),(s2Step31ExitGvRow,28)] [[],[],[],[]]=
    some (s2Step31ExitGvAfter,[s2Step31ExitGOut,s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut],(shrinkRow 769 s2Step31ExitGExtra ++ (shrinkRow 768 s2Step31ExitFExtra ++ (shrinkRow 770 s2Step31ExitFvExtra ++ (shrinkRow 771 s2Step31ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step31ExitGvAfter [] []=some (s2Step31ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step31ExitGvBefore s2Step31ExitGvAfter s2Step31ExitGvAfter
    s2Step31ExitGvRow s2Step31ExitGvOut 28 [] [] [] []
    (shrinkRow 771 s2Step31ExitGvExtra) ([]) s2Step31ExitGv_Incoming s2Step31ExitGv_checked h4 s2Step31ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step31ExitFvBefore s2Step31ExitFvAfter s2Step31ExitGvAfter
    s2Step31ExitFvRow s2Step31ExitFvOut 29 [] [(s2Step31ExitGvRow,28)] [[]] [s2Step31ExitGvOut]
    (shrinkRow 770 s2Step31ExitFvExtra) ((shrinkRow 771 s2Step31ExitGvExtra ++ [])) s2Step31ExitFv_Incoming s2Step31ExitFv_checked h3 s2Step31ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step31ExitFBefore s2Step31ExitFAfter s2Step31ExitGvAfter
    s2Step31ExitFRow s2Step31ExitFOut 253 [] [(s2Step31ExitFvRow,29),(s2Step31ExitGvRow,28)] [[],[]] [s2Step31ExitFvOut,s2Step31ExitGvOut]
    (shrinkRow 768 s2Step31ExitFExtra) ((shrinkRow 770 s2Step31ExitFvExtra ++ (shrinkRow 771 s2Step31ExitGvExtra ++ []))) s2Step31ExitF_Incoming s2Step31ExitF_checked h2 s2Step31ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step31ExitGBefore s2Step31ExitGAfter s2Step31ExitGvAfter
    s2Step31ExitGRow s2Step31ExitGOut 251 [] [(s2Step31ExitFRow,253),(s2Step31ExitFvRow,29),(s2Step31ExitGvRow,28)] [[],[],[]] [s2Step31ExitFOut,s2Step31ExitFvOut,s2Step31ExitGvOut]
    (shrinkRow 769 s2Step31ExitGExtra) ((shrinkRow 768 s2Step31ExitFExtra ++ (shrinkRow 770 s2Step31ExitFvExtra ++ (shrinkRow 771 s2Step31ExitGvExtra ++ [])))) s2Step31ExitG_Incoming s2Step31ExitG_checked h1 s2Step31ExitG_Outgoing
  exact h0
theorem s2Step31ExitBank_checked : compileHmrBankResizeLog .exit s2Step31ExitGBefore ⟨s2Step31ExitFRow,s2Step31ExitGRow,s2Step31ExitFvRow,s2Step31ExitGvRow⟩ ⟨253,251,29,28⟩ [[],[],[],[]]=
    some (s2Step31ExitGvAfter,⟨s2Step31ExitFOut,s2Step31ExitGOut,s2Step31ExitFvOut,s2Step31ExitGvOut⟩,(shrinkRow 769 s2Step31ExitGExtra ++ (shrinkRow 768 s2Step31ExitFExtra ++ (shrinkRow 770 s2Step31ExitFvExtra ++ (shrinkRow 771 s2Step31ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step31ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
