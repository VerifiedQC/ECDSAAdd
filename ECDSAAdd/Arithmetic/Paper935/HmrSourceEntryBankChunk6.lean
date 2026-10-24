import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk5

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩
def s6Step31EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 793],777⟩
def s6Step31EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step31EntryGvOut : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 802],775⟩
theorem s6Step31EntryBank_incomingDistinct : ([s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31EntryBank_outgoingOwned : rowsOwned s6Step31EntryGvAfter [s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step31EntryGvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31EntryF_Incoming : rowsOwned s6Step31EntryFBefore [s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow] 0 s6Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31EntryFBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31EntryF_Outgoing : rowsOwned s6Step31EntryGvAfter [s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut] :=
  hmrRows_owned_drop s6Step31EntryGvAfter [s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut] 0 s6Step31EntryBank_outgoingOwned
theorem s6Step31EntryG_Incoming : rowsOwned s6Step31EntryGBefore [s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow] 1 s6Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31EntryGBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31EntryG_Outgoing : rowsOwned s6Step31EntryGvAfter [s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut] :=
  hmrRows_owned_drop s6Step31EntryGvAfter [s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut] 1 s6Step31EntryBank_outgoingOwned
theorem s6Step31EntryFv_Incoming : rowsOwned s6Step31EntryFvBefore [s6Step31EntryFvRow,s6Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow] 2 s6Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31EntryFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31EntryFv_Outgoing : rowsOwned s6Step31EntryGvAfter [s6Step31EntryFvOut,s6Step31EntryGvOut] :=
  hmrRows_owned_drop s6Step31EntryGvAfter [s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut] 2 s6Step31EntryBank_outgoingOwned
theorem s6Step31EntryGv_Incoming : rowsOwned s6Step31EntryGvBefore [s6Step31EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow] 3 s6Step31EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31EntryGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31EntryGv_Outgoing : rowsOwned s6Step31EntryGvAfter [s6Step31EntryGvOut] :=
  hmrRows_owned_drop s6Step31EntryGvAfter [s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut] 3 s6Step31EntryBank_outgoingOwned
theorem s6Step31EntryBank_rows : planWindowRowsLog s6Step31EntryFBefore [(s6Step31EntryFRow,253),(s6Step31EntryGRow,253),(s6Step31EntryFvRow,29),(s6Step31EntryGvRow,29)] [s6Step31EntryFFresh,s6Step31EntryGFresh,s6Step31EntryFvFresh,s6Step31EntryGvFresh]=
    some (s6Step31EntryGvAfter,[s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut],(growRow 795 s6Step31EntryFFresh ++ (growRow 777 s6Step31EntryGFresh ++ (growRow 776 s6Step31EntryFvFresh ++ (growRow 775 s6Step31EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step31EntryGvAfter [] []=some (s6Step31EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step31EntryGvBefore s6Step31EntryGvAfter s6Step31EntryGvAfter
    s6Step31EntryGvRow s6Step31EntryGvOut 29 s6Step31EntryGvFresh [] [] []
    (growRow 775 s6Step31EntryGvFresh) ([]) s6Step31EntryGv_Incoming s6Step31EntryGv_checked h4 s6Step31EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step31EntryFvBefore s6Step31EntryFvAfter s6Step31EntryGvAfter
    s6Step31EntryFvRow s6Step31EntryFvOut 29 s6Step31EntryFvFresh [(s6Step31EntryGvRow,29)] [s6Step31EntryGvFresh] [s6Step31EntryGvOut]
    (growRow 776 s6Step31EntryFvFresh) ((growRow 775 s6Step31EntryGvFresh ++ [])) s6Step31EntryFv_Incoming s6Step31EntryFv_checked h3 s6Step31EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step31EntryGBefore s6Step31EntryGAfter s6Step31EntryGvAfter
    s6Step31EntryGRow s6Step31EntryGOut 253 s6Step31EntryGFresh [(s6Step31EntryFvRow,29),(s6Step31EntryGvRow,29)] [s6Step31EntryFvFresh,s6Step31EntryGvFresh] [s6Step31EntryFvOut,s6Step31EntryGvOut]
    (growRow 777 s6Step31EntryGFresh) ((growRow 776 s6Step31EntryFvFresh ++ (growRow 775 s6Step31EntryGvFresh ++ []))) s6Step31EntryG_Incoming s6Step31EntryG_checked h2 s6Step31EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step31EntryFBefore s6Step31EntryFAfter s6Step31EntryGvAfter
    s6Step31EntryFRow s6Step31EntryFOut 253 s6Step31EntryFFresh [(s6Step31EntryGRow,253),(s6Step31EntryFvRow,29),(s6Step31EntryGvRow,29)] [s6Step31EntryGFresh,s6Step31EntryFvFresh,s6Step31EntryGvFresh] [s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut]
    (growRow 795 s6Step31EntryFFresh) ((growRow 777 s6Step31EntryGFresh ++ (growRow 776 s6Step31EntryFvFresh ++ (growRow 775 s6Step31EntryGvFresh ++ [])))) s6Step31EntryF_Incoming s6Step31EntryF_checked h1 s6Step31EntryF_Outgoing
  exact h0
theorem s6Step31EntryBank_checked : compileHmrBankResizeLog .entry s6Step31EntryFBefore ⟨s6Step31EntryFRow,s6Step31EntryGRow,s6Step31EntryFvRow,s6Step31EntryGvRow⟩ ⟨253,253,29,29⟩ [s6Step31EntryFFresh,s6Step31EntryGFresh,s6Step31EntryFvFresh,s6Step31EntryGvFresh]=
    some (s6Step31EntryGvAfter,⟨s6Step31EntryFOut,s6Step31EntryGOut,s6Step31EntryFvOut,s6Step31EntryGvOut⟩,(growRow 795 s6Step31EntryFFresh ++ (growRow 777 s6Step31EntryGFresh ++ (growRow 776 s6Step31EntryFvFresh ++ (growRow 775 s6Step31EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step31EntryBank_rows]
  rfl
def s6Step32EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩
def s6Step32EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859, 874],777⟩
def s6Step32EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step32EntryGvOut : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 779],775⟩
theorem s6Step32EntryBank_incomingDistinct : ([s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32EntryBank_outgoingOwned : rowsOwned s6Step32EntryGvAfter [s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step32EntryGvAfter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32EntryF_Incoming : rowsOwned s6Step32EntryFBefore [s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow] 0 s6Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32EntryF_Outgoing : rowsOwned s6Step32EntryGvAfter [s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut] :=
  hmrRows_owned_drop s6Step32EntryGvAfter [s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut] 0 s6Step32EntryBank_outgoingOwned
theorem s6Step32EntryG_Incoming : rowsOwned s6Step32EntryGBefore [s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow] 1 s6Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32EntryG_Outgoing : rowsOwned s6Step32EntryGvAfter [s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut] :=
  hmrRows_owned_drop s6Step32EntryGvAfter [s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut] 1 s6Step32EntryBank_outgoingOwned
theorem s6Step32EntryFv_Incoming : rowsOwned s6Step32EntryFvBefore [s6Step32EntryFvRow,s6Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow] 2 s6Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32EntryFv_Outgoing : rowsOwned s6Step32EntryGvAfter [s6Step32EntryFvOut,s6Step32EntryGvOut] :=
  hmrRows_owned_drop s6Step32EntryGvAfter [s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut] 2 s6Step32EntryBank_outgoingOwned
theorem s6Step32EntryGv_Incoming : rowsOwned s6Step32EntryGvBefore [s6Step32EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow] 3 s6Step32EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32EntryGv_Outgoing : rowsOwned s6Step32EntryGvAfter [s6Step32EntryGvOut] :=
  hmrRows_owned_drop s6Step32EntryGvAfter [s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut] 3 s6Step32EntryBank_outgoingOwned
theorem s6Step32EntryBank_rows : planWindowRowsLog s6Step32EntryFBefore [(s6Step32EntryFRow,253),(s6Step32EntryGRow,253),(s6Step32EntryFvRow,29),(s6Step32EntryGvRow,29)] [s6Step32EntryFFresh,s6Step32EntryGFresh,s6Step32EntryFvFresh,s6Step32EntryGvFresh]=
    some (s6Step32EntryGvAfter,[s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut],(growRow 795 s6Step32EntryFFresh ++ (growRow 777 s6Step32EntryGFresh ++ (growRow 776 s6Step32EntryFvFresh ++ (growRow 775 s6Step32EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step32EntryGvAfter [] []=some (s6Step32EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step32EntryGvBefore s6Step32EntryGvAfter s6Step32EntryGvAfter
    s6Step32EntryGvRow s6Step32EntryGvOut 29 s6Step32EntryGvFresh [] [] []
    (growRow 775 s6Step32EntryGvFresh) ([]) s6Step32EntryGv_Incoming s6Step32EntryGv_checked h4 s6Step32EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step32EntryFvBefore s6Step32EntryFvAfter s6Step32EntryGvAfter
    s6Step32EntryFvRow s6Step32EntryFvOut 29 s6Step32EntryFvFresh [(s6Step32EntryGvRow,29)] [s6Step32EntryGvFresh] [s6Step32EntryGvOut]
    (growRow 776 s6Step32EntryFvFresh) ((growRow 775 s6Step32EntryGvFresh ++ [])) s6Step32EntryFv_Incoming s6Step32EntryFv_checked h3 s6Step32EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step32EntryGBefore s6Step32EntryGAfter s6Step32EntryGvAfter
    s6Step32EntryGRow s6Step32EntryGOut 253 s6Step32EntryGFresh [(s6Step32EntryFvRow,29),(s6Step32EntryGvRow,29)] [s6Step32EntryFvFresh,s6Step32EntryGvFresh] [s6Step32EntryFvOut,s6Step32EntryGvOut]
    (growRow 777 s6Step32EntryGFresh) ((growRow 776 s6Step32EntryFvFresh ++ (growRow 775 s6Step32EntryGvFresh ++ []))) s6Step32EntryG_Incoming s6Step32EntryG_checked h2 s6Step32EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step32EntryFBefore s6Step32EntryFAfter s6Step32EntryGvAfter
    s6Step32EntryFRow s6Step32EntryFOut 253 s6Step32EntryFFresh [(s6Step32EntryGRow,253),(s6Step32EntryFvRow,29),(s6Step32EntryGvRow,29)] [s6Step32EntryGFresh,s6Step32EntryFvFresh,s6Step32EntryGvFresh] [s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut]
    (growRow 795 s6Step32EntryFFresh) ((growRow 777 s6Step32EntryGFresh ++ (growRow 776 s6Step32EntryFvFresh ++ (growRow 775 s6Step32EntryGvFresh ++ [])))) s6Step32EntryF_Incoming s6Step32EntryF_checked h1 s6Step32EntryF_Outgoing
  exact h0
theorem s6Step32EntryBank_checked : compileHmrBankResizeLog .entry s6Step32EntryFBefore ⟨s6Step32EntryFRow,s6Step32EntryGRow,s6Step32EntryFvRow,s6Step32EntryGvRow⟩ ⟨253,253,29,29⟩ [s6Step32EntryFFresh,s6Step32EntryGFresh,s6Step32EntryFvFresh,s6Step32EntryGvFresh]=
    some (s6Step32EntryGvAfter,⟨s6Step32EntryFOut,s6Step32EntryGOut,s6Step32EntryFvOut,s6Step32EntryGvOut⟩,(growRow 795 s6Step32EntryFFresh ++ (growRow 777 s6Step32EntryGFresh ++ (growRow 776 s6Step32EntryFvFresh ++ (growRow 775 s6Step32EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step32EntryBank_rows]
  rfl
def s6Step33EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507],795⟩
def s6Step33EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859],777⟩
def s6Step33EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step33EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881],775⟩
theorem s6Step33EntryBank_incomingDistinct : ([s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33EntryBank_outgoingOwned : rowsOwned s6Step33EntryGvAfter [s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step33EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33EntryF_Incoming : rowsOwned s6Step33EntryFBefore [s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow] 0 s6Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33EntryF_Outgoing : rowsOwned s6Step33EntryGvAfter [s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut] :=
  hmrRows_owned_drop s6Step33EntryGvAfter [s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut] 0 s6Step33EntryBank_outgoingOwned
theorem s6Step33EntryG_Incoming : rowsOwned s6Step33EntryGBefore [s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow] 1 s6Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33EntryG_Outgoing : rowsOwned s6Step33EntryGvAfter [s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut] :=
  hmrRows_owned_drop s6Step33EntryGvAfter [s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut] 1 s6Step33EntryBank_outgoingOwned
theorem s6Step33EntryFv_Incoming : rowsOwned s6Step33EntryFvBefore [s6Step33EntryFvRow,s6Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow] 2 s6Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33EntryFv_Outgoing : rowsOwned s6Step33EntryGvAfter [s6Step33EntryFvOut,s6Step33EntryGvOut] :=
  hmrRows_owned_drop s6Step33EntryGvAfter [s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut] 2 s6Step33EntryBank_outgoingOwned
theorem s6Step33EntryGv_Incoming : rowsOwned s6Step33EntryGvBefore [s6Step33EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow] 3 s6Step33EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33EntryGv_Outgoing : rowsOwned s6Step33EntryGvAfter [s6Step33EntryGvOut] :=
  hmrRows_owned_drop s6Step33EntryGvAfter [s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut] 3 s6Step33EntryBank_outgoingOwned
theorem s6Step33EntryBank_rows : planWindowRowsLog s6Step33EntryFBefore [(s6Step33EntryFRow,252),(s6Step33EntryGRow,252),(s6Step33EntryFvRow,29),(s6Step33EntryGvRow,29)] [s6Step33EntryFFresh,s6Step33EntryGFresh,s6Step33EntryFvFresh,s6Step33EntryGvFresh]=
    some (s6Step33EntryGvAfter,[s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut],(growRow 795 s6Step33EntryFFresh ++ (growRow 777 s6Step33EntryGFresh ++ (growRow 776 s6Step33EntryFvFresh ++ (growRow 775 s6Step33EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step33EntryGvAfter [] []=some (s6Step33EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step33EntryGvBefore s6Step33EntryGvAfter s6Step33EntryGvAfter
    s6Step33EntryGvRow s6Step33EntryGvOut 29 s6Step33EntryGvFresh [] [] []
    (growRow 775 s6Step33EntryGvFresh) ([]) s6Step33EntryGv_Incoming s6Step33EntryGv_checked h4 s6Step33EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step33EntryFvBefore s6Step33EntryFvAfter s6Step33EntryGvAfter
    s6Step33EntryFvRow s6Step33EntryFvOut 29 s6Step33EntryFvFresh [(s6Step33EntryGvRow,29)] [s6Step33EntryGvFresh] [s6Step33EntryGvOut]
    (growRow 776 s6Step33EntryFvFresh) ((growRow 775 s6Step33EntryGvFresh ++ [])) s6Step33EntryFv_Incoming s6Step33EntryFv_checked h3 s6Step33EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step33EntryGBefore s6Step33EntryGAfter s6Step33EntryGvAfter
    s6Step33EntryGRow s6Step33EntryGOut 252 s6Step33EntryGFresh [(s6Step33EntryFvRow,29),(s6Step33EntryGvRow,29)] [s6Step33EntryFvFresh,s6Step33EntryGvFresh] [s6Step33EntryFvOut,s6Step33EntryGvOut]
    (growRow 777 s6Step33EntryGFresh) ((growRow 776 s6Step33EntryFvFresh ++ (growRow 775 s6Step33EntryGvFresh ++ []))) s6Step33EntryG_Incoming s6Step33EntryG_checked h2 s6Step33EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step33EntryFBefore s6Step33EntryFAfter s6Step33EntryGvAfter
    s6Step33EntryFRow s6Step33EntryFOut 252 s6Step33EntryFFresh [(s6Step33EntryGRow,252),(s6Step33EntryFvRow,29),(s6Step33EntryGvRow,29)] [s6Step33EntryGFresh,s6Step33EntryFvFresh,s6Step33EntryGvFresh] [s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut]
    (growRow 795 s6Step33EntryFFresh) ((growRow 777 s6Step33EntryGFresh ++ (growRow 776 s6Step33EntryFvFresh ++ (growRow 775 s6Step33EntryGvFresh ++ [])))) s6Step33EntryF_Incoming s6Step33EntryF_checked h1 s6Step33EntryF_Outgoing
  exact h0
theorem s6Step33EntryBank_checked : compileHmrBankResizeLog .entry s6Step33EntryFBefore ⟨s6Step33EntryFRow,s6Step33EntryGRow,s6Step33EntryFvRow,s6Step33EntryGvRow⟩ ⟨252,252,29,29⟩ [s6Step33EntryFFresh,s6Step33EntryGFresh,s6Step33EntryFvFresh,s6Step33EntryGvFresh]=
    some (s6Step33EntryGvAfter,⟨s6Step33EntryFOut,s6Step33EntryGOut,s6Step33EntryFvOut,s6Step33EntryGvOut⟩,(growRow 795 s6Step33EntryFFresh ++ (growRow 777 s6Step33EntryGFresh ++ (growRow 776 s6Step33EntryFvFresh ++ (growRow 775 s6Step33EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step33EntryBank_rows]
  rfl
def s6Step34EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩
def s6Step34EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],777⟩
def s6Step34EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩
def s6Step34EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩
theorem s6Step34EntryBank_incomingDistinct : ([s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34EntryBank_outgoingOwned : rowsOwned s6Step34EntryGvAfter [s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step34EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34EntryF_Incoming : rowsOwned s6Step34EntryFBefore [s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow] 0 s6Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34EntryF_Outgoing : rowsOwned s6Step34EntryGvAfter [s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut] :=
  hmrRows_owned_drop s6Step34EntryGvAfter [s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut] 0 s6Step34EntryBank_outgoingOwned
theorem s6Step34EntryG_Incoming : rowsOwned s6Step34EntryGBefore [s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow] 1 s6Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34EntryG_Outgoing : rowsOwned s6Step34EntryGvAfter [s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut] :=
  hmrRows_owned_drop s6Step34EntryGvAfter [s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut] 1 s6Step34EntryBank_outgoingOwned
theorem s6Step34EntryFv_Incoming : rowsOwned s6Step34EntryFvBefore [s6Step34EntryFvRow,s6Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow] 2 s6Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34EntryFv_Outgoing : rowsOwned s6Step34EntryGvAfter [s6Step34EntryFvOut,s6Step34EntryGvOut] :=
  hmrRows_owned_drop s6Step34EntryGvAfter [s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut] 2 s6Step34EntryBank_outgoingOwned
theorem s6Step34EntryGv_Incoming : rowsOwned s6Step34EntryGvBefore [s6Step34EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow] 3 s6Step34EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34EntryGv_Outgoing : rowsOwned s6Step34EntryGvAfter [s6Step34EntryGvOut] :=
  hmrRows_owned_drop s6Step34EntryGvAfter [s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut] 3 s6Step34EntryBank_outgoingOwned
theorem s6Step34EntryBank_rows : planWindowRowsLog s6Step34EntryFBefore [(s6Step34EntryFRow,251),(s6Step34EntryGRow,251),(s6Step34EntryFvRow,30),(s6Step34EntryGvRow,30)] [s6Step34EntryFFresh,s6Step34EntryGFresh,s6Step34EntryFvFresh,s6Step34EntryGvFresh]=
    some (s6Step34EntryGvAfter,[s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut],(growRow 795 s6Step34EntryFFresh ++ (growRow 777 s6Step34EntryGFresh ++ (growRow 776 s6Step34EntryFvFresh ++ (growRow 775 s6Step34EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step34EntryGvAfter [] []=some (s6Step34EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step34EntryGvBefore s6Step34EntryGvAfter s6Step34EntryGvAfter
    s6Step34EntryGvRow s6Step34EntryGvOut 30 s6Step34EntryGvFresh [] [] []
    (growRow 775 s6Step34EntryGvFresh) ([]) s6Step34EntryGv_Incoming s6Step34EntryGv_checked h4 s6Step34EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step34EntryFvBefore s6Step34EntryFvAfter s6Step34EntryGvAfter
    s6Step34EntryFvRow s6Step34EntryFvOut 30 s6Step34EntryFvFresh [(s6Step34EntryGvRow,30)] [s6Step34EntryGvFresh] [s6Step34EntryGvOut]
    (growRow 776 s6Step34EntryFvFresh) ((growRow 775 s6Step34EntryGvFresh ++ [])) s6Step34EntryFv_Incoming s6Step34EntryFv_checked h3 s6Step34EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step34EntryGBefore s6Step34EntryGAfter s6Step34EntryGvAfter
    s6Step34EntryGRow s6Step34EntryGOut 251 s6Step34EntryGFresh [(s6Step34EntryFvRow,30),(s6Step34EntryGvRow,30)] [s6Step34EntryFvFresh,s6Step34EntryGvFresh] [s6Step34EntryFvOut,s6Step34EntryGvOut]
    (growRow 777 s6Step34EntryGFresh) ((growRow 776 s6Step34EntryFvFresh ++ (growRow 775 s6Step34EntryGvFresh ++ []))) s6Step34EntryG_Incoming s6Step34EntryG_checked h2 s6Step34EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step34EntryFBefore s6Step34EntryFAfter s6Step34EntryGvAfter
    s6Step34EntryFRow s6Step34EntryFOut 251 s6Step34EntryFFresh [(s6Step34EntryGRow,251),(s6Step34EntryFvRow,30),(s6Step34EntryGvRow,30)] [s6Step34EntryGFresh,s6Step34EntryFvFresh,s6Step34EntryGvFresh] [s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut]
    (growRow 795 s6Step34EntryFFresh) ((growRow 777 s6Step34EntryGFresh ++ (growRow 776 s6Step34EntryFvFresh ++ (growRow 775 s6Step34EntryGvFresh ++ [])))) s6Step34EntryF_Incoming s6Step34EntryF_checked h1 s6Step34EntryF_Outgoing
  exact h0
theorem s6Step34EntryBank_checked : compileHmrBankResizeLog .entry s6Step34EntryFBefore ⟨s6Step34EntryFRow,s6Step34EntryGRow,s6Step34EntryFvRow,s6Step34EntryGvRow⟩ ⟨251,251,30,30⟩ [s6Step34EntryFFresh,s6Step34EntryGFresh,s6Step34EntryFvFresh,s6Step34EntryGvFresh]=
    some (s6Step34EntryGvAfter,⟨s6Step34EntryFOut,s6Step34EntryGOut,s6Step34EntryFvOut,s6Step34EntryGvOut⟩,(growRow 795 s6Step34EntryFFresh ++ (growRow 777 s6Step34EntryGFresh ++ (growRow 776 s6Step34EntryFvFresh ++ (growRow 775 s6Step34EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step34EntryBank_rows]
  rfl
def s6Step35EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩
def s6Step35EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875],777⟩
def s6Step35EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩
def s6Step35EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩
theorem s6Step35EntryBank_incomingDistinct : ([s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35EntryBank_outgoingOwned : rowsOwned s6Step35EntryGvAfter [s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step35EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35EntryF_Incoming : rowsOwned s6Step35EntryFBefore [s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow] 0 s6Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35EntryF_Outgoing : rowsOwned s6Step35EntryGvAfter [s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut] :=
  hmrRows_owned_drop s6Step35EntryGvAfter [s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut] 0 s6Step35EntryBank_outgoingOwned
theorem s6Step35EntryG_Incoming : rowsOwned s6Step35EntryGBefore [s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow] 1 s6Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35EntryG_Outgoing : rowsOwned s6Step35EntryGvAfter [s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut] :=
  hmrRows_owned_drop s6Step35EntryGvAfter [s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut] 1 s6Step35EntryBank_outgoingOwned
theorem s6Step35EntryFv_Incoming : rowsOwned s6Step35EntryFvBefore [s6Step35EntryFvRow,s6Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow] 2 s6Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35EntryFv_Outgoing : rowsOwned s6Step35EntryGvAfter [s6Step35EntryFvOut,s6Step35EntryGvOut] :=
  hmrRows_owned_drop s6Step35EntryGvAfter [s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut] 2 s6Step35EntryBank_outgoingOwned
theorem s6Step35EntryGv_Incoming : rowsOwned s6Step35EntryGvBefore [s6Step35EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow] 3 s6Step35EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35EntryGv_Outgoing : rowsOwned s6Step35EntryGvAfter [s6Step35EntryGvOut] :=
  hmrRows_owned_drop s6Step35EntryGvAfter [s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut] 3 s6Step35EntryBank_outgoingOwned
theorem s6Step35EntryBank_rows : planWindowRowsLog s6Step35EntryFBefore [(s6Step35EntryFRow,251),(s6Step35EntryGRow,251),(s6Step35EntryFvRow,30),(s6Step35EntryGvRow,30)] [s6Step35EntryFFresh,s6Step35EntryGFresh,s6Step35EntryFvFresh,s6Step35EntryGvFresh]=
    some (s6Step35EntryGvAfter,[s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut],(growRow 795 s6Step35EntryFFresh ++ (growRow 777 s6Step35EntryGFresh ++ (growRow 776 s6Step35EntryFvFresh ++ (growRow 775 s6Step35EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step35EntryGvAfter [] []=some (s6Step35EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step35EntryGvBefore s6Step35EntryGvAfter s6Step35EntryGvAfter
    s6Step35EntryGvRow s6Step35EntryGvOut 30 s6Step35EntryGvFresh [] [] []
    (growRow 775 s6Step35EntryGvFresh) ([]) s6Step35EntryGv_Incoming s6Step35EntryGv_checked h4 s6Step35EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step35EntryFvBefore s6Step35EntryFvAfter s6Step35EntryGvAfter
    s6Step35EntryFvRow s6Step35EntryFvOut 30 s6Step35EntryFvFresh [(s6Step35EntryGvRow,30)] [s6Step35EntryGvFresh] [s6Step35EntryGvOut]
    (growRow 776 s6Step35EntryFvFresh) ((growRow 775 s6Step35EntryGvFresh ++ [])) s6Step35EntryFv_Incoming s6Step35EntryFv_checked h3 s6Step35EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step35EntryGBefore s6Step35EntryGAfter s6Step35EntryGvAfter
    s6Step35EntryGRow s6Step35EntryGOut 251 s6Step35EntryGFresh [(s6Step35EntryFvRow,30),(s6Step35EntryGvRow,30)] [s6Step35EntryFvFresh,s6Step35EntryGvFresh] [s6Step35EntryFvOut,s6Step35EntryGvOut]
    (growRow 777 s6Step35EntryGFresh) ((growRow 776 s6Step35EntryFvFresh ++ (growRow 775 s6Step35EntryGvFresh ++ []))) s6Step35EntryG_Incoming s6Step35EntryG_checked h2 s6Step35EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step35EntryFBefore s6Step35EntryFAfter s6Step35EntryGvAfter
    s6Step35EntryFRow s6Step35EntryFOut 251 s6Step35EntryFFresh [(s6Step35EntryGRow,251),(s6Step35EntryFvRow,30),(s6Step35EntryGvRow,30)] [s6Step35EntryGFresh,s6Step35EntryFvFresh,s6Step35EntryGvFresh] [s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut]
    (growRow 795 s6Step35EntryFFresh) ((growRow 777 s6Step35EntryGFresh ++ (growRow 776 s6Step35EntryFvFresh ++ (growRow 775 s6Step35EntryGvFresh ++ [])))) s6Step35EntryF_Incoming s6Step35EntryF_checked h1 s6Step35EntryF_Outgoing
  exact h0
theorem s6Step35EntryBank_checked : compileHmrBankResizeLog .entry s6Step35EntryFBefore ⟨s6Step35EntryFRow,s6Step35EntryGRow,s6Step35EntryFvRow,s6Step35EntryGvRow⟩ ⟨251,251,30,30⟩ [s6Step35EntryFFresh,s6Step35EntryGFresh,s6Step35EntryFvFresh,s6Step35EntryGvFresh]=
    some (s6Step35EntryGvAfter,⟨s6Step35EntryFOut,s6Step35EntryGOut,s6Step35EntryFvOut,s6Step35EntryGvOut⟩,(growRow 795 s6Step35EntryFFresh ++ (growRow 777 s6Step35EntryGFresh ++ (growRow 776 s6Step35EntryFvFresh ++ (growRow 775 s6Step35EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step35EntryBank_rows]
  rfl
def s6Step36EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 857],795⟩
def s6Step36EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875],777⟩
def s6Step36EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩
def s6Step36EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802],775⟩
theorem s6Step36EntryBank_incomingDistinct : ([s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36EntryBank_outgoingOwned : rowsOwned s6Step36EntryGvAfter [s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step36EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36EntryF_Incoming : rowsOwned s6Step36EntryFBefore [s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow] 0 s6Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36EntryF_Outgoing : rowsOwned s6Step36EntryGvAfter [s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut] :=
  hmrRows_owned_drop s6Step36EntryGvAfter [s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut] 0 s6Step36EntryBank_outgoingOwned
theorem s6Step36EntryG_Incoming : rowsOwned s6Step36EntryGBefore [s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow] 1 s6Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36EntryG_Outgoing : rowsOwned s6Step36EntryGvAfter [s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut] :=
  hmrRows_owned_drop s6Step36EntryGvAfter [s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut] 1 s6Step36EntryBank_outgoingOwned
theorem s6Step36EntryFv_Incoming : rowsOwned s6Step36EntryFvBefore [s6Step36EntryFvRow,s6Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow] 2 s6Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36EntryFv_Outgoing : rowsOwned s6Step36EntryGvAfter [s6Step36EntryFvOut,s6Step36EntryGvOut] :=
  hmrRows_owned_drop s6Step36EntryGvAfter [s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut] 2 s6Step36EntryBank_outgoingOwned
theorem s6Step36EntryGv_Incoming : rowsOwned s6Step36EntryGvBefore [s6Step36EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow] 3 s6Step36EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36EntryGv_Outgoing : rowsOwned s6Step36EntryGvAfter [s6Step36EntryGvOut] :=
  hmrRows_owned_drop s6Step36EntryGvAfter [s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut] 3 s6Step36EntryBank_outgoingOwned
theorem s6Step36EntryBank_rows : planWindowRowsLog s6Step36EntryFBefore [(s6Step36EntryFRow,251),(s6Step36EntryGRow,251),(s6Step36EntryFvRow,31),(s6Step36EntryGvRow,31)] [s6Step36EntryFFresh,s6Step36EntryGFresh,s6Step36EntryFvFresh,s6Step36EntryGvFresh]=
    some (s6Step36EntryGvAfter,[s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut],(growRow 795 s6Step36EntryFFresh ++ (growRow 777 s6Step36EntryGFresh ++ (growRow 776 s6Step36EntryFvFresh ++ (growRow 775 s6Step36EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step36EntryGvAfter [] []=some (s6Step36EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step36EntryGvBefore s6Step36EntryGvAfter s6Step36EntryGvAfter
    s6Step36EntryGvRow s6Step36EntryGvOut 31 s6Step36EntryGvFresh [] [] []
    (growRow 775 s6Step36EntryGvFresh) ([]) s6Step36EntryGv_Incoming s6Step36EntryGv_checked h4 s6Step36EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step36EntryFvBefore s6Step36EntryFvAfter s6Step36EntryGvAfter
    s6Step36EntryFvRow s6Step36EntryFvOut 31 s6Step36EntryFvFresh [(s6Step36EntryGvRow,31)] [s6Step36EntryGvFresh] [s6Step36EntryGvOut]
    (growRow 776 s6Step36EntryFvFresh) ((growRow 775 s6Step36EntryGvFresh ++ [])) s6Step36EntryFv_Incoming s6Step36EntryFv_checked h3 s6Step36EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step36EntryGBefore s6Step36EntryGAfter s6Step36EntryGvAfter
    s6Step36EntryGRow s6Step36EntryGOut 251 s6Step36EntryGFresh [(s6Step36EntryFvRow,31),(s6Step36EntryGvRow,31)] [s6Step36EntryFvFresh,s6Step36EntryGvFresh] [s6Step36EntryFvOut,s6Step36EntryGvOut]
    (growRow 777 s6Step36EntryGFresh) ((growRow 776 s6Step36EntryFvFresh ++ (growRow 775 s6Step36EntryGvFresh ++ []))) s6Step36EntryG_Incoming s6Step36EntryG_checked h2 s6Step36EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step36EntryFBefore s6Step36EntryFAfter s6Step36EntryGvAfter
    s6Step36EntryFRow s6Step36EntryFOut 251 s6Step36EntryFFresh [(s6Step36EntryGRow,251),(s6Step36EntryFvRow,31),(s6Step36EntryGvRow,31)] [s6Step36EntryGFresh,s6Step36EntryFvFresh,s6Step36EntryGvFresh] [s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut]
    (growRow 795 s6Step36EntryFFresh) ((growRow 777 s6Step36EntryGFresh ++ (growRow 776 s6Step36EntryFvFresh ++ (growRow 775 s6Step36EntryGvFresh ++ [])))) s6Step36EntryF_Incoming s6Step36EntryF_checked h1 s6Step36EntryF_Outgoing
  exact h0
theorem s6Step36EntryBank_checked : compileHmrBankResizeLog .entry s6Step36EntryFBefore ⟨s6Step36EntryFRow,s6Step36EntryGRow,s6Step36EntryFvRow,s6Step36EntryGvRow⟩ ⟨251,251,31,31⟩ [s6Step36EntryFFresh,s6Step36EntryGFresh,s6Step36EntryFvFresh,s6Step36EntryGvFresh]=
    some (s6Step36EntryGvAfter,⟨s6Step36EntryFOut,s6Step36EntryGOut,s6Step36EntryFvOut,s6Step36EntryGvOut⟩,(growRow 795 s6Step36EntryFFresh ++ (growRow 777 s6Step36EntryGFresh ++ (growRow 776 s6Step36EntryFvFresh ++ (growRow 775 s6Step36EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step36EntryBank_rows]
  rfl
def s6Step37EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩
def s6Step37EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],777⟩
def s6Step37EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩
def s6Step37EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802],775⟩
theorem s6Step37EntryBank_incomingDistinct : ([s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37EntryBank_outgoingOwned : rowsOwned s6Step37EntryGvAfter [s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step37EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37EntryF_Incoming : rowsOwned s6Step37EntryFBefore [s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow] 0 s6Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37EntryF_Outgoing : rowsOwned s6Step37EntryGvAfter [s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut] :=
  hmrRows_owned_drop s6Step37EntryGvAfter [s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut] 0 s6Step37EntryBank_outgoingOwned
theorem s6Step37EntryG_Incoming : rowsOwned s6Step37EntryGBefore [s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow] 1 s6Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37EntryG_Outgoing : rowsOwned s6Step37EntryGvAfter [s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut] :=
  hmrRows_owned_drop s6Step37EntryGvAfter [s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut] 1 s6Step37EntryBank_outgoingOwned
theorem s6Step37EntryFv_Incoming : rowsOwned s6Step37EntryFvBefore [s6Step37EntryFvRow,s6Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow] 2 s6Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37EntryFv_Outgoing : rowsOwned s6Step37EntryGvAfter [s6Step37EntryFvOut,s6Step37EntryGvOut] :=
  hmrRows_owned_drop s6Step37EntryGvAfter [s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut] 2 s6Step37EntryBank_outgoingOwned
theorem s6Step37EntryGv_Incoming : rowsOwned s6Step37EntryGvBefore [s6Step37EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow] 3 s6Step37EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37EntryGv_Outgoing : rowsOwned s6Step37EntryGvAfter [s6Step37EntryGvOut] :=
  hmrRows_owned_drop s6Step37EntryGvAfter [s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut] 3 s6Step37EntryBank_outgoingOwned
theorem s6Step37EntryBank_rows : planWindowRowsLog s6Step37EntryFBefore [(s6Step37EntryFRow,250),(s6Step37EntryGRow,250),(s6Step37EntryFvRow,31),(s6Step37EntryGvRow,31)] [s6Step37EntryFFresh,s6Step37EntryGFresh,s6Step37EntryFvFresh,s6Step37EntryGvFresh]=
    some (s6Step37EntryGvAfter,[s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut],(growRow 795 s6Step37EntryFFresh ++ (growRow 777 s6Step37EntryGFresh ++ (growRow 776 s6Step37EntryFvFresh ++ (growRow 775 s6Step37EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step37EntryGvAfter [] []=some (s6Step37EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step37EntryGvBefore s6Step37EntryGvAfter s6Step37EntryGvAfter
    s6Step37EntryGvRow s6Step37EntryGvOut 31 s6Step37EntryGvFresh [] [] []
    (growRow 775 s6Step37EntryGvFresh) ([]) s6Step37EntryGv_Incoming s6Step37EntryGv_checked h4 s6Step37EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step37EntryFvBefore s6Step37EntryFvAfter s6Step37EntryGvAfter
    s6Step37EntryFvRow s6Step37EntryFvOut 31 s6Step37EntryFvFresh [(s6Step37EntryGvRow,31)] [s6Step37EntryGvFresh] [s6Step37EntryGvOut]
    (growRow 776 s6Step37EntryFvFresh) ((growRow 775 s6Step37EntryGvFresh ++ [])) s6Step37EntryFv_Incoming s6Step37EntryFv_checked h3 s6Step37EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step37EntryGBefore s6Step37EntryGAfter s6Step37EntryGvAfter
    s6Step37EntryGRow s6Step37EntryGOut 250 s6Step37EntryGFresh [(s6Step37EntryFvRow,31),(s6Step37EntryGvRow,31)] [s6Step37EntryFvFresh,s6Step37EntryGvFresh] [s6Step37EntryFvOut,s6Step37EntryGvOut]
    (growRow 777 s6Step37EntryGFresh) ((growRow 776 s6Step37EntryFvFresh ++ (growRow 775 s6Step37EntryGvFresh ++ []))) s6Step37EntryG_Incoming s6Step37EntryG_checked h2 s6Step37EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step37EntryFBefore s6Step37EntryFAfter s6Step37EntryGvAfter
    s6Step37EntryFRow s6Step37EntryFOut 250 s6Step37EntryFFresh [(s6Step37EntryGRow,250),(s6Step37EntryFvRow,31),(s6Step37EntryGvRow,31)] [s6Step37EntryGFresh,s6Step37EntryFvFresh,s6Step37EntryGvFresh] [s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut]
    (growRow 795 s6Step37EntryFFresh) ((growRow 777 s6Step37EntryGFresh ++ (growRow 776 s6Step37EntryFvFresh ++ (growRow 775 s6Step37EntryGvFresh ++ [])))) s6Step37EntryF_Incoming s6Step37EntryF_checked h1 s6Step37EntryF_Outgoing
  exact h0
theorem s6Step37EntryBank_checked : compileHmrBankResizeLog .entry s6Step37EntryFBefore ⟨s6Step37EntryFRow,s6Step37EntryGRow,s6Step37EntryFvRow,s6Step37EntryGvRow⟩ ⟨250,250,31,31⟩ [s6Step37EntryFFresh,s6Step37EntryGFresh,s6Step37EntryFvFresh,s6Step37EntryGvFresh]=
    some (s6Step37EntryGvAfter,⟨s6Step37EntryFOut,s6Step37EntryGOut,s6Step37EntryFvOut,s6Step37EntryGvOut⟩,(growRow 795 s6Step37EntryFFresh ++ (growRow 777 s6Step37EntryGFresh ++ (growRow 776 s6Step37EntryFvFresh ++ (growRow 775 s6Step37EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step37EntryBank_rows]
  rfl
def s6Step38EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩
def s6Step38EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 868],777⟩
def s6Step38EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩
def s6Step38EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩
theorem s6Step38EntryBank_incomingDistinct : ([s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38EntryBank_outgoingOwned : rowsOwned s6Step38EntryGvAfter [s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step38EntryGvAfter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38EntryF_Incoming : rowsOwned s6Step38EntryFBefore [s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow] 0 s6Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38EntryFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38EntryF_Outgoing : rowsOwned s6Step38EntryGvAfter [s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut] :=
  hmrRows_owned_drop s6Step38EntryGvAfter [s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut] 0 s6Step38EntryBank_outgoingOwned
theorem s6Step38EntryG_Incoming : rowsOwned s6Step38EntryGBefore [s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow] 1 s6Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38EntryGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38EntryG_Outgoing : rowsOwned s6Step38EntryGvAfter [s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut] :=
  hmrRows_owned_drop s6Step38EntryGvAfter [s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut] 1 s6Step38EntryBank_outgoingOwned
theorem s6Step38EntryFv_Incoming : rowsOwned s6Step38EntryFvBefore [s6Step38EntryFvRow,s6Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow] 2 s6Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38EntryFvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38EntryFv_Outgoing : rowsOwned s6Step38EntryGvAfter [s6Step38EntryFvOut,s6Step38EntryGvOut] :=
  hmrRows_owned_drop s6Step38EntryGvAfter [s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut] 2 s6Step38EntryBank_outgoingOwned
theorem s6Step38EntryGv_Incoming : rowsOwned s6Step38EntryGvBefore [s6Step38EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow] 3 s6Step38EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38EntryGvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38EntryGv_Outgoing : rowsOwned s6Step38EntryGvAfter [s6Step38EntryGvOut] :=
  hmrRows_owned_drop s6Step38EntryGvAfter [s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut] 3 s6Step38EntryBank_outgoingOwned
theorem s6Step38EntryBank_rows : planWindowRowsLog s6Step38EntryFBefore [(s6Step38EntryFRow,250),(s6Step38EntryGRow,250),(s6Step38EntryFvRow,32),(s6Step38EntryGvRow,32)] [s6Step38EntryFFresh,s6Step38EntryGFresh,s6Step38EntryFvFresh,s6Step38EntryGvFresh]=
    some (s6Step38EntryGvAfter,[s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut],(growRow 795 s6Step38EntryFFresh ++ (growRow 777 s6Step38EntryGFresh ++ (growRow 776 s6Step38EntryFvFresh ++ (growRow 775 s6Step38EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step38EntryGvAfter [] []=some (s6Step38EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step38EntryGvBefore s6Step38EntryGvAfter s6Step38EntryGvAfter
    s6Step38EntryGvRow s6Step38EntryGvOut 32 s6Step38EntryGvFresh [] [] []
    (growRow 775 s6Step38EntryGvFresh) ([]) s6Step38EntryGv_Incoming s6Step38EntryGv_checked h4 s6Step38EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step38EntryFvBefore s6Step38EntryFvAfter s6Step38EntryGvAfter
    s6Step38EntryFvRow s6Step38EntryFvOut 32 s6Step38EntryFvFresh [(s6Step38EntryGvRow,32)] [s6Step38EntryGvFresh] [s6Step38EntryGvOut]
    (growRow 776 s6Step38EntryFvFresh) ((growRow 775 s6Step38EntryGvFresh ++ [])) s6Step38EntryFv_Incoming s6Step38EntryFv_checked h3 s6Step38EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step38EntryGBefore s6Step38EntryGAfter s6Step38EntryGvAfter
    s6Step38EntryGRow s6Step38EntryGOut 250 s6Step38EntryGFresh [(s6Step38EntryFvRow,32),(s6Step38EntryGvRow,32)] [s6Step38EntryFvFresh,s6Step38EntryGvFresh] [s6Step38EntryFvOut,s6Step38EntryGvOut]
    (growRow 777 s6Step38EntryGFresh) ((growRow 776 s6Step38EntryFvFresh ++ (growRow 775 s6Step38EntryGvFresh ++ []))) s6Step38EntryG_Incoming s6Step38EntryG_checked h2 s6Step38EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step38EntryFBefore s6Step38EntryFAfter s6Step38EntryGvAfter
    s6Step38EntryFRow s6Step38EntryFOut 250 s6Step38EntryFFresh [(s6Step38EntryGRow,250),(s6Step38EntryFvRow,32),(s6Step38EntryGvRow,32)] [s6Step38EntryGFresh,s6Step38EntryFvFresh,s6Step38EntryGvFresh] [s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut]
    (growRow 795 s6Step38EntryFFresh) ((growRow 777 s6Step38EntryGFresh ++ (growRow 776 s6Step38EntryFvFresh ++ (growRow 775 s6Step38EntryGvFresh ++ [])))) s6Step38EntryF_Incoming s6Step38EntryF_checked h1 s6Step38EntryF_Outgoing
  exact h0
theorem s6Step38EntryBank_checked : compileHmrBankResizeLog .entry s6Step38EntryFBefore ⟨s6Step38EntryFRow,s6Step38EntryGRow,s6Step38EntryFvRow,s6Step38EntryGvRow⟩ ⟨250,250,32,32⟩ [s6Step38EntryFFresh,s6Step38EntryGFresh,s6Step38EntryFvFresh,s6Step38EntryGvFresh]=
    some (s6Step38EntryGvAfter,⟨s6Step38EntryFOut,s6Step38EntryGOut,s6Step38EntryFvOut,s6Step38EntryGvOut⟩,(growRow 795 s6Step38EntryFFresh ++ (growRow 777 s6Step38EntryGFresh ++ (growRow 776 s6Step38EntryFvFresh ++ (growRow 775 s6Step38EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step38EntryBank_rows]
  rfl
def s6Step39EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩
def s6Step39EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],777⟩
def s6Step39EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩
def s6Step39EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩
theorem s6Step39EntryBank_incomingDistinct : ([s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39EntryBank_outgoingOwned : rowsOwned s6Step39EntryGvAfter [s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step39EntryGvAfter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39EntryF_Incoming : rowsOwned s6Step39EntryFBefore [s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow] 0 s6Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39EntryFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39EntryF_Outgoing : rowsOwned s6Step39EntryGvAfter [s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut] :=
  hmrRows_owned_drop s6Step39EntryGvAfter [s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut] 0 s6Step39EntryBank_outgoingOwned
theorem s6Step39EntryG_Incoming : rowsOwned s6Step39EntryGBefore [s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow] 1 s6Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39EntryGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39EntryG_Outgoing : rowsOwned s6Step39EntryGvAfter [s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut] :=
  hmrRows_owned_drop s6Step39EntryGvAfter [s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut] 1 s6Step39EntryBank_outgoingOwned
theorem s6Step39EntryFv_Incoming : rowsOwned s6Step39EntryFvBefore [s6Step39EntryFvRow,s6Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow] 2 s6Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39EntryFvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39EntryFv_Outgoing : rowsOwned s6Step39EntryGvAfter [s6Step39EntryFvOut,s6Step39EntryGvOut] :=
  hmrRows_owned_drop s6Step39EntryGvAfter [s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut] 2 s6Step39EntryBank_outgoingOwned
theorem s6Step39EntryGv_Incoming : rowsOwned s6Step39EntryGvBefore [s6Step39EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow] 3 s6Step39EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39EntryGvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39EntryGv_Outgoing : rowsOwned s6Step39EntryGvAfter [s6Step39EntryGvOut] :=
  hmrRows_owned_drop s6Step39EntryGvAfter [s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut] 3 s6Step39EntryBank_outgoingOwned
theorem s6Step39EntryBank_rows : planWindowRowsLog s6Step39EntryFBefore [(s6Step39EntryFRow,249),(s6Step39EntryGRow,249),(s6Step39EntryFvRow,32),(s6Step39EntryGvRow,32)] [s6Step39EntryFFresh,s6Step39EntryGFresh,s6Step39EntryFvFresh,s6Step39EntryGvFresh]=
    some (s6Step39EntryGvAfter,[s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut],(growRow 795 s6Step39EntryFFresh ++ (growRow 777 s6Step39EntryGFresh ++ (growRow 776 s6Step39EntryFvFresh ++ (growRow 775 s6Step39EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step39EntryGvAfter [] []=some (s6Step39EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step39EntryGvBefore s6Step39EntryGvAfter s6Step39EntryGvAfter
    s6Step39EntryGvRow s6Step39EntryGvOut 32 s6Step39EntryGvFresh [] [] []
    (growRow 775 s6Step39EntryGvFresh) ([]) s6Step39EntryGv_Incoming s6Step39EntryGv_checked h4 s6Step39EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step39EntryFvBefore s6Step39EntryFvAfter s6Step39EntryGvAfter
    s6Step39EntryFvRow s6Step39EntryFvOut 32 s6Step39EntryFvFresh [(s6Step39EntryGvRow,32)] [s6Step39EntryGvFresh] [s6Step39EntryGvOut]
    (growRow 776 s6Step39EntryFvFresh) ((growRow 775 s6Step39EntryGvFresh ++ [])) s6Step39EntryFv_Incoming s6Step39EntryFv_checked h3 s6Step39EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step39EntryGBefore s6Step39EntryGAfter s6Step39EntryGvAfter
    s6Step39EntryGRow s6Step39EntryGOut 249 s6Step39EntryGFresh [(s6Step39EntryFvRow,32),(s6Step39EntryGvRow,32)] [s6Step39EntryFvFresh,s6Step39EntryGvFresh] [s6Step39EntryFvOut,s6Step39EntryGvOut]
    (growRow 777 s6Step39EntryGFresh) ((growRow 776 s6Step39EntryFvFresh ++ (growRow 775 s6Step39EntryGvFresh ++ []))) s6Step39EntryG_Incoming s6Step39EntryG_checked h2 s6Step39EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step39EntryFBefore s6Step39EntryFAfter s6Step39EntryGvAfter
    s6Step39EntryFRow s6Step39EntryFOut 249 s6Step39EntryFFresh [(s6Step39EntryGRow,249),(s6Step39EntryFvRow,32),(s6Step39EntryGvRow,32)] [s6Step39EntryGFresh,s6Step39EntryFvFresh,s6Step39EntryGvFresh] [s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut]
    (growRow 795 s6Step39EntryFFresh) ((growRow 777 s6Step39EntryGFresh ++ (growRow 776 s6Step39EntryFvFresh ++ (growRow 775 s6Step39EntryGvFresh ++ [])))) s6Step39EntryF_Incoming s6Step39EntryF_checked h1 s6Step39EntryF_Outgoing
  exact h0
theorem s6Step39EntryBank_checked : compileHmrBankResizeLog .entry s6Step39EntryFBefore ⟨s6Step39EntryFRow,s6Step39EntryGRow,s6Step39EntryFvRow,s6Step39EntryGvRow⟩ ⟨249,249,32,32⟩ [s6Step39EntryFFresh,s6Step39EntryGFresh,s6Step39EntryFvFresh,s6Step39EntryGvFresh]=
    some (s6Step39EntryGvAfter,⟨s6Step39EntryFOut,s6Step39EntryGOut,s6Step39EntryFvOut,s6Step39EntryGvOut⟩,(growRow 795 s6Step39EntryFFresh ++ (growRow 777 s6Step39EntryGFresh ++ (growRow 776 s6Step39EntryFvFresh ++ (growRow 775 s6Step39EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step39EntryBank_rows]
  rfl
def s6Step40EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩
def s6Step40EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 793],777⟩
def s6Step40EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874],776⟩
def s6Step40EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858],775⟩
theorem s6Step40EntryBank_incomingDistinct : ([s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40EntryBank_outgoingOwned : rowsOwned s6Step40EntryGvAfter [s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step40EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40EntryF_Incoming : rowsOwned s6Step40EntryFBefore [s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow] 0 s6Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40EntryF_Outgoing : rowsOwned s6Step40EntryGvAfter [s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut] :=
  hmrRows_owned_drop s6Step40EntryGvAfter [s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut] 0 s6Step40EntryBank_outgoingOwned
theorem s6Step40EntryG_Incoming : rowsOwned s6Step40EntryGBefore [s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow] 1 s6Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40EntryG_Outgoing : rowsOwned s6Step40EntryGvAfter [s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut] :=
  hmrRows_owned_drop s6Step40EntryGvAfter [s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut] 1 s6Step40EntryBank_outgoingOwned
theorem s6Step40EntryFv_Incoming : rowsOwned s6Step40EntryFvBefore [s6Step40EntryFvRow,s6Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow] 2 s6Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40EntryFv_Outgoing : rowsOwned s6Step40EntryGvAfter [s6Step40EntryFvOut,s6Step40EntryGvOut] :=
  hmrRows_owned_drop s6Step40EntryGvAfter [s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut] 2 s6Step40EntryBank_outgoingOwned
theorem s6Step40EntryGv_Incoming : rowsOwned s6Step40EntryGvBefore [s6Step40EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow] 3 s6Step40EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40EntryGv_Outgoing : rowsOwned s6Step40EntryGvAfter [s6Step40EntryGvOut] :=
  hmrRows_owned_drop s6Step40EntryGvAfter [s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut] 3 s6Step40EntryBank_outgoingOwned
theorem s6Step40EntryBank_rows : planWindowRowsLog s6Step40EntryFBefore [(s6Step40EntryFRow,249),(s6Step40EntryGRow,249),(s6Step40EntryFvRow,33),(s6Step40EntryGvRow,33)] [s6Step40EntryFFresh,s6Step40EntryGFresh,s6Step40EntryFvFresh,s6Step40EntryGvFresh]=
    some (s6Step40EntryGvAfter,[s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut],(growRow 795 s6Step40EntryFFresh ++ (growRow 777 s6Step40EntryGFresh ++ (growRow 776 s6Step40EntryFvFresh ++ (growRow 775 s6Step40EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step40EntryGvAfter [] []=some (s6Step40EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step40EntryGvBefore s6Step40EntryGvAfter s6Step40EntryGvAfter
    s6Step40EntryGvRow s6Step40EntryGvOut 33 s6Step40EntryGvFresh [] [] []
    (growRow 775 s6Step40EntryGvFresh) ([]) s6Step40EntryGv_Incoming s6Step40EntryGv_checked h4 s6Step40EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step40EntryFvBefore s6Step40EntryFvAfter s6Step40EntryGvAfter
    s6Step40EntryFvRow s6Step40EntryFvOut 33 s6Step40EntryFvFresh [(s6Step40EntryGvRow,33)] [s6Step40EntryGvFresh] [s6Step40EntryGvOut]
    (growRow 776 s6Step40EntryFvFresh) ((growRow 775 s6Step40EntryGvFresh ++ [])) s6Step40EntryFv_Incoming s6Step40EntryFv_checked h3 s6Step40EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step40EntryGBefore s6Step40EntryGAfter s6Step40EntryGvAfter
    s6Step40EntryGRow s6Step40EntryGOut 249 s6Step40EntryGFresh [(s6Step40EntryFvRow,33),(s6Step40EntryGvRow,33)] [s6Step40EntryFvFresh,s6Step40EntryGvFresh] [s6Step40EntryFvOut,s6Step40EntryGvOut]
    (growRow 777 s6Step40EntryGFresh) ((growRow 776 s6Step40EntryFvFresh ++ (growRow 775 s6Step40EntryGvFresh ++ []))) s6Step40EntryG_Incoming s6Step40EntryG_checked h2 s6Step40EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step40EntryFBefore s6Step40EntryFAfter s6Step40EntryGvAfter
    s6Step40EntryFRow s6Step40EntryFOut 249 s6Step40EntryFFresh [(s6Step40EntryGRow,249),(s6Step40EntryFvRow,33),(s6Step40EntryGvRow,33)] [s6Step40EntryGFresh,s6Step40EntryFvFresh,s6Step40EntryGvFresh] [s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut]
    (growRow 795 s6Step40EntryFFresh) ((growRow 777 s6Step40EntryGFresh ++ (growRow 776 s6Step40EntryFvFresh ++ (growRow 775 s6Step40EntryGvFresh ++ [])))) s6Step40EntryF_Incoming s6Step40EntryF_checked h1 s6Step40EntryF_Outgoing
  exact h0
theorem s6Step40EntryBank_checked : compileHmrBankResizeLog .entry s6Step40EntryFBefore ⟨s6Step40EntryFRow,s6Step40EntryGRow,s6Step40EntryFvRow,s6Step40EntryGvRow⟩ ⟨249,249,33,33⟩ [s6Step40EntryFFresh,s6Step40EntryGFresh,s6Step40EntryFvFresh,s6Step40EntryGvFresh]=
    some (s6Step40EntryGvAfter,⟨s6Step40EntryFOut,s6Step40EntryGOut,s6Step40EntryFvOut,s6Step40EntryGvOut⟩,(growRow 795 s6Step40EntryFFresh ++ (growRow 777 s6Step40EntryGFresh ++ (growRow 776 s6Step40EntryFvFresh ++ (growRow 775 s6Step40EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step40EntryBank_rows]
  rfl
def s6Step41EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩
def s6Step41EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩
def s6Step41EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩
def s6Step41EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 779],775⟩
theorem s6Step41EntryBank_incomingDistinct : ([s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41EntryBank_outgoingOwned : rowsOwned s6Step41EntryGvAfter [s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step41EntryGvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41EntryF_Incoming : rowsOwned s6Step41EntryFBefore [s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow] 0 s6Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41EntryF_Outgoing : rowsOwned s6Step41EntryGvAfter [s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut] :=
  hmrRows_owned_drop s6Step41EntryGvAfter [s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut] 0 s6Step41EntryBank_outgoingOwned
theorem s6Step41EntryG_Incoming : rowsOwned s6Step41EntryGBefore [s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow] 1 s6Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41EntryG_Outgoing : rowsOwned s6Step41EntryGvAfter [s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut] :=
  hmrRows_owned_drop s6Step41EntryGvAfter [s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut] 1 s6Step41EntryBank_outgoingOwned
theorem s6Step41EntryFv_Incoming : rowsOwned s6Step41EntryFvBefore [s6Step41EntryFvRow,s6Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow] 2 s6Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41EntryFv_Outgoing : rowsOwned s6Step41EntryGvAfter [s6Step41EntryFvOut,s6Step41EntryGvOut] :=
  hmrRows_owned_drop s6Step41EntryGvAfter [s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut] 2 s6Step41EntryBank_outgoingOwned
theorem s6Step41EntryGv_Incoming : rowsOwned s6Step41EntryGvBefore [s6Step41EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow] 3 s6Step41EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41EntryGv_Outgoing : rowsOwned s6Step41EntryGvAfter [s6Step41EntryGvOut] :=
  hmrRows_owned_drop s6Step41EntryGvAfter [s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut] 3 s6Step41EntryBank_outgoingOwned
theorem s6Step41EntryBank_rows : planWindowRowsLog s6Step41EntryFBefore [(s6Step41EntryFRow,248),(s6Step41EntryGRow,248),(s6Step41EntryFvRow,34),(s6Step41EntryGvRow,34)] [s6Step41EntryFFresh,s6Step41EntryGFresh,s6Step41EntryFvFresh,s6Step41EntryGvFresh]=
    some (s6Step41EntryGvAfter,[s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut],(growRow 795 s6Step41EntryFFresh ++ (growRow 777 s6Step41EntryGFresh ++ (growRow 776 s6Step41EntryFvFresh ++ (growRow 775 s6Step41EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step41EntryGvAfter [] []=some (s6Step41EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step41EntryGvBefore s6Step41EntryGvAfter s6Step41EntryGvAfter
    s6Step41EntryGvRow s6Step41EntryGvOut 34 s6Step41EntryGvFresh [] [] []
    (growRow 775 s6Step41EntryGvFresh) ([]) s6Step41EntryGv_Incoming s6Step41EntryGv_checked h4 s6Step41EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step41EntryFvBefore s6Step41EntryFvAfter s6Step41EntryGvAfter
    s6Step41EntryFvRow s6Step41EntryFvOut 34 s6Step41EntryFvFresh [(s6Step41EntryGvRow,34)] [s6Step41EntryGvFresh] [s6Step41EntryGvOut]
    (growRow 776 s6Step41EntryFvFresh) ((growRow 775 s6Step41EntryGvFresh ++ [])) s6Step41EntryFv_Incoming s6Step41EntryFv_checked h3 s6Step41EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step41EntryGBefore s6Step41EntryGAfter s6Step41EntryGvAfter
    s6Step41EntryGRow s6Step41EntryGOut 248 s6Step41EntryGFresh [(s6Step41EntryFvRow,34),(s6Step41EntryGvRow,34)] [s6Step41EntryFvFresh,s6Step41EntryGvFresh] [s6Step41EntryFvOut,s6Step41EntryGvOut]
    (growRow 777 s6Step41EntryGFresh) ((growRow 776 s6Step41EntryFvFresh ++ (growRow 775 s6Step41EntryGvFresh ++ []))) s6Step41EntryG_Incoming s6Step41EntryG_checked h2 s6Step41EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step41EntryFBefore s6Step41EntryFAfter s6Step41EntryGvAfter
    s6Step41EntryFRow s6Step41EntryFOut 248 s6Step41EntryFFresh [(s6Step41EntryGRow,248),(s6Step41EntryFvRow,34),(s6Step41EntryGvRow,34)] [s6Step41EntryGFresh,s6Step41EntryFvFresh,s6Step41EntryGvFresh] [s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut]
    (growRow 795 s6Step41EntryFFresh) ((growRow 777 s6Step41EntryGFresh ++ (growRow 776 s6Step41EntryFvFresh ++ (growRow 775 s6Step41EntryGvFresh ++ [])))) s6Step41EntryF_Incoming s6Step41EntryF_checked h1 s6Step41EntryF_Outgoing
  exact h0
theorem s6Step41EntryBank_checked : compileHmrBankResizeLog .entry s6Step41EntryFBefore ⟨s6Step41EntryFRow,s6Step41EntryGRow,s6Step41EntryFvRow,s6Step41EntryGvRow⟩ ⟨248,248,34,34⟩ [s6Step41EntryFFresh,s6Step41EntryGFresh,s6Step41EntryFvFresh,s6Step41EntryGvFresh]=
    some (s6Step41EntryGvAfter,⟨s6Step41EntryFOut,s6Step41EntryGOut,s6Step41EntryFvOut,s6Step41EntryGvOut⟩,(growRow 795 s6Step41EntryFFresh ++ (growRow 777 s6Step41EntryGFresh ++ (growRow 776 s6Step41EntryFvFresh ++ (growRow 775 s6Step41EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step41EntryBank_rows]
  rfl
def s6Step42EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩
def s6Step42EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩
def s6Step42EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩
def s6Step42EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908],775⟩
theorem s6Step42EntryBank_incomingDistinct : ([s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42EntryBank_outgoingOwned : rowsOwned s6Step42EntryGvAfter [s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step42EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42EntryF_Incoming : rowsOwned s6Step42EntryFBefore [s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow] 0 s6Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42EntryF_Outgoing : rowsOwned s6Step42EntryGvAfter [s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut] :=
  hmrRows_owned_drop s6Step42EntryGvAfter [s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut] 0 s6Step42EntryBank_outgoingOwned
theorem s6Step42EntryG_Incoming : rowsOwned s6Step42EntryGBefore [s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow] 1 s6Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42EntryG_Outgoing : rowsOwned s6Step42EntryGvAfter [s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut] :=
  hmrRows_owned_drop s6Step42EntryGvAfter [s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut] 1 s6Step42EntryBank_outgoingOwned
theorem s6Step42EntryFv_Incoming : rowsOwned s6Step42EntryFvBefore [s6Step42EntryFvRow,s6Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow] 2 s6Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42EntryFv_Outgoing : rowsOwned s6Step42EntryGvAfter [s6Step42EntryFvOut,s6Step42EntryGvOut] :=
  hmrRows_owned_drop s6Step42EntryGvAfter [s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut] 2 s6Step42EntryBank_outgoingOwned
theorem s6Step42EntryGv_Incoming : rowsOwned s6Step42EntryGvBefore [s6Step42EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow] 3 s6Step42EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42EntryGv_Outgoing : rowsOwned s6Step42EntryGvAfter [s6Step42EntryGvOut] :=
  hmrRows_owned_drop s6Step42EntryGvAfter [s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut] 3 s6Step42EntryBank_outgoingOwned
theorem s6Step42EntryBank_rows : planWindowRowsLog s6Step42EntryFBefore [(s6Step42EntryFRow,248),(s6Step42EntryGRow,248),(s6Step42EntryFvRow,34),(s6Step42EntryGvRow,34)] [s6Step42EntryFFresh,s6Step42EntryGFresh,s6Step42EntryFvFresh,s6Step42EntryGvFresh]=
    some (s6Step42EntryGvAfter,[s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut],(growRow 795 s6Step42EntryFFresh ++ (growRow 777 s6Step42EntryGFresh ++ (growRow 776 s6Step42EntryFvFresh ++ (growRow 775 s6Step42EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step42EntryGvAfter [] []=some (s6Step42EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step42EntryGvBefore s6Step42EntryGvAfter s6Step42EntryGvAfter
    s6Step42EntryGvRow s6Step42EntryGvOut 34 s6Step42EntryGvFresh [] [] []
    (growRow 775 s6Step42EntryGvFresh) ([]) s6Step42EntryGv_Incoming s6Step42EntryGv_checked h4 s6Step42EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step42EntryFvBefore s6Step42EntryFvAfter s6Step42EntryGvAfter
    s6Step42EntryFvRow s6Step42EntryFvOut 34 s6Step42EntryFvFresh [(s6Step42EntryGvRow,34)] [s6Step42EntryGvFresh] [s6Step42EntryGvOut]
    (growRow 776 s6Step42EntryFvFresh) ((growRow 775 s6Step42EntryGvFresh ++ [])) s6Step42EntryFv_Incoming s6Step42EntryFv_checked h3 s6Step42EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step42EntryGBefore s6Step42EntryGAfter s6Step42EntryGvAfter
    s6Step42EntryGRow s6Step42EntryGOut 248 s6Step42EntryGFresh [(s6Step42EntryFvRow,34),(s6Step42EntryGvRow,34)] [s6Step42EntryFvFresh,s6Step42EntryGvFresh] [s6Step42EntryFvOut,s6Step42EntryGvOut]
    (growRow 777 s6Step42EntryGFresh) ((growRow 776 s6Step42EntryFvFresh ++ (growRow 775 s6Step42EntryGvFresh ++ []))) s6Step42EntryG_Incoming s6Step42EntryG_checked h2 s6Step42EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step42EntryFBefore s6Step42EntryFAfter s6Step42EntryGvAfter
    s6Step42EntryFRow s6Step42EntryFOut 248 s6Step42EntryFFresh [(s6Step42EntryGRow,248),(s6Step42EntryFvRow,34),(s6Step42EntryGvRow,34)] [s6Step42EntryGFresh,s6Step42EntryFvFresh,s6Step42EntryGvFresh] [s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut]
    (growRow 795 s6Step42EntryFFresh) ((growRow 777 s6Step42EntryGFresh ++ (growRow 776 s6Step42EntryFvFresh ++ (growRow 775 s6Step42EntryGvFresh ++ [])))) s6Step42EntryF_Incoming s6Step42EntryF_checked h1 s6Step42EntryF_Outgoing
  exact h0
theorem s6Step42EntryBank_checked : compileHmrBankResizeLog .entry s6Step42EntryFBefore ⟨s6Step42EntryFRow,s6Step42EntryGRow,s6Step42EntryFvRow,s6Step42EntryGvRow⟩ ⟨248,248,34,34⟩ [s6Step42EntryFFresh,s6Step42EntryGFresh,s6Step42EntryFvFresh,s6Step42EntryGvFresh]=
    some (s6Step42EntryGvAfter,⟨s6Step42EntryFOut,s6Step42EntryGOut,s6Step42EntryFvOut,s6Step42EntryGvOut⟩,(growRow 795 s6Step42EntryFFresh ++ (growRow 777 s6Step42EntryGFresh ++ (growRow 776 s6Step42EntryFvFresh ++ (growRow 775 s6Step42EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step42EntryBank_rows]
  rfl
def s6Step43EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502],795⟩
def s6Step43EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],777⟩
def s6Step43EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 779],776⟩
def s6Step43EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
theorem s6Step43EntryBank_incomingDistinct : ([s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43EntryBank_outgoingOwned : rowsOwned s6Step43EntryGvAfter [s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step43EntryGvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43EntryF_Incoming : rowsOwned s6Step43EntryFBefore [s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow] 0 s6Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43EntryF_Outgoing : rowsOwned s6Step43EntryGvAfter [s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut] :=
  hmrRows_owned_drop s6Step43EntryGvAfter [s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut] 0 s6Step43EntryBank_outgoingOwned
theorem s6Step43EntryG_Incoming : rowsOwned s6Step43EntryGBefore [s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow] 1 s6Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43EntryG_Outgoing : rowsOwned s6Step43EntryGvAfter [s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut] :=
  hmrRows_owned_drop s6Step43EntryGvAfter [s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut] 1 s6Step43EntryBank_outgoingOwned
theorem s6Step43EntryFv_Incoming : rowsOwned s6Step43EntryFvBefore [s6Step43EntryFvRow,s6Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow] 2 s6Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43EntryFv_Outgoing : rowsOwned s6Step43EntryGvAfter [s6Step43EntryFvOut,s6Step43EntryGvOut] :=
  hmrRows_owned_drop s6Step43EntryGvAfter [s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut] 2 s6Step43EntryBank_outgoingOwned
theorem s6Step43EntryGv_Incoming : rowsOwned s6Step43EntryGvBefore [s6Step43EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow] 3 s6Step43EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43EntryGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43EntryGv_Outgoing : rowsOwned s6Step43EntryGvAfter [s6Step43EntryGvOut] :=
  hmrRows_owned_drop s6Step43EntryGvAfter [s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut] 3 s6Step43EntryBank_outgoingOwned
theorem s6Step43EntryBank_rows : planWindowRowsLog s6Step43EntryFBefore [(s6Step43EntryFRow,247),(s6Step43EntryGRow,247),(s6Step43EntryFvRow,35),(s6Step43EntryGvRow,35)] [s6Step43EntryFFresh,s6Step43EntryGFresh,s6Step43EntryFvFresh,s6Step43EntryGvFresh]=
    some (s6Step43EntryGvAfter,[s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut],(growRow 795 s6Step43EntryFFresh ++ (growRow 777 s6Step43EntryGFresh ++ (growRow 776 s6Step43EntryFvFresh ++ (growRow 775 s6Step43EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step43EntryGvAfter [] []=some (s6Step43EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step43EntryGvBefore s6Step43EntryGvAfter s6Step43EntryGvAfter
    s6Step43EntryGvRow s6Step43EntryGvOut 35 s6Step43EntryGvFresh [] [] []
    (growRow 775 s6Step43EntryGvFresh) ([]) s6Step43EntryGv_Incoming s6Step43EntryGv_checked h4 s6Step43EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step43EntryFvBefore s6Step43EntryFvAfter s6Step43EntryGvAfter
    s6Step43EntryFvRow s6Step43EntryFvOut 35 s6Step43EntryFvFresh [(s6Step43EntryGvRow,35)] [s6Step43EntryGvFresh] [s6Step43EntryGvOut]
    (growRow 776 s6Step43EntryFvFresh) ((growRow 775 s6Step43EntryGvFresh ++ [])) s6Step43EntryFv_Incoming s6Step43EntryFv_checked h3 s6Step43EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step43EntryGBefore s6Step43EntryGAfter s6Step43EntryGvAfter
    s6Step43EntryGRow s6Step43EntryGOut 247 s6Step43EntryGFresh [(s6Step43EntryFvRow,35),(s6Step43EntryGvRow,35)] [s6Step43EntryFvFresh,s6Step43EntryGvFresh] [s6Step43EntryFvOut,s6Step43EntryGvOut]
    (growRow 777 s6Step43EntryGFresh) ((growRow 776 s6Step43EntryFvFresh ++ (growRow 775 s6Step43EntryGvFresh ++ []))) s6Step43EntryG_Incoming s6Step43EntryG_checked h2 s6Step43EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step43EntryFBefore s6Step43EntryFAfter s6Step43EntryGvAfter
    s6Step43EntryFRow s6Step43EntryFOut 247 s6Step43EntryFFresh [(s6Step43EntryGRow,247),(s6Step43EntryFvRow,35),(s6Step43EntryGvRow,35)] [s6Step43EntryGFresh,s6Step43EntryFvFresh,s6Step43EntryGvFresh] [s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut]
    (growRow 795 s6Step43EntryFFresh) ((growRow 777 s6Step43EntryGFresh ++ (growRow 776 s6Step43EntryFvFresh ++ (growRow 775 s6Step43EntryGvFresh ++ [])))) s6Step43EntryF_Incoming s6Step43EntryF_checked h1 s6Step43EntryF_Outgoing
  exact h0
theorem s6Step43EntryBank_checked : compileHmrBankResizeLog .entry s6Step43EntryFBefore ⟨s6Step43EntryFRow,s6Step43EntryGRow,s6Step43EntryFvRow,s6Step43EntryGvRow⟩ ⟨247,247,35,35⟩ [s6Step43EntryFFresh,s6Step43EntryGFresh,s6Step43EntryFvFresh,s6Step43EntryGvFresh]=
    some (s6Step43EntryGvAfter,⟨s6Step43EntryFOut,s6Step43EntryGOut,s6Step43EntryFvOut,s6Step43EntryGvOut⟩,(growRow 795 s6Step43EntryFFresh ++ (growRow 777 s6Step43EntryGFresh ++ (growRow 776 s6Step43EntryFvFresh ++ (growRow 775 s6Step43EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step43EntryBank_rows]
  rfl
def s6Step44EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩
def s6Step44EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],777⟩
def s6Step44EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890],776⟩
def s6Step44EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
theorem s6Step44EntryBank_incomingDistinct : ([s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44EntryBank_outgoingOwned : rowsOwned s6Step44EntryGvAfter [s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step44EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44EntryF_Incoming : rowsOwned s6Step44EntryFBefore [s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow] 0 s6Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44EntryF_Outgoing : rowsOwned s6Step44EntryGvAfter [s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut] :=
  hmrRows_owned_drop s6Step44EntryGvAfter [s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut] 0 s6Step44EntryBank_outgoingOwned
theorem s6Step44EntryG_Incoming : rowsOwned s6Step44EntryGBefore [s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow] 1 s6Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44EntryG_Outgoing : rowsOwned s6Step44EntryGvAfter [s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut] :=
  hmrRows_owned_drop s6Step44EntryGvAfter [s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut] 1 s6Step44EntryBank_outgoingOwned
theorem s6Step44EntryFv_Incoming : rowsOwned s6Step44EntryFvBefore [s6Step44EntryFvRow,s6Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow] 2 s6Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44EntryFv_Outgoing : rowsOwned s6Step44EntryGvAfter [s6Step44EntryFvOut,s6Step44EntryGvOut] :=
  hmrRows_owned_drop s6Step44EntryGvAfter [s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut] 2 s6Step44EntryBank_outgoingOwned
theorem s6Step44EntryGv_Incoming : rowsOwned s6Step44EntryGvBefore [s6Step44EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow] 3 s6Step44EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44EntryGv_Outgoing : rowsOwned s6Step44EntryGvAfter [s6Step44EntryGvOut] :=
  hmrRows_owned_drop s6Step44EntryGvAfter [s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut] 3 s6Step44EntryBank_outgoingOwned
theorem s6Step44EntryBank_rows : planWindowRowsLog s6Step44EntryFBefore [(s6Step44EntryFRow,246),(s6Step44EntryGRow,246),(s6Step44EntryFvRow,35),(s6Step44EntryGvRow,35)] [s6Step44EntryFFresh,s6Step44EntryGFresh,s6Step44EntryFvFresh,s6Step44EntryGvFresh]=
    some (s6Step44EntryGvAfter,[s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut],(growRow 795 s6Step44EntryFFresh ++ (growRow 777 s6Step44EntryGFresh ++ (growRow 776 s6Step44EntryFvFresh ++ (growRow 775 s6Step44EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step44EntryGvAfter [] []=some (s6Step44EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step44EntryGvBefore s6Step44EntryGvAfter s6Step44EntryGvAfter
    s6Step44EntryGvRow s6Step44EntryGvOut 35 s6Step44EntryGvFresh [] [] []
    (growRow 775 s6Step44EntryGvFresh) ([]) s6Step44EntryGv_Incoming s6Step44EntryGv_checked h4 s6Step44EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step44EntryFvBefore s6Step44EntryFvAfter s6Step44EntryGvAfter
    s6Step44EntryFvRow s6Step44EntryFvOut 35 s6Step44EntryFvFresh [(s6Step44EntryGvRow,35)] [s6Step44EntryGvFresh] [s6Step44EntryGvOut]
    (growRow 776 s6Step44EntryFvFresh) ((growRow 775 s6Step44EntryGvFresh ++ [])) s6Step44EntryFv_Incoming s6Step44EntryFv_checked h3 s6Step44EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step44EntryGBefore s6Step44EntryGAfter s6Step44EntryGvAfter
    s6Step44EntryGRow s6Step44EntryGOut 246 s6Step44EntryGFresh [(s6Step44EntryFvRow,35),(s6Step44EntryGvRow,35)] [s6Step44EntryFvFresh,s6Step44EntryGvFresh] [s6Step44EntryFvOut,s6Step44EntryGvOut]
    (growRow 777 s6Step44EntryGFresh) ((growRow 776 s6Step44EntryFvFresh ++ (growRow 775 s6Step44EntryGvFresh ++ []))) s6Step44EntryG_Incoming s6Step44EntryG_checked h2 s6Step44EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step44EntryFBefore s6Step44EntryFAfter s6Step44EntryGvAfter
    s6Step44EntryFRow s6Step44EntryFOut 246 s6Step44EntryFFresh [(s6Step44EntryGRow,246),(s6Step44EntryFvRow,35),(s6Step44EntryGvRow,35)] [s6Step44EntryGFresh,s6Step44EntryFvFresh,s6Step44EntryGvFresh] [s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut]
    (growRow 795 s6Step44EntryFFresh) ((growRow 777 s6Step44EntryGFresh ++ (growRow 776 s6Step44EntryFvFresh ++ (growRow 775 s6Step44EntryGvFresh ++ [])))) s6Step44EntryF_Incoming s6Step44EntryF_checked h1 s6Step44EntryF_Outgoing
  exact h0
theorem s6Step44EntryBank_checked : compileHmrBankResizeLog .entry s6Step44EntryFBefore ⟨s6Step44EntryFRow,s6Step44EntryGRow,s6Step44EntryFvRow,s6Step44EntryGvRow⟩ ⟨246,246,35,35⟩ [s6Step44EntryFFresh,s6Step44EntryGFresh,s6Step44EntryFvFresh,s6Step44EntryGvFresh]=
    some (s6Step44EntryGvAfter,⟨s6Step44EntryFOut,s6Step44EntryGOut,s6Step44EntryFvOut,s6Step44EntryGvOut⟩,(growRow 795 s6Step44EntryFFresh ++ (growRow 777 s6Step44EntryGFresh ++ (growRow 776 s6Step44EntryFvFresh ++ (growRow 775 s6Step44EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step44EntryBank_rows]
  rfl
def s6Step45EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩
def s6Step45EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 873],777⟩
def s6Step45EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890],776⟩
def s6Step45EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
theorem s6Step45EntryBank_incomingDistinct : ([s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45EntryBank_outgoingOwned : rowsOwned s6Step45EntryGvAfter [s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step45EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45EntryF_Incoming : rowsOwned s6Step45EntryFBefore [s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow] 0 s6Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45EntryF_Outgoing : rowsOwned s6Step45EntryGvAfter [s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut] :=
  hmrRows_owned_drop s6Step45EntryGvAfter [s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut] 0 s6Step45EntryBank_outgoingOwned
theorem s6Step45EntryG_Incoming : rowsOwned s6Step45EntryGBefore [s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow] 1 s6Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45EntryG_Outgoing : rowsOwned s6Step45EntryGvAfter [s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut] :=
  hmrRows_owned_drop s6Step45EntryGvAfter [s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut] 1 s6Step45EntryBank_outgoingOwned
theorem s6Step45EntryFv_Incoming : rowsOwned s6Step45EntryFvBefore [s6Step45EntryFvRow,s6Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow] 2 s6Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45EntryFv_Outgoing : rowsOwned s6Step45EntryGvAfter [s6Step45EntryFvOut,s6Step45EntryGvOut] :=
  hmrRows_owned_drop s6Step45EntryGvAfter [s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut] 2 s6Step45EntryBank_outgoingOwned
theorem s6Step45EntryGv_Incoming : rowsOwned s6Step45EntryGvBefore [s6Step45EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow] 3 s6Step45EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45EntryGv_Outgoing : rowsOwned s6Step45EntryGvAfter [s6Step45EntryGvOut] :=
  hmrRows_owned_drop s6Step45EntryGvAfter [s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut] 3 s6Step45EntryBank_outgoingOwned
theorem s6Step45EntryBank_rows : planWindowRowsLog s6Step45EntryFBefore [(s6Step45EntryFRow,246),(s6Step45EntryGRow,246),(s6Step45EntryFvRow,35),(s6Step45EntryGvRow,35)] [s6Step45EntryFFresh,s6Step45EntryGFresh,s6Step45EntryFvFresh,s6Step45EntryGvFresh]=
    some (s6Step45EntryGvAfter,[s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut],(growRow 795 s6Step45EntryFFresh ++ (growRow 777 s6Step45EntryGFresh ++ (growRow 776 s6Step45EntryFvFresh ++ (growRow 775 s6Step45EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step45EntryGvAfter [] []=some (s6Step45EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step45EntryGvBefore s6Step45EntryGvAfter s6Step45EntryGvAfter
    s6Step45EntryGvRow s6Step45EntryGvOut 35 s6Step45EntryGvFresh [] [] []
    (growRow 775 s6Step45EntryGvFresh) ([]) s6Step45EntryGv_Incoming s6Step45EntryGv_checked h4 s6Step45EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step45EntryFvBefore s6Step45EntryFvAfter s6Step45EntryGvAfter
    s6Step45EntryFvRow s6Step45EntryFvOut 35 s6Step45EntryFvFresh [(s6Step45EntryGvRow,35)] [s6Step45EntryGvFresh] [s6Step45EntryGvOut]
    (growRow 776 s6Step45EntryFvFresh) ((growRow 775 s6Step45EntryGvFresh ++ [])) s6Step45EntryFv_Incoming s6Step45EntryFv_checked h3 s6Step45EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step45EntryGBefore s6Step45EntryGAfter s6Step45EntryGvAfter
    s6Step45EntryGRow s6Step45EntryGOut 246 s6Step45EntryGFresh [(s6Step45EntryFvRow,35),(s6Step45EntryGvRow,35)] [s6Step45EntryFvFresh,s6Step45EntryGvFresh] [s6Step45EntryFvOut,s6Step45EntryGvOut]
    (growRow 777 s6Step45EntryGFresh) ((growRow 776 s6Step45EntryFvFresh ++ (growRow 775 s6Step45EntryGvFresh ++ []))) s6Step45EntryG_Incoming s6Step45EntryG_checked h2 s6Step45EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step45EntryFBefore s6Step45EntryFAfter s6Step45EntryGvAfter
    s6Step45EntryFRow s6Step45EntryFOut 246 s6Step45EntryFFresh [(s6Step45EntryGRow,246),(s6Step45EntryFvRow,35),(s6Step45EntryGvRow,35)] [s6Step45EntryGFresh,s6Step45EntryFvFresh,s6Step45EntryGvFresh] [s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut]
    (growRow 795 s6Step45EntryFFresh) ((growRow 777 s6Step45EntryGFresh ++ (growRow 776 s6Step45EntryFvFresh ++ (growRow 775 s6Step45EntryGvFresh ++ [])))) s6Step45EntryF_Incoming s6Step45EntryF_checked h1 s6Step45EntryF_Outgoing
  exact h0
theorem s6Step45EntryBank_checked : compileHmrBankResizeLog .entry s6Step45EntryFBefore ⟨s6Step45EntryFRow,s6Step45EntryGRow,s6Step45EntryFvRow,s6Step45EntryGvRow⟩ ⟨246,246,35,35⟩ [s6Step45EntryFFresh,s6Step45EntryGFresh,s6Step45EntryFvFresh,s6Step45EntryGvFresh]=
    some (s6Step45EntryGvAfter,⟨s6Step45EntryFOut,s6Step45EntryGOut,s6Step45EntryFvOut,s6Step45EntryGvOut⟩,(growRow 795 s6Step45EntryFFresh ++ (growRow 777 s6Step45EntryGFresh ++ (growRow 776 s6Step45EntryFvFresh ++ (growRow 775 s6Step45EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step45EntryBank_rows]
  rfl
def s6Step46EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500],795⟩
def s6Step46EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],777⟩
def s6Step46EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796],776⟩
def s6Step46EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856],775⟩
theorem s6Step46EntryBank_incomingDistinct : ([s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46EntryBank_outgoingOwned : rowsOwned s6Step46EntryGvAfter [s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step46EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46EntryF_Incoming : rowsOwned s6Step46EntryFBefore [s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow] 0 s6Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46EntryF_Outgoing : rowsOwned s6Step46EntryGvAfter [s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut] :=
  hmrRows_owned_drop s6Step46EntryGvAfter [s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut] 0 s6Step46EntryBank_outgoingOwned
theorem s6Step46EntryG_Incoming : rowsOwned s6Step46EntryGBefore [s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow] 1 s6Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46EntryG_Outgoing : rowsOwned s6Step46EntryGvAfter [s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut] :=
  hmrRows_owned_drop s6Step46EntryGvAfter [s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut] 1 s6Step46EntryBank_outgoingOwned
theorem s6Step46EntryFv_Incoming : rowsOwned s6Step46EntryFvBefore [s6Step46EntryFvRow,s6Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow] 2 s6Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46EntryFv_Outgoing : rowsOwned s6Step46EntryGvAfter [s6Step46EntryFvOut,s6Step46EntryGvOut] :=
  hmrRows_owned_drop s6Step46EntryGvAfter [s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut] 2 s6Step46EntryBank_outgoingOwned
theorem s6Step46EntryGv_Incoming : rowsOwned s6Step46EntryGvBefore [s6Step46EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow] 3 s6Step46EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46EntryGv_Outgoing : rowsOwned s6Step46EntryGvAfter [s6Step46EntryGvOut] :=
  hmrRows_owned_drop s6Step46EntryGvAfter [s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut] 3 s6Step46EntryBank_outgoingOwned
theorem s6Step46EntryBank_rows : planWindowRowsLog s6Step46EntryFBefore [(s6Step46EntryFRow,245),(s6Step46EntryGRow,245),(s6Step46EntryFvRow,36),(s6Step46EntryGvRow,36)] [s6Step46EntryFFresh,s6Step46EntryGFresh,s6Step46EntryFvFresh,s6Step46EntryGvFresh]=
    some (s6Step46EntryGvAfter,[s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut],(growRow 795 s6Step46EntryFFresh ++ (growRow 777 s6Step46EntryGFresh ++ (growRow 776 s6Step46EntryFvFresh ++ (growRow 775 s6Step46EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step46EntryGvAfter [] []=some (s6Step46EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step46EntryGvBefore s6Step46EntryGvAfter s6Step46EntryGvAfter
    s6Step46EntryGvRow s6Step46EntryGvOut 36 s6Step46EntryGvFresh [] [] []
    (growRow 775 s6Step46EntryGvFresh) ([]) s6Step46EntryGv_Incoming s6Step46EntryGv_checked h4 s6Step46EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step46EntryFvBefore s6Step46EntryFvAfter s6Step46EntryGvAfter
    s6Step46EntryFvRow s6Step46EntryFvOut 36 s6Step46EntryFvFresh [(s6Step46EntryGvRow,36)] [s6Step46EntryGvFresh] [s6Step46EntryGvOut]
    (growRow 776 s6Step46EntryFvFresh) ((growRow 775 s6Step46EntryGvFresh ++ [])) s6Step46EntryFv_Incoming s6Step46EntryFv_checked h3 s6Step46EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step46EntryGBefore s6Step46EntryGAfter s6Step46EntryGvAfter
    s6Step46EntryGRow s6Step46EntryGOut 245 s6Step46EntryGFresh [(s6Step46EntryFvRow,36),(s6Step46EntryGvRow,36)] [s6Step46EntryFvFresh,s6Step46EntryGvFresh] [s6Step46EntryFvOut,s6Step46EntryGvOut]
    (growRow 777 s6Step46EntryGFresh) ((growRow 776 s6Step46EntryFvFresh ++ (growRow 775 s6Step46EntryGvFresh ++ []))) s6Step46EntryG_Incoming s6Step46EntryG_checked h2 s6Step46EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step46EntryFBefore s6Step46EntryFAfter s6Step46EntryGvAfter
    s6Step46EntryFRow s6Step46EntryFOut 245 s6Step46EntryFFresh [(s6Step46EntryGRow,245),(s6Step46EntryFvRow,36),(s6Step46EntryGvRow,36)] [s6Step46EntryGFresh,s6Step46EntryFvFresh,s6Step46EntryGvFresh] [s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut]
    (growRow 795 s6Step46EntryFFresh) ((growRow 777 s6Step46EntryGFresh ++ (growRow 776 s6Step46EntryFvFresh ++ (growRow 775 s6Step46EntryGvFresh ++ [])))) s6Step46EntryF_Incoming s6Step46EntryF_checked h1 s6Step46EntryF_Outgoing
  exact h0
theorem s6Step46EntryBank_checked : compileHmrBankResizeLog .entry s6Step46EntryFBefore ⟨s6Step46EntryFRow,s6Step46EntryGRow,s6Step46EntryFvRow,s6Step46EntryGvRow⟩ ⟨245,245,36,36⟩ [s6Step46EntryFFresh,s6Step46EntryGFresh,s6Step46EntryFvFresh,s6Step46EntryGvFresh]=
    some (s6Step46EntryGvAfter,⟨s6Step46EntryFOut,s6Step46EntryGOut,s6Step46EntryFvOut,s6Step46EntryGvOut⟩,(growRow 795 s6Step46EntryFFresh ++ (growRow 777 s6Step46EntryGFresh ++ (growRow 776 s6Step46EntryFvFresh ++ (growRow 775 s6Step46EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step46EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
