import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk7

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Step63ExitBank_incomingDistinct : ([s6Step63ExitGRow,s6Step63ExitFRow,s6Step63ExitFvRow,s6Step63ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step63ExitBank_outgoingOwned : rowsOwned s6Step63ExitGvAfter [s6Step63ExitGOut,s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step63ExitGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63ExitG_Incoming : rowsOwned s6Step63ExitGBefore [s6Step63ExitGRow,s6Step63ExitFRow,s6Step63ExitFvRow,s6Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63ExitGRow,s6Step63ExitFRow,s6Step63ExitFvRow,s6Step63ExitGvRow] 0 s6Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63ExitG_Outgoing : rowsOwned s6Step63ExitGvAfter [s6Step63ExitGOut,s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut] :=
  hmrRows_owned_drop s6Step63ExitGvAfter [s6Step63ExitGOut,s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut] 0 s6Step63ExitBank_outgoingOwned
theorem s6Step63ExitF_Incoming : rowsOwned s6Step63ExitFBefore [s6Step63ExitFRow,s6Step63ExitFvRow,s6Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63ExitGRow,s6Step63ExitFRow,s6Step63ExitFvRow,s6Step63ExitGvRow] 1 s6Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63ExitF_Outgoing : rowsOwned s6Step63ExitGvAfter [s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut] :=
  hmrRows_owned_drop s6Step63ExitGvAfter [s6Step63ExitGOut,s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut] 1 s6Step63ExitBank_outgoingOwned
theorem s6Step63ExitFv_Incoming : rowsOwned s6Step63ExitFvBefore [s6Step63ExitFvRow,s6Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63ExitGRow,s6Step63ExitFRow,s6Step63ExitFvRow,s6Step63ExitGvRow] 2 s6Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63ExitFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63ExitFv_Outgoing : rowsOwned s6Step63ExitGvAfter [s6Step63ExitFvOut,s6Step63ExitGvOut] :=
  hmrRows_owned_drop s6Step63ExitGvAfter [s6Step63ExitGOut,s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut] 2 s6Step63ExitBank_outgoingOwned
theorem s6Step63ExitGv_Incoming : rowsOwned s6Step63ExitGvBefore [s6Step63ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63ExitGRow,s6Step63ExitFRow,s6Step63ExitFvRow,s6Step63ExitGvRow] 3 s6Step63ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63ExitGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63ExitGv_Outgoing : rowsOwned s6Step63ExitGvAfter [s6Step63ExitGvOut] :=
  hmrRows_owned_drop s6Step63ExitGvAfter [s6Step63ExitGOut,s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut] 3 s6Step63ExitBank_outgoingOwned
theorem s6Step63ExitBank_rows : planWindowRowsLog s6Step63ExitGBefore [(s6Step63ExitGRow,237),(s6Step63ExitFRow,237),(s6Step63ExitFvRow,46),(s6Step63ExitGvRow,44)] [[],[],[],[]]=
    some (s6Step63ExitGvAfter,[s6Step63ExitGOut,s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut],(shrinkRow 777 s6Step63ExitGExtra ++ (shrinkRow 795 s6Step63ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step63ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step63ExitGvAfter [] []=some (s6Step63ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step63ExitGvBefore s6Step63ExitGvAfter s6Step63ExitGvAfter
    s6Step63ExitGvRow s6Step63ExitGvOut 44 [] [] [] []
    (shrinkRow 775 s6Step63ExitGvExtra) ([]) s6Step63ExitGv_Incoming s6Step63ExitGv_checked h4 s6Step63ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step63ExitFvBefore s6Step63ExitFvAfter s6Step63ExitGvAfter
    s6Step63ExitFvRow s6Step63ExitFvOut 46 [] [(s6Step63ExitGvRow,44)] [[]] [s6Step63ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step63ExitGvExtra ++ [])) s6Step63ExitFv_Incoming s6Step63ExitFv_checked h3 s6Step63ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step63ExitFBefore s6Step63ExitFAfter s6Step63ExitGvAfter
    s6Step63ExitFRow s6Step63ExitFOut 237 [] [(s6Step63ExitFvRow,46),(s6Step63ExitGvRow,44)] [[],[]] [s6Step63ExitFvOut,s6Step63ExitGvOut]
    (shrinkRow 795 s6Step63ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step63ExitGvExtra ++ []))) s6Step63ExitF_Incoming s6Step63ExitF_checked h2 s6Step63ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step63ExitGBefore s6Step63ExitGAfter s6Step63ExitGvAfter
    s6Step63ExitGRow s6Step63ExitGOut 237 [] [(s6Step63ExitFRow,237),(s6Step63ExitFvRow,46),(s6Step63ExitGvRow,44)] [[],[],[]] [s6Step63ExitFOut,s6Step63ExitFvOut,s6Step63ExitGvOut]
    (shrinkRow 777 s6Step63ExitGExtra) ((shrinkRow 795 s6Step63ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step63ExitGvExtra ++ [])))) s6Step63ExitG_Incoming s6Step63ExitG_checked h1 s6Step63ExitG_Outgoing
  exact h0
theorem s6Step63ExitBank_checked : compileHmrBankResizeLog .exit s6Step63ExitGBefore ⟨s6Step63ExitFRow,s6Step63ExitGRow,s6Step63ExitFvRow,s6Step63ExitGvRow⟩ ⟨237,237,46,44⟩ [[],[],[],[]]=
    some (s6Step63ExitGvAfter,⟨s6Step63ExitFOut,s6Step63ExitGOut,s6Step63ExitFvOut,s6Step63ExitGvOut⟩,(shrinkRow 777 s6Step63ExitGExtra ++ (shrinkRow 795 s6Step63ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step63ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step63ExitBank_rows]
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
