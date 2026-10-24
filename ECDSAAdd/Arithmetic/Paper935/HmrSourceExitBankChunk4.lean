import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk4
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk3

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Step31ExitBank_incomingDistinct : ([s6Step31ExitGRow,s6Step31ExitFRow,s6Step31ExitFvRow,s6Step31ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31ExitBank_outgoingOwned : rowsOwned s6Step31ExitGvAfter [s6Step31ExitGOut,s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step31ExitGvAfter (fun q => ([(0,251),(252,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31ExitG_Incoming : rowsOwned s6Step31ExitGBefore [s6Step31ExitGRow,s6Step31ExitFRow,s6Step31ExitFvRow,s6Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31ExitGRow,s6Step31ExitFRow,s6Step31ExitFvRow,s6Step31ExitGvRow] 0 s6Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31ExitG_Outgoing : rowsOwned s6Step31ExitGvAfter [s6Step31ExitGOut,s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut] :=
  hmrRows_owned_drop s6Step31ExitGvAfter [s6Step31ExitGOut,s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut] 0 s6Step31ExitBank_outgoingOwned
theorem s6Step31ExitF_Incoming : rowsOwned s6Step31ExitFBefore [s6Step31ExitFRow,s6Step31ExitFvRow,s6Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31ExitGRow,s6Step31ExitFRow,s6Step31ExitFvRow,s6Step31ExitGvRow] 1 s6Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31ExitFBefore (fun q => ([(0,251),(252,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31ExitF_Outgoing : rowsOwned s6Step31ExitGvAfter [s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut] :=
  hmrRows_owned_drop s6Step31ExitGvAfter [s6Step31ExitGOut,s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut] 1 s6Step31ExitBank_outgoingOwned
theorem s6Step31ExitFv_Incoming : rowsOwned s6Step31ExitFvBefore [s6Step31ExitFvRow,s6Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31ExitGRow,s6Step31ExitFRow,s6Step31ExitFvRow,s6Step31ExitGvRow] 2 s6Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31ExitFvBefore (fun q => ([(0,251),(252,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31ExitFv_Outgoing : rowsOwned s6Step31ExitGvAfter [s6Step31ExitFvOut,s6Step31ExitGvOut] :=
  hmrRows_owned_drop s6Step31ExitGvAfter [s6Step31ExitGOut,s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut] 2 s6Step31ExitBank_outgoingOwned
theorem s6Step31ExitGv_Incoming : rowsOwned s6Step31ExitGvBefore [s6Step31ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31ExitGRow,s6Step31ExitFRow,s6Step31ExitFvRow,s6Step31ExitGvRow] 3 s6Step31ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31ExitGvBefore (fun q => ([(0,251),(252,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31ExitGv_Outgoing : rowsOwned s6Step31ExitGvAfter [s6Step31ExitGvOut] :=
  hmrRows_owned_drop s6Step31ExitGvAfter [s6Step31ExitGOut,s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut] 3 s6Step31ExitBank_outgoingOwned
theorem s6Step31ExitBank_rows : planWindowRowsLog s6Step31ExitGBefore [(s6Step31ExitGRow,251),(s6Step31ExitFRow,253),(s6Step31ExitFvRow,29),(s6Step31ExitGvRow,28)] [[],[],[],[]]=
    some (s6Step31ExitGvAfter,[s6Step31ExitGOut,s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut],(shrinkRow 777 s6Step31ExitGExtra ++ (shrinkRow 795 s6Step31ExitFExtra ++ (shrinkRow 776 s6Step31ExitFvExtra ++ (shrinkRow 775 s6Step31ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step31ExitGvAfter [] []=some (s6Step31ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step31ExitGvBefore s6Step31ExitGvAfter s6Step31ExitGvAfter
    s6Step31ExitGvRow s6Step31ExitGvOut 28 [] [] [] []
    (shrinkRow 775 s6Step31ExitGvExtra) ([]) s6Step31ExitGv_Incoming s6Step31ExitGv_checked h4 s6Step31ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step31ExitFvBefore s6Step31ExitFvAfter s6Step31ExitGvAfter
    s6Step31ExitFvRow s6Step31ExitFvOut 29 [] [(s6Step31ExitGvRow,28)] [[]] [s6Step31ExitGvOut]
    (shrinkRow 776 s6Step31ExitFvExtra) ((shrinkRow 775 s6Step31ExitGvExtra ++ [])) s6Step31ExitFv_Incoming s6Step31ExitFv_checked h3 s6Step31ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step31ExitFBefore s6Step31ExitFAfter s6Step31ExitGvAfter
    s6Step31ExitFRow s6Step31ExitFOut 253 [] [(s6Step31ExitFvRow,29),(s6Step31ExitGvRow,28)] [[],[]] [s6Step31ExitFvOut,s6Step31ExitGvOut]
    (shrinkRow 795 s6Step31ExitFExtra) ((shrinkRow 776 s6Step31ExitFvExtra ++ (shrinkRow 775 s6Step31ExitGvExtra ++ []))) s6Step31ExitF_Incoming s6Step31ExitF_checked h2 s6Step31ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step31ExitGBefore s6Step31ExitGAfter s6Step31ExitGvAfter
    s6Step31ExitGRow s6Step31ExitGOut 251 [] [(s6Step31ExitFRow,253),(s6Step31ExitFvRow,29),(s6Step31ExitGvRow,28)] [[],[],[]] [s6Step31ExitFOut,s6Step31ExitFvOut,s6Step31ExitGvOut]
    (shrinkRow 777 s6Step31ExitGExtra) ((shrinkRow 795 s6Step31ExitFExtra ++ (shrinkRow 776 s6Step31ExitFvExtra ++ (shrinkRow 775 s6Step31ExitGvExtra ++ [])))) s6Step31ExitG_Incoming s6Step31ExitG_checked h1 s6Step31ExitG_Outgoing
  exact h0
theorem s6Step31ExitBank_checked : compileHmrBankResizeLog .exit s6Step31ExitGBefore ⟨s6Step31ExitFRow,s6Step31ExitGRow,s6Step31ExitFvRow,s6Step31ExitGvRow⟩ ⟨253,251,29,28⟩ [[],[],[],[]]=
    some (s6Step31ExitGvAfter,⟨s6Step31ExitFOut,s6Step31ExitGOut,s6Step31ExitFvOut,s6Step31ExitGvOut⟩,(shrinkRow 777 s6Step31ExitGExtra ++ (shrinkRow 795 s6Step31ExitFExtra ++ (shrinkRow 776 s6Step31ExitFvExtra ++ (shrinkRow 775 s6Step31ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step31ExitBank_rows]
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
