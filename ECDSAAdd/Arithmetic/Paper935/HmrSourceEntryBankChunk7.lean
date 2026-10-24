import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk7
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryBankChunk6

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step47EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499],795⟩
def s6Step47EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],777⟩
def s6Step47EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796],776⟩
def s6Step47EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856],775⟩
theorem s6Step47EntryBank_incomingDistinct : ([s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step47EntryBank_outgoingOwned : rowsOwned s6Step47EntryGvAfter [s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step47EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47EntryF_Incoming : rowsOwned s6Step47EntryFBefore [s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow] 0 s6Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47EntryF_Outgoing : rowsOwned s6Step47EntryGvAfter [s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut] :=
  hmrRows_owned_drop s6Step47EntryGvAfter [s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut] 0 s6Step47EntryBank_outgoingOwned
theorem s6Step47EntryG_Incoming : rowsOwned s6Step47EntryGBefore [s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow] 1 s6Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47EntryG_Outgoing : rowsOwned s6Step47EntryGvAfter [s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut] :=
  hmrRows_owned_drop s6Step47EntryGvAfter [s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut] 1 s6Step47EntryBank_outgoingOwned
theorem s6Step47EntryFv_Incoming : rowsOwned s6Step47EntryFvBefore [s6Step47EntryFvRow,s6Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow] 2 s6Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47EntryFv_Outgoing : rowsOwned s6Step47EntryGvAfter [s6Step47EntryFvOut,s6Step47EntryGvOut] :=
  hmrRows_owned_drop s6Step47EntryGvAfter [s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut] 2 s6Step47EntryBank_outgoingOwned
theorem s6Step47EntryGv_Incoming : rowsOwned s6Step47EntryGvBefore [s6Step47EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow] 3 s6Step47EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step47EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step47EntryGv_Outgoing : rowsOwned s6Step47EntryGvAfter [s6Step47EntryGvOut] :=
  hmrRows_owned_drop s6Step47EntryGvAfter [s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut] 3 s6Step47EntryBank_outgoingOwned
theorem s6Step47EntryBank_rows : planWindowRowsLog s6Step47EntryFBefore [(s6Step47EntryFRow,244),(s6Step47EntryGRow,244),(s6Step47EntryFvRow,36),(s6Step47EntryGvRow,36)] [s6Step47EntryFFresh,s6Step47EntryGFresh,s6Step47EntryFvFresh,s6Step47EntryGvFresh]=
    some (s6Step47EntryGvAfter,[s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut],(growRow 795 s6Step47EntryFFresh ++ (growRow 777 s6Step47EntryGFresh ++ (growRow 776 s6Step47EntryFvFresh ++ (growRow 775 s6Step47EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step47EntryGvAfter [] []=some (s6Step47EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step47EntryGvBefore s6Step47EntryGvAfter s6Step47EntryGvAfter
    s6Step47EntryGvRow s6Step47EntryGvOut 36 s6Step47EntryGvFresh [] [] []
    (growRow 775 s6Step47EntryGvFresh) ([]) s6Step47EntryGv_Incoming s6Step47EntryGv_checked h4 s6Step47EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step47EntryFvBefore s6Step47EntryFvAfter s6Step47EntryGvAfter
    s6Step47EntryFvRow s6Step47EntryFvOut 36 s6Step47EntryFvFresh [(s6Step47EntryGvRow,36)] [s6Step47EntryGvFresh] [s6Step47EntryGvOut]
    (growRow 776 s6Step47EntryFvFresh) ((growRow 775 s6Step47EntryGvFresh ++ [])) s6Step47EntryFv_Incoming s6Step47EntryFv_checked h3 s6Step47EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step47EntryGBefore s6Step47EntryGAfter s6Step47EntryGvAfter
    s6Step47EntryGRow s6Step47EntryGOut 244 s6Step47EntryGFresh [(s6Step47EntryFvRow,36),(s6Step47EntryGvRow,36)] [s6Step47EntryFvFresh,s6Step47EntryGvFresh] [s6Step47EntryFvOut,s6Step47EntryGvOut]
    (growRow 777 s6Step47EntryGFresh) ((growRow 776 s6Step47EntryFvFresh ++ (growRow 775 s6Step47EntryGvFresh ++ []))) s6Step47EntryG_Incoming s6Step47EntryG_checked h2 s6Step47EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step47EntryFBefore s6Step47EntryFAfter s6Step47EntryGvAfter
    s6Step47EntryFRow s6Step47EntryFOut 244 s6Step47EntryFFresh [(s6Step47EntryGRow,244),(s6Step47EntryFvRow,36),(s6Step47EntryGvRow,36)] [s6Step47EntryGFresh,s6Step47EntryFvFresh,s6Step47EntryGvFresh] [s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut]
    (growRow 795 s6Step47EntryFFresh) ((growRow 777 s6Step47EntryGFresh ++ (growRow 776 s6Step47EntryFvFresh ++ (growRow 775 s6Step47EntryGvFresh ++ [])))) s6Step47EntryF_Incoming s6Step47EntryF_checked h1 s6Step47EntryF_Outgoing
  exact h0
theorem s6Step47EntryBank_checked : compileHmrBankResizeLog .entry s6Step47EntryFBefore ⟨s6Step47EntryFRow,s6Step47EntryGRow,s6Step47EntryFvRow,s6Step47EntryGvRow⟩ ⟨244,244,36,36⟩ [s6Step47EntryFFresh,s6Step47EntryGFresh,s6Step47EntryFvFresh,s6Step47EntryGvFresh]=
    some (s6Step47EntryGvAfter,⟨s6Step47EntryFOut,s6Step47EntryGOut,s6Step47EntryFvOut,s6Step47EntryGvOut⟩,(growRow 795 s6Step47EntryFFresh ++ (growRow 777 s6Step47EntryGFresh ++ (growRow 776 s6Step47EntryFvFresh ++ (growRow 775 s6Step47EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step47EntryBank_rows]
  rfl
def s6Step48EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499],795⟩
def s6Step48EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243],777⟩
def s6Step48EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779],776⟩
def s6Step48EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873],775⟩
theorem s6Step48EntryBank_incomingDistinct : ([s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step48EntryBank_outgoingOwned : rowsOwned s6Step48EntryGvAfter [s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step48EntryGvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48EntryF_Incoming : rowsOwned s6Step48EntryFBefore [s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow] 0 s6Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48EntryFBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48EntryF_Outgoing : rowsOwned s6Step48EntryGvAfter [s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut] :=
  hmrRows_owned_drop s6Step48EntryGvAfter [s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut] 0 s6Step48EntryBank_outgoingOwned
theorem s6Step48EntryG_Incoming : rowsOwned s6Step48EntryGBefore [s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow] 1 s6Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48EntryGBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48EntryG_Outgoing : rowsOwned s6Step48EntryGvAfter [s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut] :=
  hmrRows_owned_drop s6Step48EntryGvAfter [s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut] 1 s6Step48EntryBank_outgoingOwned
theorem s6Step48EntryFv_Incoming : rowsOwned s6Step48EntryFvBefore [s6Step48EntryFvRow,s6Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow] 2 s6Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48EntryFvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48EntryFv_Outgoing : rowsOwned s6Step48EntryGvAfter [s6Step48EntryFvOut,s6Step48EntryGvOut] :=
  hmrRows_owned_drop s6Step48EntryGvAfter [s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut] 2 s6Step48EntryBank_outgoingOwned
theorem s6Step48EntryGv_Incoming : rowsOwned s6Step48EntryGvBefore [s6Step48EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow] 3 s6Step48EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step48EntryGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step48EntryGv_Outgoing : rowsOwned s6Step48EntryGvAfter [s6Step48EntryGvOut] :=
  hmrRows_owned_drop s6Step48EntryGvAfter [s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut] 3 s6Step48EntryBank_outgoingOwned
theorem s6Step48EntryBank_rows : planWindowRowsLog s6Step48EntryFBefore [(s6Step48EntryFRow,244),(s6Step48EntryGRow,244),(s6Step48EntryFvRow,37),(s6Step48EntryGvRow,37)] [s6Step48EntryFFresh,s6Step48EntryGFresh,s6Step48EntryFvFresh,s6Step48EntryGvFresh]=
    some (s6Step48EntryGvAfter,[s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut],(growRow 795 s6Step48EntryFFresh ++ (growRow 777 s6Step48EntryGFresh ++ (growRow 776 s6Step48EntryFvFresh ++ (growRow 775 s6Step48EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step48EntryGvAfter [] []=some (s6Step48EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step48EntryGvBefore s6Step48EntryGvAfter s6Step48EntryGvAfter
    s6Step48EntryGvRow s6Step48EntryGvOut 37 s6Step48EntryGvFresh [] [] []
    (growRow 775 s6Step48EntryGvFresh) ([]) s6Step48EntryGv_Incoming s6Step48EntryGv_checked h4 s6Step48EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step48EntryFvBefore s6Step48EntryFvAfter s6Step48EntryGvAfter
    s6Step48EntryFvRow s6Step48EntryFvOut 37 s6Step48EntryFvFresh [(s6Step48EntryGvRow,37)] [s6Step48EntryGvFresh] [s6Step48EntryGvOut]
    (growRow 776 s6Step48EntryFvFresh) ((growRow 775 s6Step48EntryGvFresh ++ [])) s6Step48EntryFv_Incoming s6Step48EntryFv_checked h3 s6Step48EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step48EntryGBefore s6Step48EntryGAfter s6Step48EntryGvAfter
    s6Step48EntryGRow s6Step48EntryGOut 244 s6Step48EntryGFresh [(s6Step48EntryFvRow,37),(s6Step48EntryGvRow,37)] [s6Step48EntryFvFresh,s6Step48EntryGvFresh] [s6Step48EntryFvOut,s6Step48EntryGvOut]
    (growRow 777 s6Step48EntryGFresh) ((growRow 776 s6Step48EntryFvFresh ++ (growRow 775 s6Step48EntryGvFresh ++ []))) s6Step48EntryG_Incoming s6Step48EntryG_checked h2 s6Step48EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step48EntryFBefore s6Step48EntryFAfter s6Step48EntryGvAfter
    s6Step48EntryFRow s6Step48EntryFOut 244 s6Step48EntryFFresh [(s6Step48EntryGRow,244),(s6Step48EntryFvRow,37),(s6Step48EntryGvRow,37)] [s6Step48EntryGFresh,s6Step48EntryFvFresh,s6Step48EntryGvFresh] [s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut]
    (growRow 795 s6Step48EntryFFresh) ((growRow 777 s6Step48EntryGFresh ++ (growRow 776 s6Step48EntryFvFresh ++ (growRow 775 s6Step48EntryGvFresh ++ [])))) s6Step48EntryF_Incoming s6Step48EntryF_checked h1 s6Step48EntryF_Outgoing
  exact h0
theorem s6Step48EntryBank_checked : compileHmrBankResizeLog .entry s6Step48EntryFBefore ⟨s6Step48EntryFRow,s6Step48EntryGRow,s6Step48EntryFvRow,s6Step48EntryGvRow⟩ ⟨244,244,37,37⟩ [s6Step48EntryFFresh,s6Step48EntryGFresh,s6Step48EntryFvFresh,s6Step48EntryGvFresh]=
    some (s6Step48EntryGvAfter,⟨s6Step48EntryFOut,s6Step48EntryGOut,s6Step48EntryFvOut,s6Step48EntryGvOut⟩,(growRow 795 s6Step48EntryFFresh ++ (growRow 777 s6Step48EntryGFresh ++ (growRow 776 s6Step48EntryFvFresh ++ (growRow 775 s6Step48EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step48EntryBank_rows]
  rfl
def s6Step49EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499],795⟩
def s6Step49EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 863],777⟩
def s6Step49EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779],776⟩
def s6Step49EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873],775⟩
theorem s6Step49EntryBank_incomingDistinct : ([s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step49EntryBank_outgoingOwned : rowsOwned s6Step49EntryGvAfter [s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step49EntryGvAfter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49EntryF_Incoming : rowsOwned s6Step49EntryFBefore [s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow] 0 s6Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49EntryFBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49EntryF_Outgoing : rowsOwned s6Step49EntryGvAfter [s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut] :=
  hmrRows_owned_drop s6Step49EntryGvAfter [s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut] 0 s6Step49EntryBank_outgoingOwned
theorem s6Step49EntryG_Incoming : rowsOwned s6Step49EntryGBefore [s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow] 1 s6Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49EntryGBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49EntryG_Outgoing : rowsOwned s6Step49EntryGvAfter [s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut] :=
  hmrRows_owned_drop s6Step49EntryGvAfter [s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut] 1 s6Step49EntryBank_outgoingOwned
theorem s6Step49EntryFv_Incoming : rowsOwned s6Step49EntryFvBefore [s6Step49EntryFvRow,s6Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow] 2 s6Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49EntryFvBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49EntryFv_Outgoing : rowsOwned s6Step49EntryGvAfter [s6Step49EntryFvOut,s6Step49EntryGvOut] :=
  hmrRows_owned_drop s6Step49EntryGvAfter [s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut] 2 s6Step49EntryBank_outgoingOwned
theorem s6Step49EntryGv_Incoming : rowsOwned s6Step49EntryGvBefore [s6Step49EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow] 3 s6Step49EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step49EntryGvBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,865),(866,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step49EntryGv_Outgoing : rowsOwned s6Step49EntryGvAfter [s6Step49EntryGvOut] :=
  hmrRows_owned_drop s6Step49EntryGvAfter [s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut] 3 s6Step49EntryBank_outgoingOwned
theorem s6Step49EntryBank_rows : planWindowRowsLog s6Step49EntryFBefore [(s6Step49EntryFRow,244),(s6Step49EntryGRow,244),(s6Step49EntryFvRow,37),(s6Step49EntryGvRow,37)] [s6Step49EntryFFresh,s6Step49EntryGFresh,s6Step49EntryFvFresh,s6Step49EntryGvFresh]=
    some (s6Step49EntryGvAfter,[s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut],(growRow 795 s6Step49EntryFFresh ++ (growRow 777 s6Step49EntryGFresh ++ (growRow 776 s6Step49EntryFvFresh ++ (growRow 775 s6Step49EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step49EntryGvAfter [] []=some (s6Step49EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step49EntryGvBefore s6Step49EntryGvAfter s6Step49EntryGvAfter
    s6Step49EntryGvRow s6Step49EntryGvOut 37 s6Step49EntryGvFresh [] [] []
    (growRow 775 s6Step49EntryGvFresh) ([]) s6Step49EntryGv_Incoming s6Step49EntryGv_checked h4 s6Step49EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step49EntryFvBefore s6Step49EntryFvAfter s6Step49EntryGvAfter
    s6Step49EntryFvRow s6Step49EntryFvOut 37 s6Step49EntryFvFresh [(s6Step49EntryGvRow,37)] [s6Step49EntryGvFresh] [s6Step49EntryGvOut]
    (growRow 776 s6Step49EntryFvFresh) ((growRow 775 s6Step49EntryGvFresh ++ [])) s6Step49EntryFv_Incoming s6Step49EntryFv_checked h3 s6Step49EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step49EntryGBefore s6Step49EntryGAfter s6Step49EntryGvAfter
    s6Step49EntryGRow s6Step49EntryGOut 244 s6Step49EntryGFresh [(s6Step49EntryFvRow,37),(s6Step49EntryGvRow,37)] [s6Step49EntryFvFresh,s6Step49EntryGvFresh] [s6Step49EntryFvOut,s6Step49EntryGvOut]
    (growRow 777 s6Step49EntryGFresh) ((growRow 776 s6Step49EntryFvFresh ++ (growRow 775 s6Step49EntryGvFresh ++ []))) s6Step49EntryG_Incoming s6Step49EntryG_checked h2 s6Step49EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step49EntryFBefore s6Step49EntryFAfter s6Step49EntryGvAfter
    s6Step49EntryFRow s6Step49EntryFOut 244 s6Step49EntryFFresh [(s6Step49EntryGRow,244),(s6Step49EntryFvRow,37),(s6Step49EntryGvRow,37)] [s6Step49EntryGFresh,s6Step49EntryFvFresh,s6Step49EntryGvFresh] [s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut]
    (growRow 795 s6Step49EntryFFresh) ((growRow 777 s6Step49EntryGFresh ++ (growRow 776 s6Step49EntryFvFresh ++ (growRow 775 s6Step49EntryGvFresh ++ [])))) s6Step49EntryF_Incoming s6Step49EntryF_checked h1 s6Step49EntryF_Outgoing
  exact h0
theorem s6Step49EntryBank_checked : compileHmrBankResizeLog .entry s6Step49EntryFBefore ⟨s6Step49EntryFRow,s6Step49EntryGRow,s6Step49EntryFvRow,s6Step49EntryGvRow⟩ ⟨244,244,37,37⟩ [s6Step49EntryFFresh,s6Step49EntryGFresh,s6Step49EntryFvFresh,s6Step49EntryGvFresh]=
    some (s6Step49EntryGvAfter,⟨s6Step49EntryFOut,s6Step49EntryGOut,s6Step49EntryFvOut,s6Step49EntryGvOut⟩,(growRow 795 s6Step49EntryFFresh ++ (growRow 777 s6Step49EntryGFresh ++ (growRow 776 s6Step49EntryFvFresh ++ (growRow 775 s6Step49EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step49EntryBank_rows]
  rfl
def s6Step50EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498],795⟩
def s6Step50EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242],777⟩
def s6Step50EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865],776⟩
def s6Step50EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 789],775⟩
theorem s6Step50EntryBank_incomingDistinct : ([s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step50EntryBank_outgoingOwned : rowsOwned s6Step50EntryGvAfter [s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step50EntryGvAfter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50EntryF_Incoming : rowsOwned s6Step50EntryFBefore [s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow] 0 s6Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50EntryFBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50EntryF_Outgoing : rowsOwned s6Step50EntryGvAfter [s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut] :=
  hmrRows_owned_drop s6Step50EntryGvAfter [s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut] 0 s6Step50EntryBank_outgoingOwned
theorem s6Step50EntryG_Incoming : rowsOwned s6Step50EntryGBefore [s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow] 1 s6Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50EntryGBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50EntryG_Outgoing : rowsOwned s6Step50EntryGvAfter [s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut] :=
  hmrRows_owned_drop s6Step50EntryGvAfter [s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut] 1 s6Step50EntryBank_outgoingOwned
theorem s6Step50EntryFv_Incoming : rowsOwned s6Step50EntryFvBefore [s6Step50EntryFvRow,s6Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow] 2 s6Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50EntryFvBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50EntryFv_Outgoing : rowsOwned s6Step50EntryGvAfter [s6Step50EntryFvOut,s6Step50EntryGvOut] :=
  hmrRows_owned_drop s6Step50EntryGvAfter [s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut] 2 s6Step50EntryBank_outgoingOwned
theorem s6Step50EntryGv_Incoming : rowsOwned s6Step50EntryGvBefore [s6Step50EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow] 3 s6Step50EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step50EntryGvBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step50EntryGv_Outgoing : rowsOwned s6Step50EntryGvAfter [s6Step50EntryGvOut] :=
  hmrRows_owned_drop s6Step50EntryGvAfter [s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut] 3 s6Step50EntryBank_outgoingOwned
theorem s6Step50EntryBank_rows : planWindowRowsLog s6Step50EntryFBefore [(s6Step50EntryFRow,243),(s6Step50EntryGRow,243),(s6Step50EntryFvRow,38),(s6Step50EntryGvRow,38)] [s6Step50EntryFFresh,s6Step50EntryGFresh,s6Step50EntryFvFresh,s6Step50EntryGvFresh]=
    some (s6Step50EntryGvAfter,[s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut],(growRow 795 s6Step50EntryFFresh ++ (growRow 777 s6Step50EntryGFresh ++ (growRow 776 s6Step50EntryFvFresh ++ (growRow 775 s6Step50EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step50EntryGvAfter [] []=some (s6Step50EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step50EntryGvBefore s6Step50EntryGvAfter s6Step50EntryGvAfter
    s6Step50EntryGvRow s6Step50EntryGvOut 38 s6Step50EntryGvFresh [] [] []
    (growRow 775 s6Step50EntryGvFresh) ([]) s6Step50EntryGv_Incoming s6Step50EntryGv_checked h4 s6Step50EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step50EntryFvBefore s6Step50EntryFvAfter s6Step50EntryGvAfter
    s6Step50EntryFvRow s6Step50EntryFvOut 38 s6Step50EntryFvFresh [(s6Step50EntryGvRow,38)] [s6Step50EntryGvFresh] [s6Step50EntryGvOut]
    (growRow 776 s6Step50EntryFvFresh) ((growRow 775 s6Step50EntryGvFresh ++ [])) s6Step50EntryFv_Incoming s6Step50EntryFv_checked h3 s6Step50EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step50EntryGBefore s6Step50EntryGAfter s6Step50EntryGvAfter
    s6Step50EntryGRow s6Step50EntryGOut 243 s6Step50EntryGFresh [(s6Step50EntryFvRow,38),(s6Step50EntryGvRow,38)] [s6Step50EntryFvFresh,s6Step50EntryGvFresh] [s6Step50EntryFvOut,s6Step50EntryGvOut]
    (growRow 777 s6Step50EntryGFresh) ((growRow 776 s6Step50EntryFvFresh ++ (growRow 775 s6Step50EntryGvFresh ++ []))) s6Step50EntryG_Incoming s6Step50EntryG_checked h2 s6Step50EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step50EntryFBefore s6Step50EntryFAfter s6Step50EntryGvAfter
    s6Step50EntryFRow s6Step50EntryFOut 243 s6Step50EntryFFresh [(s6Step50EntryGRow,243),(s6Step50EntryFvRow,38),(s6Step50EntryGvRow,38)] [s6Step50EntryGFresh,s6Step50EntryFvFresh,s6Step50EntryGvFresh] [s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut]
    (growRow 795 s6Step50EntryFFresh) ((growRow 777 s6Step50EntryGFresh ++ (growRow 776 s6Step50EntryFvFresh ++ (growRow 775 s6Step50EntryGvFresh ++ [])))) s6Step50EntryF_Incoming s6Step50EntryF_checked h1 s6Step50EntryF_Outgoing
  exact h0
theorem s6Step50EntryBank_checked : compileHmrBankResizeLog .entry s6Step50EntryFBefore ⟨s6Step50EntryFRow,s6Step50EntryGRow,s6Step50EntryFvRow,s6Step50EntryGvRow⟩ ⟨243,243,38,38⟩ [s6Step50EntryFFresh,s6Step50EntryGFresh,s6Step50EntryFvFresh,s6Step50EntryGvFresh]=
    some (s6Step50EntryGvAfter,⟨s6Step50EntryFOut,s6Step50EntryGOut,s6Step50EntryFvOut,s6Step50EntryGvOut⟩,(growRow 795 s6Step50EntryFFresh ++ (growRow 777 s6Step50EntryGFresh ++ (growRow 776 s6Step50EntryFvFresh ++ (growRow 775 s6Step50EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step50EntryBank_rows]
  rfl
def s6Step51EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498],795⟩
def s6Step51EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 880],777⟩
def s6Step51EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865],776⟩
def s6Step51EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845],775⟩
theorem s6Step51EntryBank_incomingDistinct : ([s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step51EntryBank_outgoingOwned : rowsOwned s6Step51EntryGvAfter [s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step51EntryGvAfter (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51EntryF_Incoming : rowsOwned s6Step51EntryFBefore [s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow] 0 s6Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51EntryFBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51EntryF_Outgoing : rowsOwned s6Step51EntryGvAfter [s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut] :=
  hmrRows_owned_drop s6Step51EntryGvAfter [s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut] 0 s6Step51EntryBank_outgoingOwned
theorem s6Step51EntryG_Incoming : rowsOwned s6Step51EntryGBefore [s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow] 1 s6Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51EntryGBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51EntryG_Outgoing : rowsOwned s6Step51EntryGvAfter [s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut] :=
  hmrRows_owned_drop s6Step51EntryGvAfter [s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut] 1 s6Step51EntryBank_outgoingOwned
theorem s6Step51EntryFv_Incoming : rowsOwned s6Step51EntryFvBefore [s6Step51EntryFvRow,s6Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow] 2 s6Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51EntryFvBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51EntryFv_Outgoing : rowsOwned s6Step51EntryGvAfter [s6Step51EntryFvOut,s6Step51EntryGvOut] :=
  hmrRows_owned_drop s6Step51EntryGvAfter [s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut] 2 s6Step51EntryBank_outgoingOwned
theorem s6Step51EntryGv_Incoming : rowsOwned s6Step51EntryGvBefore [s6Step51EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow] 3 s6Step51EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step51EntryGvBefore (fun q => ([(0,782),(785,787),(794,797),(799,800),(802,803),(807,808),(813,815),(821,823),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step51EntryGv_Outgoing : rowsOwned s6Step51EntryGvAfter [s6Step51EntryGvOut] :=
  hmrRows_owned_drop s6Step51EntryGvAfter [s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut] 3 s6Step51EntryBank_outgoingOwned
theorem s6Step51EntryBank_rows : planWindowRowsLog s6Step51EntryFBefore [(s6Step51EntryFRow,243),(s6Step51EntryGRow,243),(s6Step51EntryFvRow,38),(s6Step51EntryGvRow,38)] [s6Step51EntryFFresh,s6Step51EntryGFresh,s6Step51EntryFvFresh,s6Step51EntryGvFresh]=
    some (s6Step51EntryGvAfter,[s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut],(growRow 795 s6Step51EntryFFresh ++ (growRow 777 s6Step51EntryGFresh ++ (growRow 776 s6Step51EntryFvFresh ++ (growRow 775 s6Step51EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step51EntryGvAfter [] []=some (s6Step51EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step51EntryGvBefore s6Step51EntryGvAfter s6Step51EntryGvAfter
    s6Step51EntryGvRow s6Step51EntryGvOut 38 s6Step51EntryGvFresh [] [] []
    (growRow 775 s6Step51EntryGvFresh) ([]) s6Step51EntryGv_Incoming s6Step51EntryGv_checked h4 s6Step51EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step51EntryFvBefore s6Step51EntryFvAfter s6Step51EntryGvAfter
    s6Step51EntryFvRow s6Step51EntryFvOut 38 s6Step51EntryFvFresh [(s6Step51EntryGvRow,38)] [s6Step51EntryGvFresh] [s6Step51EntryGvOut]
    (growRow 776 s6Step51EntryFvFresh) ((growRow 775 s6Step51EntryGvFresh ++ [])) s6Step51EntryFv_Incoming s6Step51EntryFv_checked h3 s6Step51EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step51EntryGBefore s6Step51EntryGAfter s6Step51EntryGvAfter
    s6Step51EntryGRow s6Step51EntryGOut 243 s6Step51EntryGFresh [(s6Step51EntryFvRow,38),(s6Step51EntryGvRow,38)] [s6Step51EntryFvFresh,s6Step51EntryGvFresh] [s6Step51EntryFvOut,s6Step51EntryGvOut]
    (growRow 777 s6Step51EntryGFresh) ((growRow 776 s6Step51EntryFvFresh ++ (growRow 775 s6Step51EntryGvFresh ++ []))) s6Step51EntryG_Incoming s6Step51EntryG_checked h2 s6Step51EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step51EntryFBefore s6Step51EntryFAfter s6Step51EntryGvAfter
    s6Step51EntryFRow s6Step51EntryFOut 243 s6Step51EntryFFresh [(s6Step51EntryGRow,243),(s6Step51EntryFvRow,38),(s6Step51EntryGvRow,38)] [s6Step51EntryGFresh,s6Step51EntryFvFresh,s6Step51EntryGvFresh] [s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut]
    (growRow 795 s6Step51EntryFFresh) ((growRow 777 s6Step51EntryGFresh ++ (growRow 776 s6Step51EntryFvFresh ++ (growRow 775 s6Step51EntryGvFresh ++ [])))) s6Step51EntryF_Incoming s6Step51EntryF_checked h1 s6Step51EntryF_Outgoing
  exact h0
theorem s6Step51EntryBank_checked : compileHmrBankResizeLog .entry s6Step51EntryFBefore ⟨s6Step51EntryFRow,s6Step51EntryGRow,s6Step51EntryFvRow,s6Step51EntryGvRow⟩ ⟨243,243,38,38⟩ [s6Step51EntryFFresh,s6Step51EntryGFresh,s6Step51EntryFvFresh,s6Step51EntryGvFresh]=
    some (s6Step51EntryGvAfter,⟨s6Step51EntryFOut,s6Step51EntryGOut,s6Step51EntryFvOut,s6Step51EntryGvOut⟩,(growRow 795 s6Step51EntryFFresh ++ (growRow 777 s6Step51EntryGFresh ++ (growRow 776 s6Step51EntryFvFresh ++ (growRow 775 s6Step51EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step51EntryBank_rows]
  rfl
def s6Step52EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497],795⟩
def s6Step52EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241],777⟩
def s6Step52EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823],776⟩
def s6Step52EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 789],775⟩
theorem s6Step52EntryBank_incomingDistinct : ([s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step52EntryBank_outgoingOwned : rowsOwned s6Step52EntryGvAfter [s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step52EntryGvAfter (fun q => ([(0,782),(785,787),(788,790),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52EntryF_Incoming : rowsOwned s6Step52EntryFBefore [s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow] 0 s6Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52EntryF_Outgoing : rowsOwned s6Step52EntryGvAfter [s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut] :=
  hmrRows_owned_drop s6Step52EntryGvAfter [s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut] 0 s6Step52EntryBank_outgoingOwned
theorem s6Step52EntryG_Incoming : rowsOwned s6Step52EntryGBefore [s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow] 1 s6Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52EntryGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52EntryG_Outgoing : rowsOwned s6Step52EntryGvAfter [s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut] :=
  hmrRows_owned_drop s6Step52EntryGvAfter [s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut] 1 s6Step52EntryBank_outgoingOwned
theorem s6Step52EntryFv_Incoming : rowsOwned s6Step52EntryFvBefore [s6Step52EntryFvRow,s6Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow] 2 s6Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52EntryFvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52EntryFv_Outgoing : rowsOwned s6Step52EntryGvAfter [s6Step52EntryFvOut,s6Step52EntryGvOut] :=
  hmrRows_owned_drop s6Step52EntryGvAfter [s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut] 2 s6Step52EntryBank_outgoingOwned
theorem s6Step52EntryGv_Incoming : rowsOwned s6Step52EntryGvBefore [s6Step52EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow] 3 s6Step52EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step52EntryGvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step52EntryGv_Outgoing : rowsOwned s6Step52EntryGvAfter [s6Step52EntryGvOut] :=
  hmrRows_owned_drop s6Step52EntryGvAfter [s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut] 3 s6Step52EntryBank_outgoingOwned
theorem s6Step52EntryBank_rows : planWindowRowsLog s6Step52EntryFBefore [(s6Step52EntryFRow,242),(s6Step52EntryGRow,242),(s6Step52EntryFvRow,39),(s6Step52EntryGvRow,39)] [s6Step52EntryFFresh,s6Step52EntryGFresh,s6Step52EntryFvFresh,s6Step52EntryGvFresh]=
    some (s6Step52EntryGvAfter,[s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut],(growRow 795 s6Step52EntryFFresh ++ (growRow 777 s6Step52EntryGFresh ++ (growRow 776 s6Step52EntryFvFresh ++ (growRow 775 s6Step52EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step52EntryGvAfter [] []=some (s6Step52EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step52EntryGvBefore s6Step52EntryGvAfter s6Step52EntryGvAfter
    s6Step52EntryGvRow s6Step52EntryGvOut 39 s6Step52EntryGvFresh [] [] []
    (growRow 775 s6Step52EntryGvFresh) ([]) s6Step52EntryGv_Incoming s6Step52EntryGv_checked h4 s6Step52EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step52EntryFvBefore s6Step52EntryFvAfter s6Step52EntryGvAfter
    s6Step52EntryFvRow s6Step52EntryFvOut 39 s6Step52EntryFvFresh [(s6Step52EntryGvRow,39)] [s6Step52EntryGvFresh] [s6Step52EntryGvOut]
    (growRow 776 s6Step52EntryFvFresh) ((growRow 775 s6Step52EntryGvFresh ++ [])) s6Step52EntryFv_Incoming s6Step52EntryFv_checked h3 s6Step52EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step52EntryGBefore s6Step52EntryGAfter s6Step52EntryGvAfter
    s6Step52EntryGRow s6Step52EntryGOut 242 s6Step52EntryGFresh [(s6Step52EntryFvRow,39),(s6Step52EntryGvRow,39)] [s6Step52EntryFvFresh,s6Step52EntryGvFresh] [s6Step52EntryFvOut,s6Step52EntryGvOut]
    (growRow 777 s6Step52EntryGFresh) ((growRow 776 s6Step52EntryFvFresh ++ (growRow 775 s6Step52EntryGvFresh ++ []))) s6Step52EntryG_Incoming s6Step52EntryG_checked h2 s6Step52EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step52EntryFBefore s6Step52EntryFAfter s6Step52EntryGvAfter
    s6Step52EntryFRow s6Step52EntryFOut 242 s6Step52EntryFFresh [(s6Step52EntryGRow,242),(s6Step52EntryFvRow,39),(s6Step52EntryGvRow,39)] [s6Step52EntryGFresh,s6Step52EntryFvFresh,s6Step52EntryGvFresh] [s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut]
    (growRow 795 s6Step52EntryFFresh) ((growRow 777 s6Step52EntryGFresh ++ (growRow 776 s6Step52EntryFvFresh ++ (growRow 775 s6Step52EntryGvFresh ++ [])))) s6Step52EntryF_Incoming s6Step52EntryF_checked h1 s6Step52EntryF_Outgoing
  exact h0
theorem s6Step52EntryBank_checked : compileHmrBankResizeLog .entry s6Step52EntryFBefore ⟨s6Step52EntryFRow,s6Step52EntryGRow,s6Step52EntryFvRow,s6Step52EntryGvRow⟩ ⟨242,242,39,39⟩ [s6Step52EntryFFresh,s6Step52EntryGFresh,s6Step52EntryFvFresh,s6Step52EntryGvFresh]=
    some (s6Step52EntryGvAfter,⟨s6Step52EntryFOut,s6Step52EntryGOut,s6Step52EntryFvOut,s6Step52EntryGvOut⟩,(growRow 795 s6Step52EntryFFresh ++ (growRow 777 s6Step52EntryGFresh ++ (growRow 776 s6Step52EntryFvFresh ++ (growRow 775 s6Step52EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step52EntryBank_rows]
  rfl
def s6Step53EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496],795⟩
def s6Step53EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],777⟩
def s6Step53EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823],776⟩
def s6Step53EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864],775⟩
theorem s6Step53EntryBank_incomingDistinct : ([s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step53EntryBank_outgoingOwned : rowsOwned s6Step53EntryGvAfter [s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step53EntryGvAfter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(864,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53EntryF_Incoming : rowsOwned s6Step53EntryFBefore [s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow] 0 s6Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53EntryF_Outgoing : rowsOwned s6Step53EntryGvAfter [s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut] :=
  hmrRows_owned_drop s6Step53EntryGvAfter [s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut] 0 s6Step53EntryBank_outgoingOwned
theorem s6Step53EntryG_Incoming : rowsOwned s6Step53EntryGBefore [s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow] 1 s6Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53EntryGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53EntryG_Outgoing : rowsOwned s6Step53EntryGvAfter [s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut] :=
  hmrRows_owned_drop s6Step53EntryGvAfter [s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut] 1 s6Step53EntryBank_outgoingOwned
theorem s6Step53EntryFv_Incoming : rowsOwned s6Step53EntryFvBefore [s6Step53EntryFvRow,s6Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow] 2 s6Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53EntryFvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53EntryFv_Outgoing : rowsOwned s6Step53EntryGvAfter [s6Step53EntryFvOut,s6Step53EntryGvOut] :=
  hmrRows_owned_drop s6Step53EntryGvAfter [s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut] 2 s6Step53EntryBank_outgoingOwned
theorem s6Step53EntryGv_Incoming : rowsOwned s6Step53EntryGvBefore [s6Step53EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow] 3 s6Step53EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step53EntryGvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,863),(865,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,889),(890,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step53EntryGv_Outgoing : rowsOwned s6Step53EntryGvAfter [s6Step53EntryGvOut] :=
  hmrRows_owned_drop s6Step53EntryGvAfter [s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut] 3 s6Step53EntryBank_outgoingOwned
theorem s6Step53EntryBank_rows : planWindowRowsLog s6Step53EntryFBefore [(s6Step53EntryFRow,241),(s6Step53EntryGRow,241),(s6Step53EntryFvRow,39),(s6Step53EntryGvRow,39)] [s6Step53EntryFFresh,s6Step53EntryGFresh,s6Step53EntryFvFresh,s6Step53EntryGvFresh]=
    some (s6Step53EntryGvAfter,[s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut],(growRow 795 s6Step53EntryFFresh ++ (growRow 777 s6Step53EntryGFresh ++ (growRow 776 s6Step53EntryFvFresh ++ (growRow 775 s6Step53EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step53EntryGvAfter [] []=some (s6Step53EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step53EntryGvBefore s6Step53EntryGvAfter s6Step53EntryGvAfter
    s6Step53EntryGvRow s6Step53EntryGvOut 39 s6Step53EntryGvFresh [] [] []
    (growRow 775 s6Step53EntryGvFresh) ([]) s6Step53EntryGv_Incoming s6Step53EntryGv_checked h4 s6Step53EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step53EntryFvBefore s6Step53EntryFvAfter s6Step53EntryGvAfter
    s6Step53EntryFvRow s6Step53EntryFvOut 39 s6Step53EntryFvFresh [(s6Step53EntryGvRow,39)] [s6Step53EntryGvFresh] [s6Step53EntryGvOut]
    (growRow 776 s6Step53EntryFvFresh) ((growRow 775 s6Step53EntryGvFresh ++ [])) s6Step53EntryFv_Incoming s6Step53EntryFv_checked h3 s6Step53EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step53EntryGBefore s6Step53EntryGAfter s6Step53EntryGvAfter
    s6Step53EntryGRow s6Step53EntryGOut 241 s6Step53EntryGFresh [(s6Step53EntryFvRow,39),(s6Step53EntryGvRow,39)] [s6Step53EntryFvFresh,s6Step53EntryGvFresh] [s6Step53EntryFvOut,s6Step53EntryGvOut]
    (growRow 777 s6Step53EntryGFresh) ((growRow 776 s6Step53EntryFvFresh ++ (growRow 775 s6Step53EntryGvFresh ++ []))) s6Step53EntryG_Incoming s6Step53EntryG_checked h2 s6Step53EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step53EntryFBefore s6Step53EntryFAfter s6Step53EntryGvAfter
    s6Step53EntryFRow s6Step53EntryFOut 241 s6Step53EntryFFresh [(s6Step53EntryGRow,241),(s6Step53EntryFvRow,39),(s6Step53EntryGvRow,39)] [s6Step53EntryGFresh,s6Step53EntryFvFresh,s6Step53EntryGvFresh] [s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut]
    (growRow 795 s6Step53EntryFFresh) ((growRow 777 s6Step53EntryGFresh ++ (growRow 776 s6Step53EntryFvFresh ++ (growRow 775 s6Step53EntryGvFresh ++ [])))) s6Step53EntryF_Incoming s6Step53EntryF_checked h1 s6Step53EntryF_Outgoing
  exact h0
theorem s6Step53EntryBank_checked : compileHmrBankResizeLog .entry s6Step53EntryFBefore ⟨s6Step53EntryFRow,s6Step53EntryGRow,s6Step53EntryFvRow,s6Step53EntryGvRow⟩ ⟨241,241,39,39⟩ [s6Step53EntryFFresh,s6Step53EntryGFresh,s6Step53EntryFvFresh,s6Step53EntryGvFresh]=
    some (s6Step53EntryGvAfter,⟨s6Step53EntryFOut,s6Step53EntryGOut,s6Step53EntryFvOut,s6Step53EntryGvOut⟩,(growRow 795 s6Step53EntryFFresh ++ (growRow 777 s6Step53EntryGFresh ++ (growRow 776 s6Step53EntryFvFresh ++ (growRow 775 s6Step53EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step53EntryBank_rows]
  rfl
def s6Step54EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496],795⟩
def s6Step54EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240],777⟩
def s6Step54EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863],776⟩
def s6Step54EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828],775⟩
theorem s6Step54EntryBank_incomingDistinct : ([s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step54EntryBank_outgoingOwned : rowsOwned s6Step54EntryGvAfter [s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step54EntryGvAfter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54EntryF_Incoming : rowsOwned s6Step54EntryFBefore [s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow] 0 s6Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54EntryF_Outgoing : rowsOwned s6Step54EntryGvAfter [s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut] :=
  hmrRows_owned_drop s6Step54EntryGvAfter [s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut] 0 s6Step54EntryBank_outgoingOwned
theorem s6Step54EntryG_Incoming : rowsOwned s6Step54EntryGBefore [s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow] 1 s6Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54EntryGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54EntryG_Outgoing : rowsOwned s6Step54EntryGvAfter [s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut] :=
  hmrRows_owned_drop s6Step54EntryGvAfter [s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut] 1 s6Step54EntryBank_outgoingOwned
theorem s6Step54EntryFv_Incoming : rowsOwned s6Step54EntryFvBefore [s6Step54EntryFvRow,s6Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow] 2 s6Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54EntryFvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54EntryFv_Outgoing : rowsOwned s6Step54EntryGvAfter [s6Step54EntryFvOut,s6Step54EntryGvOut] :=
  hmrRows_owned_drop s6Step54EntryGvAfter [s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut] 2 s6Step54EntryBank_outgoingOwned
theorem s6Step54EntryGv_Incoming : rowsOwned s6Step54EntryGvBefore [s6Step54EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow] 3 s6Step54EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step54EntryGvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,828),(829,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,875),(876,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step54EntryGv_Outgoing : rowsOwned s6Step54EntryGvAfter [s6Step54EntryGvOut] :=
  hmrRows_owned_drop s6Step54EntryGvAfter [s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut] 3 s6Step54EntryBank_outgoingOwned
theorem s6Step54EntryBank_rows : planWindowRowsLog s6Step54EntryFBefore [(s6Step54EntryFRow,241),(s6Step54EntryGRow,241),(s6Step54EntryFvRow,40),(s6Step54EntryGvRow,40)] [s6Step54EntryFFresh,s6Step54EntryGFresh,s6Step54EntryFvFresh,s6Step54EntryGvFresh]=
    some (s6Step54EntryGvAfter,[s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut],(growRow 795 s6Step54EntryFFresh ++ (growRow 777 s6Step54EntryGFresh ++ (growRow 776 s6Step54EntryFvFresh ++ (growRow 775 s6Step54EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step54EntryGvAfter [] []=some (s6Step54EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step54EntryGvBefore s6Step54EntryGvAfter s6Step54EntryGvAfter
    s6Step54EntryGvRow s6Step54EntryGvOut 40 s6Step54EntryGvFresh [] [] []
    (growRow 775 s6Step54EntryGvFresh) ([]) s6Step54EntryGv_Incoming s6Step54EntryGv_checked h4 s6Step54EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step54EntryFvBefore s6Step54EntryFvAfter s6Step54EntryGvAfter
    s6Step54EntryFvRow s6Step54EntryFvOut 40 s6Step54EntryFvFresh [(s6Step54EntryGvRow,40)] [s6Step54EntryGvFresh] [s6Step54EntryGvOut]
    (growRow 776 s6Step54EntryFvFresh) ((growRow 775 s6Step54EntryGvFresh ++ [])) s6Step54EntryFv_Incoming s6Step54EntryFv_checked h3 s6Step54EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step54EntryGBefore s6Step54EntryGAfter s6Step54EntryGvAfter
    s6Step54EntryGRow s6Step54EntryGOut 241 s6Step54EntryGFresh [(s6Step54EntryFvRow,40),(s6Step54EntryGvRow,40)] [s6Step54EntryFvFresh,s6Step54EntryGvFresh] [s6Step54EntryFvOut,s6Step54EntryGvOut]
    (growRow 777 s6Step54EntryGFresh) ((growRow 776 s6Step54EntryFvFresh ++ (growRow 775 s6Step54EntryGvFresh ++ []))) s6Step54EntryG_Incoming s6Step54EntryG_checked h2 s6Step54EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step54EntryFBefore s6Step54EntryFAfter s6Step54EntryGvAfter
    s6Step54EntryFRow s6Step54EntryFOut 241 s6Step54EntryFFresh [(s6Step54EntryGRow,241),(s6Step54EntryFvRow,40),(s6Step54EntryGvRow,40)] [s6Step54EntryGFresh,s6Step54EntryFvFresh,s6Step54EntryGvFresh] [s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut]
    (growRow 795 s6Step54EntryFFresh) ((growRow 777 s6Step54EntryGFresh ++ (growRow 776 s6Step54EntryFvFresh ++ (growRow 775 s6Step54EntryGvFresh ++ [])))) s6Step54EntryF_Incoming s6Step54EntryF_checked h1 s6Step54EntryF_Outgoing
  exact h0
theorem s6Step54EntryBank_checked : compileHmrBankResizeLog .entry s6Step54EntryFBefore ⟨s6Step54EntryFRow,s6Step54EntryGRow,s6Step54EntryFvRow,s6Step54EntryGvRow⟩ ⟨241,241,40,40⟩ [s6Step54EntryFFresh,s6Step54EntryGFresh,s6Step54EntryFvFresh,s6Step54EntryGvFresh]=
    some (s6Step54EntryGvAfter,⟨s6Step54EntryFOut,s6Step54EntryGOut,s6Step54EntryFvOut,s6Step54EntryGvOut⟩,(growRow 795 s6Step54EntryFFresh ++ (growRow 777 s6Step54EntryGFresh ++ (growRow 776 s6Step54EntryFvFresh ++ (growRow 775 s6Step54EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step54EntryBank_rows]
  rfl
def s6Step55EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496],795⟩
def s6Step55EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 880],777⟩
def s6Step55EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 875],776⟩
def s6Step55EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818],775⟩
theorem s6Step55EntryBank_incomingDistinct : ([s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step55EntryBank_outgoingOwned : rowsOwned s6Step55EntryGvAfter [s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step55EntryGvAfter (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55EntryF_Incoming : rowsOwned s6Step55EntryFBefore [s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow] 0 s6Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55EntryF_Outgoing : rowsOwned s6Step55EntryGvAfter [s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut] :=
  hmrRows_owned_drop s6Step55EntryGvAfter [s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut] 0 s6Step55EntryBank_outgoingOwned
theorem s6Step55EntryG_Incoming : rowsOwned s6Step55EntryGBefore [s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow] 1 s6Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55EntryGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55EntryG_Outgoing : rowsOwned s6Step55EntryGvAfter [s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut] :=
  hmrRows_owned_drop s6Step55EntryGvAfter [s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut] 1 s6Step55EntryBank_outgoingOwned
theorem s6Step55EntryFv_Incoming : rowsOwned s6Step55EntryFvBefore [s6Step55EntryFvRow,s6Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow] 2 s6Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55EntryFvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55EntryFv_Outgoing : rowsOwned s6Step55EntryGvAfter [s6Step55EntryFvOut,s6Step55EntryGvOut] :=
  hmrRows_owned_drop s6Step55EntryGvAfter [s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut] 2 s6Step55EntryBank_outgoingOwned
theorem s6Step55EntryGv_Incoming : rowsOwned s6Step55EntryGvBefore [s6Step55EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow] 3 s6Step55EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step55EntryGvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step55EntryGv_Outgoing : rowsOwned s6Step55EntryGvAfter [s6Step55EntryGvOut] :=
  hmrRows_owned_drop s6Step55EntryGvAfter [s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut] 3 s6Step55EntryBank_outgoingOwned
theorem s6Step55EntryBank_rows : planWindowRowsLog s6Step55EntryFBefore [(s6Step55EntryFRow,241),(s6Step55EntryGRow,241),(s6Step55EntryFvRow,41),(s6Step55EntryGvRow,41)] [s6Step55EntryFFresh,s6Step55EntryGFresh,s6Step55EntryFvFresh,s6Step55EntryGvFresh]=
    some (s6Step55EntryGvAfter,[s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut],(growRow 795 s6Step55EntryFFresh ++ (growRow 777 s6Step55EntryGFresh ++ (growRow 776 s6Step55EntryFvFresh ++ (growRow 775 s6Step55EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step55EntryGvAfter [] []=some (s6Step55EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step55EntryGvBefore s6Step55EntryGvAfter s6Step55EntryGvAfter
    s6Step55EntryGvRow s6Step55EntryGvOut 41 s6Step55EntryGvFresh [] [] []
    (growRow 775 s6Step55EntryGvFresh) ([]) s6Step55EntryGv_Incoming s6Step55EntryGv_checked h4 s6Step55EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step55EntryFvBefore s6Step55EntryFvAfter s6Step55EntryGvAfter
    s6Step55EntryFvRow s6Step55EntryFvOut 41 s6Step55EntryFvFresh [(s6Step55EntryGvRow,41)] [s6Step55EntryGvFresh] [s6Step55EntryGvOut]
    (growRow 776 s6Step55EntryFvFresh) ((growRow 775 s6Step55EntryGvFresh ++ [])) s6Step55EntryFv_Incoming s6Step55EntryFv_checked h3 s6Step55EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step55EntryGBefore s6Step55EntryGAfter s6Step55EntryGvAfter
    s6Step55EntryGRow s6Step55EntryGOut 241 s6Step55EntryGFresh [(s6Step55EntryFvRow,41),(s6Step55EntryGvRow,41)] [s6Step55EntryFvFresh,s6Step55EntryGvFresh] [s6Step55EntryFvOut,s6Step55EntryGvOut]
    (growRow 777 s6Step55EntryGFresh) ((growRow 776 s6Step55EntryFvFresh ++ (growRow 775 s6Step55EntryGvFresh ++ []))) s6Step55EntryG_Incoming s6Step55EntryG_checked h2 s6Step55EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step55EntryFBefore s6Step55EntryFAfter s6Step55EntryGvAfter
    s6Step55EntryFRow s6Step55EntryFOut 241 s6Step55EntryFFresh [(s6Step55EntryGRow,241),(s6Step55EntryFvRow,41),(s6Step55EntryGvRow,41)] [s6Step55EntryGFresh,s6Step55EntryFvFresh,s6Step55EntryGvFresh] [s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut]
    (growRow 795 s6Step55EntryFFresh) ((growRow 777 s6Step55EntryGFresh ++ (growRow 776 s6Step55EntryFvFresh ++ (growRow 775 s6Step55EntryGvFresh ++ [])))) s6Step55EntryF_Incoming s6Step55EntryF_checked h1 s6Step55EntryF_Outgoing
  exact h0
theorem s6Step55EntryBank_checked : compileHmrBankResizeLog .entry s6Step55EntryFBefore ⟨s6Step55EntryFRow,s6Step55EntryGRow,s6Step55EntryFvRow,s6Step55EntryGvRow⟩ ⟨241,241,41,41⟩ [s6Step55EntryFFresh,s6Step55EntryGFresh,s6Step55EntryFvFresh,s6Step55EntryGvFresh]=
    some (s6Step55EntryGvAfter,⟨s6Step55EntryFOut,s6Step55EntryGOut,s6Step55EntryFvOut,s6Step55EntryGvOut⟩,(growRow 795 s6Step55EntryFFresh ++ (growRow 777 s6Step55EntryGFresh ++ (growRow 776 s6Step55EntryFvFresh ++ (growRow 775 s6Step55EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step55EntryBank_rows]
  rfl
def s6Step56EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495],795⟩
def s6Step56EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239],777⟩
def s6Step56EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793],776⟩
def s6Step56EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818],775⟩
theorem s6Step56EntryBank_incomingDistinct : ([s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step56EntryBank_outgoingOwned : rowsOwned s6Step56EntryGvAfter [s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step56EntryGvAfter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56EntryF_Incoming : rowsOwned s6Step56EntryFBefore [s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow] 0 s6Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56EntryF_Outgoing : rowsOwned s6Step56EntryGvAfter [s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut] :=
  hmrRows_owned_drop s6Step56EntryGvAfter [s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut] 0 s6Step56EntryBank_outgoingOwned
theorem s6Step56EntryG_Incoming : rowsOwned s6Step56EntryGBefore [s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow] 1 s6Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56EntryGBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56EntryG_Outgoing : rowsOwned s6Step56EntryGvAfter [s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut] :=
  hmrRows_owned_drop s6Step56EntryGvAfter [s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut] 1 s6Step56EntryBank_outgoingOwned
theorem s6Step56EntryFv_Incoming : rowsOwned s6Step56EntryFvBefore [s6Step56EntryFvRow,s6Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow] 2 s6Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56EntryFvBefore (fun q => ([(0,782),(785,787),(788,789),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56EntryFv_Outgoing : rowsOwned s6Step56EntryGvAfter [s6Step56EntryFvOut,s6Step56EntryGvOut] :=
  hmrRows_owned_drop s6Step56EntryGvAfter [s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut] 2 s6Step56EntryBank_outgoingOwned
theorem s6Step56EntryGv_Incoming : rowsOwned s6Step56EntryGvBefore [s6Step56EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow] 3 s6Step56EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step56EntryGvBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step56EntryGv_Outgoing : rowsOwned s6Step56EntryGvAfter [s6Step56EntryGvOut] :=
  hmrRows_owned_drop s6Step56EntryGvAfter [s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut] 3 s6Step56EntryBank_outgoingOwned
theorem s6Step56EntryBank_rows : planWindowRowsLog s6Step56EntryFBefore [(s6Step56EntryFRow,240),(s6Step56EntryGRow,240),(s6Step56EntryFvRow,41),(s6Step56EntryGvRow,41)] [s6Step56EntryFFresh,s6Step56EntryGFresh,s6Step56EntryFvFresh,s6Step56EntryGvFresh]=
    some (s6Step56EntryGvAfter,[s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut],(growRow 795 s6Step56EntryFFresh ++ (growRow 777 s6Step56EntryGFresh ++ (growRow 776 s6Step56EntryFvFresh ++ (growRow 775 s6Step56EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step56EntryGvAfter [] []=some (s6Step56EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step56EntryGvBefore s6Step56EntryGvAfter s6Step56EntryGvAfter
    s6Step56EntryGvRow s6Step56EntryGvOut 41 s6Step56EntryGvFresh [] [] []
    (growRow 775 s6Step56EntryGvFresh) ([]) s6Step56EntryGv_Incoming s6Step56EntryGv_checked h4 s6Step56EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step56EntryFvBefore s6Step56EntryFvAfter s6Step56EntryGvAfter
    s6Step56EntryFvRow s6Step56EntryFvOut 41 s6Step56EntryFvFresh [(s6Step56EntryGvRow,41)] [s6Step56EntryGvFresh] [s6Step56EntryGvOut]
    (growRow 776 s6Step56EntryFvFresh) ((growRow 775 s6Step56EntryGvFresh ++ [])) s6Step56EntryFv_Incoming s6Step56EntryFv_checked h3 s6Step56EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step56EntryGBefore s6Step56EntryGAfter s6Step56EntryGvAfter
    s6Step56EntryGRow s6Step56EntryGOut 240 s6Step56EntryGFresh [(s6Step56EntryFvRow,41),(s6Step56EntryGvRow,41)] [s6Step56EntryFvFresh,s6Step56EntryGvFresh] [s6Step56EntryFvOut,s6Step56EntryGvOut]
    (growRow 777 s6Step56EntryGFresh) ((growRow 776 s6Step56EntryFvFresh ++ (growRow 775 s6Step56EntryGvFresh ++ []))) s6Step56EntryG_Incoming s6Step56EntryG_checked h2 s6Step56EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step56EntryFBefore s6Step56EntryFAfter s6Step56EntryGvAfter
    s6Step56EntryFRow s6Step56EntryFOut 240 s6Step56EntryFFresh [(s6Step56EntryGRow,240),(s6Step56EntryFvRow,41),(s6Step56EntryGvRow,41)] [s6Step56EntryGFresh,s6Step56EntryFvFresh,s6Step56EntryGvFresh] [s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut]
    (growRow 795 s6Step56EntryFFresh) ((growRow 777 s6Step56EntryGFresh ++ (growRow 776 s6Step56EntryFvFresh ++ (growRow 775 s6Step56EntryGvFresh ++ [])))) s6Step56EntryF_Incoming s6Step56EntryF_checked h1 s6Step56EntryF_Outgoing
  exact h0
theorem s6Step56EntryBank_checked : compileHmrBankResizeLog .entry s6Step56EntryFBefore ⟨s6Step56EntryFRow,s6Step56EntryGRow,s6Step56EntryFvRow,s6Step56EntryGvRow⟩ ⟨240,240,41,41⟩ [s6Step56EntryFFresh,s6Step56EntryGFresh,s6Step56EntryFvFresh,s6Step56EntryGvFresh]=
    some (s6Step56EntryGvAfter,⟨s6Step56EntryFOut,s6Step56EntryGOut,s6Step56EntryFvOut,s6Step56EntryGvOut⟩,(growRow 795 s6Step56EntryFFresh ++ (growRow 777 s6Step56EntryGFresh ++ (growRow 776 s6Step56EntryFvFresh ++ (growRow 775 s6Step56EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step56EntryBank_rows]
  rfl
def s6Step57EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495],795⟩
def s6Step57EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 822],777⟩
def s6Step57EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793],776⟩
def s6Step57EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818],775⟩
theorem s6Step57EntryBank_incomingDistinct : ([s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step57EntryBank_outgoingOwned : rowsOwned s6Step57EntryGvAfter [s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step57EntryGvAfter (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57EntryF_Incoming : rowsOwned s6Step57EntryFBefore [s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow] 0 s6Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57EntryFBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57EntryF_Outgoing : rowsOwned s6Step57EntryGvAfter [s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut] :=
  hmrRows_owned_drop s6Step57EntryGvAfter [s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut] 0 s6Step57EntryBank_outgoingOwned
theorem s6Step57EntryG_Incoming : rowsOwned s6Step57EntryGBefore [s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow] 1 s6Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57EntryGBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57EntryG_Outgoing : rowsOwned s6Step57EntryGvAfter [s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut] :=
  hmrRows_owned_drop s6Step57EntryGvAfter [s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut] 1 s6Step57EntryBank_outgoingOwned
theorem s6Step57EntryFv_Incoming : rowsOwned s6Step57EntryFvBefore [s6Step57EntryFvRow,s6Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow] 2 s6Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57EntryFvBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57EntryFv_Outgoing : rowsOwned s6Step57EntryGvAfter [s6Step57EntryFvOut,s6Step57EntryGvOut] :=
  hmrRows_owned_drop s6Step57EntryGvAfter [s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut] 2 s6Step57EntryBank_outgoingOwned
theorem s6Step57EntryGv_Incoming : rowsOwned s6Step57EntryGvBefore [s6Step57EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow] 3 s6Step57EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step57EntryGvBefore (fun q => ([(0,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step57EntryGv_Outgoing : rowsOwned s6Step57EntryGvAfter [s6Step57EntryGvOut] :=
  hmrRows_owned_drop s6Step57EntryGvAfter [s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut] 3 s6Step57EntryBank_outgoingOwned
theorem s6Step57EntryBank_rows : planWindowRowsLog s6Step57EntryFBefore [(s6Step57EntryFRow,240),(s6Step57EntryGRow,240),(s6Step57EntryFvRow,41),(s6Step57EntryGvRow,41)] [s6Step57EntryFFresh,s6Step57EntryGFresh,s6Step57EntryFvFresh,s6Step57EntryGvFresh]=
    some (s6Step57EntryGvAfter,[s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut],(growRow 795 s6Step57EntryFFresh ++ (growRow 777 s6Step57EntryGFresh ++ (growRow 776 s6Step57EntryFvFresh ++ (growRow 775 s6Step57EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step57EntryGvAfter [] []=some (s6Step57EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step57EntryGvBefore s6Step57EntryGvAfter s6Step57EntryGvAfter
    s6Step57EntryGvRow s6Step57EntryGvOut 41 s6Step57EntryGvFresh [] [] []
    (growRow 775 s6Step57EntryGvFresh) ([]) s6Step57EntryGv_Incoming s6Step57EntryGv_checked h4 s6Step57EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step57EntryFvBefore s6Step57EntryFvAfter s6Step57EntryGvAfter
    s6Step57EntryFvRow s6Step57EntryFvOut 41 s6Step57EntryFvFresh [(s6Step57EntryGvRow,41)] [s6Step57EntryGvFresh] [s6Step57EntryGvOut]
    (growRow 776 s6Step57EntryFvFresh) ((growRow 775 s6Step57EntryGvFresh ++ [])) s6Step57EntryFv_Incoming s6Step57EntryFv_checked h3 s6Step57EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step57EntryGBefore s6Step57EntryGAfter s6Step57EntryGvAfter
    s6Step57EntryGRow s6Step57EntryGOut 240 s6Step57EntryGFresh [(s6Step57EntryFvRow,41),(s6Step57EntryGvRow,41)] [s6Step57EntryFvFresh,s6Step57EntryGvFresh] [s6Step57EntryFvOut,s6Step57EntryGvOut]
    (growRow 777 s6Step57EntryGFresh) ((growRow 776 s6Step57EntryFvFresh ++ (growRow 775 s6Step57EntryGvFresh ++ []))) s6Step57EntryG_Incoming s6Step57EntryG_checked h2 s6Step57EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step57EntryFBefore s6Step57EntryFAfter s6Step57EntryGvAfter
    s6Step57EntryFRow s6Step57EntryFOut 240 s6Step57EntryFFresh [(s6Step57EntryGRow,240),(s6Step57EntryFvRow,41),(s6Step57EntryGvRow,41)] [s6Step57EntryGFresh,s6Step57EntryFvFresh,s6Step57EntryGvFresh] [s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut]
    (growRow 795 s6Step57EntryFFresh) ((growRow 777 s6Step57EntryGFresh ++ (growRow 776 s6Step57EntryFvFresh ++ (growRow 775 s6Step57EntryGvFresh ++ [])))) s6Step57EntryF_Incoming s6Step57EntryF_checked h1 s6Step57EntryF_Outgoing
  exact h0
theorem s6Step57EntryBank_checked : compileHmrBankResizeLog .entry s6Step57EntryFBefore ⟨s6Step57EntryFRow,s6Step57EntryGRow,s6Step57EntryFvRow,s6Step57EntryGvRow⟩ ⟨240,240,41,41⟩ [s6Step57EntryFFresh,s6Step57EntryGFresh,s6Step57EntryFvFresh,s6Step57EntryGvFresh]=
    some (s6Step57EntryGvAfter,⟨s6Step57EntryFOut,s6Step57EntryGOut,s6Step57EntryFvOut,s6Step57EntryGvOut⟩,(growRow 795 s6Step57EntryFFresh ++ (growRow 777 s6Step57EntryGFresh ++ (growRow 776 s6Step57EntryFvFresh ++ (growRow 775 s6Step57EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step57EntryBank_rows]
  rfl
def s6Step58EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494],795⟩
def s6Step58EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 833],777⟩
def s6Step58EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793],776⟩
def s6Step58EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818],775⟩
theorem s6Step58EntryBank_incomingDistinct : ([s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step58EntryBank_outgoingOwned : rowsOwned s6Step58EntryGvAfter [s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step58EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58EntryF_Incoming : rowsOwned s6Step58EntryFBefore [s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow] 0 s6Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58EntryF_Outgoing : rowsOwned s6Step58EntryGvAfter [s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut] :=
  hmrRows_owned_drop s6Step58EntryGvAfter [s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut] 0 s6Step58EntryBank_outgoingOwned
theorem s6Step58EntryG_Incoming : rowsOwned s6Step58EntryGBefore [s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow] 1 s6Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58EntryG_Outgoing : rowsOwned s6Step58EntryGvAfter [s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut] :=
  hmrRows_owned_drop s6Step58EntryGvAfter [s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut] 1 s6Step58EntryBank_outgoingOwned
theorem s6Step58EntryFv_Incoming : rowsOwned s6Step58EntryFvBefore [s6Step58EntryFvRow,s6Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow] 2 s6Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58EntryFv_Outgoing : rowsOwned s6Step58EntryGvAfter [s6Step58EntryFvOut,s6Step58EntryGvOut] :=
  hmrRows_owned_drop s6Step58EntryGvAfter [s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut] 2 s6Step58EntryBank_outgoingOwned
theorem s6Step58EntryGv_Incoming : rowsOwned s6Step58EntryGvBefore [s6Step58EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow] 3 s6Step58EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step58EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,789),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step58EntryGv_Outgoing : rowsOwned s6Step58EntryGvAfter [s6Step58EntryGvOut] :=
  hmrRows_owned_drop s6Step58EntryGvAfter [s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut] 3 s6Step58EntryBank_outgoingOwned
theorem s6Step58EntryBank_rows : planWindowRowsLog s6Step58EntryFBefore [(s6Step58EntryFRow,239),(s6Step58EntryGRow,239),(s6Step58EntryFvRow,41),(s6Step58EntryGvRow,41)] [s6Step58EntryFFresh,s6Step58EntryGFresh,s6Step58EntryFvFresh,s6Step58EntryGvFresh]=
    some (s6Step58EntryGvAfter,[s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut],(growRow 795 s6Step58EntryFFresh ++ (growRow 777 s6Step58EntryGFresh ++ (growRow 776 s6Step58EntryFvFresh ++ (growRow 775 s6Step58EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step58EntryGvAfter [] []=some (s6Step58EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step58EntryGvBefore s6Step58EntryGvAfter s6Step58EntryGvAfter
    s6Step58EntryGvRow s6Step58EntryGvOut 41 s6Step58EntryGvFresh [] [] []
    (growRow 775 s6Step58EntryGvFresh) ([]) s6Step58EntryGv_Incoming s6Step58EntryGv_checked h4 s6Step58EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step58EntryFvBefore s6Step58EntryFvAfter s6Step58EntryGvAfter
    s6Step58EntryFvRow s6Step58EntryFvOut 41 s6Step58EntryFvFresh [(s6Step58EntryGvRow,41)] [s6Step58EntryGvFresh] [s6Step58EntryGvOut]
    (growRow 776 s6Step58EntryFvFresh) ((growRow 775 s6Step58EntryGvFresh ++ [])) s6Step58EntryFv_Incoming s6Step58EntryFv_checked h3 s6Step58EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step58EntryGBefore s6Step58EntryGAfter s6Step58EntryGvAfter
    s6Step58EntryGRow s6Step58EntryGOut 239 s6Step58EntryGFresh [(s6Step58EntryFvRow,41),(s6Step58EntryGvRow,41)] [s6Step58EntryFvFresh,s6Step58EntryGvFresh] [s6Step58EntryFvOut,s6Step58EntryGvOut]
    (growRow 777 s6Step58EntryGFresh) ((growRow 776 s6Step58EntryFvFresh ++ (growRow 775 s6Step58EntryGvFresh ++ []))) s6Step58EntryG_Incoming s6Step58EntryG_checked h2 s6Step58EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step58EntryFBefore s6Step58EntryFAfter s6Step58EntryGvAfter
    s6Step58EntryFRow s6Step58EntryFOut 239 s6Step58EntryFFresh [(s6Step58EntryGRow,239),(s6Step58EntryFvRow,41),(s6Step58EntryGvRow,41)] [s6Step58EntryGFresh,s6Step58EntryFvFresh,s6Step58EntryGvFresh] [s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut]
    (growRow 795 s6Step58EntryFFresh) ((growRow 777 s6Step58EntryGFresh ++ (growRow 776 s6Step58EntryFvFresh ++ (growRow 775 s6Step58EntryGvFresh ++ [])))) s6Step58EntryF_Incoming s6Step58EntryF_checked h1 s6Step58EntryF_Outgoing
  exact h0
theorem s6Step58EntryBank_checked : compileHmrBankResizeLog .entry s6Step58EntryFBefore ⟨s6Step58EntryFRow,s6Step58EntryGRow,s6Step58EntryFvRow,s6Step58EntryGvRow⟩ ⟨239,239,41,41⟩ [s6Step58EntryFFresh,s6Step58EntryGFresh,s6Step58EntryFvFresh,s6Step58EntryGvFresh]=
    some (s6Step58EntryGvAfter,⟨s6Step58EntryFOut,s6Step58EntryGOut,s6Step58EntryFvOut,s6Step58EntryGvOut⟩,(growRow 795 s6Step58EntryFFresh ++ (growRow 777 s6Step58EntryGFresh ++ (growRow 776 s6Step58EntryFvFresh ++ (growRow 775 s6Step58EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step58EntryBank_rows]
  rfl
def s6Step59EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494],795⟩
def s6Step59EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 780],777⟩
def s6Step59EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789],776⟩
def s6Step59EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882],775⟩
theorem s6Step59EntryBank_incomingDistinct : ([s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step59EntryBank_outgoingOwned : rowsOwned s6Step59EntryGvAfter [s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step59EntryGvAfter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59EntryF_Incoming : rowsOwned s6Step59EntryFBefore [s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow] 0 s6Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59EntryF_Outgoing : rowsOwned s6Step59EntryGvAfter [s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut] :=
  hmrRows_owned_drop s6Step59EntryGvAfter [s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut] 0 s6Step59EntryBank_outgoingOwned
theorem s6Step59EntryG_Incoming : rowsOwned s6Step59EntryGBefore [s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow] 1 s6Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59EntryG_Outgoing : rowsOwned s6Step59EntryGvAfter [s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut] :=
  hmrRows_owned_drop s6Step59EntryGvAfter [s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut] 1 s6Step59EntryBank_outgoingOwned
theorem s6Step59EntryFv_Incoming : rowsOwned s6Step59EntryFvBefore [s6Step59EntryFvRow,s6Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow] 2 s6Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59EntryFvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59EntryFv_Outgoing : rowsOwned s6Step59EntryGvAfter [s6Step59EntryFvOut,s6Step59EntryGvOut] :=
  hmrRows_owned_drop s6Step59EntryGvAfter [s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut] 2 s6Step59EntryBank_outgoingOwned
theorem s6Step59EntryGv_Incoming : rowsOwned s6Step59EntryGvBefore [s6Step59EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow] 3 s6Step59EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step59EntryGvBefore (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,882),(883,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step59EntryGv_Outgoing : rowsOwned s6Step59EntryGvAfter [s6Step59EntryGvOut] :=
  hmrRows_owned_drop s6Step59EntryGvAfter [s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut] 3 s6Step59EntryBank_outgoingOwned
theorem s6Step59EntryBank_rows : planWindowRowsLog s6Step59EntryFBefore [(s6Step59EntryFRow,239),(s6Step59EntryGRow,239),(s6Step59EntryFvRow,42),(s6Step59EntryGvRow,42)] [s6Step59EntryFFresh,s6Step59EntryGFresh,s6Step59EntryFvFresh,s6Step59EntryGvFresh]=
    some (s6Step59EntryGvAfter,[s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut],(growRow 795 s6Step59EntryFFresh ++ (growRow 777 s6Step59EntryGFresh ++ (growRow 776 s6Step59EntryFvFresh ++ (growRow 775 s6Step59EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step59EntryGvAfter [] []=some (s6Step59EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step59EntryGvBefore s6Step59EntryGvAfter s6Step59EntryGvAfter
    s6Step59EntryGvRow s6Step59EntryGvOut 42 s6Step59EntryGvFresh [] [] []
    (growRow 775 s6Step59EntryGvFresh) ([]) s6Step59EntryGv_Incoming s6Step59EntryGv_checked h4 s6Step59EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step59EntryFvBefore s6Step59EntryFvAfter s6Step59EntryGvAfter
    s6Step59EntryFvRow s6Step59EntryFvOut 42 s6Step59EntryFvFresh [(s6Step59EntryGvRow,42)] [s6Step59EntryGvFresh] [s6Step59EntryGvOut]
    (growRow 776 s6Step59EntryFvFresh) ((growRow 775 s6Step59EntryGvFresh ++ [])) s6Step59EntryFv_Incoming s6Step59EntryFv_checked h3 s6Step59EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step59EntryGBefore s6Step59EntryGAfter s6Step59EntryGvAfter
    s6Step59EntryGRow s6Step59EntryGOut 239 s6Step59EntryGFresh [(s6Step59EntryFvRow,42),(s6Step59EntryGvRow,42)] [s6Step59EntryFvFresh,s6Step59EntryGvFresh] [s6Step59EntryFvOut,s6Step59EntryGvOut]
    (growRow 777 s6Step59EntryGFresh) ((growRow 776 s6Step59EntryFvFresh ++ (growRow 775 s6Step59EntryGvFresh ++ []))) s6Step59EntryG_Incoming s6Step59EntryG_checked h2 s6Step59EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step59EntryFBefore s6Step59EntryFAfter s6Step59EntryGvAfter
    s6Step59EntryFRow s6Step59EntryFOut 239 s6Step59EntryFFresh [(s6Step59EntryGRow,239),(s6Step59EntryFvRow,42),(s6Step59EntryGvRow,42)] [s6Step59EntryGFresh,s6Step59EntryFvFresh,s6Step59EntryGvFresh] [s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut]
    (growRow 795 s6Step59EntryFFresh) ((growRow 777 s6Step59EntryGFresh ++ (growRow 776 s6Step59EntryFvFresh ++ (growRow 775 s6Step59EntryGvFresh ++ [])))) s6Step59EntryF_Incoming s6Step59EntryF_checked h1 s6Step59EntryF_Outgoing
  exact h0
theorem s6Step59EntryBank_checked : compileHmrBankResizeLog .entry s6Step59EntryFBefore ⟨s6Step59EntryFRow,s6Step59EntryGRow,s6Step59EntryFvRow,s6Step59EntryGvRow⟩ ⟨239,239,42,42⟩ [s6Step59EntryFFresh,s6Step59EntryGFresh,s6Step59EntryFvFresh,s6Step59EntryGvFresh]=
    some (s6Step59EntryGvAfter,⟨s6Step59EntryFOut,s6Step59EntryGOut,s6Step59EntryFvOut,s6Step59EntryGvOut⟩,(growRow 795 s6Step59EntryFFresh ++ (growRow 777 s6Step59EntryGFresh ++ (growRow 776 s6Step59EntryFvFresh ++ (growRow 775 s6Step59EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step59EntryBank_rows]
  rfl
def s6Step60EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494],795⟩
def s6Step60EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 875],777⟩
def s6Step60EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805],776⟩
def s6Step60EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868],775⟩
theorem s6Step60EntryBank_incomingDistinct : ([s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step60EntryBank_outgoingOwned : rowsOwned s6Step60EntryGvAfter [s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step60EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60EntryF_Incoming : rowsOwned s6Step60EntryFBefore [s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow] 0 s6Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60EntryF_Outgoing : rowsOwned s6Step60EntryGvAfter [s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut] :=
  hmrRows_owned_drop s6Step60EntryGvAfter [s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut] 0 s6Step60EntryBank_outgoingOwned
theorem s6Step60EntryG_Incoming : rowsOwned s6Step60EntryGBefore [s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow] 1 s6Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,875),(876,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60EntryG_Outgoing : rowsOwned s6Step60EntryGvAfter [s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut] :=
  hmrRows_owned_drop s6Step60EntryGvAfter [s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut] 1 s6Step60EntryBank_outgoingOwned
theorem s6Step60EntryFv_Incoming : rowsOwned s6Step60EntryFvBefore [s6Step60EntryFvRow,s6Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow] 2 s6Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60EntryFv_Outgoing : rowsOwned s6Step60EntryGvAfter [s6Step60EntryFvOut,s6Step60EntryGvOut] :=
  hmrRows_owned_drop s6Step60EntryGvAfter [s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut] 2 s6Step60EntryBank_outgoingOwned
theorem s6Step60EntryGv_Incoming : rowsOwned s6Step60EntryGvBefore [s6Step60EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow] 3 s6Step60EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step60EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,877),(878,879),(881,884),(887,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step60EntryGv_Outgoing : rowsOwned s6Step60EntryGvAfter [s6Step60EntryGvOut] :=
  hmrRows_owned_drop s6Step60EntryGvAfter [s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut] 3 s6Step60EntryBank_outgoingOwned
theorem s6Step60EntryBank_rows : planWindowRowsLog s6Step60EntryFBefore [(s6Step60EntryFRow,239),(s6Step60EntryGRow,239),(s6Step60EntryFvRow,43),(s6Step60EntryGvRow,43)] [s6Step60EntryFFresh,s6Step60EntryGFresh,s6Step60EntryFvFresh,s6Step60EntryGvFresh]=
    some (s6Step60EntryGvAfter,[s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut],(growRow 795 s6Step60EntryFFresh ++ (growRow 777 s6Step60EntryGFresh ++ (growRow 776 s6Step60EntryFvFresh ++ (growRow 775 s6Step60EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step60EntryGvAfter [] []=some (s6Step60EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step60EntryGvBefore s6Step60EntryGvAfter s6Step60EntryGvAfter
    s6Step60EntryGvRow s6Step60EntryGvOut 43 s6Step60EntryGvFresh [] [] []
    (growRow 775 s6Step60EntryGvFresh) ([]) s6Step60EntryGv_Incoming s6Step60EntryGv_checked h4 s6Step60EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step60EntryFvBefore s6Step60EntryFvAfter s6Step60EntryGvAfter
    s6Step60EntryFvRow s6Step60EntryFvOut 43 s6Step60EntryFvFresh [(s6Step60EntryGvRow,43)] [s6Step60EntryGvFresh] [s6Step60EntryGvOut]
    (growRow 776 s6Step60EntryFvFresh) ((growRow 775 s6Step60EntryGvFresh ++ [])) s6Step60EntryFv_Incoming s6Step60EntryFv_checked h3 s6Step60EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step60EntryGBefore s6Step60EntryGAfter s6Step60EntryGvAfter
    s6Step60EntryGRow s6Step60EntryGOut 239 s6Step60EntryGFresh [(s6Step60EntryFvRow,43),(s6Step60EntryGvRow,43)] [s6Step60EntryFvFresh,s6Step60EntryGvFresh] [s6Step60EntryFvOut,s6Step60EntryGvOut]
    (growRow 777 s6Step60EntryGFresh) ((growRow 776 s6Step60EntryFvFresh ++ (growRow 775 s6Step60EntryGvFresh ++ []))) s6Step60EntryG_Incoming s6Step60EntryG_checked h2 s6Step60EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step60EntryFBefore s6Step60EntryFAfter s6Step60EntryGvAfter
    s6Step60EntryFRow s6Step60EntryFOut 239 s6Step60EntryFFresh [(s6Step60EntryGRow,239),(s6Step60EntryFvRow,43),(s6Step60EntryGvRow,43)] [s6Step60EntryGFresh,s6Step60EntryFvFresh,s6Step60EntryGvFresh] [s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut]
    (growRow 795 s6Step60EntryFFresh) ((growRow 777 s6Step60EntryGFresh ++ (growRow 776 s6Step60EntryFvFresh ++ (growRow 775 s6Step60EntryGvFresh ++ [])))) s6Step60EntryF_Incoming s6Step60EntryF_checked h1 s6Step60EntryF_Outgoing
  exact h0
theorem s6Step60EntryBank_checked : compileHmrBankResizeLog .entry s6Step60EntryFBefore ⟨s6Step60EntryFRow,s6Step60EntryGRow,s6Step60EntryFvRow,s6Step60EntryGvRow⟩ ⟨239,239,43,43⟩ [s6Step60EntryFFresh,s6Step60EntryGFresh,s6Step60EntryFvFresh,s6Step60EntryGvFresh]=
    some (s6Step60EntryGvAfter,⟨s6Step60EntryFOut,s6Step60EntryGOut,s6Step60EntryFvOut,s6Step60EntryGvOut⟩,(growRow 795 s6Step60EntryFFresh ++ (growRow 777 s6Step60EntryGFresh ++ (growRow 776 s6Step60EntryFvFresh ++ (growRow 775 s6Step60EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step60EntryBank_rows]
  rfl
def s6Step61EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494],795⟩
def s6Step61EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 886, 822],777⟩
def s6Step61EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892],776⟩
def s6Step61EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 838],775⟩
theorem s6Step61EntryBank_incomingDistinct : ([s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step61EntryBank_outgoingOwned : rowsOwned s6Step61EntryGvAfter [s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step61EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61EntryF_Incoming : rowsOwned s6Step61EntryFBefore [s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow] 0 s6Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61EntryF_Outgoing : rowsOwned s6Step61EntryGvAfter [s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut] :=
  hmrRows_owned_drop s6Step61EntryGvAfter [s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut] 0 s6Step61EntryBank_outgoingOwned
theorem s6Step61EntryG_Incoming : rowsOwned s6Step61EntryGBefore [s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow] 1 s6Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61EntryG_Outgoing : rowsOwned s6Step61EntryGvAfter [s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut] :=
  hmrRows_owned_drop s6Step61EntryGvAfter [s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut] 1 s6Step61EntryBank_outgoingOwned
theorem s6Step61EntryFv_Incoming : rowsOwned s6Step61EntryFvBefore [s6Step61EntryFvRow,s6Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow] 2 s6Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61EntryFv_Outgoing : rowsOwned s6Step61EntryGvAfter [s6Step61EntryFvOut,s6Step61EntryGvOut] :=
  hmrRows_owned_drop s6Step61EntryGvAfter [s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut] 2 s6Step61EntryBank_outgoingOwned
theorem s6Step61EntryGv_Incoming : rowsOwned s6Step61EntryGvBefore [s6Step61EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow] 3 s6Step61EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step61EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step61EntryGv_Outgoing : rowsOwned s6Step61EntryGvAfter [s6Step61EntryGvOut] :=
  hmrRows_owned_drop s6Step61EntryGvAfter [s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut] 3 s6Step61EntryBank_outgoingOwned
theorem s6Step61EntryBank_rows : planWindowRowsLog s6Step61EntryFBefore [(s6Step61EntryFRow,239),(s6Step61EntryGRow,239),(s6Step61EntryFvRow,44),(s6Step61EntryGvRow,44)] [s6Step61EntryFFresh,s6Step61EntryGFresh,s6Step61EntryFvFresh,s6Step61EntryGvFresh]=
    some (s6Step61EntryGvAfter,[s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut],(growRow 795 s6Step61EntryFFresh ++ (growRow 777 s6Step61EntryGFresh ++ (growRow 776 s6Step61EntryFvFresh ++ (growRow 775 s6Step61EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step61EntryGvAfter [] []=some (s6Step61EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step61EntryGvBefore s6Step61EntryGvAfter s6Step61EntryGvAfter
    s6Step61EntryGvRow s6Step61EntryGvOut 44 s6Step61EntryGvFresh [] [] []
    (growRow 775 s6Step61EntryGvFresh) ([]) s6Step61EntryGv_Incoming s6Step61EntryGv_checked h4 s6Step61EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step61EntryFvBefore s6Step61EntryFvAfter s6Step61EntryGvAfter
    s6Step61EntryFvRow s6Step61EntryFvOut 44 s6Step61EntryFvFresh [(s6Step61EntryGvRow,44)] [s6Step61EntryGvFresh] [s6Step61EntryGvOut]
    (growRow 776 s6Step61EntryFvFresh) ((growRow 775 s6Step61EntryGvFresh ++ [])) s6Step61EntryFv_Incoming s6Step61EntryFv_checked h3 s6Step61EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step61EntryGBefore s6Step61EntryGAfter s6Step61EntryGvAfter
    s6Step61EntryGRow s6Step61EntryGOut 239 s6Step61EntryGFresh [(s6Step61EntryFvRow,44),(s6Step61EntryGvRow,44)] [s6Step61EntryFvFresh,s6Step61EntryGvFresh] [s6Step61EntryFvOut,s6Step61EntryGvOut]
    (growRow 777 s6Step61EntryGFresh) ((growRow 776 s6Step61EntryFvFresh ++ (growRow 775 s6Step61EntryGvFresh ++ []))) s6Step61EntryG_Incoming s6Step61EntryG_checked h2 s6Step61EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step61EntryFBefore s6Step61EntryFAfter s6Step61EntryGvAfter
    s6Step61EntryFRow s6Step61EntryFOut 239 s6Step61EntryFFresh [(s6Step61EntryGRow,239),(s6Step61EntryFvRow,44),(s6Step61EntryGvRow,44)] [s6Step61EntryGFresh,s6Step61EntryFvFresh,s6Step61EntryGvFresh] [s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut]
    (growRow 795 s6Step61EntryFFresh) ((growRow 777 s6Step61EntryGFresh ++ (growRow 776 s6Step61EntryFvFresh ++ (growRow 775 s6Step61EntryGvFresh ++ [])))) s6Step61EntryF_Incoming s6Step61EntryF_checked h1 s6Step61EntryF_Outgoing
  exact h0
theorem s6Step61EntryBank_checked : compileHmrBankResizeLog .entry s6Step61EntryFBefore ⟨s6Step61EntryFRow,s6Step61EntryGRow,s6Step61EntryFvRow,s6Step61EntryGvRow⟩ ⟨239,239,44,44⟩ [s6Step61EntryFFresh,s6Step61EntryGFresh,s6Step61EntryFvFresh,s6Step61EntryGvFresh]=
    some (s6Step61EntryGvAfter,⟨s6Step61EntryFOut,s6Step61EntryGOut,s6Step61EntryFvOut,s6Step61EntryGvOut⟩,(growRow 795 s6Step61EntryFFresh ++ (growRow 777 s6Step61EntryGFresh ++ (growRow 776 s6Step61EntryFvFresh ++ (growRow 775 s6Step61EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step61EntryBank_rows]
  rfl
def s6Step62EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493],795⟩
def s6Step62EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 833],777⟩
def s6Step62EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892],776⟩
def s6Step62EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880],775⟩
theorem s6Step62EntryBank_incomingDistinct : ([s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step62EntryBank_outgoingOwned : rowsOwned s6Step62EntryGvAfter [s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step62EntryGvAfter (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(880,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62EntryF_Incoming : rowsOwned s6Step62EntryFBefore [s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow] 0 s6Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62EntryFBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62EntryF_Outgoing : rowsOwned s6Step62EntryGvAfter [s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut] :=
  hmrRows_owned_drop s6Step62EntryGvAfter [s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut] 0 s6Step62EntryBank_outgoingOwned
theorem s6Step62EntryG_Incoming : rowsOwned s6Step62EntryGBefore [s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow] 1 s6Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62EntryGBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62EntryG_Outgoing : rowsOwned s6Step62EntryGvAfter [s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut] :=
  hmrRows_owned_drop s6Step62EntryGvAfter [s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut] 1 s6Step62EntryBank_outgoingOwned
theorem s6Step62EntryFv_Incoming : rowsOwned s6Step62EntryFvBefore [s6Step62EntryFvRow,s6Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow] 2 s6Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62EntryFvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62EntryFv_Outgoing : rowsOwned s6Step62EntryGvAfter [s6Step62EntryFvOut,s6Step62EntryGvOut] :=
  hmrRows_owned_drop s6Step62EntryGvAfter [s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut] 2 s6Step62EntryBank_outgoingOwned
theorem s6Step62EntryGv_Incoming : rowsOwned s6Step62EntryGvBefore [s6Step62EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow] 3 s6Step62EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step62EntryGvBefore (fun q => ([(0,780),(781,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,822),(823,824),(827,832),(833,834),(835,836),(837,838),(839,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,875),(876,877),(878,879),(881,884),(887,888),(889,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
theorem s6Step62EntryGv_Outgoing : rowsOwned s6Step62EntryGvAfter [s6Step62EntryGvOut] :=
  hmrRows_owned_drop s6Step62EntryGvAfter [s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut] 3 s6Step62EntryBank_outgoingOwned
theorem s6Step62EntryBank_rows : planWindowRowsLog s6Step62EntryFBefore [(s6Step62EntryFRow,238),(s6Step62EntryGRow,238),(s6Step62EntryFvRow,44),(s6Step62EntryGvRow,44)] [s6Step62EntryFFresh,s6Step62EntryGFresh,s6Step62EntryFvFresh,s6Step62EntryGvFresh]=
    some (s6Step62EntryGvAfter,[s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut],(growRow 795 s6Step62EntryFFresh ++ (growRow 777 s6Step62EntryGFresh ++ (growRow 776 s6Step62EntryFvFresh ++ (growRow 775 s6Step62EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step62EntryGvAfter [] []=some (s6Step62EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step62EntryGvBefore s6Step62EntryGvAfter s6Step62EntryGvAfter
    s6Step62EntryGvRow s6Step62EntryGvOut 44 s6Step62EntryGvFresh [] [] []
    (growRow 775 s6Step62EntryGvFresh) ([]) s6Step62EntryGv_Incoming s6Step62EntryGv_checked h4 s6Step62EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step62EntryFvBefore s6Step62EntryFvAfter s6Step62EntryGvAfter
    s6Step62EntryFvRow s6Step62EntryFvOut 44 s6Step62EntryFvFresh [(s6Step62EntryGvRow,44)] [s6Step62EntryGvFresh] [s6Step62EntryGvOut]
    (growRow 776 s6Step62EntryFvFresh) ((growRow 775 s6Step62EntryGvFresh ++ [])) s6Step62EntryFv_Incoming s6Step62EntryFv_checked h3 s6Step62EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step62EntryGBefore s6Step62EntryGAfter s6Step62EntryGvAfter
    s6Step62EntryGRow s6Step62EntryGOut 238 s6Step62EntryGFresh [(s6Step62EntryFvRow,44),(s6Step62EntryGvRow,44)] [s6Step62EntryFvFresh,s6Step62EntryGvFresh] [s6Step62EntryFvOut,s6Step62EntryGvOut]
    (growRow 777 s6Step62EntryGFresh) ((growRow 776 s6Step62EntryFvFresh ++ (growRow 775 s6Step62EntryGvFresh ++ []))) s6Step62EntryG_Incoming s6Step62EntryG_checked h2 s6Step62EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step62EntryFBefore s6Step62EntryFAfter s6Step62EntryGvAfter
    s6Step62EntryFRow s6Step62EntryFOut 238 s6Step62EntryFFresh [(s6Step62EntryGRow,238),(s6Step62EntryFvRow,44),(s6Step62EntryGvRow,44)] [s6Step62EntryGFresh,s6Step62EntryFvFresh,s6Step62EntryGvFresh] [s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut]
    (growRow 795 s6Step62EntryFFresh) ((growRow 777 s6Step62EntryGFresh ++ (growRow 776 s6Step62EntryFvFresh ++ (growRow 775 s6Step62EntryGvFresh ++ [])))) s6Step62EntryF_Incoming s6Step62EntryF_checked h1 s6Step62EntryF_Outgoing
  exact h0
theorem s6Step62EntryBank_checked : compileHmrBankResizeLog .entry s6Step62EntryFBefore ⟨s6Step62EntryFRow,s6Step62EntryGRow,s6Step62EntryFvRow,s6Step62EntryGvRow⟩ ⟨238,238,44,44⟩ [s6Step62EntryFFresh,s6Step62EntryGFresh,s6Step62EntryFvFresh,s6Step62EntryGvFresh]=
    some (s6Step62EntryGvAfter,⟨s6Step62EntryFOut,s6Step62EntryGOut,s6Step62EntryFvOut,s6Step62EntryGvOut⟩,(growRow 795 s6Step62EntryFFresh ++ (growRow 777 s6Step62EntryGFresh ++ (growRow 776 s6Step62EntryFvFresh ++ (growRow 775 s6Step62EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step62EntryBank_rows]
  rfl

end ECDSAAdd.Arithmetic.Paper935
