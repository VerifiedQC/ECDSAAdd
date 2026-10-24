import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk5

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
theorem s6Step32ExitBank_incomingDistinct : ([s6Step32ExitGRow,s6Step32ExitFRow,s6Step32ExitFvRow,s6Step32ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32ExitBank_outgoingOwned : rowsOwned s6Step32ExitGvAfter [s6Step32ExitGOut,s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step32ExitGvAfter (fun q => ([(0,508),(509,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32ExitG_Incoming : rowsOwned s6Step32ExitGBefore [s6Step32ExitGRow,s6Step32ExitFRow,s6Step32ExitFvRow,s6Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32ExitGRow,s6Step32ExitFRow,s6Step32ExitFvRow,s6Step32ExitGvRow] 0 s6Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32ExitG_Outgoing : rowsOwned s6Step32ExitGvAfter [s6Step32ExitGOut,s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut] :=
  hmrRows_owned_drop s6Step32ExitGvAfter [s6Step32ExitGOut,s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut] 0 s6Step32ExitBank_outgoingOwned
theorem s6Step32ExitF_Incoming : rowsOwned s6Step32ExitFBefore [s6Step32ExitFRow,s6Step32ExitFvRow,s6Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32ExitGRow,s6Step32ExitFRow,s6Step32ExitFvRow,s6Step32ExitGvRow] 1 s6Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32ExitFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32ExitF_Outgoing : rowsOwned s6Step32ExitGvAfter [s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut] :=
  hmrRows_owned_drop s6Step32ExitGvAfter [s6Step32ExitGOut,s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut] 1 s6Step32ExitBank_outgoingOwned
theorem s6Step32ExitFv_Incoming : rowsOwned s6Step32ExitFvBefore [s6Step32ExitFvRow,s6Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32ExitGRow,s6Step32ExitFRow,s6Step32ExitFvRow,s6Step32ExitGvRow] 2 s6Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32ExitFvBefore (fun q => ([(0,508),(509,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32ExitFv_Outgoing : rowsOwned s6Step32ExitGvAfter [s6Step32ExitFvOut,s6Step32ExitGvOut] :=
  hmrRows_owned_drop s6Step32ExitGvAfter [s6Step32ExitGOut,s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut] 2 s6Step32ExitBank_outgoingOwned
theorem s6Step32ExitGv_Incoming : rowsOwned s6Step32ExitGvBefore [s6Step32ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32ExitGRow,s6Step32ExitFRow,s6Step32ExitFvRow,s6Step32ExitGvRow] 3 s6Step32ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32ExitGvBefore (fun q => ([(0,508),(509,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32ExitGv_Outgoing : rowsOwned s6Step32ExitGvAfter [s6Step32ExitGvOut] :=
  hmrRows_owned_drop s6Step32ExitGvAfter [s6Step32ExitGOut,s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut] 3 s6Step32ExitBank_outgoingOwned
theorem s6Step32ExitBank_rows : planWindowRowsLog s6Step32ExitGBefore [(s6Step32ExitGRow,252),(s6Step32ExitFRow,252),(s6Step32ExitFvRow,29),(s6Step32ExitGvRow,28)] [[],[],[],[]]=
    some (s6Step32ExitGvAfter,[s6Step32ExitGOut,s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut],(shrinkRow 777 s6Step32ExitGExtra ++ (shrinkRow 795 s6Step32ExitFExtra ++ (shrinkRow 776 s6Step32ExitFvExtra ++ (shrinkRow 775 s6Step32ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step32ExitGvAfter [] []=some (s6Step32ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step32ExitGvBefore s6Step32ExitGvAfter s6Step32ExitGvAfter
    s6Step32ExitGvRow s6Step32ExitGvOut 28 [] [] [] []
    (shrinkRow 775 s6Step32ExitGvExtra) ([]) s6Step32ExitGv_Incoming s6Step32ExitGv_checked h4 s6Step32ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step32ExitFvBefore s6Step32ExitFvAfter s6Step32ExitGvAfter
    s6Step32ExitFvRow s6Step32ExitFvOut 29 [] [(s6Step32ExitGvRow,28)] [[]] [s6Step32ExitGvOut]
    (shrinkRow 776 s6Step32ExitFvExtra) ((shrinkRow 775 s6Step32ExitGvExtra ++ [])) s6Step32ExitFv_Incoming s6Step32ExitFv_checked h3 s6Step32ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step32ExitFBefore s6Step32ExitFAfter s6Step32ExitGvAfter
    s6Step32ExitFRow s6Step32ExitFOut 252 [] [(s6Step32ExitFvRow,29),(s6Step32ExitGvRow,28)] [[],[]] [s6Step32ExitFvOut,s6Step32ExitGvOut]
    (shrinkRow 795 s6Step32ExitFExtra) ((shrinkRow 776 s6Step32ExitFvExtra ++ (shrinkRow 775 s6Step32ExitGvExtra ++ []))) s6Step32ExitF_Incoming s6Step32ExitF_checked h2 s6Step32ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step32ExitGBefore s6Step32ExitGAfter s6Step32ExitGvAfter
    s6Step32ExitGRow s6Step32ExitGOut 252 [] [(s6Step32ExitFRow,252),(s6Step32ExitFvRow,29),(s6Step32ExitGvRow,28)] [[],[],[]] [s6Step32ExitFOut,s6Step32ExitFvOut,s6Step32ExitGvOut]
    (shrinkRow 777 s6Step32ExitGExtra) ((shrinkRow 795 s6Step32ExitFExtra ++ (shrinkRow 776 s6Step32ExitFvExtra ++ (shrinkRow 775 s6Step32ExitGvExtra ++ [])))) s6Step32ExitG_Incoming s6Step32ExitG_checked h1 s6Step32ExitG_Outgoing
  exact h0
theorem s6Step32ExitBank_checked : compileHmrBankResizeLog .exit s6Step32ExitGBefore ⟨s6Step32ExitFRow,s6Step32ExitGRow,s6Step32ExitFvRow,s6Step32ExitGvRow⟩ ⟨252,252,29,28⟩ [[],[],[],[]]=
    some (s6Step32ExitGvAfter,⟨s6Step32ExitFOut,s6Step32ExitGOut,s6Step32ExitFvOut,s6Step32ExitGvOut⟩,(shrinkRow 777 s6Step32ExitGExtra ++ (shrinkRow 795 s6Step32ExitFExtra ++ (shrinkRow 776 s6Step32ExitFvExtra ++ (shrinkRow 775 s6Step32ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step32ExitBank_rows]
  rfl
theorem s6Step33ExitBank_incomingDistinct : ([s6Step33ExitGRow,s6Step33ExitFRow,s6Step33ExitFvRow,s6Step33ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33ExitBank_outgoingOwned : rowsOwned s6Step33ExitGvAfter [s6Step33ExitGOut,s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step33ExitGvAfter (fun q => ([(0,507),(508,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33ExitG_Incoming : rowsOwned s6Step33ExitGBefore [s6Step33ExitGRow,s6Step33ExitFRow,s6Step33ExitFvRow,s6Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33ExitGRow,s6Step33ExitFRow,s6Step33ExitFvRow,s6Step33ExitGvRow] 0 s6Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33ExitG_Outgoing : rowsOwned s6Step33ExitGvAfter [s6Step33ExitGOut,s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut] :=
  hmrRows_owned_drop s6Step33ExitGvAfter [s6Step33ExitGOut,s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut] 0 s6Step33ExitBank_outgoingOwned
theorem s6Step33ExitF_Incoming : rowsOwned s6Step33ExitFBefore [s6Step33ExitFRow,s6Step33ExitFvRow,s6Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33ExitGRow,s6Step33ExitFRow,s6Step33ExitFvRow,s6Step33ExitGvRow] 1 s6Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33ExitFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33ExitF_Outgoing : rowsOwned s6Step33ExitGvAfter [s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut] :=
  hmrRows_owned_drop s6Step33ExitGvAfter [s6Step33ExitGOut,s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut] 1 s6Step33ExitBank_outgoingOwned
theorem s6Step33ExitFv_Incoming : rowsOwned s6Step33ExitFvBefore [s6Step33ExitFvRow,s6Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33ExitGRow,s6Step33ExitFRow,s6Step33ExitFvRow,s6Step33ExitGvRow] 2 s6Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33ExitFvBefore (fun q => ([(0,507),(508,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33ExitFv_Outgoing : rowsOwned s6Step33ExitGvAfter [s6Step33ExitFvOut,s6Step33ExitGvOut] :=
  hmrRows_owned_drop s6Step33ExitGvAfter [s6Step33ExitGOut,s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut] 2 s6Step33ExitBank_outgoingOwned
theorem s6Step33ExitGv_Incoming : rowsOwned s6Step33ExitGvBefore [s6Step33ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33ExitGRow,s6Step33ExitFRow,s6Step33ExitFvRow,s6Step33ExitGvRow] 3 s6Step33ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33ExitGvBefore (fun q => ([(0,507),(508,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33ExitGv_Outgoing : rowsOwned s6Step33ExitGvAfter [s6Step33ExitGvOut] :=
  hmrRows_owned_drop s6Step33ExitGvAfter [s6Step33ExitGOut,s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut] 3 s6Step33ExitBank_outgoingOwned
theorem s6Step33ExitBank_rows : planWindowRowsLog s6Step33ExitGBefore [(s6Step33ExitGRow,251),(s6Step33ExitFRow,251),(s6Step33ExitFvRow,30),(s6Step33ExitGvRow,29)] [[],[],[],[]]=
    some (s6Step33ExitGvAfter,[s6Step33ExitGOut,s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut],(shrinkRow 777 s6Step33ExitGExtra ++ (shrinkRow 795 s6Step33ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step33ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step33ExitGvAfter [] []=some (s6Step33ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step33ExitGvBefore s6Step33ExitGvAfter s6Step33ExitGvAfter
    s6Step33ExitGvRow s6Step33ExitGvOut 29 [] [] [] []
    (shrinkRow 775 s6Step33ExitGvExtra) ([]) s6Step33ExitGv_Incoming s6Step33ExitGv_checked h4 s6Step33ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step33ExitFvBefore s6Step33ExitFvAfter s6Step33ExitGvAfter
    s6Step33ExitFvRow s6Step33ExitFvOut 30 [] [(s6Step33ExitGvRow,29)] [[]] [s6Step33ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step33ExitGvExtra ++ [])) s6Step33ExitFv_Incoming s6Step33ExitFv_checked h3 s6Step33ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step33ExitFBefore s6Step33ExitFAfter s6Step33ExitGvAfter
    s6Step33ExitFRow s6Step33ExitFOut 251 [] [(s6Step33ExitFvRow,30),(s6Step33ExitGvRow,29)] [[],[]] [s6Step33ExitFvOut,s6Step33ExitGvOut]
    (shrinkRow 795 s6Step33ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step33ExitGvExtra ++ []))) s6Step33ExitF_Incoming s6Step33ExitF_checked h2 s6Step33ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step33ExitGBefore s6Step33ExitGAfter s6Step33ExitGvAfter
    s6Step33ExitGRow s6Step33ExitGOut 251 [] [(s6Step33ExitFRow,251),(s6Step33ExitFvRow,30),(s6Step33ExitGvRow,29)] [[],[],[]] [s6Step33ExitFOut,s6Step33ExitFvOut,s6Step33ExitGvOut]
    (shrinkRow 777 s6Step33ExitGExtra) ((shrinkRow 795 s6Step33ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step33ExitGvExtra ++ [])))) s6Step33ExitG_Incoming s6Step33ExitG_checked h1 s6Step33ExitG_Outgoing
  exact h0
theorem s6Step33ExitBank_checked : compileHmrBankResizeLog .exit s6Step33ExitGBefore ⟨s6Step33ExitFRow,s6Step33ExitGRow,s6Step33ExitFvRow,s6Step33ExitGvRow⟩ ⟨251,251,30,29⟩ [[],[],[],[]]=
    some (s6Step33ExitGvAfter,⟨s6Step33ExitFOut,s6Step33ExitGOut,s6Step33ExitFvOut,s6Step33ExitGvOut⟩,(shrinkRow 777 s6Step33ExitGExtra ++ (shrinkRow 795 s6Step33ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step33ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step33ExitBank_rows]
  rfl
theorem s6Step34ExitBank_incomingDistinct : ([s6Step34ExitGRow,s6Step34ExitFRow,s6Step34ExitFvRow,s6Step34ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34ExitBank_outgoingOwned : rowsOwned s6Step34ExitGvAfter [s6Step34ExitGOut,s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step34ExitGvAfter (fun q => ([(0,250),(251,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34ExitG_Incoming : rowsOwned s6Step34ExitGBefore [s6Step34ExitGRow,s6Step34ExitFRow,s6Step34ExitFvRow,s6Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34ExitGRow,s6Step34ExitFRow,s6Step34ExitFvRow,s6Step34ExitGvRow] 0 s6Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34ExitG_Outgoing : rowsOwned s6Step34ExitGvAfter [s6Step34ExitGOut,s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut] :=
  hmrRows_owned_drop s6Step34ExitGvAfter [s6Step34ExitGOut,s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut] 0 s6Step34ExitBank_outgoingOwned
theorem s6Step34ExitF_Incoming : rowsOwned s6Step34ExitFBefore [s6Step34ExitFRow,s6Step34ExitFvRow,s6Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34ExitGRow,s6Step34ExitFRow,s6Step34ExitFvRow,s6Step34ExitGvRow] 1 s6Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34ExitFBefore (fun q => ([(0,250),(251,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34ExitF_Outgoing : rowsOwned s6Step34ExitGvAfter [s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut] :=
  hmrRows_owned_drop s6Step34ExitGvAfter [s6Step34ExitGOut,s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut] 1 s6Step34ExitBank_outgoingOwned
theorem s6Step34ExitFv_Incoming : rowsOwned s6Step34ExitFvBefore [s6Step34ExitFvRow,s6Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34ExitGRow,s6Step34ExitFRow,s6Step34ExitFvRow,s6Step34ExitGvRow] 2 s6Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34ExitFvBefore (fun q => ([(0,250),(251,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34ExitFv_Outgoing : rowsOwned s6Step34ExitGvAfter [s6Step34ExitFvOut,s6Step34ExitGvOut] :=
  hmrRows_owned_drop s6Step34ExitGvAfter [s6Step34ExitGOut,s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut] 2 s6Step34ExitBank_outgoingOwned
theorem s6Step34ExitGv_Incoming : rowsOwned s6Step34ExitGvBefore [s6Step34ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34ExitGRow,s6Step34ExitFRow,s6Step34ExitFvRow,s6Step34ExitGvRow] 3 s6Step34ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34ExitGvBefore (fun q => ([(0,250),(251,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34ExitGv_Outgoing : rowsOwned s6Step34ExitGvAfter [s6Step34ExitGvOut] :=
  hmrRows_owned_drop s6Step34ExitGvAfter [s6Step34ExitGOut,s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut] 3 s6Step34ExitBank_outgoingOwned
theorem s6Step34ExitBank_rows : planWindowRowsLog s6Step34ExitGBefore [(s6Step34ExitGRow,250),(s6Step34ExitFRow,251),(s6Step34ExitFvRow,30),(s6Step34ExitGvRow,30)] [[],[],[],[]]=
    some (s6Step34ExitGvAfter,[s6Step34ExitGOut,s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut],(shrinkRow 777 s6Step34ExitGExtra ++ (shrinkRow 795 s6Step34ExitFExtra ++ (shrinkRow 776 s6Step34ExitFvExtra ++ (shrinkRow 775 s6Step34ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step34ExitGvAfter [] []=some (s6Step34ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step34ExitGvBefore s6Step34ExitGvAfter s6Step34ExitGvAfter
    s6Step34ExitGvRow s6Step34ExitGvOut 30 [] [] [] []
    (shrinkRow 775 s6Step34ExitGvExtra) ([]) s6Step34ExitGv_Incoming s6Step34ExitGv_checked h4 s6Step34ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step34ExitFvBefore s6Step34ExitFvAfter s6Step34ExitGvAfter
    s6Step34ExitFvRow s6Step34ExitFvOut 30 [] [(s6Step34ExitGvRow,30)] [[]] [s6Step34ExitGvOut]
    (shrinkRow 776 s6Step34ExitFvExtra) ((shrinkRow 775 s6Step34ExitGvExtra ++ [])) s6Step34ExitFv_Incoming s6Step34ExitFv_checked h3 s6Step34ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step34ExitFBefore s6Step34ExitFAfter s6Step34ExitGvAfter
    s6Step34ExitFRow s6Step34ExitFOut 251 [] [(s6Step34ExitFvRow,30),(s6Step34ExitGvRow,30)] [[],[]] [s6Step34ExitFvOut,s6Step34ExitGvOut]
    (shrinkRow 795 s6Step34ExitFExtra) ((shrinkRow 776 s6Step34ExitFvExtra ++ (shrinkRow 775 s6Step34ExitGvExtra ++ []))) s6Step34ExitF_Incoming s6Step34ExitF_checked h2 s6Step34ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step34ExitGBefore s6Step34ExitGAfter s6Step34ExitGvAfter
    s6Step34ExitGRow s6Step34ExitGOut 250 [] [(s6Step34ExitFRow,251),(s6Step34ExitFvRow,30),(s6Step34ExitGvRow,30)] [[],[],[]] [s6Step34ExitFOut,s6Step34ExitFvOut,s6Step34ExitGvOut]
    (shrinkRow 777 s6Step34ExitGExtra) ((shrinkRow 795 s6Step34ExitFExtra ++ (shrinkRow 776 s6Step34ExitFvExtra ++ (shrinkRow 775 s6Step34ExitGvExtra ++ [])))) s6Step34ExitG_Incoming s6Step34ExitG_checked h1 s6Step34ExitG_Outgoing
  exact h0
theorem s6Step34ExitBank_checked : compileHmrBankResizeLog .exit s6Step34ExitGBefore ⟨s6Step34ExitFRow,s6Step34ExitGRow,s6Step34ExitFvRow,s6Step34ExitGvRow⟩ ⟨251,250,30,30⟩ [[],[],[],[]]=
    some (s6Step34ExitGvAfter,⟨s6Step34ExitFOut,s6Step34ExitGOut,s6Step34ExitFvOut,s6Step34ExitGvOut⟩,(shrinkRow 777 s6Step34ExitGExtra ++ (shrinkRow 795 s6Step34ExitFExtra ++ (shrinkRow 776 s6Step34ExitFvExtra ++ (shrinkRow 775 s6Step34ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step34ExitBank_rows]
  rfl
theorem s6Step35ExitBank_incomingDistinct : ([s6Step35ExitGRow,s6Step35ExitFRow,s6Step35ExitFvRow,s6Step35ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35ExitBank_outgoingOwned : rowsOwned s6Step35ExitGvAfter [s6Step35ExitGOut,s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step35ExitGvAfter (fun q => ([(0,506),(507,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35ExitG_Incoming : rowsOwned s6Step35ExitGBefore [s6Step35ExitGRow,s6Step35ExitFRow,s6Step35ExitFvRow,s6Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35ExitGRow,s6Step35ExitFRow,s6Step35ExitFvRow,s6Step35ExitGvRow] 0 s6Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35ExitG_Outgoing : rowsOwned s6Step35ExitGvAfter [s6Step35ExitGOut,s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut] :=
  hmrRows_owned_drop s6Step35ExitGvAfter [s6Step35ExitGOut,s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut] 0 s6Step35ExitBank_outgoingOwned
theorem s6Step35ExitF_Incoming : rowsOwned s6Step35ExitFBefore [s6Step35ExitFRow,s6Step35ExitFvRow,s6Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35ExitGRow,s6Step35ExitFRow,s6Step35ExitFvRow,s6Step35ExitGvRow] 1 s6Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35ExitFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35ExitF_Outgoing : rowsOwned s6Step35ExitGvAfter [s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut] :=
  hmrRows_owned_drop s6Step35ExitGvAfter [s6Step35ExitGOut,s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut] 1 s6Step35ExitBank_outgoingOwned
theorem s6Step35ExitFv_Incoming : rowsOwned s6Step35ExitFvBefore [s6Step35ExitFvRow,s6Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35ExitGRow,s6Step35ExitFRow,s6Step35ExitFvRow,s6Step35ExitGvRow] 2 s6Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35ExitFvBefore (fun q => ([(0,506),(507,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35ExitFv_Outgoing : rowsOwned s6Step35ExitGvAfter [s6Step35ExitFvOut,s6Step35ExitGvOut] :=
  hmrRows_owned_drop s6Step35ExitGvAfter [s6Step35ExitGOut,s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut] 2 s6Step35ExitBank_outgoingOwned
theorem s6Step35ExitGv_Incoming : rowsOwned s6Step35ExitGvBefore [s6Step35ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35ExitGRow,s6Step35ExitFRow,s6Step35ExitFvRow,s6Step35ExitGvRow] 3 s6Step35ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35ExitGvBefore (fun q => ([(0,506),(507,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35ExitGv_Outgoing : rowsOwned s6Step35ExitGvAfter [s6Step35ExitGvOut] :=
  hmrRows_owned_drop s6Step35ExitGvAfter [s6Step35ExitGOut,s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut] 3 s6Step35ExitBank_outgoingOwned
theorem s6Step35ExitBank_rows : planWindowRowsLog s6Step35ExitGBefore [(s6Step35ExitGRow,251),(s6Step35ExitFRow,250),(s6Step35ExitFvRow,31),(s6Step35ExitGvRow,30)] [[],[],[],[]]=
    some (s6Step35ExitGvAfter,[s6Step35ExitGOut,s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut],(shrinkRow 777 s6Step35ExitGExtra ++ (shrinkRow 795 s6Step35ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step35ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step35ExitGvAfter [] []=some (s6Step35ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step35ExitGvBefore s6Step35ExitGvAfter s6Step35ExitGvAfter
    s6Step35ExitGvRow s6Step35ExitGvOut 30 [] [] [] []
    (shrinkRow 775 s6Step35ExitGvExtra) ([]) s6Step35ExitGv_Incoming s6Step35ExitGv_checked h4 s6Step35ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step35ExitFvBefore s6Step35ExitFvAfter s6Step35ExitGvAfter
    s6Step35ExitFvRow s6Step35ExitFvOut 31 [] [(s6Step35ExitGvRow,30)] [[]] [s6Step35ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step35ExitGvExtra ++ [])) s6Step35ExitFv_Incoming s6Step35ExitFv_checked h3 s6Step35ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step35ExitFBefore s6Step35ExitFAfter s6Step35ExitGvAfter
    s6Step35ExitFRow s6Step35ExitFOut 250 [] [(s6Step35ExitFvRow,31),(s6Step35ExitGvRow,30)] [[],[]] [s6Step35ExitFvOut,s6Step35ExitGvOut]
    (shrinkRow 795 s6Step35ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step35ExitGvExtra ++ []))) s6Step35ExitF_Incoming s6Step35ExitF_checked h2 s6Step35ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step35ExitGBefore s6Step35ExitGAfter s6Step35ExitGvAfter
    s6Step35ExitGRow s6Step35ExitGOut 251 [] [(s6Step35ExitFRow,250),(s6Step35ExitFvRow,31),(s6Step35ExitGvRow,30)] [[],[],[]] [s6Step35ExitFOut,s6Step35ExitFvOut,s6Step35ExitGvOut]
    (shrinkRow 777 s6Step35ExitGExtra) ((shrinkRow 795 s6Step35ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step35ExitGvExtra ++ [])))) s6Step35ExitG_Incoming s6Step35ExitG_checked h1 s6Step35ExitG_Outgoing
  exact h0
theorem s6Step35ExitBank_checked : compileHmrBankResizeLog .exit s6Step35ExitGBefore ⟨s6Step35ExitFRow,s6Step35ExitGRow,s6Step35ExitFvRow,s6Step35ExitGvRow⟩ ⟨250,251,31,30⟩ [[],[],[],[]]=
    some (s6Step35ExitGvAfter,⟨s6Step35ExitFOut,s6Step35ExitGOut,s6Step35ExitFvOut,s6Step35ExitGvOut⟩,(shrinkRow 777 s6Step35ExitGExtra ++ (shrinkRow 795 s6Step35ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step35ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step35ExitBank_rows]
  rfl
theorem s6Step36ExitBank_incomingDistinct : ([s6Step36ExitGRow,s6Step36ExitFRow,s6Step36ExitFvRow,s6Step36ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36ExitBank_outgoingOwned : rowsOwned s6Step36ExitGvAfter [s6Step36ExitGOut,s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step36ExitGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36ExitG_Incoming : rowsOwned s6Step36ExitGBefore [s6Step36ExitGRow,s6Step36ExitFRow,s6Step36ExitFvRow,s6Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36ExitGRow,s6Step36ExitFRow,s6Step36ExitFvRow,s6Step36ExitGvRow] 0 s6Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36ExitG_Outgoing : rowsOwned s6Step36ExitGvAfter [s6Step36ExitGOut,s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut] :=
  hmrRows_owned_drop s6Step36ExitGvAfter [s6Step36ExitGOut,s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut] 0 s6Step36ExitBank_outgoingOwned
theorem s6Step36ExitF_Incoming : rowsOwned s6Step36ExitFBefore [s6Step36ExitFRow,s6Step36ExitFvRow,s6Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36ExitGRow,s6Step36ExitFRow,s6Step36ExitFvRow,s6Step36ExitGvRow] 1 s6Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36ExitFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36ExitF_Outgoing : rowsOwned s6Step36ExitGvAfter [s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut] :=
  hmrRows_owned_drop s6Step36ExitGvAfter [s6Step36ExitGOut,s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut] 1 s6Step36ExitBank_outgoingOwned
theorem s6Step36ExitFv_Incoming : rowsOwned s6Step36ExitFvBefore [s6Step36ExitFvRow,s6Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36ExitGRow,s6Step36ExitFRow,s6Step36ExitFvRow,s6Step36ExitGvRow] 2 s6Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36ExitFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36ExitFv_Outgoing : rowsOwned s6Step36ExitGvAfter [s6Step36ExitFvOut,s6Step36ExitGvOut] :=
  hmrRows_owned_drop s6Step36ExitGvAfter [s6Step36ExitGOut,s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut] 2 s6Step36ExitBank_outgoingOwned
theorem s6Step36ExitGv_Incoming : rowsOwned s6Step36ExitGvBefore [s6Step36ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36ExitGRow,s6Step36ExitFRow,s6Step36ExitFvRow,s6Step36ExitGvRow] 3 s6Step36ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36ExitGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36ExitGv_Outgoing : rowsOwned s6Step36ExitGvAfter [s6Step36ExitGvOut] :=
  hmrRows_owned_drop s6Step36ExitGvAfter [s6Step36ExitGOut,s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut] 3 s6Step36ExitBank_outgoingOwned
theorem s6Step36ExitBank_rows : planWindowRowsLog s6Step36ExitGBefore [(s6Step36ExitGRow,250),(s6Step36ExitFRow,250),(s6Step36ExitFvRow,31),(s6Step36ExitGvRow,31)] [[],[],[],[]]=
    some (s6Step36ExitGvAfter,[s6Step36ExitGOut,s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut],(shrinkRow 777 s6Step36ExitGExtra ++ (shrinkRow 795 s6Step36ExitFExtra ++ (shrinkRow 776 s6Step36ExitFvExtra ++ (shrinkRow 775 s6Step36ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step36ExitGvAfter [] []=some (s6Step36ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step36ExitGvBefore s6Step36ExitGvAfter s6Step36ExitGvAfter
    s6Step36ExitGvRow s6Step36ExitGvOut 31 [] [] [] []
    (shrinkRow 775 s6Step36ExitGvExtra) ([]) s6Step36ExitGv_Incoming s6Step36ExitGv_checked h4 s6Step36ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step36ExitFvBefore s6Step36ExitFvAfter s6Step36ExitGvAfter
    s6Step36ExitFvRow s6Step36ExitFvOut 31 [] [(s6Step36ExitGvRow,31)] [[]] [s6Step36ExitGvOut]
    (shrinkRow 776 s6Step36ExitFvExtra) ((shrinkRow 775 s6Step36ExitGvExtra ++ [])) s6Step36ExitFv_Incoming s6Step36ExitFv_checked h3 s6Step36ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step36ExitFBefore s6Step36ExitFAfter s6Step36ExitGvAfter
    s6Step36ExitFRow s6Step36ExitFOut 250 [] [(s6Step36ExitFvRow,31),(s6Step36ExitGvRow,31)] [[],[]] [s6Step36ExitFvOut,s6Step36ExitGvOut]
    (shrinkRow 795 s6Step36ExitFExtra) ((shrinkRow 776 s6Step36ExitFvExtra ++ (shrinkRow 775 s6Step36ExitGvExtra ++ []))) s6Step36ExitF_Incoming s6Step36ExitF_checked h2 s6Step36ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step36ExitGBefore s6Step36ExitGAfter s6Step36ExitGvAfter
    s6Step36ExitGRow s6Step36ExitGOut 250 [] [(s6Step36ExitFRow,250),(s6Step36ExitFvRow,31),(s6Step36ExitGvRow,31)] [[],[],[]] [s6Step36ExitFOut,s6Step36ExitFvOut,s6Step36ExitGvOut]
    (shrinkRow 777 s6Step36ExitGExtra) ((shrinkRow 795 s6Step36ExitFExtra ++ (shrinkRow 776 s6Step36ExitFvExtra ++ (shrinkRow 775 s6Step36ExitGvExtra ++ [])))) s6Step36ExitG_Incoming s6Step36ExitG_checked h1 s6Step36ExitG_Outgoing
  exact h0
theorem s6Step36ExitBank_checked : compileHmrBankResizeLog .exit s6Step36ExitGBefore ⟨s6Step36ExitFRow,s6Step36ExitGRow,s6Step36ExitFvRow,s6Step36ExitGvRow⟩ ⟨250,250,31,31⟩ [[],[],[],[]]=
    some (s6Step36ExitGvAfter,⟨s6Step36ExitFOut,s6Step36ExitGOut,s6Step36ExitFvOut,s6Step36ExitGvOut⟩,(shrinkRow 777 s6Step36ExitGExtra ++ (shrinkRow 795 s6Step36ExitFExtra ++ (shrinkRow 776 s6Step36ExitFvExtra ++ (shrinkRow 775 s6Step36ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step36ExitBank_rows]
  rfl
theorem s6Step37ExitBank_incomingDistinct : ([s6Step37ExitGRow,s6Step37ExitFRow,s6Step37ExitFvRow,s6Step37ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37ExitBank_outgoingOwned : rowsOwned s6Step37ExitGvAfter [s6Step37ExitGOut,s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step37ExitGvAfter (fun q => ([(0,249),(250,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37ExitG_Incoming : rowsOwned s6Step37ExitGBefore [s6Step37ExitGRow,s6Step37ExitFRow,s6Step37ExitFvRow,s6Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37ExitGRow,s6Step37ExitFRow,s6Step37ExitFvRow,s6Step37ExitGvRow] 0 s6Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37ExitGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37ExitG_Outgoing : rowsOwned s6Step37ExitGvAfter [s6Step37ExitGOut,s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut] :=
  hmrRows_owned_drop s6Step37ExitGvAfter [s6Step37ExitGOut,s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut] 0 s6Step37ExitBank_outgoingOwned
theorem s6Step37ExitF_Incoming : rowsOwned s6Step37ExitFBefore [s6Step37ExitFRow,s6Step37ExitFvRow,s6Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37ExitGRow,s6Step37ExitFRow,s6Step37ExitFvRow,s6Step37ExitGvRow] 1 s6Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37ExitFBefore (fun q => ([(0,249),(250,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37ExitF_Outgoing : rowsOwned s6Step37ExitGvAfter [s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut] :=
  hmrRows_owned_drop s6Step37ExitGvAfter [s6Step37ExitGOut,s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut] 1 s6Step37ExitBank_outgoingOwned
theorem s6Step37ExitFv_Incoming : rowsOwned s6Step37ExitFvBefore [s6Step37ExitFvRow,s6Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37ExitGRow,s6Step37ExitFRow,s6Step37ExitFvRow,s6Step37ExitGvRow] 2 s6Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37ExitFvBefore (fun q => ([(0,249),(250,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37ExitFv_Outgoing : rowsOwned s6Step37ExitGvAfter [s6Step37ExitFvOut,s6Step37ExitGvOut] :=
  hmrRows_owned_drop s6Step37ExitGvAfter [s6Step37ExitGOut,s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut] 2 s6Step37ExitBank_outgoingOwned
theorem s6Step37ExitGv_Incoming : rowsOwned s6Step37ExitGvBefore [s6Step37ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37ExitGRow,s6Step37ExitFRow,s6Step37ExitFvRow,s6Step37ExitGvRow] 3 s6Step37ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37ExitGvBefore (fun q => ([(0,249),(250,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37ExitGv_Outgoing : rowsOwned s6Step37ExitGvAfter [s6Step37ExitGvOut] :=
  hmrRows_owned_drop s6Step37ExitGvAfter [s6Step37ExitGOut,s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut] 3 s6Step37ExitBank_outgoingOwned
theorem s6Step37ExitBank_rows : planWindowRowsLog s6Step37ExitGBefore [(s6Step37ExitGRow,249),(s6Step37ExitFRow,250),(s6Step37ExitFvRow,32),(s6Step37ExitGvRow,32)] [[],[],[],[]]=
    some (s6Step37ExitGvAfter,[s6Step37ExitGOut,s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut],(shrinkRow 777 s6Step37ExitGExtra ++ (shrinkRow 795 s6Step37ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step37ExitGvAfter [] []=some (s6Step37ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step37ExitGvBefore s6Step37ExitGvAfter s6Step37ExitGvAfter
    s6Step37ExitGvRow s6Step37ExitGvOut 32 [] [] [] []
    (growRow 775 []) ([]) s6Step37ExitGv_Incoming s6Step37ExitGv_checked h4 s6Step37ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step37ExitFvBefore s6Step37ExitFvAfter s6Step37ExitGvAfter
    s6Step37ExitFvRow s6Step37ExitFvOut 32 [] [(s6Step37ExitGvRow,32)] [[]] [s6Step37ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step37ExitFv_Incoming s6Step37ExitFv_checked h3 s6Step37ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step37ExitFBefore s6Step37ExitFAfter s6Step37ExitGvAfter
    s6Step37ExitFRow s6Step37ExitFOut 250 [] [(s6Step37ExitFvRow,32),(s6Step37ExitGvRow,32)] [[],[]] [s6Step37ExitFvOut,s6Step37ExitGvOut]
    (shrinkRow 795 s6Step37ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step37ExitF_Incoming s6Step37ExitF_checked h2 s6Step37ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step37ExitGBefore s6Step37ExitGAfter s6Step37ExitGvAfter
    s6Step37ExitGRow s6Step37ExitGOut 249 [] [(s6Step37ExitFRow,250),(s6Step37ExitFvRow,32),(s6Step37ExitGvRow,32)] [[],[],[]] [s6Step37ExitFOut,s6Step37ExitFvOut,s6Step37ExitGvOut]
    (shrinkRow 777 s6Step37ExitGExtra) ((shrinkRow 795 s6Step37ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step37ExitG_Incoming s6Step37ExitG_checked h1 s6Step37ExitG_Outgoing
  exact h0
theorem s6Step37ExitBank_checked : compileHmrBankResizeLog .exit s6Step37ExitGBefore ⟨s6Step37ExitFRow,s6Step37ExitGRow,s6Step37ExitFvRow,s6Step37ExitGvRow⟩ ⟨250,249,32,32⟩ [[],[],[],[]]=
    some (s6Step37ExitGvAfter,⟨s6Step37ExitFOut,s6Step37ExitGOut,s6Step37ExitFvOut,s6Step37ExitGvOut⟩,(shrinkRow 777 s6Step37ExitGExtra ++ (shrinkRow 795 s6Step37ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step37ExitBank_rows]
  rfl
theorem s6Step38ExitBank_incomingDistinct : ([s6Step38ExitGRow,s6Step38ExitFRow,s6Step38ExitFvRow,s6Step38ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38ExitBank_outgoingOwned : rowsOwned s6Step38ExitGvAfter [s6Step38ExitGOut,s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step38ExitGvAfter (fun q => ([(0,505),(506,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38ExitG_Incoming : rowsOwned s6Step38ExitGBefore [s6Step38ExitGRow,s6Step38ExitFRow,s6Step38ExitFvRow,s6Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38ExitGRow,s6Step38ExitFRow,s6Step38ExitFvRow,s6Step38ExitGvRow] 0 s6Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38ExitGBefore (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38ExitG_Outgoing : rowsOwned s6Step38ExitGvAfter [s6Step38ExitGOut,s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut] :=
  hmrRows_owned_drop s6Step38ExitGvAfter [s6Step38ExitGOut,s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut] 0 s6Step38ExitBank_outgoingOwned
theorem s6Step38ExitF_Incoming : rowsOwned s6Step38ExitFBefore [s6Step38ExitFRow,s6Step38ExitFvRow,s6Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38ExitGRow,s6Step38ExitFRow,s6Step38ExitFvRow,s6Step38ExitGvRow] 1 s6Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38ExitFBefore (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38ExitF_Outgoing : rowsOwned s6Step38ExitGvAfter [s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut] :=
  hmrRows_owned_drop s6Step38ExitGvAfter [s6Step38ExitGOut,s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut] 1 s6Step38ExitBank_outgoingOwned
theorem s6Step38ExitFv_Incoming : rowsOwned s6Step38ExitFvBefore [s6Step38ExitFvRow,s6Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38ExitGRow,s6Step38ExitFRow,s6Step38ExitFvRow,s6Step38ExitGvRow] 2 s6Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38ExitFvBefore (fun q => ([(0,505),(506,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38ExitFv_Outgoing : rowsOwned s6Step38ExitGvAfter [s6Step38ExitFvOut,s6Step38ExitGvOut] :=
  hmrRows_owned_drop s6Step38ExitGvAfter [s6Step38ExitGOut,s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut] 2 s6Step38ExitBank_outgoingOwned
theorem s6Step38ExitGv_Incoming : rowsOwned s6Step38ExitGvBefore [s6Step38ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38ExitGRow,s6Step38ExitFRow,s6Step38ExitFvRow,s6Step38ExitGvRow] 3 s6Step38ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38ExitGvBefore (fun q => ([(0,505),(506,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38ExitGv_Outgoing : rowsOwned s6Step38ExitGvAfter [s6Step38ExitGvOut] :=
  hmrRows_owned_drop s6Step38ExitGvAfter [s6Step38ExitGOut,s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut] 3 s6Step38ExitBank_outgoingOwned
theorem s6Step38ExitBank_rows : planWindowRowsLog s6Step38ExitGBefore [(s6Step38ExitGRow,249),(s6Step38ExitFRow,249),(s6Step38ExitFvRow,32),(s6Step38ExitGvRow,32)] [[],[],[],[]]=
    some (s6Step38ExitGvAfter,[s6Step38ExitGOut,s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut],(shrinkRow 777 s6Step38ExitGExtra ++ (shrinkRow 795 s6Step38ExitFExtra ++ (shrinkRow 776 s6Step38ExitFvExtra ++ (shrinkRow 775 s6Step38ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step38ExitGvAfter [] []=some (s6Step38ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step38ExitGvBefore s6Step38ExitGvAfter s6Step38ExitGvAfter
    s6Step38ExitGvRow s6Step38ExitGvOut 32 [] [] [] []
    (shrinkRow 775 s6Step38ExitGvExtra) ([]) s6Step38ExitGv_Incoming s6Step38ExitGv_checked h4 s6Step38ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step38ExitFvBefore s6Step38ExitFvAfter s6Step38ExitGvAfter
    s6Step38ExitFvRow s6Step38ExitFvOut 32 [] [(s6Step38ExitGvRow,32)] [[]] [s6Step38ExitGvOut]
    (shrinkRow 776 s6Step38ExitFvExtra) ((shrinkRow 775 s6Step38ExitGvExtra ++ [])) s6Step38ExitFv_Incoming s6Step38ExitFv_checked h3 s6Step38ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step38ExitFBefore s6Step38ExitFAfter s6Step38ExitGvAfter
    s6Step38ExitFRow s6Step38ExitFOut 249 [] [(s6Step38ExitFvRow,32),(s6Step38ExitGvRow,32)] [[],[]] [s6Step38ExitFvOut,s6Step38ExitGvOut]
    (shrinkRow 795 s6Step38ExitFExtra) ((shrinkRow 776 s6Step38ExitFvExtra ++ (shrinkRow 775 s6Step38ExitGvExtra ++ []))) s6Step38ExitF_Incoming s6Step38ExitF_checked h2 s6Step38ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step38ExitGBefore s6Step38ExitGAfter s6Step38ExitGvAfter
    s6Step38ExitGRow s6Step38ExitGOut 249 [] [(s6Step38ExitFRow,249),(s6Step38ExitFvRow,32),(s6Step38ExitGvRow,32)] [[],[],[]] [s6Step38ExitFOut,s6Step38ExitFvOut,s6Step38ExitGvOut]
    (shrinkRow 777 s6Step38ExitGExtra) ((shrinkRow 795 s6Step38ExitFExtra ++ (shrinkRow 776 s6Step38ExitFvExtra ++ (shrinkRow 775 s6Step38ExitGvExtra ++ [])))) s6Step38ExitG_Incoming s6Step38ExitG_checked h1 s6Step38ExitG_Outgoing
  exact h0
theorem s6Step38ExitBank_checked : compileHmrBankResizeLog .exit s6Step38ExitGBefore ⟨s6Step38ExitFRow,s6Step38ExitGRow,s6Step38ExitFvRow,s6Step38ExitGvRow⟩ ⟨249,249,32,32⟩ [[],[],[],[]]=
    some (s6Step38ExitGvAfter,⟨s6Step38ExitFOut,s6Step38ExitGOut,s6Step38ExitFvOut,s6Step38ExitGvOut⟩,(shrinkRow 777 s6Step38ExitGExtra ++ (shrinkRow 795 s6Step38ExitFExtra ++ (shrinkRow 776 s6Step38ExitFvExtra ++ (shrinkRow 775 s6Step38ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step38ExitBank_rows]
  rfl
theorem s6Step39ExitBank_incomingDistinct : ([s6Step39ExitGRow,s6Step39ExitFRow,s6Step39ExitFvRow,s6Step39ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39ExitBank_outgoingOwned : rowsOwned s6Step39ExitGvAfter [s6Step39ExitGOut,s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step39ExitGvAfter (fun q => ([(0,248),(249,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39ExitG_Incoming : rowsOwned s6Step39ExitGBefore [s6Step39ExitGRow,s6Step39ExitFRow,s6Step39ExitFvRow,s6Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39ExitGRow,s6Step39ExitFRow,s6Step39ExitFvRow,s6Step39ExitGvRow] 0 s6Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39ExitGBefore (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39ExitG_Outgoing : rowsOwned s6Step39ExitGvAfter [s6Step39ExitGOut,s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut] :=
  hmrRows_owned_drop s6Step39ExitGvAfter [s6Step39ExitGOut,s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut] 0 s6Step39ExitBank_outgoingOwned
theorem s6Step39ExitF_Incoming : rowsOwned s6Step39ExitFBefore [s6Step39ExitFRow,s6Step39ExitFvRow,s6Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39ExitGRow,s6Step39ExitFRow,s6Step39ExitFvRow,s6Step39ExitGvRow] 1 s6Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39ExitFBefore (fun q => ([(0,248),(249,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39ExitF_Outgoing : rowsOwned s6Step39ExitGvAfter [s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut] :=
  hmrRows_owned_drop s6Step39ExitGvAfter [s6Step39ExitGOut,s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut] 1 s6Step39ExitBank_outgoingOwned
theorem s6Step39ExitFv_Incoming : rowsOwned s6Step39ExitFvBefore [s6Step39ExitFvRow,s6Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39ExitGRow,s6Step39ExitFRow,s6Step39ExitFvRow,s6Step39ExitGvRow] 2 s6Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39ExitFvBefore (fun q => ([(0,248),(249,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39ExitFv_Outgoing : rowsOwned s6Step39ExitGvAfter [s6Step39ExitFvOut,s6Step39ExitGvOut] :=
  hmrRows_owned_drop s6Step39ExitGvAfter [s6Step39ExitGOut,s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut] 2 s6Step39ExitBank_outgoingOwned
theorem s6Step39ExitGv_Incoming : rowsOwned s6Step39ExitGvBefore [s6Step39ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39ExitGRow,s6Step39ExitFRow,s6Step39ExitFvRow,s6Step39ExitGvRow] 3 s6Step39ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39ExitGvBefore (fun q => ([(0,248),(249,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39ExitGv_Outgoing : rowsOwned s6Step39ExitGvAfter [s6Step39ExitGvOut] :=
  hmrRows_owned_drop s6Step39ExitGvAfter [s6Step39ExitGOut,s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut] 3 s6Step39ExitBank_outgoingOwned
theorem s6Step39ExitBank_rows : planWindowRowsLog s6Step39ExitGBefore [(s6Step39ExitGRow,248),(s6Step39ExitFRow,249),(s6Step39ExitFvRow,33),(s6Step39ExitGvRow,32)] [[],[],[],[]]=
    some (s6Step39ExitGvAfter,[s6Step39ExitGOut,s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut],(shrinkRow 777 s6Step39ExitGExtra ++ (shrinkRow 795 s6Step39ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step39ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step39ExitGvAfter [] []=some (s6Step39ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step39ExitGvBefore s6Step39ExitGvAfter s6Step39ExitGvAfter
    s6Step39ExitGvRow s6Step39ExitGvOut 32 [] [] [] []
    (shrinkRow 775 s6Step39ExitGvExtra) ([]) s6Step39ExitGv_Incoming s6Step39ExitGv_checked h4 s6Step39ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step39ExitFvBefore s6Step39ExitFvAfter s6Step39ExitGvAfter
    s6Step39ExitFvRow s6Step39ExitFvOut 33 [] [(s6Step39ExitGvRow,32)] [[]] [s6Step39ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step39ExitGvExtra ++ [])) s6Step39ExitFv_Incoming s6Step39ExitFv_checked h3 s6Step39ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step39ExitFBefore s6Step39ExitFAfter s6Step39ExitGvAfter
    s6Step39ExitFRow s6Step39ExitFOut 249 [] [(s6Step39ExitFvRow,33),(s6Step39ExitGvRow,32)] [[],[]] [s6Step39ExitFvOut,s6Step39ExitGvOut]
    (shrinkRow 795 s6Step39ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step39ExitGvExtra ++ []))) s6Step39ExitF_Incoming s6Step39ExitF_checked h2 s6Step39ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step39ExitGBefore s6Step39ExitGAfter s6Step39ExitGvAfter
    s6Step39ExitGRow s6Step39ExitGOut 248 [] [(s6Step39ExitFRow,249),(s6Step39ExitFvRow,33),(s6Step39ExitGvRow,32)] [[],[],[]] [s6Step39ExitFOut,s6Step39ExitFvOut,s6Step39ExitGvOut]
    (shrinkRow 777 s6Step39ExitGExtra) ((shrinkRow 795 s6Step39ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step39ExitGvExtra ++ [])))) s6Step39ExitG_Incoming s6Step39ExitG_checked h1 s6Step39ExitG_Outgoing
  exact h0
theorem s6Step39ExitBank_checked : compileHmrBankResizeLog .exit s6Step39ExitGBefore ⟨s6Step39ExitFRow,s6Step39ExitGRow,s6Step39ExitFvRow,s6Step39ExitGvRow⟩ ⟨249,248,33,32⟩ [[],[],[],[]]=
    some (s6Step39ExitGvAfter,⟨s6Step39ExitFOut,s6Step39ExitGOut,s6Step39ExitFvOut,s6Step39ExitGvOut⟩,(shrinkRow 777 s6Step39ExitGExtra ++ (shrinkRow 795 s6Step39ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step39ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step39ExitBank_rows]
  rfl
theorem s6Step40ExitBank_incomingDistinct : ([s6Step40ExitGRow,s6Step40ExitFRow,s6Step40ExitFvRow,s6Step40ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40ExitBank_outgoingOwned : rowsOwned s6Step40ExitGvAfter [s6Step40ExitGOut,s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step40ExitGvAfter (fun q => ([(0,504),(505,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40ExitG_Incoming : rowsOwned s6Step40ExitGBefore [s6Step40ExitGRow,s6Step40ExitFRow,s6Step40ExitFvRow,s6Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40ExitGRow,s6Step40ExitFRow,s6Step40ExitFvRow,s6Step40ExitGvRow] 0 s6Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40ExitG_Outgoing : rowsOwned s6Step40ExitGvAfter [s6Step40ExitGOut,s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut] :=
  hmrRows_owned_drop s6Step40ExitGvAfter [s6Step40ExitGOut,s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut] 0 s6Step40ExitBank_outgoingOwned
theorem s6Step40ExitF_Incoming : rowsOwned s6Step40ExitFBefore [s6Step40ExitFRow,s6Step40ExitFvRow,s6Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40ExitGRow,s6Step40ExitFRow,s6Step40ExitFvRow,s6Step40ExitGvRow] 1 s6Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40ExitFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40ExitF_Outgoing : rowsOwned s6Step40ExitGvAfter [s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut] :=
  hmrRows_owned_drop s6Step40ExitGvAfter [s6Step40ExitGOut,s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut] 1 s6Step40ExitBank_outgoingOwned
theorem s6Step40ExitFv_Incoming : rowsOwned s6Step40ExitFvBefore [s6Step40ExitFvRow,s6Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40ExitGRow,s6Step40ExitFRow,s6Step40ExitFvRow,s6Step40ExitGvRow] 2 s6Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40ExitFvBefore (fun q => ([(0,504),(505,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40ExitFv_Outgoing : rowsOwned s6Step40ExitGvAfter [s6Step40ExitFvOut,s6Step40ExitGvOut] :=
  hmrRows_owned_drop s6Step40ExitGvAfter [s6Step40ExitGOut,s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut] 2 s6Step40ExitBank_outgoingOwned
theorem s6Step40ExitGv_Incoming : rowsOwned s6Step40ExitGvBefore [s6Step40ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40ExitGRow,s6Step40ExitFRow,s6Step40ExitFvRow,s6Step40ExitGvRow] 3 s6Step40ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40ExitGvBefore (fun q => ([(0,504),(505,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40ExitGv_Outgoing : rowsOwned s6Step40ExitGvAfter [s6Step40ExitGvOut] :=
  hmrRows_owned_drop s6Step40ExitGvAfter [s6Step40ExitGOut,s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut] 3 s6Step40ExitBank_outgoingOwned
theorem s6Step40ExitBank_rows : planWindowRowsLog s6Step40ExitGBefore [(s6Step40ExitGRow,248),(s6Step40ExitFRow,248),(s6Step40ExitFvRow,34),(s6Step40ExitGvRow,33)] [[],[],[],[]]=
    some (s6Step40ExitGvAfter,[s6Step40ExitGOut,s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut],(shrinkRow 777 s6Step40ExitGExtra ++ (shrinkRow 795 s6Step40ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step40ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step40ExitGvAfter [] []=some (s6Step40ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step40ExitGvBefore s6Step40ExitGvAfter s6Step40ExitGvAfter
    s6Step40ExitGvRow s6Step40ExitGvOut 33 [] [] [] []
    (shrinkRow 775 s6Step40ExitGvExtra) ([]) s6Step40ExitGv_Incoming s6Step40ExitGv_checked h4 s6Step40ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step40ExitFvBefore s6Step40ExitFvAfter s6Step40ExitGvAfter
    s6Step40ExitFvRow s6Step40ExitFvOut 34 [] [(s6Step40ExitGvRow,33)] [[]] [s6Step40ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step40ExitGvExtra ++ [])) s6Step40ExitFv_Incoming s6Step40ExitFv_checked h3 s6Step40ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step40ExitFBefore s6Step40ExitFAfter s6Step40ExitGvAfter
    s6Step40ExitFRow s6Step40ExitFOut 248 [] [(s6Step40ExitFvRow,34),(s6Step40ExitGvRow,33)] [[],[]] [s6Step40ExitFvOut,s6Step40ExitGvOut]
    (shrinkRow 795 s6Step40ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step40ExitGvExtra ++ []))) s6Step40ExitF_Incoming s6Step40ExitF_checked h2 s6Step40ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step40ExitGBefore s6Step40ExitGAfter s6Step40ExitGvAfter
    s6Step40ExitGRow s6Step40ExitGOut 248 [] [(s6Step40ExitFRow,248),(s6Step40ExitFvRow,34),(s6Step40ExitGvRow,33)] [[],[],[]] [s6Step40ExitFOut,s6Step40ExitFvOut,s6Step40ExitGvOut]
    (shrinkRow 777 s6Step40ExitGExtra) ((shrinkRow 795 s6Step40ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step40ExitGvExtra ++ [])))) s6Step40ExitG_Incoming s6Step40ExitG_checked h1 s6Step40ExitG_Outgoing
  exact h0
theorem s6Step40ExitBank_checked : compileHmrBankResizeLog .exit s6Step40ExitGBefore ⟨s6Step40ExitFRow,s6Step40ExitGRow,s6Step40ExitFvRow,s6Step40ExitGvRow⟩ ⟨248,248,34,33⟩ [[],[],[],[]]=
    some (s6Step40ExitGvAfter,⟨s6Step40ExitFOut,s6Step40ExitGOut,s6Step40ExitFvOut,s6Step40ExitGvOut⟩,(shrinkRow 777 s6Step40ExitGExtra ++ (shrinkRow 795 s6Step40ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step40ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step40ExitBank_rows]
  rfl
theorem s6Step41ExitBank_incomingDistinct : ([s6Step41ExitGRow,s6Step41ExitFRow,s6Step41ExitFvRow,s6Step41ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41ExitBank_outgoingOwned : rowsOwned s6Step41ExitGvAfter [s6Step41ExitGOut,s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step41ExitGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41ExitG_Incoming : rowsOwned s6Step41ExitGBefore [s6Step41ExitGRow,s6Step41ExitFRow,s6Step41ExitFvRow,s6Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41ExitGRow,s6Step41ExitFRow,s6Step41ExitFvRow,s6Step41ExitGvRow] 0 s6Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41ExitG_Outgoing : rowsOwned s6Step41ExitGvAfter [s6Step41ExitGOut,s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut] :=
  hmrRows_owned_drop s6Step41ExitGvAfter [s6Step41ExitGOut,s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut] 0 s6Step41ExitBank_outgoingOwned
theorem s6Step41ExitF_Incoming : rowsOwned s6Step41ExitFBefore [s6Step41ExitFRow,s6Step41ExitFvRow,s6Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41ExitGRow,s6Step41ExitFRow,s6Step41ExitFvRow,s6Step41ExitGvRow] 1 s6Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41ExitFBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41ExitF_Outgoing : rowsOwned s6Step41ExitGvAfter [s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut] :=
  hmrRows_owned_drop s6Step41ExitGvAfter [s6Step41ExitGOut,s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut] 1 s6Step41ExitBank_outgoingOwned
theorem s6Step41ExitFv_Incoming : rowsOwned s6Step41ExitFvBefore [s6Step41ExitFvRow,s6Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41ExitGRow,s6Step41ExitFRow,s6Step41ExitFvRow,s6Step41ExitGvRow] 2 s6Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41ExitFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41ExitFv_Outgoing : rowsOwned s6Step41ExitGvAfter [s6Step41ExitFvOut,s6Step41ExitGvOut] :=
  hmrRows_owned_drop s6Step41ExitGvAfter [s6Step41ExitGOut,s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut] 2 s6Step41ExitBank_outgoingOwned
theorem s6Step41ExitGv_Incoming : rowsOwned s6Step41ExitGvBefore [s6Step41ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41ExitGRow,s6Step41ExitFRow,s6Step41ExitFvRow,s6Step41ExitGvRow] 3 s6Step41ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41ExitGvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41ExitGv_Outgoing : rowsOwned s6Step41ExitGvAfter [s6Step41ExitGvOut] :=
  hmrRows_owned_drop s6Step41ExitGvAfter [s6Step41ExitGOut,s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut] 3 s6Step41ExitBank_outgoingOwned
theorem s6Step41ExitBank_rows : planWindowRowsLog s6Step41ExitGBefore [(s6Step41ExitGRow,248),(s6Step41ExitFRow,248),(s6Step41ExitFvRow,34),(s6Step41ExitGvRow,33)] [[],[],[],[]]=
    some (s6Step41ExitGvAfter,[s6Step41ExitGOut,s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut],(shrinkRow 777 s6Step41ExitGExtra ++ (shrinkRow 795 s6Step41ExitFExtra ++ (shrinkRow 776 s6Step41ExitFvExtra ++ (shrinkRow 775 s6Step41ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step41ExitGvAfter [] []=some (s6Step41ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step41ExitGvBefore s6Step41ExitGvAfter s6Step41ExitGvAfter
    s6Step41ExitGvRow s6Step41ExitGvOut 33 [] [] [] []
    (shrinkRow 775 s6Step41ExitGvExtra) ([]) s6Step41ExitGv_Incoming s6Step41ExitGv_checked h4 s6Step41ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step41ExitFvBefore s6Step41ExitFvAfter s6Step41ExitGvAfter
    s6Step41ExitFvRow s6Step41ExitFvOut 34 [] [(s6Step41ExitGvRow,33)] [[]] [s6Step41ExitGvOut]
    (shrinkRow 776 s6Step41ExitFvExtra) ((shrinkRow 775 s6Step41ExitGvExtra ++ [])) s6Step41ExitFv_Incoming s6Step41ExitFv_checked h3 s6Step41ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step41ExitFBefore s6Step41ExitFAfter s6Step41ExitGvAfter
    s6Step41ExitFRow s6Step41ExitFOut 248 [] [(s6Step41ExitFvRow,34),(s6Step41ExitGvRow,33)] [[],[]] [s6Step41ExitFvOut,s6Step41ExitGvOut]
    (shrinkRow 795 s6Step41ExitFExtra) ((shrinkRow 776 s6Step41ExitFvExtra ++ (shrinkRow 775 s6Step41ExitGvExtra ++ []))) s6Step41ExitF_Incoming s6Step41ExitF_checked h2 s6Step41ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step41ExitGBefore s6Step41ExitGAfter s6Step41ExitGvAfter
    s6Step41ExitGRow s6Step41ExitGOut 248 [] [(s6Step41ExitFRow,248),(s6Step41ExitFvRow,34),(s6Step41ExitGvRow,33)] [[],[],[]] [s6Step41ExitFOut,s6Step41ExitFvOut,s6Step41ExitGvOut]
    (shrinkRow 777 s6Step41ExitGExtra) ((shrinkRow 795 s6Step41ExitFExtra ++ (shrinkRow 776 s6Step41ExitFvExtra ++ (shrinkRow 775 s6Step41ExitGvExtra ++ [])))) s6Step41ExitG_Incoming s6Step41ExitG_checked h1 s6Step41ExitG_Outgoing
  exact h0
theorem s6Step41ExitBank_checked : compileHmrBankResizeLog .exit s6Step41ExitGBefore ⟨s6Step41ExitFRow,s6Step41ExitGRow,s6Step41ExitFvRow,s6Step41ExitGvRow⟩ ⟨248,248,34,33⟩ [[],[],[],[]]=
    some (s6Step41ExitGvAfter,⟨s6Step41ExitFOut,s6Step41ExitGOut,s6Step41ExitFvOut,s6Step41ExitGvOut⟩,(shrinkRow 777 s6Step41ExitGExtra ++ (shrinkRow 795 s6Step41ExitFExtra ++ (shrinkRow 776 s6Step41ExitFvExtra ++ (shrinkRow 775 s6Step41ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step41ExitBank_rows]
  rfl
theorem s6Step42ExitBank_incomingDistinct : ([s6Step42ExitGRow,s6Step42ExitFRow,s6Step42ExitFvRow,s6Step42ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42ExitBank_outgoingOwned : rowsOwned s6Step42ExitGvAfter [s6Step42ExitGOut,s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step42ExitGvAfter (fun q => ([(0,247),(248,503),(504,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42ExitG_Incoming : rowsOwned s6Step42ExitGBefore [s6Step42ExitGRow,s6Step42ExitFRow,s6Step42ExitFvRow,s6Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42ExitGRow,s6Step42ExitFRow,s6Step42ExitFvRow,s6Step42ExitGvRow] 0 s6Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42ExitG_Outgoing : rowsOwned s6Step42ExitGvAfter [s6Step42ExitGOut,s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut] :=
  hmrRows_owned_drop s6Step42ExitGvAfter [s6Step42ExitGOut,s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut] 0 s6Step42ExitBank_outgoingOwned
theorem s6Step42ExitF_Incoming : rowsOwned s6Step42ExitFBefore [s6Step42ExitFRow,s6Step42ExitFvRow,s6Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42ExitGRow,s6Step42ExitFRow,s6Step42ExitFvRow,s6Step42ExitGvRow] 1 s6Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42ExitFBefore (fun q => ([(0,247),(248,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42ExitF_Outgoing : rowsOwned s6Step42ExitGvAfter [s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut] :=
  hmrRows_owned_drop s6Step42ExitGvAfter [s6Step42ExitGOut,s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut] 1 s6Step42ExitBank_outgoingOwned
theorem s6Step42ExitFv_Incoming : rowsOwned s6Step42ExitFvBefore [s6Step42ExitFvRow,s6Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42ExitGRow,s6Step42ExitFRow,s6Step42ExitFvRow,s6Step42ExitGvRow] 2 s6Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42ExitFvBefore (fun q => ([(0,247),(248,503),(504,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42ExitFv_Outgoing : rowsOwned s6Step42ExitGvAfter [s6Step42ExitFvOut,s6Step42ExitGvOut] :=
  hmrRows_owned_drop s6Step42ExitGvAfter [s6Step42ExitGOut,s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut] 2 s6Step42ExitBank_outgoingOwned
theorem s6Step42ExitGv_Incoming : rowsOwned s6Step42ExitGvBefore [s6Step42ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42ExitGRow,s6Step42ExitFRow,s6Step42ExitFvRow,s6Step42ExitGvRow] 3 s6Step42ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42ExitGvBefore (fun q => ([(0,247),(248,503),(504,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42ExitGv_Outgoing : rowsOwned s6Step42ExitGvAfter [s6Step42ExitGvOut] :=
  hmrRows_owned_drop s6Step42ExitGvAfter [s6Step42ExitGOut,s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut] 3 s6Step42ExitBank_outgoingOwned
theorem s6Step42ExitBank_rows : planWindowRowsLog s6Step42ExitGBefore [(s6Step42ExitGRow,247),(s6Step42ExitFRow,247),(s6Step42ExitFvRow,34),(s6Step42ExitGvRow,35)] [[],[],[],[]]=
    some (s6Step42ExitGvAfter,[s6Step42ExitGOut,s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut],(shrinkRow 777 s6Step42ExitGExtra ++ (shrinkRow 795 s6Step42ExitFExtra ++ (shrinkRow 776 s6Step42ExitFvExtra ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step42ExitGvAfter [] []=some (s6Step42ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step42ExitGvBefore s6Step42ExitGvAfter s6Step42ExitGvAfter
    s6Step42ExitGvRow s6Step42ExitGvOut 35 [] [] [] []
    (growRow 775 []) ([]) s6Step42ExitGv_Incoming s6Step42ExitGv_checked h4 s6Step42ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step42ExitFvBefore s6Step42ExitFvAfter s6Step42ExitGvAfter
    s6Step42ExitFvRow s6Step42ExitFvOut 34 [] [(s6Step42ExitGvRow,35)] [[]] [s6Step42ExitGvOut]
    (shrinkRow 776 s6Step42ExitFvExtra) ((growRow 775 [] ++ [])) s6Step42ExitFv_Incoming s6Step42ExitFv_checked h3 s6Step42ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step42ExitFBefore s6Step42ExitFAfter s6Step42ExitGvAfter
    s6Step42ExitFRow s6Step42ExitFOut 247 [] [(s6Step42ExitFvRow,34),(s6Step42ExitGvRow,35)] [[],[]] [s6Step42ExitFvOut,s6Step42ExitGvOut]
    (shrinkRow 795 s6Step42ExitFExtra) ((shrinkRow 776 s6Step42ExitFvExtra ++ (growRow 775 [] ++ []))) s6Step42ExitF_Incoming s6Step42ExitF_checked h2 s6Step42ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step42ExitGBefore s6Step42ExitGAfter s6Step42ExitGvAfter
    s6Step42ExitGRow s6Step42ExitGOut 247 [] [(s6Step42ExitFRow,247),(s6Step42ExitFvRow,34),(s6Step42ExitGvRow,35)] [[],[],[]] [s6Step42ExitFOut,s6Step42ExitFvOut,s6Step42ExitGvOut]
    (shrinkRow 777 s6Step42ExitGExtra) ((shrinkRow 795 s6Step42ExitFExtra ++ (shrinkRow 776 s6Step42ExitFvExtra ++ (growRow 775 [] ++ [])))) s6Step42ExitG_Incoming s6Step42ExitG_checked h1 s6Step42ExitG_Outgoing
  exact h0
theorem s6Step42ExitBank_checked : compileHmrBankResizeLog .exit s6Step42ExitGBefore ⟨s6Step42ExitFRow,s6Step42ExitGRow,s6Step42ExitFvRow,s6Step42ExitGvRow⟩ ⟨247,247,34,35⟩ [[],[],[],[]]=
    some (s6Step42ExitGvAfter,⟨s6Step42ExitFOut,s6Step42ExitGOut,s6Step42ExitFvOut,s6Step42ExitGvOut⟩,(shrinkRow 777 s6Step42ExitGExtra ++ (shrinkRow 795 s6Step42ExitFExtra ++ (shrinkRow 776 s6Step42ExitFvExtra ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step42ExitBank_rows]
  rfl
theorem s6Step43ExitBank_incomingDistinct : ([s6Step43ExitGRow,s6Step43ExitFRow,s6Step43ExitFvRow,s6Step43ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43ExitBank_outgoingOwned : rowsOwned s6Step43ExitGvAfter [s6Step43ExitGOut,s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step43ExitGvAfter (fun q => ([(0,246),(247,502),(503,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43ExitG_Incoming : rowsOwned s6Step43ExitGBefore [s6Step43ExitGRow,s6Step43ExitFRow,s6Step43ExitFvRow,s6Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43ExitGRow,s6Step43ExitFRow,s6Step43ExitFvRow,s6Step43ExitGvRow] 0 s6Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43ExitG_Outgoing : rowsOwned s6Step43ExitGvAfter [s6Step43ExitGOut,s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut] :=
  hmrRows_owned_drop s6Step43ExitGvAfter [s6Step43ExitGOut,s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut] 0 s6Step43ExitBank_outgoingOwned
theorem s6Step43ExitF_Incoming : rowsOwned s6Step43ExitFBefore [s6Step43ExitFRow,s6Step43ExitFvRow,s6Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43ExitGRow,s6Step43ExitFRow,s6Step43ExitFvRow,s6Step43ExitGvRow] 1 s6Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43ExitFBefore (fun q => ([(0,246),(247,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43ExitF_Outgoing : rowsOwned s6Step43ExitGvAfter [s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut] :=
  hmrRows_owned_drop s6Step43ExitGvAfter [s6Step43ExitGOut,s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut] 1 s6Step43ExitBank_outgoingOwned
theorem s6Step43ExitFv_Incoming : rowsOwned s6Step43ExitFvBefore [s6Step43ExitFvRow,s6Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43ExitGRow,s6Step43ExitFRow,s6Step43ExitFvRow,s6Step43ExitGvRow] 2 s6Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43ExitFvBefore (fun q => ([(0,246),(247,502),(503,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43ExitFv_Outgoing : rowsOwned s6Step43ExitGvAfter [s6Step43ExitFvOut,s6Step43ExitGvOut] :=
  hmrRows_owned_drop s6Step43ExitGvAfter [s6Step43ExitGOut,s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut] 2 s6Step43ExitBank_outgoingOwned
theorem s6Step43ExitGv_Incoming : rowsOwned s6Step43ExitGvBefore [s6Step43ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43ExitGRow,s6Step43ExitFRow,s6Step43ExitFvRow,s6Step43ExitGvRow] 3 s6Step43ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43ExitGvBefore (fun q => ([(0,246),(247,502),(503,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43ExitGv_Outgoing : rowsOwned s6Step43ExitGvAfter [s6Step43ExitGvOut] :=
  hmrRows_owned_drop s6Step43ExitGvAfter [s6Step43ExitGOut,s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut] 3 s6Step43ExitBank_outgoingOwned
theorem s6Step43ExitBank_rows : planWindowRowsLog s6Step43ExitGBefore [(s6Step43ExitGRow,246),(s6Step43ExitFRow,246),(s6Step43ExitFvRow,34),(s6Step43ExitGvRow,35)] [[],[],[],[]]=
    some (s6Step43ExitGvAfter,[s6Step43ExitGOut,s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut],(shrinkRow 777 s6Step43ExitGExtra ++ (shrinkRow 795 s6Step43ExitFExtra ++ (shrinkRow 776 s6Step43ExitFvExtra ++ (shrinkRow 775 s6Step43ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step43ExitGvAfter [] []=some (s6Step43ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step43ExitGvBefore s6Step43ExitGvAfter s6Step43ExitGvAfter
    s6Step43ExitGvRow s6Step43ExitGvOut 35 [] [] [] []
    (shrinkRow 775 s6Step43ExitGvExtra) ([]) s6Step43ExitGv_Incoming s6Step43ExitGv_checked h4 s6Step43ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step43ExitFvBefore s6Step43ExitFvAfter s6Step43ExitGvAfter
    s6Step43ExitFvRow s6Step43ExitFvOut 34 [] [(s6Step43ExitGvRow,35)] [[]] [s6Step43ExitGvOut]
    (shrinkRow 776 s6Step43ExitFvExtra) ((shrinkRow 775 s6Step43ExitGvExtra ++ [])) s6Step43ExitFv_Incoming s6Step43ExitFv_checked h3 s6Step43ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step43ExitFBefore s6Step43ExitFAfter s6Step43ExitGvAfter
    s6Step43ExitFRow s6Step43ExitFOut 246 [] [(s6Step43ExitFvRow,34),(s6Step43ExitGvRow,35)] [[],[]] [s6Step43ExitFvOut,s6Step43ExitGvOut]
    (shrinkRow 795 s6Step43ExitFExtra) ((shrinkRow 776 s6Step43ExitFvExtra ++ (shrinkRow 775 s6Step43ExitGvExtra ++ []))) s6Step43ExitF_Incoming s6Step43ExitF_checked h2 s6Step43ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step43ExitGBefore s6Step43ExitGAfter s6Step43ExitGvAfter
    s6Step43ExitGRow s6Step43ExitGOut 246 [] [(s6Step43ExitFRow,246),(s6Step43ExitFvRow,34),(s6Step43ExitGvRow,35)] [[],[],[]] [s6Step43ExitFOut,s6Step43ExitFvOut,s6Step43ExitGvOut]
    (shrinkRow 777 s6Step43ExitGExtra) ((shrinkRow 795 s6Step43ExitFExtra ++ (shrinkRow 776 s6Step43ExitFvExtra ++ (shrinkRow 775 s6Step43ExitGvExtra ++ [])))) s6Step43ExitG_Incoming s6Step43ExitG_checked h1 s6Step43ExitG_Outgoing
  exact h0
theorem s6Step43ExitBank_checked : compileHmrBankResizeLog .exit s6Step43ExitGBefore ⟨s6Step43ExitFRow,s6Step43ExitGRow,s6Step43ExitFvRow,s6Step43ExitGvRow⟩ ⟨246,246,34,35⟩ [[],[],[],[]]=
    some (s6Step43ExitGvAfter,⟨s6Step43ExitFOut,s6Step43ExitGOut,s6Step43ExitFvOut,s6Step43ExitGvOut⟩,(shrinkRow 777 s6Step43ExitGExtra ++ (shrinkRow 795 s6Step43ExitFExtra ++ (shrinkRow 776 s6Step43ExitFvExtra ++ (shrinkRow 775 s6Step43ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step43ExitBank_rows]
  rfl
theorem s6Step44ExitBank_incomingDistinct : ([s6Step44ExitGRow,s6Step44ExitFRow,s6Step44ExitFvRow,s6Step44ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44ExitBank_outgoingOwned : rowsOwned s6Step44ExitGvAfter [s6Step44ExitGOut,s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step44ExitGvAfter (fun q => ([(0,245),(246,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44ExitG_Incoming : rowsOwned s6Step44ExitGBefore [s6Step44ExitGRow,s6Step44ExitFRow,s6Step44ExitFvRow,s6Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44ExitGRow,s6Step44ExitFRow,s6Step44ExitFvRow,s6Step44ExitGvRow] 0 s6Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44ExitG_Outgoing : rowsOwned s6Step44ExitGvAfter [s6Step44ExitGOut,s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut] :=
  hmrRows_owned_drop s6Step44ExitGvAfter [s6Step44ExitGOut,s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut] 0 s6Step44ExitBank_outgoingOwned
theorem s6Step44ExitF_Incoming : rowsOwned s6Step44ExitFBefore [s6Step44ExitFRow,s6Step44ExitFvRow,s6Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44ExitGRow,s6Step44ExitFRow,s6Step44ExitFvRow,s6Step44ExitGvRow] 1 s6Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44ExitFBefore (fun q => ([(0,245),(246,782),(785,787),(789,790),(793,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44ExitF_Outgoing : rowsOwned s6Step44ExitGvAfter [s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut] :=
  hmrRows_owned_drop s6Step44ExitGvAfter [s6Step44ExitGOut,s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut] 1 s6Step44ExitBank_outgoingOwned
theorem s6Step44ExitFv_Incoming : rowsOwned s6Step44ExitFvBefore [s6Step44ExitFvRow,s6Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44ExitGRow,s6Step44ExitFRow,s6Step44ExitFvRow,s6Step44ExitGvRow] 2 s6Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44ExitFvBefore (fun q => ([(0,245),(246,782),(785,787),(789,790),(793,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44ExitFv_Outgoing : rowsOwned s6Step44ExitGvAfter [s6Step44ExitFvOut,s6Step44ExitGvOut] :=
  hmrRows_owned_drop s6Step44ExitGvAfter [s6Step44ExitGOut,s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut] 2 s6Step44ExitBank_outgoingOwned
theorem s6Step44ExitGv_Incoming : rowsOwned s6Step44ExitGvBefore [s6Step44ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44ExitGRow,s6Step44ExitFRow,s6Step44ExitFvRow,s6Step44ExitGvRow] 3 s6Step44ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44ExitGvBefore (fun q => ([(0,245),(246,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44ExitGv_Outgoing : rowsOwned s6Step44ExitGvAfter [s6Step44ExitGvOut] :=
  hmrRows_owned_drop s6Step44ExitGvAfter [s6Step44ExitGOut,s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut] 3 s6Step44ExitBank_outgoingOwned
theorem s6Step44ExitBank_rows : planWindowRowsLog s6Step44ExitGBefore [(s6Step44ExitGRow,245),(s6Step44ExitFRow,246),(s6Step44ExitFvRow,35),(s6Step44ExitGvRow,35)] [[],[],[],[]]=
    some (s6Step44ExitGvAfter,[s6Step44ExitGOut,s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut],(shrinkRow 777 s6Step44ExitGExtra ++ (shrinkRow 795 s6Step44ExitFExtra ++ (shrinkRow 776 s6Step44ExitFvExtra ++ (shrinkRow 775 s6Step44ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step44ExitGvAfter [] []=some (s6Step44ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step44ExitGvBefore s6Step44ExitGvAfter s6Step44ExitGvAfter
    s6Step44ExitGvRow s6Step44ExitGvOut 35 [] [] [] []
    (shrinkRow 775 s6Step44ExitGvExtra) ([]) s6Step44ExitGv_Incoming s6Step44ExitGv_checked h4 s6Step44ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step44ExitFvBefore s6Step44ExitFvAfter s6Step44ExitGvAfter
    s6Step44ExitFvRow s6Step44ExitFvOut 35 [] [(s6Step44ExitGvRow,35)] [[]] [s6Step44ExitGvOut]
    (shrinkRow 776 s6Step44ExitFvExtra) ((shrinkRow 775 s6Step44ExitGvExtra ++ [])) s6Step44ExitFv_Incoming s6Step44ExitFv_checked h3 s6Step44ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step44ExitFBefore s6Step44ExitFAfter s6Step44ExitGvAfter
    s6Step44ExitFRow s6Step44ExitFOut 246 [] [(s6Step44ExitFvRow,35),(s6Step44ExitGvRow,35)] [[],[]] [s6Step44ExitFvOut,s6Step44ExitGvOut]
    (shrinkRow 795 s6Step44ExitFExtra) ((shrinkRow 776 s6Step44ExitFvExtra ++ (shrinkRow 775 s6Step44ExitGvExtra ++ []))) s6Step44ExitF_Incoming s6Step44ExitF_checked h2 s6Step44ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step44ExitGBefore s6Step44ExitGAfter s6Step44ExitGvAfter
    s6Step44ExitGRow s6Step44ExitGOut 245 [] [(s6Step44ExitFRow,246),(s6Step44ExitFvRow,35),(s6Step44ExitGvRow,35)] [[],[],[]] [s6Step44ExitFOut,s6Step44ExitFvOut,s6Step44ExitGvOut]
    (shrinkRow 777 s6Step44ExitGExtra) ((shrinkRow 795 s6Step44ExitFExtra ++ (shrinkRow 776 s6Step44ExitFvExtra ++ (shrinkRow 775 s6Step44ExitGvExtra ++ [])))) s6Step44ExitG_Incoming s6Step44ExitG_checked h1 s6Step44ExitG_Outgoing
  exact h0
theorem s6Step44ExitBank_checked : compileHmrBankResizeLog .exit s6Step44ExitGBefore ⟨s6Step44ExitFRow,s6Step44ExitGRow,s6Step44ExitFvRow,s6Step44ExitGvRow⟩ ⟨246,245,35,35⟩ [[],[],[],[]]=
    some (s6Step44ExitGvAfter,⟨s6Step44ExitFOut,s6Step44ExitGOut,s6Step44ExitFvOut,s6Step44ExitGvOut⟩,(shrinkRow 777 s6Step44ExitGExtra ++ (shrinkRow 795 s6Step44ExitFExtra ++ (shrinkRow 776 s6Step44ExitFvExtra ++ (shrinkRow 775 s6Step44ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step44ExitBank_rows]
  rfl
theorem s6Step45ExitBank_incomingDistinct : ([s6Step45ExitGRow,s6Step45ExitFRow,s6Step45ExitFvRow,s6Step45ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45ExitBank_outgoingOwned : rowsOwned s6Step45ExitGvAfter [s6Step45ExitGOut,s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step45ExitGvAfter (fun q => ([(0,501),(502,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45ExitG_Incoming : rowsOwned s6Step45ExitGBefore [s6Step45ExitGRow,s6Step45ExitFRow,s6Step45ExitFvRow,s6Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45ExitGRow,s6Step45ExitFRow,s6Step45ExitFvRow,s6Step45ExitGvRow] 0 s6Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45ExitG_Outgoing : rowsOwned s6Step45ExitGvAfter [s6Step45ExitGOut,s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut] :=
  hmrRows_owned_drop s6Step45ExitGvAfter [s6Step45ExitGOut,s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut] 0 s6Step45ExitBank_outgoingOwned
theorem s6Step45ExitF_Incoming : rowsOwned s6Step45ExitFBefore [s6Step45ExitFRow,s6Step45ExitFvRow,s6Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45ExitGRow,s6Step45ExitFRow,s6Step45ExitFvRow,s6Step45ExitGvRow] 1 s6Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45ExitFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45ExitF_Outgoing : rowsOwned s6Step45ExitGvAfter [s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut] :=
  hmrRows_owned_drop s6Step45ExitGvAfter [s6Step45ExitGOut,s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut] 1 s6Step45ExitBank_outgoingOwned
theorem s6Step45ExitFv_Incoming : rowsOwned s6Step45ExitFvBefore [s6Step45ExitFvRow,s6Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45ExitGRow,s6Step45ExitFRow,s6Step45ExitFvRow,s6Step45ExitGvRow] 2 s6Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45ExitFvBefore (fun q => ([(0,501),(502,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45ExitFv_Outgoing : rowsOwned s6Step45ExitGvAfter [s6Step45ExitFvOut,s6Step45ExitGvOut] :=
  hmrRows_owned_drop s6Step45ExitGvAfter [s6Step45ExitGOut,s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut] 2 s6Step45ExitBank_outgoingOwned
theorem s6Step45ExitGv_Incoming : rowsOwned s6Step45ExitGvBefore [s6Step45ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45ExitGRow,s6Step45ExitFRow,s6Step45ExitFvRow,s6Step45ExitGvRow] 3 s6Step45ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45ExitGvBefore (fun q => ([(0,501),(502,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45ExitGv_Outgoing : rowsOwned s6Step45ExitGvAfter [s6Step45ExitGvOut] :=
  hmrRows_owned_drop s6Step45ExitGvAfter [s6Step45ExitGOut,s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut] 3 s6Step45ExitBank_outgoingOwned
theorem s6Step45ExitBank_rows : planWindowRowsLog s6Step45ExitGBefore [(s6Step45ExitGRow,245),(s6Step45ExitFRow,245),(s6Step45ExitFvRow,36),(s6Step45ExitGvRow,35)] [[],[],[],[]]=
    some (s6Step45ExitGvAfter,[s6Step45ExitGOut,s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut],(shrinkRow 777 s6Step45ExitGExtra ++ (shrinkRow 795 s6Step45ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step45ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step45ExitGvAfter [] []=some (s6Step45ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step45ExitGvBefore s6Step45ExitGvAfter s6Step45ExitGvAfter
    s6Step45ExitGvRow s6Step45ExitGvOut 35 [] [] [] []
    (shrinkRow 775 s6Step45ExitGvExtra) ([]) s6Step45ExitGv_Incoming s6Step45ExitGv_checked h4 s6Step45ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step45ExitFvBefore s6Step45ExitFvAfter s6Step45ExitGvAfter
    s6Step45ExitFvRow s6Step45ExitFvOut 36 [] [(s6Step45ExitGvRow,35)] [[]] [s6Step45ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step45ExitGvExtra ++ [])) s6Step45ExitFv_Incoming s6Step45ExitFv_checked h3 s6Step45ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step45ExitFBefore s6Step45ExitFAfter s6Step45ExitGvAfter
    s6Step45ExitFRow s6Step45ExitFOut 245 [] [(s6Step45ExitFvRow,36),(s6Step45ExitGvRow,35)] [[],[]] [s6Step45ExitFvOut,s6Step45ExitGvOut]
    (shrinkRow 795 s6Step45ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step45ExitGvExtra ++ []))) s6Step45ExitF_Incoming s6Step45ExitF_checked h2 s6Step45ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step45ExitGBefore s6Step45ExitGAfter s6Step45ExitGvAfter
    s6Step45ExitGRow s6Step45ExitGOut 245 [] [(s6Step45ExitFRow,245),(s6Step45ExitFvRow,36),(s6Step45ExitGvRow,35)] [[],[],[]] [s6Step45ExitFOut,s6Step45ExitFvOut,s6Step45ExitGvOut]
    (shrinkRow 777 s6Step45ExitGExtra) ((shrinkRow 795 s6Step45ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step45ExitGvExtra ++ [])))) s6Step45ExitG_Incoming s6Step45ExitG_checked h1 s6Step45ExitG_Outgoing
  exact h0
theorem s6Step45ExitBank_checked : compileHmrBankResizeLog .exit s6Step45ExitGBefore ⟨s6Step45ExitFRow,s6Step45ExitGRow,s6Step45ExitFvRow,s6Step45ExitGvRow⟩ ⟨245,245,36,35⟩ [[],[],[],[]]=
    some (s6Step45ExitGvAfter,⟨s6Step45ExitFOut,s6Step45ExitGOut,s6Step45ExitFvOut,s6Step45ExitGvOut⟩,(shrinkRow 777 s6Step45ExitGExtra ++ (shrinkRow 795 s6Step45ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step45ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step45ExitBank_rows]
  rfl
theorem s6Step46ExitBank_incomingDistinct : ([s6Step46ExitGRow,s6Step46ExitFRow,s6Step46ExitFvRow,s6Step46ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46ExitBank_outgoingOwned : rowsOwned s6Step46ExitGvAfter [s6Step46ExitGOut,s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step46ExitGvAfter (fun q => ([(0,244),(245,500),(501,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46ExitG_Incoming : rowsOwned s6Step46ExitGBefore [s6Step46ExitGRow,s6Step46ExitFRow,s6Step46ExitFvRow,s6Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46ExitGRow,s6Step46ExitFRow,s6Step46ExitFvRow,s6Step46ExitGvRow] 0 s6Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46ExitG_Outgoing : rowsOwned s6Step46ExitGvAfter [s6Step46ExitGOut,s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut] :=
  hmrRows_owned_drop s6Step46ExitGvAfter [s6Step46ExitGOut,s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut] 0 s6Step46ExitBank_outgoingOwned
theorem s6Step46ExitF_Incoming : rowsOwned s6Step46ExitFBefore [s6Step46ExitFRow,s6Step46ExitFvRow,s6Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46ExitGRow,s6Step46ExitFRow,s6Step46ExitFvRow,s6Step46ExitGvRow] 1 s6Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46ExitFBefore (fun q => ([(0,244),(245,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46ExitF_Outgoing : rowsOwned s6Step46ExitGvAfter [s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut] :=
  hmrRows_owned_drop s6Step46ExitGvAfter [s6Step46ExitGOut,s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut] 1 s6Step46ExitBank_outgoingOwned
theorem s6Step46ExitFv_Incoming : rowsOwned s6Step46ExitFvBefore [s6Step46ExitFvRow,s6Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46ExitGRow,s6Step46ExitFRow,s6Step46ExitFvRow,s6Step46ExitGvRow] 2 s6Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46ExitFvBefore (fun q => ([(0,244),(245,500),(501,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46ExitFv_Outgoing : rowsOwned s6Step46ExitGvAfter [s6Step46ExitFvOut,s6Step46ExitGvOut] :=
  hmrRows_owned_drop s6Step46ExitGvAfter [s6Step46ExitGOut,s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut] 2 s6Step46ExitBank_outgoingOwned
theorem s6Step46ExitGv_Incoming : rowsOwned s6Step46ExitGvBefore [s6Step46ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46ExitGRow,s6Step46ExitFRow,s6Step46ExitFvRow,s6Step46ExitGvRow] 3 s6Step46ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46ExitGvBefore (fun q => ([(0,244),(245,500),(501,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46ExitGv_Outgoing : rowsOwned s6Step46ExitGvAfter [s6Step46ExitGvOut] :=
  hmrRows_owned_drop s6Step46ExitGvAfter [s6Step46ExitGOut,s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut] 3 s6Step46ExitBank_outgoingOwned
theorem s6Step46ExitBank_rows : planWindowRowsLog s6Step46ExitGBefore [(s6Step46ExitGRow,244),(s6Step46ExitFRow,244),(s6Step46ExitFvRow,36),(s6Step46ExitGvRow,36)] [[],[],[],[]]=
    some (s6Step46ExitGvAfter,[s6Step46ExitGOut,s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut],(shrinkRow 777 s6Step46ExitGExtra ++ (shrinkRow 795 s6Step46ExitFExtra ++ (shrinkRow 776 s6Step46ExitFvExtra ++ (shrinkRow 775 s6Step46ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step46ExitGvAfter [] []=some (s6Step46ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step46ExitGvBefore s6Step46ExitGvAfter s6Step46ExitGvAfter
    s6Step46ExitGvRow s6Step46ExitGvOut 36 [] [] [] []
    (shrinkRow 775 s6Step46ExitGvExtra) ([]) s6Step46ExitGv_Incoming s6Step46ExitGv_checked h4 s6Step46ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step46ExitFvBefore s6Step46ExitFvAfter s6Step46ExitGvAfter
    s6Step46ExitFvRow s6Step46ExitFvOut 36 [] [(s6Step46ExitGvRow,36)] [[]] [s6Step46ExitGvOut]
    (shrinkRow 776 s6Step46ExitFvExtra) ((shrinkRow 775 s6Step46ExitGvExtra ++ [])) s6Step46ExitFv_Incoming s6Step46ExitFv_checked h3 s6Step46ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step46ExitFBefore s6Step46ExitFAfter s6Step46ExitGvAfter
    s6Step46ExitFRow s6Step46ExitFOut 244 [] [(s6Step46ExitFvRow,36),(s6Step46ExitGvRow,36)] [[],[]] [s6Step46ExitFvOut,s6Step46ExitGvOut]
    (shrinkRow 795 s6Step46ExitFExtra) ((shrinkRow 776 s6Step46ExitFvExtra ++ (shrinkRow 775 s6Step46ExitGvExtra ++ []))) s6Step46ExitF_Incoming s6Step46ExitF_checked h2 s6Step46ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step46ExitGBefore s6Step46ExitGAfter s6Step46ExitGvAfter
    s6Step46ExitGRow s6Step46ExitGOut 244 [] [(s6Step46ExitFRow,244),(s6Step46ExitFvRow,36),(s6Step46ExitGvRow,36)] [[],[],[]] [s6Step46ExitFOut,s6Step46ExitFvOut,s6Step46ExitGvOut]
    (shrinkRow 777 s6Step46ExitGExtra) ((shrinkRow 795 s6Step46ExitFExtra ++ (shrinkRow 776 s6Step46ExitFvExtra ++ (shrinkRow 775 s6Step46ExitGvExtra ++ [])))) s6Step46ExitG_Incoming s6Step46ExitG_checked h1 s6Step46ExitG_Outgoing
  exact h0
theorem s6Step46ExitBank_checked : compileHmrBankResizeLog .exit s6Step46ExitGBefore ⟨s6Step46ExitFRow,s6Step46ExitGRow,s6Step46ExitFvRow,s6Step46ExitGvRow⟩ ⟨244,244,36,36⟩ [[],[],[],[]]=
    some (s6Step46ExitGvAfter,⟨s6Step46ExitFOut,s6Step46ExitGOut,s6Step46ExitFvOut,s6Step46ExitGvOut⟩,(shrinkRow 777 s6Step46ExitGExtra ++ (shrinkRow 795 s6Step46ExitFExtra ++ (shrinkRow 776 s6Step46ExitFvExtra ++ (shrinkRow 775 s6Step46ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step46ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
