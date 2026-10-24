import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk4

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step15HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860],777⟩
def s6Step15HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813],795⟩
def s6Step15HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887, 780],775⟩
def s6Step15HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833],776⟩
theorem s6Step15HeadBank_incomingDistinct : ([s6Step15HeadGRow,s6Step15HeadFRow,s6Step15HeadGvRow,s6Step15HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15HeadBank_outgoingOwned : rowsOwned s6Step15HeadFvAfter [s6Step15HeadGOut,s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step15HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15HeadG_Incoming : rowsOwned s6Step15HeadGBefore [s6Step15HeadGRow,s6Step15HeadFRow,s6Step15HeadGvRow,s6Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15HeadGRow,s6Step15HeadFRow,s6Step15HeadGvRow,s6Step15HeadFvRow] 0 s6Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15HeadG_Outgoing : rowsOwned s6Step15HeadFvAfter [s6Step15HeadGOut,s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut] :=
  hmrRows_owned_drop s6Step15HeadFvAfter [s6Step15HeadGOut,s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut] 0 s6Step15HeadBank_outgoingOwned
theorem s6Step15HeadF_Incoming : rowsOwned s6Step15HeadFBefore [s6Step15HeadFRow,s6Step15HeadGvRow,s6Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15HeadGRow,s6Step15HeadFRow,s6Step15HeadGvRow,s6Step15HeadFvRow] 1 s6Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15HeadF_Outgoing : rowsOwned s6Step15HeadFvAfter [s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut] :=
  hmrRows_owned_drop s6Step15HeadFvAfter [s6Step15HeadGOut,s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut] 1 s6Step15HeadBank_outgoingOwned
theorem s6Step15HeadGv_Incoming : rowsOwned s6Step15HeadGvBefore [s6Step15HeadGvRow,s6Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15HeadGRow,s6Step15HeadFRow,s6Step15HeadGvRow,s6Step15HeadFvRow] 2 s6Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15HeadGv_Outgoing : rowsOwned s6Step15HeadFvAfter [s6Step15HeadGvOut,s6Step15HeadFvOut] :=
  hmrRows_owned_drop s6Step15HeadFvAfter [s6Step15HeadGOut,s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut] 2 s6Step15HeadBank_outgoingOwned
theorem s6Step15HeadFv_Incoming : rowsOwned s6Step15HeadFvBefore [s6Step15HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15HeadGRow,s6Step15HeadFRow,s6Step15HeadGvRow,s6Step15HeadFvRow] 3 s6Step15HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15HeadFv_Outgoing : rowsOwned s6Step15HeadFvAfter [s6Step15HeadFvOut] :=
  hmrRows_owned_drop s6Step15HeadFvAfter [s6Step15HeadGOut,s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut] 3 s6Step15HeadBank_outgoingOwned
theorem s6Step15HeadBank_rows : planWindowRowsLog s6Step15HeadGBefore [(s6Step15HeadGRow,257),(s6Step15HeadFRow,257),(s6Step15HeadGvRow,17),(s6Step15HeadFvRow,17)] [s6Step15HeadGFresh,s6Step15HeadFFresh,s6Step15HeadGvFresh,s6Step15HeadFvFresh]=
    some (s6Step15HeadFvAfter,[s6Step15HeadGOut,s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut],(growRow 777 s6Step15HeadGFresh ++ (growRow 795 s6Step15HeadFFresh ++ (growRow 775 s6Step15HeadGvFresh ++ (growRow 776 s6Step15HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step15HeadFvAfter [] []=some (s6Step15HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step15HeadFvBefore s6Step15HeadFvAfter s6Step15HeadFvAfter
    s6Step15HeadFvRow s6Step15HeadFvOut 17 s6Step15HeadFvFresh [] [] []
    (growRow 776 s6Step15HeadFvFresh) ([]) s6Step15HeadFv_Incoming s6Step15HeadFv_checked h4 s6Step15HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step15HeadGvBefore s6Step15HeadGvAfter s6Step15HeadFvAfter
    s6Step15HeadGvRow s6Step15HeadGvOut 17 s6Step15HeadGvFresh [(s6Step15HeadFvRow,17)] [s6Step15HeadFvFresh] [s6Step15HeadFvOut]
    (growRow 775 s6Step15HeadGvFresh) ((growRow 776 s6Step15HeadFvFresh ++ [])) s6Step15HeadGv_Incoming s6Step15HeadGv_checked h3 s6Step15HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step15HeadFBefore s6Step15HeadFAfter s6Step15HeadFvAfter
    s6Step15HeadFRow s6Step15HeadFOut 257 s6Step15HeadFFresh [(s6Step15HeadGvRow,17),(s6Step15HeadFvRow,17)] [s6Step15HeadGvFresh,s6Step15HeadFvFresh] [s6Step15HeadGvOut,s6Step15HeadFvOut]
    (growRow 795 s6Step15HeadFFresh) ((growRow 775 s6Step15HeadGvFresh ++ (growRow 776 s6Step15HeadFvFresh ++ []))) s6Step15HeadF_Incoming s6Step15HeadF_checked h2 s6Step15HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step15HeadGBefore s6Step15HeadGAfter s6Step15HeadFvAfter
    s6Step15HeadGRow s6Step15HeadGOut 257 s6Step15HeadGFresh [(s6Step15HeadFRow,257),(s6Step15HeadGvRow,17),(s6Step15HeadFvRow,17)] [s6Step15HeadFFresh,s6Step15HeadGvFresh,s6Step15HeadFvFresh] [s6Step15HeadFOut,s6Step15HeadGvOut,s6Step15HeadFvOut]
    (growRow 777 s6Step15HeadGFresh) ((growRow 795 s6Step15HeadFFresh ++ (growRow 775 s6Step15HeadGvFresh ++ (growRow 776 s6Step15HeadFvFresh ++ [])))) s6Step15HeadG_Incoming s6Step15HeadG_checked h1 s6Step15HeadG_Outgoing
  exact h0
theorem s6Step15HeadBank_checked : compileHmrBankResizeLog .headroom s6Step15HeadGBefore ⟨s6Step15HeadFRow,s6Step15HeadGRow,s6Step15HeadFvRow,s6Step15HeadGvRow⟩ ⟨257,257,17,17⟩ [s6Step15HeadGFresh,s6Step15HeadFFresh,s6Step15HeadGvFresh,s6Step15HeadFvFresh]=
    some (s6Step15HeadFvAfter,⟨s6Step15HeadFOut,s6Step15HeadGOut,s6Step15HeadFvOut,s6Step15HeadGvOut⟩,(growRow 777 s6Step15HeadGFresh ++ (growRow 795 s6Step15HeadFFresh ++ (growRow 775 s6Step15HeadGvFresh ++ (growRow 776 s6Step15HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step15HeadBank_rows]
  rfl
def s6Step16HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862],777⟩
def s6Step16HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860],795⟩
def s6Step16HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 887, 888],775⟩
def s6Step16HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886],776⟩
theorem s6Step16HeadBank_incomingDistinct : ([s6Step16HeadGRow,s6Step16HeadFRow,s6Step16HeadGvRow,s6Step16HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16HeadBank_outgoingOwned : rowsOwned s6Step16HeadFvAfter [s6Step16HeadGOut,s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step16HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16HeadG_Incoming : rowsOwned s6Step16HeadGBefore [s6Step16HeadGRow,s6Step16HeadFRow,s6Step16HeadGvRow,s6Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16HeadGRow,s6Step16HeadFRow,s6Step16HeadGvRow,s6Step16HeadFvRow] 0 s6Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16HeadG_Outgoing : rowsOwned s6Step16HeadFvAfter [s6Step16HeadGOut,s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut] :=
  hmrRows_owned_drop s6Step16HeadFvAfter [s6Step16HeadGOut,s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut] 0 s6Step16HeadBank_outgoingOwned
theorem s6Step16HeadF_Incoming : rowsOwned s6Step16HeadFBefore [s6Step16HeadFRow,s6Step16HeadGvRow,s6Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16HeadGRow,s6Step16HeadFRow,s6Step16HeadGvRow,s6Step16HeadFvRow] 1 s6Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16HeadF_Outgoing : rowsOwned s6Step16HeadFvAfter [s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut] :=
  hmrRows_owned_drop s6Step16HeadFvAfter [s6Step16HeadGOut,s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut] 1 s6Step16HeadBank_outgoingOwned
theorem s6Step16HeadGv_Incoming : rowsOwned s6Step16HeadGvBefore [s6Step16HeadGvRow,s6Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16HeadGRow,s6Step16HeadFRow,s6Step16HeadGvRow,s6Step16HeadFvRow] 2 s6Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16HeadGv_Outgoing : rowsOwned s6Step16HeadFvAfter [s6Step16HeadGvOut,s6Step16HeadFvOut] :=
  hmrRows_owned_drop s6Step16HeadFvAfter [s6Step16HeadGOut,s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut] 2 s6Step16HeadBank_outgoingOwned
theorem s6Step16HeadFv_Incoming : rowsOwned s6Step16HeadFvBefore [s6Step16HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16HeadGRow,s6Step16HeadFRow,s6Step16HeadGvRow,s6Step16HeadFvRow] 3 s6Step16HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16HeadFv_Outgoing : rowsOwned s6Step16HeadFvAfter [s6Step16HeadFvOut] :=
  hmrRows_owned_drop s6Step16HeadFvAfter [s6Step16HeadGOut,s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut] 3 s6Step16HeadBank_outgoingOwned
theorem s6Step16HeadBank_rows : planWindowRowsLog s6Step16HeadGBefore [(s6Step16HeadGRow,257),(s6Step16HeadFRow,257),(s6Step16HeadGvRow,18),(s6Step16HeadFvRow,18)] [s6Step16HeadGFresh,s6Step16HeadFFresh,s6Step16HeadGvFresh,s6Step16HeadFvFresh]=
    some (s6Step16HeadFvAfter,[s6Step16HeadGOut,s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut],(growRow 777 s6Step16HeadGFresh ++ (growRow 795 s6Step16HeadFFresh ++ (growRow 775 s6Step16HeadGvFresh ++ (growRow 776 s6Step16HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step16HeadFvAfter [] []=some (s6Step16HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step16HeadFvBefore s6Step16HeadFvAfter s6Step16HeadFvAfter
    s6Step16HeadFvRow s6Step16HeadFvOut 18 s6Step16HeadFvFresh [] [] []
    (growRow 776 s6Step16HeadFvFresh) ([]) s6Step16HeadFv_Incoming s6Step16HeadFv_checked h4 s6Step16HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step16HeadGvBefore s6Step16HeadGvAfter s6Step16HeadFvAfter
    s6Step16HeadGvRow s6Step16HeadGvOut 18 s6Step16HeadGvFresh [(s6Step16HeadFvRow,18)] [s6Step16HeadFvFresh] [s6Step16HeadFvOut]
    (growRow 775 s6Step16HeadGvFresh) ((growRow 776 s6Step16HeadFvFresh ++ [])) s6Step16HeadGv_Incoming s6Step16HeadGv_checked h3 s6Step16HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step16HeadFBefore s6Step16HeadFAfter s6Step16HeadFvAfter
    s6Step16HeadFRow s6Step16HeadFOut 257 s6Step16HeadFFresh [(s6Step16HeadGvRow,18),(s6Step16HeadFvRow,18)] [s6Step16HeadGvFresh,s6Step16HeadFvFresh] [s6Step16HeadGvOut,s6Step16HeadFvOut]
    (growRow 795 s6Step16HeadFFresh) ((growRow 775 s6Step16HeadGvFresh ++ (growRow 776 s6Step16HeadFvFresh ++ []))) s6Step16HeadF_Incoming s6Step16HeadF_checked h2 s6Step16HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step16HeadGBefore s6Step16HeadGAfter s6Step16HeadFvAfter
    s6Step16HeadGRow s6Step16HeadGOut 257 s6Step16HeadGFresh [(s6Step16HeadFRow,257),(s6Step16HeadGvRow,18),(s6Step16HeadFvRow,18)] [s6Step16HeadFFresh,s6Step16HeadGvFresh,s6Step16HeadFvFresh] [s6Step16HeadFOut,s6Step16HeadGvOut,s6Step16HeadFvOut]
    (growRow 777 s6Step16HeadGFresh) ((growRow 795 s6Step16HeadFFresh ++ (growRow 775 s6Step16HeadGvFresh ++ (growRow 776 s6Step16HeadFvFresh ++ [])))) s6Step16HeadG_Incoming s6Step16HeadG_checked h1 s6Step16HeadG_Outgoing
  exact h0
theorem s6Step16HeadBank_checked : compileHmrBankResizeLog .headroom s6Step16HeadGBefore ⟨s6Step16HeadFRow,s6Step16HeadGRow,s6Step16HeadFvRow,s6Step16HeadGvRow⟩ ⟨257,257,18,18⟩ [s6Step16HeadGFresh,s6Step16HeadFFresh,s6Step16HeadGvFresh,s6Step16HeadFvFresh]=
    some (s6Step16HeadFvAfter,⟨s6Step16HeadFOut,s6Step16HeadGOut,s6Step16HeadFvOut,s6Step16HeadGvOut⟩,(growRow 777 s6Step16HeadGFresh ++ (growRow 795 s6Step16HeadFFresh ++ (growRow 775 s6Step16HeadGvFresh ++ (growRow 776 s6Step16HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step16HeadBank_rows]
  rfl
def s6Step17HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807],777⟩
def s6Step17HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862],795⟩
def s6Step17HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 887, 778],775⟩
def s6Step17HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838],776⟩
theorem s6Step17HeadBank_incomingDistinct : ([s6Step17HeadGRow,s6Step17HeadFRow,s6Step17HeadGvRow,s6Step17HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17HeadBank_outgoingOwned : rowsOwned s6Step17HeadFvAfter [s6Step17HeadGOut,s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step17HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17HeadG_Incoming : rowsOwned s6Step17HeadGBefore [s6Step17HeadGRow,s6Step17HeadFRow,s6Step17HeadGvRow,s6Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17HeadGRow,s6Step17HeadFRow,s6Step17HeadGvRow,s6Step17HeadFvRow] 0 s6Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17HeadG_Outgoing : rowsOwned s6Step17HeadFvAfter [s6Step17HeadGOut,s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut] :=
  hmrRows_owned_drop s6Step17HeadFvAfter [s6Step17HeadGOut,s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut] 0 s6Step17HeadBank_outgoingOwned
theorem s6Step17HeadF_Incoming : rowsOwned s6Step17HeadFBefore [s6Step17HeadFRow,s6Step17HeadGvRow,s6Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17HeadGRow,s6Step17HeadFRow,s6Step17HeadGvRow,s6Step17HeadFvRow] 1 s6Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17HeadF_Outgoing : rowsOwned s6Step17HeadFvAfter [s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut] :=
  hmrRows_owned_drop s6Step17HeadFvAfter [s6Step17HeadGOut,s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut] 1 s6Step17HeadBank_outgoingOwned
theorem s6Step17HeadGv_Incoming : rowsOwned s6Step17HeadGvBefore [s6Step17HeadGvRow,s6Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17HeadGRow,s6Step17HeadFRow,s6Step17HeadGvRow,s6Step17HeadFvRow] 2 s6Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17HeadGv_Outgoing : rowsOwned s6Step17HeadFvAfter [s6Step17HeadGvOut,s6Step17HeadFvOut] :=
  hmrRows_owned_drop s6Step17HeadFvAfter [s6Step17HeadGOut,s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut] 2 s6Step17HeadBank_outgoingOwned
theorem s6Step17HeadFv_Incoming : rowsOwned s6Step17HeadFvBefore [s6Step17HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17HeadGRow,s6Step17HeadFRow,s6Step17HeadGvRow,s6Step17HeadFvRow] 3 s6Step17HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17HeadFv_Outgoing : rowsOwned s6Step17HeadFvAfter [s6Step17HeadFvOut] :=
  hmrRows_owned_drop s6Step17HeadFvAfter [s6Step17HeadGOut,s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut] 3 s6Step17HeadBank_outgoingOwned
theorem s6Step17HeadBank_rows : planWindowRowsLog s6Step17HeadGBefore [(s6Step17HeadGRow,257),(s6Step17HeadFRow,257),(s6Step17HeadGvRow,19),(s6Step17HeadFvRow,19)] [s6Step17HeadGFresh,s6Step17HeadFFresh,s6Step17HeadGvFresh,s6Step17HeadFvFresh]=
    some (s6Step17HeadFvAfter,[s6Step17HeadGOut,s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut],(growRow 777 s6Step17HeadGFresh ++ (growRow 795 s6Step17HeadFFresh ++ (growRow 775 s6Step17HeadGvFresh ++ (growRow 776 s6Step17HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step17HeadFvAfter [] []=some (s6Step17HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step17HeadFvBefore s6Step17HeadFvAfter s6Step17HeadFvAfter
    s6Step17HeadFvRow s6Step17HeadFvOut 19 s6Step17HeadFvFresh [] [] []
    (growRow 776 s6Step17HeadFvFresh) ([]) s6Step17HeadFv_Incoming s6Step17HeadFv_checked h4 s6Step17HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step17HeadGvBefore s6Step17HeadGvAfter s6Step17HeadFvAfter
    s6Step17HeadGvRow s6Step17HeadGvOut 19 s6Step17HeadGvFresh [(s6Step17HeadFvRow,19)] [s6Step17HeadFvFresh] [s6Step17HeadFvOut]
    (growRow 775 s6Step17HeadGvFresh) ((growRow 776 s6Step17HeadFvFresh ++ [])) s6Step17HeadGv_Incoming s6Step17HeadGv_checked h3 s6Step17HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step17HeadFBefore s6Step17HeadFAfter s6Step17HeadFvAfter
    s6Step17HeadFRow s6Step17HeadFOut 257 s6Step17HeadFFresh [(s6Step17HeadGvRow,19),(s6Step17HeadFvRow,19)] [s6Step17HeadGvFresh,s6Step17HeadFvFresh] [s6Step17HeadGvOut,s6Step17HeadFvOut]
    (growRow 795 s6Step17HeadFFresh) ((growRow 775 s6Step17HeadGvFresh ++ (growRow 776 s6Step17HeadFvFresh ++ []))) s6Step17HeadF_Incoming s6Step17HeadF_checked h2 s6Step17HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step17HeadGBefore s6Step17HeadGAfter s6Step17HeadFvAfter
    s6Step17HeadGRow s6Step17HeadGOut 257 s6Step17HeadGFresh [(s6Step17HeadFRow,257),(s6Step17HeadGvRow,19),(s6Step17HeadFvRow,19)] [s6Step17HeadFFresh,s6Step17HeadGvFresh,s6Step17HeadFvFresh] [s6Step17HeadFOut,s6Step17HeadGvOut,s6Step17HeadFvOut]
    (growRow 777 s6Step17HeadGFresh) ((growRow 795 s6Step17HeadFFresh ++ (growRow 775 s6Step17HeadGvFresh ++ (growRow 776 s6Step17HeadFvFresh ++ [])))) s6Step17HeadG_Incoming s6Step17HeadG_checked h1 s6Step17HeadG_Outgoing
  exact h0
theorem s6Step17HeadBank_checked : compileHmrBankResizeLog .headroom s6Step17HeadGBefore ⟨s6Step17HeadFRow,s6Step17HeadGRow,s6Step17HeadFvRow,s6Step17HeadGvRow⟩ ⟨257,257,19,19⟩ [s6Step17HeadGFresh,s6Step17HeadFFresh,s6Step17HeadGvFresh,s6Step17HeadFvFresh]=
    some (s6Step17HeadFvAfter,⟨s6Step17HeadFOut,s6Step17HeadGOut,s6Step17HeadFvOut,s6Step17HeadGvOut⟩,(growRow 777 s6Step17HeadGFresh ++ (growRow 795 s6Step17HeadFFresh ++ (growRow 775 s6Step17HeadGvFresh ++ (growRow 776 s6Step17HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step17HeadBank_rows]
  rfl
def s6Step18HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813],777⟩
def s6Step18HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807],795⟩
def s6Step18HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 887, 814],775⟩
def s6Step18HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821],776⟩
theorem s6Step18HeadBank_incomingDistinct : ([s6Step18HeadGRow,s6Step18HeadFRow,s6Step18HeadGvRow,s6Step18HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18HeadBank_outgoingOwned : rowsOwned s6Step18HeadFvAfter [s6Step18HeadGOut,s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step18HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18HeadG_Incoming : rowsOwned s6Step18HeadGBefore [s6Step18HeadGRow,s6Step18HeadFRow,s6Step18HeadGvRow,s6Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18HeadGRow,s6Step18HeadFRow,s6Step18HeadGvRow,s6Step18HeadFvRow] 0 s6Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18HeadG_Outgoing : rowsOwned s6Step18HeadFvAfter [s6Step18HeadGOut,s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut] :=
  hmrRows_owned_drop s6Step18HeadFvAfter [s6Step18HeadGOut,s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut] 0 s6Step18HeadBank_outgoingOwned
theorem s6Step18HeadF_Incoming : rowsOwned s6Step18HeadFBefore [s6Step18HeadFRow,s6Step18HeadGvRow,s6Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18HeadGRow,s6Step18HeadFRow,s6Step18HeadGvRow,s6Step18HeadFvRow] 1 s6Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18HeadF_Outgoing : rowsOwned s6Step18HeadFvAfter [s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut] :=
  hmrRows_owned_drop s6Step18HeadFvAfter [s6Step18HeadGOut,s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut] 1 s6Step18HeadBank_outgoingOwned
theorem s6Step18HeadGv_Incoming : rowsOwned s6Step18HeadGvBefore [s6Step18HeadGvRow,s6Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18HeadGRow,s6Step18HeadFRow,s6Step18HeadGvRow,s6Step18HeadFvRow] 2 s6Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18HeadGv_Outgoing : rowsOwned s6Step18HeadFvAfter [s6Step18HeadGvOut,s6Step18HeadFvOut] :=
  hmrRows_owned_drop s6Step18HeadFvAfter [s6Step18HeadGOut,s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut] 2 s6Step18HeadBank_outgoingOwned
theorem s6Step18HeadFv_Incoming : rowsOwned s6Step18HeadFvBefore [s6Step18HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18HeadGRow,s6Step18HeadFRow,s6Step18HeadGvRow,s6Step18HeadFvRow] 3 s6Step18HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18HeadFv_Outgoing : rowsOwned s6Step18HeadFvAfter [s6Step18HeadFvOut] :=
  hmrRows_owned_drop s6Step18HeadFvAfter [s6Step18HeadGOut,s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut] 3 s6Step18HeadBank_outgoingOwned
theorem s6Step18HeadBank_rows : planWindowRowsLog s6Step18HeadGBefore [(s6Step18HeadGRow,257),(s6Step18HeadFRow,257),(s6Step18HeadGvRow,20),(s6Step18HeadFvRow,20)] [s6Step18HeadGFresh,s6Step18HeadFFresh,s6Step18HeadGvFresh,s6Step18HeadFvFresh]=
    some (s6Step18HeadFvAfter,[s6Step18HeadGOut,s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut],(growRow 777 s6Step18HeadGFresh ++ (growRow 795 s6Step18HeadFFresh ++ (growRow 775 s6Step18HeadGvFresh ++ (growRow 776 s6Step18HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step18HeadFvAfter [] []=some (s6Step18HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step18HeadFvBefore s6Step18HeadFvAfter s6Step18HeadFvAfter
    s6Step18HeadFvRow s6Step18HeadFvOut 20 s6Step18HeadFvFresh [] [] []
    (growRow 776 s6Step18HeadFvFresh) ([]) s6Step18HeadFv_Incoming s6Step18HeadFv_checked h4 s6Step18HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step18HeadGvBefore s6Step18HeadGvAfter s6Step18HeadFvAfter
    s6Step18HeadGvRow s6Step18HeadGvOut 20 s6Step18HeadGvFresh [(s6Step18HeadFvRow,20)] [s6Step18HeadFvFresh] [s6Step18HeadFvOut]
    (growRow 775 s6Step18HeadGvFresh) ((growRow 776 s6Step18HeadFvFresh ++ [])) s6Step18HeadGv_Incoming s6Step18HeadGv_checked h3 s6Step18HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step18HeadFBefore s6Step18HeadFAfter s6Step18HeadFvAfter
    s6Step18HeadFRow s6Step18HeadFOut 257 s6Step18HeadFFresh [(s6Step18HeadGvRow,20),(s6Step18HeadFvRow,20)] [s6Step18HeadGvFresh,s6Step18HeadFvFresh] [s6Step18HeadGvOut,s6Step18HeadFvOut]
    (growRow 795 s6Step18HeadFFresh) ((growRow 775 s6Step18HeadGvFresh ++ (growRow 776 s6Step18HeadFvFresh ++ []))) s6Step18HeadF_Incoming s6Step18HeadF_checked h2 s6Step18HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step18HeadGBefore s6Step18HeadGAfter s6Step18HeadFvAfter
    s6Step18HeadGRow s6Step18HeadGOut 257 s6Step18HeadGFresh [(s6Step18HeadFRow,257),(s6Step18HeadGvRow,20),(s6Step18HeadFvRow,20)] [s6Step18HeadFFresh,s6Step18HeadGvFresh,s6Step18HeadFvFresh] [s6Step18HeadFOut,s6Step18HeadGvOut,s6Step18HeadFvOut]
    (growRow 777 s6Step18HeadGFresh) ((growRow 795 s6Step18HeadFFresh ++ (growRow 775 s6Step18HeadGvFresh ++ (growRow 776 s6Step18HeadFvFresh ++ [])))) s6Step18HeadG_Incoming s6Step18HeadG_checked h1 s6Step18HeadG_Outgoing
  exact h0
theorem s6Step18HeadBank_checked : compileHmrBankResizeLog .headroom s6Step18HeadGBefore ⟨s6Step18HeadFRow,s6Step18HeadGRow,s6Step18HeadFvRow,s6Step18HeadGvRow⟩ ⟨257,257,20,20⟩ [s6Step18HeadGFresh,s6Step18HeadFFresh,s6Step18HeadGvFresh,s6Step18HeadFvFresh]=
    some (s6Step18HeadFvAfter,⟨s6Step18HeadFOut,s6Step18HeadGOut,s6Step18HeadFvOut,s6Step18HeadGvOut⟩,(growRow 777 s6Step18HeadGFresh ++ (growRow 795 s6Step18HeadFFresh ++ (growRow 775 s6Step18HeadGvFresh ++ (growRow 776 s6Step18HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step18HeadBank_rows]
  rfl
def s6Step19HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860],777⟩
def s6Step19HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813],795⟩
def s6Step19HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 887, 869],775⟩
def s6Step19HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843],776⟩
theorem s6Step19HeadBank_incomingDistinct : ([s6Step19HeadGRow,s6Step19HeadFRow,s6Step19HeadGvRow,s6Step19HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19HeadBank_outgoingOwned : rowsOwned s6Step19HeadFvAfter [s6Step19HeadGOut,s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step19HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19HeadG_Incoming : rowsOwned s6Step19HeadGBefore [s6Step19HeadGRow,s6Step19HeadFRow,s6Step19HeadGvRow,s6Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19HeadGRow,s6Step19HeadFRow,s6Step19HeadGvRow,s6Step19HeadFvRow] 0 s6Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19HeadG_Outgoing : rowsOwned s6Step19HeadFvAfter [s6Step19HeadGOut,s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut] :=
  hmrRows_owned_drop s6Step19HeadFvAfter [s6Step19HeadGOut,s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut] 0 s6Step19HeadBank_outgoingOwned
theorem s6Step19HeadF_Incoming : rowsOwned s6Step19HeadFBefore [s6Step19HeadFRow,s6Step19HeadGvRow,s6Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19HeadGRow,s6Step19HeadFRow,s6Step19HeadGvRow,s6Step19HeadFvRow] 1 s6Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19HeadF_Outgoing : rowsOwned s6Step19HeadFvAfter [s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut] :=
  hmrRows_owned_drop s6Step19HeadFvAfter [s6Step19HeadGOut,s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut] 1 s6Step19HeadBank_outgoingOwned
theorem s6Step19HeadGv_Incoming : rowsOwned s6Step19HeadGvBefore [s6Step19HeadGvRow,s6Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19HeadGRow,s6Step19HeadFRow,s6Step19HeadGvRow,s6Step19HeadFvRow] 2 s6Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19HeadGv_Outgoing : rowsOwned s6Step19HeadFvAfter [s6Step19HeadGvOut,s6Step19HeadFvOut] :=
  hmrRows_owned_drop s6Step19HeadFvAfter [s6Step19HeadGOut,s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut] 2 s6Step19HeadBank_outgoingOwned
theorem s6Step19HeadFv_Incoming : rowsOwned s6Step19HeadFvBefore [s6Step19HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19HeadGRow,s6Step19HeadFRow,s6Step19HeadGvRow,s6Step19HeadFvRow] 3 s6Step19HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19HeadFv_Outgoing : rowsOwned s6Step19HeadFvAfter [s6Step19HeadFvOut] :=
  hmrRows_owned_drop s6Step19HeadFvAfter [s6Step19HeadGOut,s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut] 3 s6Step19HeadBank_outgoingOwned
theorem s6Step19HeadBank_rows : planWindowRowsLog s6Step19HeadGBefore [(s6Step19HeadGRow,257),(s6Step19HeadFRow,257),(s6Step19HeadGvRow,21),(s6Step19HeadFvRow,21)] [s6Step19HeadGFresh,s6Step19HeadFFresh,s6Step19HeadGvFresh,s6Step19HeadFvFresh]=
    some (s6Step19HeadFvAfter,[s6Step19HeadGOut,s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut],(growRow 777 s6Step19HeadGFresh ++ (growRow 795 s6Step19HeadFFresh ++ (growRow 775 s6Step19HeadGvFresh ++ (growRow 776 s6Step19HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step19HeadFvAfter [] []=some (s6Step19HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step19HeadFvBefore s6Step19HeadFvAfter s6Step19HeadFvAfter
    s6Step19HeadFvRow s6Step19HeadFvOut 21 s6Step19HeadFvFresh [] [] []
    (growRow 776 s6Step19HeadFvFresh) ([]) s6Step19HeadFv_Incoming s6Step19HeadFv_checked h4 s6Step19HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step19HeadGvBefore s6Step19HeadGvAfter s6Step19HeadFvAfter
    s6Step19HeadGvRow s6Step19HeadGvOut 21 s6Step19HeadGvFresh [(s6Step19HeadFvRow,21)] [s6Step19HeadFvFresh] [s6Step19HeadFvOut]
    (growRow 775 s6Step19HeadGvFresh) ((growRow 776 s6Step19HeadFvFresh ++ [])) s6Step19HeadGv_Incoming s6Step19HeadGv_checked h3 s6Step19HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step19HeadFBefore s6Step19HeadFAfter s6Step19HeadFvAfter
    s6Step19HeadFRow s6Step19HeadFOut 257 s6Step19HeadFFresh [(s6Step19HeadGvRow,21),(s6Step19HeadFvRow,21)] [s6Step19HeadGvFresh,s6Step19HeadFvFresh] [s6Step19HeadGvOut,s6Step19HeadFvOut]
    (growRow 795 s6Step19HeadFFresh) ((growRow 775 s6Step19HeadGvFresh ++ (growRow 776 s6Step19HeadFvFresh ++ []))) s6Step19HeadF_Incoming s6Step19HeadF_checked h2 s6Step19HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step19HeadGBefore s6Step19HeadGAfter s6Step19HeadFvAfter
    s6Step19HeadGRow s6Step19HeadGOut 257 s6Step19HeadGFresh [(s6Step19HeadFRow,257),(s6Step19HeadGvRow,21),(s6Step19HeadFvRow,21)] [s6Step19HeadFFresh,s6Step19HeadGvFresh,s6Step19HeadFvFresh] [s6Step19HeadFOut,s6Step19HeadGvOut,s6Step19HeadFvOut]
    (growRow 777 s6Step19HeadGFresh) ((growRow 795 s6Step19HeadFFresh ++ (growRow 775 s6Step19HeadGvFresh ++ (growRow 776 s6Step19HeadFvFresh ++ [])))) s6Step19HeadG_Incoming s6Step19HeadG_checked h1 s6Step19HeadG_Outgoing
  exact h0
theorem s6Step19HeadBank_checked : compileHmrBankResizeLog .headroom s6Step19HeadGBefore ⟨s6Step19HeadFRow,s6Step19HeadGRow,s6Step19HeadFvRow,s6Step19HeadGvRow⟩ ⟨257,257,21,21⟩ [s6Step19HeadGFresh,s6Step19HeadFFresh,s6Step19HeadGvFresh,s6Step19HeadFvFresh]=
    some (s6Step19HeadFvAfter,⟨s6Step19HeadFOut,s6Step19HeadGOut,s6Step19HeadFvOut,s6Step19HeadGvOut⟩,(growRow 777 s6Step19HeadGFresh ++ (growRow 795 s6Step19HeadFFresh ++ (growRow 775 s6Step19HeadGvFresh ++ (growRow 776 s6Step19HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step19HeadBank_rows]
  rfl
def s6Step20HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862],777⟩
def s6Step20HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860],795⟩
def s6Step20HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 887, 854],775⟩
def s6Step20HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830],776⟩
theorem s6Step20HeadBank_incomingDistinct : ([s6Step20HeadGRow,s6Step20HeadFRow,s6Step20HeadGvRow,s6Step20HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20HeadBank_outgoingOwned : rowsOwned s6Step20HeadFvAfter [s6Step20HeadGOut,s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step20HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step20HeadG_Incoming : rowsOwned s6Step20HeadGBefore [s6Step20HeadGRow,s6Step20HeadFRow,s6Step20HeadGvRow,s6Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20HeadGRow,s6Step20HeadFRow,s6Step20HeadGvRow,s6Step20HeadFvRow] 0 s6Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20HeadG_Outgoing : rowsOwned s6Step20HeadFvAfter [s6Step20HeadGOut,s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut] :=
  hmrRows_owned_drop s6Step20HeadFvAfter [s6Step20HeadGOut,s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut] 0 s6Step20HeadBank_outgoingOwned
theorem s6Step20HeadF_Incoming : rowsOwned s6Step20HeadFBefore [s6Step20HeadFRow,s6Step20HeadGvRow,s6Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20HeadGRow,s6Step20HeadFRow,s6Step20HeadGvRow,s6Step20HeadFvRow] 1 s6Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20HeadF_Outgoing : rowsOwned s6Step20HeadFvAfter [s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut] :=
  hmrRows_owned_drop s6Step20HeadFvAfter [s6Step20HeadGOut,s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut] 1 s6Step20HeadBank_outgoingOwned
theorem s6Step20HeadGv_Incoming : rowsOwned s6Step20HeadGvBefore [s6Step20HeadGvRow,s6Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20HeadGRow,s6Step20HeadFRow,s6Step20HeadGvRow,s6Step20HeadFvRow] 2 s6Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20HeadGv_Outgoing : rowsOwned s6Step20HeadFvAfter [s6Step20HeadGvOut,s6Step20HeadFvOut] :=
  hmrRows_owned_drop s6Step20HeadFvAfter [s6Step20HeadGOut,s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut] 2 s6Step20HeadBank_outgoingOwned
theorem s6Step20HeadFv_Incoming : rowsOwned s6Step20HeadFvBefore [s6Step20HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20HeadGRow,s6Step20HeadFRow,s6Step20HeadGvRow,s6Step20HeadFvRow] 3 s6Step20HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20HeadFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step20HeadFv_Outgoing : rowsOwned s6Step20HeadFvAfter [s6Step20HeadFvOut] :=
  hmrRows_owned_drop s6Step20HeadFvAfter [s6Step20HeadGOut,s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut] 3 s6Step20HeadBank_outgoingOwned
theorem s6Step20HeadBank_rows : planWindowRowsLog s6Step20HeadGBefore [(s6Step20HeadGRow,257),(s6Step20HeadFRow,257),(s6Step20HeadGvRow,22),(s6Step20HeadFvRow,22)] [s6Step20HeadGFresh,s6Step20HeadFFresh,s6Step20HeadGvFresh,s6Step20HeadFvFresh]=
    some (s6Step20HeadFvAfter,[s6Step20HeadGOut,s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut],(growRow 777 s6Step20HeadGFresh ++ (growRow 795 s6Step20HeadFFresh ++ (growRow 775 s6Step20HeadGvFresh ++ (growRow 776 s6Step20HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step20HeadFvAfter [] []=some (s6Step20HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step20HeadFvBefore s6Step20HeadFvAfter s6Step20HeadFvAfter
    s6Step20HeadFvRow s6Step20HeadFvOut 22 s6Step20HeadFvFresh [] [] []
    (growRow 776 s6Step20HeadFvFresh) ([]) s6Step20HeadFv_Incoming s6Step20HeadFv_checked h4 s6Step20HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step20HeadGvBefore s6Step20HeadGvAfter s6Step20HeadFvAfter
    s6Step20HeadGvRow s6Step20HeadGvOut 22 s6Step20HeadGvFresh [(s6Step20HeadFvRow,22)] [s6Step20HeadFvFresh] [s6Step20HeadFvOut]
    (growRow 775 s6Step20HeadGvFresh) ((growRow 776 s6Step20HeadFvFresh ++ [])) s6Step20HeadGv_Incoming s6Step20HeadGv_checked h3 s6Step20HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step20HeadFBefore s6Step20HeadFAfter s6Step20HeadFvAfter
    s6Step20HeadFRow s6Step20HeadFOut 257 s6Step20HeadFFresh [(s6Step20HeadGvRow,22),(s6Step20HeadFvRow,22)] [s6Step20HeadGvFresh,s6Step20HeadFvFresh] [s6Step20HeadGvOut,s6Step20HeadFvOut]
    (growRow 795 s6Step20HeadFFresh) ((growRow 775 s6Step20HeadGvFresh ++ (growRow 776 s6Step20HeadFvFresh ++ []))) s6Step20HeadF_Incoming s6Step20HeadF_checked h2 s6Step20HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step20HeadGBefore s6Step20HeadGAfter s6Step20HeadFvAfter
    s6Step20HeadGRow s6Step20HeadGOut 257 s6Step20HeadGFresh [(s6Step20HeadFRow,257),(s6Step20HeadGvRow,22),(s6Step20HeadFvRow,22)] [s6Step20HeadFFresh,s6Step20HeadGvFresh,s6Step20HeadFvFresh] [s6Step20HeadFOut,s6Step20HeadGvOut,s6Step20HeadFvOut]
    (growRow 777 s6Step20HeadGFresh) ((growRow 795 s6Step20HeadFFresh ++ (growRow 775 s6Step20HeadGvFresh ++ (growRow 776 s6Step20HeadFvFresh ++ [])))) s6Step20HeadG_Incoming s6Step20HeadG_checked h1 s6Step20HeadG_Outgoing
  exact h0
theorem s6Step20HeadBank_checked : compileHmrBankResizeLog .headroom s6Step20HeadGBefore ⟨s6Step20HeadFRow,s6Step20HeadGRow,s6Step20HeadFvRow,s6Step20HeadGvRow⟩ ⟨257,257,22,22⟩ [s6Step20HeadGFresh,s6Step20HeadFFresh,s6Step20HeadGvFresh,s6Step20HeadFvFresh]=
    some (s6Step20HeadFvAfter,⟨s6Step20HeadFOut,s6Step20HeadGOut,s6Step20HeadFvOut,s6Step20HeadGvOut⟩,(growRow 777 s6Step20HeadGFresh ++ (growRow 795 s6Step20HeadFFresh ++ (growRow 775 s6Step20HeadGvFresh ++ (growRow 776 s6Step20HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step20HeadBank_rows]
  rfl
def s6Step21HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807],777⟩
def s6Step21HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862],795⟩
def s6Step21HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 887, 898],775⟩
def s6Step21HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848],776⟩
theorem s6Step21HeadBank_incomingDistinct : ([s6Step21HeadGRow,s6Step21HeadFRow,s6Step21HeadGvRow,s6Step21HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21HeadBank_outgoingOwned : rowsOwned s6Step21HeadFvAfter [s6Step21HeadGOut,s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step21HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21HeadG_Incoming : rowsOwned s6Step21HeadGBefore [s6Step21HeadGRow,s6Step21HeadFRow,s6Step21HeadGvRow,s6Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21HeadGRow,s6Step21HeadFRow,s6Step21HeadGvRow,s6Step21HeadFvRow] 0 s6Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step21HeadG_Outgoing : rowsOwned s6Step21HeadFvAfter [s6Step21HeadGOut,s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut] :=
  hmrRows_owned_drop s6Step21HeadFvAfter [s6Step21HeadGOut,s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut] 0 s6Step21HeadBank_outgoingOwned
theorem s6Step21HeadF_Incoming : rowsOwned s6Step21HeadFBefore [s6Step21HeadFRow,s6Step21HeadGvRow,s6Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21HeadGRow,s6Step21HeadFRow,s6Step21HeadGvRow,s6Step21HeadFvRow] 1 s6Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21HeadFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21HeadF_Outgoing : rowsOwned s6Step21HeadFvAfter [s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut] :=
  hmrRows_owned_drop s6Step21HeadFvAfter [s6Step21HeadGOut,s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut] 1 s6Step21HeadBank_outgoingOwned
theorem s6Step21HeadGv_Incoming : rowsOwned s6Step21HeadGvBefore [s6Step21HeadGvRow,s6Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21HeadGRow,s6Step21HeadFRow,s6Step21HeadGvRow,s6Step21HeadFvRow] 2 s6Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21HeadGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21HeadGv_Outgoing : rowsOwned s6Step21HeadFvAfter [s6Step21HeadGvOut,s6Step21HeadFvOut] :=
  hmrRows_owned_drop s6Step21HeadFvAfter [s6Step21HeadGOut,s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut] 2 s6Step21HeadBank_outgoingOwned
theorem s6Step21HeadFv_Incoming : rowsOwned s6Step21HeadFvBefore [s6Step21HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21HeadGRow,s6Step21HeadFRow,s6Step21HeadGvRow,s6Step21HeadFvRow] 3 s6Step21HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21HeadFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21HeadFv_Outgoing : rowsOwned s6Step21HeadFvAfter [s6Step21HeadFvOut] :=
  hmrRows_owned_drop s6Step21HeadFvAfter [s6Step21HeadGOut,s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut] 3 s6Step21HeadBank_outgoingOwned
theorem s6Step21HeadBank_rows : planWindowRowsLog s6Step21HeadGBefore [(s6Step21HeadGRow,257),(s6Step21HeadFRow,257),(s6Step21HeadGvRow,23),(s6Step21HeadFvRow,23)] [s6Step21HeadGFresh,s6Step21HeadFFresh,s6Step21HeadGvFresh,s6Step21HeadFvFresh]=
    some (s6Step21HeadFvAfter,[s6Step21HeadGOut,s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut],(growRow 777 s6Step21HeadGFresh ++ (growRow 795 s6Step21HeadFFresh ++ (growRow 775 s6Step21HeadGvFresh ++ (growRow 776 s6Step21HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step21HeadFvAfter [] []=some (s6Step21HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step21HeadFvBefore s6Step21HeadFvAfter s6Step21HeadFvAfter
    s6Step21HeadFvRow s6Step21HeadFvOut 23 s6Step21HeadFvFresh [] [] []
    (growRow 776 s6Step21HeadFvFresh) ([]) s6Step21HeadFv_Incoming s6Step21HeadFv_checked h4 s6Step21HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step21HeadGvBefore s6Step21HeadGvAfter s6Step21HeadFvAfter
    s6Step21HeadGvRow s6Step21HeadGvOut 23 s6Step21HeadGvFresh [(s6Step21HeadFvRow,23)] [s6Step21HeadFvFresh] [s6Step21HeadFvOut]
    (growRow 775 s6Step21HeadGvFresh) ((growRow 776 s6Step21HeadFvFresh ++ [])) s6Step21HeadGv_Incoming s6Step21HeadGv_checked h3 s6Step21HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step21HeadFBefore s6Step21HeadFAfter s6Step21HeadFvAfter
    s6Step21HeadFRow s6Step21HeadFOut 257 s6Step21HeadFFresh [(s6Step21HeadGvRow,23),(s6Step21HeadFvRow,23)] [s6Step21HeadGvFresh,s6Step21HeadFvFresh] [s6Step21HeadGvOut,s6Step21HeadFvOut]
    (growRow 795 s6Step21HeadFFresh) ((growRow 775 s6Step21HeadGvFresh ++ (growRow 776 s6Step21HeadFvFresh ++ []))) s6Step21HeadF_Incoming s6Step21HeadF_checked h2 s6Step21HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step21HeadGBefore s6Step21HeadGAfter s6Step21HeadFvAfter
    s6Step21HeadGRow s6Step21HeadGOut 257 s6Step21HeadGFresh [(s6Step21HeadFRow,257),(s6Step21HeadGvRow,23),(s6Step21HeadFvRow,23)] [s6Step21HeadFFresh,s6Step21HeadGvFresh,s6Step21HeadFvFresh] [s6Step21HeadFOut,s6Step21HeadGvOut,s6Step21HeadFvOut]
    (growRow 777 s6Step21HeadGFresh) ((growRow 795 s6Step21HeadFFresh ++ (growRow 775 s6Step21HeadGvFresh ++ (growRow 776 s6Step21HeadFvFresh ++ [])))) s6Step21HeadG_Incoming s6Step21HeadG_checked h1 s6Step21HeadG_Outgoing
  exact h0
theorem s6Step21HeadBank_checked : compileHmrBankResizeLog .headroom s6Step21HeadGBefore ⟨s6Step21HeadFRow,s6Step21HeadGRow,s6Step21HeadFvRow,s6Step21HeadGvRow⟩ ⟨257,257,23,23⟩ [s6Step21HeadGFresh,s6Step21HeadFFresh,s6Step21HeadGvFresh,s6Step21HeadFvFresh]=
    some (s6Step21HeadFvAfter,⟨s6Step21HeadFOut,s6Step21HeadGOut,s6Step21HeadFvOut,s6Step21HeadGvOut⟩,(growRow 777 s6Step21HeadGFresh ++ (growRow 795 s6Step21HeadFFresh ++ (growRow 775 s6Step21HeadGvFresh ++ (growRow 776 s6Step21HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step21HeadBank_rows]
  rfl
def s6Step22HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813],777⟩
def s6Step22HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807],795⟩
def s6Step22HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 887, 841],775⟩
def s6Step22HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839],776⟩
theorem s6Step22HeadBank_incomingDistinct : ([s6Step22HeadGRow,s6Step22HeadFRow,s6Step22HeadGvRow,s6Step22HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22HeadBank_outgoingOwned : rowsOwned s6Step22HeadFvAfter [s6Step22HeadGOut,s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step22HeadFvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22HeadG_Incoming : rowsOwned s6Step22HeadGBefore [s6Step22HeadGRow,s6Step22HeadFRow,s6Step22HeadGvRow,s6Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22HeadGRow,s6Step22HeadFRow,s6Step22HeadGvRow,s6Step22HeadFvRow] 0 s6Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22HeadGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22HeadG_Outgoing : rowsOwned s6Step22HeadFvAfter [s6Step22HeadGOut,s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut] :=
  hmrRows_owned_drop s6Step22HeadFvAfter [s6Step22HeadGOut,s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut] 0 s6Step22HeadBank_outgoingOwned
theorem s6Step22HeadF_Incoming : rowsOwned s6Step22HeadFBefore [s6Step22HeadFRow,s6Step22HeadGvRow,s6Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22HeadGRow,s6Step22HeadFRow,s6Step22HeadGvRow,s6Step22HeadFvRow] 1 s6Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22HeadFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22HeadF_Outgoing : rowsOwned s6Step22HeadFvAfter [s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut] :=
  hmrRows_owned_drop s6Step22HeadFvAfter [s6Step22HeadGOut,s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut] 1 s6Step22HeadBank_outgoingOwned
theorem s6Step22HeadGv_Incoming : rowsOwned s6Step22HeadGvBefore [s6Step22HeadGvRow,s6Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22HeadGRow,s6Step22HeadFRow,s6Step22HeadGvRow,s6Step22HeadFvRow] 2 s6Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22HeadGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22HeadGv_Outgoing : rowsOwned s6Step22HeadFvAfter [s6Step22HeadGvOut,s6Step22HeadFvOut] :=
  hmrRows_owned_drop s6Step22HeadFvAfter [s6Step22HeadGOut,s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut] 2 s6Step22HeadBank_outgoingOwned
theorem s6Step22HeadFv_Incoming : rowsOwned s6Step22HeadFvBefore [s6Step22HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22HeadGRow,s6Step22HeadFRow,s6Step22HeadGvRow,s6Step22HeadFvRow] 3 s6Step22HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22HeadFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22HeadFv_Outgoing : rowsOwned s6Step22HeadFvAfter [s6Step22HeadFvOut] :=
  hmrRows_owned_drop s6Step22HeadFvAfter [s6Step22HeadGOut,s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut] 3 s6Step22HeadBank_outgoingOwned
theorem s6Step22HeadBank_rows : planWindowRowsLog s6Step22HeadGBefore [(s6Step22HeadGRow,257),(s6Step22HeadFRow,257),(s6Step22HeadGvRow,24),(s6Step22HeadFvRow,24)] [s6Step22HeadGFresh,s6Step22HeadFFresh,s6Step22HeadGvFresh,s6Step22HeadFvFresh]=
    some (s6Step22HeadFvAfter,[s6Step22HeadGOut,s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut],(growRow 777 s6Step22HeadGFresh ++ (growRow 795 s6Step22HeadFFresh ++ (growRow 775 s6Step22HeadGvFresh ++ (growRow 776 s6Step22HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step22HeadFvAfter [] []=some (s6Step22HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step22HeadFvBefore s6Step22HeadFvAfter s6Step22HeadFvAfter
    s6Step22HeadFvRow s6Step22HeadFvOut 24 s6Step22HeadFvFresh [] [] []
    (growRow 776 s6Step22HeadFvFresh) ([]) s6Step22HeadFv_Incoming s6Step22HeadFv_checked h4 s6Step22HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step22HeadGvBefore s6Step22HeadGvAfter s6Step22HeadFvAfter
    s6Step22HeadGvRow s6Step22HeadGvOut 24 s6Step22HeadGvFresh [(s6Step22HeadFvRow,24)] [s6Step22HeadFvFresh] [s6Step22HeadFvOut]
    (growRow 775 s6Step22HeadGvFresh) ((growRow 776 s6Step22HeadFvFresh ++ [])) s6Step22HeadGv_Incoming s6Step22HeadGv_checked h3 s6Step22HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step22HeadFBefore s6Step22HeadFAfter s6Step22HeadFvAfter
    s6Step22HeadFRow s6Step22HeadFOut 257 s6Step22HeadFFresh [(s6Step22HeadGvRow,24),(s6Step22HeadFvRow,24)] [s6Step22HeadGvFresh,s6Step22HeadFvFresh] [s6Step22HeadGvOut,s6Step22HeadFvOut]
    (growRow 795 s6Step22HeadFFresh) ((growRow 775 s6Step22HeadGvFresh ++ (growRow 776 s6Step22HeadFvFresh ++ []))) s6Step22HeadF_Incoming s6Step22HeadF_checked h2 s6Step22HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step22HeadGBefore s6Step22HeadGAfter s6Step22HeadFvAfter
    s6Step22HeadGRow s6Step22HeadGOut 257 s6Step22HeadGFresh [(s6Step22HeadFRow,257),(s6Step22HeadGvRow,24),(s6Step22HeadFvRow,24)] [s6Step22HeadFFresh,s6Step22HeadGvFresh,s6Step22HeadFvFresh] [s6Step22HeadFOut,s6Step22HeadGvOut,s6Step22HeadFvOut]
    (growRow 777 s6Step22HeadGFresh) ((growRow 795 s6Step22HeadFFresh ++ (growRow 775 s6Step22HeadGvFresh ++ (growRow 776 s6Step22HeadFvFresh ++ [])))) s6Step22HeadG_Incoming s6Step22HeadG_checked h1 s6Step22HeadG_Outgoing
  exact h0
theorem s6Step22HeadBank_checked : compileHmrBankResizeLog .headroom s6Step22HeadGBefore ⟨s6Step22HeadFRow,s6Step22HeadGRow,s6Step22HeadFvRow,s6Step22HeadGvRow⟩ ⟨257,257,24,24⟩ [s6Step22HeadGFresh,s6Step22HeadFFresh,s6Step22HeadGvFresh,s6Step22HeadFvFresh]=
    some (s6Step22HeadFvAfter,⟨s6Step22HeadFOut,s6Step22HeadGOut,s6Step22HeadFvOut,s6Step22HeadGvOut⟩,(growRow 777 s6Step22HeadGFresh ++ (growRow 795 s6Step22HeadFFresh ++ (growRow 775 s6Step22HeadGvFresh ++ (growRow 776 s6Step22HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step22HeadBank_rows]
  rfl
def s6Step23HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860],777⟩
def s6Step23HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813],795⟩
def s6Step23HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 887, 794],775⟩
def s6Step23HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩
theorem s6Step23HeadBank_incomingDistinct : ([s6Step23HeadGRow,s6Step23HeadFRow,s6Step23HeadGvRow,s6Step23HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23HeadBank_outgoingOwned : rowsOwned s6Step23HeadFvAfter [s6Step23HeadGOut,s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step23HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23HeadG_Incoming : rowsOwned s6Step23HeadGBefore [s6Step23HeadGRow,s6Step23HeadFRow,s6Step23HeadGvRow,s6Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23HeadGRow,s6Step23HeadFRow,s6Step23HeadGvRow,s6Step23HeadFvRow] 0 s6Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23HeadGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23HeadG_Outgoing : rowsOwned s6Step23HeadFvAfter [s6Step23HeadGOut,s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut] :=
  hmrRows_owned_drop s6Step23HeadFvAfter [s6Step23HeadGOut,s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut] 0 s6Step23HeadBank_outgoingOwned
theorem s6Step23HeadF_Incoming : rowsOwned s6Step23HeadFBefore [s6Step23HeadFRow,s6Step23HeadGvRow,s6Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23HeadGRow,s6Step23HeadFRow,s6Step23HeadGvRow,s6Step23HeadFvRow] 1 s6Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23HeadFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23HeadF_Outgoing : rowsOwned s6Step23HeadFvAfter [s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut] :=
  hmrRows_owned_drop s6Step23HeadFvAfter [s6Step23HeadGOut,s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut] 1 s6Step23HeadBank_outgoingOwned
theorem s6Step23HeadGv_Incoming : rowsOwned s6Step23HeadGvBefore [s6Step23HeadGvRow,s6Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23HeadGRow,s6Step23HeadFRow,s6Step23HeadGvRow,s6Step23HeadFvRow] 2 s6Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23HeadGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23HeadGv_Outgoing : rowsOwned s6Step23HeadFvAfter [s6Step23HeadGvOut,s6Step23HeadFvOut] :=
  hmrRows_owned_drop s6Step23HeadFvAfter [s6Step23HeadGOut,s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut] 2 s6Step23HeadBank_outgoingOwned
theorem s6Step23HeadFv_Incoming : rowsOwned s6Step23HeadFvBefore [s6Step23HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23HeadGRow,s6Step23HeadFRow,s6Step23HeadGvRow,s6Step23HeadFvRow] 3 s6Step23HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23HeadFvBefore (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23HeadFv_Outgoing : rowsOwned s6Step23HeadFvAfter [s6Step23HeadFvOut] :=
  hmrRows_owned_drop s6Step23HeadFvAfter [s6Step23HeadGOut,s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut] 3 s6Step23HeadBank_outgoingOwned
theorem s6Step23HeadBank_rows : planWindowRowsLog s6Step23HeadGBefore [(s6Step23HeadGRow,257),(s6Step23HeadFRow,257),(s6Step23HeadGvRow,25),(s6Step23HeadFvRow,25)] [s6Step23HeadGFresh,s6Step23HeadFFresh,s6Step23HeadGvFresh,s6Step23HeadFvFresh]=
    some (s6Step23HeadFvAfter,[s6Step23HeadGOut,s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut],(growRow 777 s6Step23HeadGFresh ++ (growRow 795 s6Step23HeadFFresh ++ (growRow 775 s6Step23HeadGvFresh ++ (growRow 776 s6Step23HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step23HeadFvAfter [] []=some (s6Step23HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step23HeadFvBefore s6Step23HeadFvAfter s6Step23HeadFvAfter
    s6Step23HeadFvRow s6Step23HeadFvOut 25 s6Step23HeadFvFresh [] [] []
    (growRow 776 s6Step23HeadFvFresh) ([]) s6Step23HeadFv_Incoming s6Step23HeadFv_checked h4 s6Step23HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step23HeadGvBefore s6Step23HeadGvAfter s6Step23HeadFvAfter
    s6Step23HeadGvRow s6Step23HeadGvOut 25 s6Step23HeadGvFresh [(s6Step23HeadFvRow,25)] [s6Step23HeadFvFresh] [s6Step23HeadFvOut]
    (growRow 775 s6Step23HeadGvFresh) ((growRow 776 s6Step23HeadFvFresh ++ [])) s6Step23HeadGv_Incoming s6Step23HeadGv_checked h3 s6Step23HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step23HeadFBefore s6Step23HeadFAfter s6Step23HeadFvAfter
    s6Step23HeadFRow s6Step23HeadFOut 257 s6Step23HeadFFresh [(s6Step23HeadGvRow,25),(s6Step23HeadFvRow,25)] [s6Step23HeadGvFresh,s6Step23HeadFvFresh] [s6Step23HeadGvOut,s6Step23HeadFvOut]
    (growRow 795 s6Step23HeadFFresh) ((growRow 775 s6Step23HeadGvFresh ++ (growRow 776 s6Step23HeadFvFresh ++ []))) s6Step23HeadF_Incoming s6Step23HeadF_checked h2 s6Step23HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step23HeadGBefore s6Step23HeadGAfter s6Step23HeadFvAfter
    s6Step23HeadGRow s6Step23HeadGOut 257 s6Step23HeadGFresh [(s6Step23HeadFRow,257),(s6Step23HeadGvRow,25),(s6Step23HeadFvRow,25)] [s6Step23HeadFFresh,s6Step23HeadGvFresh,s6Step23HeadFvFresh] [s6Step23HeadFOut,s6Step23HeadGvOut,s6Step23HeadFvOut]
    (growRow 777 s6Step23HeadGFresh) ((growRow 795 s6Step23HeadFFresh ++ (growRow 775 s6Step23HeadGvFresh ++ (growRow 776 s6Step23HeadFvFresh ++ [])))) s6Step23HeadG_Incoming s6Step23HeadG_checked h1 s6Step23HeadG_Outgoing
  exact h0
theorem s6Step23HeadBank_checked : compileHmrBankResizeLog .headroom s6Step23HeadGBefore ⟨s6Step23HeadFRow,s6Step23HeadGRow,s6Step23HeadFvRow,s6Step23HeadGvRow⟩ ⟨257,257,25,25⟩ [s6Step23HeadGFresh,s6Step23HeadFFresh,s6Step23HeadGvFresh,s6Step23HeadFvFresh]=
    some (s6Step23HeadFvAfter,⟨s6Step23HeadFOut,s6Step23HeadGOut,s6Step23HeadFvOut,s6Step23HeadGvOut⟩,(growRow 777 s6Step23HeadGFresh ++ (growRow 795 s6Step23HeadFFresh ++ (growRow 775 s6Step23HeadGvFresh ++ (growRow 776 s6Step23HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step23HeadBank_rows]
  rfl
def s6Step24HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862],777⟩
def s6Step24HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860],795⟩
def s6Step24HeadGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 887, 881],775⟩
def s6Step24HeadFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 853],776⟩
theorem s6Step24HeadBank_incomingDistinct : ([s6Step24HeadGRow,s6Step24HeadFRow,s6Step24HeadGvRow,s6Step24HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24HeadBank_outgoingOwned : rowsOwned s6Step24HeadFvAfter [s6Step24HeadGOut,s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step24HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24HeadG_Incoming : rowsOwned s6Step24HeadGBefore [s6Step24HeadGRow,s6Step24HeadFRow,s6Step24HeadGvRow,s6Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24HeadGRow,s6Step24HeadFRow,s6Step24HeadGvRow,s6Step24HeadFvRow] 0 s6Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24HeadGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24HeadG_Outgoing : rowsOwned s6Step24HeadFvAfter [s6Step24HeadGOut,s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut] :=
  hmrRows_owned_drop s6Step24HeadFvAfter [s6Step24HeadGOut,s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut] 0 s6Step24HeadBank_outgoingOwned
theorem s6Step24HeadF_Incoming : rowsOwned s6Step24HeadFBefore [s6Step24HeadFRow,s6Step24HeadGvRow,s6Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24HeadGRow,s6Step24HeadFRow,s6Step24HeadGvRow,s6Step24HeadFvRow] 1 s6Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24HeadFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24HeadF_Outgoing : rowsOwned s6Step24HeadFvAfter [s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut] :=
  hmrRows_owned_drop s6Step24HeadFvAfter [s6Step24HeadGOut,s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut] 1 s6Step24HeadBank_outgoingOwned
theorem s6Step24HeadGv_Incoming : rowsOwned s6Step24HeadGvBefore [s6Step24HeadGvRow,s6Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24HeadGRow,s6Step24HeadFRow,s6Step24HeadGvRow,s6Step24HeadFvRow] 2 s6Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24HeadGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24HeadGv_Outgoing : rowsOwned s6Step24HeadFvAfter [s6Step24HeadGvOut,s6Step24HeadFvOut] :=
  hmrRows_owned_drop s6Step24HeadFvAfter [s6Step24HeadGOut,s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut] 2 s6Step24HeadBank_outgoingOwned
theorem s6Step24HeadFv_Incoming : rowsOwned s6Step24HeadFvBefore [s6Step24HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24HeadGRow,s6Step24HeadFRow,s6Step24HeadGvRow,s6Step24HeadFvRow] 3 s6Step24HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24HeadFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24HeadFv_Outgoing : rowsOwned s6Step24HeadFvAfter [s6Step24HeadFvOut] :=
  hmrRows_owned_drop s6Step24HeadFvAfter [s6Step24HeadGOut,s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut] 3 s6Step24HeadBank_outgoingOwned
theorem s6Step24HeadBank_rows : planWindowRowsLog s6Step24HeadGBefore [(s6Step24HeadGRow,257),(s6Step24HeadFRow,257),(s6Step24HeadGvRow,26),(s6Step24HeadFvRow,26)] [s6Step24HeadGFresh,s6Step24HeadFFresh,s6Step24HeadGvFresh,s6Step24HeadFvFresh]=
    some (s6Step24HeadFvAfter,[s6Step24HeadGOut,s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut],(growRow 777 s6Step24HeadGFresh ++ (growRow 795 s6Step24HeadFFresh ++ (growRow 775 s6Step24HeadGvFresh ++ (growRow 776 s6Step24HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step24HeadFvAfter [] []=some (s6Step24HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step24HeadFvBefore s6Step24HeadFvAfter s6Step24HeadFvAfter
    s6Step24HeadFvRow s6Step24HeadFvOut 26 s6Step24HeadFvFresh [] [] []
    (growRow 776 s6Step24HeadFvFresh) ([]) s6Step24HeadFv_Incoming s6Step24HeadFv_checked h4 s6Step24HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step24HeadGvBefore s6Step24HeadGvAfter s6Step24HeadFvAfter
    s6Step24HeadGvRow s6Step24HeadGvOut 26 s6Step24HeadGvFresh [(s6Step24HeadFvRow,26)] [s6Step24HeadFvFresh] [s6Step24HeadFvOut]
    (growRow 775 s6Step24HeadGvFresh) ((growRow 776 s6Step24HeadFvFresh ++ [])) s6Step24HeadGv_Incoming s6Step24HeadGv_checked h3 s6Step24HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step24HeadFBefore s6Step24HeadFAfter s6Step24HeadFvAfter
    s6Step24HeadFRow s6Step24HeadFOut 257 s6Step24HeadFFresh [(s6Step24HeadGvRow,26),(s6Step24HeadFvRow,26)] [s6Step24HeadGvFresh,s6Step24HeadFvFresh] [s6Step24HeadGvOut,s6Step24HeadFvOut]
    (growRow 795 s6Step24HeadFFresh) ((growRow 775 s6Step24HeadGvFresh ++ (growRow 776 s6Step24HeadFvFresh ++ []))) s6Step24HeadF_Incoming s6Step24HeadF_checked h2 s6Step24HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step24HeadGBefore s6Step24HeadGAfter s6Step24HeadFvAfter
    s6Step24HeadGRow s6Step24HeadGOut 257 s6Step24HeadGFresh [(s6Step24HeadFRow,257),(s6Step24HeadGvRow,26),(s6Step24HeadFvRow,26)] [s6Step24HeadFFresh,s6Step24HeadGvFresh,s6Step24HeadFvFresh] [s6Step24HeadFOut,s6Step24HeadGvOut,s6Step24HeadFvOut]
    (growRow 777 s6Step24HeadGFresh) ((growRow 795 s6Step24HeadFFresh ++ (growRow 775 s6Step24HeadGvFresh ++ (growRow 776 s6Step24HeadFvFresh ++ [])))) s6Step24HeadG_Incoming s6Step24HeadG_checked h1 s6Step24HeadG_Outgoing
  exact h0
theorem s6Step24HeadBank_checked : compileHmrBankResizeLog .headroom s6Step24HeadGBefore ⟨s6Step24HeadFRow,s6Step24HeadGRow,s6Step24HeadFvRow,s6Step24HeadGvRow⟩ ⟨257,257,26,26⟩ [s6Step24HeadGFresh,s6Step24HeadFFresh,s6Step24HeadGvFresh,s6Step24HeadFvFresh]=
    some (s6Step24HeadFvAfter,⟨s6Step24HeadFOut,s6Step24HeadGOut,s6Step24HeadFvOut,s6Step24HeadGvOut⟩,(growRow 777 s6Step24HeadGFresh ++ (growRow 795 s6Step24HeadFFresh ++ (growRow 775 s6Step24HeadGvFresh ++ (growRow 776 s6Step24HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step24HeadBank_rows]
  rfl
def s6Step25HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 813, 887],777⟩
def s6Step25HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 881],795⟩
def s6Step25HeadGvOut : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853],775⟩
def s6Step25HeadFvOut : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860],776⟩
theorem s6Step25HeadBank_incomingDistinct : ([s6Step25HeadGRow,s6Step25HeadFRow,s6Step25HeadGvRow,s6Step25HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25HeadBank_outgoingOwned : rowsOwned s6Step25HeadFvAfter [s6Step25HeadGOut,s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step25HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25HeadG_Incoming : rowsOwned s6Step25HeadGBefore [s6Step25HeadGRow,s6Step25HeadFRow,s6Step25HeadGvRow,s6Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25HeadGRow,s6Step25HeadFRow,s6Step25HeadGvRow,s6Step25HeadFvRow] 0 s6Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25HeadGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25HeadG_Outgoing : rowsOwned s6Step25HeadFvAfter [s6Step25HeadGOut,s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut] :=
  hmrRows_owned_drop s6Step25HeadFvAfter [s6Step25HeadGOut,s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut] 0 s6Step25HeadBank_outgoingOwned
theorem s6Step25HeadF_Incoming : rowsOwned s6Step25HeadFBefore [s6Step25HeadFRow,s6Step25HeadGvRow,s6Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25HeadGRow,s6Step25HeadFRow,s6Step25HeadGvRow,s6Step25HeadFvRow] 1 s6Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25HeadFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25HeadF_Outgoing : rowsOwned s6Step25HeadFvAfter [s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut] :=
  hmrRows_owned_drop s6Step25HeadFvAfter [s6Step25HeadGOut,s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut] 1 s6Step25HeadBank_outgoingOwned
theorem s6Step25HeadGv_Incoming : rowsOwned s6Step25HeadGvBefore [s6Step25HeadGvRow,s6Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25HeadGRow,s6Step25HeadFRow,s6Step25HeadGvRow,s6Step25HeadFvRow] 2 s6Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25HeadGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25HeadGv_Outgoing : rowsOwned s6Step25HeadFvAfter [s6Step25HeadGvOut,s6Step25HeadFvOut] :=
  hmrRows_owned_drop s6Step25HeadFvAfter [s6Step25HeadGOut,s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut] 2 s6Step25HeadBank_outgoingOwned
theorem s6Step25HeadFv_Incoming : rowsOwned s6Step25HeadFvBefore [s6Step25HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25HeadGRow,s6Step25HeadFRow,s6Step25HeadGvRow,s6Step25HeadFvRow] 3 s6Step25HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25HeadFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,860),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25HeadFv_Outgoing : rowsOwned s6Step25HeadFvAfter [s6Step25HeadFvOut] :=
  hmrRows_owned_drop s6Step25HeadFvAfter [s6Step25HeadGOut,s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut] 3 s6Step25HeadBank_outgoingOwned
theorem s6Step25HeadBank_rows : planWindowRowsLog s6Step25HeadGBefore [(s6Step25HeadGRow,256),(s6Step25HeadFRow,256),(s6Step25HeadGvRow,26),(s6Step25HeadFvRow,26)] [s6Step25HeadGFresh,s6Step25HeadFFresh,s6Step25HeadGvFresh,s6Step25HeadFvFresh]=
    some (s6Step25HeadFvAfter,[s6Step25HeadGOut,s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut],(growRow 777 s6Step25HeadGFresh ++ (growRow 795 s6Step25HeadFFresh ++ (growRow 775 s6Step25HeadGvFresh ++ (growRow 776 s6Step25HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step25HeadFvAfter [] []=some (s6Step25HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step25HeadFvBefore s6Step25HeadFvAfter s6Step25HeadFvAfter
    s6Step25HeadFvRow s6Step25HeadFvOut 26 s6Step25HeadFvFresh [] [] []
    (growRow 776 s6Step25HeadFvFresh) ([]) s6Step25HeadFv_Incoming s6Step25HeadFv_checked h4 s6Step25HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step25HeadGvBefore s6Step25HeadGvAfter s6Step25HeadFvAfter
    s6Step25HeadGvRow s6Step25HeadGvOut 26 s6Step25HeadGvFresh [(s6Step25HeadFvRow,26)] [s6Step25HeadFvFresh] [s6Step25HeadFvOut]
    (growRow 775 s6Step25HeadGvFresh) ((growRow 776 s6Step25HeadFvFresh ++ [])) s6Step25HeadGv_Incoming s6Step25HeadGv_checked h3 s6Step25HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step25HeadFBefore s6Step25HeadFAfter s6Step25HeadFvAfter
    s6Step25HeadFRow s6Step25HeadFOut 256 s6Step25HeadFFresh [(s6Step25HeadGvRow,26),(s6Step25HeadFvRow,26)] [s6Step25HeadGvFresh,s6Step25HeadFvFresh] [s6Step25HeadGvOut,s6Step25HeadFvOut]
    (growRow 795 s6Step25HeadFFresh) ((growRow 775 s6Step25HeadGvFresh ++ (growRow 776 s6Step25HeadFvFresh ++ []))) s6Step25HeadF_Incoming s6Step25HeadF_checked h2 s6Step25HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step25HeadGBefore s6Step25HeadGAfter s6Step25HeadFvAfter
    s6Step25HeadGRow s6Step25HeadGOut 256 s6Step25HeadGFresh [(s6Step25HeadFRow,256),(s6Step25HeadGvRow,26),(s6Step25HeadFvRow,26)] [s6Step25HeadFFresh,s6Step25HeadGvFresh,s6Step25HeadFvFresh] [s6Step25HeadFOut,s6Step25HeadGvOut,s6Step25HeadFvOut]
    (growRow 777 s6Step25HeadGFresh) ((growRow 795 s6Step25HeadFFresh ++ (growRow 775 s6Step25HeadGvFresh ++ (growRow 776 s6Step25HeadFvFresh ++ [])))) s6Step25HeadG_Incoming s6Step25HeadG_checked h1 s6Step25HeadG_Outgoing
  exact h0
theorem s6Step25HeadBank_checked : compileHmrBankResizeLog .headroom s6Step25HeadGBefore ⟨s6Step25HeadFRow,s6Step25HeadGRow,s6Step25HeadFvRow,s6Step25HeadGvRow⟩ ⟨256,256,26,26⟩ [s6Step25HeadGFresh,s6Step25HeadFFresh,s6Step25HeadGvFresh,s6Step25HeadFvFresh]=
    some (s6Step25HeadFvAfter,⟨s6Step25HeadFOut,s6Step25HeadGOut,s6Step25HeadFvOut,s6Step25HeadGvOut⟩,(growRow 777 s6Step25HeadGFresh ++ (growRow 795 s6Step25HeadFFresh ++ (growRow 775 s6Step25HeadGvFresh ++ (growRow 776 s6Step25HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step25HeadBank_rows]
  rfl
def s6Step26HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 876, 813],777⟩
def s6Step26HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 887],795⟩
def s6Step26HeadGvOut : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 859, 807],775⟩
def s6Step26HeadFvOut : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862],776⟩
theorem s6Step26HeadBank_incomingDistinct : ([s6Step26HeadGRow,s6Step26HeadFRow,s6Step26HeadGvRow,s6Step26HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26HeadBank_outgoingOwned : rowsOwned s6Step26HeadFvAfter [s6Step26HeadGOut,s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step26HeadFvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26HeadG_Incoming : rowsOwned s6Step26HeadGBefore [s6Step26HeadGRow,s6Step26HeadFRow,s6Step26HeadGvRow,s6Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26HeadGRow,s6Step26HeadFRow,s6Step26HeadGvRow,s6Step26HeadFvRow] 0 s6Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26HeadGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26HeadG_Outgoing : rowsOwned s6Step26HeadFvAfter [s6Step26HeadGOut,s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut] :=
  hmrRows_owned_drop s6Step26HeadFvAfter [s6Step26HeadGOut,s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut] 0 s6Step26HeadBank_outgoingOwned
theorem s6Step26HeadF_Incoming : rowsOwned s6Step26HeadFBefore [s6Step26HeadFRow,s6Step26HeadGvRow,s6Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26HeadGRow,s6Step26HeadFRow,s6Step26HeadGvRow,s6Step26HeadFvRow] 1 s6Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26HeadFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26HeadF_Outgoing : rowsOwned s6Step26HeadFvAfter [s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut] :=
  hmrRows_owned_drop s6Step26HeadFvAfter [s6Step26HeadGOut,s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut] 1 s6Step26HeadBank_outgoingOwned
theorem s6Step26HeadGv_Incoming : rowsOwned s6Step26HeadGvBefore [s6Step26HeadGvRow,s6Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26HeadGRow,s6Step26HeadFRow,s6Step26HeadGvRow,s6Step26HeadFvRow] 2 s6Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26HeadGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26HeadGv_Outgoing : rowsOwned s6Step26HeadFvAfter [s6Step26HeadGvOut,s6Step26HeadFvOut] :=
  hmrRows_owned_drop s6Step26HeadFvAfter [s6Step26HeadGOut,s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut] 2 s6Step26HeadBank_outgoingOwned
theorem s6Step26HeadFv_Incoming : rowsOwned s6Step26HeadFvBefore [s6Step26HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26HeadGRow,s6Step26HeadFRow,s6Step26HeadGvRow,s6Step26HeadFvRow] 3 s6Step26HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26HeadFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(863,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26HeadFv_Outgoing : rowsOwned s6Step26HeadFvAfter [s6Step26HeadFvOut] :=
  hmrRows_owned_drop s6Step26HeadFvAfter [s6Step26HeadGOut,s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut] 3 s6Step26HeadBank_outgoingOwned
theorem s6Step26HeadBank_rows : planWindowRowsLog s6Step26HeadGBefore [(s6Step26HeadGRow,256),(s6Step26HeadFRow,256),(s6Step26HeadGvRow,27),(s6Step26HeadFvRow,27)] [s6Step26HeadGFresh,s6Step26HeadFFresh,s6Step26HeadGvFresh,s6Step26HeadFvFresh]=
    some (s6Step26HeadFvAfter,[s6Step26HeadGOut,s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut],(growRow 777 s6Step26HeadGFresh ++ (growRow 795 s6Step26HeadFFresh ++ (growRow 775 s6Step26HeadGvFresh ++ (growRow 776 s6Step26HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step26HeadFvAfter [] []=some (s6Step26HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step26HeadFvBefore s6Step26HeadFvAfter s6Step26HeadFvAfter
    s6Step26HeadFvRow s6Step26HeadFvOut 27 s6Step26HeadFvFresh [] [] []
    (growRow 776 s6Step26HeadFvFresh) ([]) s6Step26HeadFv_Incoming s6Step26HeadFv_checked h4 s6Step26HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step26HeadGvBefore s6Step26HeadGvAfter s6Step26HeadFvAfter
    s6Step26HeadGvRow s6Step26HeadGvOut 27 s6Step26HeadGvFresh [(s6Step26HeadFvRow,27)] [s6Step26HeadFvFresh] [s6Step26HeadFvOut]
    (growRow 775 s6Step26HeadGvFresh) ((growRow 776 s6Step26HeadFvFresh ++ [])) s6Step26HeadGv_Incoming s6Step26HeadGv_checked h3 s6Step26HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step26HeadFBefore s6Step26HeadFAfter s6Step26HeadFvAfter
    s6Step26HeadFRow s6Step26HeadFOut 256 s6Step26HeadFFresh [(s6Step26HeadGvRow,27),(s6Step26HeadFvRow,27)] [s6Step26HeadGvFresh,s6Step26HeadFvFresh] [s6Step26HeadGvOut,s6Step26HeadFvOut]
    (growRow 795 s6Step26HeadFFresh) ((growRow 775 s6Step26HeadGvFresh ++ (growRow 776 s6Step26HeadFvFresh ++ []))) s6Step26HeadF_Incoming s6Step26HeadF_checked h2 s6Step26HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step26HeadGBefore s6Step26HeadGAfter s6Step26HeadFvAfter
    s6Step26HeadGRow s6Step26HeadGOut 256 s6Step26HeadGFresh [(s6Step26HeadFRow,256),(s6Step26HeadGvRow,27),(s6Step26HeadFvRow,27)] [s6Step26HeadFFresh,s6Step26HeadGvFresh,s6Step26HeadFvFresh] [s6Step26HeadFOut,s6Step26HeadGvOut,s6Step26HeadFvOut]
    (growRow 777 s6Step26HeadGFresh) ((growRow 795 s6Step26HeadFFresh ++ (growRow 775 s6Step26HeadGvFresh ++ (growRow 776 s6Step26HeadFvFresh ++ [])))) s6Step26HeadG_Incoming s6Step26HeadG_checked h1 s6Step26HeadG_Outgoing
  exact h0
theorem s6Step26HeadBank_checked : compileHmrBankResizeLog .headroom s6Step26HeadGBefore ⟨s6Step26HeadFRow,s6Step26HeadGRow,s6Step26HeadFvRow,s6Step26HeadGvRow⟩ ⟨256,256,27,27⟩ [s6Step26HeadGFresh,s6Step26HeadFFresh,s6Step26HeadGvFresh,s6Step26HeadFvFresh]=
    some (s6Step26HeadFvAfter,⟨s6Step26HeadFOut,s6Step26HeadGOut,s6Step26HeadFvOut,s6Step26HeadGvOut⟩,(growRow 777 s6Step26HeadGFresh ++ (growRow 795 s6Step26HeadFFresh ++ (growRow 775 s6Step26HeadGvFresh ++ (growRow 776 s6Step26HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step26HeadBank_rows]
  rfl
def s6Step27HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 881, 876],777⟩
def s6Step27HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 813],795⟩
def s6Step27HeadGvOut : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 859, 867],775⟩
def s6Step27HeadFvOut : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩
theorem s6Step27HeadBank_incomingDistinct : ([s6Step27HeadGRow,s6Step27HeadFRow,s6Step27HeadGvRow,s6Step27HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27HeadBank_outgoingOwned : rowsOwned s6Step27HeadFvAfter [s6Step27HeadGOut,s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step27HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27HeadG_Incoming : rowsOwned s6Step27HeadGBefore [s6Step27HeadGRow,s6Step27HeadFRow,s6Step27HeadGvRow,s6Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27HeadGRow,s6Step27HeadFRow,s6Step27HeadGvRow,s6Step27HeadFvRow] 0 s6Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27HeadGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27HeadG_Outgoing : rowsOwned s6Step27HeadFvAfter [s6Step27HeadGOut,s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut] :=
  hmrRows_owned_drop s6Step27HeadFvAfter [s6Step27HeadGOut,s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut] 0 s6Step27HeadBank_outgoingOwned
theorem s6Step27HeadF_Incoming : rowsOwned s6Step27HeadFBefore [s6Step27HeadFRow,s6Step27HeadGvRow,s6Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27HeadGRow,s6Step27HeadFRow,s6Step27HeadGvRow,s6Step27HeadFvRow] 1 s6Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27HeadFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27HeadF_Outgoing : rowsOwned s6Step27HeadFvAfter [s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut] :=
  hmrRows_owned_drop s6Step27HeadFvAfter [s6Step27HeadGOut,s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut] 1 s6Step27HeadBank_outgoingOwned
theorem s6Step27HeadGv_Incoming : rowsOwned s6Step27HeadGvBefore [s6Step27HeadGvRow,s6Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27HeadGRow,s6Step27HeadFRow,s6Step27HeadGvRow,s6Step27HeadFvRow] 2 s6Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27HeadGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27HeadGv_Outgoing : rowsOwned s6Step27HeadFvAfter [s6Step27HeadGvOut,s6Step27HeadFvOut] :=
  hmrRows_owned_drop s6Step27HeadFvAfter [s6Step27HeadGOut,s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut] 2 s6Step27HeadBank_outgoingOwned
theorem s6Step27HeadFv_Incoming : rowsOwned s6Step27HeadFvBefore [s6Step27HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27HeadGRow,s6Step27HeadFRow,s6Step27HeadGvRow,s6Step27HeadFvRow] 3 s6Step27HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27HeadFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27HeadFv_Outgoing : rowsOwned s6Step27HeadFvAfter [s6Step27HeadFvOut] :=
  hmrRows_owned_drop s6Step27HeadFvAfter [s6Step27HeadGOut,s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut] 3 s6Step27HeadBank_outgoingOwned
theorem s6Step27HeadBank_rows : planWindowRowsLog s6Step27HeadGBefore [(s6Step27HeadGRow,256),(s6Step27HeadFRow,256),(s6Step27HeadGvRow,28),(s6Step27HeadFvRow,28)] [s6Step27HeadGFresh,s6Step27HeadFFresh,s6Step27HeadGvFresh,s6Step27HeadFvFresh]=
    some (s6Step27HeadFvAfter,[s6Step27HeadGOut,s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut],(growRow 777 s6Step27HeadGFresh ++ (growRow 795 s6Step27HeadFFresh ++ (growRow 775 s6Step27HeadGvFresh ++ (growRow 776 s6Step27HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step27HeadFvAfter [] []=some (s6Step27HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step27HeadFvBefore s6Step27HeadFvAfter s6Step27HeadFvAfter
    s6Step27HeadFvRow s6Step27HeadFvOut 28 s6Step27HeadFvFresh [] [] []
    (growRow 776 s6Step27HeadFvFresh) ([]) s6Step27HeadFv_Incoming s6Step27HeadFv_checked h4 s6Step27HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step27HeadGvBefore s6Step27HeadGvAfter s6Step27HeadFvAfter
    s6Step27HeadGvRow s6Step27HeadGvOut 28 s6Step27HeadGvFresh [(s6Step27HeadFvRow,28)] [s6Step27HeadFvFresh] [s6Step27HeadFvOut]
    (growRow 775 s6Step27HeadGvFresh) ((growRow 776 s6Step27HeadFvFresh ++ [])) s6Step27HeadGv_Incoming s6Step27HeadGv_checked h3 s6Step27HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step27HeadFBefore s6Step27HeadFAfter s6Step27HeadFvAfter
    s6Step27HeadFRow s6Step27HeadFOut 256 s6Step27HeadFFresh [(s6Step27HeadGvRow,28),(s6Step27HeadFvRow,28)] [s6Step27HeadGvFresh,s6Step27HeadFvFresh] [s6Step27HeadGvOut,s6Step27HeadFvOut]
    (growRow 795 s6Step27HeadFFresh) ((growRow 775 s6Step27HeadGvFresh ++ (growRow 776 s6Step27HeadFvFresh ++ []))) s6Step27HeadF_Incoming s6Step27HeadF_checked h2 s6Step27HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step27HeadGBefore s6Step27HeadGAfter s6Step27HeadFvAfter
    s6Step27HeadGRow s6Step27HeadGOut 256 s6Step27HeadGFresh [(s6Step27HeadFRow,256),(s6Step27HeadGvRow,28),(s6Step27HeadFvRow,28)] [s6Step27HeadFFresh,s6Step27HeadGvFresh,s6Step27HeadFvFresh] [s6Step27HeadFOut,s6Step27HeadGvOut,s6Step27HeadFvOut]
    (growRow 777 s6Step27HeadGFresh) ((growRow 795 s6Step27HeadFFresh ++ (growRow 775 s6Step27HeadGvFresh ++ (growRow 776 s6Step27HeadFvFresh ++ [])))) s6Step27HeadG_Incoming s6Step27HeadG_checked h1 s6Step27HeadG_Outgoing
  exact h0
theorem s6Step27HeadBank_checked : compileHmrBankResizeLog .headroom s6Step27HeadGBefore ⟨s6Step27HeadFRow,s6Step27HeadGRow,s6Step27HeadFvRow,s6Step27HeadGvRow⟩ ⟨256,256,28,28⟩ [s6Step27HeadGFresh,s6Step27HeadFFresh,s6Step27HeadGvFresh,s6Step27HeadFvFresh]=
    some (s6Step27HeadFvAfter,⟨s6Step27HeadFOut,s6Step27HeadGOut,s6Step27HeadFvOut,s6Step27HeadGvOut⟩,(growRow 777 s6Step27HeadGFresh ++ (growRow 795 s6Step27HeadFFresh ++ (growRow 775 s6Step27HeadGvFresh ++ (growRow 776 s6Step27HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step27HeadBank_rows]
  rfl
def s6Step28HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 887, 867],777⟩
def s6Step28HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 813],795⟩
def s6Step28HeadGvOut : WindowRow := ⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881],775⟩
def s6Step28HeadFvOut : WindowRow := ⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 876],776⟩
theorem s6Step28HeadBank_incomingDistinct : ([s6Step28HeadGRow,s6Step28HeadFRow,s6Step28HeadGvRow,s6Step28HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28HeadBank_outgoingOwned : rowsOwned s6Step28HeadFvAfter [s6Step28HeadGOut,s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step28HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28HeadG_Incoming : rowsOwned s6Step28HeadGBefore [s6Step28HeadGRow,s6Step28HeadFRow,s6Step28HeadGvRow,s6Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28HeadGRow,s6Step28HeadFRow,s6Step28HeadGvRow,s6Step28HeadFvRow] 0 s6Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28HeadG_Outgoing : rowsOwned s6Step28HeadFvAfter [s6Step28HeadGOut,s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut] :=
  hmrRows_owned_drop s6Step28HeadFvAfter [s6Step28HeadGOut,s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut] 0 s6Step28HeadBank_outgoingOwned
theorem s6Step28HeadF_Incoming : rowsOwned s6Step28HeadFBefore [s6Step28HeadFRow,s6Step28HeadGvRow,s6Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28HeadGRow,s6Step28HeadFRow,s6Step28HeadGvRow,s6Step28HeadFvRow] 1 s6Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28HeadFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28HeadF_Outgoing : rowsOwned s6Step28HeadFvAfter [s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut] :=
  hmrRows_owned_drop s6Step28HeadFvAfter [s6Step28HeadGOut,s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut] 1 s6Step28HeadBank_outgoingOwned
theorem s6Step28HeadGv_Incoming : rowsOwned s6Step28HeadGvBefore [s6Step28HeadGvRow,s6Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28HeadGRow,s6Step28HeadFRow,s6Step28HeadGvRow,s6Step28HeadFvRow] 2 s6Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28HeadGv_Outgoing : rowsOwned s6Step28HeadFvAfter [s6Step28HeadGvOut,s6Step28HeadFvOut] :=
  hmrRows_owned_drop s6Step28HeadFvAfter [s6Step28HeadGOut,s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut] 2 s6Step28HeadBank_outgoingOwned
theorem s6Step28HeadFv_Incoming : rowsOwned s6Step28HeadFvBefore [s6Step28HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28HeadGRow,s6Step28HeadFRow,s6Step28HeadGvRow,s6Step28HeadFvRow] 3 s6Step28HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28HeadFv_Outgoing : rowsOwned s6Step28HeadFvAfter [s6Step28HeadFvOut] :=
  hmrRows_owned_drop s6Step28HeadFvAfter [s6Step28HeadGOut,s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut] 3 s6Step28HeadBank_outgoingOwned
theorem s6Step28HeadBank_rows : planWindowRowsLog s6Step28HeadGBefore [(s6Step28HeadGRow,255),(s6Step28HeadFRow,255),(s6Step28HeadGvRow,29),(s6Step28HeadFvRow,29)] [s6Step28HeadGFresh,s6Step28HeadFFresh,s6Step28HeadGvFresh,s6Step28HeadFvFresh]=
    some (s6Step28HeadFvAfter,[s6Step28HeadGOut,s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut],(growRow 777 s6Step28HeadGFresh ++ (growRow 795 s6Step28HeadFFresh ++ (growRow 775 s6Step28HeadGvFresh ++ (growRow 776 s6Step28HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step28HeadFvAfter [] []=some (s6Step28HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step28HeadFvBefore s6Step28HeadFvAfter s6Step28HeadFvAfter
    s6Step28HeadFvRow s6Step28HeadFvOut 29 s6Step28HeadFvFresh [] [] []
    (growRow 776 s6Step28HeadFvFresh) ([]) s6Step28HeadFv_Incoming s6Step28HeadFv_checked h4 s6Step28HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step28HeadGvBefore s6Step28HeadGvAfter s6Step28HeadFvAfter
    s6Step28HeadGvRow s6Step28HeadGvOut 29 s6Step28HeadGvFresh [(s6Step28HeadFvRow,29)] [s6Step28HeadFvFresh] [s6Step28HeadFvOut]
    (growRow 775 s6Step28HeadGvFresh) ((growRow 776 s6Step28HeadFvFresh ++ [])) s6Step28HeadGv_Incoming s6Step28HeadGv_checked h3 s6Step28HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step28HeadFBefore s6Step28HeadFAfter s6Step28HeadFvAfter
    s6Step28HeadFRow s6Step28HeadFOut 255 s6Step28HeadFFresh [(s6Step28HeadGvRow,29),(s6Step28HeadFvRow,29)] [s6Step28HeadGvFresh,s6Step28HeadFvFresh] [s6Step28HeadGvOut,s6Step28HeadFvOut]
    (growRow 795 s6Step28HeadFFresh) ((growRow 775 s6Step28HeadGvFresh ++ (growRow 776 s6Step28HeadFvFresh ++ []))) s6Step28HeadF_Incoming s6Step28HeadF_checked h2 s6Step28HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step28HeadGBefore s6Step28HeadGAfter s6Step28HeadFvAfter
    s6Step28HeadGRow s6Step28HeadGOut 255 s6Step28HeadGFresh [(s6Step28HeadFRow,255),(s6Step28HeadGvRow,29),(s6Step28HeadFvRow,29)] [s6Step28HeadFFresh,s6Step28HeadGvFresh,s6Step28HeadFvFresh] [s6Step28HeadFOut,s6Step28HeadGvOut,s6Step28HeadFvOut]
    (growRow 777 s6Step28HeadGFresh) ((growRow 795 s6Step28HeadFFresh ++ (growRow 775 s6Step28HeadGvFresh ++ (growRow 776 s6Step28HeadFvFresh ++ [])))) s6Step28HeadG_Incoming s6Step28HeadG_checked h1 s6Step28HeadG_Outgoing
  exact h0
theorem s6Step28HeadBank_checked : compileHmrBankResizeLog .headroom s6Step28HeadGBefore ⟨s6Step28HeadFRow,s6Step28HeadGRow,s6Step28HeadFvRow,s6Step28HeadGvRow⟩ ⟨255,255,29,29⟩ [s6Step28HeadGFresh,s6Step28HeadFFresh,s6Step28HeadGvFresh,s6Step28HeadFvFresh]=
    some (s6Step28HeadFvAfter,⟨s6Step28HeadFOut,s6Step28HeadGOut,s6Step28HeadFvOut,s6Step28HeadGvOut⟩,(growRow 777 s6Step28HeadGFresh ++ (growRow 795 s6Step28HeadFFresh ++ (growRow 775 s6Step28HeadGvFresh ++ (growRow 776 s6Step28HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step28HeadBank_rows]
  rfl
def s6Step29HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 859, 876],777⟩
def s6Step29HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 813],795⟩
def s6Step29HeadGvOut : WindowRow := ⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 793, 887],775⟩
def s6Step29HeadFvOut : WindowRow := ⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
theorem s6Step29HeadBank_incomingDistinct : ([s6Step29HeadGRow,s6Step29HeadFRow,s6Step29HeadGvRow,s6Step29HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29HeadBank_outgoingOwned : rowsOwned s6Step29HeadFvAfter [s6Step29HeadGOut,s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step29HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29HeadG_Incoming : rowsOwned s6Step29HeadGBefore [s6Step29HeadGRow,s6Step29HeadFRow,s6Step29HeadGvRow,s6Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29HeadGRow,s6Step29HeadFRow,s6Step29HeadGvRow,s6Step29HeadFvRow] 0 s6Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29HeadG_Outgoing : rowsOwned s6Step29HeadFvAfter [s6Step29HeadGOut,s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut] :=
  hmrRows_owned_drop s6Step29HeadFvAfter [s6Step29HeadGOut,s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut] 0 s6Step29HeadBank_outgoingOwned
theorem s6Step29HeadF_Incoming : rowsOwned s6Step29HeadFBefore [s6Step29HeadFRow,s6Step29HeadGvRow,s6Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29HeadGRow,s6Step29HeadFRow,s6Step29HeadGvRow,s6Step29HeadFvRow] 1 s6Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29HeadFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29HeadF_Outgoing : rowsOwned s6Step29HeadFvAfter [s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut] :=
  hmrRows_owned_drop s6Step29HeadFvAfter [s6Step29HeadGOut,s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut] 1 s6Step29HeadBank_outgoingOwned
theorem s6Step29HeadGv_Incoming : rowsOwned s6Step29HeadGvBefore [s6Step29HeadGvRow,s6Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29HeadGRow,s6Step29HeadFRow,s6Step29HeadGvRow,s6Step29HeadFvRow] 2 s6Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29HeadGv_Outgoing : rowsOwned s6Step29HeadFvAfter [s6Step29HeadGvOut,s6Step29HeadFvOut] :=
  hmrRows_owned_drop s6Step29HeadFvAfter [s6Step29HeadGOut,s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut] 2 s6Step29HeadBank_outgoingOwned
theorem s6Step29HeadFv_Incoming : rowsOwned s6Step29HeadFvBefore [s6Step29HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29HeadGRow,s6Step29HeadFRow,s6Step29HeadGvRow,s6Step29HeadFvRow] 3 s6Step29HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29HeadFv_Outgoing : rowsOwned s6Step29HeadFvAfter [s6Step29HeadFvOut] :=
  hmrRows_owned_drop s6Step29HeadFvAfter [s6Step29HeadGOut,s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut] 3 s6Step29HeadBank_outgoingOwned
theorem s6Step29HeadBank_rows : planWindowRowsLog s6Step29HeadGBefore [(s6Step29HeadGRow,255),(s6Step29HeadFRow,255),(s6Step29HeadGvRow,29),(s6Step29HeadFvRow,29)] [s6Step29HeadGFresh,s6Step29HeadFFresh,s6Step29HeadGvFresh,s6Step29HeadFvFresh]=
    some (s6Step29HeadFvAfter,[s6Step29HeadGOut,s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut],(growRow 777 s6Step29HeadGFresh ++ (growRow 795 s6Step29HeadFFresh ++ (growRow 775 s6Step29HeadGvFresh ++ (growRow 776 s6Step29HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step29HeadFvAfter [] []=some (s6Step29HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step29HeadFvBefore s6Step29HeadFvAfter s6Step29HeadFvAfter
    s6Step29HeadFvRow s6Step29HeadFvOut 29 s6Step29HeadFvFresh [] [] []
    (growRow 776 s6Step29HeadFvFresh) ([]) s6Step29HeadFv_Incoming s6Step29HeadFv_checked h4 s6Step29HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step29HeadGvBefore s6Step29HeadGvAfter s6Step29HeadFvAfter
    s6Step29HeadGvRow s6Step29HeadGvOut 29 s6Step29HeadGvFresh [(s6Step29HeadFvRow,29)] [s6Step29HeadFvFresh] [s6Step29HeadFvOut]
    (growRow 775 s6Step29HeadGvFresh) ((growRow 776 s6Step29HeadFvFresh ++ [])) s6Step29HeadGv_Incoming s6Step29HeadGv_checked h3 s6Step29HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step29HeadFBefore s6Step29HeadFAfter s6Step29HeadFvAfter
    s6Step29HeadFRow s6Step29HeadFOut 255 s6Step29HeadFFresh [(s6Step29HeadGvRow,29),(s6Step29HeadFvRow,29)] [s6Step29HeadGvFresh,s6Step29HeadFvFresh] [s6Step29HeadGvOut,s6Step29HeadFvOut]
    (growRow 795 s6Step29HeadFFresh) ((growRow 775 s6Step29HeadGvFresh ++ (growRow 776 s6Step29HeadFvFresh ++ []))) s6Step29HeadF_Incoming s6Step29HeadF_checked h2 s6Step29HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step29HeadGBefore s6Step29HeadGAfter s6Step29HeadFvAfter
    s6Step29HeadGRow s6Step29HeadGOut 255 s6Step29HeadGFresh [(s6Step29HeadFRow,255),(s6Step29HeadGvRow,29),(s6Step29HeadFvRow,29)] [s6Step29HeadFFresh,s6Step29HeadGvFresh,s6Step29HeadFvFresh] [s6Step29HeadFOut,s6Step29HeadGvOut,s6Step29HeadFvOut]
    (growRow 777 s6Step29HeadGFresh) ((growRow 795 s6Step29HeadFFresh ++ (growRow 775 s6Step29HeadGvFresh ++ (growRow 776 s6Step29HeadFvFresh ++ [])))) s6Step29HeadG_Incoming s6Step29HeadG_checked h1 s6Step29HeadG_Outgoing
  exact h0
theorem s6Step29HeadBank_checked : compileHmrBankResizeLog .headroom s6Step29HeadGBefore ⟨s6Step29HeadFRow,s6Step29HeadGRow,s6Step29HeadFvRow,s6Step29HeadGvRow⟩ ⟨255,255,29,29⟩ [s6Step29HeadGFresh,s6Step29HeadFFresh,s6Step29HeadGvFresh,s6Step29HeadFvFresh]=
    some (s6Step29HeadFvAfter,⟨s6Step29HeadFOut,s6Step29HeadGOut,s6Step29HeadFvOut,s6Step29HeadGvOut⟩,(growRow 777 s6Step29HeadGFresh ++ (growRow 795 s6Step29HeadFFresh ++ (growRow 775 s6Step29HeadGvFresh ++ (growRow 776 s6Step29HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step29HeadBank_rows]
  rfl
def s6Step30HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 881, 887],777⟩
def s6Step30HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 813],795⟩
def s6Step30HeadGvOut : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 874, 859],775⟩
def s6Step30HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 876],776⟩
theorem s6Step30HeadBank_incomingDistinct : ([s6Step30HeadGRow,s6Step30HeadFRow,s6Step30HeadGvRow,s6Step30HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30HeadBank_outgoingOwned : rowsOwned s6Step30HeadFvAfter [s6Step30HeadGOut,s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step30HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30HeadG_Incoming : rowsOwned s6Step30HeadGBefore [s6Step30HeadGRow,s6Step30HeadFRow,s6Step30HeadGvRow,s6Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30HeadGRow,s6Step30HeadFRow,s6Step30HeadGvRow,s6Step30HeadFvRow] 0 s6Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30HeadG_Outgoing : rowsOwned s6Step30HeadFvAfter [s6Step30HeadGOut,s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut] :=
  hmrRows_owned_drop s6Step30HeadFvAfter [s6Step30HeadGOut,s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut] 0 s6Step30HeadBank_outgoingOwned
theorem s6Step30HeadF_Incoming : rowsOwned s6Step30HeadFBefore [s6Step30HeadFRow,s6Step30HeadGvRow,s6Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30HeadGRow,s6Step30HeadFRow,s6Step30HeadGvRow,s6Step30HeadFvRow] 1 s6Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30HeadFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30HeadF_Outgoing : rowsOwned s6Step30HeadFvAfter [s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut] :=
  hmrRows_owned_drop s6Step30HeadFvAfter [s6Step30HeadGOut,s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut] 1 s6Step30HeadBank_outgoingOwned
theorem s6Step30HeadGv_Incoming : rowsOwned s6Step30HeadGvBefore [s6Step30HeadGvRow,s6Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30HeadGRow,s6Step30HeadFRow,s6Step30HeadGvRow,s6Step30HeadFvRow] 2 s6Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30HeadGv_Outgoing : rowsOwned s6Step30HeadFvAfter [s6Step30HeadGvOut,s6Step30HeadFvOut] :=
  hmrRows_owned_drop s6Step30HeadFvAfter [s6Step30HeadGOut,s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut] 2 s6Step30HeadBank_outgoingOwned
theorem s6Step30HeadFv_Incoming : rowsOwned s6Step30HeadFvBefore [s6Step30HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30HeadGRow,s6Step30HeadFRow,s6Step30HeadGvRow,s6Step30HeadFvRow] 3 s6Step30HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30HeadFv_Outgoing : rowsOwned s6Step30HeadFvAfter [s6Step30HeadFvOut] :=
  hmrRows_owned_drop s6Step30HeadFvAfter [s6Step30HeadGOut,s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut] 3 s6Step30HeadBank_outgoingOwned
theorem s6Step30HeadBank_rows : planWindowRowsLog s6Step30HeadGBefore [(s6Step30HeadGRow,254),(s6Step30HeadFRow,254),(s6Step30HeadGvRow,30),(s6Step30HeadFvRow,30)] [s6Step30HeadGFresh,s6Step30HeadFFresh,s6Step30HeadGvFresh,s6Step30HeadFvFresh]=
    some (s6Step30HeadFvAfter,[s6Step30HeadGOut,s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut],(growRow 777 s6Step30HeadGFresh ++ (growRow 795 s6Step30HeadFFresh ++ (growRow 775 s6Step30HeadGvFresh ++ (growRow 776 s6Step30HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step30HeadFvAfter [] []=some (s6Step30HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step30HeadFvBefore s6Step30HeadFvAfter s6Step30HeadFvAfter
    s6Step30HeadFvRow s6Step30HeadFvOut 30 s6Step30HeadFvFresh [] [] []
    (growRow 776 s6Step30HeadFvFresh) ([]) s6Step30HeadFv_Incoming s6Step30HeadFv_checked h4 s6Step30HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step30HeadGvBefore s6Step30HeadGvAfter s6Step30HeadFvAfter
    s6Step30HeadGvRow s6Step30HeadGvOut 30 s6Step30HeadGvFresh [(s6Step30HeadFvRow,30)] [s6Step30HeadFvFresh] [s6Step30HeadFvOut]
    (growRow 775 s6Step30HeadGvFresh) ((growRow 776 s6Step30HeadFvFresh ++ [])) s6Step30HeadGv_Incoming s6Step30HeadGv_checked h3 s6Step30HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step30HeadFBefore s6Step30HeadFAfter s6Step30HeadFvAfter
    s6Step30HeadFRow s6Step30HeadFOut 254 s6Step30HeadFFresh [(s6Step30HeadGvRow,30),(s6Step30HeadFvRow,30)] [s6Step30HeadGvFresh,s6Step30HeadFvFresh] [s6Step30HeadGvOut,s6Step30HeadFvOut]
    (growRow 795 s6Step30HeadFFresh) ((growRow 775 s6Step30HeadGvFresh ++ (growRow 776 s6Step30HeadFvFresh ++ []))) s6Step30HeadF_Incoming s6Step30HeadF_checked h2 s6Step30HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step30HeadGBefore s6Step30HeadGAfter s6Step30HeadFvAfter
    s6Step30HeadGRow s6Step30HeadGOut 254 s6Step30HeadGFresh [(s6Step30HeadFRow,254),(s6Step30HeadGvRow,30),(s6Step30HeadFvRow,30)] [s6Step30HeadFFresh,s6Step30HeadGvFresh,s6Step30HeadFvFresh] [s6Step30HeadFOut,s6Step30HeadGvOut,s6Step30HeadFvOut]
    (growRow 777 s6Step30HeadGFresh) ((growRow 795 s6Step30HeadFFresh ++ (growRow 775 s6Step30HeadGvFresh ++ (growRow 776 s6Step30HeadFvFresh ++ [])))) s6Step30HeadG_Incoming s6Step30HeadG_checked h1 s6Step30HeadG_Outgoing
  exact h0
theorem s6Step30HeadBank_checked : compileHmrBankResizeLog .headroom s6Step30HeadGBefore ⟨s6Step30HeadFRow,s6Step30HeadGRow,s6Step30HeadFvRow,s6Step30HeadGvRow⟩ ⟨254,254,30,30⟩ [s6Step30HeadGFresh,s6Step30HeadFFresh,s6Step30HeadGvFresh,s6Step30HeadFvFresh]=
    some (s6Step30HeadFvAfter,⟨s6Step30HeadFOut,s6Step30HeadGOut,s6Step30HeadFvOut,s6Step30HeadGvOut⟩,(growRow 777 s6Step30HeadGFresh ++ (growRow 795 s6Step30HeadFFresh ++ (growRow 775 s6Step30HeadGvFresh ++ (growRow 776 s6Step30HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step30HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
