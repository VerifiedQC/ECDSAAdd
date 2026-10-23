import ECDSAAdd.Arithmetic.Paper935.HmrSourceExitParts
namespace ECDSAAdd.Arithmetic.Paper935
theorem s2Step0ExitG_Incoming : rowsOwned s2Step0ExitGBefore [s2Step0ExitGRow,s2Step0ExitFRow,s2Step0ExitFvRow,s2Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitGBefore (fun q => (0≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitG_Outgoing : rowsOwned s2Step0ExitGvAfter [s2Step0ExitGOut,s2Step0ExitFOut,s2Step0ExitFvOut,s2Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitF_Incoming : rowsOwned s2Step0ExitFBefore [s2Step0ExitFRow,s2Step0ExitFvRow,s2Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitFBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (783≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitF_Outgoing : rowsOwned s2Step0ExitGvAfter [s2Step0ExitFOut,s2Step0ExitFvOut,s2Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitFv_Incoming : rowsOwned s2Step0ExitFvBefore [s2Step0ExitFvRow,s2Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitFvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (784≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitFv_Outgoing : rowsOwned s2Step0ExitGvAfter [s2Step0ExitFvOut,s2Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitGv_Incoming : rowsOwned s2Step0ExitGvBefore [s2Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitGvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (784≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitGv_Outgoing : rowsOwned s2Step0ExitGvAfter [s2Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<782) ∨ (785≤q ∧ q<786)) rfl
    decide +kernel
theorem s2Step0ExitBank_rows : planWindowRowsLog s2Step0ExitGBefore [(s2Step0ExitGRow,255),(s2Step0ExitFRow,256),(s2Step0ExitFvRow,2),(s2Step0ExitGvRow,1)] [[],[],[],[]]=
    some (s2Step0ExitGvAfter,[s2Step0ExitGOut,s2Step0ExitFOut,s2Step0ExitFvOut,s2Step0ExitGvOut],(shrinkRow 769 s2Step0ExitGExtra ++ (shrinkRow 768 s2Step0ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step0ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step0ExitGvAfter [] []=some (s2Step0ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step0ExitGvBefore s2Step0ExitGvAfter s2Step0ExitGvAfter
    s2Step0ExitGvRow s2Step0ExitGvOut 1 [] [] [] []
    (shrinkRow 771 s2Step0ExitGvExtra) ([]) s2Step0ExitGv_Incoming s2Step0ExitGv_checked h4 s2Step0ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step0ExitFvBefore s2Step0ExitFvAfter s2Step0ExitGvAfter
    s2Step0ExitFvRow s2Step0ExitFvOut 2 [] [(s2Step0ExitGvRow,1)] [[]] [s2Step0ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step0ExitGvExtra ++ [])) s2Step0ExitFv_Incoming s2Step0ExitFv_checked h3 s2Step0ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step0ExitFBefore s2Step0ExitFAfter s2Step0ExitGvAfter
    s2Step0ExitFRow s2Step0ExitFOut 256 [] [(s2Step0ExitFvRow,2),(s2Step0ExitGvRow,1)] [[],[]] [s2Step0ExitFvOut,s2Step0ExitGvOut]
    (shrinkRow 768 s2Step0ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step0ExitGvExtra ++ []))) s2Step0ExitF_Incoming s2Step0ExitF_checked h2 s2Step0ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step0ExitGBefore s2Step0ExitGAfter s2Step0ExitGvAfter
    s2Step0ExitGRow s2Step0ExitGOut 255 [] [(s2Step0ExitFRow,256),(s2Step0ExitFvRow,2),(s2Step0ExitGvRow,1)] [[],[],[]] [s2Step0ExitFOut,s2Step0ExitFvOut,s2Step0ExitGvOut]
    (shrinkRow 769 s2Step0ExitGExtra) ((shrinkRow 768 s2Step0ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step0ExitGvExtra ++ [])))) s2Step0ExitG_Incoming s2Step0ExitG_checked h1 s2Step0ExitG_Outgoing
  exact h0
theorem s2Step0ExitBank_checked : compileHmrBankResizeLog .exit s2Step0ExitGBefore ⟨s2Step0ExitFRow,s2Step0ExitGRow,s2Step0ExitFvRow,s2Step0ExitGvRow⟩ ⟨256,255,2,1⟩ [[],[],[],[]]=
    some (s2Step0ExitGvAfter,⟨s2Step0ExitFOut,s2Step0ExitGOut,s2Step0ExitFvOut,s2Step0ExitGvOut⟩,(shrinkRow 769 s2Step0ExitGExtra ++ (shrinkRow 768 s2Step0ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step0ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step0ExitBank_rows]
  rfl
theorem s2Step498ExitG_Incoming : rowsOwned s2Step498ExitGBefore [s2Step498ExitGRow,s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitGBefore (fun q => (0≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitG_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitGOut,s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitGvAfter (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (920≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitF_Incoming : rowsOwned s2Step498ExitFBefore [s2Step498ExitFRow,s2Step498ExitFvRow,s2Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitFBefore (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<917) ∨ (918≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitF_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitFOut,s2Step498ExitFvOut,s2Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitGvAfter (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (920≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitFv_Incoming : rowsOwned s2Step498ExitFvBefore [s2Step498ExitFvRow,s2Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitFvBefore (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (919≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitFv_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitFvOut,s2Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitGvAfter (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (920≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitGv_Incoming : rowsOwned s2Step498ExitGvBefore [s2Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitGvBefore (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (919≤q ∧ q<921)) rfl
    decide +kernel
theorem s2Step498ExitGv_Outgoing : rowsOwned s2Step498ExitGvAfter [s2Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step498ExitGvAfter (fun q => (0≤q ∧ q<845) ∨ (846≤q ∧ q<901) ∨ (902≤q ∧ q<917) ∨ (920≤q ∧ q<921)) rfl
    decide +kernel
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
theorem s6Step0ExitG_Incoming : rowsOwned s6Step0ExitGBefore [s6Step0ExitGRow,s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitG_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitGOut,s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitF_Incoming : rowsOwned s6Step0ExitFBefore [s6Step0ExitFRow,s6Step0ExitFvRow,s6Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitFBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitF_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitFOut,s6Step0ExitFvOut,s6Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitFv_Incoming : rowsOwned s6Step0ExitFvBefore [s6Step0ExitFvRow,s6Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitFvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitFv_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitFvOut,s6Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitGv_Incoming : rowsOwned s6Step0ExitGvBefore [s6Step0ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitGvBefore (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
theorem s6Step0ExitGv_Outgoing : rowsOwned s6Step0ExitGvAfter [s6Step0ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step0ExitGvAfter (fun q => (0≤q ∧ q<255) ∨ (256≤q ∧ q<778) ∨ (795≤q ∧ q<796) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<860) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
    decide +kernel
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
theorem s6Step498ExitG_Incoming : rowsOwned s6Step498ExitGBefore [s6Step498ExitGRow,s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitG_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitGOut,s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitF_Incoming : rowsOwned s6Step498ExitFBefore [s6Step498ExitFRow,s6Step498ExitFvRow,s6Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitF_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitFOut,s6Step498ExitFvOut,s6Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitFv_Incoming : rowsOwned s6Step498ExitFvBefore [s6Step498ExitFvRow,s6Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitFv_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitFvOut,s6Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitGv_Incoming : rowsOwned s6Step498ExitGvBefore [s6Step498ExitGvRow] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498ExitGv_Outgoing : rowsOwned s6Step498ExitGvAfter [s6Step498ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<855) ∨ (856≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
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
