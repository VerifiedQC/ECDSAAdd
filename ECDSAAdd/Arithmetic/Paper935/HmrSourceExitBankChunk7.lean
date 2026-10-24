import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitBankChunk6

namespace ECDSAAdd.Arithmetic.Paper935
theorem s6Step47ExitBank_incomingDistinct : ([s6Step47ExitGRow,s6Step47ExitFRow,s6Step47ExitFvRow,s6Step47ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step47ExitBank_outgoingOwned : rowsOwned s6Step47ExitGvAfter [s6Step47ExitGOut,s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step47ExitGvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47ExitG_Incoming : rowsOwned s6Step47ExitGBefore [s6Step47ExitGRow,s6Step47ExitFRow,s6Step47ExitFvRow,s6Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47ExitGRow,s6Step47ExitFRow,s6Step47ExitFvRow,s6Step47ExitGvRow] 0 s6Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47ExitG_Outgoing : rowsOwned s6Step47ExitGvAfter [s6Step47ExitGOut,s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut] :=
  hmrRows_owned_drop s6Step47ExitGvAfter [s6Step47ExitGOut,s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut] 0 s6Step47ExitBank_outgoingOwned
theorem s6Step47ExitF_Incoming : rowsOwned s6Step47ExitFBefore [s6Step47ExitFRow,s6Step47ExitFvRow,s6Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47ExitGRow,s6Step47ExitFRow,s6Step47ExitFvRow,s6Step47ExitGvRow] 1 s6Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47ExitFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47ExitF_Outgoing : rowsOwned s6Step47ExitGvAfter [s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut] :=
  hmrRows_owned_drop s6Step47ExitGvAfter [s6Step47ExitGOut,s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut] 1 s6Step47ExitBank_outgoingOwned
theorem s6Step47ExitFv_Incoming : rowsOwned s6Step47ExitFvBefore [s6Step47ExitFvRow,s6Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47ExitGRow,s6Step47ExitFRow,s6Step47ExitFvRow,s6Step47ExitGvRow] 2 s6Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47ExitFvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47ExitFv_Outgoing : rowsOwned s6Step47ExitGvAfter [s6Step47ExitFvOut,s6Step47ExitGvOut] :=
  hmrRows_owned_drop s6Step47ExitGvAfter [s6Step47ExitGOut,s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut] 2 s6Step47ExitBank_outgoingOwned
theorem s6Step47ExitGv_Incoming : rowsOwned s6Step47ExitGvBefore [s6Step47ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47ExitGRow,s6Step47ExitFRow,s6Step47ExitFvRow,s6Step47ExitGvRow] 3 s6Step47ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47ExitGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47ExitGv_Outgoing : rowsOwned s6Step47ExitGvAfter [s6Step47ExitGvOut] :=
  hmrRows_owned_drop s6Step47ExitGvAfter [s6Step47ExitGOut,s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut] 3 s6Step47ExitBank_outgoingOwned
theorem s6Step47ExitBank_rows : planWindowRowsLog s6Step47ExitGBefore [(s6Step47ExitGRow,244),(s6Step47ExitFRow,244),(s6Step47ExitFvRow,37),(s6Step47ExitGvRow,37)] [[],[],[],[]]=
    some (s6Step47ExitGvAfter,[s6Step47ExitGOut,s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut],(shrinkRow 777 s6Step47ExitGExtra ++ (shrinkRow 795 s6Step47ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step47ExitGvAfter [] []=some (s6Step47ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step47ExitGvBefore s6Step47ExitGvAfter s6Step47ExitGvAfter
    s6Step47ExitGvRow s6Step47ExitGvOut 37 [] [] [] []
    (growRow 775 []) ([]) s6Step47ExitGv_Incoming s6Step47ExitGv_checked h4 s6Step47ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step47ExitFvBefore s6Step47ExitFvAfter s6Step47ExitGvAfter
    s6Step47ExitFvRow s6Step47ExitFvOut 37 [] [(s6Step47ExitGvRow,37)] [[]] [s6Step47ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step47ExitFv_Incoming s6Step47ExitFv_checked h3 s6Step47ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step47ExitFBefore s6Step47ExitFAfter s6Step47ExitGvAfter
    s6Step47ExitFRow s6Step47ExitFOut 244 [] [(s6Step47ExitFvRow,37),(s6Step47ExitGvRow,37)] [[],[]] [s6Step47ExitFvOut,s6Step47ExitGvOut]
    (shrinkRow 795 s6Step47ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step47ExitF_Incoming s6Step47ExitF_checked h2 s6Step47ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step47ExitGBefore s6Step47ExitGAfter s6Step47ExitGvAfter
    s6Step47ExitGRow s6Step47ExitGOut 244 [] [(s6Step47ExitFRow,244),(s6Step47ExitFvRow,37),(s6Step47ExitGvRow,37)] [[],[],[]] [s6Step47ExitFOut,s6Step47ExitFvOut,s6Step47ExitGvOut]
    (shrinkRow 777 s6Step47ExitGExtra) ((shrinkRow 795 s6Step47ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step47ExitG_Incoming s6Step47ExitG_checked h1 s6Step47ExitG_Outgoing
  exact h0
theorem s6Step47ExitBank_checked : compileHmrBankResizeLog .exit s6Step47ExitGBefore ⟨s6Step47ExitFRow,s6Step47ExitGRow,s6Step47ExitFvRow,s6Step47ExitGvRow⟩ ⟨244,244,37,37⟩ [[],[],[],[]]=
    some (s6Step47ExitGvAfter,⟨s6Step47ExitFOut,s6Step47ExitGOut,s6Step47ExitFvOut,s6Step47ExitGvOut⟩,(shrinkRow 777 s6Step47ExitGExtra ++ (shrinkRow 795 s6Step47ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step47ExitBank_rows]
  rfl
theorem s6Step48ExitBank_incomingDistinct : ([s6Step48ExitGRow,s6Step48ExitFRow,s6Step48ExitFvRow,s6Step48ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step48ExitBank_outgoingOwned : rowsOwned s6Step48ExitGvAfter [s6Step48ExitGOut,s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step48ExitGvAfter (fun q => ([(0,243),(244,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48ExitG_Incoming : rowsOwned s6Step48ExitGBefore [s6Step48ExitGRow,s6Step48ExitFRow,s6Step48ExitFvRow,s6Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48ExitGRow,s6Step48ExitFRow,s6Step48ExitFvRow,s6Step48ExitGvRow] 0 s6Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48ExitG_Outgoing : rowsOwned s6Step48ExitGvAfter [s6Step48ExitGOut,s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut] :=
  hmrRows_owned_drop s6Step48ExitGvAfter [s6Step48ExitGOut,s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut] 0 s6Step48ExitBank_outgoingOwned
theorem s6Step48ExitF_Incoming : rowsOwned s6Step48ExitFBefore [s6Step48ExitFRow,s6Step48ExitFvRow,s6Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48ExitGRow,s6Step48ExitFRow,s6Step48ExitFvRow,s6Step48ExitGvRow] 1 s6Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48ExitFBefore (fun q => ([(0,243),(244,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48ExitF_Outgoing : rowsOwned s6Step48ExitGvAfter [s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut] :=
  hmrRows_owned_drop s6Step48ExitGvAfter [s6Step48ExitGOut,s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut] 1 s6Step48ExitBank_outgoingOwned
theorem s6Step48ExitFv_Incoming : rowsOwned s6Step48ExitFvBefore [s6Step48ExitFvRow,s6Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48ExitGRow,s6Step48ExitFRow,s6Step48ExitFvRow,s6Step48ExitGvRow] 2 s6Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48ExitFvBefore (fun q => ([(0,243),(244,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48ExitFv_Outgoing : rowsOwned s6Step48ExitGvAfter [s6Step48ExitFvOut,s6Step48ExitGvOut] :=
  hmrRows_owned_drop s6Step48ExitGvAfter [s6Step48ExitGOut,s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut] 2 s6Step48ExitBank_outgoingOwned
theorem s6Step48ExitGv_Incoming : rowsOwned s6Step48ExitGvBefore [s6Step48ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48ExitGRow,s6Step48ExitFRow,s6Step48ExitFvRow,s6Step48ExitGvRow] 3 s6Step48ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48ExitGvBefore (fun q => ([(0,243),(244,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48ExitGv_Outgoing : rowsOwned s6Step48ExitGvAfter [s6Step48ExitGvOut] :=
  hmrRows_owned_drop s6Step48ExitGvAfter [s6Step48ExitGOut,s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut] 3 s6Step48ExitBank_outgoingOwned
theorem s6Step48ExitBank_rows : planWindowRowsLog s6Step48ExitGBefore [(s6Step48ExitGRow,243),(s6Step48ExitFRow,244),(s6Step48ExitFvRow,37),(s6Step48ExitGvRow,37)] [[],[],[],[]]=
    some (s6Step48ExitGvAfter,[s6Step48ExitGOut,s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut],(shrinkRow 777 s6Step48ExitGExtra ++ (shrinkRow 795 s6Step48ExitFExtra ++ (shrinkRow 776 s6Step48ExitFvExtra ++ (shrinkRow 775 s6Step48ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step48ExitGvAfter [] []=some (s6Step48ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step48ExitGvBefore s6Step48ExitGvAfter s6Step48ExitGvAfter
    s6Step48ExitGvRow s6Step48ExitGvOut 37 [] [] [] []
    (shrinkRow 775 s6Step48ExitGvExtra) ([]) s6Step48ExitGv_Incoming s6Step48ExitGv_checked h4 s6Step48ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step48ExitFvBefore s6Step48ExitFvAfter s6Step48ExitGvAfter
    s6Step48ExitFvRow s6Step48ExitFvOut 37 [] [(s6Step48ExitGvRow,37)] [[]] [s6Step48ExitGvOut]
    (shrinkRow 776 s6Step48ExitFvExtra) ((shrinkRow 775 s6Step48ExitGvExtra ++ [])) s6Step48ExitFv_Incoming s6Step48ExitFv_checked h3 s6Step48ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step48ExitFBefore s6Step48ExitFAfter s6Step48ExitGvAfter
    s6Step48ExitFRow s6Step48ExitFOut 244 [] [(s6Step48ExitFvRow,37),(s6Step48ExitGvRow,37)] [[],[]] [s6Step48ExitFvOut,s6Step48ExitGvOut]
    (shrinkRow 795 s6Step48ExitFExtra) ((shrinkRow 776 s6Step48ExitFvExtra ++ (shrinkRow 775 s6Step48ExitGvExtra ++ []))) s6Step48ExitF_Incoming s6Step48ExitF_checked h2 s6Step48ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step48ExitGBefore s6Step48ExitGAfter s6Step48ExitGvAfter
    s6Step48ExitGRow s6Step48ExitGOut 243 [] [(s6Step48ExitFRow,244),(s6Step48ExitFvRow,37),(s6Step48ExitGvRow,37)] [[],[],[]] [s6Step48ExitFOut,s6Step48ExitFvOut,s6Step48ExitGvOut]
    (shrinkRow 777 s6Step48ExitGExtra) ((shrinkRow 795 s6Step48ExitFExtra ++ (shrinkRow 776 s6Step48ExitFvExtra ++ (shrinkRow 775 s6Step48ExitGvExtra ++ [])))) s6Step48ExitG_Incoming s6Step48ExitG_checked h1 s6Step48ExitG_Outgoing
  exact h0
theorem s6Step48ExitBank_checked : compileHmrBankResizeLog .exit s6Step48ExitGBefore ⟨s6Step48ExitFRow,s6Step48ExitGRow,s6Step48ExitFvRow,s6Step48ExitGvRow⟩ ⟨244,243,37,37⟩ [[],[],[],[]]=
    some (s6Step48ExitGvAfter,⟨s6Step48ExitFOut,s6Step48ExitGOut,s6Step48ExitFvOut,s6Step48ExitGvOut⟩,(shrinkRow 777 s6Step48ExitGExtra ++ (shrinkRow 795 s6Step48ExitFExtra ++ (shrinkRow 776 s6Step48ExitFvExtra ++ (shrinkRow 775 s6Step48ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step48ExitBank_rows]
  rfl
theorem s6Step49ExitBank_incomingDistinct : ([s6Step49ExitGRow,s6Step49ExitFRow,s6Step49ExitFvRow,s6Step49ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step49ExitBank_outgoingOwned : rowsOwned s6Step49ExitGvAfter [s6Step49ExitGOut,s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step49ExitGvAfter (fun q => ([(0,499),(500,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49ExitG_Incoming : rowsOwned s6Step49ExitGBefore [s6Step49ExitGRow,s6Step49ExitFRow,s6Step49ExitFvRow,s6Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49ExitGRow,s6Step49ExitFRow,s6Step49ExitFvRow,s6Step49ExitGvRow] 0 s6Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49ExitG_Outgoing : rowsOwned s6Step49ExitGvAfter [s6Step49ExitGOut,s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut] :=
  hmrRows_owned_drop s6Step49ExitGvAfter [s6Step49ExitGOut,s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut] 0 s6Step49ExitBank_outgoingOwned
theorem s6Step49ExitF_Incoming : rowsOwned s6Step49ExitFBefore [s6Step49ExitFRow,s6Step49ExitFvRow,s6Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49ExitGRow,s6Step49ExitFRow,s6Step49ExitFvRow,s6Step49ExitGvRow] 1 s6Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49ExitFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49ExitF_Outgoing : rowsOwned s6Step49ExitGvAfter [s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut] :=
  hmrRows_owned_drop s6Step49ExitGvAfter [s6Step49ExitGOut,s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut] 1 s6Step49ExitBank_outgoingOwned
theorem s6Step49ExitFv_Incoming : rowsOwned s6Step49ExitFvBefore [s6Step49ExitFvRow,s6Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49ExitGRow,s6Step49ExitFRow,s6Step49ExitFvRow,s6Step49ExitGvRow] 2 s6Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49ExitFvBefore (fun q => ([(0,499),(500,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49ExitFv_Outgoing : rowsOwned s6Step49ExitGvAfter [s6Step49ExitFvOut,s6Step49ExitGvOut] :=
  hmrRows_owned_drop s6Step49ExitGvAfter [s6Step49ExitGOut,s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut] 2 s6Step49ExitBank_outgoingOwned
theorem s6Step49ExitGv_Incoming : rowsOwned s6Step49ExitGvBefore [s6Step49ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49ExitGRow,s6Step49ExitFRow,s6Step49ExitFvRow,s6Step49ExitGvRow] 3 s6Step49ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49ExitGvBefore (fun q => ([(0,499),(500,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49ExitGv_Outgoing : rowsOwned s6Step49ExitGvAfter [s6Step49ExitGvOut] :=
  hmrRows_owned_drop s6Step49ExitGvAfter [s6Step49ExitGOut,s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut] 3 s6Step49ExitBank_outgoingOwned
theorem s6Step49ExitBank_rows : planWindowRowsLog s6Step49ExitGBefore [(s6Step49ExitGRow,243),(s6Step49ExitFRow,243),(s6Step49ExitFvRow,38),(s6Step49ExitGvRow,37)] [[],[],[],[]]=
    some (s6Step49ExitGvAfter,[s6Step49ExitGOut,s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut],(shrinkRow 777 s6Step49ExitGExtra ++ (shrinkRow 795 s6Step49ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step49ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step49ExitGvAfter [] []=some (s6Step49ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step49ExitGvBefore s6Step49ExitGvAfter s6Step49ExitGvAfter
    s6Step49ExitGvRow s6Step49ExitGvOut 37 [] [] [] []
    (shrinkRow 775 s6Step49ExitGvExtra) ([]) s6Step49ExitGv_Incoming s6Step49ExitGv_checked h4 s6Step49ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step49ExitFvBefore s6Step49ExitFvAfter s6Step49ExitGvAfter
    s6Step49ExitFvRow s6Step49ExitFvOut 38 [] [(s6Step49ExitGvRow,37)] [[]] [s6Step49ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step49ExitGvExtra ++ [])) s6Step49ExitFv_Incoming s6Step49ExitFv_checked h3 s6Step49ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step49ExitFBefore s6Step49ExitFAfter s6Step49ExitGvAfter
    s6Step49ExitFRow s6Step49ExitFOut 243 [] [(s6Step49ExitFvRow,38),(s6Step49ExitGvRow,37)] [[],[]] [s6Step49ExitFvOut,s6Step49ExitGvOut]
    (shrinkRow 795 s6Step49ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step49ExitGvExtra ++ []))) s6Step49ExitF_Incoming s6Step49ExitF_checked h2 s6Step49ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step49ExitGBefore s6Step49ExitGAfter s6Step49ExitGvAfter
    s6Step49ExitGRow s6Step49ExitGOut 243 [] [(s6Step49ExitFRow,243),(s6Step49ExitFvRow,38),(s6Step49ExitGvRow,37)] [[],[],[]] [s6Step49ExitFOut,s6Step49ExitFvOut,s6Step49ExitGvOut]
    (shrinkRow 777 s6Step49ExitGExtra) ((shrinkRow 795 s6Step49ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step49ExitGvExtra ++ [])))) s6Step49ExitG_Incoming s6Step49ExitG_checked h1 s6Step49ExitG_Outgoing
  exact h0
theorem s6Step49ExitBank_checked : compileHmrBankResizeLog .exit s6Step49ExitGBefore ⟨s6Step49ExitFRow,s6Step49ExitGRow,s6Step49ExitFvRow,s6Step49ExitGvRow⟩ ⟨243,243,38,37⟩ [[],[],[],[]]=
    some (s6Step49ExitGvAfter,⟨s6Step49ExitFOut,s6Step49ExitGOut,s6Step49ExitFvOut,s6Step49ExitGvOut⟩,(shrinkRow 777 s6Step49ExitGExtra ++ (shrinkRow 795 s6Step49ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step49ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step49ExitBank_rows]
  rfl
theorem s6Step50ExitBank_incomingDistinct : ([s6Step50ExitGRow,s6Step50ExitFRow,s6Step50ExitFvRow,s6Step50ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step50ExitBank_outgoingOwned : rowsOwned s6Step50ExitGvAfter [s6Step50ExitGOut,s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step50ExitGvAfter (fun q => ([(0,242),(243,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50ExitG_Incoming : rowsOwned s6Step50ExitGBefore [s6Step50ExitGRow,s6Step50ExitFRow,s6Step50ExitFvRow,s6Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50ExitGRow,s6Step50ExitFRow,s6Step50ExitFvRow,s6Step50ExitGvRow] 0 s6Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50ExitG_Outgoing : rowsOwned s6Step50ExitGvAfter [s6Step50ExitGOut,s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut] :=
  hmrRows_owned_drop s6Step50ExitGvAfter [s6Step50ExitGOut,s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut] 0 s6Step50ExitBank_outgoingOwned
theorem s6Step50ExitF_Incoming : rowsOwned s6Step50ExitFBefore [s6Step50ExitFRow,s6Step50ExitFvRow,s6Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50ExitGRow,s6Step50ExitFRow,s6Step50ExitFvRow,s6Step50ExitGvRow] 1 s6Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50ExitFBefore (fun q => ([(0,242),(243,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50ExitF_Outgoing : rowsOwned s6Step50ExitGvAfter [s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut] :=
  hmrRows_owned_drop s6Step50ExitGvAfter [s6Step50ExitGOut,s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut] 1 s6Step50ExitBank_outgoingOwned
theorem s6Step50ExitFv_Incoming : rowsOwned s6Step50ExitFvBefore [s6Step50ExitFvRow,s6Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50ExitGRow,s6Step50ExitFRow,s6Step50ExitFvRow,s6Step50ExitGvRow] 2 s6Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50ExitFvBefore (fun q => ([(0,242),(243,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50ExitFv_Outgoing : rowsOwned s6Step50ExitGvAfter [s6Step50ExitFvOut,s6Step50ExitGvOut] :=
  hmrRows_owned_drop s6Step50ExitGvAfter [s6Step50ExitGOut,s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut] 2 s6Step50ExitBank_outgoingOwned
theorem s6Step50ExitGv_Incoming : rowsOwned s6Step50ExitGvBefore [s6Step50ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50ExitGRow,s6Step50ExitFRow,s6Step50ExitFvRow,s6Step50ExitGvRow] 3 s6Step50ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50ExitGvBefore (fun q => ([(0,242),(243,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50ExitGv_Outgoing : rowsOwned s6Step50ExitGvAfter [s6Step50ExitGvOut] :=
  hmrRows_owned_drop s6Step50ExitGvAfter [s6Step50ExitGOut,s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut] 3 s6Step50ExitBank_outgoingOwned
theorem s6Step50ExitBank_rows : planWindowRowsLog s6Step50ExitGBefore [(s6Step50ExitGRow,242),(s6Step50ExitFRow,243),(s6Step50ExitFvRow,38),(s6Step50ExitGvRow,37)] [[],[],[],[]]=
    some (s6Step50ExitGvAfter,[s6Step50ExitGOut,s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut],(shrinkRow 777 s6Step50ExitGExtra ++ (shrinkRow 795 s6Step50ExitFExtra ++ (shrinkRow 776 s6Step50ExitFvExtra ++ (shrinkRow 775 s6Step50ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step50ExitGvAfter [] []=some (s6Step50ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step50ExitGvBefore s6Step50ExitGvAfter s6Step50ExitGvAfter
    s6Step50ExitGvRow s6Step50ExitGvOut 37 [] [] [] []
    (shrinkRow 775 s6Step50ExitGvExtra) ([]) s6Step50ExitGv_Incoming s6Step50ExitGv_checked h4 s6Step50ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step50ExitFvBefore s6Step50ExitFvAfter s6Step50ExitGvAfter
    s6Step50ExitFvRow s6Step50ExitFvOut 38 [] [(s6Step50ExitGvRow,37)] [[]] [s6Step50ExitGvOut]
    (shrinkRow 776 s6Step50ExitFvExtra) ((shrinkRow 775 s6Step50ExitGvExtra ++ [])) s6Step50ExitFv_Incoming s6Step50ExitFv_checked h3 s6Step50ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step50ExitFBefore s6Step50ExitFAfter s6Step50ExitGvAfter
    s6Step50ExitFRow s6Step50ExitFOut 243 [] [(s6Step50ExitFvRow,38),(s6Step50ExitGvRow,37)] [[],[]] [s6Step50ExitFvOut,s6Step50ExitGvOut]
    (shrinkRow 795 s6Step50ExitFExtra) ((shrinkRow 776 s6Step50ExitFvExtra ++ (shrinkRow 775 s6Step50ExitGvExtra ++ []))) s6Step50ExitF_Incoming s6Step50ExitF_checked h2 s6Step50ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step50ExitGBefore s6Step50ExitGAfter s6Step50ExitGvAfter
    s6Step50ExitGRow s6Step50ExitGOut 242 [] [(s6Step50ExitFRow,243),(s6Step50ExitFvRow,38),(s6Step50ExitGvRow,37)] [[],[],[]] [s6Step50ExitFOut,s6Step50ExitFvOut,s6Step50ExitGvOut]
    (shrinkRow 777 s6Step50ExitGExtra) ((shrinkRow 795 s6Step50ExitFExtra ++ (shrinkRow 776 s6Step50ExitFvExtra ++ (shrinkRow 775 s6Step50ExitGvExtra ++ [])))) s6Step50ExitG_Incoming s6Step50ExitG_checked h1 s6Step50ExitG_Outgoing
  exact h0
theorem s6Step50ExitBank_checked : compileHmrBankResizeLog .exit s6Step50ExitGBefore ⟨s6Step50ExitFRow,s6Step50ExitGRow,s6Step50ExitFvRow,s6Step50ExitGvRow⟩ ⟨243,242,38,37⟩ [[],[],[],[]]=
    some (s6Step50ExitGvAfter,⟨s6Step50ExitFOut,s6Step50ExitGOut,s6Step50ExitFvOut,s6Step50ExitGvOut⟩,(shrinkRow 777 s6Step50ExitGExtra ++ (shrinkRow 795 s6Step50ExitFExtra ++ (shrinkRow 776 s6Step50ExitFvExtra ++ (shrinkRow 775 s6Step50ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step50ExitBank_rows]
  rfl
theorem s6Step51ExitBank_incomingDistinct : ([s6Step51ExitGRow,s6Step51ExitFRow,s6Step51ExitFvRow,s6Step51ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step51ExitBank_outgoingOwned : rowsOwned s6Step51ExitGvAfter [s6Step51ExitGOut,s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step51ExitGvAfter (fun q => ([(0,498),(499,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51ExitG_Incoming : rowsOwned s6Step51ExitGBefore [s6Step51ExitGRow,s6Step51ExitFRow,s6Step51ExitFvRow,s6Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51ExitGRow,s6Step51ExitFRow,s6Step51ExitFvRow,s6Step51ExitGvRow] 0 s6Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51ExitGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51ExitG_Outgoing : rowsOwned s6Step51ExitGvAfter [s6Step51ExitGOut,s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut] :=
  hmrRows_owned_drop s6Step51ExitGvAfter [s6Step51ExitGOut,s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut] 0 s6Step51ExitBank_outgoingOwned
theorem s6Step51ExitF_Incoming : rowsOwned s6Step51ExitFBefore [s6Step51ExitFRow,s6Step51ExitFvRow,s6Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51ExitGRow,s6Step51ExitFRow,s6Step51ExitFvRow,s6Step51ExitGvRow] 1 s6Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51ExitFBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51ExitF_Outgoing : rowsOwned s6Step51ExitGvAfter [s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut] :=
  hmrRows_owned_drop s6Step51ExitGvAfter [s6Step51ExitGOut,s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut] 1 s6Step51ExitBank_outgoingOwned
theorem s6Step51ExitFv_Incoming : rowsOwned s6Step51ExitFvBefore [s6Step51ExitFvRow,s6Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51ExitGRow,s6Step51ExitFRow,s6Step51ExitFvRow,s6Step51ExitGvRow] 2 s6Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51ExitFvBefore (fun q => ([(0,498),(499,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51ExitFv_Outgoing : rowsOwned s6Step51ExitGvAfter [s6Step51ExitFvOut,s6Step51ExitGvOut] :=
  hmrRows_owned_drop s6Step51ExitGvAfter [s6Step51ExitGOut,s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut] 2 s6Step51ExitBank_outgoingOwned
theorem s6Step51ExitGv_Incoming : rowsOwned s6Step51ExitGvBefore [s6Step51ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51ExitGRow,s6Step51ExitFRow,s6Step51ExitFvRow,s6Step51ExitGvRow] 3 s6Step51ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51ExitGvBefore (fun q => ([(0,498),(499,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51ExitGv_Outgoing : rowsOwned s6Step51ExitGvAfter [s6Step51ExitGvOut] :=
  hmrRows_owned_drop s6Step51ExitGvAfter [s6Step51ExitGOut,s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut] 3 s6Step51ExitBank_outgoingOwned
theorem s6Step51ExitBank_rows : planWindowRowsLog s6Step51ExitGBefore [(s6Step51ExitGRow,242),(s6Step51ExitFRow,242),(s6Step51ExitFvRow,39),(s6Step51ExitGvRow,38)] [[],[],[],[]]=
    some (s6Step51ExitGvAfter,[s6Step51ExitGOut,s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut],(shrinkRow 777 s6Step51ExitGExtra ++ (shrinkRow 795 s6Step51ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step51ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step51ExitGvAfter [] []=some (s6Step51ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step51ExitGvBefore s6Step51ExitGvAfter s6Step51ExitGvAfter
    s6Step51ExitGvRow s6Step51ExitGvOut 38 [] [] [] []
    (shrinkRow 775 s6Step51ExitGvExtra) ([]) s6Step51ExitGv_Incoming s6Step51ExitGv_checked h4 s6Step51ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step51ExitFvBefore s6Step51ExitFvAfter s6Step51ExitGvAfter
    s6Step51ExitFvRow s6Step51ExitFvOut 39 [] [(s6Step51ExitGvRow,38)] [[]] [s6Step51ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step51ExitGvExtra ++ [])) s6Step51ExitFv_Incoming s6Step51ExitFv_checked h3 s6Step51ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step51ExitFBefore s6Step51ExitFAfter s6Step51ExitGvAfter
    s6Step51ExitFRow s6Step51ExitFOut 242 [] [(s6Step51ExitFvRow,39),(s6Step51ExitGvRow,38)] [[],[]] [s6Step51ExitFvOut,s6Step51ExitGvOut]
    (shrinkRow 795 s6Step51ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step51ExitGvExtra ++ []))) s6Step51ExitF_Incoming s6Step51ExitF_checked h2 s6Step51ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step51ExitGBefore s6Step51ExitGAfter s6Step51ExitGvAfter
    s6Step51ExitGRow s6Step51ExitGOut 242 [] [(s6Step51ExitFRow,242),(s6Step51ExitFvRow,39),(s6Step51ExitGvRow,38)] [[],[],[]] [s6Step51ExitFOut,s6Step51ExitFvOut,s6Step51ExitGvOut]
    (shrinkRow 777 s6Step51ExitGExtra) ((shrinkRow 795 s6Step51ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step51ExitGvExtra ++ [])))) s6Step51ExitG_Incoming s6Step51ExitG_checked h1 s6Step51ExitG_Outgoing
  exact h0
theorem s6Step51ExitBank_checked : compileHmrBankResizeLog .exit s6Step51ExitGBefore ⟨s6Step51ExitFRow,s6Step51ExitGRow,s6Step51ExitFvRow,s6Step51ExitGvRow⟩ ⟨242,242,39,38⟩ [[],[],[],[]]=
    some (s6Step51ExitGvAfter,⟨s6Step51ExitFOut,s6Step51ExitGOut,s6Step51ExitFvOut,s6Step51ExitGvOut⟩,(shrinkRow 777 s6Step51ExitGExtra ++ (shrinkRow 795 s6Step51ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step51ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step51ExitBank_rows]
  rfl
theorem s6Step52ExitBank_incomingDistinct : ([s6Step52ExitGRow,s6Step52ExitFRow,s6Step52ExitFvRow,s6Step52ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step52ExitBank_outgoingOwned : rowsOwned s6Step52ExitGvAfter [s6Step52ExitGOut,s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step52ExitGvAfter (fun q => ([(0,241),(242,497),(498,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52ExitG_Incoming : rowsOwned s6Step52ExitGBefore [s6Step52ExitGRow,s6Step52ExitFRow,s6Step52ExitFvRow,s6Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52ExitGRow,s6Step52ExitFRow,s6Step52ExitFvRow,s6Step52ExitGvRow] 0 s6Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52ExitG_Outgoing : rowsOwned s6Step52ExitGvAfter [s6Step52ExitGOut,s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut] :=
  hmrRows_owned_drop s6Step52ExitGvAfter [s6Step52ExitGOut,s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut] 0 s6Step52ExitBank_outgoingOwned
theorem s6Step52ExitF_Incoming : rowsOwned s6Step52ExitFBefore [s6Step52ExitFRow,s6Step52ExitFvRow,s6Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52ExitGRow,s6Step52ExitFRow,s6Step52ExitFvRow,s6Step52ExitGvRow] 1 s6Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52ExitFBefore (fun q => ([(0,241),(242,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52ExitF_Outgoing : rowsOwned s6Step52ExitGvAfter [s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut] :=
  hmrRows_owned_drop s6Step52ExitGvAfter [s6Step52ExitGOut,s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut] 1 s6Step52ExitBank_outgoingOwned
theorem s6Step52ExitFv_Incoming : rowsOwned s6Step52ExitFvBefore [s6Step52ExitFvRow,s6Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52ExitGRow,s6Step52ExitFRow,s6Step52ExitFvRow,s6Step52ExitGvRow] 2 s6Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52ExitFvBefore (fun q => ([(0,241),(242,497),(498,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52ExitFv_Outgoing : rowsOwned s6Step52ExitGvAfter [s6Step52ExitFvOut,s6Step52ExitGvOut] :=
  hmrRows_owned_drop s6Step52ExitGvAfter [s6Step52ExitGOut,s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut] 2 s6Step52ExitBank_outgoingOwned
theorem s6Step52ExitGv_Incoming : rowsOwned s6Step52ExitGvBefore [s6Step52ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52ExitGRow,s6Step52ExitFRow,s6Step52ExitFvRow,s6Step52ExitGvRow] 3 s6Step52ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52ExitGvBefore (fun q => ([(0,241),(242,497),(498,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52ExitGv_Outgoing : rowsOwned s6Step52ExitGvAfter [s6Step52ExitGvOut] :=
  hmrRows_owned_drop s6Step52ExitGvAfter [s6Step52ExitGOut,s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut] 3 s6Step52ExitBank_outgoingOwned
theorem s6Step52ExitBank_rows : planWindowRowsLog s6Step52ExitGBefore [(s6Step52ExitGRow,241),(s6Step52ExitFRow,241),(s6Step52ExitFvRow,39),(s6Step52ExitGvRow,38)] [[],[],[],[]]=
    some (s6Step52ExitGvAfter,[s6Step52ExitGOut,s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut],(shrinkRow 777 s6Step52ExitGExtra ++ (shrinkRow 795 s6Step52ExitFExtra ++ (shrinkRow 776 s6Step52ExitFvExtra ++ (shrinkRow 775 s6Step52ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step52ExitGvAfter [] []=some (s6Step52ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step52ExitGvBefore s6Step52ExitGvAfter s6Step52ExitGvAfter
    s6Step52ExitGvRow s6Step52ExitGvOut 38 [] [] [] []
    (shrinkRow 775 s6Step52ExitGvExtra) ([]) s6Step52ExitGv_Incoming s6Step52ExitGv_checked h4 s6Step52ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step52ExitFvBefore s6Step52ExitFvAfter s6Step52ExitGvAfter
    s6Step52ExitFvRow s6Step52ExitFvOut 39 [] [(s6Step52ExitGvRow,38)] [[]] [s6Step52ExitGvOut]
    (shrinkRow 776 s6Step52ExitFvExtra) ((shrinkRow 775 s6Step52ExitGvExtra ++ [])) s6Step52ExitFv_Incoming s6Step52ExitFv_checked h3 s6Step52ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step52ExitFBefore s6Step52ExitFAfter s6Step52ExitGvAfter
    s6Step52ExitFRow s6Step52ExitFOut 241 [] [(s6Step52ExitFvRow,39),(s6Step52ExitGvRow,38)] [[],[]] [s6Step52ExitFvOut,s6Step52ExitGvOut]
    (shrinkRow 795 s6Step52ExitFExtra) ((shrinkRow 776 s6Step52ExitFvExtra ++ (shrinkRow 775 s6Step52ExitGvExtra ++ []))) s6Step52ExitF_Incoming s6Step52ExitF_checked h2 s6Step52ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step52ExitGBefore s6Step52ExitGAfter s6Step52ExitGvAfter
    s6Step52ExitGRow s6Step52ExitGOut 241 [] [(s6Step52ExitFRow,241),(s6Step52ExitFvRow,39),(s6Step52ExitGvRow,38)] [[],[],[]] [s6Step52ExitFOut,s6Step52ExitFvOut,s6Step52ExitGvOut]
    (shrinkRow 777 s6Step52ExitGExtra) ((shrinkRow 795 s6Step52ExitFExtra ++ (shrinkRow 776 s6Step52ExitFvExtra ++ (shrinkRow 775 s6Step52ExitGvExtra ++ [])))) s6Step52ExitG_Incoming s6Step52ExitG_checked h1 s6Step52ExitG_Outgoing
  exact h0
theorem s6Step52ExitBank_checked : compileHmrBankResizeLog .exit s6Step52ExitGBefore ⟨s6Step52ExitFRow,s6Step52ExitGRow,s6Step52ExitFvRow,s6Step52ExitGvRow⟩ ⟨241,241,39,38⟩ [[],[],[],[]]=
    some (s6Step52ExitGvAfter,⟨s6Step52ExitFOut,s6Step52ExitGOut,s6Step52ExitFvOut,s6Step52ExitGvOut⟩,(shrinkRow 777 s6Step52ExitGExtra ++ (shrinkRow 795 s6Step52ExitFExtra ++ (shrinkRow 776 s6Step52ExitFvExtra ++ (shrinkRow 775 s6Step52ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step52ExitBank_rows]
  rfl
theorem s6Step53ExitBank_incomingDistinct : ([s6Step53ExitGRow,s6Step53ExitFRow,s6Step53ExitFvRow,s6Step53ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step53ExitBank_outgoingOwned : rowsOwned s6Step53ExitGvAfter [s6Step53ExitGOut,s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step53ExitGvAfter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53ExitG_Incoming : rowsOwned s6Step53ExitGBefore [s6Step53ExitGRow,s6Step53ExitFRow,s6Step53ExitFvRow,s6Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53ExitGRow,s6Step53ExitFRow,s6Step53ExitFvRow,s6Step53ExitGvRow] 0 s6Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53ExitG_Outgoing : rowsOwned s6Step53ExitGvAfter [s6Step53ExitGOut,s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut] :=
  hmrRows_owned_drop s6Step53ExitGvAfter [s6Step53ExitGOut,s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut] 0 s6Step53ExitBank_outgoingOwned
theorem s6Step53ExitF_Incoming : rowsOwned s6Step53ExitFBefore [s6Step53ExitFRow,s6Step53ExitFvRow,s6Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53ExitGRow,s6Step53ExitFRow,s6Step53ExitFvRow,s6Step53ExitGvRow] 1 s6Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53ExitF_Outgoing : rowsOwned s6Step53ExitGvAfter [s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut] :=
  hmrRows_owned_drop s6Step53ExitGvAfter [s6Step53ExitGOut,s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut] 1 s6Step53ExitBank_outgoingOwned
theorem s6Step53ExitFv_Incoming : rowsOwned s6Step53ExitFvBefore [s6Step53ExitFvRow,s6Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53ExitGRow,s6Step53ExitFRow,s6Step53ExitFvRow,s6Step53ExitGvRow] 2 s6Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53ExitFvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53ExitFv_Outgoing : rowsOwned s6Step53ExitGvAfter [s6Step53ExitFvOut,s6Step53ExitGvOut] :=
  hmrRows_owned_drop s6Step53ExitGvAfter [s6Step53ExitGOut,s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut] 2 s6Step53ExitBank_outgoingOwned
theorem s6Step53ExitGv_Incoming : rowsOwned s6Step53ExitGvBefore [s6Step53ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53ExitGRow,s6Step53ExitFRow,s6Step53ExitFvRow,s6Step53ExitGvRow] 3 s6Step53ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53ExitGvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53ExitGv_Outgoing : rowsOwned s6Step53ExitGvAfter [s6Step53ExitGvOut] :=
  hmrRows_owned_drop s6Step53ExitGvAfter [s6Step53ExitGOut,s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut] 3 s6Step53ExitBank_outgoingOwned
theorem s6Step53ExitBank_rows : planWindowRowsLog s6Step53ExitGBefore [(s6Step53ExitGRow,241),(s6Step53ExitFRow,241),(s6Step53ExitFvRow,40),(s6Step53ExitGvRow,39)] [[],[],[],[]]=
    some (s6Step53ExitGvAfter,[s6Step53ExitGOut,s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut],(shrinkRow 777 s6Step53ExitGExtra ++ (shrinkRow 795 s6Step53ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step53ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step53ExitGvAfter [] []=some (s6Step53ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step53ExitGvBefore s6Step53ExitGvAfter s6Step53ExitGvAfter
    s6Step53ExitGvRow s6Step53ExitGvOut 39 [] [] [] []
    (shrinkRow 775 s6Step53ExitGvExtra) ([]) s6Step53ExitGv_Incoming s6Step53ExitGv_checked h4 s6Step53ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step53ExitFvBefore s6Step53ExitFvAfter s6Step53ExitGvAfter
    s6Step53ExitFvRow s6Step53ExitFvOut 40 [] [(s6Step53ExitGvRow,39)] [[]] [s6Step53ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step53ExitGvExtra ++ [])) s6Step53ExitFv_Incoming s6Step53ExitFv_checked h3 s6Step53ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step53ExitFBefore s6Step53ExitFAfter s6Step53ExitGvAfter
    s6Step53ExitFRow s6Step53ExitFOut 241 [] [(s6Step53ExitFvRow,40),(s6Step53ExitGvRow,39)] [[],[]] [s6Step53ExitFvOut,s6Step53ExitGvOut]
    (shrinkRow 795 s6Step53ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step53ExitGvExtra ++ []))) s6Step53ExitF_Incoming s6Step53ExitF_checked h2 s6Step53ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step53ExitGBefore s6Step53ExitGAfter s6Step53ExitGvAfter
    s6Step53ExitGRow s6Step53ExitGOut 241 [] [(s6Step53ExitFRow,241),(s6Step53ExitFvRow,40),(s6Step53ExitGvRow,39)] [[],[],[]] [s6Step53ExitFOut,s6Step53ExitFvOut,s6Step53ExitGvOut]
    (shrinkRow 777 s6Step53ExitGExtra) ((shrinkRow 795 s6Step53ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step53ExitGvExtra ++ [])))) s6Step53ExitG_Incoming s6Step53ExitG_checked h1 s6Step53ExitG_Outgoing
  exact h0
theorem s6Step53ExitBank_checked : compileHmrBankResizeLog .exit s6Step53ExitGBefore ⟨s6Step53ExitFRow,s6Step53ExitGRow,s6Step53ExitFvRow,s6Step53ExitGvRow⟩ ⟨241,241,40,39⟩ [[],[],[],[]]=
    some (s6Step53ExitGvAfter,⟨s6Step53ExitFOut,s6Step53ExitGOut,s6Step53ExitFvOut,s6Step53ExitGvOut⟩,(shrinkRow 777 s6Step53ExitGExtra ++ (shrinkRow 795 s6Step53ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step53ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step53ExitBank_rows]
  rfl
theorem s6Step54ExitBank_incomingDistinct : ([s6Step54ExitGRow,s6Step54ExitFRow,s6Step54ExitFvRow,s6Step54ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step54ExitBank_outgoingOwned : rowsOwned s6Step54ExitGvAfter [s6Step54ExitGOut,s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step54ExitGvAfter (fun q => ([(0,240),(241,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54ExitG_Incoming : rowsOwned s6Step54ExitGBefore [s6Step54ExitGRow,s6Step54ExitFRow,s6Step54ExitFvRow,s6Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54ExitGRow,s6Step54ExitFRow,s6Step54ExitFvRow,s6Step54ExitGvRow] 0 s6Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54ExitG_Outgoing : rowsOwned s6Step54ExitGvAfter [s6Step54ExitGOut,s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut] :=
  hmrRows_owned_drop s6Step54ExitGvAfter [s6Step54ExitGOut,s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut] 0 s6Step54ExitBank_outgoingOwned
theorem s6Step54ExitF_Incoming : rowsOwned s6Step54ExitFBefore [s6Step54ExitFRow,s6Step54ExitFvRow,s6Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54ExitGRow,s6Step54ExitFRow,s6Step54ExitFvRow,s6Step54ExitGvRow] 1 s6Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54ExitFBefore (fun q => ([(0,240),(241,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54ExitF_Outgoing : rowsOwned s6Step54ExitGvAfter [s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut] :=
  hmrRows_owned_drop s6Step54ExitGvAfter [s6Step54ExitGOut,s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut] 1 s6Step54ExitBank_outgoingOwned
theorem s6Step54ExitFv_Incoming : rowsOwned s6Step54ExitFvBefore [s6Step54ExitFvRow,s6Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54ExitGRow,s6Step54ExitFRow,s6Step54ExitFvRow,s6Step54ExitGvRow] 2 s6Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54ExitFvBefore (fun q => ([(0,240),(241,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54ExitFv_Outgoing : rowsOwned s6Step54ExitGvAfter [s6Step54ExitFvOut,s6Step54ExitGvOut] :=
  hmrRows_owned_drop s6Step54ExitGvAfter [s6Step54ExitGOut,s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut] 2 s6Step54ExitBank_outgoingOwned
theorem s6Step54ExitGv_Incoming : rowsOwned s6Step54ExitGvBefore [s6Step54ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54ExitGRow,s6Step54ExitFRow,s6Step54ExitFvRow,s6Step54ExitGvRow] 3 s6Step54ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54ExitGvBefore (fun q => ([(0,240),(241,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54ExitGv_Outgoing : rowsOwned s6Step54ExitGvAfter [s6Step54ExitGvOut] :=
  hmrRows_owned_drop s6Step54ExitGvAfter [s6Step54ExitGOut,s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut] 3 s6Step54ExitBank_outgoingOwned
theorem s6Step54ExitBank_rows : planWindowRowsLog s6Step54ExitGBefore [(s6Step54ExitGRow,240),(s6Step54ExitFRow,241),(s6Step54ExitFvRow,41),(s6Step54ExitGvRow,40)] [[],[],[],[]]=
    some (s6Step54ExitGvAfter,[s6Step54ExitGOut,s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut],(shrinkRow 777 s6Step54ExitGExtra ++ (shrinkRow 795 s6Step54ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step54ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step54ExitGvAfter [] []=some (s6Step54ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step54ExitGvBefore s6Step54ExitGvAfter s6Step54ExitGvAfter
    s6Step54ExitGvRow s6Step54ExitGvOut 40 [] [] [] []
    (shrinkRow 775 s6Step54ExitGvExtra) ([]) s6Step54ExitGv_Incoming s6Step54ExitGv_checked h4 s6Step54ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step54ExitFvBefore s6Step54ExitFvAfter s6Step54ExitGvAfter
    s6Step54ExitFvRow s6Step54ExitFvOut 41 [] [(s6Step54ExitGvRow,40)] [[]] [s6Step54ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step54ExitGvExtra ++ [])) s6Step54ExitFv_Incoming s6Step54ExitFv_checked h3 s6Step54ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step54ExitFBefore s6Step54ExitFAfter s6Step54ExitGvAfter
    s6Step54ExitFRow s6Step54ExitFOut 241 [] [(s6Step54ExitFvRow,41),(s6Step54ExitGvRow,40)] [[],[]] [s6Step54ExitFvOut,s6Step54ExitGvOut]
    (shrinkRow 795 s6Step54ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step54ExitGvExtra ++ []))) s6Step54ExitF_Incoming s6Step54ExitF_checked h2 s6Step54ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step54ExitGBefore s6Step54ExitGAfter s6Step54ExitGvAfter
    s6Step54ExitGRow s6Step54ExitGOut 240 [] [(s6Step54ExitFRow,241),(s6Step54ExitFvRow,41),(s6Step54ExitGvRow,40)] [[],[],[]] [s6Step54ExitFOut,s6Step54ExitFvOut,s6Step54ExitGvOut]
    (shrinkRow 777 s6Step54ExitGExtra) ((shrinkRow 795 s6Step54ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step54ExitGvExtra ++ [])))) s6Step54ExitG_Incoming s6Step54ExitG_checked h1 s6Step54ExitG_Outgoing
  exact h0
theorem s6Step54ExitBank_checked : compileHmrBankResizeLog .exit s6Step54ExitGBefore ⟨s6Step54ExitFRow,s6Step54ExitGRow,s6Step54ExitFvRow,s6Step54ExitGvRow⟩ ⟨241,240,41,40⟩ [[],[],[],[]]=
    some (s6Step54ExitGvAfter,⟨s6Step54ExitFOut,s6Step54ExitGOut,s6Step54ExitFvOut,s6Step54ExitGvOut⟩,(shrinkRow 777 s6Step54ExitGExtra ++ (shrinkRow 795 s6Step54ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step54ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step54ExitBank_rows]
  rfl
theorem s6Step55ExitBank_incomingDistinct : ([s6Step55ExitGRow,s6Step55ExitFRow,s6Step55ExitFvRow,s6Step55ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step55ExitBank_outgoingOwned : rowsOwned s6Step55ExitGvAfter [s6Step55ExitGOut,s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step55ExitGvAfter (fun q => ([(0,496),(497,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55ExitG_Incoming : rowsOwned s6Step55ExitGBefore [s6Step55ExitGRow,s6Step55ExitFRow,s6Step55ExitFvRow,s6Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55ExitGRow,s6Step55ExitFRow,s6Step55ExitFvRow,s6Step55ExitGvRow] 0 s6Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55ExitG_Outgoing : rowsOwned s6Step55ExitGvAfter [s6Step55ExitGOut,s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut] :=
  hmrRows_owned_drop s6Step55ExitGvAfter [s6Step55ExitGOut,s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut] 0 s6Step55ExitBank_outgoingOwned
theorem s6Step55ExitF_Incoming : rowsOwned s6Step55ExitFBefore [s6Step55ExitFRow,s6Step55ExitFvRow,s6Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55ExitGRow,s6Step55ExitFRow,s6Step55ExitFvRow,s6Step55ExitGvRow] 1 s6Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55ExitF_Outgoing : rowsOwned s6Step55ExitGvAfter [s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut] :=
  hmrRows_owned_drop s6Step55ExitGvAfter [s6Step55ExitGOut,s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut] 1 s6Step55ExitBank_outgoingOwned
theorem s6Step55ExitFv_Incoming : rowsOwned s6Step55ExitFvBefore [s6Step55ExitFvRow,s6Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55ExitGRow,s6Step55ExitFRow,s6Step55ExitFvRow,s6Step55ExitGvRow] 2 s6Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55ExitFvBefore (fun q => ([(0,496),(497,782),(785,787),(788,789),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55ExitFv_Outgoing : rowsOwned s6Step55ExitGvAfter [s6Step55ExitFvOut,s6Step55ExitGvOut] :=
  hmrRows_owned_drop s6Step55ExitGvAfter [s6Step55ExitGOut,s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut] 2 s6Step55ExitBank_outgoingOwned
theorem s6Step55ExitGv_Incoming : rowsOwned s6Step55ExitGvBefore [s6Step55ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55ExitGRow,s6Step55ExitFRow,s6Step55ExitFvRow,s6Step55ExitGvRow] 3 s6Step55ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55ExitGvBefore (fun q => ([(0,496),(497,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55ExitGv_Outgoing : rowsOwned s6Step55ExitGvAfter [s6Step55ExitGvOut] :=
  hmrRows_owned_drop s6Step55ExitGvAfter [s6Step55ExitGOut,s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut] 3 s6Step55ExitBank_outgoingOwned
theorem s6Step55ExitBank_rows : planWindowRowsLog s6Step55ExitGBefore [(s6Step55ExitGRow,240),(s6Step55ExitFRow,240),(s6Step55ExitFvRow,40),(s6Step55ExitGvRow,41)] [[],[],[],[]]=
    some (s6Step55ExitGvAfter,[s6Step55ExitGOut,s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut],(shrinkRow 777 s6Step55ExitGExtra ++ (shrinkRow 795 s6Step55ExitFExtra ++ (shrinkRow 776 s6Step55ExitFvExtra ++ (shrinkRow 775 s6Step55ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step55ExitGvAfter [] []=some (s6Step55ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step55ExitGvBefore s6Step55ExitGvAfter s6Step55ExitGvAfter
    s6Step55ExitGvRow s6Step55ExitGvOut 41 [] [] [] []
    (shrinkRow 775 s6Step55ExitGvExtra) ([]) s6Step55ExitGv_Incoming s6Step55ExitGv_checked h4 s6Step55ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step55ExitFvBefore s6Step55ExitFvAfter s6Step55ExitGvAfter
    s6Step55ExitFvRow s6Step55ExitFvOut 40 [] [(s6Step55ExitGvRow,41)] [[]] [s6Step55ExitGvOut]
    (shrinkRow 776 s6Step55ExitFvExtra) ((shrinkRow 775 s6Step55ExitGvExtra ++ [])) s6Step55ExitFv_Incoming s6Step55ExitFv_checked h3 s6Step55ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step55ExitFBefore s6Step55ExitFAfter s6Step55ExitGvAfter
    s6Step55ExitFRow s6Step55ExitFOut 240 [] [(s6Step55ExitFvRow,40),(s6Step55ExitGvRow,41)] [[],[]] [s6Step55ExitFvOut,s6Step55ExitGvOut]
    (shrinkRow 795 s6Step55ExitFExtra) ((shrinkRow 776 s6Step55ExitFvExtra ++ (shrinkRow 775 s6Step55ExitGvExtra ++ []))) s6Step55ExitF_Incoming s6Step55ExitF_checked h2 s6Step55ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step55ExitGBefore s6Step55ExitGAfter s6Step55ExitGvAfter
    s6Step55ExitGRow s6Step55ExitGOut 240 [] [(s6Step55ExitFRow,240),(s6Step55ExitFvRow,40),(s6Step55ExitGvRow,41)] [[],[],[]] [s6Step55ExitFOut,s6Step55ExitFvOut,s6Step55ExitGvOut]
    (shrinkRow 777 s6Step55ExitGExtra) ((shrinkRow 795 s6Step55ExitFExtra ++ (shrinkRow 776 s6Step55ExitFvExtra ++ (shrinkRow 775 s6Step55ExitGvExtra ++ [])))) s6Step55ExitG_Incoming s6Step55ExitG_checked h1 s6Step55ExitG_Outgoing
  exact h0
theorem s6Step55ExitBank_checked : compileHmrBankResizeLog .exit s6Step55ExitGBefore ⟨s6Step55ExitFRow,s6Step55ExitGRow,s6Step55ExitFvRow,s6Step55ExitGvRow⟩ ⟨240,240,40,41⟩ [[],[],[],[]]=
    some (s6Step55ExitGvAfter,⟨s6Step55ExitFOut,s6Step55ExitGOut,s6Step55ExitFvOut,s6Step55ExitGvOut⟩,(shrinkRow 777 s6Step55ExitGExtra ++ (shrinkRow 795 s6Step55ExitFExtra ++ (shrinkRow 776 s6Step55ExitFvExtra ++ (shrinkRow 775 s6Step55ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step55ExitBank_rows]
  rfl
theorem s6Step56ExitBank_incomingDistinct : ([s6Step56ExitGRow,s6Step56ExitFRow,s6Step56ExitFvRow,s6Step56ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step56ExitBank_outgoingOwned : rowsOwned s6Step56ExitGvAfter [s6Step56ExitGOut,s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step56ExitGvAfter (fun q => ([(0,239),(240,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56ExitG_Incoming : rowsOwned s6Step56ExitGBefore [s6Step56ExitGRow,s6Step56ExitFRow,s6Step56ExitFvRow,s6Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56ExitGRow,s6Step56ExitFRow,s6Step56ExitFvRow,s6Step56ExitGvRow] 0 s6Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56ExitG_Outgoing : rowsOwned s6Step56ExitGvAfter [s6Step56ExitGOut,s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut] :=
  hmrRows_owned_drop s6Step56ExitGvAfter [s6Step56ExitGOut,s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut] 0 s6Step56ExitBank_outgoingOwned
theorem s6Step56ExitF_Incoming : rowsOwned s6Step56ExitFBefore [s6Step56ExitFRow,s6Step56ExitFvRow,s6Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56ExitGRow,s6Step56ExitFRow,s6Step56ExitFvRow,s6Step56ExitGvRow] 1 s6Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56ExitFBefore (fun q => ([(0,239),(240,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56ExitF_Outgoing : rowsOwned s6Step56ExitGvAfter [s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut] :=
  hmrRows_owned_drop s6Step56ExitGvAfter [s6Step56ExitGOut,s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut] 1 s6Step56ExitBank_outgoingOwned
theorem s6Step56ExitFv_Incoming : rowsOwned s6Step56ExitFvBefore [s6Step56ExitFvRow,s6Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56ExitGRow,s6Step56ExitFRow,s6Step56ExitFvRow,s6Step56ExitGvRow] 2 s6Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56ExitFvBefore (fun q => ([(0,239),(240,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56ExitFv_Outgoing : rowsOwned s6Step56ExitGvAfter [s6Step56ExitFvOut,s6Step56ExitGvOut] :=
  hmrRows_owned_drop s6Step56ExitGvAfter [s6Step56ExitGOut,s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut] 2 s6Step56ExitBank_outgoingOwned
theorem s6Step56ExitGv_Incoming : rowsOwned s6Step56ExitGvBefore [s6Step56ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56ExitGRow,s6Step56ExitFRow,s6Step56ExitFvRow,s6Step56ExitGvRow] 3 s6Step56ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56ExitGvBefore (fun q => ([(0,239),(240,782),(785,787),(788,789),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56ExitGv_Outgoing : rowsOwned s6Step56ExitGvAfter [s6Step56ExitGvOut] :=
  hmrRows_owned_drop s6Step56ExitGvAfter [s6Step56ExitGOut,s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut] 3 s6Step56ExitBank_outgoingOwned
theorem s6Step56ExitBank_rows : planWindowRowsLog s6Step56ExitGBefore [(s6Step56ExitGRow,239),(s6Step56ExitFRow,240),(s6Step56ExitFvRow,41),(s6Step56ExitGvRow,41)] [[],[],[],[]]=
    some (s6Step56ExitGvAfter,[s6Step56ExitGOut,s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut],(shrinkRow 777 s6Step56ExitGExtra ++ (shrinkRow 795 s6Step56ExitFExtra ++ (shrinkRow 776 s6Step56ExitFvExtra ++ (shrinkRow 775 s6Step56ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step56ExitGvAfter [] []=some (s6Step56ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step56ExitGvBefore s6Step56ExitGvAfter s6Step56ExitGvAfter
    s6Step56ExitGvRow s6Step56ExitGvOut 41 [] [] [] []
    (shrinkRow 775 s6Step56ExitGvExtra) ([]) s6Step56ExitGv_Incoming s6Step56ExitGv_checked h4 s6Step56ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step56ExitFvBefore s6Step56ExitFvAfter s6Step56ExitGvAfter
    s6Step56ExitFvRow s6Step56ExitFvOut 41 [] [(s6Step56ExitGvRow,41)] [[]] [s6Step56ExitGvOut]
    (shrinkRow 776 s6Step56ExitFvExtra) ((shrinkRow 775 s6Step56ExitGvExtra ++ [])) s6Step56ExitFv_Incoming s6Step56ExitFv_checked h3 s6Step56ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step56ExitFBefore s6Step56ExitFAfter s6Step56ExitGvAfter
    s6Step56ExitFRow s6Step56ExitFOut 240 [] [(s6Step56ExitFvRow,41),(s6Step56ExitGvRow,41)] [[],[]] [s6Step56ExitFvOut,s6Step56ExitGvOut]
    (shrinkRow 795 s6Step56ExitFExtra) ((shrinkRow 776 s6Step56ExitFvExtra ++ (shrinkRow 775 s6Step56ExitGvExtra ++ []))) s6Step56ExitF_Incoming s6Step56ExitF_checked h2 s6Step56ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step56ExitGBefore s6Step56ExitGAfter s6Step56ExitGvAfter
    s6Step56ExitGRow s6Step56ExitGOut 239 [] [(s6Step56ExitFRow,240),(s6Step56ExitFvRow,41),(s6Step56ExitGvRow,41)] [[],[],[]] [s6Step56ExitFOut,s6Step56ExitFvOut,s6Step56ExitGvOut]
    (shrinkRow 777 s6Step56ExitGExtra) ((shrinkRow 795 s6Step56ExitFExtra ++ (shrinkRow 776 s6Step56ExitFvExtra ++ (shrinkRow 775 s6Step56ExitGvExtra ++ [])))) s6Step56ExitG_Incoming s6Step56ExitG_checked h1 s6Step56ExitG_Outgoing
  exact h0
theorem s6Step56ExitBank_checked : compileHmrBankResizeLog .exit s6Step56ExitGBefore ⟨s6Step56ExitFRow,s6Step56ExitGRow,s6Step56ExitFvRow,s6Step56ExitGvRow⟩ ⟨240,239,41,41⟩ [[],[],[],[]]=
    some (s6Step56ExitGvAfter,⟨s6Step56ExitFOut,s6Step56ExitGOut,s6Step56ExitFvOut,s6Step56ExitGvOut⟩,(shrinkRow 777 s6Step56ExitGExtra ++ (shrinkRow 795 s6Step56ExitFExtra ++ (shrinkRow 776 s6Step56ExitFvExtra ++ (shrinkRow 775 s6Step56ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step56ExitBank_rows]
  rfl
theorem s6Step57ExitBank_incomingDistinct : ([s6Step57ExitGRow,s6Step57ExitFRow,s6Step57ExitFvRow,s6Step57ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step57ExitBank_outgoingOwned : rowsOwned s6Step57ExitGvAfter [s6Step57ExitGOut,s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step57ExitGvAfter (fun q => ([(0,238),(239,495),(496,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57ExitG_Incoming : rowsOwned s6Step57ExitGBefore [s6Step57ExitGRow,s6Step57ExitFRow,s6Step57ExitFvRow,s6Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57ExitGRow,s6Step57ExitFRow,s6Step57ExitFvRow,s6Step57ExitGvRow] 0 s6Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57ExitG_Outgoing : rowsOwned s6Step57ExitGvAfter [s6Step57ExitGOut,s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut] :=
  hmrRows_owned_drop s6Step57ExitGvAfter [s6Step57ExitGOut,s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut] 0 s6Step57ExitBank_outgoingOwned
theorem s6Step57ExitF_Incoming : rowsOwned s6Step57ExitFBefore [s6Step57ExitFRow,s6Step57ExitFvRow,s6Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57ExitGRow,s6Step57ExitFRow,s6Step57ExitFvRow,s6Step57ExitGvRow] 1 s6Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57ExitFBefore (fun q => ([(0,238),(239,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57ExitF_Outgoing : rowsOwned s6Step57ExitGvAfter [s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut] :=
  hmrRows_owned_drop s6Step57ExitGvAfter [s6Step57ExitGOut,s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut] 1 s6Step57ExitBank_outgoingOwned
theorem s6Step57ExitFv_Incoming : rowsOwned s6Step57ExitFvBefore [s6Step57ExitFvRow,s6Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57ExitGRow,s6Step57ExitFRow,s6Step57ExitFvRow,s6Step57ExitGvRow] 2 s6Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57ExitFvBefore (fun q => ([(0,238),(239,495),(496,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57ExitFv_Outgoing : rowsOwned s6Step57ExitGvAfter [s6Step57ExitFvOut,s6Step57ExitGvOut] :=
  hmrRows_owned_drop s6Step57ExitGvAfter [s6Step57ExitGOut,s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut] 2 s6Step57ExitBank_outgoingOwned
theorem s6Step57ExitGv_Incoming : rowsOwned s6Step57ExitGvBefore [s6Step57ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57ExitGRow,s6Step57ExitFRow,s6Step57ExitFvRow,s6Step57ExitGvRow] 3 s6Step57ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57ExitGvBefore (fun q => ([(0,238),(239,495),(496,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57ExitGv_Outgoing : rowsOwned s6Step57ExitGvAfter [s6Step57ExitGvOut] :=
  hmrRows_owned_drop s6Step57ExitGvAfter [s6Step57ExitGOut,s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut] 3 s6Step57ExitBank_outgoingOwned
theorem s6Step57ExitBank_rows : planWindowRowsLog s6Step57ExitGBefore [(s6Step57ExitGRow,238),(s6Step57ExitFRow,239),(s6Step57ExitFvRow,41),(s6Step57ExitGvRow,41)] [[],[],[],[]]=
    some (s6Step57ExitGvAfter,[s6Step57ExitGOut,s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut],(shrinkRow 777 s6Step57ExitGExtra ++ (shrinkRow 795 s6Step57ExitFExtra ++ (shrinkRow 776 s6Step57ExitFvExtra ++ (shrinkRow 775 s6Step57ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step57ExitGvAfter [] []=some (s6Step57ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step57ExitGvBefore s6Step57ExitGvAfter s6Step57ExitGvAfter
    s6Step57ExitGvRow s6Step57ExitGvOut 41 [] [] [] []
    (shrinkRow 775 s6Step57ExitGvExtra) ([]) s6Step57ExitGv_Incoming s6Step57ExitGv_checked h4 s6Step57ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step57ExitFvBefore s6Step57ExitFvAfter s6Step57ExitGvAfter
    s6Step57ExitFvRow s6Step57ExitFvOut 41 [] [(s6Step57ExitGvRow,41)] [[]] [s6Step57ExitGvOut]
    (shrinkRow 776 s6Step57ExitFvExtra) ((shrinkRow 775 s6Step57ExitGvExtra ++ [])) s6Step57ExitFv_Incoming s6Step57ExitFv_checked h3 s6Step57ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step57ExitFBefore s6Step57ExitFAfter s6Step57ExitGvAfter
    s6Step57ExitFRow s6Step57ExitFOut 239 [] [(s6Step57ExitFvRow,41),(s6Step57ExitGvRow,41)] [[],[]] [s6Step57ExitFvOut,s6Step57ExitGvOut]
    (shrinkRow 795 s6Step57ExitFExtra) ((shrinkRow 776 s6Step57ExitFvExtra ++ (shrinkRow 775 s6Step57ExitGvExtra ++ []))) s6Step57ExitF_Incoming s6Step57ExitF_checked h2 s6Step57ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step57ExitGBefore s6Step57ExitGAfter s6Step57ExitGvAfter
    s6Step57ExitGRow s6Step57ExitGOut 238 [] [(s6Step57ExitFRow,239),(s6Step57ExitFvRow,41),(s6Step57ExitGvRow,41)] [[],[],[]] [s6Step57ExitFOut,s6Step57ExitFvOut,s6Step57ExitGvOut]
    (shrinkRow 777 s6Step57ExitGExtra) ((shrinkRow 795 s6Step57ExitFExtra ++ (shrinkRow 776 s6Step57ExitFvExtra ++ (shrinkRow 775 s6Step57ExitGvExtra ++ [])))) s6Step57ExitG_Incoming s6Step57ExitG_checked h1 s6Step57ExitG_Outgoing
  exact h0
theorem s6Step57ExitBank_checked : compileHmrBankResizeLog .exit s6Step57ExitGBefore ⟨s6Step57ExitFRow,s6Step57ExitGRow,s6Step57ExitFvRow,s6Step57ExitGvRow⟩ ⟨239,238,41,41⟩ [[],[],[],[]]=
    some (s6Step57ExitGvAfter,⟨s6Step57ExitFOut,s6Step57ExitGOut,s6Step57ExitFvOut,s6Step57ExitGvOut⟩,(shrinkRow 777 s6Step57ExitGExtra ++ (shrinkRow 795 s6Step57ExitFExtra ++ (shrinkRow 776 s6Step57ExitFvExtra ++ (shrinkRow 775 s6Step57ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step57ExitBank_rows]
  rfl
theorem s6Step58ExitBank_incomingDistinct : ([s6Step58ExitGRow,s6Step58ExitFRow,s6Step58ExitFvRow,s6Step58ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step58ExitBank_outgoingOwned : rowsOwned s6Step58ExitGvAfter [s6Step58ExitGOut,s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step58ExitGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58ExitG_Incoming : rowsOwned s6Step58ExitGBefore [s6Step58ExitGRow,s6Step58ExitFRow,s6Step58ExitFvRow,s6Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58ExitGRow,s6Step58ExitFRow,s6Step58ExitFvRow,s6Step58ExitGvRow] 0 s6Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58ExitG_Outgoing : rowsOwned s6Step58ExitGvAfter [s6Step58ExitGOut,s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut] :=
  hmrRows_owned_drop s6Step58ExitGvAfter [s6Step58ExitGOut,s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut] 0 s6Step58ExitBank_outgoingOwned
theorem s6Step58ExitF_Incoming : rowsOwned s6Step58ExitFBefore [s6Step58ExitFRow,s6Step58ExitFvRow,s6Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58ExitGRow,s6Step58ExitFRow,s6Step58ExitFvRow,s6Step58ExitGvRow] 1 s6Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58ExitF_Outgoing : rowsOwned s6Step58ExitGvAfter [s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut] :=
  hmrRows_owned_drop s6Step58ExitGvAfter [s6Step58ExitGOut,s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut] 1 s6Step58ExitBank_outgoingOwned
theorem s6Step58ExitFv_Incoming : rowsOwned s6Step58ExitFvBefore [s6Step58ExitFvRow,s6Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58ExitGRow,s6Step58ExitFRow,s6Step58ExitFvRow,s6Step58ExitGvRow] 2 s6Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58ExitFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58ExitFv_Outgoing : rowsOwned s6Step58ExitGvAfter [s6Step58ExitFvOut,s6Step58ExitGvOut] :=
  hmrRows_owned_drop s6Step58ExitGvAfter [s6Step58ExitGOut,s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut] 2 s6Step58ExitBank_outgoingOwned
theorem s6Step58ExitGv_Incoming : rowsOwned s6Step58ExitGvBefore [s6Step58ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58ExitGRow,s6Step58ExitFRow,s6Step58ExitFvRow,s6Step58ExitGvRow] 3 s6Step58ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58ExitGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58ExitGv_Outgoing : rowsOwned s6Step58ExitGvAfter [s6Step58ExitGvOut] :=
  hmrRows_owned_drop s6Step58ExitGvAfter [s6Step58ExitGOut,s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut] 3 s6Step58ExitBank_outgoingOwned
theorem s6Step58ExitBank_rows : planWindowRowsLog s6Step58ExitGBefore [(s6Step58ExitGRow,238),(s6Step58ExitFRow,239),(s6Step58ExitFvRow,42),(s6Step58ExitGvRow,41)] [[],[],[],[]]=
    some (s6Step58ExitGvAfter,[s6Step58ExitGOut,s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut],(shrinkRow 777 s6Step58ExitGExtra ++ (shrinkRow 795 s6Step58ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step58ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step58ExitGvAfter [] []=some (s6Step58ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step58ExitGvBefore s6Step58ExitGvAfter s6Step58ExitGvAfter
    s6Step58ExitGvRow s6Step58ExitGvOut 41 [] [] [] []
    (shrinkRow 775 s6Step58ExitGvExtra) ([]) s6Step58ExitGv_Incoming s6Step58ExitGv_checked h4 s6Step58ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step58ExitFvBefore s6Step58ExitFvAfter s6Step58ExitGvAfter
    s6Step58ExitFvRow s6Step58ExitFvOut 42 [] [(s6Step58ExitGvRow,41)] [[]] [s6Step58ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step58ExitGvExtra ++ [])) s6Step58ExitFv_Incoming s6Step58ExitFv_checked h3 s6Step58ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step58ExitFBefore s6Step58ExitFAfter s6Step58ExitGvAfter
    s6Step58ExitFRow s6Step58ExitFOut 239 [] [(s6Step58ExitFvRow,42),(s6Step58ExitGvRow,41)] [[],[]] [s6Step58ExitFvOut,s6Step58ExitGvOut]
    (shrinkRow 795 s6Step58ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step58ExitGvExtra ++ []))) s6Step58ExitF_Incoming s6Step58ExitF_checked h2 s6Step58ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step58ExitGBefore s6Step58ExitGAfter s6Step58ExitGvAfter
    s6Step58ExitGRow s6Step58ExitGOut 238 [] [(s6Step58ExitFRow,239),(s6Step58ExitFvRow,42),(s6Step58ExitGvRow,41)] [[],[],[]] [s6Step58ExitFOut,s6Step58ExitFvOut,s6Step58ExitGvOut]
    (shrinkRow 777 s6Step58ExitGExtra) ((shrinkRow 795 s6Step58ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step58ExitGvExtra ++ [])))) s6Step58ExitG_Incoming s6Step58ExitG_checked h1 s6Step58ExitG_Outgoing
  exact h0
theorem s6Step58ExitBank_checked : compileHmrBankResizeLog .exit s6Step58ExitGBefore ⟨s6Step58ExitFRow,s6Step58ExitGRow,s6Step58ExitFvRow,s6Step58ExitGvRow⟩ ⟨239,238,42,41⟩ [[],[],[],[]]=
    some (s6Step58ExitGvAfter,⟨s6Step58ExitFOut,s6Step58ExitGOut,s6Step58ExitFvOut,s6Step58ExitGvOut⟩,(shrinkRow 777 s6Step58ExitGExtra ++ (shrinkRow 795 s6Step58ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step58ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step58ExitBank_rows]
  rfl
theorem s6Step59ExitBank_incomingDistinct : ([s6Step59ExitGRow,s6Step59ExitFRow,s6Step59ExitFvRow,s6Step59ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step59ExitBank_outgoingOwned : rowsOwned s6Step59ExitGvAfter [s6Step59ExitGOut,s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step59ExitGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59ExitG_Incoming : rowsOwned s6Step59ExitGBefore [s6Step59ExitGRow,s6Step59ExitFRow,s6Step59ExitFvRow,s6Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59ExitGRow,s6Step59ExitFRow,s6Step59ExitFvRow,s6Step59ExitGvRow] 0 s6Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59ExitG_Outgoing : rowsOwned s6Step59ExitGvAfter [s6Step59ExitGOut,s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut] :=
  hmrRows_owned_drop s6Step59ExitGvAfter [s6Step59ExitGOut,s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut] 0 s6Step59ExitBank_outgoingOwned
theorem s6Step59ExitF_Incoming : rowsOwned s6Step59ExitFBefore [s6Step59ExitFRow,s6Step59ExitFvRow,s6Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59ExitGRow,s6Step59ExitFRow,s6Step59ExitFvRow,s6Step59ExitGvRow] 1 s6Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59ExitFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59ExitF_Outgoing : rowsOwned s6Step59ExitGvAfter [s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut] :=
  hmrRows_owned_drop s6Step59ExitGvAfter [s6Step59ExitGOut,s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut] 1 s6Step59ExitBank_outgoingOwned
theorem s6Step59ExitFv_Incoming : rowsOwned s6Step59ExitFvBefore [s6Step59ExitFvRow,s6Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59ExitGRow,s6Step59ExitFRow,s6Step59ExitFvRow,s6Step59ExitGvRow] 2 s6Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59ExitFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59ExitFv_Outgoing : rowsOwned s6Step59ExitGvAfter [s6Step59ExitFvOut,s6Step59ExitGvOut] :=
  hmrRows_owned_drop s6Step59ExitGvAfter [s6Step59ExitGOut,s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut] 2 s6Step59ExitBank_outgoingOwned
theorem s6Step59ExitGv_Incoming : rowsOwned s6Step59ExitGvBefore [s6Step59ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59ExitGRow,s6Step59ExitFRow,s6Step59ExitFvRow,s6Step59ExitGvRow] 3 s6Step59ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59ExitGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59ExitGv_Outgoing : rowsOwned s6Step59ExitGvAfter [s6Step59ExitGvOut] :=
  hmrRows_owned_drop s6Step59ExitGvAfter [s6Step59ExitGOut,s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut] 3 s6Step59ExitBank_outgoingOwned
theorem s6Step59ExitBank_rows : planWindowRowsLog s6Step59ExitGBefore [(s6Step59ExitGRow,238),(s6Step59ExitFRow,239),(s6Step59ExitFvRow,43),(s6Step59ExitGvRow,42)] [[],[],[],[]]=
    some (s6Step59ExitGvAfter,[s6Step59ExitGOut,s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut],(shrinkRow 777 s6Step59ExitGExtra ++ (shrinkRow 795 s6Step59ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step59ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step59ExitGvAfter [] []=some (s6Step59ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step59ExitGvBefore s6Step59ExitGvAfter s6Step59ExitGvAfter
    s6Step59ExitGvRow s6Step59ExitGvOut 42 [] [] [] []
    (shrinkRow 775 s6Step59ExitGvExtra) ([]) s6Step59ExitGv_Incoming s6Step59ExitGv_checked h4 s6Step59ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step59ExitFvBefore s6Step59ExitFvAfter s6Step59ExitGvAfter
    s6Step59ExitFvRow s6Step59ExitFvOut 43 [] [(s6Step59ExitGvRow,42)] [[]] [s6Step59ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step59ExitGvExtra ++ [])) s6Step59ExitFv_Incoming s6Step59ExitFv_checked h3 s6Step59ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step59ExitFBefore s6Step59ExitFAfter s6Step59ExitGvAfter
    s6Step59ExitFRow s6Step59ExitFOut 239 [] [(s6Step59ExitFvRow,43),(s6Step59ExitGvRow,42)] [[],[]] [s6Step59ExitFvOut,s6Step59ExitGvOut]
    (shrinkRow 795 s6Step59ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step59ExitGvExtra ++ []))) s6Step59ExitF_Incoming s6Step59ExitF_checked h2 s6Step59ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step59ExitGBefore s6Step59ExitGAfter s6Step59ExitGvAfter
    s6Step59ExitGRow s6Step59ExitGOut 238 [] [(s6Step59ExitFRow,239),(s6Step59ExitFvRow,43),(s6Step59ExitGvRow,42)] [[],[],[]] [s6Step59ExitFOut,s6Step59ExitFvOut,s6Step59ExitGvOut]
    (shrinkRow 777 s6Step59ExitGExtra) ((shrinkRow 795 s6Step59ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step59ExitGvExtra ++ [])))) s6Step59ExitG_Incoming s6Step59ExitG_checked h1 s6Step59ExitG_Outgoing
  exact h0
theorem s6Step59ExitBank_checked : compileHmrBankResizeLog .exit s6Step59ExitGBefore ⟨s6Step59ExitFRow,s6Step59ExitGRow,s6Step59ExitFvRow,s6Step59ExitGvRow⟩ ⟨239,238,43,42⟩ [[],[],[],[]]=
    some (s6Step59ExitGvAfter,⟨s6Step59ExitFOut,s6Step59ExitGOut,s6Step59ExitFvOut,s6Step59ExitGvOut⟩,(shrinkRow 777 s6Step59ExitGExtra ++ (shrinkRow 795 s6Step59ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step59ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step59ExitBank_rows]
  rfl
theorem s6Step60ExitBank_incomingDistinct : ([s6Step60ExitGRow,s6Step60ExitFRow,s6Step60ExitFvRow,s6Step60ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step60ExitBank_outgoingOwned : rowsOwned s6Step60ExitGvAfter [s6Step60ExitGOut,s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step60ExitGvAfter (fun q => ([(0,237),(238,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60ExitG_Incoming : rowsOwned s6Step60ExitGBefore [s6Step60ExitGRow,s6Step60ExitFRow,s6Step60ExitFvRow,s6Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60ExitGRow,s6Step60ExitFRow,s6Step60ExitFvRow,s6Step60ExitGvRow] 0 s6Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60ExitG_Outgoing : rowsOwned s6Step60ExitGvAfter [s6Step60ExitGOut,s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut] :=
  hmrRows_owned_drop s6Step60ExitGvAfter [s6Step60ExitGOut,s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut] 0 s6Step60ExitBank_outgoingOwned
theorem s6Step60ExitF_Incoming : rowsOwned s6Step60ExitFBefore [s6Step60ExitFRow,s6Step60ExitFvRow,s6Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60ExitGRow,s6Step60ExitFRow,s6Step60ExitFvRow,s6Step60ExitGvRow] 1 s6Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60ExitFBefore (fun q => ([(0,237),(238,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60ExitF_Outgoing : rowsOwned s6Step60ExitGvAfter [s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut] :=
  hmrRows_owned_drop s6Step60ExitGvAfter [s6Step60ExitGOut,s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut] 1 s6Step60ExitBank_outgoingOwned
theorem s6Step60ExitFv_Incoming : rowsOwned s6Step60ExitFvBefore [s6Step60ExitFvRow,s6Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60ExitGRow,s6Step60ExitFRow,s6Step60ExitFvRow,s6Step60ExitGvRow] 2 s6Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60ExitFvBefore (fun q => ([(0,237),(238,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60ExitFv_Outgoing : rowsOwned s6Step60ExitGvAfter [s6Step60ExitFvOut,s6Step60ExitGvOut] :=
  hmrRows_owned_drop s6Step60ExitGvAfter [s6Step60ExitGOut,s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut] 2 s6Step60ExitBank_outgoingOwned
theorem s6Step60ExitGv_Incoming : rowsOwned s6Step60ExitGvBefore [s6Step60ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60ExitGRow,s6Step60ExitFRow,s6Step60ExitFvRow,s6Step60ExitGvRow] 3 s6Step60ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60ExitGvBefore (fun q => ([(0,237),(238,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60ExitGv_Outgoing : rowsOwned s6Step60ExitGvAfter [s6Step60ExitGvOut] :=
  hmrRows_owned_drop s6Step60ExitGvAfter [s6Step60ExitGOut,s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut] 3 s6Step60ExitBank_outgoingOwned
theorem s6Step60ExitBank_rows : planWindowRowsLog s6Step60ExitGBefore [(s6Step60ExitGRow,237),(s6Step60ExitFRow,239),(s6Step60ExitFvRow,44),(s6Step60ExitGvRow,43)] [[],[],[],[]]=
    some (s6Step60ExitGvAfter,[s6Step60ExitGOut,s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut],(shrinkRow 777 s6Step60ExitGExtra ++ (shrinkRow 795 s6Step60ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step60ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step60ExitGvAfter [] []=some (s6Step60ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step60ExitGvBefore s6Step60ExitGvAfter s6Step60ExitGvAfter
    s6Step60ExitGvRow s6Step60ExitGvOut 43 [] [] [] []
    (shrinkRow 775 s6Step60ExitGvExtra) ([]) s6Step60ExitGv_Incoming s6Step60ExitGv_checked h4 s6Step60ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step60ExitFvBefore s6Step60ExitFvAfter s6Step60ExitGvAfter
    s6Step60ExitFvRow s6Step60ExitFvOut 44 [] [(s6Step60ExitGvRow,43)] [[]] [s6Step60ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step60ExitGvExtra ++ [])) s6Step60ExitFv_Incoming s6Step60ExitFv_checked h3 s6Step60ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step60ExitFBefore s6Step60ExitFAfter s6Step60ExitGvAfter
    s6Step60ExitFRow s6Step60ExitFOut 239 [] [(s6Step60ExitFvRow,44),(s6Step60ExitGvRow,43)] [[],[]] [s6Step60ExitFvOut,s6Step60ExitGvOut]
    (shrinkRow 795 s6Step60ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step60ExitGvExtra ++ []))) s6Step60ExitF_Incoming s6Step60ExitF_checked h2 s6Step60ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step60ExitGBefore s6Step60ExitGAfter s6Step60ExitGvAfter
    s6Step60ExitGRow s6Step60ExitGOut 237 [] [(s6Step60ExitFRow,239),(s6Step60ExitFvRow,44),(s6Step60ExitGvRow,43)] [[],[],[]] [s6Step60ExitFOut,s6Step60ExitFvOut,s6Step60ExitGvOut]
    (shrinkRow 777 s6Step60ExitGExtra) ((shrinkRow 795 s6Step60ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step60ExitGvExtra ++ [])))) s6Step60ExitG_Incoming s6Step60ExitG_checked h1 s6Step60ExitG_Outgoing
  exact h0
theorem s6Step60ExitBank_checked : compileHmrBankResizeLog .exit s6Step60ExitGBefore ⟨s6Step60ExitFRow,s6Step60ExitGRow,s6Step60ExitFvRow,s6Step60ExitGvRow⟩ ⟨239,237,44,43⟩ [[],[],[],[]]=
    some (s6Step60ExitGvAfter,⟨s6Step60ExitFOut,s6Step60ExitGOut,s6Step60ExitFvOut,s6Step60ExitGvOut⟩,(shrinkRow 777 s6Step60ExitGExtra ++ (shrinkRow 795 s6Step60ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step60ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step60ExitBank_rows]
  rfl
theorem s6Step61ExitBank_incomingDistinct : ([s6Step61ExitGRow,s6Step61ExitFRow,s6Step61ExitFvRow,s6Step61ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step61ExitBank_outgoingOwned : rowsOwned s6Step61ExitGvAfter [s6Step61ExitGOut,s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step61ExitGvAfter (fun q => ([(0,494),(495,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61ExitG_Incoming : rowsOwned s6Step61ExitGBefore [s6Step61ExitGRow,s6Step61ExitFRow,s6Step61ExitFvRow,s6Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61ExitGRow,s6Step61ExitFRow,s6Step61ExitFvRow,s6Step61ExitGvRow] 0 s6Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61ExitG_Outgoing : rowsOwned s6Step61ExitGvAfter [s6Step61ExitGOut,s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut] :=
  hmrRows_owned_drop s6Step61ExitGvAfter [s6Step61ExitGOut,s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut] 0 s6Step61ExitBank_outgoingOwned
theorem s6Step61ExitF_Incoming : rowsOwned s6Step61ExitFBefore [s6Step61ExitFRow,s6Step61ExitFvRow,s6Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61ExitGRow,s6Step61ExitFRow,s6Step61ExitFvRow,s6Step61ExitGvRow] 1 s6Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61ExitF_Outgoing : rowsOwned s6Step61ExitGvAfter [s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut] :=
  hmrRows_owned_drop s6Step61ExitGvAfter [s6Step61ExitGOut,s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut] 1 s6Step61ExitBank_outgoingOwned
theorem s6Step61ExitFv_Incoming : rowsOwned s6Step61ExitFvBefore [s6Step61ExitFvRow,s6Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61ExitGRow,s6Step61ExitFRow,s6Step61ExitFvRow,s6Step61ExitGvRow] 2 s6Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61ExitFvBefore (fun q => ([(0,494),(495,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61ExitFv_Outgoing : rowsOwned s6Step61ExitGvAfter [s6Step61ExitFvOut,s6Step61ExitGvOut] :=
  hmrRows_owned_drop s6Step61ExitGvAfter [s6Step61ExitGOut,s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut] 2 s6Step61ExitBank_outgoingOwned
theorem s6Step61ExitGv_Incoming : rowsOwned s6Step61ExitGvBefore [s6Step61ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61ExitGRow,s6Step61ExitFRow,s6Step61ExitFvRow,s6Step61ExitGvRow] 3 s6Step61ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61ExitGvBefore (fun q => ([(0,494),(495,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61ExitGv_Outgoing : rowsOwned s6Step61ExitGvAfter [s6Step61ExitGvOut] :=
  hmrRows_owned_drop s6Step61ExitGvAfter [s6Step61ExitGOut,s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut] 3 s6Step61ExitBank_outgoingOwned
theorem s6Step61ExitBank_rows : planWindowRowsLog s6Step61ExitGBefore [(s6Step61ExitGRow,237),(s6Step61ExitFRow,238),(s6Step61ExitFvRow,44),(s6Step61ExitGvRow,43)] [[],[],[],[]]=
    some (s6Step61ExitGvAfter,[s6Step61ExitGOut,s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut],(shrinkRow 777 s6Step61ExitGExtra ++ (shrinkRow 795 s6Step61ExitFExtra ++ (shrinkRow 776 s6Step61ExitFvExtra ++ (shrinkRow 775 s6Step61ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step61ExitGvAfter [] []=some (s6Step61ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step61ExitGvBefore s6Step61ExitGvAfter s6Step61ExitGvAfter
    s6Step61ExitGvRow s6Step61ExitGvOut 43 [] [] [] []
    (shrinkRow 775 s6Step61ExitGvExtra) ([]) s6Step61ExitGv_Incoming s6Step61ExitGv_checked h4 s6Step61ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step61ExitFvBefore s6Step61ExitFvAfter s6Step61ExitGvAfter
    s6Step61ExitFvRow s6Step61ExitFvOut 44 [] [(s6Step61ExitGvRow,43)] [[]] [s6Step61ExitGvOut]
    (shrinkRow 776 s6Step61ExitFvExtra) ((shrinkRow 775 s6Step61ExitGvExtra ++ [])) s6Step61ExitFv_Incoming s6Step61ExitFv_checked h3 s6Step61ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step61ExitFBefore s6Step61ExitFAfter s6Step61ExitGvAfter
    s6Step61ExitFRow s6Step61ExitFOut 238 [] [(s6Step61ExitFvRow,44),(s6Step61ExitGvRow,43)] [[],[]] [s6Step61ExitFvOut,s6Step61ExitGvOut]
    (shrinkRow 795 s6Step61ExitFExtra) ((shrinkRow 776 s6Step61ExitFvExtra ++ (shrinkRow 775 s6Step61ExitGvExtra ++ []))) s6Step61ExitF_Incoming s6Step61ExitF_checked h2 s6Step61ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step61ExitGBefore s6Step61ExitGAfter s6Step61ExitGvAfter
    s6Step61ExitGRow s6Step61ExitGOut 237 [] [(s6Step61ExitFRow,238),(s6Step61ExitFvRow,44),(s6Step61ExitGvRow,43)] [[],[],[]] [s6Step61ExitFOut,s6Step61ExitFvOut,s6Step61ExitGvOut]
    (shrinkRow 777 s6Step61ExitGExtra) ((shrinkRow 795 s6Step61ExitFExtra ++ (shrinkRow 776 s6Step61ExitFvExtra ++ (shrinkRow 775 s6Step61ExitGvExtra ++ [])))) s6Step61ExitG_Incoming s6Step61ExitG_checked h1 s6Step61ExitG_Outgoing
  exact h0
theorem s6Step61ExitBank_checked : compileHmrBankResizeLog .exit s6Step61ExitGBefore ⟨s6Step61ExitFRow,s6Step61ExitGRow,s6Step61ExitFvRow,s6Step61ExitGvRow⟩ ⟨238,237,44,43⟩ [[],[],[],[]]=
    some (s6Step61ExitGvAfter,⟨s6Step61ExitFOut,s6Step61ExitGOut,s6Step61ExitFvOut,s6Step61ExitGvOut⟩,(shrinkRow 777 s6Step61ExitGExtra ++ (shrinkRow 795 s6Step61ExitFExtra ++ (shrinkRow 776 s6Step61ExitFvExtra ++ (shrinkRow 775 s6Step61ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step61ExitBank_rows]
  rfl
theorem s6Step62ExitBank_incomingDistinct : ([s6Step62ExitGRow,s6Step62ExitFRow,s6Step62ExitFvRow,s6Step62ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step62ExitBank_outgoingOwned : rowsOwned s6Step62ExitGvAfter [s6Step62ExitGOut,s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step62ExitGvAfter (fun q => ([(0,493),(494,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62ExitG_Incoming : rowsOwned s6Step62ExitGBefore [s6Step62ExitGRow,s6Step62ExitFRow,s6Step62ExitFvRow,s6Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62ExitGRow,s6Step62ExitFRow,s6Step62ExitFvRow,s6Step62ExitGvRow] 0 s6Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62ExitGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62ExitG_Outgoing : rowsOwned s6Step62ExitGvAfter [s6Step62ExitGOut,s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut] :=
  hmrRows_owned_drop s6Step62ExitGvAfter [s6Step62ExitGOut,s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut] 0 s6Step62ExitBank_outgoingOwned
theorem s6Step62ExitF_Incoming : rowsOwned s6Step62ExitFBefore [s6Step62ExitFRow,s6Step62ExitFvRow,s6Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62ExitGRow,s6Step62ExitFRow,s6Step62ExitFvRow,s6Step62ExitGvRow] 1 s6Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62ExitFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62ExitF_Outgoing : rowsOwned s6Step62ExitGvAfter [s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut] :=
  hmrRows_owned_drop s6Step62ExitGvAfter [s6Step62ExitGOut,s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut] 1 s6Step62ExitBank_outgoingOwned
theorem s6Step62ExitFv_Incoming : rowsOwned s6Step62ExitFvBefore [s6Step62ExitFvRow,s6Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62ExitGRow,s6Step62ExitFRow,s6Step62ExitFvRow,s6Step62ExitGvRow] 2 s6Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62ExitFvBefore (fun q => ([(0,493),(494,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62ExitFv_Outgoing : rowsOwned s6Step62ExitGvAfter [s6Step62ExitFvOut,s6Step62ExitGvOut] :=
  hmrRows_owned_drop s6Step62ExitGvAfter [s6Step62ExitGOut,s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut] 2 s6Step62ExitBank_outgoingOwned
theorem s6Step62ExitGv_Incoming : rowsOwned s6Step62ExitGvBefore [s6Step62ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62ExitGRow,s6Step62ExitFRow,s6Step62ExitFvRow,s6Step62ExitGvRow] 3 s6Step62ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62ExitGvBefore (fun q => ([(0,493),(494,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62ExitGv_Outgoing : rowsOwned s6Step62ExitGvAfter [s6Step62ExitGvOut] :=
  hmrRows_owned_drop s6Step62ExitGvAfter [s6Step62ExitGOut,s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut] 3 s6Step62ExitBank_outgoingOwned
theorem s6Step62ExitBank_rows : planWindowRowsLog s6Step62ExitGBefore [(s6Step62ExitGRow,237),(s6Step62ExitFRow,237),(s6Step62ExitFvRow,45),(s6Step62ExitGvRow,44)] [[],[],[],[]]=
    some (s6Step62ExitGvAfter,[s6Step62ExitGOut,s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut],(shrinkRow 777 s6Step62ExitGExtra ++ (shrinkRow 795 s6Step62ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step62ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step62ExitGvAfter [] []=some (s6Step62ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step62ExitGvBefore s6Step62ExitGvAfter s6Step62ExitGvAfter
    s6Step62ExitGvRow s6Step62ExitGvOut 44 [] [] [] []
    (shrinkRow 775 s6Step62ExitGvExtra) ([]) s6Step62ExitGv_Incoming s6Step62ExitGv_checked h4 s6Step62ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step62ExitFvBefore s6Step62ExitFvAfter s6Step62ExitGvAfter
    s6Step62ExitFvRow s6Step62ExitFvOut 45 [] [(s6Step62ExitGvRow,44)] [[]] [s6Step62ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step62ExitGvExtra ++ [])) s6Step62ExitFv_Incoming s6Step62ExitFv_checked h3 s6Step62ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step62ExitFBefore s6Step62ExitFAfter s6Step62ExitGvAfter
    s6Step62ExitFRow s6Step62ExitFOut 237 [] [(s6Step62ExitFvRow,45),(s6Step62ExitGvRow,44)] [[],[]] [s6Step62ExitFvOut,s6Step62ExitGvOut]
    (shrinkRow 795 s6Step62ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step62ExitGvExtra ++ []))) s6Step62ExitF_Incoming s6Step62ExitF_checked h2 s6Step62ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step62ExitGBefore s6Step62ExitGAfter s6Step62ExitGvAfter
    s6Step62ExitGRow s6Step62ExitGOut 237 [] [(s6Step62ExitFRow,237),(s6Step62ExitFvRow,45),(s6Step62ExitGvRow,44)] [[],[],[]] [s6Step62ExitFOut,s6Step62ExitFvOut,s6Step62ExitGvOut]
    (shrinkRow 777 s6Step62ExitGExtra) ((shrinkRow 795 s6Step62ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step62ExitGvExtra ++ [])))) s6Step62ExitG_Incoming s6Step62ExitG_checked h1 s6Step62ExitG_Outgoing
  exact h0
theorem s6Step62ExitBank_checked : compileHmrBankResizeLog .exit s6Step62ExitGBefore ⟨s6Step62ExitFRow,s6Step62ExitGRow,s6Step62ExitFvRow,s6Step62ExitGvRow⟩ ⟨237,237,45,44⟩ [[],[],[],[]]=
    some (s6Step62ExitGvAfter,⟨s6Step62ExitFOut,s6Step62ExitGOut,s6Step62ExitFvOut,s6Step62ExitGvOut⟩,(shrinkRow 777 s6Step62ExitGExtra ++ (shrinkRow 795 s6Step62ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step62ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step62ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
