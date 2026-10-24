import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk8
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk7

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step63EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492],795⟩
def s6Step63EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236],777⟩
def s6Step63EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886],776⟩
def s6Step63EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 838],775⟩
theorem s6Step63EntryBank_incomingDistinct : ([s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step63EntryBank_outgoingOwned : rowsOwned s6Step63EntryGvAfter [s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step63EntryGvAfter (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63EntryF_Incoming : rowsOwned s6Step63EntryFBefore [s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow] 0 s6Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63EntryFBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63EntryF_Outgoing : rowsOwned s6Step63EntryGvAfter [s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut] :=
  hmrRows_owned_drop s6Step63EntryGvAfter [s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut] 0 s6Step63EntryBank_outgoingOwned
theorem s6Step63EntryG_Incoming : rowsOwned s6Step63EntryGBefore [s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow] 1 s6Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63EntryGBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63EntryG_Outgoing : rowsOwned s6Step63EntryGvAfter [s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut] :=
  hmrRows_owned_drop s6Step63EntryGvAfter [s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut] 1 s6Step63EntryBank_outgoingOwned
theorem s6Step63EntryFv_Incoming : rowsOwned s6Step63EntryFvBefore [s6Step63EntryFvRow,s6Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow] 2 s6Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63EntryFvBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63EntryFv_Outgoing : rowsOwned s6Step63EntryGvAfter [s6Step63EntryFvOut,s6Step63EntryGvOut] :=
  hmrRows_owned_drop s6Step63EntryGvAfter [s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut] 2 s6Step63EntryBank_outgoingOwned
theorem s6Step63EntryGv_Incoming : rowsOwned s6Step63EntryGvBefore [s6Step63EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow] 3 s6Step63EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step63EntryGvBefore (fun q => ([(0,778),(779,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(913,914),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step63EntryGv_Outgoing : rowsOwned s6Step63EntryGvAfter [s6Step63EntryGvOut] :=
  hmrRows_owned_drop s6Step63EntryGvAfter [s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut] 3 s6Step63EntryBank_outgoingOwned
theorem s6Step63EntryBank_rows : planWindowRowsLog s6Step63EntryFBefore [(s6Step63EntryFRow,237),(s6Step63EntryGRow,237),(s6Step63EntryFvRow,45),(s6Step63EntryGvRow,45)] [s6Step63EntryFFresh,s6Step63EntryGFresh,s6Step63EntryFvFresh,s6Step63EntryGvFresh]=
    some (s6Step63EntryGvAfter,[s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut],(growRow 795 s6Step63EntryFFresh ++ (growRow 777 s6Step63EntryGFresh ++ (growRow 776 s6Step63EntryFvFresh ++ (growRow 775 s6Step63EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step63EntryGvAfter [] []=some (s6Step63EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step63EntryGvBefore s6Step63EntryGvAfter s6Step63EntryGvAfter
    s6Step63EntryGvRow s6Step63EntryGvOut 45 s6Step63EntryGvFresh [] [] []
    (growRow 775 s6Step63EntryGvFresh) ([]) s6Step63EntryGv_Incoming s6Step63EntryGv_checked h4 s6Step63EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step63EntryFvBefore s6Step63EntryFvAfter s6Step63EntryGvAfter
    s6Step63EntryFvRow s6Step63EntryFvOut 45 s6Step63EntryFvFresh [(s6Step63EntryGvRow,45)] [s6Step63EntryGvFresh] [s6Step63EntryGvOut]
    (growRow 776 s6Step63EntryFvFresh) ((growRow 775 s6Step63EntryGvFresh ++ [])) s6Step63EntryFv_Incoming s6Step63EntryFv_checked h3 s6Step63EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step63EntryGBefore s6Step63EntryGAfter s6Step63EntryGvAfter
    s6Step63EntryGRow s6Step63EntryGOut 237 s6Step63EntryGFresh [(s6Step63EntryFvRow,45),(s6Step63EntryGvRow,45)] [s6Step63EntryFvFresh,s6Step63EntryGvFresh] [s6Step63EntryFvOut,s6Step63EntryGvOut]
    (growRow 777 s6Step63EntryGFresh) ((growRow 776 s6Step63EntryFvFresh ++ (growRow 775 s6Step63EntryGvFresh ++ []))) s6Step63EntryG_Incoming s6Step63EntryG_checked h2 s6Step63EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step63EntryFBefore s6Step63EntryFAfter s6Step63EntryGvAfter
    s6Step63EntryFRow s6Step63EntryFOut 237 s6Step63EntryFFresh [(s6Step63EntryGRow,237),(s6Step63EntryFvRow,45),(s6Step63EntryGvRow,45)] [s6Step63EntryGFresh,s6Step63EntryFvFresh,s6Step63EntryGvFresh] [s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut]
    (growRow 795 s6Step63EntryFFresh) ((growRow 777 s6Step63EntryGFresh ++ (growRow 776 s6Step63EntryFvFresh ++ (growRow 775 s6Step63EntryGvFresh ++ [])))) s6Step63EntryF_Incoming s6Step63EntryF_checked h1 s6Step63EntryF_Outgoing
  exact h0
theorem s6Step63EntryBank_checked : compileHmrBankResizeLog .entry s6Step63EntryFBefore ⟨s6Step63EntryFRow,s6Step63EntryGRow,s6Step63EntryFvRow,s6Step63EntryGvRow⟩ ⟨237,237,45,45⟩ [s6Step63EntryFFresh,s6Step63EntryGFresh,s6Step63EntryFvFresh,s6Step63EntryGvFresh]=
    some (s6Step63EntryGvAfter,⟨s6Step63EntryFOut,s6Step63EntryGOut,s6Step63EntryFvOut,s6Step63EntryGvOut⟩,(growRow 795 s6Step63EntryFFresh ++ (growRow 777 s6Step63EntryGFresh ++ (growRow 776 s6Step63EntryFvFresh ++ (growRow 775 s6Step63EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step63EntryBank_rows]
  rfl
def s6Step498EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 915],795⟩
def s6Step498EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 855],777⟩
def s6Step498EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 778, 848, 812, 825, 906, 888, 869, 898, 823, 839, 863, 876, 903, 920, 818, 864, 853, 891, 821, 784, 793, 833, 927, 856, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779],776⟩
def s6Step498EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 329, 328, 326, 327, 325, 323, 324, 322, 321, 320, 319, 317, 318, 316, 315, 314, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 302, 300, 301, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 289, 288, 287, 286, 285, 284, 283, 282, 280, 281, 886, 887, 922, 807, 858, 802, 786, 796, 792, 803, 805, 850, 828, 862, 814, 868, 890, 794, 841, 867, 880, 830, 857, 859, 854, 882, 810, 865, 817, 860, 816, 789, 873, 875],775⟩
theorem s6Step498EntryBank_incomingDistinct : ([s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498EntryBank_outgoingOwned : rowsOwned s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step498EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryF_Incoming : rowsOwned s6Step498EntryFBefore [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 0 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryF_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 0 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryG_Incoming : rowsOwned s6Step498EntryGBefore [s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 1 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryG_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 1 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryFv_Incoming : rowsOwned s6Step498EntryFvBefore [s6Step498EntryFvRow,s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 2 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryFv_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryFvOut,s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 2 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryGv_Incoming : rowsOwned s6Step498EntryGvBefore [s6Step498EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow] 3 s6Step498EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step498EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<790) ∨ (792≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (801≤q ∧ q<808) ∨ (809≤q ∧ q<820) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<842) ∨ (843≤q ∧ q<896) ∨ (897≤q ∧ q<914) ∨ (915≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
    decide +kernel
theorem s6Step498EntryGv_Outgoing : rowsOwned s6Step498EntryGvAfter [s6Step498EntryGvOut] :=
  hmrRows_owned_drop s6Step498EntryGvAfter [s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut] 3 s6Step498EntryBank_outgoingOwned
theorem s6Step498EntryBank_rows : planWindowRowsLog s6Step498EntryFBefore [(s6Step498EntryFRow,25),(s6Step498EntryGRow,25),(s6Step498EntryFvRow,266),(s6Step498EntryGvRow,266)] [s6Step498EntryFFresh,s6Step498EntryGFresh,s6Step498EntryFvFresh,s6Step498EntryGvFresh]=
    some (s6Step498EntryGvAfter,[s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut],(growRow 795 s6Step498EntryFFresh ++ (growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step498EntryGvAfter [] []=some (s6Step498EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step498EntryGvBefore s6Step498EntryGvAfter s6Step498EntryGvAfter
    s6Step498EntryGvRow s6Step498EntryGvOut 266 s6Step498EntryGvFresh [] [] []
    (growRow 775 s6Step498EntryGvFresh) ([]) s6Step498EntryGv_Incoming s6Step498EntryGv_checked h4 s6Step498EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step498EntryFvBefore s6Step498EntryFvAfter s6Step498EntryGvAfter
    s6Step498EntryFvRow s6Step498EntryFvOut 266 s6Step498EntryFvFresh [(s6Step498EntryGvRow,266)] [s6Step498EntryGvFresh] [s6Step498EntryGvOut]
    (growRow 776 s6Step498EntryFvFresh) ((growRow 775 s6Step498EntryGvFresh ++ [])) s6Step498EntryFv_Incoming s6Step498EntryFv_checked h3 s6Step498EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step498EntryGBefore s6Step498EntryGAfter s6Step498EntryGvAfter
    s6Step498EntryGRow s6Step498EntryGOut 25 s6Step498EntryGFresh [(s6Step498EntryFvRow,266),(s6Step498EntryGvRow,266)] [s6Step498EntryFvFresh,s6Step498EntryGvFresh] [s6Step498EntryFvOut,s6Step498EntryGvOut]
    (growRow 777 s6Step498EntryGFresh) ((growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ []))) s6Step498EntryG_Incoming s6Step498EntryG_checked h2 s6Step498EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step498EntryFBefore s6Step498EntryFAfter s6Step498EntryGvAfter
    s6Step498EntryFRow s6Step498EntryFOut 25 s6Step498EntryFFresh [(s6Step498EntryGRow,25),(s6Step498EntryFvRow,266),(s6Step498EntryGvRow,266)] [s6Step498EntryGFresh,s6Step498EntryFvFresh,s6Step498EntryGvFresh] [s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut]
    (growRow 795 s6Step498EntryFFresh) ((growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ [])))) s6Step498EntryF_Incoming s6Step498EntryF_checked h1 s6Step498EntryF_Outgoing
  exact h0
theorem s6Step498EntryBank_checked : compileHmrBankResizeLog .entry s6Step498EntryFBefore ⟨s6Step498EntryFRow,s6Step498EntryGRow,s6Step498EntryFvRow,s6Step498EntryGvRow⟩ ⟨25,25,266,266⟩ [s6Step498EntryFFresh,s6Step498EntryGFresh,s6Step498EntryFvFresh,s6Step498EntryGvFresh]=
    some (s6Step498EntryGvAfter,⟨s6Step498EntryFOut,s6Step498EntryGOut,s6Step498EntryFvOut,s6Step498EntryGvOut⟩,(growRow 795 s6Step498EntryFFresh ++ (growRow 777 s6Step498EntryGFresh ++ (growRow 776 s6Step498EntryFvFresh ++ (growRow 775 s6Step498EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step498EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
