import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk5
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk4

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step15EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step15EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩
def s6Step15EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882],776⟩
def s6Step15EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887],775⟩
theorem s6Step15EntryBank_incomingDistinct : ([s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15EntryBank_outgoingOwned : rowsOwned s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step15EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryF_Incoming : rowsOwned s6Step15EntryFBefore [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 0 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryF_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 0 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryG_Incoming : rowsOwned s6Step15EntryGBefore [s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 1 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryG_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 1 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryFv_Incoming : rowsOwned s6Step15EntryFvBefore [s6Step15EntryFvRow,s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 2 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryFv_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryFvOut,s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 2 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryGv_Incoming : rowsOwned s6Step15EntryGvBefore [s6Step15EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow] 3 s6Step15EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step15EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step15EntryGv_Outgoing : rowsOwned s6Step15EntryGvAfter [s6Step15EntryGvOut] :=
  hmrRows_owned_drop s6Step15EntryGvAfter [s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut] 3 s6Step15EntryBank_outgoingOwned
theorem s6Step15EntryBank_rows : planWindowRowsLog s6Step15EntryFBefore [(s6Step15EntryFRow,256),(s6Step15EntryGRow,256),(s6Step15EntryFvRow,16),(s6Step15EntryGvRow,16)] [s6Step15EntryFFresh,s6Step15EntryGFresh,s6Step15EntryFvFresh,s6Step15EntryGvFresh]=
    some (s6Step15EntryGvAfter,[s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut],(growRow 795 s6Step15EntryFFresh ++ (growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step15EntryGvAfter [] []=some (s6Step15EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step15EntryGvBefore s6Step15EntryGvAfter s6Step15EntryGvAfter
    s6Step15EntryGvRow s6Step15EntryGvOut 16 s6Step15EntryGvFresh [] [] []
    (growRow 775 s6Step15EntryGvFresh) ([]) s6Step15EntryGv_Incoming s6Step15EntryGv_checked h4 s6Step15EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step15EntryFvBefore s6Step15EntryFvAfter s6Step15EntryGvAfter
    s6Step15EntryFvRow s6Step15EntryFvOut 16 s6Step15EntryFvFresh [(s6Step15EntryGvRow,16)] [s6Step15EntryGvFresh] [s6Step15EntryGvOut]
    (growRow 776 s6Step15EntryFvFresh) ((growRow 775 s6Step15EntryGvFresh ++ [])) s6Step15EntryFv_Incoming s6Step15EntryFv_checked h3 s6Step15EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step15EntryGBefore s6Step15EntryGAfter s6Step15EntryGvAfter
    s6Step15EntryGRow s6Step15EntryGOut 256 s6Step15EntryGFresh [(s6Step15EntryFvRow,16),(s6Step15EntryGvRow,16)] [s6Step15EntryFvFresh,s6Step15EntryGvFresh] [s6Step15EntryFvOut,s6Step15EntryGvOut]
    (growRow 777 s6Step15EntryGFresh) ((growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ []))) s6Step15EntryG_Incoming s6Step15EntryG_checked h2 s6Step15EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step15EntryFBefore s6Step15EntryFAfter s6Step15EntryGvAfter
    s6Step15EntryFRow s6Step15EntryFOut 256 s6Step15EntryFFresh [(s6Step15EntryGRow,256),(s6Step15EntryFvRow,16),(s6Step15EntryGvRow,16)] [s6Step15EntryGFresh,s6Step15EntryFvFresh,s6Step15EntryGvFresh] [s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut]
    (growRow 795 s6Step15EntryFFresh) ((growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ [])))) s6Step15EntryF_Incoming s6Step15EntryF_checked h1 s6Step15EntryF_Outgoing
  exact h0
theorem s6Step15EntryBank_checked : compileHmrBankResizeLog .entry s6Step15EntryFBefore ⟨s6Step15EntryFRow,s6Step15EntryGRow,s6Step15EntryFvRow,s6Step15EntryGvRow⟩ ⟨256,256,16,16⟩ [s6Step15EntryFFresh,s6Step15EntryGFresh,s6Step15EntryFvFresh,s6Step15EntryGvFresh]=
    some (s6Step15EntryGvAfter,⟨s6Step15EntryFOut,s6Step15EntryGOut,s6Step15EntryFvOut,s6Step15EntryGvOut⟩,(growRow 795 s6Step15EntryFFresh ++ (growRow 777 s6Step15EntryGFresh ++ (growRow 776 s6Step15EntryFvFresh ++ (growRow 775 s6Step15EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step15EntryBank_rows]
  rfl
def s6Step16EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step16EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩
def s6Step16EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833],776⟩
def s6Step16EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 887],775⟩
theorem s6Step16EntryBank_incomingDistinct : ([s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16EntryBank_outgoingOwned : rowsOwned s6Step16EntryGvAfter [s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step16EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (887≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16EntryF_Incoming : rowsOwned s6Step16EntryFBefore [s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow] 0 s6Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16EntryF_Outgoing : rowsOwned s6Step16EntryGvAfter [s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut] :=
  hmrRows_owned_drop s6Step16EntryGvAfter [s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut] 0 s6Step16EntryBank_outgoingOwned
theorem s6Step16EntryG_Incoming : rowsOwned s6Step16EntryGBefore [s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow] 1 s6Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16EntryG_Outgoing : rowsOwned s6Step16EntryGvAfter [s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut] :=
  hmrRows_owned_drop s6Step16EntryGvAfter [s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut] 1 s6Step16EntryBank_outgoingOwned
theorem s6Step16EntryFv_Incoming : rowsOwned s6Step16EntryFvBefore [s6Step16EntryFvRow,s6Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow] 2 s6Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16EntryFv_Outgoing : rowsOwned s6Step16EntryGvAfter [s6Step16EntryFvOut,s6Step16EntryGvOut] :=
  hmrRows_owned_drop s6Step16EntryGvAfter [s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut] 2 s6Step16EntryBank_outgoingOwned
theorem s6Step16EntryGv_Incoming : rowsOwned s6Step16EntryGvBefore [s6Step16EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow] 3 s6Step16EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step16EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step16EntryGv_Outgoing : rowsOwned s6Step16EntryGvAfter [s6Step16EntryGvOut] :=
  hmrRows_owned_drop s6Step16EntryGvAfter [s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut] 3 s6Step16EntryBank_outgoingOwned
theorem s6Step16EntryBank_rows : planWindowRowsLog s6Step16EntryFBefore [(s6Step16EntryFRow,256),(s6Step16EntryGRow,256),(s6Step16EntryFvRow,17),(s6Step16EntryGvRow,17)] [s6Step16EntryFFresh,s6Step16EntryGFresh,s6Step16EntryFvFresh,s6Step16EntryGvFresh]=
    some (s6Step16EntryGvAfter,[s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut],(growRow 795 s6Step16EntryFFresh ++ (growRow 777 s6Step16EntryGFresh ++ (growRow 776 s6Step16EntryFvFresh ++ (growRow 775 s6Step16EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step16EntryGvAfter [] []=some (s6Step16EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step16EntryGvBefore s6Step16EntryGvAfter s6Step16EntryGvAfter
    s6Step16EntryGvRow s6Step16EntryGvOut 17 s6Step16EntryGvFresh [] [] []
    (growRow 775 s6Step16EntryGvFresh) ([]) s6Step16EntryGv_Incoming s6Step16EntryGv_checked h4 s6Step16EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step16EntryFvBefore s6Step16EntryFvAfter s6Step16EntryGvAfter
    s6Step16EntryFvRow s6Step16EntryFvOut 17 s6Step16EntryFvFresh [(s6Step16EntryGvRow,17)] [s6Step16EntryGvFresh] [s6Step16EntryGvOut]
    (growRow 776 s6Step16EntryFvFresh) ((growRow 775 s6Step16EntryGvFresh ++ [])) s6Step16EntryFv_Incoming s6Step16EntryFv_checked h3 s6Step16EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step16EntryGBefore s6Step16EntryGAfter s6Step16EntryGvAfter
    s6Step16EntryGRow s6Step16EntryGOut 256 s6Step16EntryGFresh [(s6Step16EntryFvRow,17),(s6Step16EntryGvRow,17)] [s6Step16EntryFvFresh,s6Step16EntryGvFresh] [s6Step16EntryFvOut,s6Step16EntryGvOut]
    (growRow 777 s6Step16EntryGFresh) ((growRow 776 s6Step16EntryFvFresh ++ (growRow 775 s6Step16EntryGvFresh ++ []))) s6Step16EntryG_Incoming s6Step16EntryG_checked h2 s6Step16EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step16EntryFBefore s6Step16EntryFAfter s6Step16EntryGvAfter
    s6Step16EntryFRow s6Step16EntryFOut 256 s6Step16EntryFFresh [(s6Step16EntryGRow,256),(s6Step16EntryFvRow,17),(s6Step16EntryGvRow,17)] [s6Step16EntryGFresh,s6Step16EntryFvFresh,s6Step16EntryGvFresh] [s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut]
    (growRow 795 s6Step16EntryFFresh) ((growRow 777 s6Step16EntryGFresh ++ (growRow 776 s6Step16EntryFvFresh ++ (growRow 775 s6Step16EntryGvFresh ++ [])))) s6Step16EntryF_Incoming s6Step16EntryF_checked h1 s6Step16EntryF_Outgoing
  exact h0
theorem s6Step16EntryBank_checked : compileHmrBankResizeLog .entry s6Step16EntryFBefore ⟨s6Step16EntryFRow,s6Step16EntryGRow,s6Step16EntryFvRow,s6Step16EntryGvRow⟩ ⟨256,256,17,17⟩ [s6Step16EntryFFresh,s6Step16EntryGFresh,s6Step16EntryFvFresh,s6Step16EntryGvFresh]=
    some (s6Step16EntryGvAfter,⟨s6Step16EntryFOut,s6Step16EntryGOut,s6Step16EntryFvOut,s6Step16EntryGvOut⟩,(growRow 795 s6Step16EntryFFresh ++ (growRow 777 s6Step16EntryGFresh ++ (growRow 776 s6Step16EntryFvFresh ++ (growRow 775 s6Step16EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step16EntryBank_rows]
  rfl
def s6Step17EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step17EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩
def s6Step17EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886],776⟩
def s6Step17EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 887],775⟩
theorem s6Step17EntryBank_incomingDistinct : ([s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17EntryBank_outgoingOwned : rowsOwned s6Step17EntryGvAfter [s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step17EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<888) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17EntryF_Incoming : rowsOwned s6Step17EntryFBefore [s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow] 0 s6Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17EntryF_Outgoing : rowsOwned s6Step17EntryGvAfter [s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut] :=
  hmrRows_owned_drop s6Step17EntryGvAfter [s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut] 0 s6Step17EntryBank_outgoingOwned
theorem s6Step17EntryG_Incoming : rowsOwned s6Step17EntryGBefore [s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow] 1 s6Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17EntryG_Outgoing : rowsOwned s6Step17EntryGvAfter [s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut] :=
  hmrRows_owned_drop s6Step17EntryGvAfter [s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut] 1 s6Step17EntryBank_outgoingOwned
theorem s6Step17EntryFv_Incoming : rowsOwned s6Step17EntryFvBefore [s6Step17EntryFvRow,s6Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow] 2 s6Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17EntryFv_Outgoing : rowsOwned s6Step17EntryGvAfter [s6Step17EntryFvOut,s6Step17EntryGvOut] :=
  hmrRows_owned_drop s6Step17EntryGvAfter [s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut] 2 s6Step17EntryBank_outgoingOwned
theorem s6Step17EntryGv_Incoming : rowsOwned s6Step17EntryGvBefore [s6Step17EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow] 3 s6Step17EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step17EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step17EntryGv_Outgoing : rowsOwned s6Step17EntryGvAfter [s6Step17EntryGvOut] :=
  hmrRows_owned_drop s6Step17EntryGvAfter [s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut] 3 s6Step17EntryBank_outgoingOwned
theorem s6Step17EntryBank_rows : planWindowRowsLog s6Step17EntryFBefore [(s6Step17EntryFRow,256),(s6Step17EntryGRow,256),(s6Step17EntryFvRow,18),(s6Step17EntryGvRow,18)] [s6Step17EntryFFresh,s6Step17EntryGFresh,s6Step17EntryFvFresh,s6Step17EntryGvFresh]=
    some (s6Step17EntryGvAfter,[s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut],(growRow 795 s6Step17EntryFFresh ++ (growRow 777 s6Step17EntryGFresh ++ (growRow 776 s6Step17EntryFvFresh ++ (growRow 775 s6Step17EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step17EntryGvAfter [] []=some (s6Step17EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step17EntryGvBefore s6Step17EntryGvAfter s6Step17EntryGvAfter
    s6Step17EntryGvRow s6Step17EntryGvOut 18 s6Step17EntryGvFresh [] [] []
    (growRow 775 s6Step17EntryGvFresh) ([]) s6Step17EntryGv_Incoming s6Step17EntryGv_checked h4 s6Step17EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step17EntryFvBefore s6Step17EntryFvAfter s6Step17EntryGvAfter
    s6Step17EntryFvRow s6Step17EntryFvOut 18 s6Step17EntryFvFresh [(s6Step17EntryGvRow,18)] [s6Step17EntryGvFresh] [s6Step17EntryGvOut]
    (growRow 776 s6Step17EntryFvFresh) ((growRow 775 s6Step17EntryGvFresh ++ [])) s6Step17EntryFv_Incoming s6Step17EntryFv_checked h3 s6Step17EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step17EntryGBefore s6Step17EntryGAfter s6Step17EntryGvAfter
    s6Step17EntryGRow s6Step17EntryGOut 256 s6Step17EntryGFresh [(s6Step17EntryFvRow,18),(s6Step17EntryGvRow,18)] [s6Step17EntryFvFresh,s6Step17EntryGvFresh] [s6Step17EntryFvOut,s6Step17EntryGvOut]
    (growRow 777 s6Step17EntryGFresh) ((growRow 776 s6Step17EntryFvFresh ++ (growRow 775 s6Step17EntryGvFresh ++ []))) s6Step17EntryG_Incoming s6Step17EntryG_checked h2 s6Step17EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step17EntryFBefore s6Step17EntryFAfter s6Step17EntryGvAfter
    s6Step17EntryFRow s6Step17EntryFOut 256 s6Step17EntryFFresh [(s6Step17EntryGRow,256),(s6Step17EntryFvRow,18),(s6Step17EntryGvRow,18)] [s6Step17EntryGFresh,s6Step17EntryFvFresh,s6Step17EntryGvFresh] [s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut]
    (growRow 795 s6Step17EntryFFresh) ((growRow 777 s6Step17EntryGFresh ++ (growRow 776 s6Step17EntryFvFresh ++ (growRow 775 s6Step17EntryGvFresh ++ [])))) s6Step17EntryF_Incoming s6Step17EntryF_checked h1 s6Step17EntryF_Outgoing
  exact h0
theorem s6Step17EntryBank_checked : compileHmrBankResizeLog .entry s6Step17EntryFBefore ⟨s6Step17EntryFRow,s6Step17EntryGRow,s6Step17EntryFvRow,s6Step17EntryGvRow⟩ ⟨256,256,18,18⟩ [s6Step17EntryFFresh,s6Step17EntryGFresh,s6Step17EntryFvFresh,s6Step17EntryGvFresh]=
    some (s6Step17EntryGvAfter,⟨s6Step17EntryFOut,s6Step17EntryGOut,s6Step17EntryFvOut,s6Step17EntryGvOut⟩,(growRow 795 s6Step17EntryFFresh ++ (growRow 777 s6Step17EntryGFresh ++ (growRow 776 s6Step17EntryFvFresh ++ (growRow 775 s6Step17EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step17EntryBank_rows]
  rfl
def s6Step18EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step18EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩
def s6Step18EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838],776⟩
def s6Step18EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 887],775⟩
theorem s6Step18EntryBank_incomingDistinct : ([s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18EntryBank_outgoingOwned : rowsOwned s6Step18EntryGvAfter [s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step18EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18EntryF_Incoming : rowsOwned s6Step18EntryFBefore [s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow] 0 s6Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18EntryF_Outgoing : rowsOwned s6Step18EntryGvAfter [s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut] :=
  hmrRows_owned_drop s6Step18EntryGvAfter [s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut] 0 s6Step18EntryBank_outgoingOwned
theorem s6Step18EntryG_Incoming : rowsOwned s6Step18EntryGBefore [s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow] 1 s6Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18EntryG_Outgoing : rowsOwned s6Step18EntryGvAfter [s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut] :=
  hmrRows_owned_drop s6Step18EntryGvAfter [s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut] 1 s6Step18EntryBank_outgoingOwned
theorem s6Step18EntryFv_Incoming : rowsOwned s6Step18EntryFvBefore [s6Step18EntryFvRow,s6Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow] 2 s6Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18EntryFv_Outgoing : rowsOwned s6Step18EntryGvAfter [s6Step18EntryFvOut,s6Step18EntryGvOut] :=
  hmrRows_owned_drop s6Step18EntryGvAfter [s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut] 2 s6Step18EntryBank_outgoingOwned
theorem s6Step18EntryGv_Incoming : rowsOwned s6Step18EntryGvBefore [s6Step18EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow] 3 s6Step18EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step18EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step18EntryGv_Outgoing : rowsOwned s6Step18EntryGvAfter [s6Step18EntryGvOut] :=
  hmrRows_owned_drop s6Step18EntryGvAfter [s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut] 3 s6Step18EntryBank_outgoingOwned
theorem s6Step18EntryBank_rows : planWindowRowsLog s6Step18EntryFBefore [(s6Step18EntryFRow,256),(s6Step18EntryGRow,256),(s6Step18EntryFvRow,19),(s6Step18EntryGvRow,19)] [s6Step18EntryFFresh,s6Step18EntryGFresh,s6Step18EntryFvFresh,s6Step18EntryGvFresh]=
    some (s6Step18EntryGvAfter,[s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut],(growRow 795 s6Step18EntryFFresh ++ (growRow 777 s6Step18EntryGFresh ++ (growRow 776 s6Step18EntryFvFresh ++ (growRow 775 s6Step18EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step18EntryGvAfter [] []=some (s6Step18EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step18EntryGvBefore s6Step18EntryGvAfter s6Step18EntryGvAfter
    s6Step18EntryGvRow s6Step18EntryGvOut 19 s6Step18EntryGvFresh [] [] []
    (growRow 775 s6Step18EntryGvFresh) ([]) s6Step18EntryGv_Incoming s6Step18EntryGv_checked h4 s6Step18EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step18EntryFvBefore s6Step18EntryFvAfter s6Step18EntryGvAfter
    s6Step18EntryFvRow s6Step18EntryFvOut 19 s6Step18EntryFvFresh [(s6Step18EntryGvRow,19)] [s6Step18EntryGvFresh] [s6Step18EntryGvOut]
    (growRow 776 s6Step18EntryFvFresh) ((growRow 775 s6Step18EntryGvFresh ++ [])) s6Step18EntryFv_Incoming s6Step18EntryFv_checked h3 s6Step18EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step18EntryGBefore s6Step18EntryGAfter s6Step18EntryGvAfter
    s6Step18EntryGRow s6Step18EntryGOut 256 s6Step18EntryGFresh [(s6Step18EntryFvRow,19),(s6Step18EntryGvRow,19)] [s6Step18EntryFvFresh,s6Step18EntryGvFresh] [s6Step18EntryFvOut,s6Step18EntryGvOut]
    (growRow 777 s6Step18EntryGFresh) ((growRow 776 s6Step18EntryFvFresh ++ (growRow 775 s6Step18EntryGvFresh ++ []))) s6Step18EntryG_Incoming s6Step18EntryG_checked h2 s6Step18EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step18EntryFBefore s6Step18EntryFAfter s6Step18EntryGvAfter
    s6Step18EntryFRow s6Step18EntryFOut 256 s6Step18EntryFFresh [(s6Step18EntryGRow,256),(s6Step18EntryFvRow,19),(s6Step18EntryGvRow,19)] [s6Step18EntryGFresh,s6Step18EntryFvFresh,s6Step18EntryGvFresh] [s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut]
    (growRow 795 s6Step18EntryFFresh) ((growRow 777 s6Step18EntryGFresh ++ (growRow 776 s6Step18EntryFvFresh ++ (growRow 775 s6Step18EntryGvFresh ++ [])))) s6Step18EntryF_Incoming s6Step18EntryF_checked h1 s6Step18EntryF_Outgoing
  exact h0
theorem s6Step18EntryBank_checked : compileHmrBankResizeLog .entry s6Step18EntryFBefore ⟨s6Step18EntryFRow,s6Step18EntryGRow,s6Step18EntryFvRow,s6Step18EntryGvRow⟩ ⟨256,256,19,19⟩ [s6Step18EntryFFresh,s6Step18EntryGFresh,s6Step18EntryFvFresh,s6Step18EntryGvFresh]=
    some (s6Step18EntryGvAfter,⟨s6Step18EntryFOut,s6Step18EntryGOut,s6Step18EntryFvOut,s6Step18EntryGvOut⟩,(growRow 795 s6Step18EntryFFresh ++ (growRow 777 s6Step18EntryGFresh ++ (growRow 776 s6Step18EntryFvFresh ++ (growRow 775 s6Step18EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step18EntryBank_rows]
  rfl
def s6Step19EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step19EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩
def s6Step19EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821],776⟩
def s6Step19EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 887],775⟩
theorem s6Step19EntryBank_incomingDistinct : ([s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19EntryBank_outgoingOwned : rowsOwned s6Step19EntryGvAfter [s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step19EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19EntryF_Incoming : rowsOwned s6Step19EntryFBefore [s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow] 0 s6Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19EntryF_Outgoing : rowsOwned s6Step19EntryGvAfter [s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut] :=
  hmrRows_owned_drop s6Step19EntryGvAfter [s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut] 0 s6Step19EntryBank_outgoingOwned
theorem s6Step19EntryG_Incoming : rowsOwned s6Step19EntryGBefore [s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow] 1 s6Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19EntryG_Outgoing : rowsOwned s6Step19EntryGvAfter [s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut] :=
  hmrRows_owned_drop s6Step19EntryGvAfter [s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut] 1 s6Step19EntryBank_outgoingOwned
theorem s6Step19EntryFv_Incoming : rowsOwned s6Step19EntryFvBefore [s6Step19EntryFvRow,s6Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow] 2 s6Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19EntryFv_Outgoing : rowsOwned s6Step19EntryGvAfter [s6Step19EntryFvOut,s6Step19EntryGvOut] :=
  hmrRows_owned_drop s6Step19EntryGvAfter [s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut] 2 s6Step19EntryBank_outgoingOwned
theorem s6Step19EntryGv_Incoming : rowsOwned s6Step19EntryGvBefore [s6Step19EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow] 3 s6Step19EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step19EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step19EntryGv_Outgoing : rowsOwned s6Step19EntryGvAfter [s6Step19EntryGvOut] :=
  hmrRows_owned_drop s6Step19EntryGvAfter [s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut] 3 s6Step19EntryBank_outgoingOwned
theorem s6Step19EntryBank_rows : planWindowRowsLog s6Step19EntryFBefore [(s6Step19EntryFRow,256),(s6Step19EntryGRow,256),(s6Step19EntryFvRow,20),(s6Step19EntryGvRow,20)] [s6Step19EntryFFresh,s6Step19EntryGFresh,s6Step19EntryFvFresh,s6Step19EntryGvFresh]=
    some (s6Step19EntryGvAfter,[s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut],(growRow 795 s6Step19EntryFFresh ++ (growRow 777 s6Step19EntryGFresh ++ (growRow 776 s6Step19EntryFvFresh ++ (growRow 775 s6Step19EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step19EntryGvAfter [] []=some (s6Step19EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step19EntryGvBefore s6Step19EntryGvAfter s6Step19EntryGvAfter
    s6Step19EntryGvRow s6Step19EntryGvOut 20 s6Step19EntryGvFresh [] [] []
    (growRow 775 s6Step19EntryGvFresh) ([]) s6Step19EntryGv_Incoming s6Step19EntryGv_checked h4 s6Step19EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step19EntryFvBefore s6Step19EntryFvAfter s6Step19EntryGvAfter
    s6Step19EntryFvRow s6Step19EntryFvOut 20 s6Step19EntryFvFresh [(s6Step19EntryGvRow,20)] [s6Step19EntryGvFresh] [s6Step19EntryGvOut]
    (growRow 776 s6Step19EntryFvFresh) ((growRow 775 s6Step19EntryGvFresh ++ [])) s6Step19EntryFv_Incoming s6Step19EntryFv_checked h3 s6Step19EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step19EntryGBefore s6Step19EntryGAfter s6Step19EntryGvAfter
    s6Step19EntryGRow s6Step19EntryGOut 256 s6Step19EntryGFresh [(s6Step19EntryFvRow,20),(s6Step19EntryGvRow,20)] [s6Step19EntryFvFresh,s6Step19EntryGvFresh] [s6Step19EntryFvOut,s6Step19EntryGvOut]
    (growRow 777 s6Step19EntryGFresh) ((growRow 776 s6Step19EntryFvFresh ++ (growRow 775 s6Step19EntryGvFresh ++ []))) s6Step19EntryG_Incoming s6Step19EntryG_checked h2 s6Step19EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step19EntryFBefore s6Step19EntryFAfter s6Step19EntryGvAfter
    s6Step19EntryFRow s6Step19EntryFOut 256 s6Step19EntryFFresh [(s6Step19EntryGRow,256),(s6Step19EntryFvRow,20),(s6Step19EntryGvRow,20)] [s6Step19EntryGFresh,s6Step19EntryFvFresh,s6Step19EntryGvFresh] [s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut]
    (growRow 795 s6Step19EntryFFresh) ((growRow 777 s6Step19EntryGFresh ++ (growRow 776 s6Step19EntryFvFresh ++ (growRow 775 s6Step19EntryGvFresh ++ [])))) s6Step19EntryF_Incoming s6Step19EntryF_checked h1 s6Step19EntryF_Outgoing
  exact h0
theorem s6Step19EntryBank_checked : compileHmrBankResizeLog .entry s6Step19EntryFBefore ⟨s6Step19EntryFRow,s6Step19EntryGRow,s6Step19EntryFvRow,s6Step19EntryGvRow⟩ ⟨256,256,20,20⟩ [s6Step19EntryFFresh,s6Step19EntryGFresh,s6Step19EntryFvFresh,s6Step19EntryGvFresh]=
    some (s6Step19EntryGvAfter,⟨s6Step19EntryFOut,s6Step19EntryGOut,s6Step19EntryFvOut,s6Step19EntryGvOut⟩,(growRow 795 s6Step19EntryFFresh ++ (growRow 777 s6Step19EntryGFresh ++ (growRow 776 s6Step19EntryFvFresh ++ (growRow 775 s6Step19EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step19EntryBank_rows]
  rfl
def s6Step20EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step20EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩
def s6Step20EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843],776⟩
def s6Step20EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 887],775⟩
theorem s6Step20EntryBank_incomingDistinct : ([s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20EntryBank_outgoingOwned : rowsOwned s6Step20EntryGvAfter [s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step20EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step20EntryF_Incoming : rowsOwned s6Step20EntryFBefore [s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow] 0 s6Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20EntryF_Outgoing : rowsOwned s6Step20EntryGvAfter [s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut] :=
  hmrRows_owned_drop s6Step20EntryGvAfter [s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut] 0 s6Step20EntryBank_outgoingOwned
theorem s6Step20EntryG_Incoming : rowsOwned s6Step20EntryGBefore [s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow] 1 s6Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<887) ∨ (888≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step20EntryG_Outgoing : rowsOwned s6Step20EntryGvAfter [s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut] :=
  hmrRows_owned_drop s6Step20EntryGvAfter [s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut] 1 s6Step20EntryBank_outgoingOwned
theorem s6Step20EntryFv_Incoming : rowsOwned s6Step20EntryFvBefore [s6Step20EntryFvRow,s6Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow] 2 s6Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step20EntryFv_Outgoing : rowsOwned s6Step20EntryGvAfter [s6Step20EntryFvOut,s6Step20EntryGvOut] :=
  hmrRows_owned_drop s6Step20EntryGvAfter [s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut] 2 s6Step20EntryBank_outgoingOwned
theorem s6Step20EntryGv_Incoming : rowsOwned s6Step20EntryGvBefore [s6Step20EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow] 3 s6Step20EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step20EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(818,819),(821,824),(828,829),(831,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step20EntryGv_Outgoing : rowsOwned s6Step20EntryGvAfter [s6Step20EntryGvOut] :=
  hmrRows_owned_drop s6Step20EntryGvAfter [s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut] 3 s6Step20EntryBank_outgoingOwned
theorem s6Step20EntryBank_rows : planWindowRowsLog s6Step20EntryFBefore [(s6Step20EntryFRow,256),(s6Step20EntryGRow,256),(s6Step20EntryFvRow,21),(s6Step20EntryGvRow,21)] [s6Step20EntryFFresh,s6Step20EntryGFresh,s6Step20EntryFvFresh,s6Step20EntryGvFresh]=
    some (s6Step20EntryGvAfter,[s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut],(growRow 795 s6Step20EntryFFresh ++ (growRow 777 s6Step20EntryGFresh ++ (growRow 776 s6Step20EntryFvFresh ++ (growRow 775 s6Step20EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step20EntryGvAfter [] []=some (s6Step20EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step20EntryGvBefore s6Step20EntryGvAfter s6Step20EntryGvAfter
    s6Step20EntryGvRow s6Step20EntryGvOut 21 s6Step20EntryGvFresh [] [] []
    (growRow 775 s6Step20EntryGvFresh) ([]) s6Step20EntryGv_Incoming s6Step20EntryGv_checked h4 s6Step20EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step20EntryFvBefore s6Step20EntryFvAfter s6Step20EntryGvAfter
    s6Step20EntryFvRow s6Step20EntryFvOut 21 s6Step20EntryFvFresh [(s6Step20EntryGvRow,21)] [s6Step20EntryGvFresh] [s6Step20EntryGvOut]
    (growRow 776 s6Step20EntryFvFresh) ((growRow 775 s6Step20EntryGvFresh ++ [])) s6Step20EntryFv_Incoming s6Step20EntryFv_checked h3 s6Step20EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step20EntryGBefore s6Step20EntryGAfter s6Step20EntryGvAfter
    s6Step20EntryGRow s6Step20EntryGOut 256 s6Step20EntryGFresh [(s6Step20EntryFvRow,21),(s6Step20EntryGvRow,21)] [s6Step20EntryFvFresh,s6Step20EntryGvFresh] [s6Step20EntryFvOut,s6Step20EntryGvOut]
    (growRow 777 s6Step20EntryGFresh) ((growRow 776 s6Step20EntryFvFresh ++ (growRow 775 s6Step20EntryGvFresh ++ []))) s6Step20EntryG_Incoming s6Step20EntryG_checked h2 s6Step20EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step20EntryFBefore s6Step20EntryFAfter s6Step20EntryGvAfter
    s6Step20EntryFRow s6Step20EntryFOut 256 s6Step20EntryFFresh [(s6Step20EntryGRow,256),(s6Step20EntryFvRow,21),(s6Step20EntryGvRow,21)] [s6Step20EntryGFresh,s6Step20EntryFvFresh,s6Step20EntryGvFresh] [s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut]
    (growRow 795 s6Step20EntryFFresh) ((growRow 777 s6Step20EntryGFresh ++ (growRow 776 s6Step20EntryFvFresh ++ (growRow 775 s6Step20EntryGvFresh ++ [])))) s6Step20EntryF_Incoming s6Step20EntryF_checked h1 s6Step20EntryF_Outgoing
  exact h0
theorem s6Step20EntryBank_checked : compileHmrBankResizeLog .entry s6Step20EntryFBefore ⟨s6Step20EntryFRow,s6Step20EntryGRow,s6Step20EntryFvRow,s6Step20EntryGvRow⟩ ⟨256,256,21,21⟩ [s6Step20EntryFFresh,s6Step20EntryGFresh,s6Step20EntryFvFresh,s6Step20EntryGvFresh]=
    some (s6Step20EntryGvAfter,⟨s6Step20EntryFOut,s6Step20EntryGOut,s6Step20EntryFvOut,s6Step20EntryGvOut⟩,(growRow 795 s6Step20EntryFFresh ++ (growRow 777 s6Step20EntryGFresh ++ (growRow 776 s6Step20EntryFvFresh ++ (growRow 775 s6Step20EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step20EntryBank_rows]
  rfl
def s6Step21EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step21EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813],777⟩
def s6Step21EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830],776⟩
def s6Step21EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 887],775⟩
theorem s6Step21EntryBank_incomingDistinct : ([s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21EntryBank_outgoingOwned : rowsOwned s6Step21EntryGvAfter [s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step21EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<860) ∨ (863≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (911≤q ∧ q<912) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
theorem s6Step21EntryF_Incoming : rowsOwned s6Step21EntryFBefore [s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow] 0 s6Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21EntryF_Outgoing : rowsOwned s6Step21EntryGvAfter [s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut] :=
  hmrRows_owned_drop s6Step21EntryGvAfter [s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut] 0 s6Step21EntryBank_outgoingOwned
theorem s6Step21EntryG_Incoming : rowsOwned s6Step21EntryGBefore [s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow] 1 s6Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21EntryG_Outgoing : rowsOwned s6Step21EntryGvAfter [s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut] :=
  hmrRows_owned_drop s6Step21EntryGvAfter [s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut] 1 s6Step21EntryBank_outgoingOwned
theorem s6Step21EntryFv_Incoming : rowsOwned s6Step21EntryFvBefore [s6Step21EntryFvRow,s6Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow] 2 s6Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21EntryFv_Outgoing : rowsOwned s6Step21EntryGvAfter [s6Step21EntryFvOut,s6Step21EntryGvOut] :=
  hmrRows_owned_drop s6Step21EntryGvAfter [s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut] 2 s6Step21EntryBank_outgoingOwned
theorem s6Step21EntryGv_Incoming : rowsOwned s6Step21EntryGvBefore [s6Step21EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow] 3 s6Step21EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step21EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(852,853),(856,860),(863,866),(868,869),(870,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step21EntryGv_Outgoing : rowsOwned s6Step21EntryGvAfter [s6Step21EntryGvOut] :=
  hmrRows_owned_drop s6Step21EntryGvAfter [s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut] 3 s6Step21EntryBank_outgoingOwned
theorem s6Step21EntryBank_rows : planWindowRowsLog s6Step21EntryFBefore [(s6Step21EntryFRow,256),(s6Step21EntryGRow,256),(s6Step21EntryFvRow,22),(s6Step21EntryGvRow,22)] [s6Step21EntryFFresh,s6Step21EntryGFresh,s6Step21EntryFvFresh,s6Step21EntryGvFresh]=
    some (s6Step21EntryGvAfter,[s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut],(growRow 795 s6Step21EntryFFresh ++ (growRow 777 s6Step21EntryGFresh ++ (growRow 776 s6Step21EntryFvFresh ++ (growRow 775 s6Step21EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step21EntryGvAfter [] []=some (s6Step21EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step21EntryGvBefore s6Step21EntryGvAfter s6Step21EntryGvAfter
    s6Step21EntryGvRow s6Step21EntryGvOut 22 s6Step21EntryGvFresh [] [] []
    (growRow 775 s6Step21EntryGvFresh) ([]) s6Step21EntryGv_Incoming s6Step21EntryGv_checked h4 s6Step21EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step21EntryFvBefore s6Step21EntryFvAfter s6Step21EntryGvAfter
    s6Step21EntryFvRow s6Step21EntryFvOut 22 s6Step21EntryFvFresh [(s6Step21EntryGvRow,22)] [s6Step21EntryGvFresh] [s6Step21EntryGvOut]
    (growRow 776 s6Step21EntryFvFresh) ((growRow 775 s6Step21EntryGvFresh ++ [])) s6Step21EntryFv_Incoming s6Step21EntryFv_checked h3 s6Step21EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step21EntryGBefore s6Step21EntryGAfter s6Step21EntryGvAfter
    s6Step21EntryGRow s6Step21EntryGOut 256 s6Step21EntryGFresh [(s6Step21EntryFvRow,22),(s6Step21EntryGvRow,22)] [s6Step21EntryFvFresh,s6Step21EntryGvFresh] [s6Step21EntryFvOut,s6Step21EntryGvOut]
    (growRow 777 s6Step21EntryGFresh) ((growRow 776 s6Step21EntryFvFresh ++ (growRow 775 s6Step21EntryGvFresh ++ []))) s6Step21EntryG_Incoming s6Step21EntryG_checked h2 s6Step21EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step21EntryFBefore s6Step21EntryFAfter s6Step21EntryGvAfter
    s6Step21EntryFRow s6Step21EntryFOut 256 s6Step21EntryFFresh [(s6Step21EntryGRow,256),(s6Step21EntryFvRow,22),(s6Step21EntryGvRow,22)] [s6Step21EntryGFresh,s6Step21EntryFvFresh,s6Step21EntryGvFresh] [s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut]
    (growRow 795 s6Step21EntryFFresh) ((growRow 777 s6Step21EntryGFresh ++ (growRow 776 s6Step21EntryFvFresh ++ (growRow 775 s6Step21EntryGvFresh ++ [])))) s6Step21EntryF_Incoming s6Step21EntryF_checked h1 s6Step21EntryF_Outgoing
  exact h0
theorem s6Step21EntryBank_checked : compileHmrBankResizeLog .entry s6Step21EntryFBefore ⟨s6Step21EntryFRow,s6Step21EntryGRow,s6Step21EntryFvRow,s6Step21EntryGvRow⟩ ⟨256,256,22,22⟩ [s6Step21EntryFFresh,s6Step21EntryGFresh,s6Step21EntryFvFresh,s6Step21EntryGvFresh]=
    some (s6Step21EntryGvAfter,⟨s6Step21EntryFOut,s6Step21EntryGOut,s6Step21EntryFvOut,s6Step21EntryGvOut⟩,(growRow 795 s6Step21EntryFFresh ++ (growRow 777 s6Step21EntryGFresh ++ (growRow 776 s6Step21EntryFvFresh ++ (growRow 775 s6Step21EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step21EntryBank_rows]
  rfl
def s6Step22EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step22EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860],777⟩
def s6Step22EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848],776⟩
def s6Step22EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 887],775⟩
theorem s6Step22EntryBank_incomingDistinct : ([s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22EntryBank_outgoingOwned : rowsOwned s6Step22EntryGvAfter [s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step22EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22EntryF_Incoming : rowsOwned s6Step22EntryFBefore [s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow] 0 s6Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22EntryF_Outgoing : rowsOwned s6Step22EntryGvAfter [s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut] :=
  hmrRows_owned_drop s6Step22EntryGvAfter [s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut] 0 s6Step22EntryBank_outgoingOwned
theorem s6Step22EntryG_Incoming : rowsOwned s6Step22EntryGBefore [s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow] 1 s6Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22EntryG_Outgoing : rowsOwned s6Step22EntryGvAfter [s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut] :=
  hmrRows_owned_drop s6Step22EntryGvAfter [s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut] 1 s6Step22EntryBank_outgoingOwned
theorem s6Step22EntryFv_Incoming : rowsOwned s6Step22EntryFvBefore [s6Step22EntryFvRow,s6Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow] 2 s6Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22EntryFv_Outgoing : rowsOwned s6Step22EntryGvAfter [s6Step22EntryFvOut,s6Step22EntryGvOut] :=
  hmrRows_owned_drop s6Step22EntryGvAfter [s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut] 2 s6Step22EntryBank_outgoingOwned
theorem s6Step22EntryGv_Incoming : rowsOwned s6Step22EntryGvBefore [s6Step22EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow] 3 s6Step22EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step22EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step22EntryGv_Outgoing : rowsOwned s6Step22EntryGvAfter [s6Step22EntryGvOut] :=
  hmrRows_owned_drop s6Step22EntryGvAfter [s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut] 3 s6Step22EntryBank_outgoingOwned
theorem s6Step22EntryBank_rows : planWindowRowsLog s6Step22EntryFBefore [(s6Step22EntryFRow,256),(s6Step22EntryGRow,256),(s6Step22EntryFvRow,23),(s6Step22EntryGvRow,23)] [s6Step22EntryFFresh,s6Step22EntryGFresh,s6Step22EntryFvFresh,s6Step22EntryGvFresh]=
    some (s6Step22EntryGvAfter,[s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut],(growRow 795 s6Step22EntryFFresh ++ (growRow 777 s6Step22EntryGFresh ++ (growRow 776 s6Step22EntryFvFresh ++ (growRow 775 s6Step22EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step22EntryGvAfter [] []=some (s6Step22EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step22EntryGvBefore s6Step22EntryGvAfter s6Step22EntryGvAfter
    s6Step22EntryGvRow s6Step22EntryGvOut 23 s6Step22EntryGvFresh [] [] []
    (growRow 775 s6Step22EntryGvFresh) ([]) s6Step22EntryGv_Incoming s6Step22EntryGv_checked h4 s6Step22EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step22EntryFvBefore s6Step22EntryFvAfter s6Step22EntryGvAfter
    s6Step22EntryFvRow s6Step22EntryFvOut 23 s6Step22EntryFvFresh [(s6Step22EntryGvRow,23)] [s6Step22EntryGvFresh] [s6Step22EntryGvOut]
    (growRow 776 s6Step22EntryFvFresh) ((growRow 775 s6Step22EntryGvFresh ++ [])) s6Step22EntryFv_Incoming s6Step22EntryFv_checked h3 s6Step22EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step22EntryGBefore s6Step22EntryGAfter s6Step22EntryGvAfter
    s6Step22EntryGRow s6Step22EntryGOut 256 s6Step22EntryGFresh [(s6Step22EntryFvRow,23),(s6Step22EntryGvRow,23)] [s6Step22EntryFvFresh,s6Step22EntryGvFresh] [s6Step22EntryFvOut,s6Step22EntryGvOut]
    (growRow 777 s6Step22EntryGFresh) ((growRow 776 s6Step22EntryFvFresh ++ (growRow 775 s6Step22EntryGvFresh ++ []))) s6Step22EntryG_Incoming s6Step22EntryG_checked h2 s6Step22EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step22EntryFBefore s6Step22EntryFAfter s6Step22EntryGvAfter
    s6Step22EntryFRow s6Step22EntryFOut 256 s6Step22EntryFFresh [(s6Step22EntryGRow,256),(s6Step22EntryFvRow,23),(s6Step22EntryGvRow,23)] [s6Step22EntryGFresh,s6Step22EntryFvFresh,s6Step22EntryGvFresh] [s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut]
    (growRow 795 s6Step22EntryFFresh) ((growRow 777 s6Step22EntryGFresh ++ (growRow 776 s6Step22EntryFvFresh ++ (growRow 775 s6Step22EntryGvFresh ++ [])))) s6Step22EntryF_Incoming s6Step22EntryF_checked h1 s6Step22EntryF_Outgoing
  exact h0
theorem s6Step22EntryBank_checked : compileHmrBankResizeLog .entry s6Step22EntryFBefore ⟨s6Step22EntryFRow,s6Step22EntryGRow,s6Step22EntryFvRow,s6Step22EntryGvRow⟩ ⟨256,256,23,23⟩ [s6Step22EntryFFresh,s6Step22EntryGFresh,s6Step22EntryFvFresh,s6Step22EntryGvFresh]=
    some (s6Step22EntryGvAfter,⟨s6Step22EntryFOut,s6Step22EntryGOut,s6Step22EntryFvOut,s6Step22EntryGvOut⟩,(growRow 795 s6Step22EntryFFresh ++ (growRow 777 s6Step22EntryGFresh ++ (growRow 776 s6Step22EntryFvFresh ++ (growRow 775 s6Step22EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step22EntryBank_rows]
  rfl
def s6Step23EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step23EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862],777⟩
def s6Step23EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839],776⟩
def s6Step23EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 887],775⟩
theorem s6Step23EntryBank_incomingDistinct : ([s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23EntryBank_outgoingOwned : rowsOwned s6Step23EntryGvAfter [s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step23EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23EntryF_Incoming : rowsOwned s6Step23EntryFBefore [s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow] 0 s6Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23EntryF_Outgoing : rowsOwned s6Step23EntryGvAfter [s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut] :=
  hmrRows_owned_drop s6Step23EntryGvAfter [s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut] 0 s6Step23EntryBank_outgoingOwned
theorem s6Step23EntryG_Incoming : rowsOwned s6Step23EntryGBefore [s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow] 1 s6Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23EntryG_Outgoing : rowsOwned s6Step23EntryGvAfter [s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut] :=
  hmrRows_owned_drop s6Step23EntryGvAfter [s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut] 1 s6Step23EntryBank_outgoingOwned
theorem s6Step23EntryFv_Incoming : rowsOwned s6Step23EntryFvBefore [s6Step23EntryFvRow,s6Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow] 2 s6Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23EntryFv_Outgoing : rowsOwned s6Step23EntryGvAfter [s6Step23EntryFvOut,s6Step23EntryGvOut] :=
  hmrRows_owned_drop s6Step23EntryGvAfter [s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut] 2 s6Step23EntryBank_outgoingOwned
theorem s6Step23EntryGv_Incoming : rowsOwned s6Step23EntryGvBefore [s6Step23EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow] 3 s6Step23EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step23EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(852,853),(854,855),(856,860),(862,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step23EntryGv_Outgoing : rowsOwned s6Step23EntryGvAfter [s6Step23EntryGvOut] :=
  hmrRows_owned_drop s6Step23EntryGvAfter [s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut] 3 s6Step23EntryBank_outgoingOwned
theorem s6Step23EntryBank_rows : planWindowRowsLog s6Step23EntryFBefore [(s6Step23EntryFRow,256),(s6Step23EntryGRow,256),(s6Step23EntryFvRow,24),(s6Step23EntryGvRow,24)] [s6Step23EntryFFresh,s6Step23EntryGFresh,s6Step23EntryFvFresh,s6Step23EntryGvFresh]=
    some (s6Step23EntryGvAfter,[s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut],(growRow 795 s6Step23EntryFFresh ++ (growRow 777 s6Step23EntryGFresh ++ (growRow 776 s6Step23EntryFvFresh ++ (growRow 775 s6Step23EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step23EntryGvAfter [] []=some (s6Step23EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step23EntryGvBefore s6Step23EntryGvAfter s6Step23EntryGvAfter
    s6Step23EntryGvRow s6Step23EntryGvOut 24 s6Step23EntryGvFresh [] [] []
    (growRow 775 s6Step23EntryGvFresh) ([]) s6Step23EntryGv_Incoming s6Step23EntryGv_checked h4 s6Step23EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step23EntryFvBefore s6Step23EntryFvAfter s6Step23EntryGvAfter
    s6Step23EntryFvRow s6Step23EntryFvOut 24 s6Step23EntryFvFresh [(s6Step23EntryGvRow,24)] [s6Step23EntryGvFresh] [s6Step23EntryGvOut]
    (growRow 776 s6Step23EntryFvFresh) ((growRow 775 s6Step23EntryGvFresh ++ [])) s6Step23EntryFv_Incoming s6Step23EntryFv_checked h3 s6Step23EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step23EntryGBefore s6Step23EntryGAfter s6Step23EntryGvAfter
    s6Step23EntryGRow s6Step23EntryGOut 256 s6Step23EntryGFresh [(s6Step23EntryFvRow,24),(s6Step23EntryGvRow,24)] [s6Step23EntryFvFresh,s6Step23EntryGvFresh] [s6Step23EntryFvOut,s6Step23EntryGvOut]
    (growRow 777 s6Step23EntryGFresh) ((growRow 776 s6Step23EntryFvFresh ++ (growRow 775 s6Step23EntryGvFresh ++ []))) s6Step23EntryG_Incoming s6Step23EntryG_checked h2 s6Step23EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step23EntryFBefore s6Step23EntryFAfter s6Step23EntryGvAfter
    s6Step23EntryFRow s6Step23EntryFOut 256 s6Step23EntryFFresh [(s6Step23EntryGRow,256),(s6Step23EntryFvRow,24),(s6Step23EntryGvRow,24)] [s6Step23EntryGFresh,s6Step23EntryFvFresh,s6Step23EntryGvFresh] [s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut]
    (growRow 795 s6Step23EntryFFresh) ((growRow 777 s6Step23EntryGFresh ++ (growRow 776 s6Step23EntryFvFresh ++ (growRow 775 s6Step23EntryGvFresh ++ [])))) s6Step23EntryF_Incoming s6Step23EntryF_checked h1 s6Step23EntryF_Outgoing
  exact h0
theorem s6Step23EntryBank_checked : compileHmrBankResizeLog .entry s6Step23EntryFBefore ⟨s6Step23EntryFRow,s6Step23EntryGRow,s6Step23EntryFvRow,s6Step23EntryGvRow⟩ ⟨256,256,24,24⟩ [s6Step23EntryFFresh,s6Step23EntryGFresh,s6Step23EntryFvFresh,s6Step23EntryGvFresh]=
    some (s6Step23EntryGvAfter,⟨s6Step23EntryFOut,s6Step23EntryGOut,s6Step23EntryFvOut,s6Step23EntryGvOut⟩,(growRow 795 s6Step23EntryFFresh ++ (growRow 777 s6Step23EntryGFresh ++ (growRow 776 s6Step23EntryFvFresh ++ (growRow 775 s6Step23EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step23EntryBank_rows]
  rfl
def s6Step24EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511],795⟩
def s6Step24EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807],777⟩
def s6Step24EntryFvOut : WindowRow := ⟨[255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩
def s6Step24EntryGvOut : WindowRow := ⟨[859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 887],775⟩
theorem s6Step24EntryBank_incomingDistinct : ([s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24EntryBank_outgoingOwned : rowsOwned s6Step24EntryGvAfter [s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step24EntryGvAfter (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24EntryF_Incoming : rowsOwned s6Step24EntryFBefore [s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow] 0 s6Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24EntryF_Outgoing : rowsOwned s6Step24EntryGvAfter [s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut] :=
  hmrRows_owned_drop s6Step24EntryGvAfter [s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut] 0 s6Step24EntryBank_outgoingOwned
theorem s6Step24EntryG_Incoming : rowsOwned s6Step24EntryGBefore [s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow] 1 s6Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24EntryG_Outgoing : rowsOwned s6Step24EntryGvAfter [s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut] :=
  hmrRows_owned_drop s6Step24EntryGvAfter [s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut] 1 s6Step24EntryBank_outgoingOwned
theorem s6Step24EntryFv_Incoming : rowsOwned s6Step24EntryFvBefore [s6Step24EntryFvRow,s6Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow] 2 s6Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24EntryFv_Outgoing : rowsOwned s6Step24EntryGvAfter [s6Step24EntryFvOut,s6Step24EntryGvOut] :=
  hmrRows_owned_drop s6Step24EntryGvAfter [s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut] 2 s6Step24EntryBank_outgoingOwned
theorem s6Step24EntryGv_Incoming : rowsOwned s6Step24EntryGvBefore [s6Step24EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow] 3 s6Step24EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step24EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,860),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step24EntryGv_Outgoing : rowsOwned s6Step24EntryGvAfter [s6Step24EntryGvOut] :=
  hmrRows_owned_drop s6Step24EntryGvAfter [s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut] 3 s6Step24EntryBank_outgoingOwned
theorem s6Step24EntryBank_rows : planWindowRowsLog s6Step24EntryFBefore [(s6Step24EntryFRow,256),(s6Step24EntryGRow,256),(s6Step24EntryFvRow,25),(s6Step24EntryGvRow,25)] [s6Step24EntryFFresh,s6Step24EntryGFresh,s6Step24EntryFvFresh,s6Step24EntryGvFresh]=
    some (s6Step24EntryGvAfter,[s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut],(growRow 795 s6Step24EntryFFresh ++ (growRow 777 s6Step24EntryGFresh ++ (growRow 776 s6Step24EntryFvFresh ++ (growRow 775 s6Step24EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step24EntryGvAfter [] []=some (s6Step24EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step24EntryGvBefore s6Step24EntryGvAfter s6Step24EntryGvAfter
    s6Step24EntryGvRow s6Step24EntryGvOut 25 s6Step24EntryGvFresh [] [] []
    (growRow 775 s6Step24EntryGvFresh) ([]) s6Step24EntryGv_Incoming s6Step24EntryGv_checked h4 s6Step24EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step24EntryFvBefore s6Step24EntryFvAfter s6Step24EntryGvAfter
    s6Step24EntryFvRow s6Step24EntryFvOut 25 s6Step24EntryFvFresh [(s6Step24EntryGvRow,25)] [s6Step24EntryGvFresh] [s6Step24EntryGvOut]
    (growRow 776 s6Step24EntryFvFresh) ((growRow 775 s6Step24EntryGvFresh ++ [])) s6Step24EntryFv_Incoming s6Step24EntryFv_checked h3 s6Step24EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step24EntryGBefore s6Step24EntryGAfter s6Step24EntryGvAfter
    s6Step24EntryGRow s6Step24EntryGOut 256 s6Step24EntryGFresh [(s6Step24EntryFvRow,25),(s6Step24EntryGvRow,25)] [s6Step24EntryFvFresh,s6Step24EntryGvFresh] [s6Step24EntryFvOut,s6Step24EntryGvOut]
    (growRow 777 s6Step24EntryGFresh) ((growRow 776 s6Step24EntryFvFresh ++ (growRow 775 s6Step24EntryGvFresh ++ []))) s6Step24EntryG_Incoming s6Step24EntryG_checked h2 s6Step24EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step24EntryFBefore s6Step24EntryFAfter s6Step24EntryGvAfter
    s6Step24EntryFRow s6Step24EntryFOut 256 s6Step24EntryFFresh [(s6Step24EntryGRow,256),(s6Step24EntryFvRow,25),(s6Step24EntryGvRow,25)] [s6Step24EntryGFresh,s6Step24EntryFvFresh,s6Step24EntryGvFresh] [s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut]
    (growRow 795 s6Step24EntryFFresh) ((growRow 777 s6Step24EntryGFresh ++ (growRow 776 s6Step24EntryFvFresh ++ (growRow 775 s6Step24EntryGvFresh ++ [])))) s6Step24EntryF_Incoming s6Step24EntryF_checked h1 s6Step24EntryF_Outgoing
  exact h0
theorem s6Step24EntryBank_checked : compileHmrBankResizeLog .entry s6Step24EntryFBefore ⟨s6Step24EntryFRow,s6Step24EntryGRow,s6Step24EntryFvRow,s6Step24EntryGvRow⟩ ⟨256,256,25,25⟩ [s6Step24EntryFFresh,s6Step24EntryGFresh,s6Step24EntryFvFresh,s6Step24EntryGvFresh]=
    some (s6Step24EntryGvAfter,⟨s6Step24EntryFOut,s6Step24EntryGOut,s6Step24EntryFvOut,s6Step24EntryGvOut⟩,(growRow 795 s6Step24EntryFFresh ++ (growRow 777 s6Step24EntryGFresh ++ (growRow 776 s6Step24EntryFvFresh ++ (growRow 775 s6Step24EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step24EntryBank_rows]
  rfl
def s6Step25EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩
def s6Step25EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 813],777⟩
def s6Step25EntryFvOut : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850],776⟩
def s6Step25EntryGvOut : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794],775⟩
theorem s6Step25EntryBank_incomingDistinct : ([s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25EntryBank_outgoingOwned : rowsOwned s6Step25EntryGvAfter [s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step25EntryGvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25EntryF_Incoming : rowsOwned s6Step25EntryFBefore [s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow] 0 s6Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25EntryFBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25EntryF_Outgoing : rowsOwned s6Step25EntryGvAfter [s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut] :=
  hmrRows_owned_drop s6Step25EntryGvAfter [s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut] 0 s6Step25EntryBank_outgoingOwned
theorem s6Step25EntryG_Incoming : rowsOwned s6Step25EntryGBefore [s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow] 1 s6Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25EntryGBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25EntryG_Outgoing : rowsOwned s6Step25EntryGvAfter [s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut] :=
  hmrRows_owned_drop s6Step25EntryGvAfter [s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut] 1 s6Step25EntryBank_outgoingOwned
theorem s6Step25EntryFv_Incoming : rowsOwned s6Step25EntryFvBefore [s6Step25EntryFvRow,s6Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow] 2 s6Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25EntryFvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25EntryFv_Outgoing : rowsOwned s6Step25EntryGvAfter [s6Step25EntryFvOut,s6Step25EntryGvOut] :=
  hmrRows_owned_drop s6Step25EntryGvAfter [s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut] 2 s6Step25EntryBank_outgoingOwned
theorem s6Step25EntryGv_Incoming : rowsOwned s6Step25EntryGvBefore [s6Step25EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow] 3 s6Step25EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step25EntryGvBefore (fun q => ([(0,781),(789,790),(793,794),(795,797),(799,800),(802,803),(805,806),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step25EntryGv_Outgoing : rowsOwned s6Step25EntryGvAfter [s6Step25EntryGvOut] :=
  hmrRows_owned_drop s6Step25EntryGvAfter [s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut] 3 s6Step25EntryBank_outgoingOwned
theorem s6Step25EntryBank_rows : planWindowRowsLog s6Step25EntryFBefore [(s6Step25EntryFRow,255),(s6Step25EntryGRow,255),(s6Step25EntryFvRow,25),(s6Step25EntryGvRow,25)] [s6Step25EntryFFresh,s6Step25EntryGFresh,s6Step25EntryFvFresh,s6Step25EntryGvFresh]=
    some (s6Step25EntryGvAfter,[s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut],(growRow 795 s6Step25EntryFFresh ++ (growRow 777 s6Step25EntryGFresh ++ (growRow 776 s6Step25EntryFvFresh ++ (growRow 775 s6Step25EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step25EntryGvAfter [] []=some (s6Step25EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step25EntryGvBefore s6Step25EntryGvAfter s6Step25EntryGvAfter
    s6Step25EntryGvRow s6Step25EntryGvOut 25 s6Step25EntryGvFresh [] [] []
    (growRow 775 s6Step25EntryGvFresh) ([]) s6Step25EntryGv_Incoming s6Step25EntryGv_checked h4 s6Step25EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step25EntryFvBefore s6Step25EntryFvAfter s6Step25EntryGvAfter
    s6Step25EntryFvRow s6Step25EntryFvOut 25 s6Step25EntryFvFresh [(s6Step25EntryGvRow,25)] [s6Step25EntryGvFresh] [s6Step25EntryGvOut]
    (growRow 776 s6Step25EntryFvFresh) ((growRow 775 s6Step25EntryGvFresh ++ [])) s6Step25EntryFv_Incoming s6Step25EntryFv_checked h3 s6Step25EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step25EntryGBefore s6Step25EntryGAfter s6Step25EntryGvAfter
    s6Step25EntryGRow s6Step25EntryGOut 255 s6Step25EntryGFresh [(s6Step25EntryFvRow,25),(s6Step25EntryGvRow,25)] [s6Step25EntryFvFresh,s6Step25EntryGvFresh] [s6Step25EntryFvOut,s6Step25EntryGvOut]
    (growRow 777 s6Step25EntryGFresh) ((growRow 776 s6Step25EntryFvFresh ++ (growRow 775 s6Step25EntryGvFresh ++ []))) s6Step25EntryG_Incoming s6Step25EntryG_checked h2 s6Step25EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step25EntryFBefore s6Step25EntryFAfter s6Step25EntryGvAfter
    s6Step25EntryFRow s6Step25EntryFOut 255 s6Step25EntryFFresh [(s6Step25EntryGRow,255),(s6Step25EntryFvRow,25),(s6Step25EntryGvRow,25)] [s6Step25EntryGFresh,s6Step25EntryFvFresh,s6Step25EntryGvFresh] [s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut]
    (growRow 795 s6Step25EntryFFresh) ((growRow 777 s6Step25EntryGFresh ++ (growRow 776 s6Step25EntryFvFresh ++ (growRow 775 s6Step25EntryGvFresh ++ [])))) s6Step25EntryF_Incoming s6Step25EntryF_checked h1 s6Step25EntryF_Outgoing
  exact h0
theorem s6Step25EntryBank_checked : compileHmrBankResizeLog .entry s6Step25EntryFBefore ⟨s6Step25EntryFRow,s6Step25EntryGRow,s6Step25EntryFvRow,s6Step25EntryGvRow⟩ ⟨255,255,25,25⟩ [s6Step25EntryFFresh,s6Step25EntryGFresh,s6Step25EntryFvFresh,s6Step25EntryGvFresh]=
    some (s6Step25EntryGvAfter,⟨s6Step25EntryFOut,s6Step25EntryGOut,s6Step25EntryFvOut,s6Step25EntryGvOut⟩,(growRow 795 s6Step25EntryFFresh ++ (growRow 777 s6Step25EntryGFresh ++ (growRow 776 s6Step25EntryFvFresh ++ (growRow 775 s6Step25EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step25EntryBank_rows]
  rfl
def s6Step26EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩
def s6Step26EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 876],777⟩
def s6Step26EntryFvOut : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860],776⟩
def s6Step26EntryGvOut : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 859],775⟩
theorem s6Step26EntryBank_incomingDistinct : ([s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26EntryBank_outgoingOwned : rowsOwned s6Step26EntryGvAfter [s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step26EntryGvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26EntryF_Incoming : rowsOwned s6Step26EntryFBefore [s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow] 0 s6Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26EntryFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26EntryF_Outgoing : rowsOwned s6Step26EntryGvAfter [s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut] :=
  hmrRows_owned_drop s6Step26EntryGvAfter [s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut] 0 s6Step26EntryBank_outgoingOwned
theorem s6Step26EntryG_Incoming : rowsOwned s6Step26EntryGBefore [s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow] 1 s6Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26EntryGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26EntryG_Outgoing : rowsOwned s6Step26EntryGvAfter [s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut] :=
  hmrRows_owned_drop s6Step26EntryGvAfter [s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut] 1 s6Step26EntryBank_outgoingOwned
theorem s6Step26EntryFv_Incoming : rowsOwned s6Step26EntryFvBefore [s6Step26EntryFvRow,s6Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow] 2 s6Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26EntryFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26EntryFv_Outgoing : rowsOwned s6Step26EntryGvAfter [s6Step26EntryFvOut,s6Step26EntryGvOut] :=
  hmrRows_owned_drop s6Step26EntryGvAfter [s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut] 2 s6Step26EntryBank_outgoingOwned
theorem s6Step26EntryGv_Incoming : rowsOwned s6Step26EntryGvBefore [s6Step26EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow] 3 s6Step26EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step26EntryGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(863,866),(868,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step26EntryGv_Outgoing : rowsOwned s6Step26EntryGvAfter [s6Step26EntryGvOut] :=
  hmrRows_owned_drop s6Step26EntryGvAfter [s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut] 3 s6Step26EntryBank_outgoingOwned
theorem s6Step26EntryBank_rows : planWindowRowsLog s6Step26EntryFBefore [(s6Step26EntryFRow,255),(s6Step26EntryGRow,255),(s6Step26EntryFvRow,26),(s6Step26EntryGvRow,26)] [s6Step26EntryFFresh,s6Step26EntryGFresh,s6Step26EntryFvFresh,s6Step26EntryGvFresh]=
    some (s6Step26EntryGvAfter,[s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut],(growRow 795 s6Step26EntryFFresh ++ (growRow 777 s6Step26EntryGFresh ++ (growRow 776 s6Step26EntryFvFresh ++ (growRow 775 s6Step26EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step26EntryGvAfter [] []=some (s6Step26EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step26EntryGvBefore s6Step26EntryGvAfter s6Step26EntryGvAfter
    s6Step26EntryGvRow s6Step26EntryGvOut 26 s6Step26EntryGvFresh [] [] []
    (growRow 775 s6Step26EntryGvFresh) ([]) s6Step26EntryGv_Incoming s6Step26EntryGv_checked h4 s6Step26EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step26EntryFvBefore s6Step26EntryFvAfter s6Step26EntryGvAfter
    s6Step26EntryFvRow s6Step26EntryFvOut 26 s6Step26EntryFvFresh [(s6Step26EntryGvRow,26)] [s6Step26EntryGvFresh] [s6Step26EntryGvOut]
    (growRow 776 s6Step26EntryFvFresh) ((growRow 775 s6Step26EntryGvFresh ++ [])) s6Step26EntryFv_Incoming s6Step26EntryFv_checked h3 s6Step26EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step26EntryGBefore s6Step26EntryGAfter s6Step26EntryGvAfter
    s6Step26EntryGRow s6Step26EntryGOut 255 s6Step26EntryGFresh [(s6Step26EntryFvRow,26),(s6Step26EntryGvRow,26)] [s6Step26EntryFvFresh,s6Step26EntryGvFresh] [s6Step26EntryFvOut,s6Step26EntryGvOut]
    (growRow 777 s6Step26EntryGFresh) ((growRow 776 s6Step26EntryFvFresh ++ (growRow 775 s6Step26EntryGvFresh ++ []))) s6Step26EntryG_Incoming s6Step26EntryG_checked h2 s6Step26EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step26EntryFBefore s6Step26EntryFAfter s6Step26EntryGvAfter
    s6Step26EntryFRow s6Step26EntryFOut 255 s6Step26EntryFFresh [(s6Step26EntryGRow,255),(s6Step26EntryFvRow,26),(s6Step26EntryGvRow,26)] [s6Step26EntryGFresh,s6Step26EntryFvFresh,s6Step26EntryGvFresh] [s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut]
    (growRow 795 s6Step26EntryFFresh) ((growRow 777 s6Step26EntryGFresh ++ (growRow 776 s6Step26EntryFvFresh ++ (growRow 775 s6Step26EntryGvFresh ++ [])))) s6Step26EntryF_Incoming s6Step26EntryF_checked h1 s6Step26EntryF_Outgoing
  exact h0
theorem s6Step26EntryBank_checked : compileHmrBankResizeLog .entry s6Step26EntryFBefore ⟨s6Step26EntryFRow,s6Step26EntryGRow,s6Step26EntryFvRow,s6Step26EntryGvRow⟩ ⟨255,255,26,26⟩ [s6Step26EntryFFresh,s6Step26EntryGFresh,s6Step26EntryFvFresh,s6Step26EntryGvFresh]=
    some (s6Step26EntryGvAfter,⟨s6Step26EntryFOut,s6Step26EntryGOut,s6Step26EntryFvOut,s6Step26EntryGvOut⟩,(growRow 795 s6Step26EntryFFresh ++ (growRow 777 s6Step26EntryGFresh ++ (growRow 776 s6Step26EntryFvFresh ++ (growRow 775 s6Step26EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step26EntryBank_rows]
  rfl
def s6Step27EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510],795⟩
def s6Step27EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 881],777⟩
def s6Step27EntryFvOut : WindowRow := ⟨[255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862],776⟩
def s6Step27EntryGvOut : WindowRow := ⟨[511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 859],775⟩
theorem s6Step27EntryBank_incomingDistinct : ([s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27EntryBank_outgoingOwned : rowsOwned s6Step27EntryGvAfter [s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step27EntryGvAfter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27EntryF_Incoming : rowsOwned s6Step27EntryFBefore [s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow] 0 s6Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27EntryFBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27EntryF_Outgoing : rowsOwned s6Step27EntryGvAfter [s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut] :=
  hmrRows_owned_drop s6Step27EntryGvAfter [s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut] 0 s6Step27EntryBank_outgoingOwned
theorem s6Step27EntryG_Incoming : rowsOwned s6Step27EntryGBefore [s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow] 1 s6Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27EntryGBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27EntryG_Outgoing : rowsOwned s6Step27EntryGvAfter [s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut] :=
  hmrRows_owned_drop s6Step27EntryGvAfter [s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut] 1 s6Step27EntryBank_outgoingOwned
theorem s6Step27EntryFv_Incoming : rowsOwned s6Step27EntryFvBefore [s6Step27EntryFvRow,s6Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow] 2 s6Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27EntryFvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27EntryFv_Outgoing : rowsOwned s6Step27EntryGvAfter [s6Step27EntryFvOut,s6Step27EntryGvOut] :=
  hmrRows_owned_drop s6Step27EntryGvAfter [s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut] 2 s6Step27EntryBank_outgoingOwned
theorem s6Step27EntryGv_Incoming : rowsOwned s6Step27EntryGvBefore [s6Step27EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow] 3 s6Step27EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step27EntryGvBefore (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step27EntryGv_Outgoing : rowsOwned s6Step27EntryGvAfter [s6Step27EntryGvOut] :=
  hmrRows_owned_drop s6Step27EntryGvAfter [s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut] 3 s6Step27EntryBank_outgoingOwned
theorem s6Step27EntryBank_rows : planWindowRowsLog s6Step27EntryFBefore [(s6Step27EntryFRow,255),(s6Step27EntryGRow,255),(s6Step27EntryFvRow,27),(s6Step27EntryGvRow,27)] [s6Step27EntryFFresh,s6Step27EntryGFresh,s6Step27EntryFvFresh,s6Step27EntryGvFresh]=
    some (s6Step27EntryGvAfter,[s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut],(growRow 795 s6Step27EntryFFresh ++ (growRow 777 s6Step27EntryGFresh ++ (growRow 776 s6Step27EntryFvFresh ++ (growRow 775 s6Step27EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step27EntryGvAfter [] []=some (s6Step27EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step27EntryGvBefore s6Step27EntryGvAfter s6Step27EntryGvAfter
    s6Step27EntryGvRow s6Step27EntryGvOut 27 s6Step27EntryGvFresh [] [] []
    (growRow 775 s6Step27EntryGvFresh) ([]) s6Step27EntryGv_Incoming s6Step27EntryGv_checked h4 s6Step27EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step27EntryFvBefore s6Step27EntryFvAfter s6Step27EntryGvAfter
    s6Step27EntryFvRow s6Step27EntryFvOut 27 s6Step27EntryFvFresh [(s6Step27EntryGvRow,27)] [s6Step27EntryGvFresh] [s6Step27EntryGvOut]
    (growRow 776 s6Step27EntryFvFresh) ((growRow 775 s6Step27EntryGvFresh ++ [])) s6Step27EntryFv_Incoming s6Step27EntryFv_checked h3 s6Step27EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step27EntryGBefore s6Step27EntryGAfter s6Step27EntryGvAfter
    s6Step27EntryGRow s6Step27EntryGOut 255 s6Step27EntryGFresh [(s6Step27EntryFvRow,27),(s6Step27EntryGvRow,27)] [s6Step27EntryFvFresh,s6Step27EntryGvFresh] [s6Step27EntryFvOut,s6Step27EntryGvOut]
    (growRow 777 s6Step27EntryGFresh) ((growRow 776 s6Step27EntryFvFresh ++ (growRow 775 s6Step27EntryGvFresh ++ []))) s6Step27EntryG_Incoming s6Step27EntryG_checked h2 s6Step27EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step27EntryFBefore s6Step27EntryFAfter s6Step27EntryGvAfter
    s6Step27EntryFRow s6Step27EntryFOut 255 s6Step27EntryFFresh [(s6Step27EntryGRow,255),(s6Step27EntryFvRow,27),(s6Step27EntryGvRow,27)] [s6Step27EntryGFresh,s6Step27EntryFvFresh,s6Step27EntryGvFresh] [s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut]
    (growRow 795 s6Step27EntryFFresh) ((growRow 777 s6Step27EntryGFresh ++ (growRow 776 s6Step27EntryFvFresh ++ (growRow 775 s6Step27EntryGvFresh ++ [])))) s6Step27EntryF_Incoming s6Step27EntryF_checked h1 s6Step27EntryF_Outgoing
  exact h0
theorem s6Step27EntryBank_checked : compileHmrBankResizeLog .entry s6Step27EntryFBefore ⟨s6Step27EntryFRow,s6Step27EntryGRow,s6Step27EntryFvRow,s6Step27EntryGvRow⟩ ⟨255,255,27,27⟩ [s6Step27EntryFFresh,s6Step27EntryGFresh,s6Step27EntryFvFresh,s6Step27EntryGvFresh]=
    some (s6Step27EntryGvAfter,⟨s6Step27EntryFOut,s6Step27EntryGOut,s6Step27EntryFvOut,s6Step27EntryGvOut⟩,(growRow 795 s6Step27EntryFFresh ++ (growRow 777 s6Step27EntryGFresh ++ (growRow 776 s6Step27EntryFvFresh ++ (growRow 775 s6Step27EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step27EntryBank_rows]
  rfl
def s6Step28EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩
def s6Step28EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 887],777⟩
def s6Step28EntryFvOut : WindowRow := ⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩
def s6Step28EntryGvOut : WindowRow := ⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768],775⟩
theorem s6Step28EntryBank_incomingDistinct : ([s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28EntryBank_outgoingOwned : rowsOwned s6Step28EntryGvAfter [s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step28EntryGvAfter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28EntryF_Incoming : rowsOwned s6Step28EntryFBefore [s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow] 0 s6Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28EntryF_Outgoing : rowsOwned s6Step28EntryGvAfter [s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut] :=
  hmrRows_owned_drop s6Step28EntryGvAfter [s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut] 0 s6Step28EntryBank_outgoingOwned
theorem s6Step28EntryG_Incoming : rowsOwned s6Step28EntryGBefore [s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow] 1 s6Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28EntryGBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28EntryG_Outgoing : rowsOwned s6Step28EntryGvAfter [s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut] :=
  hmrRows_owned_drop s6Step28EntryGvAfter [s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut] 1 s6Step28EntryBank_outgoingOwned
theorem s6Step28EntryFv_Incoming : rowsOwned s6Step28EntryFvBefore [s6Step28EntryFvRow,s6Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow] 2 s6Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28EntryFvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28EntryFv_Outgoing : rowsOwned s6Step28EntryGvAfter [s6Step28EntryFvOut,s6Step28EntryGvOut] :=
  hmrRows_owned_drop s6Step28EntryGvAfter [s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut] 2 s6Step28EntryBank_outgoingOwned
theorem s6Step28EntryGv_Incoming : rowsOwned s6Step28EntryGvBefore [s6Step28EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow] 3 s6Step28EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step28EntryGvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step28EntryGv_Outgoing : rowsOwned s6Step28EntryGvAfter [s6Step28EntryGvOut] :=
  hmrRows_owned_drop s6Step28EntryGvAfter [s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut] 3 s6Step28EntryBank_outgoingOwned
theorem s6Step28EntryBank_rows : planWindowRowsLog s6Step28EntryFBefore [(s6Step28EntryFRow,254),(s6Step28EntryGRow,254),(s6Step28EntryFvRow,28),(s6Step28EntryGvRow,28)] [s6Step28EntryFFresh,s6Step28EntryGFresh,s6Step28EntryFvFresh,s6Step28EntryGvFresh]=
    some (s6Step28EntryGvAfter,[s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut],(growRow 795 s6Step28EntryFFresh ++ (growRow 777 s6Step28EntryGFresh ++ (growRow 776 s6Step28EntryFvFresh ++ (growRow 775 s6Step28EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step28EntryGvAfter [] []=some (s6Step28EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step28EntryGvBefore s6Step28EntryGvAfter s6Step28EntryGvAfter
    s6Step28EntryGvRow s6Step28EntryGvOut 28 s6Step28EntryGvFresh [] [] []
    (growRow 775 s6Step28EntryGvFresh) ([]) s6Step28EntryGv_Incoming s6Step28EntryGv_checked h4 s6Step28EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step28EntryFvBefore s6Step28EntryFvAfter s6Step28EntryGvAfter
    s6Step28EntryFvRow s6Step28EntryFvOut 28 s6Step28EntryFvFresh [(s6Step28EntryGvRow,28)] [s6Step28EntryGvFresh] [s6Step28EntryGvOut]
    (growRow 776 s6Step28EntryFvFresh) ((growRow 775 s6Step28EntryGvFresh ++ [])) s6Step28EntryFv_Incoming s6Step28EntryFv_checked h3 s6Step28EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step28EntryGBefore s6Step28EntryGAfter s6Step28EntryGvAfter
    s6Step28EntryGRow s6Step28EntryGOut 254 s6Step28EntryGFresh [(s6Step28EntryFvRow,28),(s6Step28EntryGvRow,28)] [s6Step28EntryFvFresh,s6Step28EntryGvFresh] [s6Step28EntryFvOut,s6Step28EntryGvOut]
    (growRow 777 s6Step28EntryGFresh) ((growRow 776 s6Step28EntryFvFresh ++ (growRow 775 s6Step28EntryGvFresh ++ []))) s6Step28EntryG_Incoming s6Step28EntryG_checked h2 s6Step28EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step28EntryFBefore s6Step28EntryFAfter s6Step28EntryGvAfter
    s6Step28EntryFRow s6Step28EntryFOut 254 s6Step28EntryFFresh [(s6Step28EntryGRow,254),(s6Step28EntryFvRow,28),(s6Step28EntryGvRow,28)] [s6Step28EntryGFresh,s6Step28EntryFvFresh,s6Step28EntryGvFresh] [s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut]
    (growRow 795 s6Step28EntryFFresh) ((growRow 777 s6Step28EntryGFresh ++ (growRow 776 s6Step28EntryFvFresh ++ (growRow 775 s6Step28EntryGvFresh ++ [])))) s6Step28EntryF_Incoming s6Step28EntryF_checked h1 s6Step28EntryF_Outgoing
  exact h0
theorem s6Step28EntryBank_checked : compileHmrBankResizeLog .entry s6Step28EntryFBefore ⟨s6Step28EntryFRow,s6Step28EntryGRow,s6Step28EntryFvRow,s6Step28EntryGvRow⟩ ⟨254,254,28,28⟩ [s6Step28EntryFFresh,s6Step28EntryGFresh,s6Step28EntryFvFresh,s6Step28EntryGvFresh]=
    some (s6Step28EntryGvAfter,⟨s6Step28EntryFOut,s6Step28EntryGOut,s6Step28EntryFvOut,s6Step28EntryGvOut⟩,(growRow 795 s6Step28EntryFFresh ++ (growRow 777 s6Step28EntryGFresh ++ (growRow 776 s6Step28EntryFvFresh ++ (growRow 775 s6Step28EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step28EntryBank_rows]
  rfl
def s6Step29EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509],795⟩
def s6Step29EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 859],777⟩
def s6Step29EntryFvOut : WindowRow := ⟨[255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786],776⟩
def s6Step29EntryGvOut : WindowRow := ⟨[511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 793],775⟩
theorem s6Step29EntryBank_incomingDistinct : ([s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29EntryBank_outgoingOwned : rowsOwned s6Step29EntryGvAfter [s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step29EntryGvAfter (fun q => ([(0,768),(769,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29EntryF_Incoming : rowsOwned s6Step29EntryFBefore [s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow] 0 s6Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29EntryF_Outgoing : rowsOwned s6Step29EntryGvAfter [s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut] :=
  hmrRows_owned_drop s6Step29EntryGvAfter [s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut] 0 s6Step29EntryBank_outgoingOwned
theorem s6Step29EntryG_Incoming : rowsOwned s6Step29EntryGBefore [s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow] 1 s6Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29EntryGBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29EntryG_Outgoing : rowsOwned s6Step29EntryGvAfter [s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut] :=
  hmrRows_owned_drop s6Step29EntryGvAfter [s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut] 1 s6Step29EntryBank_outgoingOwned
theorem s6Step29EntryFv_Incoming : rowsOwned s6Step29EntryFvBefore [s6Step29EntryFvRow,s6Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow] 2 s6Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29EntryFvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29EntryFv_Outgoing : rowsOwned s6Step29EntryGvAfter [s6Step29EntryFvOut,s6Step29EntryGvOut] :=
  hmrRows_owned_drop s6Step29EntryGvAfter [s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut] 2 s6Step29EntryBank_outgoingOwned
theorem s6Step29EntryGv_Incoming : rowsOwned s6Step29EntryGvBefore [s6Step29EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow] 3 s6Step29EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step29EntryGvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step29EntryGv_Outgoing : rowsOwned s6Step29EntryGvAfter [s6Step29EntryGvOut] :=
  hmrRows_owned_drop s6Step29EntryGvAfter [s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut] 3 s6Step29EntryBank_outgoingOwned
theorem s6Step29EntryBank_rows : planWindowRowsLog s6Step29EntryFBefore [(s6Step29EntryFRow,254),(s6Step29EntryGRow,254),(s6Step29EntryFvRow,28),(s6Step29EntryGvRow,28)] [s6Step29EntryFFresh,s6Step29EntryGFresh,s6Step29EntryFvFresh,s6Step29EntryGvFresh]=
    some (s6Step29EntryGvAfter,[s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut],(growRow 795 s6Step29EntryFFresh ++ (growRow 777 s6Step29EntryGFresh ++ (growRow 776 s6Step29EntryFvFresh ++ (growRow 775 s6Step29EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step29EntryGvAfter [] []=some (s6Step29EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step29EntryGvBefore s6Step29EntryGvAfter s6Step29EntryGvAfter
    s6Step29EntryGvRow s6Step29EntryGvOut 28 s6Step29EntryGvFresh [] [] []
    (growRow 775 s6Step29EntryGvFresh) ([]) s6Step29EntryGv_Incoming s6Step29EntryGv_checked h4 s6Step29EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step29EntryFvBefore s6Step29EntryFvAfter s6Step29EntryGvAfter
    s6Step29EntryFvRow s6Step29EntryFvOut 28 s6Step29EntryFvFresh [(s6Step29EntryGvRow,28)] [s6Step29EntryGvFresh] [s6Step29EntryGvOut]
    (growRow 776 s6Step29EntryFvFresh) ((growRow 775 s6Step29EntryGvFresh ++ [])) s6Step29EntryFv_Incoming s6Step29EntryFv_checked h3 s6Step29EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step29EntryGBefore s6Step29EntryGAfter s6Step29EntryGvAfter
    s6Step29EntryGRow s6Step29EntryGOut 254 s6Step29EntryGFresh [(s6Step29EntryFvRow,28),(s6Step29EntryGvRow,28)] [s6Step29EntryFvFresh,s6Step29EntryGvFresh] [s6Step29EntryFvOut,s6Step29EntryGvOut]
    (growRow 777 s6Step29EntryGFresh) ((growRow 776 s6Step29EntryFvFresh ++ (growRow 775 s6Step29EntryGvFresh ++ []))) s6Step29EntryG_Incoming s6Step29EntryG_checked h2 s6Step29EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step29EntryFBefore s6Step29EntryFAfter s6Step29EntryGvAfter
    s6Step29EntryFRow s6Step29EntryFOut 254 s6Step29EntryFFresh [(s6Step29EntryGRow,254),(s6Step29EntryFvRow,28),(s6Step29EntryGvRow,28)] [s6Step29EntryGFresh,s6Step29EntryFvFresh,s6Step29EntryGvFresh] [s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut]
    (growRow 795 s6Step29EntryFFresh) ((growRow 777 s6Step29EntryGFresh ++ (growRow 776 s6Step29EntryFvFresh ++ (growRow 775 s6Step29EntryGvFresh ++ [])))) s6Step29EntryF_Incoming s6Step29EntryF_checked h1 s6Step29EntryF_Outgoing
  exact h0
theorem s6Step29EntryBank_checked : compileHmrBankResizeLog .entry s6Step29EntryFBefore ⟨s6Step29EntryFRow,s6Step29EntryGRow,s6Step29EntryFvRow,s6Step29EntryGvRow⟩ ⟨254,254,28,28⟩ [s6Step29EntryFFresh,s6Step29EntryGFresh,s6Step29EntryFvFresh,s6Step29EntryGvFresh]=
    some (s6Step29EntryGvAfter,⟨s6Step29EntryFOut,s6Step29EntryGOut,s6Step29EntryFvOut,s6Step29EntryGvOut⟩,(growRow 795 s6Step29EntryFFresh ++ (growRow 777 s6Step29EntryGFresh ++ (growRow 776 s6Step29EntryFvFresh ++ (growRow 775 s6Step29EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step29EntryBank_rows]
  rfl
def s6Step30EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩
def s6Step30EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 881],777⟩
def s6Step30EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step30EntryGvOut : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 874],775⟩
theorem s6Step30EntryBank_incomingDistinct : ([s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30EntryBank_outgoingOwned : rowsOwned s6Step30EntryGvAfter [s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step30EntryGvAfter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30EntryF_Incoming : rowsOwned s6Step30EntryFBefore [s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow] 0 s6Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30EntryFBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30EntryF_Outgoing : rowsOwned s6Step30EntryGvAfter [s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut] :=
  hmrRows_owned_drop s6Step30EntryGvAfter [s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut] 0 s6Step30EntryBank_outgoingOwned
theorem s6Step30EntryG_Incoming : rowsOwned s6Step30EntryGBefore [s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow] 1 s6Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30EntryGBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30EntryG_Outgoing : rowsOwned s6Step30EntryGvAfter [s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut] :=
  hmrRows_owned_drop s6Step30EntryGvAfter [s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut] 1 s6Step30EntryBank_outgoingOwned
theorem s6Step30EntryFv_Incoming : rowsOwned s6Step30EntryFvBefore [s6Step30EntryFvRow,s6Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow] 2 s6Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30EntryFvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30EntryFv_Outgoing : rowsOwned s6Step30EntryGvAfter [s6Step30EntryFvOut,s6Step30EntryGvOut] :=
  hmrRows_owned_drop s6Step30EntryGvAfter [s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut] 2 s6Step30EntryBank_outgoingOwned
theorem s6Step30EntryGv_Incoming : rowsOwned s6Step30EntryGvBefore [s6Step30EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow] 3 s6Step30EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step30EntryGvBefore (fun q => ([(0,768),(769,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step30EntryGv_Outgoing : rowsOwned s6Step30EntryGvAfter [s6Step30EntryGvOut] :=
  hmrRows_owned_drop s6Step30EntryGvAfter [s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut] 3 s6Step30EntryBank_outgoingOwned
theorem s6Step30EntryBank_rows : planWindowRowsLog s6Step30EntryFBefore [(s6Step30EntryFRow,253),(s6Step30EntryGRow,253),(s6Step30EntryFvRow,29),(s6Step30EntryGvRow,29)] [s6Step30EntryFFresh,s6Step30EntryGFresh,s6Step30EntryFvFresh,s6Step30EntryGvFresh]=
    some (s6Step30EntryGvAfter,[s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut],(growRow 795 s6Step30EntryFFresh ++ (growRow 777 s6Step30EntryGFresh ++ (growRow 776 s6Step30EntryFvFresh ++ (growRow 775 s6Step30EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step30EntryGvAfter [] []=some (s6Step30EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step30EntryGvBefore s6Step30EntryGvAfter s6Step30EntryGvAfter
    s6Step30EntryGvRow s6Step30EntryGvOut 29 s6Step30EntryGvFresh [] [] []
    (growRow 775 s6Step30EntryGvFresh) ([]) s6Step30EntryGv_Incoming s6Step30EntryGv_checked h4 s6Step30EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step30EntryFvBefore s6Step30EntryFvAfter s6Step30EntryGvAfter
    s6Step30EntryFvRow s6Step30EntryFvOut 29 s6Step30EntryFvFresh [(s6Step30EntryGvRow,29)] [s6Step30EntryGvFresh] [s6Step30EntryGvOut]
    (growRow 776 s6Step30EntryFvFresh) ((growRow 775 s6Step30EntryGvFresh ++ [])) s6Step30EntryFv_Incoming s6Step30EntryFv_checked h3 s6Step30EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step30EntryGBefore s6Step30EntryGAfter s6Step30EntryGvAfter
    s6Step30EntryGRow s6Step30EntryGOut 253 s6Step30EntryGFresh [(s6Step30EntryFvRow,29),(s6Step30EntryGvRow,29)] [s6Step30EntryFvFresh,s6Step30EntryGvFresh] [s6Step30EntryFvOut,s6Step30EntryGvOut]
    (growRow 777 s6Step30EntryGFresh) ((growRow 776 s6Step30EntryFvFresh ++ (growRow 775 s6Step30EntryGvFresh ++ []))) s6Step30EntryG_Incoming s6Step30EntryG_checked h2 s6Step30EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step30EntryFBefore s6Step30EntryFAfter s6Step30EntryGvAfter
    s6Step30EntryFRow s6Step30EntryFOut 253 s6Step30EntryFFresh [(s6Step30EntryGRow,253),(s6Step30EntryFvRow,29),(s6Step30EntryGvRow,29)] [s6Step30EntryGFresh,s6Step30EntryFvFresh,s6Step30EntryGvFresh] [s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut]
    (growRow 795 s6Step30EntryFFresh) ((growRow 777 s6Step30EntryGFresh ++ (growRow 776 s6Step30EntryFvFresh ++ (growRow 775 s6Step30EntryGvFresh ++ [])))) s6Step30EntryF_Incoming s6Step30EntryF_checked h1 s6Step30EntryF_Outgoing
  exact h0
theorem s6Step30EntryBank_checked : compileHmrBankResizeLog .entry s6Step30EntryFBefore ⟨s6Step30EntryFRow,s6Step30EntryGRow,s6Step30EntryFvRow,s6Step30EntryGvRow⟩ ⟨253,253,29,29⟩ [s6Step30EntryFFresh,s6Step30EntryGFresh,s6Step30EntryFvFresh,s6Step30EntryGvFresh]=
    some (s6Step30EntryGvAfter,⟨s6Step30EntryFOut,s6Step30EntryGOut,s6Step30EntryFvOut,s6Step30EntryGvOut⟩,(growRow 795 s6Step30EntryFFresh ++ (growRow 777 s6Step30EntryGFresh ++ (growRow 776 s6Step30EntryFvFresh ++ (growRow 775 s6Step30EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step30EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
