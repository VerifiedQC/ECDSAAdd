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
theorem s6Step16ExitBank_incomingDistinct : ([s6Step16ExitGRow,s6Step16ExitFRow,s6Step16ExitFvRow,s6Step16ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16ExitBank_outgoingOwned : rowsOwned s6Step16ExitGvAfter [s6Step16ExitGOut,s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step16ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16ExitG_Incoming : rowsOwned s6Step16ExitGBefore [s6Step16ExitGRow,s6Step16ExitFRow,s6Step16ExitFvRow,s6Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16ExitGRow,s6Step16ExitFRow,s6Step16ExitFvRow,s6Step16ExitGvRow] 0 s6Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16ExitG_Outgoing : rowsOwned s6Step16ExitGvAfter [s6Step16ExitGOut,s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut] :=
  hmrRows_owned_drop s6Step16ExitGvAfter [s6Step16ExitGOut,s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut] 0 s6Step16ExitBank_outgoingOwned
theorem s6Step16ExitF_Incoming : rowsOwned s6Step16ExitFBefore [s6Step16ExitFRow,s6Step16ExitFvRow,s6Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16ExitGRow,s6Step16ExitFRow,s6Step16ExitFvRow,s6Step16ExitGvRow] 1 s6Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16ExitF_Outgoing : rowsOwned s6Step16ExitGvAfter [s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut] :=
  hmrRows_owned_drop s6Step16ExitGvAfter [s6Step16ExitGOut,s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut] 1 s6Step16ExitBank_outgoingOwned
theorem s6Step16ExitFv_Incoming : rowsOwned s6Step16ExitFvBefore [s6Step16ExitFvRow,s6Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16ExitGRow,s6Step16ExitFRow,s6Step16ExitFvRow,s6Step16ExitGvRow] 2 s6Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16ExitFv_Outgoing : rowsOwned s6Step16ExitGvAfter [s6Step16ExitFvOut,s6Step16ExitGvOut] :=
  hmrRows_owned_drop s6Step16ExitGvAfter [s6Step16ExitGOut,s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut] 2 s6Step16ExitBank_outgoingOwned
theorem s6Step16ExitGv_Incoming : rowsOwned s6Step16ExitGvBefore [s6Step16ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16ExitGRow,s6Step16ExitFRow,s6Step16ExitFvRow,s6Step16ExitGvRow] 3 s6Step16ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16ExitGv_Outgoing : rowsOwned s6Step16ExitGvAfter [s6Step16ExitGvOut] :=
  hmrRows_owned_drop s6Step16ExitGvAfter [s6Step16ExitGOut,s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut] 3 s6Step16ExitBank_outgoingOwned
theorem s6Step16ExitBank_rows : planWindowRowsLog s6Step16ExitGBefore [(s6Step16ExitGRow,255),(s6Step16ExitFRow,256),(s6Step16ExitFvRow,18),(s6Step16ExitGvRow,16)] [[],[],[],[]]=
    some (s6Step16ExitGvAfter,[s6Step16ExitGOut,s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut],(shrinkRow 777 s6Step16ExitGExtra ++ (shrinkRow 795 s6Step16ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step16ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step16ExitGvAfter [] []=some (s6Step16ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step16ExitGvBefore s6Step16ExitGvAfter s6Step16ExitGvAfter
    s6Step16ExitGvRow s6Step16ExitGvOut 16 [] [] [] []
    (shrinkRow 775 s6Step16ExitGvExtra) ([]) s6Step16ExitGv_Incoming s6Step16ExitGv_checked h4 s6Step16ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step16ExitFvBefore s6Step16ExitFvAfter s6Step16ExitGvAfter
    s6Step16ExitFvRow s6Step16ExitFvOut 18 [] [(s6Step16ExitGvRow,16)] [[]] [s6Step16ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step16ExitGvExtra ++ [])) s6Step16ExitFv_Incoming s6Step16ExitFv_checked h3 s6Step16ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step16ExitFBefore s6Step16ExitFAfter s6Step16ExitGvAfter
    s6Step16ExitFRow s6Step16ExitFOut 256 [] [(s6Step16ExitFvRow,18),(s6Step16ExitGvRow,16)] [[],[]] [s6Step16ExitFvOut,s6Step16ExitGvOut]
    (shrinkRow 795 s6Step16ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step16ExitGvExtra ++ []))) s6Step16ExitF_Incoming s6Step16ExitF_checked h2 s6Step16ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step16ExitGBefore s6Step16ExitGAfter s6Step16ExitGvAfter
    s6Step16ExitGRow s6Step16ExitGOut 255 [] [(s6Step16ExitFRow,256),(s6Step16ExitFvRow,18),(s6Step16ExitGvRow,16)] [[],[],[]] [s6Step16ExitFOut,s6Step16ExitFvOut,s6Step16ExitGvOut]
    (shrinkRow 777 s6Step16ExitGExtra) ((shrinkRow 795 s6Step16ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step16ExitGvExtra ++ [])))) s6Step16ExitG_Incoming s6Step16ExitG_checked h1 s6Step16ExitG_Outgoing
  exact h0
theorem s6Step16ExitBank_checked : compileHmrBankResizeLog .exit s6Step16ExitGBefore ⟨s6Step16ExitFRow,s6Step16ExitGRow,s6Step16ExitFvRow,s6Step16ExitGvRow⟩ ⟨256,255,18,16⟩ [[],[],[],[]]=
    some (s6Step16ExitGvAfter,⟨s6Step16ExitFOut,s6Step16ExitGOut,s6Step16ExitFvOut,s6Step16ExitGvOut⟩,(shrinkRow 777 s6Step16ExitGExtra ++ (shrinkRow 795 s6Step16ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step16ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step16ExitBank_rows]
  rfl
theorem s6Step17ExitBank_incomingDistinct : ([s6Step17ExitGRow,s6Step17ExitFRow,s6Step17ExitFvRow,s6Step17ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17ExitBank_outgoingOwned : rowsOwned s6Step17ExitGvAfter [s6Step17ExitGOut,s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step17ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17ExitG_Incoming : rowsOwned s6Step17ExitGBefore [s6Step17ExitGRow,s6Step17ExitFRow,s6Step17ExitFvRow,s6Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17ExitGRow,s6Step17ExitFRow,s6Step17ExitFvRow,s6Step17ExitGvRow] 0 s6Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17ExitG_Outgoing : rowsOwned s6Step17ExitGvAfter [s6Step17ExitGOut,s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut] :=
  hmrRows_owned_drop s6Step17ExitGvAfter [s6Step17ExitGOut,s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut] 0 s6Step17ExitBank_outgoingOwned
theorem s6Step17ExitF_Incoming : rowsOwned s6Step17ExitFBefore [s6Step17ExitFRow,s6Step17ExitFvRow,s6Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17ExitGRow,s6Step17ExitFRow,s6Step17ExitFvRow,s6Step17ExitGvRow] 1 s6Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17ExitF_Outgoing : rowsOwned s6Step17ExitGvAfter [s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut] :=
  hmrRows_owned_drop s6Step17ExitGvAfter [s6Step17ExitGOut,s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut] 1 s6Step17ExitBank_outgoingOwned
theorem s6Step17ExitFv_Incoming : rowsOwned s6Step17ExitFvBefore [s6Step17ExitFvRow,s6Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17ExitGRow,s6Step17ExitFRow,s6Step17ExitFvRow,s6Step17ExitGvRow] 2 s6Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17ExitFv_Outgoing : rowsOwned s6Step17ExitGvAfter [s6Step17ExitFvOut,s6Step17ExitGvOut] :=
  hmrRows_owned_drop s6Step17ExitGvAfter [s6Step17ExitGOut,s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut] 2 s6Step17ExitBank_outgoingOwned
theorem s6Step17ExitGv_Incoming : rowsOwned s6Step17ExitGvBefore [s6Step17ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17ExitGRow,s6Step17ExitFRow,s6Step17ExitFvRow,s6Step17ExitGvRow] 3 s6Step17ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17ExitGv_Outgoing : rowsOwned s6Step17ExitGvAfter [s6Step17ExitGvOut] :=
  hmrRows_owned_drop s6Step17ExitGvAfter [s6Step17ExitGOut,s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut] 3 s6Step17ExitBank_outgoingOwned
theorem s6Step17ExitBank_rows : planWindowRowsLog s6Step17ExitGBefore [(s6Step17ExitGRow,255),(s6Step17ExitFRow,256),(s6Step17ExitFvRow,19),(s6Step17ExitGvRow,17)] [[],[],[],[]]=
    some (s6Step17ExitGvAfter,[s6Step17ExitGOut,s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut],(shrinkRow 777 s6Step17ExitGExtra ++ (shrinkRow 795 s6Step17ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step17ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step17ExitGvAfter [] []=some (s6Step17ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step17ExitGvBefore s6Step17ExitGvAfter s6Step17ExitGvAfter
    s6Step17ExitGvRow s6Step17ExitGvOut 17 [] [] [] []
    (shrinkRow 775 s6Step17ExitGvExtra) ([]) s6Step17ExitGv_Incoming s6Step17ExitGv_checked h4 s6Step17ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step17ExitFvBefore s6Step17ExitFvAfter s6Step17ExitGvAfter
    s6Step17ExitFvRow s6Step17ExitFvOut 19 [] [(s6Step17ExitGvRow,17)] [[]] [s6Step17ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step17ExitGvExtra ++ [])) s6Step17ExitFv_Incoming s6Step17ExitFv_checked h3 s6Step17ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step17ExitFBefore s6Step17ExitFAfter s6Step17ExitGvAfter
    s6Step17ExitFRow s6Step17ExitFOut 256 [] [(s6Step17ExitFvRow,19),(s6Step17ExitGvRow,17)] [[],[]] [s6Step17ExitFvOut,s6Step17ExitGvOut]
    (shrinkRow 795 s6Step17ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step17ExitGvExtra ++ []))) s6Step17ExitF_Incoming s6Step17ExitF_checked h2 s6Step17ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step17ExitGBefore s6Step17ExitGAfter s6Step17ExitGvAfter
    s6Step17ExitGRow s6Step17ExitGOut 255 [] [(s6Step17ExitFRow,256),(s6Step17ExitFvRow,19),(s6Step17ExitGvRow,17)] [[],[],[]] [s6Step17ExitFOut,s6Step17ExitFvOut,s6Step17ExitGvOut]
    (shrinkRow 777 s6Step17ExitGExtra) ((shrinkRow 795 s6Step17ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step17ExitGvExtra ++ [])))) s6Step17ExitG_Incoming s6Step17ExitG_checked h1 s6Step17ExitG_Outgoing
  exact h0
theorem s6Step17ExitBank_checked : compileHmrBankResizeLog .exit s6Step17ExitGBefore ⟨s6Step17ExitFRow,s6Step17ExitGRow,s6Step17ExitFvRow,s6Step17ExitGvRow⟩ ⟨256,255,19,17⟩ [[],[],[],[]]=
    some (s6Step17ExitGvAfter,⟨s6Step17ExitFOut,s6Step17ExitGOut,s6Step17ExitFvOut,s6Step17ExitGvOut⟩,(shrinkRow 777 s6Step17ExitGExtra ++ (shrinkRow 795 s6Step17ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step17ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step17ExitBank_rows]
  rfl
theorem s6Step18ExitBank_incomingDistinct : ([s6Step18ExitGRow,s6Step18ExitFRow,s6Step18ExitFvRow,s6Step18ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18ExitBank_outgoingOwned : rowsOwned s6Step18ExitGvAfter [s6Step18ExitGOut,s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step18ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18ExitG_Incoming : rowsOwned s6Step18ExitGBefore [s6Step18ExitGRow,s6Step18ExitFRow,s6Step18ExitFvRow,s6Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18ExitGRow,s6Step18ExitFRow,s6Step18ExitFvRow,s6Step18ExitGvRow] 0 s6Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18ExitG_Outgoing : rowsOwned s6Step18ExitGvAfter [s6Step18ExitGOut,s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut] :=
  hmrRows_owned_drop s6Step18ExitGvAfter [s6Step18ExitGOut,s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut] 0 s6Step18ExitBank_outgoingOwned
theorem s6Step18ExitF_Incoming : rowsOwned s6Step18ExitFBefore [s6Step18ExitFRow,s6Step18ExitFvRow,s6Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18ExitGRow,s6Step18ExitFRow,s6Step18ExitFvRow,s6Step18ExitGvRow] 1 s6Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18ExitF_Outgoing : rowsOwned s6Step18ExitGvAfter [s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut] :=
  hmrRows_owned_drop s6Step18ExitGvAfter [s6Step18ExitGOut,s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut] 1 s6Step18ExitBank_outgoingOwned
theorem s6Step18ExitFv_Incoming : rowsOwned s6Step18ExitFvBefore [s6Step18ExitFvRow,s6Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18ExitGRow,s6Step18ExitFRow,s6Step18ExitFvRow,s6Step18ExitGvRow] 2 s6Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18ExitFv_Outgoing : rowsOwned s6Step18ExitGvAfter [s6Step18ExitFvOut,s6Step18ExitGvOut] :=
  hmrRows_owned_drop s6Step18ExitGvAfter [s6Step18ExitGOut,s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut] 2 s6Step18ExitBank_outgoingOwned
theorem s6Step18ExitGv_Incoming : rowsOwned s6Step18ExitGvBefore [s6Step18ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18ExitGRow,s6Step18ExitFRow,s6Step18ExitFvRow,s6Step18ExitGvRow] 3 s6Step18ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18ExitGv_Outgoing : rowsOwned s6Step18ExitGvAfter [s6Step18ExitGvOut] :=
  hmrRows_owned_drop s6Step18ExitGvAfter [s6Step18ExitGOut,s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut] 3 s6Step18ExitBank_outgoingOwned
theorem s6Step18ExitBank_rows : planWindowRowsLog s6Step18ExitGBefore [(s6Step18ExitGRow,255),(s6Step18ExitFRow,256),(s6Step18ExitFvRow,20),(s6Step18ExitGvRow,18)] [[],[],[],[]]=
    some (s6Step18ExitGvAfter,[s6Step18ExitGOut,s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut],(shrinkRow 777 s6Step18ExitGExtra ++ (shrinkRow 795 s6Step18ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step18ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step18ExitGvAfter [] []=some (s6Step18ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step18ExitGvBefore s6Step18ExitGvAfter s6Step18ExitGvAfter
    s6Step18ExitGvRow s6Step18ExitGvOut 18 [] [] [] []
    (shrinkRow 775 s6Step18ExitGvExtra) ([]) s6Step18ExitGv_Incoming s6Step18ExitGv_checked h4 s6Step18ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step18ExitFvBefore s6Step18ExitFvAfter s6Step18ExitGvAfter
    s6Step18ExitFvRow s6Step18ExitFvOut 20 [] [(s6Step18ExitGvRow,18)] [[]] [s6Step18ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step18ExitGvExtra ++ [])) s6Step18ExitFv_Incoming s6Step18ExitFv_checked h3 s6Step18ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step18ExitFBefore s6Step18ExitFAfter s6Step18ExitGvAfter
    s6Step18ExitFRow s6Step18ExitFOut 256 [] [(s6Step18ExitFvRow,20),(s6Step18ExitGvRow,18)] [[],[]] [s6Step18ExitFvOut,s6Step18ExitGvOut]
    (shrinkRow 795 s6Step18ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step18ExitGvExtra ++ []))) s6Step18ExitF_Incoming s6Step18ExitF_checked h2 s6Step18ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step18ExitGBefore s6Step18ExitGAfter s6Step18ExitGvAfter
    s6Step18ExitGRow s6Step18ExitGOut 255 [] [(s6Step18ExitFRow,256),(s6Step18ExitFvRow,20),(s6Step18ExitGvRow,18)] [[],[],[]] [s6Step18ExitFOut,s6Step18ExitFvOut,s6Step18ExitGvOut]
    (shrinkRow 777 s6Step18ExitGExtra) ((shrinkRow 795 s6Step18ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step18ExitGvExtra ++ [])))) s6Step18ExitG_Incoming s6Step18ExitG_checked h1 s6Step18ExitG_Outgoing
  exact h0
theorem s6Step18ExitBank_checked : compileHmrBankResizeLog .exit s6Step18ExitGBefore ⟨s6Step18ExitFRow,s6Step18ExitGRow,s6Step18ExitFvRow,s6Step18ExitGvRow⟩ ⟨256,255,20,18⟩ [[],[],[],[]]=
    some (s6Step18ExitGvAfter,⟨s6Step18ExitFOut,s6Step18ExitGOut,s6Step18ExitFvOut,s6Step18ExitGvOut⟩,(shrinkRow 777 s6Step18ExitGExtra ++ (shrinkRow 795 s6Step18ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step18ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step18ExitBank_rows]
  rfl
theorem s6Step19ExitBank_incomingDistinct : ([s6Step19ExitGRow,s6Step19ExitFRow,s6Step19ExitFvRow,s6Step19ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19ExitBank_outgoingOwned : rowsOwned s6Step19ExitGvAfter [s6Step19ExitGOut,s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step19ExitGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step19ExitG_Incoming : rowsOwned s6Step19ExitGBefore [s6Step19ExitGRow,s6Step19ExitFRow,s6Step19ExitFvRow,s6Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19ExitGRow,s6Step19ExitFRow,s6Step19ExitFvRow,s6Step19ExitGvRow] 0 s6Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19ExitG_Outgoing : rowsOwned s6Step19ExitGvAfter [s6Step19ExitGOut,s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut] :=
  hmrRows_owned_drop s6Step19ExitGvAfter [s6Step19ExitGOut,s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut] 0 s6Step19ExitBank_outgoingOwned
theorem s6Step19ExitF_Incoming : rowsOwned s6Step19ExitFBefore [s6Step19ExitFRow,s6Step19ExitFvRow,s6Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19ExitGRow,s6Step19ExitFRow,s6Step19ExitFvRow,s6Step19ExitGvRow] 1 s6Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19ExitF_Outgoing : rowsOwned s6Step19ExitGvAfter [s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut] :=
  hmrRows_owned_drop s6Step19ExitGvAfter [s6Step19ExitGOut,s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut] 1 s6Step19ExitBank_outgoingOwned
theorem s6Step19ExitFv_Incoming : rowsOwned s6Step19ExitFvBefore [s6Step19ExitFvRow,s6Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19ExitGRow,s6Step19ExitFRow,s6Step19ExitFvRow,s6Step19ExitGvRow] 2 s6Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19ExitFv_Outgoing : rowsOwned s6Step19ExitGvAfter [s6Step19ExitFvOut,s6Step19ExitGvOut] :=
  hmrRows_owned_drop s6Step19ExitGvAfter [s6Step19ExitGOut,s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut] 2 s6Step19ExitBank_outgoingOwned
theorem s6Step19ExitGv_Incoming : rowsOwned s6Step19ExitGvBefore [s6Step19ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19ExitGRow,s6Step19ExitFRow,s6Step19ExitFvRow,s6Step19ExitGvRow] 3 s6Step19ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19ExitGv_Outgoing : rowsOwned s6Step19ExitGvAfter [s6Step19ExitGvOut] :=
  hmrRows_owned_drop s6Step19ExitGvAfter [s6Step19ExitGOut,s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut] 3 s6Step19ExitBank_outgoingOwned
theorem s6Step19ExitBank_rows : planWindowRowsLog s6Step19ExitGBefore [(s6Step19ExitGRow,255),(s6Step19ExitFRow,256),(s6Step19ExitFvRow,21),(s6Step19ExitGvRow,19)] [[],[],[],[]]=
    some (s6Step19ExitGvAfter,[s6Step19ExitGOut,s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut],(shrinkRow 777 s6Step19ExitGExtra ++ (shrinkRow 795 s6Step19ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step19ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step19ExitGvAfter [] []=some (s6Step19ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step19ExitGvBefore s6Step19ExitGvAfter s6Step19ExitGvAfter
    s6Step19ExitGvRow s6Step19ExitGvOut 19 [] [] [] []
    (shrinkRow 775 s6Step19ExitGvExtra) ([]) s6Step19ExitGv_Incoming s6Step19ExitGv_checked h4 s6Step19ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step19ExitFvBefore s6Step19ExitFvAfter s6Step19ExitGvAfter
    s6Step19ExitFvRow s6Step19ExitFvOut 21 [] [(s6Step19ExitGvRow,19)] [[]] [s6Step19ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step19ExitGvExtra ++ [])) s6Step19ExitFv_Incoming s6Step19ExitFv_checked h3 s6Step19ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step19ExitFBefore s6Step19ExitFAfter s6Step19ExitGvAfter
    s6Step19ExitFRow s6Step19ExitFOut 256 [] [(s6Step19ExitFvRow,21),(s6Step19ExitGvRow,19)] [[],[]] [s6Step19ExitFvOut,s6Step19ExitGvOut]
    (shrinkRow 795 s6Step19ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step19ExitGvExtra ++ []))) s6Step19ExitF_Incoming s6Step19ExitF_checked h2 s6Step19ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step19ExitGBefore s6Step19ExitGAfter s6Step19ExitGvAfter
    s6Step19ExitGRow s6Step19ExitGOut 255 [] [(s6Step19ExitFRow,256),(s6Step19ExitFvRow,21),(s6Step19ExitGvRow,19)] [[],[],[]] [s6Step19ExitFOut,s6Step19ExitFvOut,s6Step19ExitGvOut]
    (shrinkRow 777 s6Step19ExitGExtra) ((shrinkRow 795 s6Step19ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step19ExitGvExtra ++ [])))) s6Step19ExitG_Incoming s6Step19ExitG_checked h1 s6Step19ExitG_Outgoing
  exact h0
theorem s6Step19ExitBank_checked : compileHmrBankResizeLog .exit s6Step19ExitGBefore ⟨s6Step19ExitFRow,s6Step19ExitGRow,s6Step19ExitFvRow,s6Step19ExitGvRow⟩ ⟨256,255,21,19⟩ [[],[],[],[]]=
    some (s6Step19ExitGvAfter,⟨s6Step19ExitFOut,s6Step19ExitGOut,s6Step19ExitFvOut,s6Step19ExitGvOut⟩,(shrinkRow 777 s6Step19ExitGExtra ++ (shrinkRow 795 s6Step19ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step19ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step19ExitBank_rows]
  rfl
theorem s6Step20ExitBank_incomingDistinct : ([s6Step20ExitGRow,s6Step20ExitFRow,s6Step20ExitFvRow,s6Step20ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20ExitBank_outgoingOwned : rowsOwned s6Step20ExitGvAfter [s6Step20ExitGOut,s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step20ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20ExitG_Incoming : rowsOwned s6Step20ExitGBefore [s6Step20ExitGRow,s6Step20ExitFRow,s6Step20ExitFvRow,s6Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20ExitGRow,s6Step20ExitFRow,s6Step20ExitFvRow,s6Step20ExitGvRow] 0 s6Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20ExitGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step20ExitG_Outgoing : rowsOwned s6Step20ExitGvAfter [s6Step20ExitGOut,s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut] :=
  hmrRows_owned_drop s6Step20ExitGvAfter [s6Step20ExitGOut,s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut] 0 s6Step20ExitBank_outgoingOwned
theorem s6Step20ExitF_Incoming : rowsOwned s6Step20ExitFBefore [s6Step20ExitFRow,s6Step20ExitFvRow,s6Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20ExitGRow,s6Step20ExitFRow,s6Step20ExitFvRow,s6Step20ExitGvRow] 1 s6Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20ExitF_Outgoing : rowsOwned s6Step20ExitGvAfter [s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut] :=
  hmrRows_owned_drop s6Step20ExitGvAfter [s6Step20ExitGOut,s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut] 1 s6Step20ExitBank_outgoingOwned
theorem s6Step20ExitFv_Incoming : rowsOwned s6Step20ExitFvBefore [s6Step20ExitFvRow,s6Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20ExitGRow,s6Step20ExitFRow,s6Step20ExitFvRow,s6Step20ExitGvRow] 2 s6Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20ExitFv_Outgoing : rowsOwned s6Step20ExitGvAfter [s6Step20ExitFvOut,s6Step20ExitGvOut] :=
  hmrRows_owned_drop s6Step20ExitGvAfter [s6Step20ExitGOut,s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut] 2 s6Step20ExitBank_outgoingOwned
theorem s6Step20ExitGv_Incoming : rowsOwned s6Step20ExitGvBefore [s6Step20ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20ExitGRow,s6Step20ExitFRow,s6Step20ExitFvRow,s6Step20ExitGvRow] 3 s6Step20ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20ExitGv_Outgoing : rowsOwned s6Step20ExitGvAfter [s6Step20ExitGvOut] :=
  hmrRows_owned_drop s6Step20ExitGvAfter [s6Step20ExitGOut,s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut] 3 s6Step20ExitBank_outgoingOwned
theorem s6Step20ExitBank_rows : planWindowRowsLog s6Step20ExitGBefore [(s6Step20ExitGRow,255),(s6Step20ExitFRow,256),(s6Step20ExitFvRow,22),(s6Step20ExitGvRow,20)] [[],[],[],[]]=
    some (s6Step20ExitGvAfter,[s6Step20ExitGOut,s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut],(shrinkRow 777 s6Step20ExitGExtra ++ (shrinkRow 795 s6Step20ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step20ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step20ExitGvAfter [] []=some (s6Step20ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step20ExitGvBefore s6Step20ExitGvAfter s6Step20ExitGvAfter
    s6Step20ExitGvRow s6Step20ExitGvOut 20 [] [] [] []
    (shrinkRow 775 s6Step20ExitGvExtra) ([]) s6Step20ExitGv_Incoming s6Step20ExitGv_checked h4 s6Step20ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step20ExitFvBefore s6Step20ExitFvAfter s6Step20ExitGvAfter
    s6Step20ExitFvRow s6Step20ExitFvOut 22 [] [(s6Step20ExitGvRow,20)] [[]] [s6Step20ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step20ExitGvExtra ++ [])) s6Step20ExitFv_Incoming s6Step20ExitFv_checked h3 s6Step20ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step20ExitFBefore s6Step20ExitFAfter s6Step20ExitGvAfter
    s6Step20ExitFRow s6Step20ExitFOut 256 [] [(s6Step20ExitFvRow,22),(s6Step20ExitGvRow,20)] [[],[]] [s6Step20ExitFvOut,s6Step20ExitGvOut]
    (shrinkRow 795 s6Step20ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step20ExitGvExtra ++ []))) s6Step20ExitF_Incoming s6Step20ExitF_checked h2 s6Step20ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step20ExitGBefore s6Step20ExitGAfter s6Step20ExitGvAfter
    s6Step20ExitGRow s6Step20ExitGOut 255 [] [(s6Step20ExitFRow,256),(s6Step20ExitFvRow,22),(s6Step20ExitGvRow,20)] [[],[],[]] [s6Step20ExitFOut,s6Step20ExitFvOut,s6Step20ExitGvOut]
    (shrinkRow 777 s6Step20ExitGExtra) ((shrinkRow 795 s6Step20ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step20ExitGvExtra ++ [])))) s6Step20ExitG_Incoming s6Step20ExitG_checked h1 s6Step20ExitG_Outgoing
  exact h0
theorem s6Step20ExitBank_checked : compileHmrBankResizeLog .exit s6Step20ExitGBefore ⟨s6Step20ExitFRow,s6Step20ExitGRow,s6Step20ExitFvRow,s6Step20ExitGvRow⟩ ⟨256,255,22,20⟩ [[],[],[],[]]=
    some (s6Step20ExitGvAfter,⟨s6Step20ExitFOut,s6Step20ExitGOut,s6Step20ExitFvOut,s6Step20ExitGvOut⟩,(shrinkRow 777 s6Step20ExitGExtra ++ (shrinkRow 795 s6Step20ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step20ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step20ExitBank_rows]
  rfl
theorem s6Step21ExitBank_incomingDistinct : ([s6Step21ExitGRow,s6Step21ExitFRow,s6Step21ExitFvRow,s6Step21ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21ExitBank_outgoingOwned : rowsOwned s6Step21ExitGvAfter [s6Step21ExitGOut,s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step21ExitGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21ExitG_Incoming : rowsOwned s6Step21ExitGBefore [s6Step21ExitGRow,s6Step21ExitFRow,s6Step21ExitFvRow,s6Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21ExitGRow,s6Step21ExitFRow,s6Step21ExitFvRow,s6Step21ExitGvRow] 0 s6Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21ExitGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21ExitG_Outgoing : rowsOwned s6Step21ExitGvAfter [s6Step21ExitGOut,s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut] :=
  hmrRows_owned_drop s6Step21ExitGvAfter [s6Step21ExitGOut,s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut] 0 s6Step21ExitBank_outgoingOwned
theorem s6Step21ExitF_Incoming : rowsOwned s6Step21ExitFBefore [s6Step21ExitFRow,s6Step21ExitFvRow,s6Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21ExitGRow,s6Step21ExitFRow,s6Step21ExitFvRow,s6Step21ExitGvRow] 1 s6Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21ExitFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21ExitF_Outgoing : rowsOwned s6Step21ExitGvAfter [s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut] :=
  hmrRows_owned_drop s6Step21ExitGvAfter [s6Step21ExitGOut,s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut] 1 s6Step21ExitBank_outgoingOwned
theorem s6Step21ExitFv_Incoming : rowsOwned s6Step21ExitFvBefore [s6Step21ExitFvRow,s6Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21ExitGRow,s6Step21ExitFRow,s6Step21ExitFvRow,s6Step21ExitGvRow] 2 s6Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21ExitFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21ExitFv_Outgoing : rowsOwned s6Step21ExitGvAfter [s6Step21ExitFvOut,s6Step21ExitGvOut] :=
  hmrRows_owned_drop s6Step21ExitGvAfter [s6Step21ExitGOut,s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut] 2 s6Step21ExitBank_outgoingOwned
theorem s6Step21ExitGv_Incoming : rowsOwned s6Step21ExitGvBefore [s6Step21ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21ExitGRow,s6Step21ExitFRow,s6Step21ExitFvRow,s6Step21ExitGvRow] 3 s6Step21ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21ExitGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21ExitGv_Outgoing : rowsOwned s6Step21ExitGvAfter [s6Step21ExitGvOut] :=
  hmrRows_owned_drop s6Step21ExitGvAfter [s6Step21ExitGOut,s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut] 3 s6Step21ExitBank_outgoingOwned
theorem s6Step21ExitBank_rows : planWindowRowsLog s6Step21ExitGBefore [(s6Step21ExitGRow,255),(s6Step21ExitFRow,256),(s6Step21ExitFvRow,23),(s6Step21ExitGvRow,21)] [[],[],[],[]]=
    some (s6Step21ExitGvAfter,[s6Step21ExitGOut,s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut],(shrinkRow 777 s6Step21ExitGExtra ++ (shrinkRow 795 s6Step21ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step21ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step21ExitGvAfter [] []=some (s6Step21ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step21ExitGvBefore s6Step21ExitGvAfter s6Step21ExitGvAfter
    s6Step21ExitGvRow s6Step21ExitGvOut 21 [] [] [] []
    (shrinkRow 775 s6Step21ExitGvExtra) ([]) s6Step21ExitGv_Incoming s6Step21ExitGv_checked h4 s6Step21ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step21ExitFvBefore s6Step21ExitFvAfter s6Step21ExitGvAfter
    s6Step21ExitFvRow s6Step21ExitFvOut 23 [] [(s6Step21ExitGvRow,21)] [[]] [s6Step21ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step21ExitGvExtra ++ [])) s6Step21ExitFv_Incoming s6Step21ExitFv_checked h3 s6Step21ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step21ExitFBefore s6Step21ExitFAfter s6Step21ExitGvAfter
    s6Step21ExitFRow s6Step21ExitFOut 256 [] [(s6Step21ExitFvRow,23),(s6Step21ExitGvRow,21)] [[],[]] [s6Step21ExitFvOut,s6Step21ExitGvOut]
    (shrinkRow 795 s6Step21ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step21ExitGvExtra ++ []))) s6Step21ExitF_Incoming s6Step21ExitF_checked h2 s6Step21ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step21ExitGBefore s6Step21ExitGAfter s6Step21ExitGvAfter
    s6Step21ExitGRow s6Step21ExitGOut 255 [] [(s6Step21ExitFRow,256),(s6Step21ExitFvRow,23),(s6Step21ExitGvRow,21)] [[],[],[]] [s6Step21ExitFOut,s6Step21ExitFvOut,s6Step21ExitGvOut]
    (shrinkRow 777 s6Step21ExitGExtra) ((shrinkRow 795 s6Step21ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step21ExitGvExtra ++ [])))) s6Step21ExitG_Incoming s6Step21ExitG_checked h1 s6Step21ExitG_Outgoing
  exact h0
theorem s6Step21ExitBank_checked : compileHmrBankResizeLog .exit s6Step21ExitGBefore ⟨s6Step21ExitFRow,s6Step21ExitGRow,s6Step21ExitFvRow,s6Step21ExitGvRow⟩ ⟨256,255,23,21⟩ [[],[],[],[]]=
    some (s6Step21ExitGvAfter,⟨s6Step21ExitFOut,s6Step21ExitGOut,s6Step21ExitFvOut,s6Step21ExitGvOut⟩,(shrinkRow 777 s6Step21ExitGExtra ++ (shrinkRow 795 s6Step21ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step21ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step21ExitBank_rows]
  rfl
theorem s6Step22ExitBank_incomingDistinct : ([s6Step22ExitGRow,s6Step22ExitFRow,s6Step22ExitFvRow,s6Step22ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22ExitBank_outgoingOwned : rowsOwned s6Step22ExitGvAfter [s6Step22ExitGOut,s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step22ExitGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22ExitG_Incoming : rowsOwned s6Step22ExitGBefore [s6Step22ExitGRow,s6Step22ExitFRow,s6Step22ExitFvRow,s6Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22ExitGRow,s6Step22ExitFRow,s6Step22ExitFvRow,s6Step22ExitGvRow] 0 s6Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22ExitGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22ExitG_Outgoing : rowsOwned s6Step22ExitGvAfter [s6Step22ExitGOut,s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut] :=
  hmrRows_owned_drop s6Step22ExitGvAfter [s6Step22ExitGOut,s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut] 0 s6Step22ExitBank_outgoingOwned
theorem s6Step22ExitF_Incoming : rowsOwned s6Step22ExitFBefore [s6Step22ExitFRow,s6Step22ExitFvRow,s6Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22ExitGRow,s6Step22ExitFRow,s6Step22ExitFvRow,s6Step22ExitGvRow] 1 s6Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22ExitFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22ExitF_Outgoing : rowsOwned s6Step22ExitGvAfter [s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut] :=
  hmrRows_owned_drop s6Step22ExitGvAfter [s6Step22ExitGOut,s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut] 1 s6Step22ExitBank_outgoingOwned
theorem s6Step22ExitFv_Incoming : rowsOwned s6Step22ExitFvBefore [s6Step22ExitFvRow,s6Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22ExitGRow,s6Step22ExitFRow,s6Step22ExitFvRow,s6Step22ExitGvRow] 2 s6Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22ExitFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22ExitFv_Outgoing : rowsOwned s6Step22ExitGvAfter [s6Step22ExitFvOut,s6Step22ExitGvOut] :=
  hmrRows_owned_drop s6Step22ExitGvAfter [s6Step22ExitGOut,s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut] 2 s6Step22ExitBank_outgoingOwned
theorem s6Step22ExitGv_Incoming : rowsOwned s6Step22ExitGvBefore [s6Step22ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22ExitGRow,s6Step22ExitFRow,s6Step22ExitFvRow,s6Step22ExitGvRow] 3 s6Step22ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22ExitGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22ExitGv_Outgoing : rowsOwned s6Step22ExitGvAfter [s6Step22ExitGvOut] :=
  hmrRows_owned_drop s6Step22ExitGvAfter [s6Step22ExitGOut,s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut] 3 s6Step22ExitBank_outgoingOwned
theorem s6Step22ExitBank_rows : planWindowRowsLog s6Step22ExitGBefore [(s6Step22ExitGRow,255),(s6Step22ExitFRow,256),(s6Step22ExitFvRow,24),(s6Step22ExitGvRow,22)] [[],[],[],[]]=
    some (s6Step22ExitGvAfter,[s6Step22ExitGOut,s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut],(shrinkRow 777 s6Step22ExitGExtra ++ (shrinkRow 795 s6Step22ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step22ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step22ExitGvAfter [] []=some (s6Step22ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step22ExitGvBefore s6Step22ExitGvAfter s6Step22ExitGvAfter
    s6Step22ExitGvRow s6Step22ExitGvOut 22 [] [] [] []
    (shrinkRow 775 s6Step22ExitGvExtra) ([]) s6Step22ExitGv_Incoming s6Step22ExitGv_checked h4 s6Step22ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step22ExitFvBefore s6Step22ExitFvAfter s6Step22ExitGvAfter
    s6Step22ExitFvRow s6Step22ExitFvOut 24 [] [(s6Step22ExitGvRow,22)] [[]] [s6Step22ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step22ExitGvExtra ++ [])) s6Step22ExitFv_Incoming s6Step22ExitFv_checked h3 s6Step22ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step22ExitFBefore s6Step22ExitFAfter s6Step22ExitGvAfter
    s6Step22ExitFRow s6Step22ExitFOut 256 [] [(s6Step22ExitFvRow,24),(s6Step22ExitGvRow,22)] [[],[]] [s6Step22ExitFvOut,s6Step22ExitGvOut]
    (shrinkRow 795 s6Step22ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step22ExitGvExtra ++ []))) s6Step22ExitF_Incoming s6Step22ExitF_checked h2 s6Step22ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step22ExitGBefore s6Step22ExitGAfter s6Step22ExitGvAfter
    s6Step22ExitGRow s6Step22ExitGOut 255 [] [(s6Step22ExitFRow,256),(s6Step22ExitFvRow,24),(s6Step22ExitGvRow,22)] [[],[],[]] [s6Step22ExitFOut,s6Step22ExitFvOut,s6Step22ExitGvOut]
    (shrinkRow 777 s6Step22ExitGExtra) ((shrinkRow 795 s6Step22ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step22ExitGvExtra ++ [])))) s6Step22ExitG_Incoming s6Step22ExitG_checked h1 s6Step22ExitG_Outgoing
  exact h0
theorem s6Step22ExitBank_checked : compileHmrBankResizeLog .exit s6Step22ExitGBefore ⟨s6Step22ExitFRow,s6Step22ExitGRow,s6Step22ExitFvRow,s6Step22ExitGvRow⟩ ⟨256,255,24,22⟩ [[],[],[],[]]=
    some (s6Step22ExitGvAfter,⟨s6Step22ExitFOut,s6Step22ExitGOut,s6Step22ExitFvOut,s6Step22ExitGvOut⟩,(shrinkRow 777 s6Step22ExitGExtra ++ (shrinkRow 795 s6Step22ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step22ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step22ExitBank_rows]
  rfl
theorem s6Step23ExitBank_incomingDistinct : ([s6Step23ExitGRow,s6Step23ExitFRow,s6Step23ExitFvRow,s6Step23ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23ExitBank_outgoingOwned : rowsOwned s6Step23ExitGvAfter [s6Step23ExitGOut,s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step23ExitGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23ExitG_Incoming : rowsOwned s6Step23ExitGBefore [s6Step23ExitGRow,s6Step23ExitFRow,s6Step23ExitFvRow,s6Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23ExitGRow,s6Step23ExitFRow,s6Step23ExitFvRow,s6Step23ExitGvRow] 0 s6Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23ExitGBefore (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23ExitG_Outgoing : rowsOwned s6Step23ExitGvAfter [s6Step23ExitGOut,s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut] :=
  hmrRows_owned_drop s6Step23ExitGvAfter [s6Step23ExitGOut,s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut] 0 s6Step23ExitBank_outgoingOwned
theorem s6Step23ExitF_Incoming : rowsOwned s6Step23ExitFBefore [s6Step23ExitFRow,s6Step23ExitFvRow,s6Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23ExitGRow,s6Step23ExitFRow,s6Step23ExitFvRow,s6Step23ExitGvRow] 1 s6Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23ExitFBefore (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23ExitF_Outgoing : rowsOwned s6Step23ExitGvAfter [s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut] :=
  hmrRows_owned_drop s6Step23ExitGvAfter [s6Step23ExitGOut,s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut] 1 s6Step23ExitBank_outgoingOwned
theorem s6Step23ExitFv_Incoming : rowsOwned s6Step23ExitFvBefore [s6Step23ExitFvRow,s6Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23ExitGRow,s6Step23ExitFRow,s6Step23ExitFvRow,s6Step23ExitGvRow] 2 s6Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23ExitFvBefore (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23ExitFv_Outgoing : rowsOwned s6Step23ExitGvAfter [s6Step23ExitFvOut,s6Step23ExitGvOut] :=
  hmrRows_owned_drop s6Step23ExitGvAfter [s6Step23ExitGOut,s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut] 2 s6Step23ExitBank_outgoingOwned
theorem s6Step23ExitGv_Incoming : rowsOwned s6Step23ExitGvBefore [s6Step23ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23ExitGRow,s6Step23ExitFRow,s6Step23ExitFvRow,s6Step23ExitGvRow] 3 s6Step23ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23ExitGvBefore (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23ExitGv_Outgoing : rowsOwned s6Step23ExitGvAfter [s6Step23ExitGvOut] :=
  hmrRows_owned_drop s6Step23ExitGvAfter [s6Step23ExitGOut,s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut] 3 s6Step23ExitBank_outgoingOwned
theorem s6Step23ExitBank_rows : planWindowRowsLog s6Step23ExitGBefore [(s6Step23ExitGRow,255),(s6Step23ExitFRow,256),(s6Step23ExitFvRow,25),(s6Step23ExitGvRow,23)] [[],[],[],[]]=
    some (s6Step23ExitGvAfter,[s6Step23ExitGOut,s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut],(shrinkRow 777 s6Step23ExitGExtra ++ (shrinkRow 795 s6Step23ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step23ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step23ExitGvAfter [] []=some (s6Step23ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step23ExitGvBefore s6Step23ExitGvAfter s6Step23ExitGvAfter
    s6Step23ExitGvRow s6Step23ExitGvOut 23 [] [] [] []
    (shrinkRow 775 s6Step23ExitGvExtra) ([]) s6Step23ExitGv_Incoming s6Step23ExitGv_checked h4 s6Step23ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step23ExitFvBefore s6Step23ExitFvAfter s6Step23ExitGvAfter
    s6Step23ExitFvRow s6Step23ExitFvOut 25 [] [(s6Step23ExitGvRow,23)] [[]] [s6Step23ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step23ExitGvExtra ++ [])) s6Step23ExitFv_Incoming s6Step23ExitFv_checked h3 s6Step23ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step23ExitFBefore s6Step23ExitFAfter s6Step23ExitGvAfter
    s6Step23ExitFRow s6Step23ExitFOut 256 [] [(s6Step23ExitFvRow,25),(s6Step23ExitGvRow,23)] [[],[]] [s6Step23ExitFvOut,s6Step23ExitGvOut]
    (shrinkRow 795 s6Step23ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step23ExitGvExtra ++ []))) s6Step23ExitF_Incoming s6Step23ExitF_checked h2 s6Step23ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step23ExitGBefore s6Step23ExitGAfter s6Step23ExitGvAfter
    s6Step23ExitGRow s6Step23ExitGOut 255 [] [(s6Step23ExitFRow,256),(s6Step23ExitFvRow,25),(s6Step23ExitGvRow,23)] [[],[],[]] [s6Step23ExitFOut,s6Step23ExitFvOut,s6Step23ExitGvOut]
    (shrinkRow 777 s6Step23ExitGExtra) ((shrinkRow 795 s6Step23ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step23ExitGvExtra ++ [])))) s6Step23ExitG_Incoming s6Step23ExitG_checked h1 s6Step23ExitG_Outgoing
  exact h0
theorem s6Step23ExitBank_checked : compileHmrBankResizeLog .exit s6Step23ExitGBefore ⟨s6Step23ExitFRow,s6Step23ExitGRow,s6Step23ExitFvRow,s6Step23ExitGvRow⟩ ⟨256,255,25,23⟩ [[],[],[],[]]=
    some (s6Step23ExitGvAfter,⟨s6Step23ExitFOut,s6Step23ExitGOut,s6Step23ExitFvOut,s6Step23ExitGvOut⟩,(shrinkRow 777 s6Step23ExitGExtra ++ (shrinkRow 795 s6Step23ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step23ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step23ExitBank_rows]
  rfl
theorem s6Step24ExitBank_incomingDistinct : ([s6Step24ExitGRow,s6Step24ExitFRow,s6Step24ExitFvRow,s6Step24ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24ExitBank_outgoingOwned : rowsOwned s6Step24ExitGvAfter [s6Step24ExitGOut,s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step24ExitGvAfter (fun q => ([(0,254),(255,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24ExitG_Incoming : rowsOwned s6Step24ExitGBefore [s6Step24ExitGRow,s6Step24ExitFRow,s6Step24ExitFvRow,s6Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24ExitGRow,s6Step24ExitFRow,s6Step24ExitFvRow,s6Step24ExitGvRow] 0 s6Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24ExitGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24ExitG_Outgoing : rowsOwned s6Step24ExitGvAfter [s6Step24ExitGOut,s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut] :=
  hmrRows_owned_drop s6Step24ExitGvAfter [s6Step24ExitGOut,s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut] 0 s6Step24ExitBank_outgoingOwned
theorem s6Step24ExitF_Incoming : rowsOwned s6Step24ExitFBefore [s6Step24ExitFRow,s6Step24ExitFvRow,s6Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24ExitGRow,s6Step24ExitFRow,s6Step24ExitFvRow,s6Step24ExitGvRow] 1 s6Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24ExitFBefore (fun q => ([(0,254),(255,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24ExitF_Outgoing : rowsOwned s6Step24ExitGvAfter [s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut] :=
  hmrRows_owned_drop s6Step24ExitGvAfter [s6Step24ExitGOut,s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut] 1 s6Step24ExitBank_outgoingOwned
theorem s6Step24ExitFv_Incoming : rowsOwned s6Step24ExitFvBefore [s6Step24ExitFvRow,s6Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24ExitGRow,s6Step24ExitFRow,s6Step24ExitFvRow,s6Step24ExitGvRow] 2 s6Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24ExitFvBefore (fun q => ([(0,254),(255,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24ExitFv_Outgoing : rowsOwned s6Step24ExitGvAfter [s6Step24ExitFvOut,s6Step24ExitGvOut] :=
  hmrRows_owned_drop s6Step24ExitGvAfter [s6Step24ExitGOut,s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut] 2 s6Step24ExitBank_outgoingOwned
theorem s6Step24ExitGv_Incoming : rowsOwned s6Step24ExitGvBefore [s6Step24ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24ExitGRow,s6Step24ExitFRow,s6Step24ExitFvRow,s6Step24ExitGvRow] 3 s6Step24ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24ExitGvBefore (fun q => ([(0,254),(255,511),(512,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24ExitGv_Outgoing : rowsOwned s6Step24ExitGvAfter [s6Step24ExitGvOut] :=
  hmrRows_owned_drop s6Step24ExitGvAfter [s6Step24ExitGOut,s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut] 3 s6Step24ExitBank_outgoingOwned
theorem s6Step24ExitBank_rows : planWindowRowsLog s6Step24ExitGBefore [(s6Step24ExitGRow,254),(s6Step24ExitFRow,255),(s6Step24ExitFvRow,25),(s6Step24ExitGvRow,24)] [[],[],[],[]]=
    some (s6Step24ExitGvAfter,[s6Step24ExitGOut,s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut],(shrinkRow 777 s6Step24ExitGExtra ++ (shrinkRow 795 s6Step24ExitFExtra ++ (shrinkRow 776 s6Step24ExitFvExtra ++ (shrinkRow 775 s6Step24ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step24ExitGvAfter [] []=some (s6Step24ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step24ExitGvBefore s6Step24ExitGvAfter s6Step24ExitGvAfter
    s6Step24ExitGvRow s6Step24ExitGvOut 24 [] [] [] []
    (shrinkRow 775 s6Step24ExitGvExtra) ([]) s6Step24ExitGv_Incoming s6Step24ExitGv_checked h4 s6Step24ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step24ExitFvBefore s6Step24ExitFvAfter s6Step24ExitGvAfter
    s6Step24ExitFvRow s6Step24ExitFvOut 25 [] [(s6Step24ExitGvRow,24)] [[]] [s6Step24ExitGvOut]
    (shrinkRow 776 s6Step24ExitFvExtra) ((shrinkRow 775 s6Step24ExitGvExtra ++ [])) s6Step24ExitFv_Incoming s6Step24ExitFv_checked h3 s6Step24ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step24ExitFBefore s6Step24ExitFAfter s6Step24ExitGvAfter
    s6Step24ExitFRow s6Step24ExitFOut 255 [] [(s6Step24ExitFvRow,25),(s6Step24ExitGvRow,24)] [[],[]] [s6Step24ExitFvOut,s6Step24ExitGvOut]
    (shrinkRow 795 s6Step24ExitFExtra) ((shrinkRow 776 s6Step24ExitFvExtra ++ (shrinkRow 775 s6Step24ExitGvExtra ++ []))) s6Step24ExitF_Incoming s6Step24ExitF_checked h2 s6Step24ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step24ExitGBefore s6Step24ExitGAfter s6Step24ExitGvAfter
    s6Step24ExitGRow s6Step24ExitGOut 254 [] [(s6Step24ExitFRow,255),(s6Step24ExitFvRow,25),(s6Step24ExitGvRow,24)] [[],[],[]] [s6Step24ExitFOut,s6Step24ExitFvOut,s6Step24ExitGvOut]
    (shrinkRow 777 s6Step24ExitGExtra) ((shrinkRow 795 s6Step24ExitFExtra ++ (shrinkRow 776 s6Step24ExitFvExtra ++ (shrinkRow 775 s6Step24ExitGvExtra ++ [])))) s6Step24ExitG_Incoming s6Step24ExitG_checked h1 s6Step24ExitG_Outgoing
  exact h0
theorem s6Step24ExitBank_checked : compileHmrBankResizeLog .exit s6Step24ExitGBefore ⟨s6Step24ExitFRow,s6Step24ExitGRow,s6Step24ExitFvRow,s6Step24ExitGvRow⟩ ⟨255,254,25,24⟩ [[],[],[],[]]=
    some (s6Step24ExitGvAfter,⟨s6Step24ExitFOut,s6Step24ExitGOut,s6Step24ExitFvOut,s6Step24ExitGvOut⟩,(shrinkRow 777 s6Step24ExitGExtra ++ (shrinkRow 795 s6Step24ExitFExtra ++ (shrinkRow 776 s6Step24ExitFvExtra ++ (shrinkRow 775 s6Step24ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step24ExitBank_rows]
  rfl
theorem s6Step25ExitBank_incomingDistinct : ([s6Step25ExitGRow,s6Step25ExitFRow,s6Step25ExitFvRow,s6Step25ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25ExitBank_outgoingOwned : rowsOwned s6Step25ExitGvAfter [s6Step25ExitGOut,s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step25ExitGvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25ExitG_Incoming : rowsOwned s6Step25ExitGBefore [s6Step25ExitGRow,s6Step25ExitFRow,s6Step25ExitFvRow,s6Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25ExitGRow,s6Step25ExitFRow,s6Step25ExitFvRow,s6Step25ExitGvRow] 0 s6Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25ExitGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25ExitG_Outgoing : rowsOwned s6Step25ExitGvAfter [s6Step25ExitGOut,s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut] :=
  hmrRows_owned_drop s6Step25ExitGvAfter [s6Step25ExitGOut,s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut] 0 s6Step25ExitBank_outgoingOwned
theorem s6Step25ExitF_Incoming : rowsOwned s6Step25ExitFBefore [s6Step25ExitFRow,s6Step25ExitFvRow,s6Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25ExitGRow,s6Step25ExitFRow,s6Step25ExitFvRow,s6Step25ExitGvRow] 1 s6Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25ExitFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25ExitF_Outgoing : rowsOwned s6Step25ExitGvAfter [s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut] :=
  hmrRows_owned_drop s6Step25ExitGvAfter [s6Step25ExitGOut,s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut] 1 s6Step25ExitBank_outgoingOwned
theorem s6Step25ExitFv_Incoming : rowsOwned s6Step25ExitFvBefore [s6Step25ExitFvRow,s6Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25ExitGRow,s6Step25ExitFRow,s6Step25ExitFvRow,s6Step25ExitGvRow] 2 s6Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25ExitFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25ExitFv_Outgoing : rowsOwned s6Step25ExitGvAfter [s6Step25ExitFvOut,s6Step25ExitGvOut] :=
  hmrRows_owned_drop s6Step25ExitGvAfter [s6Step25ExitGOut,s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut] 2 s6Step25ExitBank_outgoingOwned
theorem s6Step25ExitGv_Incoming : rowsOwned s6Step25ExitGvBefore [s6Step25ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25ExitGRow,s6Step25ExitFRow,s6Step25ExitFvRow,s6Step25ExitGvRow] 3 s6Step25ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25ExitGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25ExitGv_Outgoing : rowsOwned s6Step25ExitGvAfter [s6Step25ExitGvOut] :=
  hmrRows_owned_drop s6Step25ExitGvAfter [s6Step25ExitGOut,s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut] 3 s6Step25ExitBank_outgoingOwned
theorem s6Step25ExitBank_rows : planWindowRowsLog s6Step25ExitGBefore [(s6Step25ExitGRow,254),(s6Step25ExitFRow,255),(s6Step25ExitFvRow,26),(s6Step25ExitGvRow,25)] [[],[],[],[]]=
    some (s6Step25ExitGvAfter,[s6Step25ExitGOut,s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut],(shrinkRow 777 s6Step25ExitGExtra ++ (shrinkRow 795 s6Step25ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step25ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step25ExitGvAfter [] []=some (s6Step25ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step25ExitGvBefore s6Step25ExitGvAfter s6Step25ExitGvAfter
    s6Step25ExitGvRow s6Step25ExitGvOut 25 [] [] [] []
    (shrinkRow 775 s6Step25ExitGvExtra) ([]) s6Step25ExitGv_Incoming s6Step25ExitGv_checked h4 s6Step25ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step25ExitFvBefore s6Step25ExitFvAfter s6Step25ExitGvAfter
    s6Step25ExitFvRow s6Step25ExitFvOut 26 [] [(s6Step25ExitGvRow,25)] [[]] [s6Step25ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step25ExitGvExtra ++ [])) s6Step25ExitFv_Incoming s6Step25ExitFv_checked h3 s6Step25ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step25ExitFBefore s6Step25ExitFAfter s6Step25ExitGvAfter
    s6Step25ExitFRow s6Step25ExitFOut 255 [] [(s6Step25ExitFvRow,26),(s6Step25ExitGvRow,25)] [[],[]] [s6Step25ExitFvOut,s6Step25ExitGvOut]
    (shrinkRow 795 s6Step25ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step25ExitGvExtra ++ []))) s6Step25ExitF_Incoming s6Step25ExitF_checked h2 s6Step25ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step25ExitGBefore s6Step25ExitGAfter s6Step25ExitGvAfter
    s6Step25ExitGRow s6Step25ExitGOut 254 [] [(s6Step25ExitFRow,255),(s6Step25ExitFvRow,26),(s6Step25ExitGvRow,25)] [[],[],[]] [s6Step25ExitFOut,s6Step25ExitFvOut,s6Step25ExitGvOut]
    (shrinkRow 777 s6Step25ExitGExtra) ((shrinkRow 795 s6Step25ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step25ExitGvExtra ++ [])))) s6Step25ExitG_Incoming s6Step25ExitG_checked h1 s6Step25ExitG_Outgoing
  exact h0
theorem s6Step25ExitBank_checked : compileHmrBankResizeLog .exit s6Step25ExitGBefore ⟨s6Step25ExitFRow,s6Step25ExitGRow,s6Step25ExitFvRow,s6Step25ExitGvRow⟩ ⟨255,254,26,25⟩ [[],[],[],[]]=
    some (s6Step25ExitGvAfter,⟨s6Step25ExitFOut,s6Step25ExitGOut,s6Step25ExitFvOut,s6Step25ExitGvOut⟩,(shrinkRow 777 s6Step25ExitGExtra ++ (shrinkRow 795 s6Step25ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step25ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step25ExitBank_rows]
  rfl
theorem s6Step26ExitBank_incomingDistinct : ([s6Step26ExitGRow,s6Step26ExitFRow,s6Step26ExitFvRow,s6Step26ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26ExitBank_outgoingOwned : rowsOwned s6Step26ExitGvAfter [s6Step26ExitGOut,s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step26ExitGvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26ExitG_Incoming : rowsOwned s6Step26ExitGBefore [s6Step26ExitGRow,s6Step26ExitFRow,s6Step26ExitFvRow,s6Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26ExitGRow,s6Step26ExitFRow,s6Step26ExitFvRow,s6Step26ExitGvRow] 0 s6Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26ExitGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26ExitG_Outgoing : rowsOwned s6Step26ExitGvAfter [s6Step26ExitGOut,s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut] :=
  hmrRows_owned_drop s6Step26ExitGvAfter [s6Step26ExitGOut,s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut] 0 s6Step26ExitBank_outgoingOwned
theorem s6Step26ExitF_Incoming : rowsOwned s6Step26ExitFBefore [s6Step26ExitFRow,s6Step26ExitFvRow,s6Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26ExitGRow,s6Step26ExitFRow,s6Step26ExitFvRow,s6Step26ExitGvRow] 1 s6Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26ExitFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26ExitF_Outgoing : rowsOwned s6Step26ExitGvAfter [s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut] :=
  hmrRows_owned_drop s6Step26ExitGvAfter [s6Step26ExitGOut,s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut] 1 s6Step26ExitBank_outgoingOwned
theorem s6Step26ExitFv_Incoming : rowsOwned s6Step26ExitFvBefore [s6Step26ExitFvRow,s6Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26ExitGRow,s6Step26ExitFRow,s6Step26ExitFvRow,s6Step26ExitGvRow] 2 s6Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26ExitFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26ExitFv_Outgoing : rowsOwned s6Step26ExitGvAfter [s6Step26ExitFvOut,s6Step26ExitGvOut] :=
  hmrRows_owned_drop s6Step26ExitGvAfter [s6Step26ExitGOut,s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut] 2 s6Step26ExitBank_outgoingOwned
theorem s6Step26ExitGv_Incoming : rowsOwned s6Step26ExitGvBefore [s6Step26ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26ExitGRow,s6Step26ExitFRow,s6Step26ExitFvRow,s6Step26ExitGvRow] 3 s6Step26ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26ExitGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26ExitGv_Outgoing : rowsOwned s6Step26ExitGvAfter [s6Step26ExitGvOut] :=
  hmrRows_owned_drop s6Step26ExitGvAfter [s6Step26ExitGOut,s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut] 3 s6Step26ExitBank_outgoingOwned
theorem s6Step26ExitBank_rows : planWindowRowsLog s6Step26ExitGBefore [(s6Step26ExitGRow,254),(s6Step26ExitFRow,255),(s6Step26ExitFvRow,27),(s6Step26ExitGvRow,25)] [[],[],[],[]]=
    some (s6Step26ExitGvAfter,[s6Step26ExitGOut,s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut],(shrinkRow 777 s6Step26ExitGExtra ++ (shrinkRow 795 s6Step26ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step26ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step26ExitGvAfter [] []=some (s6Step26ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step26ExitGvBefore s6Step26ExitGvAfter s6Step26ExitGvAfter
    s6Step26ExitGvRow s6Step26ExitGvOut 25 [] [] [] []
    (shrinkRow 775 s6Step26ExitGvExtra) ([]) s6Step26ExitGv_Incoming s6Step26ExitGv_checked h4 s6Step26ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step26ExitFvBefore s6Step26ExitFvAfter s6Step26ExitGvAfter
    s6Step26ExitFvRow s6Step26ExitFvOut 27 [] [(s6Step26ExitGvRow,25)] [[]] [s6Step26ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step26ExitGvExtra ++ [])) s6Step26ExitFv_Incoming s6Step26ExitFv_checked h3 s6Step26ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step26ExitFBefore s6Step26ExitFAfter s6Step26ExitGvAfter
    s6Step26ExitFRow s6Step26ExitFOut 255 [] [(s6Step26ExitFvRow,27),(s6Step26ExitGvRow,25)] [[],[]] [s6Step26ExitFvOut,s6Step26ExitGvOut]
    (shrinkRow 795 s6Step26ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step26ExitGvExtra ++ []))) s6Step26ExitF_Incoming s6Step26ExitF_checked h2 s6Step26ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step26ExitGBefore s6Step26ExitGAfter s6Step26ExitGvAfter
    s6Step26ExitGRow s6Step26ExitGOut 254 [] [(s6Step26ExitFRow,255),(s6Step26ExitFvRow,27),(s6Step26ExitGvRow,25)] [[],[],[]] [s6Step26ExitFOut,s6Step26ExitFvOut,s6Step26ExitGvOut]
    (shrinkRow 777 s6Step26ExitGExtra) ((shrinkRow 795 s6Step26ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step26ExitGvExtra ++ [])))) s6Step26ExitG_Incoming s6Step26ExitG_checked h1 s6Step26ExitG_Outgoing
  exact h0
theorem s6Step26ExitBank_checked : compileHmrBankResizeLog .exit s6Step26ExitGBefore ⟨s6Step26ExitFRow,s6Step26ExitGRow,s6Step26ExitFvRow,s6Step26ExitGvRow⟩ ⟨255,254,27,25⟩ [[],[],[],[]]=
    some (s6Step26ExitGvAfter,⟨s6Step26ExitFOut,s6Step26ExitGOut,s6Step26ExitFvOut,s6Step26ExitGvOut⟩,(shrinkRow 777 s6Step26ExitGExtra ++ (shrinkRow 795 s6Step26ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step26ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step26ExitBank_rows]
  rfl
theorem s6Step27ExitBank_incomingDistinct : ([s6Step27ExitGRow,s6Step27ExitFRow,s6Step27ExitFvRow,s6Step27ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27ExitBank_outgoingOwned : rowsOwned s6Step27ExitGvAfter [s6Step27ExitGOut,s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step27ExitGvAfter (fun q => ([(0,253),(254,510),(511,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27ExitG_Incoming : rowsOwned s6Step27ExitGBefore [s6Step27ExitGRow,s6Step27ExitFRow,s6Step27ExitFvRow,s6Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27ExitGRow,s6Step27ExitFRow,s6Step27ExitFvRow,s6Step27ExitGvRow] 0 s6Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27ExitG_Outgoing : rowsOwned s6Step27ExitGvAfter [s6Step27ExitGOut,s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut] :=
  hmrRows_owned_drop s6Step27ExitGvAfter [s6Step27ExitGOut,s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut] 0 s6Step27ExitBank_outgoingOwned
theorem s6Step27ExitF_Incoming : rowsOwned s6Step27ExitFBefore [s6Step27ExitFRow,s6Step27ExitFvRow,s6Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27ExitGRow,s6Step27ExitFRow,s6Step27ExitFvRow,s6Step27ExitGvRow] 1 s6Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27ExitFBefore (fun q => ([(0,253),(254,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27ExitF_Outgoing : rowsOwned s6Step27ExitGvAfter [s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut] :=
  hmrRows_owned_drop s6Step27ExitGvAfter [s6Step27ExitGOut,s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut] 1 s6Step27ExitBank_outgoingOwned
theorem s6Step27ExitFv_Incoming : rowsOwned s6Step27ExitFvBefore [s6Step27ExitFvRow,s6Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27ExitGRow,s6Step27ExitFRow,s6Step27ExitFvRow,s6Step27ExitGvRow] 2 s6Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27ExitFvBefore (fun q => ([(0,253),(254,510),(511,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27ExitFv_Outgoing : rowsOwned s6Step27ExitGvAfter [s6Step27ExitFvOut,s6Step27ExitGvOut] :=
  hmrRows_owned_drop s6Step27ExitGvAfter [s6Step27ExitGOut,s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut] 2 s6Step27ExitBank_outgoingOwned
theorem s6Step27ExitGv_Incoming : rowsOwned s6Step27ExitGvBefore [s6Step27ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27ExitGRow,s6Step27ExitFRow,s6Step27ExitFvRow,s6Step27ExitGvRow] 3 s6Step27ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27ExitGvBefore (fun q => ([(0,253),(254,510),(511,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27ExitGv_Outgoing : rowsOwned s6Step27ExitGvAfter [s6Step27ExitGvOut] :=
  hmrRows_owned_drop s6Step27ExitGvAfter [s6Step27ExitGOut,s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut] 3 s6Step27ExitBank_outgoingOwned
theorem s6Step27ExitBank_rows : planWindowRowsLog s6Step27ExitGBefore [(s6Step27ExitGRow,253),(s6Step27ExitFRow,254),(s6Step27ExitFvRow,28),(s6Step27ExitGvRow,26)] [[],[],[],[]]=
    some (s6Step27ExitGvAfter,[s6Step27ExitGOut,s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut],(shrinkRow 777 s6Step27ExitGExtra ++ (shrinkRow 795 s6Step27ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step27ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step27ExitGvAfter [] []=some (s6Step27ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step27ExitGvBefore s6Step27ExitGvAfter s6Step27ExitGvAfter
    s6Step27ExitGvRow s6Step27ExitGvOut 26 [] [] [] []
    (shrinkRow 775 s6Step27ExitGvExtra) ([]) s6Step27ExitGv_Incoming s6Step27ExitGv_checked h4 s6Step27ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step27ExitFvBefore s6Step27ExitFvAfter s6Step27ExitGvAfter
    s6Step27ExitFvRow s6Step27ExitFvOut 28 [] [(s6Step27ExitGvRow,26)] [[]] [s6Step27ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step27ExitGvExtra ++ [])) s6Step27ExitFv_Incoming s6Step27ExitFv_checked h3 s6Step27ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step27ExitFBefore s6Step27ExitFAfter s6Step27ExitGvAfter
    s6Step27ExitFRow s6Step27ExitFOut 254 [] [(s6Step27ExitFvRow,28),(s6Step27ExitGvRow,26)] [[],[]] [s6Step27ExitFvOut,s6Step27ExitGvOut]
    (shrinkRow 795 s6Step27ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step27ExitGvExtra ++ []))) s6Step27ExitF_Incoming s6Step27ExitF_checked h2 s6Step27ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step27ExitGBefore s6Step27ExitGAfter s6Step27ExitGvAfter
    s6Step27ExitGRow s6Step27ExitGOut 253 [] [(s6Step27ExitFRow,254),(s6Step27ExitFvRow,28),(s6Step27ExitGvRow,26)] [[],[],[]] [s6Step27ExitFOut,s6Step27ExitFvOut,s6Step27ExitGvOut]
    (shrinkRow 777 s6Step27ExitGExtra) ((shrinkRow 795 s6Step27ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step27ExitGvExtra ++ [])))) s6Step27ExitG_Incoming s6Step27ExitG_checked h1 s6Step27ExitG_Outgoing
  exact h0
theorem s6Step27ExitBank_checked : compileHmrBankResizeLog .exit s6Step27ExitGBefore ⟨s6Step27ExitFRow,s6Step27ExitGRow,s6Step27ExitFvRow,s6Step27ExitGvRow⟩ ⟨254,253,28,26⟩ [[],[],[],[]]=
    some (s6Step27ExitGvAfter,⟨s6Step27ExitFOut,s6Step27ExitGOut,s6Step27ExitFvOut,s6Step27ExitGvOut⟩,(shrinkRow 777 s6Step27ExitGExtra ++ (shrinkRow 795 s6Step27ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step27ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step27ExitBank_rows]
  rfl
theorem s6Step28ExitBank_incomingDistinct : ([s6Step28ExitGRow,s6Step28ExitFRow,s6Step28ExitFvRow,s6Step28ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28ExitBank_outgoingOwned : rowsOwned s6Step28ExitGvAfter [s6Step28ExitGOut,s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step28ExitGvAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28ExitG_Incoming : rowsOwned s6Step28ExitGBefore [s6Step28ExitGRow,s6Step28ExitFRow,s6Step28ExitFvRow,s6Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28ExitGRow,s6Step28ExitFRow,s6Step28ExitFvRow,s6Step28ExitGvRow] 0 s6Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28ExitG_Outgoing : rowsOwned s6Step28ExitGvAfter [s6Step28ExitGOut,s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut] :=
  hmrRows_owned_drop s6Step28ExitGvAfter [s6Step28ExitGOut,s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut] 0 s6Step28ExitBank_outgoingOwned
theorem s6Step28ExitF_Incoming : rowsOwned s6Step28ExitFBefore [s6Step28ExitFRow,s6Step28ExitFvRow,s6Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28ExitGRow,s6Step28ExitFRow,s6Step28ExitFvRow,s6Step28ExitGvRow] 1 s6Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28ExitFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28ExitF_Outgoing : rowsOwned s6Step28ExitGvAfter [s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut] :=
  hmrRows_owned_drop s6Step28ExitGvAfter [s6Step28ExitGOut,s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut] 1 s6Step28ExitBank_outgoingOwned
theorem s6Step28ExitFv_Incoming : rowsOwned s6Step28ExitFvBefore [s6Step28ExitFvRow,s6Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28ExitGRow,s6Step28ExitFRow,s6Step28ExitFvRow,s6Step28ExitGvRow] 2 s6Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28ExitFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28ExitFv_Outgoing : rowsOwned s6Step28ExitGvAfter [s6Step28ExitFvOut,s6Step28ExitGvOut] :=
  hmrRows_owned_drop s6Step28ExitGvAfter [s6Step28ExitGOut,s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut] 2 s6Step28ExitBank_outgoingOwned
theorem s6Step28ExitGv_Incoming : rowsOwned s6Step28ExitGvBefore [s6Step28ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28ExitGRow,s6Step28ExitFRow,s6Step28ExitFvRow,s6Step28ExitGvRow] 3 s6Step28ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28ExitGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28ExitGv_Outgoing : rowsOwned s6Step28ExitGvAfter [s6Step28ExitGvOut] :=
  hmrRows_owned_drop s6Step28ExitGvAfter [s6Step28ExitGOut,s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut] 3 s6Step28ExitBank_outgoingOwned
theorem s6Step28ExitBank_rows : planWindowRowsLog s6Step28ExitGBefore [(s6Step28ExitGRow,253),(s6Step28ExitFRow,254),(s6Step28ExitFvRow,28),(s6Step28ExitGvRow,27)] [[],[],[],[]]=
    some (s6Step28ExitGvAfter,[s6Step28ExitGOut,s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut],(shrinkRow 777 s6Step28ExitGExtra ++ (shrinkRow 795 s6Step28ExitFExtra ++ (shrinkRow 776 s6Step28ExitFvExtra ++ (shrinkRow 775 s6Step28ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step28ExitGvAfter [] []=some (s6Step28ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step28ExitGvBefore s6Step28ExitGvAfter s6Step28ExitGvAfter
    s6Step28ExitGvRow s6Step28ExitGvOut 27 [] [] [] []
    (shrinkRow 775 s6Step28ExitGvExtra) ([]) s6Step28ExitGv_Incoming s6Step28ExitGv_checked h4 s6Step28ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step28ExitFvBefore s6Step28ExitFvAfter s6Step28ExitGvAfter
    s6Step28ExitFvRow s6Step28ExitFvOut 28 [] [(s6Step28ExitGvRow,27)] [[]] [s6Step28ExitGvOut]
    (shrinkRow 776 s6Step28ExitFvExtra) ((shrinkRow 775 s6Step28ExitGvExtra ++ [])) s6Step28ExitFv_Incoming s6Step28ExitFv_checked h3 s6Step28ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step28ExitFBefore s6Step28ExitFAfter s6Step28ExitGvAfter
    s6Step28ExitFRow s6Step28ExitFOut 254 [] [(s6Step28ExitFvRow,28),(s6Step28ExitGvRow,27)] [[],[]] [s6Step28ExitFvOut,s6Step28ExitGvOut]
    (shrinkRow 795 s6Step28ExitFExtra) ((shrinkRow 776 s6Step28ExitFvExtra ++ (shrinkRow 775 s6Step28ExitGvExtra ++ []))) s6Step28ExitF_Incoming s6Step28ExitF_checked h2 s6Step28ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step28ExitGBefore s6Step28ExitGAfter s6Step28ExitGvAfter
    s6Step28ExitGRow s6Step28ExitGOut 253 [] [(s6Step28ExitFRow,254),(s6Step28ExitFvRow,28),(s6Step28ExitGvRow,27)] [[],[],[]] [s6Step28ExitFOut,s6Step28ExitFvOut,s6Step28ExitGvOut]
    (shrinkRow 777 s6Step28ExitGExtra) ((shrinkRow 795 s6Step28ExitFExtra ++ (shrinkRow 776 s6Step28ExitFvExtra ++ (shrinkRow 775 s6Step28ExitGvExtra ++ [])))) s6Step28ExitG_Incoming s6Step28ExitG_checked h1 s6Step28ExitG_Outgoing
  exact h0
theorem s6Step28ExitBank_checked : compileHmrBankResizeLog .exit s6Step28ExitGBefore ⟨s6Step28ExitFRow,s6Step28ExitGRow,s6Step28ExitFvRow,s6Step28ExitGvRow⟩ ⟨254,253,28,27⟩ [[],[],[],[]]=
    some (s6Step28ExitGvAfter,⟨s6Step28ExitFOut,s6Step28ExitGOut,s6Step28ExitFvOut,s6Step28ExitGvOut⟩,(shrinkRow 777 s6Step28ExitGExtra ++ (shrinkRow 795 s6Step28ExitFExtra ++ (shrinkRow 776 s6Step28ExitFvExtra ++ (shrinkRow 775 s6Step28ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step28ExitBank_rows]
  rfl
theorem s6Step29ExitBank_incomingDistinct : ([s6Step29ExitGRow,s6Step29ExitFRow,s6Step29ExitFvRow,s6Step29ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29ExitBank_outgoingOwned : rowsOwned s6Step29ExitGvAfter [s6Step29ExitGOut,s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step29ExitGvAfter (fun q => ([(0,252),(253,509),(510,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29ExitG_Incoming : rowsOwned s6Step29ExitGBefore [s6Step29ExitGRow,s6Step29ExitFRow,s6Step29ExitFvRow,s6Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29ExitGRow,s6Step29ExitFRow,s6Step29ExitFvRow,s6Step29ExitGvRow] 0 s6Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29ExitG_Outgoing : rowsOwned s6Step29ExitGvAfter [s6Step29ExitGOut,s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut] :=
  hmrRows_owned_drop s6Step29ExitGvAfter [s6Step29ExitGOut,s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut] 0 s6Step29ExitBank_outgoingOwned
theorem s6Step29ExitF_Incoming : rowsOwned s6Step29ExitFBefore [s6Step29ExitFRow,s6Step29ExitFvRow,s6Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29ExitGRow,s6Step29ExitFRow,s6Step29ExitFvRow,s6Step29ExitGvRow] 1 s6Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29ExitFBefore (fun q => ([(0,252),(253,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29ExitF_Outgoing : rowsOwned s6Step29ExitGvAfter [s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut] :=
  hmrRows_owned_drop s6Step29ExitGvAfter [s6Step29ExitGOut,s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut] 1 s6Step29ExitBank_outgoingOwned
theorem s6Step29ExitFv_Incoming : rowsOwned s6Step29ExitFvBefore [s6Step29ExitFvRow,s6Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29ExitGRow,s6Step29ExitFRow,s6Step29ExitFvRow,s6Step29ExitGvRow] 2 s6Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29ExitFvBefore (fun q => ([(0,252),(253,509),(510,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29ExitFv_Outgoing : rowsOwned s6Step29ExitGvAfter [s6Step29ExitFvOut,s6Step29ExitGvOut] :=
  hmrRows_owned_drop s6Step29ExitGvAfter [s6Step29ExitGOut,s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut] 2 s6Step29ExitBank_outgoingOwned
theorem s6Step29ExitGv_Incoming : rowsOwned s6Step29ExitGvBefore [s6Step29ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29ExitGRow,s6Step29ExitFRow,s6Step29ExitFvRow,s6Step29ExitGvRow] 3 s6Step29ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29ExitGvBefore (fun q => ([(0,252),(253,509),(510,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29ExitGv_Outgoing : rowsOwned s6Step29ExitGvAfter [s6Step29ExitGvOut] :=
  hmrRows_owned_drop s6Step29ExitGvAfter [s6Step29ExitGOut,s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut] 3 s6Step29ExitBank_outgoingOwned
theorem s6Step29ExitBank_rows : planWindowRowsLog s6Step29ExitGBefore [(s6Step29ExitGRow,252),(s6Step29ExitFRow,253),(s6Step29ExitFvRow,29),(s6Step29ExitGvRow,27)] [[],[],[],[]]=
    some (s6Step29ExitGvAfter,[s6Step29ExitGOut,s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut],(shrinkRow 777 s6Step29ExitGExtra ++ (shrinkRow 795 s6Step29ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step29ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step29ExitGvAfter [] []=some (s6Step29ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step29ExitGvBefore s6Step29ExitGvAfter s6Step29ExitGvAfter
    s6Step29ExitGvRow s6Step29ExitGvOut 27 [] [] [] []
    (shrinkRow 775 s6Step29ExitGvExtra) ([]) s6Step29ExitGv_Incoming s6Step29ExitGv_checked h4 s6Step29ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step29ExitFvBefore s6Step29ExitFvAfter s6Step29ExitGvAfter
    s6Step29ExitFvRow s6Step29ExitFvOut 29 [] [(s6Step29ExitGvRow,27)] [[]] [s6Step29ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step29ExitGvExtra ++ [])) s6Step29ExitFv_Incoming s6Step29ExitFv_checked h3 s6Step29ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step29ExitFBefore s6Step29ExitFAfter s6Step29ExitGvAfter
    s6Step29ExitFRow s6Step29ExitFOut 253 [] [(s6Step29ExitFvRow,29),(s6Step29ExitGvRow,27)] [[],[]] [s6Step29ExitFvOut,s6Step29ExitGvOut]
    (shrinkRow 795 s6Step29ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step29ExitGvExtra ++ []))) s6Step29ExitF_Incoming s6Step29ExitF_checked h2 s6Step29ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step29ExitGBefore s6Step29ExitGAfter s6Step29ExitGvAfter
    s6Step29ExitGRow s6Step29ExitGOut 252 [] [(s6Step29ExitFRow,253),(s6Step29ExitFvRow,29),(s6Step29ExitGvRow,27)] [[],[],[]] [s6Step29ExitFOut,s6Step29ExitFvOut,s6Step29ExitGvOut]
    (shrinkRow 777 s6Step29ExitGExtra) ((shrinkRow 795 s6Step29ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step29ExitGvExtra ++ [])))) s6Step29ExitG_Incoming s6Step29ExitG_checked h1 s6Step29ExitG_Outgoing
  exact h0
theorem s6Step29ExitBank_checked : compileHmrBankResizeLog .exit s6Step29ExitGBefore ⟨s6Step29ExitFRow,s6Step29ExitGRow,s6Step29ExitFvRow,s6Step29ExitGvRow⟩ ⟨253,252,29,27⟩ [[],[],[],[]]=
    some (s6Step29ExitGvAfter,⟨s6Step29ExitFOut,s6Step29ExitGOut,s6Step29ExitFvOut,s6Step29ExitGvOut⟩,(shrinkRow 777 s6Step29ExitGExtra ++ (shrinkRow 795 s6Step29ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step29ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step29ExitBank_rows]
  rfl
theorem s6Step30ExitBank_incomingDistinct : ([s6Step30ExitGRow,s6Step30ExitFRow,s6Step30ExitFvRow,s6Step30ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30ExitBank_outgoingOwned : rowsOwned s6Step30ExitGvAfter [s6Step30ExitGOut,s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step30ExitGvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30ExitG_Incoming : rowsOwned s6Step30ExitGBefore [s6Step30ExitGRow,s6Step30ExitFRow,s6Step30ExitFvRow,s6Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30ExitGRow,s6Step30ExitFRow,s6Step30ExitFvRow,s6Step30ExitGvRow] 0 s6Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30ExitGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30ExitG_Outgoing : rowsOwned s6Step30ExitGvAfter [s6Step30ExitGOut,s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut] :=
  hmrRows_owned_drop s6Step30ExitGvAfter [s6Step30ExitGOut,s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut] 0 s6Step30ExitBank_outgoingOwned
theorem s6Step30ExitF_Incoming : rowsOwned s6Step30ExitFBefore [s6Step30ExitFRow,s6Step30ExitFvRow,s6Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30ExitGRow,s6Step30ExitFRow,s6Step30ExitFvRow,s6Step30ExitGvRow] 1 s6Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30ExitFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30ExitF_Outgoing : rowsOwned s6Step30ExitGvAfter [s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut] :=
  hmrRows_owned_drop s6Step30ExitGvAfter [s6Step30ExitGOut,s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut] 1 s6Step30ExitBank_outgoingOwned
theorem s6Step30ExitFv_Incoming : rowsOwned s6Step30ExitFvBefore [s6Step30ExitFvRow,s6Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30ExitGRow,s6Step30ExitFRow,s6Step30ExitFvRow,s6Step30ExitGvRow] 2 s6Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30ExitFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30ExitFv_Outgoing : rowsOwned s6Step30ExitGvAfter [s6Step30ExitFvOut,s6Step30ExitGvOut] :=
  hmrRows_owned_drop s6Step30ExitGvAfter [s6Step30ExitGOut,s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut] 2 s6Step30ExitBank_outgoingOwned
theorem s6Step30ExitGv_Incoming : rowsOwned s6Step30ExitGvBefore [s6Step30ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30ExitGRow,s6Step30ExitFRow,s6Step30ExitFvRow,s6Step30ExitGvRow] 3 s6Step30ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30ExitGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30ExitGv_Outgoing : rowsOwned s6Step30ExitGvAfter [s6Step30ExitGvOut] :=
  hmrRows_owned_drop s6Step30ExitGvAfter [s6Step30ExitGOut,s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut] 3 s6Step30ExitBank_outgoingOwned
theorem s6Step30ExitBank_rows : planWindowRowsLog s6Step30ExitGBefore [(s6Step30ExitGRow,252),(s6Step30ExitFRow,253),(s6Step30ExitFvRow,29),(s6Step30ExitGvRow,28)] [[],[],[],[]]=
    some (s6Step30ExitGvAfter,[s6Step30ExitGOut,s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut],(shrinkRow 777 s6Step30ExitGExtra ++ (shrinkRow 795 s6Step30ExitFExtra ++ (shrinkRow 776 s6Step30ExitFvExtra ++ (shrinkRow 775 s6Step30ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step30ExitGvAfter [] []=some (s6Step30ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step30ExitGvBefore s6Step30ExitGvAfter s6Step30ExitGvAfter
    s6Step30ExitGvRow s6Step30ExitGvOut 28 [] [] [] []
    (shrinkRow 775 s6Step30ExitGvExtra) ([]) s6Step30ExitGv_Incoming s6Step30ExitGv_checked h4 s6Step30ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step30ExitFvBefore s6Step30ExitFvAfter s6Step30ExitGvAfter
    s6Step30ExitFvRow s6Step30ExitFvOut 29 [] [(s6Step30ExitGvRow,28)] [[]] [s6Step30ExitGvOut]
    (shrinkRow 776 s6Step30ExitFvExtra) ((shrinkRow 775 s6Step30ExitGvExtra ++ [])) s6Step30ExitFv_Incoming s6Step30ExitFv_checked h3 s6Step30ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step30ExitFBefore s6Step30ExitFAfter s6Step30ExitGvAfter
    s6Step30ExitFRow s6Step30ExitFOut 253 [] [(s6Step30ExitFvRow,29),(s6Step30ExitGvRow,28)] [[],[]] [s6Step30ExitFvOut,s6Step30ExitGvOut]
    (shrinkRow 795 s6Step30ExitFExtra) ((shrinkRow 776 s6Step30ExitFvExtra ++ (shrinkRow 775 s6Step30ExitGvExtra ++ []))) s6Step30ExitF_Incoming s6Step30ExitF_checked h2 s6Step30ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step30ExitGBefore s6Step30ExitGAfter s6Step30ExitGvAfter
    s6Step30ExitGRow s6Step30ExitGOut 252 [] [(s6Step30ExitFRow,253),(s6Step30ExitFvRow,29),(s6Step30ExitGvRow,28)] [[],[],[]] [s6Step30ExitFOut,s6Step30ExitFvOut,s6Step30ExitGvOut]
    (shrinkRow 777 s6Step30ExitGExtra) ((shrinkRow 795 s6Step30ExitFExtra ++ (shrinkRow 776 s6Step30ExitFvExtra ++ (shrinkRow 775 s6Step30ExitGvExtra ++ [])))) s6Step30ExitG_Incoming s6Step30ExitG_checked h1 s6Step30ExitG_Outgoing
  exact h0
theorem s6Step30ExitBank_checked : compileHmrBankResizeLog .exit s6Step30ExitGBefore ⟨s6Step30ExitFRow,s6Step30ExitGRow,s6Step30ExitFvRow,s6Step30ExitGvRow⟩ ⟨253,252,29,28⟩ [[],[],[],[]]=
    some (s6Step30ExitGvAfter,⟨s6Step30ExitFOut,s6Step30ExitGOut,s6Step30ExitFvOut,s6Step30ExitGvOut⟩,(shrinkRow 777 s6Step30ExitGExtra ++ (shrinkRow 795 s6Step30ExitFExtra ++ (shrinkRow 776 s6Step30ExitFvExtra ++ (shrinkRow 775 s6Step30ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step30ExitBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
