import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceHeadroomBankChunk6

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step47HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 823],777⟩
def s6Step47HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 865],795⟩
def s6Step47HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873],775⟩
def s6Step47HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779],776⟩
theorem s6Step47HeadBank_incomingDistinct : ([s6Step47HeadGRow,s6Step47HeadFRow,s6Step47HeadGvRow,s6Step47HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step47HeadBank_outgoingOwned : rowsOwned s6Step47HeadFvAfter [s6Step47HeadGOut,s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step47HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47HeadG_Incoming : rowsOwned s6Step47HeadGBefore [s6Step47HeadGRow,s6Step47HeadFRow,s6Step47HeadGvRow,s6Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47HeadGRow,s6Step47HeadFRow,s6Step47HeadGvRow,s6Step47HeadFvRow] 0 s6Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47HeadGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47HeadG_Outgoing : rowsOwned s6Step47HeadFvAfter [s6Step47HeadGOut,s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut] :=
  hmrRows_owned_drop s6Step47HeadFvAfter [s6Step47HeadGOut,s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut] 0 s6Step47HeadBank_outgoingOwned
theorem s6Step47HeadF_Incoming : rowsOwned s6Step47HeadFBefore [s6Step47HeadFRow,s6Step47HeadGvRow,s6Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47HeadGRow,s6Step47HeadFRow,s6Step47HeadGvRow,s6Step47HeadFvRow] 1 s6Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47HeadFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47HeadF_Outgoing : rowsOwned s6Step47HeadFvAfter [s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut] :=
  hmrRows_owned_drop s6Step47HeadFvAfter [s6Step47HeadGOut,s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut] 1 s6Step47HeadBank_outgoingOwned
theorem s6Step47HeadGv_Incoming : rowsOwned s6Step47HeadGvBefore [s6Step47HeadGvRow,s6Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47HeadGRow,s6Step47HeadFRow,s6Step47HeadGvRow,s6Step47HeadFvRow] 2 s6Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47HeadGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47HeadGv_Outgoing : rowsOwned s6Step47HeadFvAfter [s6Step47HeadGvOut,s6Step47HeadFvOut] :=
  hmrRows_owned_drop s6Step47HeadFvAfter [s6Step47HeadGOut,s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut] 2 s6Step47HeadBank_outgoingOwned
theorem s6Step47HeadFv_Incoming : rowsOwned s6Step47HeadFvBefore [s6Step47HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47HeadGRow,s6Step47HeadFRow,s6Step47HeadGvRow,s6Step47HeadFvRow] 3 s6Step47HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47HeadFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47HeadFv_Outgoing : rowsOwned s6Step47HeadFvAfter [s6Step47HeadFvOut] :=
  hmrRows_owned_drop s6Step47HeadFvAfter [s6Step47HeadGOut,s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut] 3 s6Step47HeadBank_outgoingOwned
theorem s6Step47HeadBank_rows : planWindowRowsLog s6Step47HeadGBefore [(s6Step47HeadGRow,245),(s6Step47HeadFRow,245),(s6Step47HeadGvRow,37),(s6Step47HeadFvRow,37)] [s6Step47HeadGFresh,s6Step47HeadFFresh,s6Step47HeadGvFresh,s6Step47HeadFvFresh]=
    some (s6Step47HeadFvAfter,[s6Step47HeadGOut,s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut],(growRow 777 s6Step47HeadGFresh ++ (growRow 795 s6Step47HeadFFresh ++ (growRow 775 s6Step47HeadGvFresh ++ (growRow 776 s6Step47HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step47HeadFvAfter [] []=some (s6Step47HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step47HeadFvBefore s6Step47HeadFvAfter s6Step47HeadFvAfter
    s6Step47HeadFvRow s6Step47HeadFvOut 37 s6Step47HeadFvFresh [] [] []
    (growRow 776 s6Step47HeadFvFresh) ([]) s6Step47HeadFv_Incoming s6Step47HeadFv_checked h4 s6Step47HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step47HeadGvBefore s6Step47HeadGvAfter s6Step47HeadFvAfter
    s6Step47HeadGvRow s6Step47HeadGvOut 37 s6Step47HeadGvFresh [(s6Step47HeadFvRow,37)] [s6Step47HeadFvFresh] [s6Step47HeadFvOut]
    (growRow 775 s6Step47HeadGvFresh) ((growRow 776 s6Step47HeadFvFresh ++ [])) s6Step47HeadGv_Incoming s6Step47HeadGv_checked h3 s6Step47HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step47HeadFBefore s6Step47HeadFAfter s6Step47HeadFvAfter
    s6Step47HeadFRow s6Step47HeadFOut 245 s6Step47HeadFFresh [(s6Step47HeadGvRow,37),(s6Step47HeadFvRow,37)] [s6Step47HeadGvFresh,s6Step47HeadFvFresh] [s6Step47HeadGvOut,s6Step47HeadFvOut]
    (growRow 795 s6Step47HeadFFresh) ((growRow 775 s6Step47HeadGvFresh ++ (growRow 776 s6Step47HeadFvFresh ++ []))) s6Step47HeadF_Incoming s6Step47HeadF_checked h2 s6Step47HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step47HeadGBefore s6Step47HeadGAfter s6Step47HeadFvAfter
    s6Step47HeadGRow s6Step47HeadGOut 245 s6Step47HeadGFresh [(s6Step47HeadFRow,245),(s6Step47HeadGvRow,37),(s6Step47HeadFvRow,37)] [s6Step47HeadFFresh,s6Step47HeadGvFresh,s6Step47HeadFvFresh] [s6Step47HeadFOut,s6Step47HeadGvOut,s6Step47HeadFvOut]
    (growRow 777 s6Step47HeadGFresh) ((growRow 795 s6Step47HeadFFresh ++ (growRow 775 s6Step47HeadGvFresh ++ (growRow 776 s6Step47HeadFvFresh ++ [])))) s6Step47HeadG_Incoming s6Step47HeadG_checked h1 s6Step47HeadG_Outgoing
  exact h0
theorem s6Step47HeadBank_checked : compileHmrBankResizeLog .headroom s6Step47HeadGBefore ⟨s6Step47HeadFRow,s6Step47HeadGRow,s6Step47HeadFvRow,s6Step47HeadGvRow⟩ ⟨245,245,37,37⟩ [s6Step47HeadGFresh,s6Step47HeadFFresh,s6Step47HeadGvFresh,s6Step47HeadFvFresh]=
    some (s6Step47HeadFvAfter,⟨s6Step47HeadFOut,s6Step47HeadGOut,s6Step47HeadFvOut,s6Step47HeadGvOut⟩,(growRow 777 s6Step47HeadGFresh ++ (growRow 795 s6Step47HeadFFresh ++ (growRow 775 s6Step47HeadGvFresh ++ (growRow 776 s6Step47HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step47HeadBank_rows]
  rfl
def s6Step48HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 865],777⟩
def s6Step48HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 823],795⟩
def s6Step48HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 793],775⟩
def s6Step48HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 875],776⟩
theorem s6Step48HeadBank_incomingDistinct : ([s6Step48HeadGRow,s6Step48HeadFRow,s6Step48HeadGvRow,s6Step48HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step48HeadBank_outgoingOwned : rowsOwned s6Step48HeadFvAfter [s6Step48HeadGOut,s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step48HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48HeadG_Incoming : rowsOwned s6Step48HeadGBefore [s6Step48HeadGRow,s6Step48HeadFRow,s6Step48HeadGvRow,s6Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48HeadGRow,s6Step48HeadFRow,s6Step48HeadGvRow,s6Step48HeadFvRow] 0 s6Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48HeadG_Outgoing : rowsOwned s6Step48HeadFvAfter [s6Step48HeadGOut,s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut] :=
  hmrRows_owned_drop s6Step48HeadFvAfter [s6Step48HeadGOut,s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut] 0 s6Step48HeadBank_outgoingOwned
theorem s6Step48HeadF_Incoming : rowsOwned s6Step48HeadFBefore [s6Step48HeadFRow,s6Step48HeadGvRow,s6Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48HeadGRow,s6Step48HeadFRow,s6Step48HeadGvRow,s6Step48HeadFvRow] 1 s6Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48HeadF_Outgoing : rowsOwned s6Step48HeadFvAfter [s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut] :=
  hmrRows_owned_drop s6Step48HeadFvAfter [s6Step48HeadGOut,s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut] 1 s6Step48HeadBank_outgoingOwned
theorem s6Step48HeadGv_Incoming : rowsOwned s6Step48HeadGvBefore [s6Step48HeadGvRow,s6Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48HeadGRow,s6Step48HeadFRow,s6Step48HeadGvRow,s6Step48HeadFvRow] 2 s6Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48HeadGv_Outgoing : rowsOwned s6Step48HeadFvAfter [s6Step48HeadGvOut,s6Step48HeadFvOut] :=
  hmrRows_owned_drop s6Step48HeadFvAfter [s6Step48HeadGOut,s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut] 2 s6Step48HeadBank_outgoingOwned
theorem s6Step48HeadFv_Incoming : rowsOwned s6Step48HeadFvBefore [s6Step48HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48HeadGRow,s6Step48HeadFRow,s6Step48HeadGvRow,s6Step48HeadFvRow] 3 s6Step48HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48HeadFv_Outgoing : rowsOwned s6Step48HeadFvAfter [s6Step48HeadFvOut] :=
  hmrRows_owned_drop s6Step48HeadFvAfter [s6Step48HeadGOut,s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut] 3 s6Step48HeadBank_outgoingOwned
theorem s6Step48HeadBank_rows : planWindowRowsLog s6Step48HeadGBefore [(s6Step48HeadGRow,245),(s6Step48HeadFRow,245),(s6Step48HeadGvRow,38),(s6Step48HeadFvRow,38)] [s6Step48HeadGFresh,s6Step48HeadFFresh,s6Step48HeadGvFresh,s6Step48HeadFvFresh]=
    some (s6Step48HeadFvAfter,[s6Step48HeadGOut,s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut],(growRow 777 s6Step48HeadGFresh ++ (growRow 795 s6Step48HeadFFresh ++ (growRow 775 s6Step48HeadGvFresh ++ (growRow 776 s6Step48HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step48HeadFvAfter [] []=some (s6Step48HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step48HeadFvBefore s6Step48HeadFvAfter s6Step48HeadFvAfter
    s6Step48HeadFvRow s6Step48HeadFvOut 38 s6Step48HeadFvFresh [] [] []
    (growRow 776 s6Step48HeadFvFresh) ([]) s6Step48HeadFv_Incoming s6Step48HeadFv_checked h4 s6Step48HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step48HeadGvBefore s6Step48HeadGvAfter s6Step48HeadFvAfter
    s6Step48HeadGvRow s6Step48HeadGvOut 38 s6Step48HeadGvFresh [(s6Step48HeadFvRow,38)] [s6Step48HeadFvFresh] [s6Step48HeadFvOut]
    (growRow 775 s6Step48HeadGvFresh) ((growRow 776 s6Step48HeadFvFresh ++ [])) s6Step48HeadGv_Incoming s6Step48HeadGv_checked h3 s6Step48HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step48HeadFBefore s6Step48HeadFAfter s6Step48HeadFvAfter
    s6Step48HeadFRow s6Step48HeadFOut 245 s6Step48HeadFFresh [(s6Step48HeadGvRow,38),(s6Step48HeadFvRow,38)] [s6Step48HeadGvFresh,s6Step48HeadFvFresh] [s6Step48HeadGvOut,s6Step48HeadFvOut]
    (growRow 795 s6Step48HeadFFresh) ((growRow 775 s6Step48HeadGvFresh ++ (growRow 776 s6Step48HeadFvFresh ++ []))) s6Step48HeadF_Incoming s6Step48HeadF_checked h2 s6Step48HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step48HeadGBefore s6Step48HeadGAfter s6Step48HeadFvAfter
    s6Step48HeadGRow s6Step48HeadGOut 245 s6Step48HeadGFresh [(s6Step48HeadFRow,245),(s6Step48HeadGvRow,38),(s6Step48HeadFvRow,38)] [s6Step48HeadFFresh,s6Step48HeadGvFresh,s6Step48HeadFvFresh] [s6Step48HeadFOut,s6Step48HeadGvOut,s6Step48HeadFvOut]
    (growRow 777 s6Step48HeadGFresh) ((growRow 795 s6Step48HeadFFresh ++ (growRow 775 s6Step48HeadGvFresh ++ (growRow 776 s6Step48HeadFvFresh ++ [])))) s6Step48HeadG_Incoming s6Step48HeadG_checked h1 s6Step48HeadG_Outgoing
  exact h0
theorem s6Step48HeadBank_checked : compileHmrBankResizeLog .headroom s6Step48HeadGBefore ⟨s6Step48HeadFRow,s6Step48HeadGRow,s6Step48HeadFvRow,s6Step48HeadGvRow⟩ ⟨245,245,38,38⟩ [s6Step48HeadGFresh,s6Step48HeadFFresh,s6Step48HeadGvFresh,s6Step48HeadFvFresh]=
    some (s6Step48HeadFvAfter,⟨s6Step48HeadFOut,s6Step48HeadGOut,s6Step48HeadFvOut,s6Step48HeadGvOut⟩,(growRow 777 s6Step48HeadGFresh ++ (growRow 795 s6Step48HeadFFresh ++ (growRow 775 s6Step48HeadGvFresh ++ (growRow 776 s6Step48HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step48HeadBank_rows]
  rfl
def s6Step49HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 863, 793],777⟩
def s6Step49HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 875],795⟩
def s6Step49HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 823],775⟩
def s6Step49HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865],776⟩
theorem s6Step49HeadBank_incomingDistinct : ([s6Step49HeadGRow,s6Step49HeadFRow,s6Step49HeadGvRow,s6Step49HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step49HeadBank_outgoingOwned : rowsOwned s6Step49HeadFvAfter [s6Step49HeadGOut,s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step49HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49HeadG_Incoming : rowsOwned s6Step49HeadGBefore [s6Step49HeadGRow,s6Step49HeadFRow,s6Step49HeadGvRow,s6Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49HeadGRow,s6Step49HeadFRow,s6Step49HeadGvRow,s6Step49HeadFvRow] 0 s6Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49HeadG_Outgoing : rowsOwned s6Step49HeadFvAfter [s6Step49HeadGOut,s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut] :=
  hmrRows_owned_drop s6Step49HeadFvAfter [s6Step49HeadGOut,s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut] 0 s6Step49HeadBank_outgoingOwned
theorem s6Step49HeadF_Incoming : rowsOwned s6Step49HeadFBefore [s6Step49HeadFRow,s6Step49HeadGvRow,s6Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49HeadGRow,s6Step49HeadFRow,s6Step49HeadGvRow,s6Step49HeadFvRow] 1 s6Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49HeadF_Outgoing : rowsOwned s6Step49HeadFvAfter [s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut] :=
  hmrRows_owned_drop s6Step49HeadFvAfter [s6Step49HeadGOut,s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut] 1 s6Step49HeadBank_outgoingOwned
theorem s6Step49HeadGv_Incoming : rowsOwned s6Step49HeadGvBefore [s6Step49HeadGvRow,s6Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49HeadGRow,s6Step49HeadFRow,s6Step49HeadGvRow,s6Step49HeadFvRow] 2 s6Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49HeadGv_Outgoing : rowsOwned s6Step49HeadFvAfter [s6Step49HeadGvOut,s6Step49HeadFvOut] :=
  hmrRows_owned_drop s6Step49HeadFvAfter [s6Step49HeadGOut,s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut] 2 s6Step49HeadBank_outgoingOwned
theorem s6Step49HeadFv_Incoming : rowsOwned s6Step49HeadFvBefore [s6Step49HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49HeadGRow,s6Step49HeadFRow,s6Step49HeadGvRow,s6Step49HeadFvRow] 3 s6Step49HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,865),(866,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49HeadFv_Outgoing : rowsOwned s6Step49HeadFvAfter [s6Step49HeadFvOut] :=
  hmrRows_owned_drop s6Step49HeadFvAfter [s6Step49HeadGOut,s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut] 3 s6Step49HeadBank_outgoingOwned
theorem s6Step49HeadBank_rows : planWindowRowsLog s6Step49HeadGBefore [(s6Step49HeadGRow,245),(s6Step49HeadFRow,245),(s6Step49HeadGvRow,38),(s6Step49HeadFvRow,38)] [s6Step49HeadGFresh,s6Step49HeadFFresh,s6Step49HeadGvFresh,s6Step49HeadFvFresh]=
    some (s6Step49HeadFvAfter,[s6Step49HeadGOut,s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut],(growRow 777 s6Step49HeadGFresh ++ (growRow 795 s6Step49HeadFFresh ++ (growRow 775 s6Step49HeadGvFresh ++ (growRow 776 s6Step49HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step49HeadFvAfter [] []=some (s6Step49HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step49HeadFvBefore s6Step49HeadFvAfter s6Step49HeadFvAfter
    s6Step49HeadFvRow s6Step49HeadFvOut 38 s6Step49HeadFvFresh [] [] []
    (growRow 776 s6Step49HeadFvFresh) ([]) s6Step49HeadFv_Incoming s6Step49HeadFv_checked h4 s6Step49HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step49HeadGvBefore s6Step49HeadGvAfter s6Step49HeadFvAfter
    s6Step49HeadGvRow s6Step49HeadGvOut 38 s6Step49HeadGvFresh [(s6Step49HeadFvRow,38)] [s6Step49HeadFvFresh] [s6Step49HeadFvOut]
    (growRow 775 s6Step49HeadGvFresh) ((growRow 776 s6Step49HeadFvFresh ++ [])) s6Step49HeadGv_Incoming s6Step49HeadGv_checked h3 s6Step49HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step49HeadFBefore s6Step49HeadFAfter s6Step49HeadFvAfter
    s6Step49HeadFRow s6Step49HeadFOut 245 s6Step49HeadFFresh [(s6Step49HeadGvRow,38),(s6Step49HeadFvRow,38)] [s6Step49HeadGvFresh,s6Step49HeadFvFresh] [s6Step49HeadGvOut,s6Step49HeadFvOut]
    (growRow 795 s6Step49HeadFFresh) ((growRow 775 s6Step49HeadGvFresh ++ (growRow 776 s6Step49HeadFvFresh ++ []))) s6Step49HeadF_Incoming s6Step49HeadF_checked h2 s6Step49HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step49HeadGBefore s6Step49HeadGAfter s6Step49HeadFvAfter
    s6Step49HeadGRow s6Step49HeadGOut 245 s6Step49HeadGFresh [(s6Step49HeadFRow,245),(s6Step49HeadGvRow,38),(s6Step49HeadFvRow,38)] [s6Step49HeadFFresh,s6Step49HeadGvFresh,s6Step49HeadFvFresh] [s6Step49HeadFOut,s6Step49HeadGvOut,s6Step49HeadFvOut]
    (growRow 777 s6Step49HeadGFresh) ((growRow 795 s6Step49HeadFFresh ++ (growRow 775 s6Step49HeadGvFresh ++ (growRow 776 s6Step49HeadFvFresh ++ [])))) s6Step49HeadG_Incoming s6Step49HeadG_checked h1 s6Step49HeadG_Outgoing
  exact h0
theorem s6Step49HeadBank_checked : compileHmrBankResizeLog .headroom s6Step49HeadGBefore ⟨s6Step49HeadFRow,s6Step49HeadGRow,s6Step49HeadFvRow,s6Step49HeadGvRow⟩ ⟨245,245,38,38⟩ [s6Step49HeadGFresh,s6Step49HeadFFresh,s6Step49HeadGvFresh,s6Step49HeadFvFresh]=
    some (s6Step49HeadFvAfter,⟨s6Step49HeadFOut,s6Step49HeadGOut,s6Step49HeadFvOut,s6Step49HeadGvOut⟩,(growRow 777 s6Step49HeadGFresh ++ (growRow 795 s6Step49HeadFFresh ++ (growRow 775 s6Step49HeadGvFresh ++ (growRow 776 s6Step49HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step49HeadBank_rows]
  rfl
def s6Step50HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 823],777⟩
def s6Step50HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 875],795⟩
def s6Step50HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 789, 863],775⟩
def s6Step50HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 793],776⟩
theorem s6Step50HeadBank_incomingDistinct : ([s6Step50HeadGRow,s6Step50HeadFRow,s6Step50HeadGvRow,s6Step50HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step50HeadBank_outgoingOwned : rowsOwned s6Step50HeadFvAfter [s6Step50HeadGOut,s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step50HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50HeadG_Incoming : rowsOwned s6Step50HeadGBefore [s6Step50HeadGRow,s6Step50HeadFRow,s6Step50HeadGvRow,s6Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50HeadGRow,s6Step50HeadFRow,s6Step50HeadGvRow,s6Step50HeadFvRow] 0 s6Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50HeadG_Outgoing : rowsOwned s6Step50HeadFvAfter [s6Step50HeadGOut,s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut] :=
  hmrRows_owned_drop s6Step50HeadFvAfter [s6Step50HeadGOut,s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut] 0 s6Step50HeadBank_outgoingOwned
theorem s6Step50HeadF_Incoming : rowsOwned s6Step50HeadFBefore [s6Step50HeadFRow,s6Step50HeadGvRow,s6Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50HeadGRow,s6Step50HeadFRow,s6Step50HeadGvRow,s6Step50HeadFvRow] 1 s6Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50HeadF_Outgoing : rowsOwned s6Step50HeadFvAfter [s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut] :=
  hmrRows_owned_drop s6Step50HeadFvAfter [s6Step50HeadGOut,s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut] 1 s6Step50HeadBank_outgoingOwned
theorem s6Step50HeadGv_Incoming : rowsOwned s6Step50HeadGvBefore [s6Step50HeadGvRow,s6Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50HeadGRow,s6Step50HeadFRow,s6Step50HeadGvRow,s6Step50HeadFvRow] 2 s6Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50HeadGv_Outgoing : rowsOwned s6Step50HeadFvAfter [s6Step50HeadGvOut,s6Step50HeadFvOut] :=
  hmrRows_owned_drop s6Step50HeadFvAfter [s6Step50HeadGOut,s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut] 2 s6Step50HeadBank_outgoingOwned
theorem s6Step50HeadFv_Incoming : rowsOwned s6Step50HeadFvBefore [s6Step50HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50HeadGRow,s6Step50HeadFRow,s6Step50HeadGvRow,s6Step50HeadFvRow] 3 s6Step50HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50HeadFv_Outgoing : rowsOwned s6Step50HeadFvAfter [s6Step50HeadFvOut] :=
  hmrRows_owned_drop s6Step50HeadFvAfter [s6Step50HeadGOut,s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut] 3 s6Step50HeadBank_outgoingOwned
theorem s6Step50HeadBank_rows : planWindowRowsLog s6Step50HeadGBefore [(s6Step50HeadGRow,244),(s6Step50HeadFRow,244),(s6Step50HeadGvRow,39),(s6Step50HeadFvRow,39)] [s6Step50HeadGFresh,s6Step50HeadFFresh,s6Step50HeadGvFresh,s6Step50HeadFvFresh]=
    some (s6Step50HeadFvAfter,[s6Step50HeadGOut,s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut],(growRow 777 s6Step50HeadGFresh ++ (growRow 795 s6Step50HeadFFresh ++ (growRow 775 s6Step50HeadGvFresh ++ (growRow 776 s6Step50HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step50HeadFvAfter [] []=some (s6Step50HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step50HeadFvBefore s6Step50HeadFvAfter s6Step50HeadFvAfter
    s6Step50HeadFvRow s6Step50HeadFvOut 39 s6Step50HeadFvFresh [] [] []
    (growRow 776 s6Step50HeadFvFresh) ([]) s6Step50HeadFv_Incoming s6Step50HeadFv_checked h4 s6Step50HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step50HeadGvBefore s6Step50HeadGvAfter s6Step50HeadFvAfter
    s6Step50HeadGvRow s6Step50HeadGvOut 39 s6Step50HeadGvFresh [(s6Step50HeadFvRow,39)] [s6Step50HeadFvFresh] [s6Step50HeadFvOut]
    (growRow 775 s6Step50HeadGvFresh) ((growRow 776 s6Step50HeadFvFresh ++ [])) s6Step50HeadGv_Incoming s6Step50HeadGv_checked h3 s6Step50HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step50HeadFBefore s6Step50HeadFAfter s6Step50HeadFvAfter
    s6Step50HeadFRow s6Step50HeadFOut 244 s6Step50HeadFFresh [(s6Step50HeadGvRow,39),(s6Step50HeadFvRow,39)] [s6Step50HeadGvFresh,s6Step50HeadFvFresh] [s6Step50HeadGvOut,s6Step50HeadFvOut]
    (growRow 795 s6Step50HeadFFresh) ((growRow 775 s6Step50HeadGvFresh ++ (growRow 776 s6Step50HeadFvFresh ++ []))) s6Step50HeadF_Incoming s6Step50HeadF_checked h2 s6Step50HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step50HeadGBefore s6Step50HeadGAfter s6Step50HeadFvAfter
    s6Step50HeadGRow s6Step50HeadGOut 244 s6Step50HeadGFresh [(s6Step50HeadFRow,244),(s6Step50HeadGvRow,39),(s6Step50HeadFvRow,39)] [s6Step50HeadFFresh,s6Step50HeadGvFresh,s6Step50HeadFvFresh] [s6Step50HeadFOut,s6Step50HeadGvOut,s6Step50HeadFvOut]
    (growRow 777 s6Step50HeadGFresh) ((growRow 795 s6Step50HeadFFresh ++ (growRow 775 s6Step50HeadGvFresh ++ (growRow 776 s6Step50HeadFvFresh ++ [])))) s6Step50HeadG_Incoming s6Step50HeadG_checked h1 s6Step50HeadG_Outgoing
  exact h0
theorem s6Step50HeadBank_checked : compileHmrBankResizeLog .headroom s6Step50HeadGBefore ⟨s6Step50HeadFRow,s6Step50HeadGRow,s6Step50HeadFvRow,s6Step50HeadGvRow⟩ ⟨244,244,39,39⟩ [s6Step50HeadGFresh,s6Step50HeadFFresh,s6Step50HeadGvFresh,s6Step50HeadFvFresh]=
    some (s6Step50HeadFvAfter,⟨s6Step50HeadFOut,s6Step50HeadGOut,s6Step50HeadFvOut,s6Step50HeadGvOut⟩,(growRow 777 s6Step50HeadGFresh ++ (growRow 795 s6Step50HeadFFresh ++ (growRow 775 s6Step50HeadGvFresh ++ (growRow 776 s6Step50HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step50HeadBank_rows]
  rfl
def s6Step51HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 880, 863],777⟩
def s6Step51HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 793],795⟩
def s6Step51HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 875],775⟩
def s6Step51HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823],776⟩
theorem s6Step51HeadBank_incomingDistinct : ([s6Step51HeadGRow,s6Step51HeadFRow,s6Step51HeadGvRow,s6Step51HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step51HeadBank_outgoingOwned : rowsOwned s6Step51HeadFvAfter [s6Step51HeadGOut,s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step51HeadFvAfter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51HeadG_Incoming : rowsOwned s6Step51HeadGBefore [s6Step51HeadGRow,s6Step51HeadFRow,s6Step51HeadGvRow,s6Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51HeadGRow,s6Step51HeadFRow,s6Step51HeadGvRow,s6Step51HeadFvRow] 0 s6Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51HeadGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51HeadG_Outgoing : rowsOwned s6Step51HeadFvAfter [s6Step51HeadGOut,s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut] :=
  hmrRows_owned_drop s6Step51HeadFvAfter [s6Step51HeadGOut,s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut] 0 s6Step51HeadBank_outgoingOwned
theorem s6Step51HeadF_Incoming : rowsOwned s6Step51HeadFBefore [s6Step51HeadFRow,s6Step51HeadGvRow,s6Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51HeadGRow,s6Step51HeadFRow,s6Step51HeadGvRow,s6Step51HeadFvRow] 1 s6Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51HeadFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51HeadF_Outgoing : rowsOwned s6Step51HeadFvAfter [s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut] :=
  hmrRows_owned_drop s6Step51HeadFvAfter [s6Step51HeadGOut,s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut] 1 s6Step51HeadBank_outgoingOwned
theorem s6Step51HeadGv_Incoming : rowsOwned s6Step51HeadGvBefore [s6Step51HeadGvRow,s6Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51HeadGRow,s6Step51HeadFRow,s6Step51HeadGvRow,s6Step51HeadFvRow] 2 s6Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51HeadGvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51HeadGv_Outgoing : rowsOwned s6Step51HeadFvAfter [s6Step51HeadGvOut,s6Step51HeadFvOut] :=
  hmrRows_owned_drop s6Step51HeadFvAfter [s6Step51HeadGOut,s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut] 2 s6Step51HeadBank_outgoingOwned
theorem s6Step51HeadFv_Incoming : rowsOwned s6Step51HeadFvBefore [s6Step51HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51HeadGRow,s6Step51HeadFRow,s6Step51HeadGvRow,s6Step51HeadFvRow] 3 s6Step51HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51HeadFvBefore (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51HeadFv_Outgoing : rowsOwned s6Step51HeadFvAfter [s6Step51HeadFvOut] :=
  hmrRows_owned_drop s6Step51HeadFvAfter [s6Step51HeadGOut,s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut] 3 s6Step51HeadBank_outgoingOwned
theorem s6Step51HeadBank_rows : planWindowRowsLog s6Step51HeadGBefore [(s6Step51HeadGRow,244),(s6Step51HeadFRow,244),(s6Step51HeadGvRow,39),(s6Step51HeadFvRow,39)] [s6Step51HeadGFresh,s6Step51HeadFFresh,s6Step51HeadGvFresh,s6Step51HeadFvFresh]=
    some (s6Step51HeadFvAfter,[s6Step51HeadGOut,s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut],(growRow 777 s6Step51HeadGFresh ++ (growRow 795 s6Step51HeadFFresh ++ (growRow 775 s6Step51HeadGvFresh ++ (growRow 776 s6Step51HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step51HeadFvAfter [] []=some (s6Step51HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step51HeadFvBefore s6Step51HeadFvAfter s6Step51HeadFvAfter
    s6Step51HeadFvRow s6Step51HeadFvOut 39 s6Step51HeadFvFresh [] [] []
    (growRow 776 s6Step51HeadFvFresh) ([]) s6Step51HeadFv_Incoming s6Step51HeadFv_checked h4 s6Step51HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step51HeadGvBefore s6Step51HeadGvAfter s6Step51HeadFvAfter
    s6Step51HeadGvRow s6Step51HeadGvOut 39 s6Step51HeadGvFresh [(s6Step51HeadFvRow,39)] [s6Step51HeadFvFresh] [s6Step51HeadFvOut]
    (growRow 775 s6Step51HeadGvFresh) ((growRow 776 s6Step51HeadFvFresh ++ [])) s6Step51HeadGv_Incoming s6Step51HeadGv_checked h3 s6Step51HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step51HeadFBefore s6Step51HeadFAfter s6Step51HeadFvAfter
    s6Step51HeadFRow s6Step51HeadFOut 244 s6Step51HeadFFresh [(s6Step51HeadGvRow,39),(s6Step51HeadFvRow,39)] [s6Step51HeadGvFresh,s6Step51HeadFvFresh] [s6Step51HeadGvOut,s6Step51HeadFvOut]
    (growRow 795 s6Step51HeadFFresh) ((growRow 775 s6Step51HeadGvFresh ++ (growRow 776 s6Step51HeadFvFresh ++ []))) s6Step51HeadF_Incoming s6Step51HeadF_checked h2 s6Step51HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step51HeadGBefore s6Step51HeadGAfter s6Step51HeadFvAfter
    s6Step51HeadGRow s6Step51HeadGOut 244 s6Step51HeadGFresh [(s6Step51HeadFRow,244),(s6Step51HeadGvRow,39),(s6Step51HeadFvRow,39)] [s6Step51HeadFFresh,s6Step51HeadGvFresh,s6Step51HeadFvFresh] [s6Step51HeadFOut,s6Step51HeadGvOut,s6Step51HeadFvOut]
    (growRow 777 s6Step51HeadGFresh) ((growRow 795 s6Step51HeadFFresh ++ (growRow 775 s6Step51HeadGvFresh ++ (growRow 776 s6Step51HeadFvFresh ++ [])))) s6Step51HeadG_Incoming s6Step51HeadG_checked h1 s6Step51HeadG_Outgoing
  exact h0
theorem s6Step51HeadBank_checked : compileHmrBankResizeLog .headroom s6Step51HeadGBefore ⟨s6Step51HeadFRow,s6Step51HeadGRow,s6Step51HeadFvRow,s6Step51HeadGvRow⟩ ⟨244,244,39,39⟩ [s6Step51HeadGFresh,s6Step51HeadFFresh,s6Step51HeadGvFresh,s6Step51HeadFvFresh]=
    some (s6Step51HeadFvAfter,⟨s6Step51HeadFOut,s6Step51HeadGOut,s6Step51HeadFvOut,s6Step51HeadGvOut⟩,(growRow 777 s6Step51HeadGFresh ++ (growRow 795 s6Step51HeadFFresh ++ (growRow 775 s6Step51HeadGvFresh ++ (growRow 776 s6Step51HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step51HeadBank_rows]
  rfl
def s6Step52HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 875],777⟩
def s6Step52HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 793],795⟩
def s6Step52HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 789, 880],775⟩
def s6Step52HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863],776⟩
theorem s6Step52HeadBank_incomingDistinct : ([s6Step52HeadGRow,s6Step52HeadFRow,s6Step52HeadGvRow,s6Step52HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step52HeadBank_outgoingOwned : rowsOwned s6Step52HeadFvAfter [s6Step52HeadGOut,s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step52HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52HeadG_Incoming : rowsOwned s6Step52HeadGBefore [s6Step52HeadGRow,s6Step52HeadFRow,s6Step52HeadGvRow,s6Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52HeadGRow,s6Step52HeadFRow,s6Step52HeadGvRow,s6Step52HeadFvRow] 0 s6Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52HeadGBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52HeadG_Outgoing : rowsOwned s6Step52HeadFvAfter [s6Step52HeadGOut,s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut] :=
  hmrRows_owned_drop s6Step52HeadFvAfter [s6Step52HeadGOut,s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut] 0 s6Step52HeadBank_outgoingOwned
theorem s6Step52HeadF_Incoming : rowsOwned s6Step52HeadFBefore [s6Step52HeadFRow,s6Step52HeadGvRow,s6Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52HeadGRow,s6Step52HeadFRow,s6Step52HeadGvRow,s6Step52HeadFvRow] 1 s6Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52HeadF_Outgoing : rowsOwned s6Step52HeadFvAfter [s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut] :=
  hmrRows_owned_drop s6Step52HeadFvAfter [s6Step52HeadGOut,s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut] 1 s6Step52HeadBank_outgoingOwned
theorem s6Step52HeadGv_Incoming : rowsOwned s6Step52HeadGvBefore [s6Step52HeadGvRow,s6Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52HeadGRow,s6Step52HeadFRow,s6Step52HeadGvRow,s6Step52HeadFvRow] 2 s6Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52HeadGv_Outgoing : rowsOwned s6Step52HeadFvAfter [s6Step52HeadGvOut,s6Step52HeadFvOut] :=
  hmrRows_owned_drop s6Step52HeadFvAfter [s6Step52HeadGOut,s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut] 2 s6Step52HeadBank_outgoingOwned
theorem s6Step52HeadFv_Incoming : rowsOwned s6Step52HeadFvBefore [s6Step52HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52HeadGRow,s6Step52HeadFRow,s6Step52HeadGvRow,s6Step52HeadFvRow] 3 s6Step52HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52HeadFv_Outgoing : rowsOwned s6Step52HeadFvAfter [s6Step52HeadFvOut] :=
  hmrRows_owned_drop s6Step52HeadFvAfter [s6Step52HeadGOut,s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut] 3 s6Step52HeadBank_outgoingOwned
theorem s6Step52HeadBank_rows : planWindowRowsLog s6Step52HeadGBefore [(s6Step52HeadGRow,243),(s6Step52HeadFRow,243),(s6Step52HeadGvRow,40),(s6Step52HeadFvRow,40)] [s6Step52HeadGFresh,s6Step52HeadFFresh,s6Step52HeadGvFresh,s6Step52HeadFvFresh]=
    some (s6Step52HeadFvAfter,[s6Step52HeadGOut,s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut],(growRow 777 s6Step52HeadGFresh ++ (growRow 795 s6Step52HeadFFresh ++ (growRow 775 s6Step52HeadGvFresh ++ (growRow 776 s6Step52HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step52HeadFvAfter [] []=some (s6Step52HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step52HeadFvBefore s6Step52HeadFvAfter s6Step52HeadFvAfter
    s6Step52HeadFvRow s6Step52HeadFvOut 40 s6Step52HeadFvFresh [] [] []
    (growRow 776 s6Step52HeadFvFresh) ([]) s6Step52HeadFv_Incoming s6Step52HeadFv_checked h4 s6Step52HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step52HeadGvBefore s6Step52HeadGvAfter s6Step52HeadFvAfter
    s6Step52HeadGvRow s6Step52HeadGvOut 40 s6Step52HeadGvFresh [(s6Step52HeadFvRow,40)] [s6Step52HeadFvFresh] [s6Step52HeadFvOut]
    (growRow 775 s6Step52HeadGvFresh) ((growRow 776 s6Step52HeadFvFresh ++ [])) s6Step52HeadGv_Incoming s6Step52HeadGv_checked h3 s6Step52HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step52HeadFBefore s6Step52HeadFAfter s6Step52HeadFvAfter
    s6Step52HeadFRow s6Step52HeadFOut 243 s6Step52HeadFFresh [(s6Step52HeadGvRow,40),(s6Step52HeadFvRow,40)] [s6Step52HeadGvFresh,s6Step52HeadFvFresh] [s6Step52HeadGvOut,s6Step52HeadFvOut]
    (growRow 795 s6Step52HeadFFresh) ((growRow 775 s6Step52HeadGvFresh ++ (growRow 776 s6Step52HeadFvFresh ++ []))) s6Step52HeadF_Incoming s6Step52HeadF_checked h2 s6Step52HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step52HeadGBefore s6Step52HeadGAfter s6Step52HeadFvAfter
    s6Step52HeadGRow s6Step52HeadGOut 243 s6Step52HeadGFresh [(s6Step52HeadFRow,243),(s6Step52HeadGvRow,40),(s6Step52HeadFvRow,40)] [s6Step52HeadFFresh,s6Step52HeadGvFresh,s6Step52HeadFvFresh] [s6Step52HeadFOut,s6Step52HeadGvOut,s6Step52HeadFvOut]
    (growRow 777 s6Step52HeadGFresh) ((growRow 795 s6Step52HeadFFresh ++ (growRow 775 s6Step52HeadGvFresh ++ (growRow 776 s6Step52HeadFvFresh ++ [])))) s6Step52HeadG_Incoming s6Step52HeadG_checked h1 s6Step52HeadG_Outgoing
  exact h0
theorem s6Step52HeadBank_checked : compileHmrBankResizeLog .headroom s6Step52HeadGBefore ⟨s6Step52HeadFRow,s6Step52HeadGRow,s6Step52HeadFvRow,s6Step52HeadGvRow⟩ ⟨243,243,40,40⟩ [s6Step52HeadGFresh,s6Step52HeadFFresh,s6Step52HeadGvFresh,s6Step52HeadFvFresh]=
    some (s6Step52HeadFvAfter,⟨s6Step52HeadFOut,s6Step52HeadGOut,s6Step52HeadFvOut,s6Step52HeadGvOut⟩,(growRow 777 s6Step52HeadGFresh ++ (growRow 795 s6Step52HeadFFresh ++ (growRow 775 s6Step52HeadGvFresh ++ (growRow 776 s6Step52HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step52HeadBank_rows]
  rfl
def s6Step53HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 892],777⟩
def s6Step53HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 789],795⟩
def s6Step53HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 880],775⟩
def s6Step53HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863],776⟩
theorem s6Step53HeadBank_incomingDistinct : ([s6Step53HeadGRow,s6Step53HeadFRow,s6Step53HeadGvRow,s6Step53HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step53HeadBank_outgoingOwned : rowsOwned s6Step53HeadFvAfter [s6Step53HeadGOut,s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step53HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53HeadG_Incoming : rowsOwned s6Step53HeadGBefore [s6Step53HeadGRow,s6Step53HeadFRow,s6Step53HeadGvRow,s6Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53HeadGRow,s6Step53HeadFRow,s6Step53HeadGvRow,s6Step53HeadFvRow] 0 s6Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53HeadG_Outgoing : rowsOwned s6Step53HeadFvAfter [s6Step53HeadGOut,s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut] :=
  hmrRows_owned_drop s6Step53HeadFvAfter [s6Step53HeadGOut,s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut] 0 s6Step53HeadBank_outgoingOwned
theorem s6Step53HeadF_Incoming : rowsOwned s6Step53HeadFBefore [s6Step53HeadFRow,s6Step53HeadGvRow,s6Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53HeadGRow,s6Step53HeadFRow,s6Step53HeadGvRow,s6Step53HeadFvRow] 1 s6Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53HeadFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53HeadF_Outgoing : rowsOwned s6Step53HeadFvAfter [s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut] :=
  hmrRows_owned_drop s6Step53HeadFvAfter [s6Step53HeadGOut,s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut] 1 s6Step53HeadBank_outgoingOwned
theorem s6Step53HeadGv_Incoming : rowsOwned s6Step53HeadGvBefore [s6Step53HeadGvRow,s6Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53HeadGRow,s6Step53HeadFRow,s6Step53HeadGvRow,s6Step53HeadFvRow] 2 s6Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53HeadGv_Outgoing : rowsOwned s6Step53HeadFvAfter [s6Step53HeadGvOut,s6Step53HeadFvOut] :=
  hmrRows_owned_drop s6Step53HeadFvAfter [s6Step53HeadGOut,s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut] 2 s6Step53HeadBank_outgoingOwned
theorem s6Step53HeadFv_Incoming : rowsOwned s6Step53HeadFvBefore [s6Step53HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53HeadGRow,s6Step53HeadFRow,s6Step53HeadGvRow,s6Step53HeadFvRow] 3 s6Step53HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53HeadFv_Outgoing : rowsOwned s6Step53HeadFvAfter [s6Step53HeadFvOut] :=
  hmrRows_owned_drop s6Step53HeadFvAfter [s6Step53HeadGOut,s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut] 3 s6Step53HeadBank_outgoingOwned
theorem s6Step53HeadBank_rows : planWindowRowsLog s6Step53HeadGBefore [(s6Step53HeadGRow,242),(s6Step53HeadFRow,242),(s6Step53HeadGvRow,40),(s6Step53HeadFvRow,40)] [s6Step53HeadGFresh,s6Step53HeadFFresh,s6Step53HeadGvFresh,s6Step53HeadFvFresh]=
    some (s6Step53HeadFvAfter,[s6Step53HeadGOut,s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut],(growRow 777 s6Step53HeadGFresh ++ (growRow 795 s6Step53HeadFFresh ++ (growRow 775 s6Step53HeadGvFresh ++ (growRow 776 s6Step53HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step53HeadFvAfter [] []=some (s6Step53HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step53HeadFvBefore s6Step53HeadFvAfter s6Step53HeadFvAfter
    s6Step53HeadFvRow s6Step53HeadFvOut 40 s6Step53HeadFvFresh [] [] []
    (growRow 776 s6Step53HeadFvFresh) ([]) s6Step53HeadFv_Incoming s6Step53HeadFv_checked h4 s6Step53HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step53HeadGvBefore s6Step53HeadGvAfter s6Step53HeadFvAfter
    s6Step53HeadGvRow s6Step53HeadGvOut 40 s6Step53HeadGvFresh [(s6Step53HeadFvRow,40)] [s6Step53HeadFvFresh] [s6Step53HeadFvOut]
    (growRow 775 s6Step53HeadGvFresh) ((growRow 776 s6Step53HeadFvFresh ++ [])) s6Step53HeadGv_Incoming s6Step53HeadGv_checked h3 s6Step53HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step53HeadFBefore s6Step53HeadFAfter s6Step53HeadFvAfter
    s6Step53HeadFRow s6Step53HeadFOut 242 s6Step53HeadFFresh [(s6Step53HeadGvRow,40),(s6Step53HeadFvRow,40)] [s6Step53HeadGvFresh,s6Step53HeadFvFresh] [s6Step53HeadGvOut,s6Step53HeadFvOut]
    (growRow 795 s6Step53HeadFFresh) ((growRow 775 s6Step53HeadGvFresh ++ (growRow 776 s6Step53HeadFvFresh ++ []))) s6Step53HeadF_Incoming s6Step53HeadF_checked h2 s6Step53HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step53HeadGBefore s6Step53HeadGAfter s6Step53HeadFvAfter
    s6Step53HeadGRow s6Step53HeadGOut 242 s6Step53HeadGFresh [(s6Step53HeadFRow,242),(s6Step53HeadGvRow,40),(s6Step53HeadFvRow,40)] [s6Step53HeadFFresh,s6Step53HeadGvFresh,s6Step53HeadFvFresh] [s6Step53HeadFOut,s6Step53HeadGvOut,s6Step53HeadFvOut]
    (growRow 777 s6Step53HeadGFresh) ((growRow 795 s6Step53HeadFFresh ++ (growRow 775 s6Step53HeadGvFresh ++ (growRow 776 s6Step53HeadFvFresh ++ [])))) s6Step53HeadG_Incoming s6Step53HeadG_checked h1 s6Step53HeadG_Outgoing
  exact h0
theorem s6Step53HeadBank_checked : compileHmrBankResizeLog .headroom s6Step53HeadGBefore ⟨s6Step53HeadFRow,s6Step53HeadGRow,s6Step53HeadFvRow,s6Step53HeadGvRow⟩ ⟨242,242,40,40⟩ [s6Step53HeadGFresh,s6Step53HeadFFresh,s6Step53HeadGvFresh,s6Step53HeadFvFresh]=
    some (s6Step53HeadFvAfter,⟨s6Step53HeadFOut,s6Step53HeadGOut,s6Step53HeadFvOut,s6Step53HeadGvOut⟩,(growRow 777 s6Step53HeadGFresh ++ (growRow 795 s6Step53HeadFFresh ++ (growRow 775 s6Step53HeadGvFresh ++ (growRow 776 s6Step53HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step53HeadBank_rows]
  rfl
def s6Step54HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 789],777⟩
def s6Step54HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 892],795⟩
def s6Step54HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 793],775⟩
def s6Step54HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 875],776⟩
theorem s6Step54HeadBank_incomingDistinct : ([s6Step54HeadGRow,s6Step54HeadFRow,s6Step54HeadGvRow,s6Step54HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step54HeadBank_outgoingOwned : rowsOwned s6Step54HeadFvAfter [s6Step54HeadGOut,s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step54HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54HeadG_Incoming : rowsOwned s6Step54HeadGBefore [s6Step54HeadGRow,s6Step54HeadFRow,s6Step54HeadGvRow,s6Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54HeadGRow,s6Step54HeadFRow,s6Step54HeadGvRow,s6Step54HeadFvRow] 0 s6Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54HeadG_Outgoing : rowsOwned s6Step54HeadFvAfter [s6Step54HeadGOut,s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut] :=
  hmrRows_owned_drop s6Step54HeadFvAfter [s6Step54HeadGOut,s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut] 0 s6Step54HeadBank_outgoingOwned
theorem s6Step54HeadF_Incoming : rowsOwned s6Step54HeadFBefore [s6Step54HeadFRow,s6Step54HeadGvRow,s6Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54HeadGRow,s6Step54HeadFRow,s6Step54HeadGvRow,s6Step54HeadFvRow] 1 s6Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54HeadF_Outgoing : rowsOwned s6Step54HeadFvAfter [s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut] :=
  hmrRows_owned_drop s6Step54HeadFvAfter [s6Step54HeadGOut,s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut] 1 s6Step54HeadBank_outgoingOwned
theorem s6Step54HeadGv_Incoming : rowsOwned s6Step54HeadGvBefore [s6Step54HeadGvRow,s6Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54HeadGRow,s6Step54HeadFRow,s6Step54HeadGvRow,s6Step54HeadFvRow] 2 s6Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54HeadGv_Outgoing : rowsOwned s6Step54HeadFvAfter [s6Step54HeadGvOut,s6Step54HeadFvOut] :=
  hmrRows_owned_drop s6Step54HeadFvAfter [s6Step54HeadGOut,s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut] 2 s6Step54HeadBank_outgoingOwned
theorem s6Step54HeadFv_Incoming : rowsOwned s6Step54HeadFvBefore [s6Step54HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54HeadGRow,s6Step54HeadFRow,s6Step54HeadGvRow,s6Step54HeadFvRow] 3 s6Step54HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54HeadFv_Outgoing : rowsOwned s6Step54HeadFvAfter [s6Step54HeadFvOut] :=
  hmrRows_owned_drop s6Step54HeadFvAfter [s6Step54HeadGOut,s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut] 3 s6Step54HeadBank_outgoingOwned
theorem s6Step54HeadBank_rows : planWindowRowsLog s6Step54HeadGBefore [(s6Step54HeadGRow,242),(s6Step54HeadFRow,242),(s6Step54HeadGvRow,41),(s6Step54HeadFvRow,41)] [s6Step54HeadGFresh,s6Step54HeadFFresh,s6Step54HeadGvFresh,s6Step54HeadFvFresh]=
    some (s6Step54HeadFvAfter,[s6Step54HeadGOut,s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut],(growRow 777 s6Step54HeadGFresh ++ (growRow 795 s6Step54HeadFFresh ++ (growRow 775 s6Step54HeadGvFresh ++ (growRow 776 s6Step54HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step54HeadFvAfter [] []=some (s6Step54HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step54HeadFvBefore s6Step54HeadFvAfter s6Step54HeadFvAfter
    s6Step54HeadFvRow s6Step54HeadFvOut 41 s6Step54HeadFvFresh [] [] []
    (growRow 776 s6Step54HeadFvFresh) ([]) s6Step54HeadFv_Incoming s6Step54HeadFv_checked h4 s6Step54HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step54HeadGvBefore s6Step54HeadGvAfter s6Step54HeadFvAfter
    s6Step54HeadGvRow s6Step54HeadGvOut 41 s6Step54HeadGvFresh [(s6Step54HeadFvRow,41)] [s6Step54HeadFvFresh] [s6Step54HeadFvOut]
    (growRow 775 s6Step54HeadGvFresh) ((growRow 776 s6Step54HeadFvFresh ++ [])) s6Step54HeadGv_Incoming s6Step54HeadGv_checked h3 s6Step54HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step54HeadFBefore s6Step54HeadFAfter s6Step54HeadFvAfter
    s6Step54HeadFRow s6Step54HeadFOut 242 s6Step54HeadFFresh [(s6Step54HeadGvRow,41),(s6Step54HeadFvRow,41)] [s6Step54HeadGvFresh,s6Step54HeadFvFresh] [s6Step54HeadGvOut,s6Step54HeadFvOut]
    (growRow 795 s6Step54HeadFFresh) ((growRow 775 s6Step54HeadGvFresh ++ (growRow 776 s6Step54HeadFvFresh ++ []))) s6Step54HeadF_Incoming s6Step54HeadF_checked h2 s6Step54HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step54HeadGBefore s6Step54HeadGAfter s6Step54HeadFvAfter
    s6Step54HeadGRow s6Step54HeadGOut 242 s6Step54HeadGFresh [(s6Step54HeadFRow,242),(s6Step54HeadGvRow,41),(s6Step54HeadFvRow,41)] [s6Step54HeadFFresh,s6Step54HeadGvFresh,s6Step54HeadFvFresh] [s6Step54HeadFOut,s6Step54HeadGvOut,s6Step54HeadFvOut]
    (growRow 777 s6Step54HeadGFresh) ((growRow 795 s6Step54HeadFFresh ++ (growRow 775 s6Step54HeadGvFresh ++ (growRow 776 s6Step54HeadFvFresh ++ [])))) s6Step54HeadG_Incoming s6Step54HeadG_checked h1 s6Step54HeadG_Outgoing
  exact h0
theorem s6Step54HeadBank_checked : compileHmrBankResizeLog .headroom s6Step54HeadGBefore ⟨s6Step54HeadFRow,s6Step54HeadGRow,s6Step54HeadFvRow,s6Step54HeadGvRow⟩ ⟨242,242,41,41⟩ [s6Step54HeadGFresh,s6Step54HeadFFresh,s6Step54HeadGvFresh,s6Step54HeadFvFresh]=
    some (s6Step54HeadFvAfter,⟨s6Step54HeadFOut,s6Step54HeadGOut,s6Step54HeadFvOut,s6Step54HeadGvOut⟩,(growRow 777 s6Step54HeadGFresh ++ (growRow 795 s6Step54HeadFFresh ++ (growRow 775 s6Step54HeadGvFresh ++ (growRow 776 s6Step54HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step54HeadBank_rows]
  rfl
def s6Step55HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 880, 892],777⟩
def s6Step55HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 789],795⟩
def s6Step55HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 868],775⟩
def s6Step55HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 875, 805],776⟩
theorem s6Step55HeadBank_incomingDistinct : ([s6Step55HeadGRow,s6Step55HeadFRow,s6Step55HeadGvRow,s6Step55HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step55HeadBank_outgoingOwned : rowsOwned s6Step55HeadFvAfter [s6Step55HeadGOut,s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step55HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55HeadG_Incoming : rowsOwned s6Step55HeadGBefore [s6Step55HeadGRow,s6Step55HeadFRow,s6Step55HeadGvRow,s6Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55HeadGRow,s6Step55HeadFRow,s6Step55HeadGvRow,s6Step55HeadFvRow] 0 s6Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55HeadG_Outgoing : rowsOwned s6Step55HeadFvAfter [s6Step55HeadGOut,s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut] :=
  hmrRows_owned_drop s6Step55HeadFvAfter [s6Step55HeadGOut,s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut] 0 s6Step55HeadBank_outgoingOwned
theorem s6Step55HeadF_Incoming : rowsOwned s6Step55HeadFBefore [s6Step55HeadFRow,s6Step55HeadGvRow,s6Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55HeadGRow,s6Step55HeadFRow,s6Step55HeadGvRow,s6Step55HeadFvRow] 1 s6Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55HeadFBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55HeadF_Outgoing : rowsOwned s6Step55HeadFvAfter [s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut] :=
  hmrRows_owned_drop s6Step55HeadFvAfter [s6Step55HeadGOut,s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut] 1 s6Step55HeadBank_outgoingOwned
theorem s6Step55HeadGv_Incoming : rowsOwned s6Step55HeadGvBefore [s6Step55HeadGvRow,s6Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55HeadGRow,s6Step55HeadFRow,s6Step55HeadGvRow,s6Step55HeadFvRow] 2 s6Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55HeadGv_Outgoing : rowsOwned s6Step55HeadFvAfter [s6Step55HeadGvOut,s6Step55HeadFvOut] :=
  hmrRows_owned_drop s6Step55HeadFvAfter [s6Step55HeadGOut,s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut] 2 s6Step55HeadBank_outgoingOwned
theorem s6Step55HeadFv_Incoming : rowsOwned s6Step55HeadFvBefore [s6Step55HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55HeadGRow,s6Step55HeadFRow,s6Step55HeadGvRow,s6Step55HeadFvRow] 3 s6Step55HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55HeadFv_Outgoing : rowsOwned s6Step55HeadFvAfter [s6Step55HeadFvOut] :=
  hmrRows_owned_drop s6Step55HeadFvAfter [s6Step55HeadGOut,s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut] 3 s6Step55HeadBank_outgoingOwned
theorem s6Step55HeadBank_rows : planWindowRowsLog s6Step55HeadGBefore [(s6Step55HeadGRow,242),(s6Step55HeadFRow,242),(s6Step55HeadGvRow,42),(s6Step55HeadFvRow,42)] [s6Step55HeadGFresh,s6Step55HeadFFresh,s6Step55HeadGvFresh,s6Step55HeadFvFresh]=
    some (s6Step55HeadFvAfter,[s6Step55HeadGOut,s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut],(growRow 777 s6Step55HeadGFresh ++ (growRow 795 s6Step55HeadFFresh ++ (growRow 775 s6Step55HeadGvFresh ++ (growRow 776 s6Step55HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step55HeadFvAfter [] []=some (s6Step55HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step55HeadFvBefore s6Step55HeadFvAfter s6Step55HeadFvAfter
    s6Step55HeadFvRow s6Step55HeadFvOut 42 s6Step55HeadFvFresh [] [] []
    (growRow 776 s6Step55HeadFvFresh) ([]) s6Step55HeadFv_Incoming s6Step55HeadFv_checked h4 s6Step55HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step55HeadGvBefore s6Step55HeadGvAfter s6Step55HeadFvAfter
    s6Step55HeadGvRow s6Step55HeadGvOut 42 s6Step55HeadGvFresh [(s6Step55HeadFvRow,42)] [s6Step55HeadFvFresh] [s6Step55HeadFvOut]
    (growRow 775 s6Step55HeadGvFresh) ((growRow 776 s6Step55HeadFvFresh ++ [])) s6Step55HeadGv_Incoming s6Step55HeadGv_checked h3 s6Step55HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step55HeadFBefore s6Step55HeadFAfter s6Step55HeadFvAfter
    s6Step55HeadFRow s6Step55HeadFOut 242 s6Step55HeadFFresh [(s6Step55HeadGvRow,42),(s6Step55HeadFvRow,42)] [s6Step55HeadGvFresh,s6Step55HeadFvFresh] [s6Step55HeadGvOut,s6Step55HeadFvOut]
    (growRow 795 s6Step55HeadFFresh) ((growRow 775 s6Step55HeadGvFresh ++ (growRow 776 s6Step55HeadFvFresh ++ []))) s6Step55HeadF_Incoming s6Step55HeadF_checked h2 s6Step55HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step55HeadGBefore s6Step55HeadGAfter s6Step55HeadFvAfter
    s6Step55HeadGRow s6Step55HeadGOut 242 s6Step55HeadGFresh [(s6Step55HeadFRow,242),(s6Step55HeadGvRow,42),(s6Step55HeadFvRow,42)] [s6Step55HeadFFresh,s6Step55HeadGvFresh,s6Step55HeadFvFresh] [s6Step55HeadFOut,s6Step55HeadGvOut,s6Step55HeadFvOut]
    (growRow 777 s6Step55HeadGFresh) ((growRow 795 s6Step55HeadFFresh ++ (growRow 775 s6Step55HeadGvFresh ++ (growRow 776 s6Step55HeadFvFresh ++ [])))) s6Step55HeadG_Incoming s6Step55HeadG_checked h1 s6Step55HeadG_Outgoing
  exact h0
theorem s6Step55HeadBank_checked : compileHmrBankResizeLog .headroom s6Step55HeadGBefore ⟨s6Step55HeadFRow,s6Step55HeadGRow,s6Step55HeadFvRow,s6Step55HeadGvRow⟩ ⟨242,242,42,42⟩ [s6Step55HeadGFresh,s6Step55HeadFFresh,s6Step55HeadGvFresh,s6Step55HeadFvFresh]=
    some (s6Step55HeadFvAfter,⟨s6Step55HeadFOut,s6Step55HeadGOut,s6Step55HeadFvOut,s6Step55HeadGvOut⟩,(growRow 777 s6Step55HeadGFresh ++ (growRow 795 s6Step55HeadFFresh ++ (growRow 775 s6Step55HeadGvFresh ++ (growRow 776 s6Step55HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step55HeadBank_rows]
  rfl
def s6Step56HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 868],777⟩
def s6Step56HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 875],795⟩
def s6Step56HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 805],775⟩
def s6Step56HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789],776⟩
theorem s6Step56HeadBank_incomingDistinct : ([s6Step56HeadGRow,s6Step56HeadFRow,s6Step56HeadGvRow,s6Step56HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step56HeadBank_outgoingOwned : rowsOwned s6Step56HeadFvAfter [s6Step56HeadGOut,s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step56HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56HeadG_Incoming : rowsOwned s6Step56HeadGBefore [s6Step56HeadGRow,s6Step56HeadFRow,s6Step56HeadGvRow,s6Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56HeadGRow,s6Step56HeadFRow,s6Step56HeadGvRow,s6Step56HeadFvRow] 0 s6Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56HeadG_Outgoing : rowsOwned s6Step56HeadFvAfter [s6Step56HeadGOut,s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut] :=
  hmrRows_owned_drop s6Step56HeadFvAfter [s6Step56HeadGOut,s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut] 0 s6Step56HeadBank_outgoingOwned
theorem s6Step56HeadF_Incoming : rowsOwned s6Step56HeadFBefore [s6Step56HeadFRow,s6Step56HeadGvRow,s6Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56HeadGRow,s6Step56HeadFRow,s6Step56HeadGvRow,s6Step56HeadFvRow] 1 s6Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56HeadFBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56HeadF_Outgoing : rowsOwned s6Step56HeadFvAfter [s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut] :=
  hmrRows_owned_drop s6Step56HeadFvAfter [s6Step56HeadGOut,s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut] 1 s6Step56HeadBank_outgoingOwned
theorem s6Step56HeadGv_Incoming : rowsOwned s6Step56HeadGvBefore [s6Step56HeadGvRow,s6Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56HeadGRow,s6Step56HeadFRow,s6Step56HeadGvRow,s6Step56HeadFvRow] 2 s6Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56HeadGvBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56HeadGv_Outgoing : rowsOwned s6Step56HeadFvAfter [s6Step56HeadGvOut,s6Step56HeadFvOut] :=
  hmrRows_owned_drop s6Step56HeadFvAfter [s6Step56HeadGOut,s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut] 2 s6Step56HeadBank_outgoingOwned
theorem s6Step56HeadFv_Incoming : rowsOwned s6Step56HeadFvBefore [s6Step56HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56HeadGRow,s6Step56HeadFRow,s6Step56HeadGvRow,s6Step56HeadFvRow] 3 s6Step56HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56HeadFvBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56HeadFv_Outgoing : rowsOwned s6Step56HeadFvAfter [s6Step56HeadFvOut] :=
  hmrRows_owned_drop s6Step56HeadFvAfter [s6Step56HeadGOut,s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut] 3 s6Step56HeadBank_outgoingOwned
theorem s6Step56HeadBank_rows : planWindowRowsLog s6Step56HeadGBefore [(s6Step56HeadGRow,241),(s6Step56HeadFRow,241),(s6Step56HeadGvRow,42),(s6Step56HeadFvRow,42)] [s6Step56HeadGFresh,s6Step56HeadFFresh,s6Step56HeadGvFresh,s6Step56HeadFvFresh]=
    some (s6Step56HeadFvAfter,[s6Step56HeadGOut,s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut],(growRow 777 s6Step56HeadGFresh ++ (growRow 795 s6Step56HeadFFresh ++ (growRow 775 s6Step56HeadGvFresh ++ (growRow 776 s6Step56HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step56HeadFvAfter [] []=some (s6Step56HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step56HeadFvBefore s6Step56HeadFvAfter s6Step56HeadFvAfter
    s6Step56HeadFvRow s6Step56HeadFvOut 42 s6Step56HeadFvFresh [] [] []
    (growRow 776 s6Step56HeadFvFresh) ([]) s6Step56HeadFv_Incoming s6Step56HeadFv_checked h4 s6Step56HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step56HeadGvBefore s6Step56HeadGvAfter s6Step56HeadFvAfter
    s6Step56HeadGvRow s6Step56HeadGvOut 42 s6Step56HeadGvFresh [(s6Step56HeadFvRow,42)] [s6Step56HeadFvFresh] [s6Step56HeadFvOut]
    (growRow 775 s6Step56HeadGvFresh) ((growRow 776 s6Step56HeadFvFresh ++ [])) s6Step56HeadGv_Incoming s6Step56HeadGv_checked h3 s6Step56HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step56HeadFBefore s6Step56HeadFAfter s6Step56HeadFvAfter
    s6Step56HeadFRow s6Step56HeadFOut 241 s6Step56HeadFFresh [(s6Step56HeadGvRow,42),(s6Step56HeadFvRow,42)] [s6Step56HeadGvFresh,s6Step56HeadFvFresh] [s6Step56HeadGvOut,s6Step56HeadFvOut]
    (growRow 795 s6Step56HeadFFresh) ((growRow 775 s6Step56HeadGvFresh ++ (growRow 776 s6Step56HeadFvFresh ++ []))) s6Step56HeadF_Incoming s6Step56HeadF_checked h2 s6Step56HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step56HeadGBefore s6Step56HeadGAfter s6Step56HeadFvAfter
    s6Step56HeadGRow s6Step56HeadGOut 241 s6Step56HeadGFresh [(s6Step56HeadFRow,241),(s6Step56HeadGvRow,42),(s6Step56HeadFvRow,42)] [s6Step56HeadFFresh,s6Step56HeadGvFresh,s6Step56HeadFvFresh] [s6Step56HeadFOut,s6Step56HeadGvOut,s6Step56HeadFvOut]
    (growRow 777 s6Step56HeadGFresh) ((growRow 795 s6Step56HeadFFresh ++ (growRow 775 s6Step56HeadGvFresh ++ (growRow 776 s6Step56HeadFvFresh ++ [])))) s6Step56HeadG_Incoming s6Step56HeadG_checked h1 s6Step56HeadG_Outgoing
  exact h0
theorem s6Step56HeadBank_checked : compileHmrBankResizeLog .headroom s6Step56HeadGBefore ⟨s6Step56HeadFRow,s6Step56HeadGRow,s6Step56HeadFvRow,s6Step56HeadGvRow⟩ ⟨241,241,42,42⟩ [s6Step56HeadGFresh,s6Step56HeadFFresh,s6Step56HeadGvFresh,s6Step56HeadFvFresh]=
    some (s6Step56HeadFvAfter,⟨s6Step56HeadFOut,s6Step56HeadGOut,s6Step56HeadFvOut,s6Step56HeadGvOut⟩,(growRow 777 s6Step56HeadGFresh ++ (growRow 795 s6Step56HeadFFresh ++ (growRow 775 s6Step56HeadGvFresh ++ (growRow 776 s6Step56HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step56HeadBank_rows]
  rfl
def s6Step57HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 822, 805],777⟩
def s6Step57HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 789],795⟩
def s6Step57HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 875],775⟩
def s6Step57HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 868],776⟩
theorem s6Step57HeadBank_incomingDistinct : ([s6Step57HeadGRow,s6Step57HeadFRow,s6Step57HeadGvRow,s6Step57HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step57HeadBank_outgoingOwned : rowsOwned s6Step57HeadFvAfter [s6Step57HeadGOut,s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step57HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57HeadG_Incoming : rowsOwned s6Step57HeadGBefore [s6Step57HeadGRow,s6Step57HeadFRow,s6Step57HeadGvRow,s6Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57HeadGRow,s6Step57HeadFRow,s6Step57HeadGvRow,s6Step57HeadFvRow] 0 s6Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57HeadG_Outgoing : rowsOwned s6Step57HeadFvAfter [s6Step57HeadGOut,s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut] :=
  hmrRows_owned_drop s6Step57HeadFvAfter [s6Step57HeadGOut,s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut] 0 s6Step57HeadBank_outgoingOwned
theorem s6Step57HeadF_Incoming : rowsOwned s6Step57HeadFBefore [s6Step57HeadFRow,s6Step57HeadGvRow,s6Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57HeadGRow,s6Step57HeadFRow,s6Step57HeadGvRow,s6Step57HeadFvRow] 1 s6Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57HeadFBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57HeadF_Outgoing : rowsOwned s6Step57HeadFvAfter [s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut] :=
  hmrRows_owned_drop s6Step57HeadFvAfter [s6Step57HeadGOut,s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut] 1 s6Step57HeadBank_outgoingOwned
theorem s6Step57HeadGv_Incoming : rowsOwned s6Step57HeadGvBefore [s6Step57HeadGvRow,s6Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57HeadGRow,s6Step57HeadFRow,s6Step57HeadGvRow,s6Step57HeadFvRow] 2 s6Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57HeadGv_Outgoing : rowsOwned s6Step57HeadFvAfter [s6Step57HeadGvOut,s6Step57HeadFvOut] :=
  hmrRows_owned_drop s6Step57HeadFvAfter [s6Step57HeadGOut,s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut] 2 s6Step57HeadBank_outgoingOwned
theorem s6Step57HeadFv_Incoming : rowsOwned s6Step57HeadFvBefore [s6Step57HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57HeadGRow,s6Step57HeadFRow,s6Step57HeadGvRow,s6Step57HeadFvRow] 3 s6Step57HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57HeadFv_Outgoing : rowsOwned s6Step57HeadFvAfter [s6Step57HeadFvOut] :=
  hmrRows_owned_drop s6Step57HeadFvAfter [s6Step57HeadGOut,s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut] 3 s6Step57HeadBank_outgoingOwned
theorem s6Step57HeadBank_rows : planWindowRowsLog s6Step57HeadGBefore [(s6Step57HeadGRow,241),(s6Step57HeadFRow,241),(s6Step57HeadGvRow,42),(s6Step57HeadFvRow,42)] [s6Step57HeadGFresh,s6Step57HeadFFresh,s6Step57HeadGvFresh,s6Step57HeadFvFresh]=
    some (s6Step57HeadFvAfter,[s6Step57HeadGOut,s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut],(growRow 777 s6Step57HeadGFresh ++ (growRow 795 s6Step57HeadFFresh ++ (growRow 775 s6Step57HeadGvFresh ++ (growRow 776 s6Step57HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step57HeadFvAfter [] []=some (s6Step57HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step57HeadFvBefore s6Step57HeadFvAfter s6Step57HeadFvAfter
    s6Step57HeadFvRow s6Step57HeadFvOut 42 s6Step57HeadFvFresh [] [] []
    (growRow 776 s6Step57HeadFvFresh) ([]) s6Step57HeadFv_Incoming s6Step57HeadFv_checked h4 s6Step57HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step57HeadGvBefore s6Step57HeadGvAfter s6Step57HeadFvAfter
    s6Step57HeadGvRow s6Step57HeadGvOut 42 s6Step57HeadGvFresh [(s6Step57HeadFvRow,42)] [s6Step57HeadFvFresh] [s6Step57HeadFvOut]
    (growRow 775 s6Step57HeadGvFresh) ((growRow 776 s6Step57HeadFvFresh ++ [])) s6Step57HeadGv_Incoming s6Step57HeadGv_checked h3 s6Step57HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step57HeadFBefore s6Step57HeadFAfter s6Step57HeadFvAfter
    s6Step57HeadFRow s6Step57HeadFOut 241 s6Step57HeadFFresh [(s6Step57HeadGvRow,42),(s6Step57HeadFvRow,42)] [s6Step57HeadGvFresh,s6Step57HeadFvFresh] [s6Step57HeadGvOut,s6Step57HeadFvOut]
    (growRow 795 s6Step57HeadFFresh) ((growRow 775 s6Step57HeadGvFresh ++ (growRow 776 s6Step57HeadFvFresh ++ []))) s6Step57HeadF_Incoming s6Step57HeadF_checked h2 s6Step57HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step57HeadGBefore s6Step57HeadGAfter s6Step57HeadFvAfter
    s6Step57HeadGRow s6Step57HeadGOut 241 s6Step57HeadGFresh [(s6Step57HeadFRow,241),(s6Step57HeadGvRow,42),(s6Step57HeadFvRow,42)] [s6Step57HeadFFresh,s6Step57HeadGvFresh,s6Step57HeadFvFresh] [s6Step57HeadFOut,s6Step57HeadGvOut,s6Step57HeadFvOut]
    (growRow 777 s6Step57HeadGFresh) ((growRow 795 s6Step57HeadFFresh ++ (growRow 775 s6Step57HeadGvFresh ++ (growRow 776 s6Step57HeadFvFresh ++ [])))) s6Step57HeadG_Incoming s6Step57HeadG_checked h1 s6Step57HeadG_Outgoing
  exact h0
theorem s6Step57HeadBank_checked : compileHmrBankResizeLog .headroom s6Step57HeadGBefore ⟨s6Step57HeadFRow,s6Step57HeadGRow,s6Step57HeadFvRow,s6Step57HeadGvRow⟩ ⟨241,241,42,42⟩ [s6Step57HeadGFresh,s6Step57HeadFFresh,s6Step57HeadGvFresh,s6Step57HeadFvFresh]=
    some (s6Step57HeadFvAfter,⟨s6Step57HeadFOut,s6Step57HeadGOut,s6Step57HeadFvOut,s6Step57HeadGvOut⟩,(growRow 777 s6Step57HeadGFresh ++ (growRow 795 s6Step57HeadFFresh ++ (growRow 775 s6Step57HeadGvFresh ++ (growRow 776 s6Step57HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step57HeadBank_rows]
  rfl
def s6Step58HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 833, 886],777⟩
def s6Step58HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 875],795⟩
def s6Step58HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 868],775⟩
def s6Step58HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789],776⟩
theorem s6Step58HeadBank_incomingDistinct : ([s6Step58HeadGRow,s6Step58HeadFRow,s6Step58HeadGvRow,s6Step58HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step58HeadBank_outgoingOwned : rowsOwned s6Step58HeadFvAfter [s6Step58HeadGOut,s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step58HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58HeadG_Incoming : rowsOwned s6Step58HeadGBefore [s6Step58HeadGRow,s6Step58HeadFRow,s6Step58HeadGvRow,s6Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58HeadGRow,s6Step58HeadFRow,s6Step58HeadGvRow,s6Step58HeadFvRow] 0 s6Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58HeadGBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58HeadG_Outgoing : rowsOwned s6Step58HeadFvAfter [s6Step58HeadGOut,s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut] :=
  hmrRows_owned_drop s6Step58HeadFvAfter [s6Step58HeadGOut,s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut] 0 s6Step58HeadBank_outgoingOwned
theorem s6Step58HeadF_Incoming : rowsOwned s6Step58HeadFBefore [s6Step58HeadFRow,s6Step58HeadGvRow,s6Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58HeadGRow,s6Step58HeadFRow,s6Step58HeadGvRow,s6Step58HeadFvRow] 1 s6Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58HeadFBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58HeadF_Outgoing : rowsOwned s6Step58HeadFvAfter [s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut] :=
  hmrRows_owned_drop s6Step58HeadFvAfter [s6Step58HeadGOut,s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut] 1 s6Step58HeadBank_outgoingOwned
theorem s6Step58HeadGv_Incoming : rowsOwned s6Step58HeadGvBefore [s6Step58HeadGvRow,s6Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58HeadGRow,s6Step58HeadFRow,s6Step58HeadGvRow,s6Step58HeadFvRow] 2 s6Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58HeadGvBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58HeadGv_Outgoing : rowsOwned s6Step58HeadFvAfter [s6Step58HeadGvOut,s6Step58HeadFvOut] :=
  hmrRows_owned_drop s6Step58HeadFvAfter [s6Step58HeadGOut,s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut] 2 s6Step58HeadBank_outgoingOwned
theorem s6Step58HeadFv_Incoming : rowsOwned s6Step58HeadFvBefore [s6Step58HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58HeadGRow,s6Step58HeadFRow,s6Step58HeadGvRow,s6Step58HeadFvRow] 3 s6Step58HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58HeadFvBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58HeadFv_Outgoing : rowsOwned s6Step58HeadFvAfter [s6Step58HeadFvOut] :=
  hmrRows_owned_drop s6Step58HeadFvAfter [s6Step58HeadGOut,s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut] 3 s6Step58HeadBank_outgoingOwned
theorem s6Step58HeadBank_rows : planWindowRowsLog s6Step58HeadGBefore [(s6Step58HeadGRow,240),(s6Step58HeadFRow,240),(s6Step58HeadGvRow,42),(s6Step58HeadFvRow,42)] [s6Step58HeadGFresh,s6Step58HeadFFresh,s6Step58HeadGvFresh,s6Step58HeadFvFresh]=
    some (s6Step58HeadFvAfter,[s6Step58HeadGOut,s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut],(growRow 777 s6Step58HeadGFresh ++ (growRow 795 s6Step58HeadFFresh ++ (growRow 775 s6Step58HeadGvFresh ++ (growRow 776 s6Step58HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step58HeadFvAfter [] []=some (s6Step58HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step58HeadFvBefore s6Step58HeadFvAfter s6Step58HeadFvAfter
    s6Step58HeadFvRow s6Step58HeadFvOut 42 s6Step58HeadFvFresh [] [] []
    (growRow 776 s6Step58HeadFvFresh) ([]) s6Step58HeadFv_Incoming s6Step58HeadFv_checked h4 s6Step58HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step58HeadGvBefore s6Step58HeadGvAfter s6Step58HeadFvAfter
    s6Step58HeadGvRow s6Step58HeadGvOut 42 s6Step58HeadGvFresh [(s6Step58HeadFvRow,42)] [s6Step58HeadFvFresh] [s6Step58HeadFvOut]
    (growRow 775 s6Step58HeadGvFresh) ((growRow 776 s6Step58HeadFvFresh ++ [])) s6Step58HeadGv_Incoming s6Step58HeadGv_checked h3 s6Step58HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step58HeadFBefore s6Step58HeadFAfter s6Step58HeadFvAfter
    s6Step58HeadFRow s6Step58HeadFOut 240 s6Step58HeadFFresh [(s6Step58HeadGvRow,42),(s6Step58HeadFvRow,42)] [s6Step58HeadGvFresh,s6Step58HeadFvFresh] [s6Step58HeadGvOut,s6Step58HeadFvOut]
    (growRow 795 s6Step58HeadFFresh) ((growRow 775 s6Step58HeadGvFresh ++ (growRow 776 s6Step58HeadFvFresh ++ []))) s6Step58HeadF_Incoming s6Step58HeadF_checked h2 s6Step58HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step58HeadGBefore s6Step58HeadGAfter s6Step58HeadFvAfter
    s6Step58HeadGRow s6Step58HeadGOut 240 s6Step58HeadGFresh [(s6Step58HeadFRow,240),(s6Step58HeadGvRow,42),(s6Step58HeadFvRow,42)] [s6Step58HeadFFresh,s6Step58HeadGvFresh,s6Step58HeadFvFresh] [s6Step58HeadFOut,s6Step58HeadGvOut,s6Step58HeadFvOut]
    (growRow 777 s6Step58HeadGFresh) ((growRow 795 s6Step58HeadFFresh ++ (growRow 775 s6Step58HeadGvFresh ++ (growRow 776 s6Step58HeadFvFresh ++ [])))) s6Step58HeadG_Incoming s6Step58HeadG_checked h1 s6Step58HeadG_Outgoing
  exact h0
theorem s6Step58HeadBank_checked : compileHmrBankResizeLog .headroom s6Step58HeadGBefore ⟨s6Step58HeadFRow,s6Step58HeadGRow,s6Step58HeadFvRow,s6Step58HeadGvRow⟩ ⟨240,240,42,42⟩ [s6Step58HeadGFresh,s6Step58HeadFFresh,s6Step58HeadGvFresh,s6Step58HeadFvFresh]=
    some (s6Step58HeadFvAfter,⟨s6Step58HeadFOut,s6Step58HeadGOut,s6Step58HeadFvOut,s6Step58HeadGvOut⟩,(growRow 777 s6Step58HeadGFresh ++ (growRow 795 s6Step58HeadFFresh ++ (growRow 775 s6Step58HeadGvFresh ++ (growRow 776 s6Step58HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step58HeadBank_rows]
  rfl
def s6Step59HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 780, 833],777⟩
def s6Step59HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 886],795⟩
def s6Step59HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 822],775⟩
def s6Step59HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805],776⟩
theorem s6Step59HeadBank_incomingDistinct : ([s6Step59HeadGRow,s6Step59HeadFRow,s6Step59HeadGvRow,s6Step59HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step59HeadBank_outgoingOwned : rowsOwned s6Step59HeadFvAfter [s6Step59HeadGOut,s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step59HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59HeadG_Incoming : rowsOwned s6Step59HeadGBefore [s6Step59HeadGRow,s6Step59HeadFRow,s6Step59HeadGvRow,s6Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59HeadGRow,s6Step59HeadFRow,s6Step59HeadGvRow,s6Step59HeadFvRow] 0 s6Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59HeadGBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59HeadG_Outgoing : rowsOwned s6Step59HeadFvAfter [s6Step59HeadGOut,s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut] :=
  hmrRows_owned_drop s6Step59HeadFvAfter [s6Step59HeadGOut,s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut] 0 s6Step59HeadBank_outgoingOwned
theorem s6Step59HeadF_Incoming : rowsOwned s6Step59HeadFBefore [s6Step59HeadFRow,s6Step59HeadGvRow,s6Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59HeadGRow,s6Step59HeadFRow,s6Step59HeadGvRow,s6Step59HeadFvRow] 1 s6Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59HeadF_Outgoing : rowsOwned s6Step59HeadFvAfter [s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut] :=
  hmrRows_owned_drop s6Step59HeadFvAfter [s6Step59HeadGOut,s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut] 1 s6Step59HeadBank_outgoingOwned
theorem s6Step59HeadGv_Incoming : rowsOwned s6Step59HeadGvBefore [s6Step59HeadGvRow,s6Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59HeadGRow,s6Step59HeadFRow,s6Step59HeadGvRow,s6Step59HeadFvRow] 2 s6Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59HeadGv_Outgoing : rowsOwned s6Step59HeadFvAfter [s6Step59HeadGvOut,s6Step59HeadFvOut] :=
  hmrRows_owned_drop s6Step59HeadFvAfter [s6Step59HeadGOut,s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut] 2 s6Step59HeadBank_outgoingOwned
theorem s6Step59HeadFv_Incoming : rowsOwned s6Step59HeadFvBefore [s6Step59HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59HeadGRow,s6Step59HeadFRow,s6Step59HeadGvRow,s6Step59HeadFvRow] 3 s6Step59HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59HeadFv_Outgoing : rowsOwned s6Step59HeadFvAfter [s6Step59HeadFvOut] :=
  hmrRows_owned_drop s6Step59HeadFvAfter [s6Step59HeadGOut,s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut] 3 s6Step59HeadBank_outgoingOwned
theorem s6Step59HeadBank_rows : planWindowRowsLog s6Step59HeadGBefore [(s6Step59HeadGRow,240),(s6Step59HeadFRow,240),(s6Step59HeadGvRow,43),(s6Step59HeadFvRow,43)] [s6Step59HeadGFresh,s6Step59HeadFFresh,s6Step59HeadGvFresh,s6Step59HeadFvFresh]=
    some (s6Step59HeadFvAfter,[s6Step59HeadGOut,s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut],(growRow 777 s6Step59HeadGFresh ++ (growRow 795 s6Step59HeadFFresh ++ (growRow 775 s6Step59HeadGvFresh ++ (growRow 776 s6Step59HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step59HeadFvAfter [] []=some (s6Step59HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step59HeadFvBefore s6Step59HeadFvAfter s6Step59HeadFvAfter
    s6Step59HeadFvRow s6Step59HeadFvOut 43 s6Step59HeadFvFresh [] [] []
    (growRow 776 s6Step59HeadFvFresh) ([]) s6Step59HeadFv_Incoming s6Step59HeadFv_checked h4 s6Step59HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step59HeadGvBefore s6Step59HeadGvAfter s6Step59HeadFvAfter
    s6Step59HeadGvRow s6Step59HeadGvOut 43 s6Step59HeadGvFresh [(s6Step59HeadFvRow,43)] [s6Step59HeadFvFresh] [s6Step59HeadFvOut]
    (growRow 775 s6Step59HeadGvFresh) ((growRow 776 s6Step59HeadFvFresh ++ [])) s6Step59HeadGv_Incoming s6Step59HeadGv_checked h3 s6Step59HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step59HeadFBefore s6Step59HeadFAfter s6Step59HeadFvAfter
    s6Step59HeadFRow s6Step59HeadFOut 240 s6Step59HeadFFresh [(s6Step59HeadGvRow,43),(s6Step59HeadFvRow,43)] [s6Step59HeadGvFresh,s6Step59HeadFvFresh] [s6Step59HeadGvOut,s6Step59HeadFvOut]
    (growRow 795 s6Step59HeadFFresh) ((growRow 775 s6Step59HeadGvFresh ++ (growRow 776 s6Step59HeadFvFresh ++ []))) s6Step59HeadF_Incoming s6Step59HeadF_checked h2 s6Step59HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step59HeadGBefore s6Step59HeadGAfter s6Step59HeadFvAfter
    s6Step59HeadGRow s6Step59HeadGOut 240 s6Step59HeadGFresh [(s6Step59HeadFRow,240),(s6Step59HeadGvRow,43),(s6Step59HeadFvRow,43)] [s6Step59HeadFFresh,s6Step59HeadGvFresh,s6Step59HeadFvFresh] [s6Step59HeadFOut,s6Step59HeadGvOut,s6Step59HeadFvOut]
    (growRow 777 s6Step59HeadGFresh) ((growRow 795 s6Step59HeadFFresh ++ (growRow 775 s6Step59HeadGvFresh ++ (growRow 776 s6Step59HeadFvFresh ++ [])))) s6Step59HeadG_Incoming s6Step59HeadG_checked h1 s6Step59HeadG_Outgoing
  exact h0
theorem s6Step59HeadBank_checked : compileHmrBankResizeLog .headroom s6Step59HeadGBefore ⟨s6Step59HeadFRow,s6Step59HeadGRow,s6Step59HeadFvRow,s6Step59HeadGvRow⟩ ⟨240,240,43,43⟩ [s6Step59HeadGFresh,s6Step59HeadFFresh,s6Step59HeadGvFresh,s6Step59HeadFvFresh]=
    some (s6Step59HeadFvAfter,⟨s6Step59HeadFOut,s6Step59HeadGOut,s6Step59HeadFvOut,s6Step59HeadGvOut⟩,(growRow 777 s6Step59HeadGFresh ++ (growRow 795 s6Step59HeadFFresh ++ (growRow 775 s6Step59HeadGvFresh ++ (growRow 776 s6Step59HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step59HeadBank_rows]
  rfl
def s6Step60HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 875, 780],777⟩
def s6Step60HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 833],795⟩
def s6Step60HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880],775⟩
def s6Step60HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892],776⟩
theorem s6Step60HeadBank_incomingDistinct : ([s6Step60HeadGRow,s6Step60HeadFRow,s6Step60HeadGvRow,s6Step60HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step60HeadBank_outgoingOwned : rowsOwned s6Step60HeadFvAfter [s6Step60HeadGOut,s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step60HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60HeadG_Incoming : rowsOwned s6Step60HeadGBefore [s6Step60HeadGRow,s6Step60HeadFRow,s6Step60HeadGvRow,s6Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60HeadGRow,s6Step60HeadFRow,s6Step60HeadGvRow,s6Step60HeadFvRow] 0 s6Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60HeadG_Outgoing : rowsOwned s6Step60HeadFvAfter [s6Step60HeadGOut,s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut] :=
  hmrRows_owned_drop s6Step60HeadFvAfter [s6Step60HeadGOut,s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut] 0 s6Step60HeadBank_outgoingOwned
theorem s6Step60HeadF_Incoming : rowsOwned s6Step60HeadFBefore [s6Step60HeadFRow,s6Step60HeadGvRow,s6Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60HeadGRow,s6Step60HeadFRow,s6Step60HeadGvRow,s6Step60HeadFvRow] 1 s6Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60HeadFBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60HeadF_Outgoing : rowsOwned s6Step60HeadFvAfter [s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut] :=
  hmrRows_owned_drop s6Step60HeadFvAfter [s6Step60HeadGOut,s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut] 1 s6Step60HeadBank_outgoingOwned
theorem s6Step60HeadGv_Incoming : rowsOwned s6Step60HeadGvBefore [s6Step60HeadGvRow,s6Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60HeadGRow,s6Step60HeadFRow,s6Step60HeadGvRow,s6Step60HeadFvRow] 2 s6Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60HeadGv_Outgoing : rowsOwned s6Step60HeadFvAfter [s6Step60HeadGvOut,s6Step60HeadFvOut] :=
  hmrRows_owned_drop s6Step60HeadFvAfter [s6Step60HeadGOut,s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut] 2 s6Step60HeadBank_outgoingOwned
theorem s6Step60HeadFv_Incoming : rowsOwned s6Step60HeadFvBefore [s6Step60HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60HeadGRow,s6Step60HeadFRow,s6Step60HeadGvRow,s6Step60HeadFvRow] 3 s6Step60HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60HeadFv_Outgoing : rowsOwned s6Step60HeadFvAfter [s6Step60HeadFvOut] :=
  hmrRows_owned_drop s6Step60HeadFvAfter [s6Step60HeadGOut,s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut] 3 s6Step60HeadBank_outgoingOwned
theorem s6Step60HeadBank_rows : planWindowRowsLog s6Step60HeadGBefore [(s6Step60HeadGRow,240),(s6Step60HeadFRow,240),(s6Step60HeadGvRow,44),(s6Step60HeadFvRow,44)] [s6Step60HeadGFresh,s6Step60HeadFFresh,s6Step60HeadGvFresh,s6Step60HeadFvFresh]=
    some (s6Step60HeadFvAfter,[s6Step60HeadGOut,s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut],(growRow 777 s6Step60HeadGFresh ++ (growRow 795 s6Step60HeadFFresh ++ (growRow 775 s6Step60HeadGvFresh ++ (growRow 776 s6Step60HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step60HeadFvAfter [] []=some (s6Step60HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step60HeadFvBefore s6Step60HeadFvAfter s6Step60HeadFvAfter
    s6Step60HeadFvRow s6Step60HeadFvOut 44 s6Step60HeadFvFresh [] [] []
    (growRow 776 s6Step60HeadFvFresh) ([]) s6Step60HeadFv_Incoming s6Step60HeadFv_checked h4 s6Step60HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step60HeadGvBefore s6Step60HeadGvAfter s6Step60HeadFvAfter
    s6Step60HeadGvRow s6Step60HeadGvOut 44 s6Step60HeadGvFresh [(s6Step60HeadFvRow,44)] [s6Step60HeadFvFresh] [s6Step60HeadFvOut]
    (growRow 775 s6Step60HeadGvFresh) ((growRow 776 s6Step60HeadFvFresh ++ [])) s6Step60HeadGv_Incoming s6Step60HeadGv_checked h3 s6Step60HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step60HeadFBefore s6Step60HeadFAfter s6Step60HeadFvAfter
    s6Step60HeadFRow s6Step60HeadFOut 240 s6Step60HeadFFresh [(s6Step60HeadGvRow,44),(s6Step60HeadFvRow,44)] [s6Step60HeadGvFresh,s6Step60HeadFvFresh] [s6Step60HeadGvOut,s6Step60HeadFvOut]
    (growRow 795 s6Step60HeadFFresh) ((growRow 775 s6Step60HeadGvFresh ++ (growRow 776 s6Step60HeadFvFresh ++ []))) s6Step60HeadF_Incoming s6Step60HeadF_checked h2 s6Step60HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step60HeadGBefore s6Step60HeadGAfter s6Step60HeadFvAfter
    s6Step60HeadGRow s6Step60HeadGOut 240 s6Step60HeadGFresh [(s6Step60HeadFRow,240),(s6Step60HeadGvRow,44),(s6Step60HeadFvRow,44)] [s6Step60HeadFFresh,s6Step60HeadGvFresh,s6Step60HeadFvFresh] [s6Step60HeadFOut,s6Step60HeadGvOut,s6Step60HeadFvOut]
    (growRow 777 s6Step60HeadGFresh) ((growRow 795 s6Step60HeadFFresh ++ (growRow 775 s6Step60HeadGvFresh ++ (growRow 776 s6Step60HeadFvFresh ++ [])))) s6Step60HeadG_Incoming s6Step60HeadG_checked h1 s6Step60HeadG_Outgoing
  exact h0
theorem s6Step60HeadBank_checked : compileHmrBankResizeLog .headroom s6Step60HeadGBefore ⟨s6Step60HeadFRow,s6Step60HeadGRow,s6Step60HeadFvRow,s6Step60HeadGvRow⟩ ⟨240,240,44,44⟩ [s6Step60HeadGFresh,s6Step60HeadFFresh,s6Step60HeadGvFresh,s6Step60HeadFvFresh]=
    some (s6Step60HeadFvAfter,⟨s6Step60HeadFOut,s6Step60HeadGOut,s6Step60HeadFvOut,s6Step60HeadGvOut⟩,(growRow 777 s6Step60HeadGFresh ++ (growRow 795 s6Step60HeadFFresh ++ (growRow 775 s6Step60HeadGvFresh ++ (growRow 776 s6Step60HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step60HeadBank_rows]
  rfl
def s6Step61HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 886, 822, 875],777⟩
def s6Step61HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 780],795⟩
def s6Step61HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 838, 877],775⟩
def s6Step61HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 855],776⟩
theorem s6Step61HeadBank_incomingDistinct : ([s6Step61HeadGRow,s6Step61HeadFRow,s6Step61HeadGvRow,s6Step61HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step61HeadBank_outgoingOwned : rowsOwned s6Step61HeadFvAfter [s6Step61HeadGOut,s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step61HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61HeadG_Incoming : rowsOwned s6Step61HeadGBefore [s6Step61HeadGRow,s6Step61HeadFRow,s6Step61HeadGvRow,s6Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61HeadGRow,s6Step61HeadFRow,s6Step61HeadGvRow,s6Step61HeadFvRow] 0 s6Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61HeadG_Outgoing : rowsOwned s6Step61HeadFvAfter [s6Step61HeadGOut,s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut] :=
  hmrRows_owned_drop s6Step61HeadFvAfter [s6Step61HeadGOut,s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut] 0 s6Step61HeadBank_outgoingOwned
theorem s6Step61HeadF_Incoming : rowsOwned s6Step61HeadFBefore [s6Step61HeadFRow,s6Step61HeadGvRow,s6Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61HeadGRow,s6Step61HeadFRow,s6Step61HeadGvRow,s6Step61HeadFvRow] 1 s6Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61HeadF_Outgoing : rowsOwned s6Step61HeadFvAfter [s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut] :=
  hmrRows_owned_drop s6Step61HeadFvAfter [s6Step61HeadGOut,s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut] 1 s6Step61HeadBank_outgoingOwned
theorem s6Step61HeadGv_Incoming : rowsOwned s6Step61HeadGvBefore [s6Step61HeadGvRow,s6Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61HeadGRow,s6Step61HeadFRow,s6Step61HeadGvRow,s6Step61HeadFvRow] 2 s6Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61HeadGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61HeadGv_Outgoing : rowsOwned s6Step61HeadFvAfter [s6Step61HeadGvOut,s6Step61HeadFvOut] :=
  hmrRows_owned_drop s6Step61HeadFvAfter [s6Step61HeadGOut,s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut] 2 s6Step61HeadBank_outgoingOwned
theorem s6Step61HeadFv_Incoming : rowsOwned s6Step61HeadFvBefore [s6Step61HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61HeadGRow,s6Step61HeadFRow,s6Step61HeadGvRow,s6Step61HeadFvRow] 3 s6Step61HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61HeadFv_Outgoing : rowsOwned s6Step61HeadFvAfter [s6Step61HeadFvOut] :=
  hmrRows_owned_drop s6Step61HeadFvAfter [s6Step61HeadGOut,s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut] 3 s6Step61HeadBank_outgoingOwned
theorem s6Step61HeadBank_rows : planWindowRowsLog s6Step61HeadGBefore [(s6Step61HeadGRow,240),(s6Step61HeadFRow,240),(s6Step61HeadGvRow,45),(s6Step61HeadFvRow,45)] [s6Step61HeadGFresh,s6Step61HeadFFresh,s6Step61HeadGvFresh,s6Step61HeadFvFresh]=
    some (s6Step61HeadFvAfter,[s6Step61HeadGOut,s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut],(growRow 777 s6Step61HeadGFresh ++ (growRow 795 s6Step61HeadFFresh ++ (growRow 775 s6Step61HeadGvFresh ++ (growRow 776 s6Step61HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step61HeadFvAfter [] []=some (s6Step61HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step61HeadFvBefore s6Step61HeadFvAfter s6Step61HeadFvAfter
    s6Step61HeadFvRow s6Step61HeadFvOut 45 s6Step61HeadFvFresh [] [] []
    (growRow 776 s6Step61HeadFvFresh) ([]) s6Step61HeadFv_Incoming s6Step61HeadFv_checked h4 s6Step61HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step61HeadGvBefore s6Step61HeadGvAfter s6Step61HeadFvAfter
    s6Step61HeadGvRow s6Step61HeadGvOut 45 s6Step61HeadGvFresh [(s6Step61HeadFvRow,45)] [s6Step61HeadFvFresh] [s6Step61HeadFvOut]
    (growRow 775 s6Step61HeadGvFresh) ((growRow 776 s6Step61HeadFvFresh ++ [])) s6Step61HeadGv_Incoming s6Step61HeadGv_checked h3 s6Step61HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step61HeadFBefore s6Step61HeadFAfter s6Step61HeadFvAfter
    s6Step61HeadFRow s6Step61HeadFOut 240 s6Step61HeadFFresh [(s6Step61HeadGvRow,45),(s6Step61HeadFvRow,45)] [s6Step61HeadGvFresh,s6Step61HeadFvFresh] [s6Step61HeadGvOut,s6Step61HeadFvOut]
    (growRow 795 s6Step61HeadFFresh) ((growRow 775 s6Step61HeadGvFresh ++ (growRow 776 s6Step61HeadFvFresh ++ []))) s6Step61HeadF_Incoming s6Step61HeadF_checked h2 s6Step61HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step61HeadGBefore s6Step61HeadGAfter s6Step61HeadFvAfter
    s6Step61HeadGRow s6Step61HeadGOut 240 s6Step61HeadGFresh [(s6Step61HeadFRow,240),(s6Step61HeadGvRow,45),(s6Step61HeadFvRow,45)] [s6Step61HeadFFresh,s6Step61HeadGvFresh,s6Step61HeadFvFresh] [s6Step61HeadFOut,s6Step61HeadGvOut,s6Step61HeadFvOut]
    (growRow 777 s6Step61HeadGFresh) ((growRow 795 s6Step61HeadFFresh ++ (growRow 775 s6Step61HeadGvFresh ++ (growRow 776 s6Step61HeadFvFresh ++ [])))) s6Step61HeadG_Incoming s6Step61HeadG_checked h1 s6Step61HeadG_Outgoing
  exact h0
theorem s6Step61HeadBank_checked : compileHmrBankResizeLog .headroom s6Step61HeadGBefore ⟨s6Step61HeadFRow,s6Step61HeadGRow,s6Step61HeadFvRow,s6Step61HeadGvRow⟩ ⟨240,240,45,45⟩ [s6Step61HeadGFresh,s6Step61HeadFFresh,s6Step61HeadGvFresh,s6Step61HeadFvFresh]=
    some (s6Step61HeadFvAfter,⟨s6Step61HeadFOut,s6Step61HeadGOut,s6Step61HeadFvOut,s6Step61HeadGvOut⟩,(growRow 777 s6Step61HeadGFresh ++ (growRow 795 s6Step61HeadFFresh ++ (growRow 775 s6Step61HeadGvFresh ++ (growRow 776 s6Step61HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step61HeadBank_rows]
  rfl
def s6Step62HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 833, 877],777⟩
def s6Step62HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 855],795⟩
def s6Step62HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 780],775⟩
def s6Step62HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886],776⟩
theorem s6Step62HeadBank_incomingDistinct : ([s6Step62HeadGRow,s6Step62HeadFRow,s6Step62HeadGvRow,s6Step62HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step62HeadBank_outgoingOwned : rowsOwned s6Step62HeadFvAfter [s6Step62HeadGOut,s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step62HeadFvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62HeadG_Incoming : rowsOwned s6Step62HeadGBefore [s6Step62HeadGRow,s6Step62HeadFRow,s6Step62HeadGvRow,s6Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62HeadGRow,s6Step62HeadFRow,s6Step62HeadGvRow,s6Step62HeadFvRow] 0 s6Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62HeadGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62HeadG_Outgoing : rowsOwned s6Step62HeadFvAfter [s6Step62HeadGOut,s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut] :=
  hmrRows_owned_drop s6Step62HeadFvAfter [s6Step62HeadGOut,s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut] 0 s6Step62HeadBank_outgoingOwned
theorem s6Step62HeadF_Incoming : rowsOwned s6Step62HeadFBefore [s6Step62HeadFRow,s6Step62HeadGvRow,s6Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62HeadGRow,s6Step62HeadFRow,s6Step62HeadGvRow,s6Step62HeadFvRow] 1 s6Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62HeadFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62HeadF_Outgoing : rowsOwned s6Step62HeadFvAfter [s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut] :=
  hmrRows_owned_drop s6Step62HeadFvAfter [s6Step62HeadGOut,s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut] 1 s6Step62HeadBank_outgoingOwned
theorem s6Step62HeadGv_Incoming : rowsOwned s6Step62HeadGvBefore [s6Step62HeadGvRow,s6Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62HeadGRow,s6Step62HeadFRow,s6Step62HeadGvRow,s6Step62HeadFvRow] 2 s6Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62HeadGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62HeadGv_Outgoing : rowsOwned s6Step62HeadFvAfter [s6Step62HeadGvOut,s6Step62HeadFvOut] :=
  hmrRows_owned_drop s6Step62HeadFvAfter [s6Step62HeadGOut,s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut] 2 s6Step62HeadBank_outgoingOwned
theorem s6Step62HeadFv_Incoming : rowsOwned s6Step62HeadFvBefore [s6Step62HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62HeadGRow,s6Step62HeadFRow,s6Step62HeadGvRow,s6Step62HeadFvRow] 3 s6Step62HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62HeadFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,875),(876,879),(880,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62HeadFv_Outgoing : rowsOwned s6Step62HeadFvAfter [s6Step62HeadFvOut] :=
  hmrRows_owned_drop s6Step62HeadFvAfter [s6Step62HeadGOut,s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut] 3 s6Step62HeadBank_outgoingOwned
theorem s6Step62HeadBank_rows : planWindowRowsLog s6Step62HeadGBefore [(s6Step62HeadGRow,239),(s6Step62HeadFRow,239),(s6Step62HeadGvRow,45),(s6Step62HeadFvRow,45)] [s6Step62HeadGFresh,s6Step62HeadFFresh,s6Step62HeadGvFresh,s6Step62HeadFvFresh]=
    some (s6Step62HeadFvAfter,[s6Step62HeadGOut,s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut],(growRow 777 s6Step62HeadGFresh ++ (growRow 795 s6Step62HeadFFresh ++ (growRow 775 s6Step62HeadGvFresh ++ (growRow 776 s6Step62HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step62HeadFvAfter [] []=some (s6Step62HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step62HeadFvBefore s6Step62HeadFvAfter s6Step62HeadFvAfter
    s6Step62HeadFvRow s6Step62HeadFvOut 45 s6Step62HeadFvFresh [] [] []
    (growRow 776 s6Step62HeadFvFresh) ([]) s6Step62HeadFv_Incoming s6Step62HeadFv_checked h4 s6Step62HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step62HeadGvBefore s6Step62HeadGvAfter s6Step62HeadFvAfter
    s6Step62HeadGvRow s6Step62HeadGvOut 45 s6Step62HeadGvFresh [(s6Step62HeadFvRow,45)] [s6Step62HeadFvFresh] [s6Step62HeadFvOut]
    (growRow 775 s6Step62HeadGvFresh) ((growRow 776 s6Step62HeadFvFresh ++ [])) s6Step62HeadGv_Incoming s6Step62HeadGv_checked h3 s6Step62HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step62HeadFBefore s6Step62HeadFAfter s6Step62HeadFvAfter
    s6Step62HeadFRow s6Step62HeadFOut 239 s6Step62HeadFFresh [(s6Step62HeadGvRow,45),(s6Step62HeadFvRow,45)] [s6Step62HeadGvFresh,s6Step62HeadFvFresh] [s6Step62HeadGvOut,s6Step62HeadFvOut]
    (growRow 795 s6Step62HeadFFresh) ((growRow 775 s6Step62HeadGvFresh ++ (growRow 776 s6Step62HeadFvFresh ++ []))) s6Step62HeadF_Incoming s6Step62HeadF_checked h2 s6Step62HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step62HeadGBefore s6Step62HeadGAfter s6Step62HeadFvAfter
    s6Step62HeadGRow s6Step62HeadGOut 239 s6Step62HeadGFresh [(s6Step62HeadFRow,239),(s6Step62HeadGvRow,45),(s6Step62HeadFvRow,45)] [s6Step62HeadFFresh,s6Step62HeadGvFresh,s6Step62HeadFvFresh] [s6Step62HeadFOut,s6Step62HeadGvOut,s6Step62HeadFvOut]
    (growRow 777 s6Step62HeadGFresh) ((growRow 795 s6Step62HeadFFresh ++ (growRow 775 s6Step62HeadGvFresh ++ (growRow 776 s6Step62HeadFvFresh ++ [])))) s6Step62HeadG_Incoming s6Step62HeadG_checked h1 s6Step62HeadG_Outgoing
  exact h0
theorem s6Step62HeadBank_checked : compileHmrBankResizeLog .headroom s6Step62HeadGBefore ⟨s6Step62HeadFRow,s6Step62HeadGRow,s6Step62HeadFvRow,s6Step62HeadGvRow⟩ ⟨239,239,45,45⟩ [s6Step62HeadGFresh,s6Step62HeadFFresh,s6Step62HeadGvFresh,s6Step62HeadFvFresh]=
    some (s6Step62HeadFvAfter,⟨s6Step62HeadFOut,s6Step62HeadGOut,s6Step62HeadFvOut,s6Step62HeadGvOut⟩,(growRow 777 s6Step62HeadGFresh ++ (growRow 795 s6Step62HeadFFresh ++ (growRow 775 s6Step62HeadGvFresh ++ (growRow 776 s6Step62HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step62HeadBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
