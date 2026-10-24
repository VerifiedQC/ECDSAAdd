import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk6
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk5

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 793, 876],777⟩
def s6Step31HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 813],795⟩
def s6Step31HeadGvOut : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 802, 881],775⟩
def s6Step31HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 887],776⟩
theorem s6Step31HeadBank_incomingDistinct : ([s6Step31HeadGRow,s6Step31HeadFRow,s6Step31HeadGvRow,s6Step31HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31HeadBank_outgoingOwned : rowsOwned s6Step31HeadFvAfter [s6Step31HeadGOut,s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step31HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31HeadG_Incoming : rowsOwned s6Step31HeadGBefore [s6Step31HeadGRow,s6Step31HeadFRow,s6Step31HeadGvRow,s6Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31HeadGRow,s6Step31HeadFRow,s6Step31HeadGvRow,s6Step31HeadFvRow] 0 s6Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31HeadG_Outgoing : rowsOwned s6Step31HeadFvAfter [s6Step31HeadGOut,s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut] :=
  hmrRows_owned_drop s6Step31HeadFvAfter [s6Step31HeadGOut,s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut] 0 s6Step31HeadBank_outgoingOwned
theorem s6Step31HeadF_Incoming : rowsOwned s6Step31HeadFBefore [s6Step31HeadFRow,s6Step31HeadGvRow,s6Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31HeadGRow,s6Step31HeadFRow,s6Step31HeadGvRow,s6Step31HeadFvRow] 1 s6Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31HeadFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31HeadF_Outgoing : rowsOwned s6Step31HeadFvAfter [s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut] :=
  hmrRows_owned_drop s6Step31HeadFvAfter [s6Step31HeadGOut,s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut] 1 s6Step31HeadBank_outgoingOwned
theorem s6Step31HeadGv_Incoming : rowsOwned s6Step31HeadGvBefore [s6Step31HeadGvRow,s6Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31HeadGRow,s6Step31HeadFRow,s6Step31HeadGvRow,s6Step31HeadFvRow] 2 s6Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31HeadGv_Outgoing : rowsOwned s6Step31HeadFvAfter [s6Step31HeadGvOut,s6Step31HeadFvOut] :=
  hmrRows_owned_drop s6Step31HeadFvAfter [s6Step31HeadGOut,s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut] 2 s6Step31HeadBank_outgoingOwned
theorem s6Step31HeadFv_Incoming : rowsOwned s6Step31HeadFvBefore [s6Step31HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step31HeadGRow,s6Step31HeadFRow,s6Step31HeadGvRow,s6Step31HeadFvRow] 3 s6Step31HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step31HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step31HeadFv_Outgoing : rowsOwned s6Step31HeadFvAfter [s6Step31HeadFvOut] :=
  hmrRows_owned_drop s6Step31HeadFvAfter [s6Step31HeadGOut,s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut] 3 s6Step31HeadBank_outgoingOwned
theorem s6Step31HeadBank_rows : planWindowRowsLog s6Step31HeadGBefore [(s6Step31HeadGRow,254),(s6Step31HeadFRow,254),(s6Step31HeadGvRow,30),(s6Step31HeadFvRow,30)] [s6Step31HeadGFresh,s6Step31HeadFFresh,s6Step31HeadGvFresh,s6Step31HeadFvFresh]=
    some (s6Step31HeadFvAfter,[s6Step31HeadGOut,s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut],(growRow 777 s6Step31HeadGFresh ++ (growRow 795 s6Step31HeadFFresh ++ (growRow 775 s6Step31HeadGvFresh ++ (growRow 776 s6Step31HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step31HeadFvAfter [] []=some (s6Step31HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step31HeadFvBefore s6Step31HeadFvAfter s6Step31HeadFvAfter
    s6Step31HeadFvRow s6Step31HeadFvOut 30 s6Step31HeadFvFresh [] [] []
    (growRow 776 s6Step31HeadFvFresh) ([]) s6Step31HeadFv_Incoming s6Step31HeadFv_checked h4 s6Step31HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step31HeadGvBefore s6Step31HeadGvAfter s6Step31HeadFvAfter
    s6Step31HeadGvRow s6Step31HeadGvOut 30 s6Step31HeadGvFresh [(s6Step31HeadFvRow,30)] [s6Step31HeadFvFresh] [s6Step31HeadFvOut]
    (growRow 775 s6Step31HeadGvFresh) ((growRow 776 s6Step31HeadFvFresh ++ [])) s6Step31HeadGv_Incoming s6Step31HeadGv_checked h3 s6Step31HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step31HeadFBefore s6Step31HeadFAfter s6Step31HeadFvAfter
    s6Step31HeadFRow s6Step31HeadFOut 254 s6Step31HeadFFresh [(s6Step31HeadGvRow,30),(s6Step31HeadFvRow,30)] [s6Step31HeadGvFresh,s6Step31HeadFvFresh] [s6Step31HeadGvOut,s6Step31HeadFvOut]
    (growRow 795 s6Step31HeadFFresh) ((growRow 775 s6Step31HeadGvFresh ++ (growRow 776 s6Step31HeadFvFresh ++ []))) s6Step31HeadF_Incoming s6Step31HeadF_checked h2 s6Step31HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step31HeadGBefore s6Step31HeadGAfter s6Step31HeadFvAfter
    s6Step31HeadGRow s6Step31HeadGOut 254 s6Step31HeadGFresh [(s6Step31HeadFRow,254),(s6Step31HeadGvRow,30),(s6Step31HeadFvRow,30)] [s6Step31HeadFFresh,s6Step31HeadGvFresh,s6Step31HeadFvFresh] [s6Step31HeadFOut,s6Step31HeadGvOut,s6Step31HeadFvOut]
    (growRow 777 s6Step31HeadGFresh) ((growRow 795 s6Step31HeadFFresh ++ (growRow 775 s6Step31HeadGvFresh ++ (growRow 776 s6Step31HeadFvFresh ++ [])))) s6Step31HeadG_Incoming s6Step31HeadG_checked h1 s6Step31HeadG_Outgoing
  exact h0
theorem s6Step31HeadBank_checked : compileHmrBankResizeLog .headroom s6Step31HeadGBefore ⟨s6Step31HeadFRow,s6Step31HeadGRow,s6Step31HeadFvRow,s6Step31HeadGvRow⟩ ⟨254,254,30,30⟩ [s6Step31HeadGFresh,s6Step31HeadFFresh,s6Step31HeadGvFresh,s6Step31HeadFvFresh]=
    some (s6Step31HeadFvAfter,⟨s6Step31HeadFOut,s6Step31HeadGOut,s6Step31HeadFvOut,s6Step31HeadGvOut⟩,(growRow 777 s6Step31HeadGFresh ++ (growRow 795 s6Step31HeadFFresh ++ (growRow 775 s6Step31HeadGvFresh ++ (growRow 776 s6Step31HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step31HeadBank_rows]
  rfl
def s6Step32HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859, 874, 887],777⟩
def s6Step32HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 813],795⟩
def s6Step32HeadGvOut : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 779, 793],775⟩
def s6Step32HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 876],776⟩
theorem s6Step32HeadBank_incomingDistinct : ([s6Step32HeadGRow,s6Step32HeadFRow,s6Step32HeadGvRow,s6Step32HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32HeadBank_outgoingOwned : rowsOwned s6Step32HeadFvAfter [s6Step32HeadGOut,s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step32HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32HeadG_Incoming : rowsOwned s6Step32HeadGBefore [s6Step32HeadGRow,s6Step32HeadFRow,s6Step32HeadGvRow,s6Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32HeadGRow,s6Step32HeadFRow,s6Step32HeadGvRow,s6Step32HeadFvRow] 0 s6Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32HeadGBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32HeadG_Outgoing : rowsOwned s6Step32HeadFvAfter [s6Step32HeadGOut,s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut] :=
  hmrRows_owned_drop s6Step32HeadFvAfter [s6Step32HeadGOut,s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut] 0 s6Step32HeadBank_outgoingOwned
theorem s6Step32HeadF_Incoming : rowsOwned s6Step32HeadFBefore [s6Step32HeadFRow,s6Step32HeadGvRow,s6Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32HeadGRow,s6Step32HeadFRow,s6Step32HeadGvRow,s6Step32HeadFvRow] 1 s6Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32HeadFBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32HeadF_Outgoing : rowsOwned s6Step32HeadFvAfter [s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut] :=
  hmrRows_owned_drop s6Step32HeadFvAfter [s6Step32HeadGOut,s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut] 1 s6Step32HeadBank_outgoingOwned
theorem s6Step32HeadGv_Incoming : rowsOwned s6Step32HeadGvBefore [s6Step32HeadGvRow,s6Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32HeadGRow,s6Step32HeadFRow,s6Step32HeadGvRow,s6Step32HeadFvRow] 2 s6Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32HeadGv_Outgoing : rowsOwned s6Step32HeadFvAfter [s6Step32HeadGvOut,s6Step32HeadFvOut] :=
  hmrRows_owned_drop s6Step32HeadFvAfter [s6Step32HeadGOut,s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut] 2 s6Step32HeadBank_outgoingOwned
theorem s6Step32HeadFv_Incoming : rowsOwned s6Step32HeadFvBefore [s6Step32HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step32HeadGRow,s6Step32HeadFRow,s6Step32HeadGvRow,s6Step32HeadFvRow] 3 s6Step32HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step32HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step32HeadFv_Outgoing : rowsOwned s6Step32HeadFvAfter [s6Step32HeadFvOut] :=
  hmrRows_owned_drop s6Step32HeadFvAfter [s6Step32HeadGOut,s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut] 3 s6Step32HeadBank_outgoingOwned
theorem s6Step32HeadBank_rows : planWindowRowsLog s6Step32HeadGBefore [(s6Step32HeadGRow,254),(s6Step32HeadFRow,254),(s6Step32HeadGvRow,30),(s6Step32HeadFvRow,30)] [s6Step32HeadGFresh,s6Step32HeadFFresh,s6Step32HeadGvFresh,s6Step32HeadFvFresh]=
    some (s6Step32HeadFvAfter,[s6Step32HeadGOut,s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut],(growRow 777 s6Step32HeadGFresh ++ (growRow 795 s6Step32HeadFFresh ++ (growRow 775 s6Step32HeadGvFresh ++ (growRow 776 s6Step32HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step32HeadFvAfter [] []=some (s6Step32HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step32HeadFvBefore s6Step32HeadFvAfter s6Step32HeadFvAfter
    s6Step32HeadFvRow s6Step32HeadFvOut 30 s6Step32HeadFvFresh [] [] []
    (growRow 776 s6Step32HeadFvFresh) ([]) s6Step32HeadFv_Incoming s6Step32HeadFv_checked h4 s6Step32HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step32HeadGvBefore s6Step32HeadGvAfter s6Step32HeadFvAfter
    s6Step32HeadGvRow s6Step32HeadGvOut 30 s6Step32HeadGvFresh [(s6Step32HeadFvRow,30)] [s6Step32HeadFvFresh] [s6Step32HeadFvOut]
    (growRow 775 s6Step32HeadGvFresh) ((growRow 776 s6Step32HeadFvFresh ++ [])) s6Step32HeadGv_Incoming s6Step32HeadGv_checked h3 s6Step32HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step32HeadFBefore s6Step32HeadFAfter s6Step32HeadFvAfter
    s6Step32HeadFRow s6Step32HeadFOut 254 s6Step32HeadFFresh [(s6Step32HeadGvRow,30),(s6Step32HeadFvRow,30)] [s6Step32HeadGvFresh,s6Step32HeadFvFresh] [s6Step32HeadGvOut,s6Step32HeadFvOut]
    (growRow 795 s6Step32HeadFFresh) ((growRow 775 s6Step32HeadGvFresh ++ (growRow 776 s6Step32HeadFvFresh ++ []))) s6Step32HeadF_Incoming s6Step32HeadF_checked h2 s6Step32HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step32HeadGBefore s6Step32HeadGAfter s6Step32HeadFvAfter
    s6Step32HeadGRow s6Step32HeadGOut 254 s6Step32HeadGFresh [(s6Step32HeadFRow,254),(s6Step32HeadGvRow,30),(s6Step32HeadFvRow,30)] [s6Step32HeadFFresh,s6Step32HeadGvFresh,s6Step32HeadFvFresh] [s6Step32HeadFOut,s6Step32HeadGvOut,s6Step32HeadFvOut]
    (growRow 777 s6Step32HeadGFresh) ((growRow 795 s6Step32HeadFFresh ++ (growRow 775 s6Step32HeadGvFresh ++ (growRow 776 s6Step32HeadFvFresh ++ [])))) s6Step32HeadG_Incoming s6Step32HeadG_checked h1 s6Step32HeadG_Outgoing
  exact h0
theorem s6Step32HeadBank_checked : compileHmrBankResizeLog .headroom s6Step32HeadGBefore ⟨s6Step32HeadFRow,s6Step32HeadGRow,s6Step32HeadFvRow,s6Step32HeadGvRow⟩ ⟨254,254,30,30⟩ [s6Step32HeadGFresh,s6Step32HeadFFresh,s6Step32HeadGvFresh,s6Step32HeadFvFresh]=
    some (s6Step32HeadFvAfter,⟨s6Step32HeadFOut,s6Step32HeadGOut,s6Step32HeadFvOut,s6Step32HeadGvOut⟩,(growRow 777 s6Step32HeadGFresh ++ (growRow 795 s6Step32HeadFFresh ++ (growRow 775 s6Step32HeadGvFresh ++ (growRow 776 s6Step32HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step32HeadBank_rows]
  rfl
def s6Step33HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859, 779],777⟩
def s6Step33HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 793],795⟩
def s6Step33HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 876],775⟩
def s6Step33HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩
theorem s6Step33HeadBank_incomingDistinct : ([s6Step33HeadGRow,s6Step33HeadFRow,s6Step33HeadGvRow,s6Step33HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33HeadBank_outgoingOwned : rowsOwned s6Step33HeadFvAfter [s6Step33HeadGOut,s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step33HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33HeadG_Incoming : rowsOwned s6Step33HeadGBefore [s6Step33HeadGRow,s6Step33HeadFRow,s6Step33HeadGvRow,s6Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33HeadGRow,s6Step33HeadFRow,s6Step33HeadGvRow,s6Step33HeadFvRow] 0 s6Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33HeadG_Outgoing : rowsOwned s6Step33HeadFvAfter [s6Step33HeadGOut,s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut] :=
  hmrRows_owned_drop s6Step33HeadFvAfter [s6Step33HeadGOut,s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut] 0 s6Step33HeadBank_outgoingOwned
theorem s6Step33HeadF_Incoming : rowsOwned s6Step33HeadFBefore [s6Step33HeadFRow,s6Step33HeadGvRow,s6Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33HeadGRow,s6Step33HeadFRow,s6Step33HeadGvRow,s6Step33HeadFvRow] 1 s6Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33HeadFBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33HeadF_Outgoing : rowsOwned s6Step33HeadFvAfter [s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut] :=
  hmrRows_owned_drop s6Step33HeadFvAfter [s6Step33HeadGOut,s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut] 1 s6Step33HeadBank_outgoingOwned
theorem s6Step33HeadGv_Incoming : rowsOwned s6Step33HeadGvBefore [s6Step33HeadGvRow,s6Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33HeadGRow,s6Step33HeadFRow,s6Step33HeadGvRow,s6Step33HeadFvRow] 2 s6Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33HeadGv_Outgoing : rowsOwned s6Step33HeadFvAfter [s6Step33HeadGvOut,s6Step33HeadFvOut] :=
  hmrRows_owned_drop s6Step33HeadFvAfter [s6Step33HeadGOut,s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut] 2 s6Step33HeadBank_outgoingOwned
theorem s6Step33HeadFv_Incoming : rowsOwned s6Step33HeadFvBefore [s6Step33HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step33HeadGRow,s6Step33HeadFRow,s6Step33HeadGvRow,s6Step33HeadFvRow] 3 s6Step33HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step33HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step33HeadFv_Outgoing : rowsOwned s6Step33HeadFvAfter [s6Step33HeadFvOut] :=
  hmrRows_owned_drop s6Step33HeadFvAfter [s6Step33HeadGOut,s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut] 3 s6Step33HeadBank_outgoingOwned
theorem s6Step33HeadBank_rows : planWindowRowsLog s6Step33HeadGBefore [(s6Step33HeadGRow,253),(s6Step33HeadFRow,253),(s6Step33HeadGvRow,30),(s6Step33HeadFvRow,30)] [s6Step33HeadGFresh,s6Step33HeadFFresh,s6Step33HeadGvFresh,s6Step33HeadFvFresh]=
    some (s6Step33HeadFvAfter,[s6Step33HeadGOut,s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut],(growRow 777 s6Step33HeadGFresh ++ (growRow 795 s6Step33HeadFFresh ++ (growRow 775 s6Step33HeadGvFresh ++ (growRow 776 s6Step33HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step33HeadFvAfter [] []=some (s6Step33HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step33HeadFvBefore s6Step33HeadFvAfter s6Step33HeadFvAfter
    s6Step33HeadFvRow s6Step33HeadFvOut 30 s6Step33HeadFvFresh [] [] []
    (growRow 776 s6Step33HeadFvFresh) ([]) s6Step33HeadFv_Incoming s6Step33HeadFv_checked h4 s6Step33HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step33HeadGvBefore s6Step33HeadGvAfter s6Step33HeadFvAfter
    s6Step33HeadGvRow s6Step33HeadGvOut 30 s6Step33HeadGvFresh [(s6Step33HeadFvRow,30)] [s6Step33HeadFvFresh] [s6Step33HeadFvOut]
    (growRow 775 s6Step33HeadGvFresh) ((growRow 776 s6Step33HeadFvFresh ++ [])) s6Step33HeadGv_Incoming s6Step33HeadGv_checked h3 s6Step33HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step33HeadFBefore s6Step33HeadFAfter s6Step33HeadFvAfter
    s6Step33HeadFRow s6Step33HeadFOut 253 s6Step33HeadFFresh [(s6Step33HeadGvRow,30),(s6Step33HeadFvRow,30)] [s6Step33HeadGvFresh,s6Step33HeadFvFresh] [s6Step33HeadGvOut,s6Step33HeadFvOut]
    (growRow 795 s6Step33HeadFFresh) ((growRow 775 s6Step33HeadGvFresh ++ (growRow 776 s6Step33HeadFvFresh ++ []))) s6Step33HeadF_Incoming s6Step33HeadF_checked h2 s6Step33HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step33HeadGBefore s6Step33HeadGAfter s6Step33HeadFvAfter
    s6Step33HeadGRow s6Step33HeadGOut 253 s6Step33HeadGFresh [(s6Step33HeadFRow,253),(s6Step33HeadGvRow,30),(s6Step33HeadFvRow,30)] [s6Step33HeadFFresh,s6Step33HeadGvFresh,s6Step33HeadFvFresh] [s6Step33HeadFOut,s6Step33HeadGvOut,s6Step33HeadFvOut]
    (growRow 777 s6Step33HeadGFresh) ((growRow 795 s6Step33HeadFFresh ++ (growRow 775 s6Step33HeadGvFresh ++ (growRow 776 s6Step33HeadFvFresh ++ [])))) s6Step33HeadG_Incoming s6Step33HeadG_checked h1 s6Step33HeadG_Outgoing
  exact h0
theorem s6Step33HeadBank_checked : compileHmrBankResizeLog .headroom s6Step33HeadGBefore ⟨s6Step33HeadFRow,s6Step33HeadGRow,s6Step33HeadFvRow,s6Step33HeadGvRow⟩ ⟨253,253,30,30⟩ [s6Step33HeadGFresh,s6Step33HeadFFresh,s6Step33HeadGvFresh,s6Step33HeadFvFresh]=
    some (s6Step33HeadFvAfter,⟨s6Step33HeadFOut,s6Step33HeadGOut,s6Step33HeadFvOut,s6Step33HeadGvOut⟩,(growRow 777 s6Step33HeadGFresh ++ (growRow 795 s6Step33HeadFFresh ++ (growRow 775 s6Step33HeadGvFresh ++ (growRow 776 s6Step33HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step33HeadBank_rows]
  rfl
def s6Step34HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 876],777⟩
def s6Step34HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 793],795⟩
def s6Step34HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 859],775⟩
def s6Step34HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 779],776⟩
theorem s6Step34HeadBank_incomingDistinct : ([s6Step34HeadGRow,s6Step34HeadFRow,s6Step34HeadGvRow,s6Step34HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34HeadBank_outgoingOwned : rowsOwned s6Step34HeadFvAfter [s6Step34HeadGOut,s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step34HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34HeadG_Incoming : rowsOwned s6Step34HeadGBefore [s6Step34HeadGRow,s6Step34HeadFRow,s6Step34HeadGvRow,s6Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34HeadGRow,s6Step34HeadFRow,s6Step34HeadGvRow,s6Step34HeadFvRow] 0 s6Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34HeadG_Outgoing : rowsOwned s6Step34HeadFvAfter [s6Step34HeadGOut,s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut] :=
  hmrRows_owned_drop s6Step34HeadFvAfter [s6Step34HeadGOut,s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut] 0 s6Step34HeadBank_outgoingOwned
theorem s6Step34HeadF_Incoming : rowsOwned s6Step34HeadFBefore [s6Step34HeadFRow,s6Step34HeadGvRow,s6Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34HeadGRow,s6Step34HeadFRow,s6Step34HeadGvRow,s6Step34HeadFvRow] 1 s6Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34HeadFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34HeadF_Outgoing : rowsOwned s6Step34HeadFvAfter [s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut] :=
  hmrRows_owned_drop s6Step34HeadFvAfter [s6Step34HeadGOut,s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut] 1 s6Step34HeadBank_outgoingOwned
theorem s6Step34HeadGv_Incoming : rowsOwned s6Step34HeadGvBefore [s6Step34HeadGvRow,s6Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34HeadGRow,s6Step34HeadFRow,s6Step34HeadGvRow,s6Step34HeadFvRow] 2 s6Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34HeadGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34HeadGv_Outgoing : rowsOwned s6Step34HeadFvAfter [s6Step34HeadGvOut,s6Step34HeadFvOut] :=
  hmrRows_owned_drop s6Step34HeadFvAfter [s6Step34HeadGOut,s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut] 2 s6Step34HeadBank_outgoingOwned
theorem s6Step34HeadFv_Incoming : rowsOwned s6Step34HeadFvBefore [s6Step34HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step34HeadGRow,s6Step34HeadFRow,s6Step34HeadGvRow,s6Step34HeadFvRow] 3 s6Step34HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step34HeadFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step34HeadFv_Outgoing : rowsOwned s6Step34HeadFvAfter [s6Step34HeadFvOut] :=
  hmrRows_owned_drop s6Step34HeadFvAfter [s6Step34HeadGOut,s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut] 3 s6Step34HeadBank_outgoingOwned
theorem s6Step34HeadBank_rows : planWindowRowsLog s6Step34HeadGBefore [(s6Step34HeadGRow,252),(s6Step34HeadFRow,252),(s6Step34HeadGvRow,31),(s6Step34HeadFvRow,31)] [s6Step34HeadGFresh,s6Step34HeadFFresh,s6Step34HeadGvFresh,s6Step34HeadFvFresh]=
    some (s6Step34HeadFvAfter,[s6Step34HeadGOut,s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut],(growRow 777 s6Step34HeadGFresh ++ (growRow 795 s6Step34HeadFFresh ++ (growRow 775 s6Step34HeadGvFresh ++ (growRow 776 s6Step34HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step34HeadFvAfter [] []=some (s6Step34HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step34HeadFvBefore s6Step34HeadFvAfter s6Step34HeadFvAfter
    s6Step34HeadFvRow s6Step34HeadFvOut 31 s6Step34HeadFvFresh [] [] []
    (growRow 776 s6Step34HeadFvFresh) ([]) s6Step34HeadFv_Incoming s6Step34HeadFv_checked h4 s6Step34HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step34HeadGvBefore s6Step34HeadGvAfter s6Step34HeadFvAfter
    s6Step34HeadGvRow s6Step34HeadGvOut 31 s6Step34HeadGvFresh [(s6Step34HeadFvRow,31)] [s6Step34HeadFvFresh] [s6Step34HeadFvOut]
    (growRow 775 s6Step34HeadGvFresh) ((growRow 776 s6Step34HeadFvFresh ++ [])) s6Step34HeadGv_Incoming s6Step34HeadGv_checked h3 s6Step34HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step34HeadFBefore s6Step34HeadFAfter s6Step34HeadFvAfter
    s6Step34HeadFRow s6Step34HeadFOut 252 s6Step34HeadFFresh [(s6Step34HeadGvRow,31),(s6Step34HeadFvRow,31)] [s6Step34HeadGvFresh,s6Step34HeadFvFresh] [s6Step34HeadGvOut,s6Step34HeadFvOut]
    (growRow 795 s6Step34HeadFFresh) ((growRow 775 s6Step34HeadGvFresh ++ (growRow 776 s6Step34HeadFvFresh ++ []))) s6Step34HeadF_Incoming s6Step34HeadF_checked h2 s6Step34HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step34HeadGBefore s6Step34HeadGAfter s6Step34HeadFvAfter
    s6Step34HeadGRow s6Step34HeadGOut 252 s6Step34HeadGFresh [(s6Step34HeadFRow,252),(s6Step34HeadGvRow,31),(s6Step34HeadFvRow,31)] [s6Step34HeadFFresh,s6Step34HeadGvFresh,s6Step34HeadFvFresh] [s6Step34HeadFOut,s6Step34HeadGvOut,s6Step34HeadFvOut]
    (growRow 777 s6Step34HeadGFresh) ((growRow 795 s6Step34HeadFFresh ++ (growRow 775 s6Step34HeadGvFresh ++ (growRow 776 s6Step34HeadFvFresh ++ [])))) s6Step34HeadG_Incoming s6Step34HeadG_checked h1 s6Step34HeadG_Outgoing
  exact h0
theorem s6Step34HeadBank_checked : compileHmrBankResizeLog .headroom s6Step34HeadGBefore ⟨s6Step34HeadFRow,s6Step34HeadGRow,s6Step34HeadFvRow,s6Step34HeadGvRow⟩ ⟨252,252,31,31⟩ [s6Step34HeadGFresh,s6Step34HeadFFresh,s6Step34HeadGvFresh,s6Step34HeadFvFresh]=
    some (s6Step34HeadFvAfter,⟨s6Step34HeadFOut,s6Step34HeadGOut,s6Step34HeadFvOut,s6Step34HeadGvOut⟩,(growRow 777 s6Step34HeadGFresh ++ (growRow 795 s6Step34HeadFFresh ++ (growRow 775 s6Step34HeadGvFresh ++ (growRow 776 s6Step34HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step34HeadBank_rows]
  rfl
def s6Step35HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875, 859],777⟩
def s6Step35HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 779],795⟩
def s6Step35HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 793],775⟩
def s6Step35HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩
theorem s6Step35HeadBank_incomingDistinct : ([s6Step35HeadGRow,s6Step35HeadFRow,s6Step35HeadGvRow,s6Step35HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35HeadBank_outgoingOwned : rowsOwned s6Step35HeadFvAfter [s6Step35HeadGOut,s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step35HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35HeadG_Incoming : rowsOwned s6Step35HeadGBefore [s6Step35HeadGRow,s6Step35HeadFRow,s6Step35HeadGvRow,s6Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35HeadGRow,s6Step35HeadFRow,s6Step35HeadGvRow,s6Step35HeadFvRow] 0 s6Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35HeadG_Outgoing : rowsOwned s6Step35HeadFvAfter [s6Step35HeadGOut,s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut] :=
  hmrRows_owned_drop s6Step35HeadFvAfter [s6Step35HeadGOut,s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut] 0 s6Step35HeadBank_outgoingOwned
theorem s6Step35HeadF_Incoming : rowsOwned s6Step35HeadFBefore [s6Step35HeadFRow,s6Step35HeadGvRow,s6Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35HeadGRow,s6Step35HeadFRow,s6Step35HeadGvRow,s6Step35HeadFvRow] 1 s6Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35HeadFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35HeadF_Outgoing : rowsOwned s6Step35HeadFvAfter [s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut] :=
  hmrRows_owned_drop s6Step35HeadFvAfter [s6Step35HeadGOut,s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut] 1 s6Step35HeadBank_outgoingOwned
theorem s6Step35HeadGv_Incoming : rowsOwned s6Step35HeadGvBefore [s6Step35HeadGvRow,s6Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35HeadGRow,s6Step35HeadFRow,s6Step35HeadGvRow,s6Step35HeadFvRow] 2 s6Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35HeadGv_Outgoing : rowsOwned s6Step35HeadFvAfter [s6Step35HeadGvOut,s6Step35HeadFvOut] :=
  hmrRows_owned_drop s6Step35HeadFvAfter [s6Step35HeadGOut,s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut] 2 s6Step35HeadBank_outgoingOwned
theorem s6Step35HeadFv_Incoming : rowsOwned s6Step35HeadFvBefore [s6Step35HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step35HeadGRow,s6Step35HeadFRow,s6Step35HeadGvRow,s6Step35HeadFvRow] 3 s6Step35HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step35HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step35HeadFv_Outgoing : rowsOwned s6Step35HeadFvAfter [s6Step35HeadFvOut] :=
  hmrRows_owned_drop s6Step35HeadFvAfter [s6Step35HeadGOut,s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut] 3 s6Step35HeadBank_outgoingOwned
theorem s6Step35HeadBank_rows : planWindowRowsLog s6Step35HeadGBefore [(s6Step35HeadGRow,252),(s6Step35HeadFRow,252),(s6Step35HeadGvRow,31),(s6Step35HeadFvRow,31)] [s6Step35HeadGFresh,s6Step35HeadFFresh,s6Step35HeadGvFresh,s6Step35HeadFvFresh]=
    some (s6Step35HeadFvAfter,[s6Step35HeadGOut,s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut],(growRow 777 s6Step35HeadGFresh ++ (growRow 795 s6Step35HeadFFresh ++ (growRow 775 s6Step35HeadGvFresh ++ (growRow 776 s6Step35HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step35HeadFvAfter [] []=some (s6Step35HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step35HeadFvBefore s6Step35HeadFvAfter s6Step35HeadFvAfter
    s6Step35HeadFvRow s6Step35HeadFvOut 31 s6Step35HeadFvFresh [] [] []
    (growRow 776 s6Step35HeadFvFresh) ([]) s6Step35HeadFv_Incoming s6Step35HeadFv_checked h4 s6Step35HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step35HeadGvBefore s6Step35HeadGvAfter s6Step35HeadFvAfter
    s6Step35HeadGvRow s6Step35HeadGvOut 31 s6Step35HeadGvFresh [(s6Step35HeadFvRow,31)] [s6Step35HeadFvFresh] [s6Step35HeadFvOut]
    (growRow 775 s6Step35HeadGvFresh) ((growRow 776 s6Step35HeadFvFresh ++ [])) s6Step35HeadGv_Incoming s6Step35HeadGv_checked h3 s6Step35HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step35HeadFBefore s6Step35HeadFAfter s6Step35HeadFvAfter
    s6Step35HeadFRow s6Step35HeadFOut 252 s6Step35HeadFFresh [(s6Step35HeadGvRow,31),(s6Step35HeadFvRow,31)] [s6Step35HeadGvFresh,s6Step35HeadFvFresh] [s6Step35HeadGvOut,s6Step35HeadFvOut]
    (growRow 795 s6Step35HeadFFresh) ((growRow 775 s6Step35HeadGvFresh ++ (growRow 776 s6Step35HeadFvFresh ++ []))) s6Step35HeadF_Incoming s6Step35HeadF_checked h2 s6Step35HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step35HeadGBefore s6Step35HeadGAfter s6Step35HeadFvAfter
    s6Step35HeadGRow s6Step35HeadGOut 252 s6Step35HeadGFresh [(s6Step35HeadFRow,252),(s6Step35HeadGvRow,31),(s6Step35HeadFvRow,31)] [s6Step35HeadFFresh,s6Step35HeadGvFresh,s6Step35HeadFvFresh] [s6Step35HeadFOut,s6Step35HeadGvOut,s6Step35HeadFvOut]
    (growRow 777 s6Step35HeadGFresh) ((growRow 795 s6Step35HeadFFresh ++ (growRow 775 s6Step35HeadGvFresh ++ (growRow 776 s6Step35HeadFvFresh ++ [])))) s6Step35HeadG_Incoming s6Step35HeadG_checked h1 s6Step35HeadG_Outgoing
  exact h0
theorem s6Step35HeadBank_checked : compileHmrBankResizeLog .headroom s6Step35HeadGBefore ⟨s6Step35HeadFRow,s6Step35HeadGRow,s6Step35HeadFvRow,s6Step35HeadGvRow⟩ ⟨252,252,31,31⟩ [s6Step35HeadGFresh,s6Step35HeadFFresh,s6Step35HeadGvFresh,s6Step35HeadFvFresh]=
    some (s6Step35HeadFvAfter,⟨s6Step35HeadFOut,s6Step35HeadGOut,s6Step35HeadFvOut,s6Step35HeadGvOut⟩,(growRow 777 s6Step35HeadGFresh ++ (growRow 795 s6Step35HeadFFresh ++ (growRow 775 s6Step35HeadGvFresh ++ (growRow 776 s6Step35HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step35HeadBank_rows]
  rfl
def s6Step36HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875, 779],777⟩
def s6Step36HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 857, 859],795⟩
def s6Step36HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 874],775⟩
def s6Step36HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 887],776⟩
theorem s6Step36HeadBank_incomingDistinct : ([s6Step36HeadGRow,s6Step36HeadFRow,s6Step36HeadGvRow,s6Step36HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36HeadBank_outgoingOwned : rowsOwned s6Step36HeadFvAfter [s6Step36HeadGOut,s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step36HeadFvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36HeadG_Incoming : rowsOwned s6Step36HeadGBefore [s6Step36HeadGRow,s6Step36HeadFRow,s6Step36HeadGvRow,s6Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36HeadGRow,s6Step36HeadFRow,s6Step36HeadGvRow,s6Step36HeadFvRow] 0 s6Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36HeadG_Outgoing : rowsOwned s6Step36HeadFvAfter [s6Step36HeadGOut,s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut] :=
  hmrRows_owned_drop s6Step36HeadFvAfter [s6Step36HeadGOut,s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut] 0 s6Step36HeadBank_outgoingOwned
theorem s6Step36HeadF_Incoming : rowsOwned s6Step36HeadFBefore [s6Step36HeadFRow,s6Step36HeadGvRow,s6Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36HeadGRow,s6Step36HeadFRow,s6Step36HeadGvRow,s6Step36HeadFvRow] 1 s6Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36HeadFBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36HeadF_Outgoing : rowsOwned s6Step36HeadFvAfter [s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut] :=
  hmrRows_owned_drop s6Step36HeadFvAfter [s6Step36HeadGOut,s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut] 1 s6Step36HeadBank_outgoingOwned
theorem s6Step36HeadGv_Incoming : rowsOwned s6Step36HeadGvBefore [s6Step36HeadGvRow,s6Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36HeadGRow,s6Step36HeadFRow,s6Step36HeadGvRow,s6Step36HeadFvRow] 2 s6Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36HeadGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36HeadGv_Outgoing : rowsOwned s6Step36HeadFvAfter [s6Step36HeadGvOut,s6Step36HeadFvOut] :=
  hmrRows_owned_drop s6Step36HeadFvAfter [s6Step36HeadGOut,s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut] 2 s6Step36HeadBank_outgoingOwned
theorem s6Step36HeadFv_Incoming : rowsOwned s6Step36HeadFvBefore [s6Step36HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step36HeadGRow,s6Step36HeadFRow,s6Step36HeadGvRow,s6Step36HeadFvRow] 3 s6Step36HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step36HeadFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step36HeadFv_Outgoing : rowsOwned s6Step36HeadFvAfter [s6Step36HeadFvOut] :=
  hmrRows_owned_drop s6Step36HeadFvAfter [s6Step36HeadGOut,s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut] 3 s6Step36HeadBank_outgoingOwned
theorem s6Step36HeadBank_rows : planWindowRowsLog s6Step36HeadGBefore [(s6Step36HeadGRow,252),(s6Step36HeadFRow,252),(s6Step36HeadGvRow,32),(s6Step36HeadFvRow,32)] [s6Step36HeadGFresh,s6Step36HeadFFresh,s6Step36HeadGvFresh,s6Step36HeadFvFresh]=
    some (s6Step36HeadFvAfter,[s6Step36HeadGOut,s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut],(growRow 777 s6Step36HeadGFresh ++ (growRow 795 s6Step36HeadFFresh ++ (growRow 775 s6Step36HeadGvFresh ++ (growRow 776 s6Step36HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step36HeadFvAfter [] []=some (s6Step36HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step36HeadFvBefore s6Step36HeadFvAfter s6Step36HeadFvAfter
    s6Step36HeadFvRow s6Step36HeadFvOut 32 s6Step36HeadFvFresh [] [] []
    (growRow 776 s6Step36HeadFvFresh) ([]) s6Step36HeadFv_Incoming s6Step36HeadFv_checked h4 s6Step36HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step36HeadGvBefore s6Step36HeadGvAfter s6Step36HeadFvAfter
    s6Step36HeadGvRow s6Step36HeadGvOut 32 s6Step36HeadGvFresh [(s6Step36HeadFvRow,32)] [s6Step36HeadFvFresh] [s6Step36HeadFvOut]
    (growRow 775 s6Step36HeadGvFresh) ((growRow 776 s6Step36HeadFvFresh ++ [])) s6Step36HeadGv_Incoming s6Step36HeadGv_checked h3 s6Step36HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step36HeadFBefore s6Step36HeadFAfter s6Step36HeadFvAfter
    s6Step36HeadFRow s6Step36HeadFOut 252 s6Step36HeadFFresh [(s6Step36HeadGvRow,32),(s6Step36HeadFvRow,32)] [s6Step36HeadGvFresh,s6Step36HeadFvFresh] [s6Step36HeadGvOut,s6Step36HeadFvOut]
    (growRow 795 s6Step36HeadFFresh) ((growRow 775 s6Step36HeadGvFresh ++ (growRow 776 s6Step36HeadFvFresh ++ []))) s6Step36HeadF_Incoming s6Step36HeadF_checked h2 s6Step36HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step36HeadGBefore s6Step36HeadGAfter s6Step36HeadFvAfter
    s6Step36HeadGRow s6Step36HeadGOut 252 s6Step36HeadGFresh [(s6Step36HeadFRow,252),(s6Step36HeadGvRow,32),(s6Step36HeadFvRow,32)] [s6Step36HeadFFresh,s6Step36HeadGvFresh,s6Step36HeadFvFresh] [s6Step36HeadFOut,s6Step36HeadGvOut,s6Step36HeadFvOut]
    (growRow 777 s6Step36HeadGFresh) ((growRow 795 s6Step36HeadFFresh ++ (growRow 775 s6Step36HeadGvFresh ++ (growRow 776 s6Step36HeadFvFresh ++ [])))) s6Step36HeadG_Incoming s6Step36HeadG_checked h1 s6Step36HeadG_Outgoing
  exact h0
theorem s6Step36HeadBank_checked : compileHmrBankResizeLog .headroom s6Step36HeadGBefore ⟨s6Step36HeadFRow,s6Step36HeadGRow,s6Step36HeadFvRow,s6Step36HeadGvRow⟩ ⟨252,252,32,32⟩ [s6Step36HeadGFresh,s6Step36HeadFFresh,s6Step36HeadGvFresh,s6Step36HeadFvFresh]=
    some (s6Step36HeadFvAfter,⟨s6Step36HeadFOut,s6Step36HeadGOut,s6Step36HeadFvOut,s6Step36HeadGvOut⟩,(growRow 777 s6Step36HeadGFresh ++ (growRow 795 s6Step36HeadFFresh ++ (growRow 775 s6Step36HeadGvFresh ++ (growRow 776 s6Step36HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step36HeadBank_rows]
  rfl
def s6Step37HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 874],777⟩
def s6Step37HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 887],795⟩
def s6Step37HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩
def s6Step37HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩
theorem s6Step37HeadBank_incomingDistinct : ([s6Step37HeadGRow,s6Step37HeadFRow,s6Step37HeadGvRow,s6Step37HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37HeadBank_outgoingOwned : rowsOwned s6Step37HeadFvAfter [s6Step37HeadGOut,s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step37HeadFvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37HeadG_Incoming : rowsOwned s6Step37HeadGBefore [s6Step37HeadGRow,s6Step37HeadFRow,s6Step37HeadGvRow,s6Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37HeadGRow,s6Step37HeadFRow,s6Step37HeadGvRow,s6Step37HeadFvRow] 0 s6Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37HeadGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37HeadG_Outgoing : rowsOwned s6Step37HeadFvAfter [s6Step37HeadGOut,s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut] :=
  hmrRows_owned_drop s6Step37HeadFvAfter [s6Step37HeadGOut,s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut] 0 s6Step37HeadBank_outgoingOwned
theorem s6Step37HeadF_Incoming : rowsOwned s6Step37HeadFBefore [s6Step37HeadFRow,s6Step37HeadGvRow,s6Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37HeadGRow,s6Step37HeadFRow,s6Step37HeadGvRow,s6Step37HeadFvRow] 1 s6Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37HeadFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37HeadF_Outgoing : rowsOwned s6Step37HeadFvAfter [s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut] :=
  hmrRows_owned_drop s6Step37HeadFvAfter [s6Step37HeadGOut,s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut] 1 s6Step37HeadBank_outgoingOwned
theorem s6Step37HeadGv_Incoming : rowsOwned s6Step37HeadGvBefore [s6Step37HeadGvRow,s6Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37HeadGRow,s6Step37HeadFRow,s6Step37HeadGvRow,s6Step37HeadFvRow] 2 s6Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37HeadGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37HeadGv_Outgoing : rowsOwned s6Step37HeadFvAfter [s6Step37HeadGvOut,s6Step37HeadFvOut] :=
  hmrRows_owned_drop s6Step37HeadFvAfter [s6Step37HeadGOut,s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut] 2 s6Step37HeadBank_outgoingOwned
theorem s6Step37HeadFv_Incoming : rowsOwned s6Step37HeadFvBefore [s6Step37HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step37HeadGRow,s6Step37HeadFRow,s6Step37HeadGvRow,s6Step37HeadFvRow] 3 s6Step37HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step37HeadFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step37HeadFv_Outgoing : rowsOwned s6Step37HeadFvAfter [s6Step37HeadFvOut] :=
  hmrRows_owned_drop s6Step37HeadFvAfter [s6Step37HeadGOut,s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut] 3 s6Step37HeadBank_outgoingOwned
theorem s6Step37HeadBank_rows : planWindowRowsLog s6Step37HeadGBefore [(s6Step37HeadGRow,251),(s6Step37HeadFRow,251),(s6Step37HeadGvRow,32),(s6Step37HeadFvRow,32)] [s6Step37HeadGFresh,s6Step37HeadFFresh,s6Step37HeadGvFresh,s6Step37HeadFvFresh]=
    some (s6Step37HeadFvAfter,[s6Step37HeadGOut,s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut],(growRow 777 s6Step37HeadGFresh ++ (growRow 795 s6Step37HeadFFresh ++ (growRow 775 s6Step37HeadGvFresh ++ (growRow 776 s6Step37HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step37HeadFvAfter [] []=some (s6Step37HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step37HeadFvBefore s6Step37HeadFvAfter s6Step37HeadFvAfter
    s6Step37HeadFvRow s6Step37HeadFvOut 32 s6Step37HeadFvFresh [] [] []
    (growRow 776 s6Step37HeadFvFresh) ([]) s6Step37HeadFv_Incoming s6Step37HeadFv_checked h4 s6Step37HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step37HeadGvBefore s6Step37HeadGvAfter s6Step37HeadFvAfter
    s6Step37HeadGvRow s6Step37HeadGvOut 32 s6Step37HeadGvFresh [(s6Step37HeadFvRow,32)] [s6Step37HeadFvFresh] [s6Step37HeadFvOut]
    (growRow 775 s6Step37HeadGvFresh) ((growRow 776 s6Step37HeadFvFresh ++ [])) s6Step37HeadGv_Incoming s6Step37HeadGv_checked h3 s6Step37HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step37HeadFBefore s6Step37HeadFAfter s6Step37HeadFvAfter
    s6Step37HeadFRow s6Step37HeadFOut 251 s6Step37HeadFFresh [(s6Step37HeadGvRow,32),(s6Step37HeadFvRow,32)] [s6Step37HeadGvFresh,s6Step37HeadFvFresh] [s6Step37HeadGvOut,s6Step37HeadFvOut]
    (growRow 795 s6Step37HeadFFresh) ((growRow 775 s6Step37HeadGvFresh ++ (growRow 776 s6Step37HeadFvFresh ++ []))) s6Step37HeadF_Incoming s6Step37HeadF_checked h2 s6Step37HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step37HeadGBefore s6Step37HeadGAfter s6Step37HeadFvAfter
    s6Step37HeadGRow s6Step37HeadGOut 251 s6Step37HeadGFresh [(s6Step37HeadFRow,251),(s6Step37HeadGvRow,32),(s6Step37HeadFvRow,32)] [s6Step37HeadFFresh,s6Step37HeadGvFresh,s6Step37HeadFvFresh] [s6Step37HeadFOut,s6Step37HeadGvOut,s6Step37HeadFvOut]
    (growRow 777 s6Step37HeadGFresh) ((growRow 795 s6Step37HeadFFresh ++ (growRow 775 s6Step37HeadGvFresh ++ (growRow 776 s6Step37HeadFvFresh ++ [])))) s6Step37HeadG_Incoming s6Step37HeadG_checked h1 s6Step37HeadG_Outgoing
  exact h0
theorem s6Step37HeadBank_checked : compileHmrBankResizeLog .headroom s6Step37HeadGBefore ⟨s6Step37HeadFRow,s6Step37HeadGRow,s6Step37HeadFvRow,s6Step37HeadGvRow⟩ ⟨251,251,32,32⟩ [s6Step37HeadGFresh,s6Step37HeadFFresh,s6Step37HeadGvFresh,s6Step37HeadFvFresh]=
    some (s6Step37HeadFvAfter,⟨s6Step37HeadFOut,s6Step37HeadGOut,s6Step37HeadFvOut,s6Step37HeadGvOut⟩,(growRow 777 s6Step37HeadGFresh ++ (growRow 795 s6Step37HeadFFresh ++ (growRow 775 s6Step37HeadGvFresh ++ (growRow 776 s6Step37HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step37HeadBank_rows]
  rfl
def s6Step38HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 868, 887],777⟩
def s6Step38HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 874],795⟩
def s6Step38HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 875],775⟩
def s6Step38HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 779],776⟩
theorem s6Step38HeadBank_incomingDistinct : ([s6Step38HeadGRow,s6Step38HeadFRow,s6Step38HeadGvRow,s6Step38HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38HeadBank_outgoingOwned : rowsOwned s6Step38HeadFvAfter [s6Step38HeadGOut,s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step38HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38HeadG_Incoming : rowsOwned s6Step38HeadGBefore [s6Step38HeadGRow,s6Step38HeadFRow,s6Step38HeadGvRow,s6Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38HeadGRow,s6Step38HeadFRow,s6Step38HeadGvRow,s6Step38HeadFvRow] 0 s6Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38HeadGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38HeadG_Outgoing : rowsOwned s6Step38HeadFvAfter [s6Step38HeadGOut,s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut] :=
  hmrRows_owned_drop s6Step38HeadFvAfter [s6Step38HeadGOut,s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut] 0 s6Step38HeadBank_outgoingOwned
theorem s6Step38HeadF_Incoming : rowsOwned s6Step38HeadFBefore [s6Step38HeadFRow,s6Step38HeadGvRow,s6Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38HeadGRow,s6Step38HeadFRow,s6Step38HeadGvRow,s6Step38HeadFvRow] 1 s6Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38HeadFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38HeadF_Outgoing : rowsOwned s6Step38HeadFvAfter [s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut] :=
  hmrRows_owned_drop s6Step38HeadFvAfter [s6Step38HeadGOut,s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut] 1 s6Step38HeadBank_outgoingOwned
theorem s6Step38HeadGv_Incoming : rowsOwned s6Step38HeadGvBefore [s6Step38HeadGvRow,s6Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38HeadGRow,s6Step38HeadFRow,s6Step38HeadGvRow,s6Step38HeadFvRow] 2 s6Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38HeadGvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38HeadGv_Outgoing : rowsOwned s6Step38HeadFvAfter [s6Step38HeadGvOut,s6Step38HeadFvOut] :=
  hmrRows_owned_drop s6Step38HeadFvAfter [s6Step38HeadGOut,s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut] 2 s6Step38HeadBank_outgoingOwned
theorem s6Step38HeadFv_Incoming : rowsOwned s6Step38HeadFvBefore [s6Step38HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step38HeadGRow,s6Step38HeadFRow,s6Step38HeadGvRow,s6Step38HeadFvRow] 3 s6Step38HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step38HeadFvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step38HeadFv_Outgoing : rowsOwned s6Step38HeadFvAfter [s6Step38HeadFvOut] :=
  hmrRows_owned_drop s6Step38HeadFvAfter [s6Step38HeadGOut,s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut] 3 s6Step38HeadBank_outgoingOwned
theorem s6Step38HeadBank_rows : planWindowRowsLog s6Step38HeadGBefore [(s6Step38HeadGRow,251),(s6Step38HeadFRow,251),(s6Step38HeadGvRow,33),(s6Step38HeadFvRow,33)] [s6Step38HeadGFresh,s6Step38HeadFFresh,s6Step38HeadGvFresh,s6Step38HeadFvFresh]=
    some (s6Step38HeadFvAfter,[s6Step38HeadGOut,s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut],(growRow 777 s6Step38HeadGFresh ++ (growRow 795 s6Step38HeadFFresh ++ (growRow 775 s6Step38HeadGvFresh ++ (growRow 776 s6Step38HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step38HeadFvAfter [] []=some (s6Step38HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step38HeadFvBefore s6Step38HeadFvAfter s6Step38HeadFvAfter
    s6Step38HeadFvRow s6Step38HeadFvOut 33 s6Step38HeadFvFresh [] [] []
    (growRow 776 s6Step38HeadFvFresh) ([]) s6Step38HeadFv_Incoming s6Step38HeadFv_checked h4 s6Step38HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step38HeadGvBefore s6Step38HeadGvAfter s6Step38HeadFvAfter
    s6Step38HeadGvRow s6Step38HeadGvOut 33 s6Step38HeadGvFresh [(s6Step38HeadFvRow,33)] [s6Step38HeadFvFresh] [s6Step38HeadFvOut]
    (growRow 775 s6Step38HeadGvFresh) ((growRow 776 s6Step38HeadFvFresh ++ [])) s6Step38HeadGv_Incoming s6Step38HeadGv_checked h3 s6Step38HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step38HeadFBefore s6Step38HeadFAfter s6Step38HeadFvAfter
    s6Step38HeadFRow s6Step38HeadFOut 251 s6Step38HeadFFresh [(s6Step38HeadGvRow,33),(s6Step38HeadFvRow,33)] [s6Step38HeadGvFresh,s6Step38HeadFvFresh] [s6Step38HeadGvOut,s6Step38HeadFvOut]
    (growRow 795 s6Step38HeadFFresh) ((growRow 775 s6Step38HeadGvFresh ++ (growRow 776 s6Step38HeadFvFresh ++ []))) s6Step38HeadF_Incoming s6Step38HeadF_checked h2 s6Step38HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step38HeadGBefore s6Step38HeadGAfter s6Step38HeadFvAfter
    s6Step38HeadGRow s6Step38HeadGOut 251 s6Step38HeadGFresh [(s6Step38HeadFRow,251),(s6Step38HeadGvRow,33),(s6Step38HeadFvRow,33)] [s6Step38HeadFFresh,s6Step38HeadGvFresh,s6Step38HeadFvFresh] [s6Step38HeadFOut,s6Step38HeadGvOut,s6Step38HeadFvOut]
    (growRow 777 s6Step38HeadGFresh) ((growRow 795 s6Step38HeadFFresh ++ (growRow 775 s6Step38HeadGvFresh ++ (growRow 776 s6Step38HeadFvFresh ++ [])))) s6Step38HeadG_Incoming s6Step38HeadG_checked h1 s6Step38HeadG_Outgoing
  exact h0
theorem s6Step38HeadBank_checked : compileHmrBankResizeLog .headroom s6Step38HeadGBefore ⟨s6Step38HeadFRow,s6Step38HeadGRow,s6Step38HeadFvRow,s6Step38HeadGvRow⟩ ⟨251,251,33,33⟩ [s6Step38HeadGFresh,s6Step38HeadFFresh,s6Step38HeadGvFresh,s6Step38HeadFvFresh]=
    some (s6Step38HeadFvAfter,⟨s6Step38HeadFOut,s6Step38HeadGOut,s6Step38HeadFvOut,s6Step38HeadGvOut⟩,(growRow 777 s6Step38HeadGFresh ++ (growRow 795 s6Step38HeadFFresh ++ (growRow 775 s6Step38HeadGvFresh ++ (growRow 776 s6Step38HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step38HeadBank_rows]
  rfl
def s6Step39HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 907],777⟩
def s6Step39HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 875],795⟩
def s6Step39HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 779],775⟩
def s6Step39HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874],776⟩
theorem s6Step39HeadBank_incomingDistinct : ([s6Step39HeadGRow,s6Step39HeadFRow,s6Step39HeadGvRow,s6Step39HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39HeadBank_outgoingOwned : rowsOwned s6Step39HeadFvAfter [s6Step39HeadGOut,s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step39HeadFvAfter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39HeadG_Incoming : rowsOwned s6Step39HeadGBefore [s6Step39HeadGRow,s6Step39HeadFRow,s6Step39HeadGvRow,s6Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39HeadGRow,s6Step39HeadFRow,s6Step39HeadGvRow,s6Step39HeadFvRow] 0 s6Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39HeadGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39HeadG_Outgoing : rowsOwned s6Step39HeadFvAfter [s6Step39HeadGOut,s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut] :=
  hmrRows_owned_drop s6Step39HeadFvAfter [s6Step39HeadGOut,s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut] 0 s6Step39HeadBank_outgoingOwned
theorem s6Step39HeadF_Incoming : rowsOwned s6Step39HeadFBefore [s6Step39HeadFRow,s6Step39HeadGvRow,s6Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39HeadGRow,s6Step39HeadFRow,s6Step39HeadGvRow,s6Step39HeadFvRow] 1 s6Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39HeadFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39HeadF_Outgoing : rowsOwned s6Step39HeadFvAfter [s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut] :=
  hmrRows_owned_drop s6Step39HeadFvAfter [s6Step39HeadGOut,s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut] 1 s6Step39HeadBank_outgoingOwned
theorem s6Step39HeadGv_Incoming : rowsOwned s6Step39HeadGvBefore [s6Step39HeadGvRow,s6Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39HeadGRow,s6Step39HeadFRow,s6Step39HeadGvRow,s6Step39HeadFvRow] 2 s6Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39HeadGvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39HeadGv_Outgoing : rowsOwned s6Step39HeadFvAfter [s6Step39HeadGvOut,s6Step39HeadFvOut] :=
  hmrRows_owned_drop s6Step39HeadFvAfter [s6Step39HeadGOut,s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut] 2 s6Step39HeadBank_outgoingOwned
theorem s6Step39HeadFv_Incoming : rowsOwned s6Step39HeadFvBefore [s6Step39HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step39HeadGRow,s6Step39HeadFRow,s6Step39HeadGvRow,s6Step39HeadFvRow] 3 s6Step39HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step39HeadFvBefore (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step39HeadFv_Outgoing : rowsOwned s6Step39HeadFvAfter [s6Step39HeadFvOut] :=
  hmrRows_owned_drop s6Step39HeadFvAfter [s6Step39HeadGOut,s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut] 3 s6Step39HeadBank_outgoingOwned
theorem s6Step39HeadBank_rows : planWindowRowsLog s6Step39HeadGBefore [(s6Step39HeadGRow,250),(s6Step39HeadFRow,250),(s6Step39HeadGvRow,33),(s6Step39HeadFvRow,33)] [s6Step39HeadGFresh,s6Step39HeadFFresh,s6Step39HeadGvFresh,s6Step39HeadFvFresh]=
    some (s6Step39HeadFvAfter,[s6Step39HeadGOut,s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut],(growRow 777 s6Step39HeadGFresh ++ (growRow 795 s6Step39HeadFFresh ++ (growRow 775 s6Step39HeadGvFresh ++ (growRow 776 s6Step39HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step39HeadFvAfter [] []=some (s6Step39HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step39HeadFvBefore s6Step39HeadFvAfter s6Step39HeadFvAfter
    s6Step39HeadFvRow s6Step39HeadFvOut 33 s6Step39HeadFvFresh [] [] []
    (growRow 776 s6Step39HeadFvFresh) ([]) s6Step39HeadFv_Incoming s6Step39HeadFv_checked h4 s6Step39HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step39HeadGvBefore s6Step39HeadGvAfter s6Step39HeadFvAfter
    s6Step39HeadGvRow s6Step39HeadGvOut 33 s6Step39HeadGvFresh [(s6Step39HeadFvRow,33)] [s6Step39HeadFvFresh] [s6Step39HeadFvOut]
    (growRow 775 s6Step39HeadGvFresh) ((growRow 776 s6Step39HeadFvFresh ++ [])) s6Step39HeadGv_Incoming s6Step39HeadGv_checked h3 s6Step39HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step39HeadFBefore s6Step39HeadFAfter s6Step39HeadFvAfter
    s6Step39HeadFRow s6Step39HeadFOut 250 s6Step39HeadFFresh [(s6Step39HeadGvRow,33),(s6Step39HeadFvRow,33)] [s6Step39HeadGvFresh,s6Step39HeadFvFresh] [s6Step39HeadGvOut,s6Step39HeadFvOut]
    (growRow 795 s6Step39HeadFFresh) ((growRow 775 s6Step39HeadGvFresh ++ (growRow 776 s6Step39HeadFvFresh ++ []))) s6Step39HeadF_Incoming s6Step39HeadF_checked h2 s6Step39HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step39HeadGBefore s6Step39HeadGAfter s6Step39HeadFvAfter
    s6Step39HeadGRow s6Step39HeadGOut 250 s6Step39HeadGFresh [(s6Step39HeadFRow,250),(s6Step39HeadGvRow,33),(s6Step39HeadFvRow,33)] [s6Step39HeadFFresh,s6Step39HeadGvFresh,s6Step39HeadFvFresh] [s6Step39HeadFOut,s6Step39HeadGvOut,s6Step39HeadFvOut]
    (growRow 777 s6Step39HeadGFresh) ((growRow 795 s6Step39HeadFFresh ++ (growRow 775 s6Step39HeadGvFresh ++ (growRow 776 s6Step39HeadFvFresh ++ [])))) s6Step39HeadG_Incoming s6Step39HeadG_checked h1 s6Step39HeadG_Outgoing
  exact h0
theorem s6Step39HeadBank_checked : compileHmrBankResizeLog .headroom s6Step39HeadGBefore ⟨s6Step39HeadFRow,s6Step39HeadGRow,s6Step39HeadFvRow,s6Step39HeadGvRow⟩ ⟨250,250,33,33⟩ [s6Step39HeadGFresh,s6Step39HeadFFresh,s6Step39HeadGvFresh,s6Step39HeadFvFresh]=
    some (s6Step39HeadFvAfter,⟨s6Step39HeadFOut,s6Step39HeadGOut,s6Step39HeadFvOut,s6Step39HeadGvOut⟩,(growRow 777 s6Step39HeadGFresh ++ (growRow 795 s6Step39HeadFFresh ++ (growRow 775 s6Step39HeadGvFresh ++ (growRow 776 s6Step39HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step39HeadBank_rows]
  rfl
def s6Step40HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 793, 875],777⟩
def s6Step40HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 907],795⟩
def s6Step40HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 868],775⟩
def s6Step40HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩
theorem s6Step40HeadBank_incomingDistinct : ([s6Step40HeadGRow,s6Step40HeadFRow,s6Step40HeadGvRow,s6Step40HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40HeadBank_outgoingOwned : rowsOwned s6Step40HeadFvAfter [s6Step40HeadGOut,s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step40HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40HeadG_Incoming : rowsOwned s6Step40HeadGBefore [s6Step40HeadGRow,s6Step40HeadFRow,s6Step40HeadGvRow,s6Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40HeadGRow,s6Step40HeadFRow,s6Step40HeadGvRow,s6Step40HeadFvRow] 0 s6Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40HeadG_Outgoing : rowsOwned s6Step40HeadFvAfter [s6Step40HeadGOut,s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut] :=
  hmrRows_owned_drop s6Step40HeadFvAfter [s6Step40HeadGOut,s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut] 0 s6Step40HeadBank_outgoingOwned
theorem s6Step40HeadF_Incoming : rowsOwned s6Step40HeadFBefore [s6Step40HeadFRow,s6Step40HeadGvRow,s6Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40HeadGRow,s6Step40HeadFRow,s6Step40HeadGvRow,s6Step40HeadFvRow] 1 s6Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40HeadF_Outgoing : rowsOwned s6Step40HeadFvAfter [s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut] :=
  hmrRows_owned_drop s6Step40HeadFvAfter [s6Step40HeadGOut,s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut] 1 s6Step40HeadBank_outgoingOwned
theorem s6Step40HeadGv_Incoming : rowsOwned s6Step40HeadGvBefore [s6Step40HeadGvRow,s6Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40HeadGRow,s6Step40HeadFRow,s6Step40HeadGvRow,s6Step40HeadFvRow] 2 s6Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40HeadGv_Outgoing : rowsOwned s6Step40HeadFvAfter [s6Step40HeadGvOut,s6Step40HeadFvOut] :=
  hmrRows_owned_drop s6Step40HeadFvAfter [s6Step40HeadGOut,s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut] 2 s6Step40HeadBank_outgoingOwned
theorem s6Step40HeadFv_Incoming : rowsOwned s6Step40HeadFvBefore [s6Step40HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step40HeadGRow,s6Step40HeadFRow,s6Step40HeadGvRow,s6Step40HeadFvRow] 3 s6Step40HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step40HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step40HeadFv_Outgoing : rowsOwned s6Step40HeadFvAfter [s6Step40HeadFvOut] :=
  hmrRows_owned_drop s6Step40HeadFvAfter [s6Step40HeadGOut,s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut] 3 s6Step40HeadBank_outgoingOwned
theorem s6Step40HeadBank_rows : planWindowRowsLog s6Step40HeadGBefore [(s6Step40HeadGRow,250),(s6Step40HeadFRow,250),(s6Step40HeadGvRow,34),(s6Step40HeadFvRow,34)] [s6Step40HeadGFresh,s6Step40HeadFFresh,s6Step40HeadGvFresh,s6Step40HeadFvFresh]=
    some (s6Step40HeadFvAfter,[s6Step40HeadGOut,s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut],(growRow 777 s6Step40HeadGFresh ++ (growRow 795 s6Step40HeadFFresh ++ (growRow 775 s6Step40HeadGvFresh ++ (growRow 776 s6Step40HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step40HeadFvAfter [] []=some (s6Step40HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step40HeadFvBefore s6Step40HeadFvAfter s6Step40HeadFvAfter
    s6Step40HeadFvRow s6Step40HeadFvOut 34 s6Step40HeadFvFresh [] [] []
    (growRow 776 s6Step40HeadFvFresh) ([]) s6Step40HeadFv_Incoming s6Step40HeadFv_checked h4 s6Step40HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step40HeadGvBefore s6Step40HeadGvAfter s6Step40HeadFvAfter
    s6Step40HeadGvRow s6Step40HeadGvOut 34 s6Step40HeadGvFresh [(s6Step40HeadFvRow,34)] [s6Step40HeadFvFresh] [s6Step40HeadFvOut]
    (growRow 775 s6Step40HeadGvFresh) ((growRow 776 s6Step40HeadFvFresh ++ [])) s6Step40HeadGv_Incoming s6Step40HeadGv_checked h3 s6Step40HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step40HeadFBefore s6Step40HeadFAfter s6Step40HeadFvAfter
    s6Step40HeadFRow s6Step40HeadFOut 250 s6Step40HeadFFresh [(s6Step40HeadGvRow,34),(s6Step40HeadFvRow,34)] [s6Step40HeadGvFresh,s6Step40HeadFvFresh] [s6Step40HeadGvOut,s6Step40HeadFvOut]
    (growRow 795 s6Step40HeadFFresh) ((growRow 775 s6Step40HeadGvFresh ++ (growRow 776 s6Step40HeadFvFresh ++ []))) s6Step40HeadF_Incoming s6Step40HeadF_checked h2 s6Step40HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step40HeadGBefore s6Step40HeadGAfter s6Step40HeadFvAfter
    s6Step40HeadGRow s6Step40HeadGOut 250 s6Step40HeadGFresh [(s6Step40HeadFRow,250),(s6Step40HeadGvRow,34),(s6Step40HeadFvRow,34)] [s6Step40HeadFFresh,s6Step40HeadGvFresh,s6Step40HeadFvFresh] [s6Step40HeadFOut,s6Step40HeadGvOut,s6Step40HeadFvOut]
    (growRow 777 s6Step40HeadGFresh) ((growRow 795 s6Step40HeadFFresh ++ (growRow 775 s6Step40HeadGvFresh ++ (growRow 776 s6Step40HeadFvFresh ++ [])))) s6Step40HeadG_Incoming s6Step40HeadG_checked h1 s6Step40HeadG_Outgoing
  exact h0
theorem s6Step40HeadBank_checked : compileHmrBankResizeLog .headroom s6Step40HeadGBefore ⟨s6Step40HeadFRow,s6Step40HeadGRow,s6Step40HeadFvRow,s6Step40HeadGvRow⟩ ⟨250,250,34,34⟩ [s6Step40HeadGFresh,s6Step40HeadFFresh,s6Step40HeadGvFresh,s6Step40HeadFvFresh]=
    some (s6Step40HeadFvAfter,⟨s6Step40HeadFOut,s6Step40HeadGOut,s6Step40HeadFvOut,s6Step40HeadGvOut⟩,(growRow 777 s6Step40HeadGFresh ++ (growRow 795 s6Step40HeadFFresh ++ (growRow 775 s6Step40HeadGvFresh ++ (growRow 776 s6Step40HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step40HeadBank_rows]
  rfl
def s6Step41HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 868],777⟩
def s6Step41HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 907],795⟩
def s6Step41HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 779, 793],775⟩
def s6Step41HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 875],776⟩
theorem s6Step41HeadBank_incomingDistinct : ([s6Step41HeadGRow,s6Step41HeadFRow,s6Step41HeadGvRow,s6Step41HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41HeadBank_outgoingOwned : rowsOwned s6Step41HeadFvAfter [s6Step41HeadGOut,s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step41HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41HeadG_Incoming : rowsOwned s6Step41HeadGBefore [s6Step41HeadGRow,s6Step41HeadFRow,s6Step41HeadGvRow,s6Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41HeadGRow,s6Step41HeadFRow,s6Step41HeadGvRow,s6Step41HeadFvRow] 0 s6Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41HeadG_Outgoing : rowsOwned s6Step41HeadFvAfter [s6Step41HeadGOut,s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut] :=
  hmrRows_owned_drop s6Step41HeadFvAfter [s6Step41HeadGOut,s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut] 0 s6Step41HeadBank_outgoingOwned
theorem s6Step41HeadF_Incoming : rowsOwned s6Step41HeadFBefore [s6Step41HeadFRow,s6Step41HeadGvRow,s6Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41HeadGRow,s6Step41HeadFRow,s6Step41HeadGvRow,s6Step41HeadFvRow] 1 s6Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41HeadF_Outgoing : rowsOwned s6Step41HeadFvAfter [s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut] :=
  hmrRows_owned_drop s6Step41HeadFvAfter [s6Step41HeadGOut,s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut] 1 s6Step41HeadBank_outgoingOwned
theorem s6Step41HeadGv_Incoming : rowsOwned s6Step41HeadGvBefore [s6Step41HeadGvRow,s6Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41HeadGRow,s6Step41HeadFRow,s6Step41HeadGvRow,s6Step41HeadFvRow] 2 s6Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41HeadGv_Outgoing : rowsOwned s6Step41HeadFvAfter [s6Step41HeadGvOut,s6Step41HeadFvOut] :=
  hmrRows_owned_drop s6Step41HeadFvAfter [s6Step41HeadGOut,s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut] 2 s6Step41HeadBank_outgoingOwned
theorem s6Step41HeadFv_Incoming : rowsOwned s6Step41HeadFvBefore [s6Step41HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step41HeadGRow,s6Step41HeadFRow,s6Step41HeadGvRow,s6Step41HeadFvRow] 3 s6Step41HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step41HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step41HeadFv_Outgoing : rowsOwned s6Step41HeadFvAfter [s6Step41HeadFvOut] :=
  hmrRows_owned_drop s6Step41HeadFvAfter [s6Step41HeadGOut,s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut] 3 s6Step41HeadBank_outgoingOwned
theorem s6Step41HeadBank_rows : planWindowRowsLog s6Step41HeadGBefore [(s6Step41HeadGRow,249),(s6Step41HeadFRow,249),(s6Step41HeadGvRow,35),(s6Step41HeadFvRow,35)] [s6Step41HeadGFresh,s6Step41HeadFFresh,s6Step41HeadGvFresh,s6Step41HeadFvFresh]=
    some (s6Step41HeadFvAfter,[s6Step41HeadGOut,s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut],(growRow 777 s6Step41HeadGFresh ++ (growRow 795 s6Step41HeadFFresh ++ (growRow 775 s6Step41HeadGvFresh ++ (growRow 776 s6Step41HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step41HeadFvAfter [] []=some (s6Step41HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step41HeadFvBefore s6Step41HeadFvAfter s6Step41HeadFvAfter
    s6Step41HeadFvRow s6Step41HeadFvOut 35 s6Step41HeadFvFresh [] [] []
    (growRow 776 s6Step41HeadFvFresh) ([]) s6Step41HeadFv_Incoming s6Step41HeadFv_checked h4 s6Step41HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step41HeadGvBefore s6Step41HeadGvAfter s6Step41HeadFvAfter
    s6Step41HeadGvRow s6Step41HeadGvOut 35 s6Step41HeadGvFresh [(s6Step41HeadFvRow,35)] [s6Step41HeadFvFresh] [s6Step41HeadFvOut]
    (growRow 775 s6Step41HeadGvFresh) ((growRow 776 s6Step41HeadFvFresh ++ [])) s6Step41HeadGv_Incoming s6Step41HeadGv_checked h3 s6Step41HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step41HeadFBefore s6Step41HeadFAfter s6Step41HeadFvAfter
    s6Step41HeadFRow s6Step41HeadFOut 249 s6Step41HeadFFresh [(s6Step41HeadGvRow,35),(s6Step41HeadFvRow,35)] [s6Step41HeadGvFresh,s6Step41HeadFvFresh] [s6Step41HeadGvOut,s6Step41HeadFvOut]
    (growRow 795 s6Step41HeadFFresh) ((growRow 775 s6Step41HeadGvFresh ++ (growRow 776 s6Step41HeadFvFresh ++ []))) s6Step41HeadF_Incoming s6Step41HeadF_checked h2 s6Step41HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step41HeadGBefore s6Step41HeadGAfter s6Step41HeadFvAfter
    s6Step41HeadGRow s6Step41HeadGOut 249 s6Step41HeadGFresh [(s6Step41HeadFRow,249),(s6Step41HeadGvRow,35),(s6Step41HeadFvRow,35)] [s6Step41HeadFFresh,s6Step41HeadGvFresh,s6Step41HeadFvFresh] [s6Step41HeadFOut,s6Step41HeadGvOut,s6Step41HeadFvOut]
    (growRow 777 s6Step41HeadGFresh) ((growRow 795 s6Step41HeadFFresh ++ (growRow 775 s6Step41HeadGvFresh ++ (growRow 776 s6Step41HeadFvFresh ++ [])))) s6Step41HeadG_Incoming s6Step41HeadG_checked h1 s6Step41HeadG_Outgoing
  exact h0
theorem s6Step41HeadBank_checked : compileHmrBankResizeLog .headroom s6Step41HeadGBefore ⟨s6Step41HeadFRow,s6Step41HeadGRow,s6Step41HeadFvRow,s6Step41HeadGvRow⟩ ⟨249,249,35,35⟩ [s6Step41HeadGFresh,s6Step41HeadFFresh,s6Step41HeadGvFresh,s6Step41HeadFvFresh]=
    some (s6Step41HeadFvAfter,⟨s6Step41HeadFOut,s6Step41HeadGOut,s6Step41HeadFvOut,s6Step41HeadGvOut⟩,(growRow 777 s6Step41HeadGFresh ++ (growRow 795 s6Step41HeadFFresh ++ (growRow 775 s6Step41HeadGvFresh ++ (growRow 776 s6Step41HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step41HeadBank_rows]
  rfl
def s6Step42HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 793],777⟩
def s6Step42HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 875],795⟩
def s6Step42HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
def s6Step42HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 868],776⟩
theorem s6Step42HeadBank_incomingDistinct : ([s6Step42HeadGRow,s6Step42HeadFRow,s6Step42HeadGvRow,s6Step42HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42HeadBank_outgoingOwned : rowsOwned s6Step42HeadFvAfter [s6Step42HeadGOut,s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step42HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42HeadG_Incoming : rowsOwned s6Step42HeadGBefore [s6Step42HeadGRow,s6Step42HeadFRow,s6Step42HeadGvRow,s6Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42HeadGRow,s6Step42HeadFRow,s6Step42HeadGvRow,s6Step42HeadFvRow] 0 s6Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42HeadG_Outgoing : rowsOwned s6Step42HeadFvAfter [s6Step42HeadGOut,s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut] :=
  hmrRows_owned_drop s6Step42HeadFvAfter [s6Step42HeadGOut,s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut] 0 s6Step42HeadBank_outgoingOwned
theorem s6Step42HeadF_Incoming : rowsOwned s6Step42HeadFBefore [s6Step42HeadFRow,s6Step42HeadGvRow,s6Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42HeadGRow,s6Step42HeadFRow,s6Step42HeadGvRow,s6Step42HeadFvRow] 1 s6Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42HeadF_Outgoing : rowsOwned s6Step42HeadFvAfter [s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut] :=
  hmrRows_owned_drop s6Step42HeadFvAfter [s6Step42HeadGOut,s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut] 1 s6Step42HeadBank_outgoingOwned
theorem s6Step42HeadGv_Incoming : rowsOwned s6Step42HeadGvBefore [s6Step42HeadGvRow,s6Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42HeadGRow,s6Step42HeadFRow,s6Step42HeadGvRow,s6Step42HeadFvRow] 2 s6Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42HeadGv_Outgoing : rowsOwned s6Step42HeadFvAfter [s6Step42HeadGvOut,s6Step42HeadFvOut] :=
  hmrRows_owned_drop s6Step42HeadFvAfter [s6Step42HeadGOut,s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut] 2 s6Step42HeadBank_outgoingOwned
theorem s6Step42HeadFv_Incoming : rowsOwned s6Step42HeadFvBefore [s6Step42HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step42HeadGRow,s6Step42HeadFRow,s6Step42HeadGvRow,s6Step42HeadFvRow] 3 s6Step42HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step42HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step42HeadFv_Outgoing : rowsOwned s6Step42HeadFvAfter [s6Step42HeadFvOut] :=
  hmrRows_owned_drop s6Step42HeadFvAfter [s6Step42HeadGOut,s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut] 3 s6Step42HeadBank_outgoingOwned
theorem s6Step42HeadBank_rows : planWindowRowsLog s6Step42HeadGBefore [(s6Step42HeadGRow,249),(s6Step42HeadFRow,249),(s6Step42HeadGvRow,35),(s6Step42HeadFvRow,35)] [s6Step42HeadGFresh,s6Step42HeadFFresh,s6Step42HeadGvFresh,s6Step42HeadFvFresh]=
    some (s6Step42HeadFvAfter,[s6Step42HeadGOut,s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut],(growRow 777 s6Step42HeadGFresh ++ (growRow 795 s6Step42HeadFFresh ++ (growRow 775 s6Step42HeadGvFresh ++ (growRow 776 s6Step42HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step42HeadFvAfter [] []=some (s6Step42HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step42HeadFvBefore s6Step42HeadFvAfter s6Step42HeadFvAfter
    s6Step42HeadFvRow s6Step42HeadFvOut 35 s6Step42HeadFvFresh [] [] []
    (growRow 776 s6Step42HeadFvFresh) ([]) s6Step42HeadFv_Incoming s6Step42HeadFv_checked h4 s6Step42HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step42HeadGvBefore s6Step42HeadGvAfter s6Step42HeadFvAfter
    s6Step42HeadGvRow s6Step42HeadGvOut 35 s6Step42HeadGvFresh [(s6Step42HeadFvRow,35)] [s6Step42HeadFvFresh] [s6Step42HeadFvOut]
    (growRow 775 s6Step42HeadGvFresh) ((growRow 776 s6Step42HeadFvFresh ++ [])) s6Step42HeadGv_Incoming s6Step42HeadGv_checked h3 s6Step42HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step42HeadFBefore s6Step42HeadFAfter s6Step42HeadFvAfter
    s6Step42HeadFRow s6Step42HeadFOut 249 s6Step42HeadFFresh [(s6Step42HeadGvRow,35),(s6Step42HeadFvRow,35)] [s6Step42HeadGvFresh,s6Step42HeadFvFresh] [s6Step42HeadGvOut,s6Step42HeadFvOut]
    (growRow 795 s6Step42HeadFFresh) ((growRow 775 s6Step42HeadGvFresh ++ (growRow 776 s6Step42HeadFvFresh ++ []))) s6Step42HeadF_Incoming s6Step42HeadF_checked h2 s6Step42HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step42HeadGBefore s6Step42HeadGAfter s6Step42HeadFvAfter
    s6Step42HeadGRow s6Step42HeadGOut 249 s6Step42HeadGFresh [(s6Step42HeadFRow,249),(s6Step42HeadGvRow,35),(s6Step42HeadFvRow,35)] [s6Step42HeadFFresh,s6Step42HeadGvFresh,s6Step42HeadFvFresh] [s6Step42HeadFOut,s6Step42HeadGvOut,s6Step42HeadFvOut]
    (growRow 777 s6Step42HeadGFresh) ((growRow 795 s6Step42HeadFFresh ++ (growRow 775 s6Step42HeadGvFresh ++ (growRow 776 s6Step42HeadFvFresh ++ [])))) s6Step42HeadG_Incoming s6Step42HeadG_checked h1 s6Step42HeadG_Outgoing
  exact h0
theorem s6Step42HeadBank_checked : compileHmrBankResizeLog .headroom s6Step42HeadGBefore ⟨s6Step42HeadFRow,s6Step42HeadGRow,s6Step42HeadFvRow,s6Step42HeadGvRow⟩ ⟨249,249,35,35⟩ [s6Step42HeadGFresh,s6Step42HeadFFresh,s6Step42HeadGvFresh,s6Step42HeadFvFresh]=
    some (s6Step42HeadFvAfter,⟨s6Step42HeadFOut,s6Step42HeadGOut,s6Step42HeadFvOut,s6Step42HeadGvOut⟩,(growRow 777 s6Step42HeadGFresh ++ (growRow 795 s6Step42HeadFFresh ++ (growRow 775 s6Step42HeadGvFresh ++ (growRow 776 s6Step42HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step42HeadBank_rows]
  rfl
def s6Step43HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 805],777⟩
def s6Step43HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 868],795⟩
def s6Step43HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 875],775⟩
def s6Step43HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 779, 793],776⟩
theorem s6Step43HeadBank_incomingDistinct : ([s6Step43HeadGRow,s6Step43HeadFRow,s6Step43HeadGvRow,s6Step43HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43HeadBank_outgoingOwned : rowsOwned s6Step43HeadFvAfter [s6Step43HeadGOut,s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step43HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43HeadG_Incoming : rowsOwned s6Step43HeadGBefore [s6Step43HeadGRow,s6Step43HeadFRow,s6Step43HeadGvRow,s6Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43HeadGRow,s6Step43HeadFRow,s6Step43HeadGvRow,s6Step43HeadFvRow] 0 s6Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43HeadG_Outgoing : rowsOwned s6Step43HeadFvAfter [s6Step43HeadGOut,s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut] :=
  hmrRows_owned_drop s6Step43HeadFvAfter [s6Step43HeadGOut,s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut] 0 s6Step43HeadBank_outgoingOwned
theorem s6Step43HeadF_Incoming : rowsOwned s6Step43HeadFBefore [s6Step43HeadFRow,s6Step43HeadGvRow,s6Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43HeadGRow,s6Step43HeadFRow,s6Step43HeadGvRow,s6Step43HeadFvRow] 1 s6Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43HeadF_Outgoing : rowsOwned s6Step43HeadFvAfter [s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut] :=
  hmrRows_owned_drop s6Step43HeadFvAfter [s6Step43HeadGOut,s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut] 1 s6Step43HeadBank_outgoingOwned
theorem s6Step43HeadGv_Incoming : rowsOwned s6Step43HeadGvBefore [s6Step43HeadGvRow,s6Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43HeadGRow,s6Step43HeadFRow,s6Step43HeadGvRow,s6Step43HeadFvRow] 2 s6Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43HeadGv_Outgoing : rowsOwned s6Step43HeadFvAfter [s6Step43HeadGvOut,s6Step43HeadFvOut] :=
  hmrRows_owned_drop s6Step43HeadFvAfter [s6Step43HeadGOut,s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut] 2 s6Step43HeadBank_outgoingOwned
theorem s6Step43HeadFv_Incoming : rowsOwned s6Step43HeadFvBefore [s6Step43HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step43HeadGRow,s6Step43HeadFRow,s6Step43HeadGvRow,s6Step43HeadFvRow] 3 s6Step43HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step43HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step43HeadFv_Outgoing : rowsOwned s6Step43HeadFvAfter [s6Step43HeadFvOut] :=
  hmrRows_owned_drop s6Step43HeadFvAfter [s6Step43HeadGOut,s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut] 3 s6Step43HeadBank_outgoingOwned
theorem s6Step43HeadBank_rows : planWindowRowsLog s6Step43HeadGBefore [(s6Step43HeadGRow,248),(s6Step43HeadFRow,248),(s6Step43HeadGvRow,36),(s6Step43HeadFvRow,36)] [s6Step43HeadGFresh,s6Step43HeadFFresh,s6Step43HeadGvFresh,s6Step43HeadFvFresh]=
    some (s6Step43HeadFvAfter,[s6Step43HeadGOut,s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut],(growRow 777 s6Step43HeadGFresh ++ (growRow 795 s6Step43HeadFFresh ++ (growRow 775 s6Step43HeadGvFresh ++ (growRow 776 s6Step43HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step43HeadFvAfter [] []=some (s6Step43HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step43HeadFvBefore s6Step43HeadFvAfter s6Step43HeadFvAfter
    s6Step43HeadFvRow s6Step43HeadFvOut 36 s6Step43HeadFvFresh [] [] []
    (growRow 776 s6Step43HeadFvFresh) ([]) s6Step43HeadFv_Incoming s6Step43HeadFv_checked h4 s6Step43HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step43HeadGvBefore s6Step43HeadGvAfter s6Step43HeadFvAfter
    s6Step43HeadGvRow s6Step43HeadGvOut 36 s6Step43HeadGvFresh [(s6Step43HeadFvRow,36)] [s6Step43HeadFvFresh] [s6Step43HeadFvOut]
    (growRow 775 s6Step43HeadGvFresh) ((growRow 776 s6Step43HeadFvFresh ++ [])) s6Step43HeadGv_Incoming s6Step43HeadGv_checked h3 s6Step43HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step43HeadFBefore s6Step43HeadFAfter s6Step43HeadFvAfter
    s6Step43HeadFRow s6Step43HeadFOut 248 s6Step43HeadFFresh [(s6Step43HeadGvRow,36),(s6Step43HeadFvRow,36)] [s6Step43HeadGvFresh,s6Step43HeadFvFresh] [s6Step43HeadGvOut,s6Step43HeadFvOut]
    (growRow 795 s6Step43HeadFFresh) ((growRow 775 s6Step43HeadGvFresh ++ (growRow 776 s6Step43HeadFvFresh ++ []))) s6Step43HeadF_Incoming s6Step43HeadF_checked h2 s6Step43HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step43HeadGBefore s6Step43HeadGAfter s6Step43HeadFvAfter
    s6Step43HeadGRow s6Step43HeadGOut 248 s6Step43HeadGFresh [(s6Step43HeadFRow,248),(s6Step43HeadGvRow,36),(s6Step43HeadFvRow,36)] [s6Step43HeadFFresh,s6Step43HeadGvFresh,s6Step43HeadFvFresh] [s6Step43HeadFOut,s6Step43HeadGvOut,s6Step43HeadFvOut]
    (growRow 777 s6Step43HeadGFresh) ((growRow 795 s6Step43HeadFFresh ++ (growRow 775 s6Step43HeadGvFresh ++ (growRow 776 s6Step43HeadFvFresh ++ [])))) s6Step43HeadG_Incoming s6Step43HeadG_checked h1 s6Step43HeadG_Outgoing
  exact h0
theorem s6Step43HeadBank_checked : compileHmrBankResizeLog .headroom s6Step43HeadGBefore ⟨s6Step43HeadFRow,s6Step43HeadGRow,s6Step43HeadFvRow,s6Step43HeadGvRow⟩ ⟨248,248,36,36⟩ [s6Step43HeadGFresh,s6Step43HeadFFresh,s6Step43HeadGvFresh,s6Step43HeadFvFresh]=
    some (s6Step43HeadFvAfter,⟨s6Step43HeadFOut,s6Step43HeadGOut,s6Step43HeadFvOut,s6Step43HeadGvOut⟩,(growRow 777 s6Step43HeadGFresh ++ (growRow 795 s6Step43HeadFFresh ++ (growRow 775 s6Step43HeadGvFresh ++ (growRow 776 s6Step43HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step43HeadBank_rows]
  rfl
def s6Step44HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 796],777⟩
def s6Step44HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 875],795⟩
def s6Step44HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 779],775⟩
def s6Step44HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 793],776⟩
theorem s6Step44HeadBank_incomingDistinct : ([s6Step44HeadGRow,s6Step44HeadFRow,s6Step44HeadGvRow,s6Step44HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44HeadBank_outgoingOwned : rowsOwned s6Step44HeadFvAfter [s6Step44HeadGOut,s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step44HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44HeadG_Incoming : rowsOwned s6Step44HeadGBefore [s6Step44HeadGRow,s6Step44HeadFRow,s6Step44HeadGvRow,s6Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44HeadGRow,s6Step44HeadFRow,s6Step44HeadGvRow,s6Step44HeadFvRow] 0 s6Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44HeadG_Outgoing : rowsOwned s6Step44HeadFvAfter [s6Step44HeadGOut,s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut] :=
  hmrRows_owned_drop s6Step44HeadFvAfter [s6Step44HeadGOut,s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut] 0 s6Step44HeadBank_outgoingOwned
theorem s6Step44HeadF_Incoming : rowsOwned s6Step44HeadFBefore [s6Step44HeadFRow,s6Step44HeadGvRow,s6Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44HeadGRow,s6Step44HeadFRow,s6Step44HeadGvRow,s6Step44HeadFvRow] 1 s6Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44HeadFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44HeadF_Outgoing : rowsOwned s6Step44HeadFvAfter [s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut] :=
  hmrRows_owned_drop s6Step44HeadFvAfter [s6Step44HeadGOut,s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut] 1 s6Step44HeadBank_outgoingOwned
theorem s6Step44HeadGv_Incoming : rowsOwned s6Step44HeadGvBefore [s6Step44HeadGvRow,s6Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44HeadGRow,s6Step44HeadFRow,s6Step44HeadGvRow,s6Step44HeadFvRow] 2 s6Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44HeadGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44HeadGv_Outgoing : rowsOwned s6Step44HeadFvAfter [s6Step44HeadGvOut,s6Step44HeadFvOut] :=
  hmrRows_owned_drop s6Step44HeadFvAfter [s6Step44HeadGOut,s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut] 2 s6Step44HeadBank_outgoingOwned
theorem s6Step44HeadFv_Incoming : rowsOwned s6Step44HeadFvBefore [s6Step44HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step44HeadGRow,s6Step44HeadFRow,s6Step44HeadGvRow,s6Step44HeadFvRow] 3 s6Step44HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step44HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step44HeadFv_Outgoing : rowsOwned s6Step44HeadFvAfter [s6Step44HeadFvOut] :=
  hmrRows_owned_drop s6Step44HeadFvAfter [s6Step44HeadGOut,s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut] 3 s6Step44HeadBank_outgoingOwned
theorem s6Step44HeadBank_rows : planWindowRowsLog s6Step44HeadGBefore [(s6Step44HeadGRow,247),(s6Step44HeadFRow,247),(s6Step44HeadGvRow,36),(s6Step44HeadFvRow,36)] [s6Step44HeadGFresh,s6Step44HeadFFresh,s6Step44HeadGvFresh,s6Step44HeadFvFresh]=
    some (s6Step44HeadFvAfter,[s6Step44HeadGOut,s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut],(growRow 777 s6Step44HeadGFresh ++ (growRow 795 s6Step44HeadFFresh ++ (growRow 775 s6Step44HeadGvFresh ++ (growRow 776 s6Step44HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step44HeadFvAfter [] []=some (s6Step44HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step44HeadFvBefore s6Step44HeadFvAfter s6Step44HeadFvAfter
    s6Step44HeadFvRow s6Step44HeadFvOut 36 s6Step44HeadFvFresh [] [] []
    (growRow 776 s6Step44HeadFvFresh) ([]) s6Step44HeadFv_Incoming s6Step44HeadFv_checked h4 s6Step44HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step44HeadGvBefore s6Step44HeadGvAfter s6Step44HeadFvAfter
    s6Step44HeadGvRow s6Step44HeadGvOut 36 s6Step44HeadGvFresh [(s6Step44HeadFvRow,36)] [s6Step44HeadFvFresh] [s6Step44HeadFvOut]
    (growRow 775 s6Step44HeadGvFresh) ((growRow 776 s6Step44HeadFvFresh ++ [])) s6Step44HeadGv_Incoming s6Step44HeadGv_checked h3 s6Step44HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step44HeadFBefore s6Step44HeadFAfter s6Step44HeadFvAfter
    s6Step44HeadFRow s6Step44HeadFOut 247 s6Step44HeadFFresh [(s6Step44HeadGvRow,36),(s6Step44HeadFvRow,36)] [s6Step44HeadGvFresh,s6Step44HeadFvFresh] [s6Step44HeadGvOut,s6Step44HeadFvOut]
    (growRow 795 s6Step44HeadFFresh) ((growRow 775 s6Step44HeadGvFresh ++ (growRow 776 s6Step44HeadFvFresh ++ []))) s6Step44HeadF_Incoming s6Step44HeadF_checked h2 s6Step44HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step44HeadGBefore s6Step44HeadGAfter s6Step44HeadFvAfter
    s6Step44HeadGRow s6Step44HeadGOut 247 s6Step44HeadGFresh [(s6Step44HeadFRow,247),(s6Step44HeadGvRow,36),(s6Step44HeadFvRow,36)] [s6Step44HeadFFresh,s6Step44HeadGvFresh,s6Step44HeadFvFresh] [s6Step44HeadFOut,s6Step44HeadGvOut,s6Step44HeadFvOut]
    (growRow 777 s6Step44HeadGFresh) ((growRow 795 s6Step44HeadFFresh ++ (growRow 775 s6Step44HeadGvFresh ++ (growRow 776 s6Step44HeadFvFresh ++ [])))) s6Step44HeadG_Incoming s6Step44HeadG_checked h1 s6Step44HeadG_Outgoing
  exact h0
theorem s6Step44HeadBank_checked : compileHmrBankResizeLog .headroom s6Step44HeadGBefore ⟨s6Step44HeadFRow,s6Step44HeadGRow,s6Step44HeadFvRow,s6Step44HeadGvRow⟩ ⟨247,247,36,36⟩ [s6Step44HeadGFresh,s6Step44HeadFFresh,s6Step44HeadGvFresh,s6Step44HeadFvFresh]=
    some (s6Step44HeadFvAfter,⟨s6Step44HeadFOut,s6Step44HeadGOut,s6Step44HeadFvOut,s6Step44HeadGvOut⟩,(growRow 777 s6Step44HeadGFresh ++ (growRow 795 s6Step44HeadFFresh ++ (growRow 775 s6Step44HeadGvFresh ++ (growRow 776 s6Step44HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step44HeadBank_rows]
  rfl
def s6Step45HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 873, 779],777⟩
def s6Step45HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 793],795⟩
def s6Step45HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 875],775⟩
def s6Step45HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796],776⟩
theorem s6Step45HeadBank_incomingDistinct : ([s6Step45HeadGRow,s6Step45HeadFRow,s6Step45HeadGvRow,s6Step45HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45HeadBank_outgoingOwned : rowsOwned s6Step45HeadFvAfter [s6Step45HeadGOut,s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step45HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45HeadG_Incoming : rowsOwned s6Step45HeadGBefore [s6Step45HeadGRow,s6Step45HeadFRow,s6Step45HeadGvRow,s6Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45HeadGRow,s6Step45HeadFRow,s6Step45HeadGvRow,s6Step45HeadFvRow] 0 s6Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45HeadG_Outgoing : rowsOwned s6Step45HeadFvAfter [s6Step45HeadGOut,s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut] :=
  hmrRows_owned_drop s6Step45HeadFvAfter [s6Step45HeadGOut,s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut] 0 s6Step45HeadBank_outgoingOwned
theorem s6Step45HeadF_Incoming : rowsOwned s6Step45HeadFBefore [s6Step45HeadFRow,s6Step45HeadGvRow,s6Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45HeadGRow,s6Step45HeadFRow,s6Step45HeadGvRow,s6Step45HeadFvRow] 1 s6Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45HeadF_Outgoing : rowsOwned s6Step45HeadFvAfter [s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut] :=
  hmrRows_owned_drop s6Step45HeadFvAfter [s6Step45HeadGOut,s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut] 1 s6Step45HeadBank_outgoingOwned
theorem s6Step45HeadGv_Incoming : rowsOwned s6Step45HeadGvBefore [s6Step45HeadGvRow,s6Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45HeadGRow,s6Step45HeadFRow,s6Step45HeadGvRow,s6Step45HeadFvRow] 2 s6Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(793,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45HeadGv_Outgoing : rowsOwned s6Step45HeadFvAfter [s6Step45HeadGvOut,s6Step45HeadFvOut] :=
  hmrRows_owned_drop s6Step45HeadFvAfter [s6Step45HeadGOut,s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut] 2 s6Step45HeadBank_outgoingOwned
theorem s6Step45HeadFv_Incoming : rowsOwned s6Step45HeadFvBefore [s6Step45HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step45HeadGRow,s6Step45HeadFRow,s6Step45HeadGvRow,s6Step45HeadFvRow] 3 s6Step45HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step45HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step45HeadFv_Outgoing : rowsOwned s6Step45HeadFvAfter [s6Step45HeadFvOut] :=
  hmrRows_owned_drop s6Step45HeadFvAfter [s6Step45HeadGOut,s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut] 3 s6Step45HeadBank_outgoingOwned
theorem s6Step45HeadBank_rows : planWindowRowsLog s6Step45HeadGBefore [(s6Step45HeadGRow,247),(s6Step45HeadFRow,247),(s6Step45HeadGvRow,36),(s6Step45HeadFvRow,36)] [s6Step45HeadGFresh,s6Step45HeadFFresh,s6Step45HeadGvFresh,s6Step45HeadFvFresh]=
    some (s6Step45HeadFvAfter,[s6Step45HeadGOut,s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut],(growRow 777 s6Step45HeadGFresh ++ (growRow 795 s6Step45HeadFFresh ++ (growRow 775 s6Step45HeadGvFresh ++ (growRow 776 s6Step45HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step45HeadFvAfter [] []=some (s6Step45HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step45HeadFvBefore s6Step45HeadFvAfter s6Step45HeadFvAfter
    s6Step45HeadFvRow s6Step45HeadFvOut 36 s6Step45HeadFvFresh [] [] []
    (growRow 776 s6Step45HeadFvFresh) ([]) s6Step45HeadFv_Incoming s6Step45HeadFv_checked h4 s6Step45HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step45HeadGvBefore s6Step45HeadGvAfter s6Step45HeadFvAfter
    s6Step45HeadGvRow s6Step45HeadGvOut 36 s6Step45HeadGvFresh [(s6Step45HeadFvRow,36)] [s6Step45HeadFvFresh] [s6Step45HeadFvOut]
    (growRow 775 s6Step45HeadGvFresh) ((growRow 776 s6Step45HeadFvFresh ++ [])) s6Step45HeadGv_Incoming s6Step45HeadGv_checked h3 s6Step45HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step45HeadFBefore s6Step45HeadFAfter s6Step45HeadFvAfter
    s6Step45HeadFRow s6Step45HeadFOut 247 s6Step45HeadFFresh [(s6Step45HeadGvRow,36),(s6Step45HeadFvRow,36)] [s6Step45HeadGvFresh,s6Step45HeadFvFresh] [s6Step45HeadGvOut,s6Step45HeadFvOut]
    (growRow 795 s6Step45HeadFFresh) ((growRow 775 s6Step45HeadGvFresh ++ (growRow 776 s6Step45HeadFvFresh ++ []))) s6Step45HeadF_Incoming s6Step45HeadF_checked h2 s6Step45HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step45HeadGBefore s6Step45HeadGAfter s6Step45HeadFvAfter
    s6Step45HeadGRow s6Step45HeadGOut 247 s6Step45HeadGFresh [(s6Step45HeadFRow,247),(s6Step45HeadGvRow,36),(s6Step45HeadFvRow,36)] [s6Step45HeadFFresh,s6Step45HeadGvFresh,s6Step45HeadFvFresh] [s6Step45HeadFOut,s6Step45HeadGvOut,s6Step45HeadFvOut]
    (growRow 777 s6Step45HeadGFresh) ((growRow 795 s6Step45HeadFFresh ++ (growRow 775 s6Step45HeadGvFresh ++ (growRow 776 s6Step45HeadFvFresh ++ [])))) s6Step45HeadG_Incoming s6Step45HeadG_checked h1 s6Step45HeadG_Outgoing
  exact h0
theorem s6Step45HeadBank_checked : compileHmrBankResizeLog .headroom s6Step45HeadGBefore ⟨s6Step45HeadFRow,s6Step45HeadGRow,s6Step45HeadFvRow,s6Step45HeadGvRow⟩ ⟨247,247,36,36⟩ [s6Step45HeadGFresh,s6Step45HeadFFresh,s6Step45HeadGvFresh,s6Step45HeadFvFresh]=
    some (s6Step45HeadFvAfter,⟨s6Step45HeadFOut,s6Step45HeadGOut,s6Step45HeadFvOut,s6Step45HeadGvOut⟩,(growRow 777 s6Step45HeadGFresh ++ (growRow 795 s6Step45HeadFFresh ++ (growRow 775 s6Step45HeadGvFresh ++ (growRow 776 s6Step45HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step45HeadBank_rows]
  rfl
def s6Step46HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 875],777⟩
def s6Step46HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 793],795⟩
def s6Step46HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873],775⟩
def s6Step46HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779],776⟩
theorem s6Step46HeadBank_incomingDistinct : ([s6Step46HeadGRow,s6Step46HeadFRow,s6Step46HeadGvRow,s6Step46HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46HeadBank_outgoingOwned : rowsOwned s6Step46HeadFvAfter [s6Step46HeadGOut,s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step46HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46HeadG_Incoming : rowsOwned s6Step46HeadGBefore [s6Step46HeadGRow,s6Step46HeadFRow,s6Step46HeadGvRow,s6Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46HeadGRow,s6Step46HeadFRow,s6Step46HeadGvRow,s6Step46HeadFvRow] 0 s6Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46HeadG_Outgoing : rowsOwned s6Step46HeadFvAfter [s6Step46HeadGOut,s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut] :=
  hmrRows_owned_drop s6Step46HeadFvAfter [s6Step46HeadGOut,s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut] 0 s6Step46HeadBank_outgoingOwned
theorem s6Step46HeadF_Incoming : rowsOwned s6Step46HeadFBefore [s6Step46HeadFRow,s6Step46HeadGvRow,s6Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46HeadGRow,s6Step46HeadFRow,s6Step46HeadGvRow,s6Step46HeadFvRow] 1 s6Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46HeadFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46HeadF_Outgoing : rowsOwned s6Step46HeadFvAfter [s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut] :=
  hmrRows_owned_drop s6Step46HeadFvAfter [s6Step46HeadGOut,s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut] 1 s6Step46HeadBank_outgoingOwned
theorem s6Step46HeadGv_Incoming : rowsOwned s6Step46HeadGvBefore [s6Step46HeadGvRow,s6Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46HeadGRow,s6Step46HeadFRow,s6Step46HeadGvRow,s6Step46HeadFvRow] 2 s6Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46HeadGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46HeadGv_Outgoing : rowsOwned s6Step46HeadFvAfter [s6Step46HeadGvOut,s6Step46HeadFvOut] :=
  hmrRows_owned_drop s6Step46HeadFvAfter [s6Step46HeadGOut,s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut] 2 s6Step46HeadBank_outgoingOwned
theorem s6Step46HeadFv_Incoming : rowsOwned s6Step46HeadFvBefore [s6Step46HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step46HeadGRow,s6Step46HeadFRow,s6Step46HeadGvRow,s6Step46HeadFvRow] 3 s6Step46HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step46HeadFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step46HeadFv_Outgoing : rowsOwned s6Step46HeadFvAfter [s6Step46HeadFvOut] :=
  hmrRows_owned_drop s6Step46HeadFvAfter [s6Step46HeadGOut,s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut] 3 s6Step46HeadBank_outgoingOwned
theorem s6Step46HeadBank_rows : planWindowRowsLog s6Step46HeadGBefore [(s6Step46HeadGRow,246),(s6Step46HeadFRow,246),(s6Step46HeadGvRow,37),(s6Step46HeadFvRow,37)] [s6Step46HeadGFresh,s6Step46HeadFFresh,s6Step46HeadGvFresh,s6Step46HeadFvFresh]=
    some (s6Step46HeadFvAfter,[s6Step46HeadGOut,s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut],(growRow 777 s6Step46HeadGFresh ++ (growRow 795 s6Step46HeadFFresh ++ (growRow 775 s6Step46HeadGvFresh ++ (growRow 776 s6Step46HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step46HeadFvAfter [] []=some (s6Step46HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step46HeadFvBefore s6Step46HeadFvAfter s6Step46HeadFvAfter
    s6Step46HeadFvRow s6Step46HeadFvOut 37 s6Step46HeadFvFresh [] [] []
    (growRow 776 s6Step46HeadFvFresh) ([]) s6Step46HeadFv_Incoming s6Step46HeadFv_checked h4 s6Step46HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step46HeadGvBefore s6Step46HeadGvAfter s6Step46HeadFvAfter
    s6Step46HeadGvRow s6Step46HeadGvOut 37 s6Step46HeadGvFresh [(s6Step46HeadFvRow,37)] [s6Step46HeadFvFresh] [s6Step46HeadFvOut]
    (growRow 775 s6Step46HeadGvFresh) ((growRow 776 s6Step46HeadFvFresh ++ [])) s6Step46HeadGv_Incoming s6Step46HeadGv_checked h3 s6Step46HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step46HeadFBefore s6Step46HeadFAfter s6Step46HeadFvAfter
    s6Step46HeadFRow s6Step46HeadFOut 246 s6Step46HeadFFresh [(s6Step46HeadGvRow,37),(s6Step46HeadFvRow,37)] [s6Step46HeadGvFresh,s6Step46HeadFvFresh] [s6Step46HeadGvOut,s6Step46HeadFvOut]
    (growRow 795 s6Step46HeadFFresh) ((growRow 775 s6Step46HeadGvFresh ++ (growRow 776 s6Step46HeadFvFresh ++ []))) s6Step46HeadF_Incoming s6Step46HeadF_checked h2 s6Step46HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step46HeadGBefore s6Step46HeadGAfter s6Step46HeadFvAfter
    s6Step46HeadGRow s6Step46HeadGOut 246 s6Step46HeadGFresh [(s6Step46HeadFRow,246),(s6Step46HeadGvRow,37),(s6Step46HeadFvRow,37)] [s6Step46HeadFFresh,s6Step46HeadGvFresh,s6Step46HeadFvFresh] [s6Step46HeadFOut,s6Step46HeadGvOut,s6Step46HeadFvOut]
    (growRow 777 s6Step46HeadGFresh) ((growRow 795 s6Step46HeadFFresh ++ (growRow 775 s6Step46HeadGvFresh ++ (growRow 776 s6Step46HeadFvFresh ++ [])))) s6Step46HeadG_Incoming s6Step46HeadG_checked h1 s6Step46HeadG_Outgoing
  exact h0
theorem s6Step46HeadBank_checked : compileHmrBankResizeLog .headroom s6Step46HeadGBefore ⟨s6Step46HeadFRow,s6Step46HeadGRow,s6Step46HeadFvRow,s6Step46HeadGvRow⟩ ⟨246,246,37,37⟩ [s6Step46HeadGFresh,s6Step46HeadFFresh,s6Step46HeadGvFresh,s6Step46HeadFvFresh]=
    some (s6Step46HeadFvAfter,⟨s6Step46HeadFOut,s6Step46HeadGOut,s6Step46HeadFvOut,s6Step46HeadGvOut⟩,(growRow 777 s6Step46HeadGFresh ++ (growRow 795 s6Step46HeadFFresh ++ (growRow 775 s6Step46HeadGvFresh ++ (growRow 776 s6Step46HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step46HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
