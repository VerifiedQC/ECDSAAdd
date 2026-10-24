import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrSourceEntryPartsChunk5

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step31EntryFAfter : Arena := s6Step31EntryFBefore
def s6Step31EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩
def s6Step31EntryFFresh : List Wire := []
theorem s6Step31EntryF_distinct : (s6Step31EntryFRow.sign::s6Step31EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31EntryF_owned : (s6Step31EntryFRow.sign::s6Step31EntryFRow.payload).toFinset⊆s6Step31EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step31EntryFBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31EntryF_reserved : s6Step31EntryFBefore.reserve s6Step31EntryFFresh.toFinset=some s6Step31EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step31EntryFFresh,arenaWires]
  · norm_num [s6Step31EntryFBefore,s6Step31EntryFFresh,arenaWires]
  · simp only [s6Step31EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step31EntryF_checked : planRowResizeLog s6Step31EntryFBefore s6Step31EntryFRow 253 s6Step31EntryFFresh=
    some (s6Step31EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩,growRow 795 s6Step31EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step31EntryFBefore s6Step31EntryFAfter s6Step31EntryFRow 253 s6Step31EntryFFresh
    s6Step31EntryF_distinct s6Step31EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step31EntryF_reserved
  have rowEq : WindowRow.mk (s6Step31EntryFRow.payload++s6Step31EntryFFresh) s6Step31EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step31EntryGBefore : Arena := s6Step31EntryFBefore
def s6Step31EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step31EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251],777⟩
def s6Step31EntryGFresh : List Wire := [793]
theorem s6Step31EntryG_distinct : (s6Step31EntryGRow.sign::s6Step31EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31EntryG_owned : (s6Step31EntryGRow.sign::s6Step31EntryGRow.payload).toFinset⊆s6Step31EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step31EntryGBefore (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31EntryG_reserved : s6Step31EntryGBefore.reserve s6Step31EntryGFresh.toFinset=some s6Step31EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step31EntryGFresh,arenaWires]
  · norm_num [s6Step31EntryGBefore,s6Step31EntryFBefore,s6Step31EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step31EntryGBefore s6Step31EntryGAfter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EntryGFresh rfl rfl
    · norm_num [s6Step31EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step31EntryG_checked : planRowResizeLog s6Step31EntryGBefore s6Step31EntryGRow 253 s6Step31EntryGFresh=
    some (s6Step31EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 793],777⟩,growRow 777 s6Step31EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step31EntryGBefore s6Step31EntryGAfter s6Step31EntryGRow 253 s6Step31EntryGFresh
    s6Step31EntryG_distinct s6Step31EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step31EntryG_reserved
  have rowEq : WindowRow.mk (s6Step31EntryGRow.payload++s6Step31EntryGFresh) s6Step31EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step31EntryFvBefore : Arena := s6Step31EntryGAfter
def s6Step31EntryFvAfter : Arena := s6Step31EntryGAfter
def s6Step31EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step31EntryFvFresh : List Wire := []
theorem s6Step31EntryFv_distinct : (s6Step31EntryFvRow.sign::s6Step31EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31EntryFv_owned : (s6Step31EntryFvRow.sign::s6Step31EntryFvRow.payload).toFinset⊆s6Step31EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step31EntryFvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31EntryFv_reserved : s6Step31EntryFvBefore.reserve s6Step31EntryFvFresh.toFinset=some s6Step31EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step31EntryFvFresh,arenaWires]
  · norm_num [s6Step31EntryFvBefore,s6Step31EntryGAfter,s6Step31EntryFvFresh,arenaWires]
  · simp only [s6Step31EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step31EntryFv_checked : planRowResizeLog s6Step31EntryFvBefore s6Step31EntryFvRow 29 s6Step31EntryFvFresh=
    some (s6Step31EntryFvAfter,⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩,growRow 776 s6Step31EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step31EntryFvBefore s6Step31EntryFvAfter s6Step31EntryFvRow 29 s6Step31EntryFvFresh
    s6Step31EntryFv_distinct s6Step31EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step31EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step31EntryFvRow.payload++s6Step31EntryFvFresh) s6Step31EntryFvRow.sign=⟨[255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step31EntryGvBefore : Arena := s6Step31EntryGAfter
def s6Step31EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step31EntryGvRow : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768],775⟩
def s6Step31EntryGvFresh : List Wire := [802]
theorem s6Step31EntryGv_distinct : (s6Step31EntryGvRow.sign::s6Step31EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31EntryGv_owned : (s6Step31EntryGvRow.sign::s6Step31EntryGvRow.payload).toFinset⊆s6Step31EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step31EntryGvBefore (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31EntryGv_reserved : s6Step31EntryGvBefore.reserve s6Step31EntryGvFresh.toFinset=some s6Step31EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step31EntryGvFresh,arenaWires]
  · norm_num [s6Step31EntryGvBefore,s6Step31EntryGAfter,s6Step31EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step31EntryGvBefore s6Step31EntryGvAfter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step31EntryGvFresh rfl rfl
    · norm_num [s6Step31EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step31EntryGv_checked : planRowResizeLog s6Step31EntryGvBefore s6Step31EntryGvRow 29 s6Step31EntryGvFresh=
    some (s6Step31EntryGvAfter,⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 802],775⟩,growRow 775 s6Step31EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step31EntryGvBefore s6Step31EntryGvAfter s6Step31EntryGvRow 29 s6Step31EntryGvFresh
    s6Step31EntryGv_distinct s6Step31EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step31EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step31EntryGvRow.payload++s6Step31EntryGvFresh) s6Step31EntryGvRow.sign=⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step32EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step32EntryFAfter : Arena := s6Step32EntryFBefore
def s6Step32EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩
def s6Step32EntryFFresh : List Wire := []
theorem s6Step32EntryF_distinct : (s6Step32EntryFRow.sign::s6Step32EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32EntryF_owned : (s6Step32EntryFRow.sign::s6Step32EntryFRow.payload).toFinset⊆s6Step32EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step32EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32EntryF_reserved : s6Step32EntryFBefore.reserve s6Step32EntryFFresh.toFinset=some s6Step32EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step32EntryFFresh,arenaWires]
  · norm_num [s6Step32EntryFBefore,s6Step32EntryFFresh,arenaWires]
  · simp only [s6Step32EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step32EntryF_checked : planRowResizeLog s6Step32EntryFBefore s6Step32EntryFRow 253 s6Step32EntryFFresh=
    some (s6Step32EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩,growRow 795 s6Step32EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step32EntryFBefore s6Step32EntryFAfter s6Step32EntryFRow 253 s6Step32EntryFFresh
    s6Step32EntryF_distinct s6Step32EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step32EntryF_reserved
  have rowEq : WindowRow.mk (s6Step32EntryFRow.payload++s6Step32EntryFFresh) s6Step32EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step32EntryGBefore : Arena := s6Step32EntryFBefore
def s6Step32EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step32EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],777⟩
def s6Step32EntryGFresh : List Wire := [859, 874]
theorem s6Step32EntryG_distinct : (s6Step32EntryGRow.sign::s6Step32EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32EntryG_owned : (s6Step32EntryGRow.sign::s6Step32EntryGRow.payload).toFinset⊆s6Step32EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step32EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32EntryG_reserved : s6Step32EntryGBefore.reserve s6Step32EntryGFresh.toFinset=some s6Step32EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step32EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step32EntryGBefore,s6Step32EntryFBefore,s6Step32EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step32EntryGBefore s6Step32EntryGAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EntryGFresh rfl rfl
    · norm_num [s6Step32EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step32EntryG_checked : planRowResizeLog s6Step32EntryGBefore s6Step32EntryGRow 253 s6Step32EntryGFresh=
    some (s6Step32EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859, 874],777⟩,growRow 777 s6Step32EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step32EntryGBefore s6Step32EntryGAfter s6Step32EntryGRow 253 s6Step32EntryGFresh
    s6Step32EntryG_distinct s6Step32EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step32EntryG_reserved
  have rowEq : WindowRow.mk (s6Step32EntryGRow.payload++s6Step32EntryGFresh) s6Step32EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859, 874],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step32EntryFvBefore : Arena := s6Step32EntryGAfter
def s6Step32EntryFvAfter : Arena := s6Step32EntryGAfter
def s6Step32EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step32EntryFvFresh : List Wire := []
theorem s6Step32EntryFv_distinct : (s6Step32EntryFvRow.sign::s6Step32EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32EntryFv_owned : (s6Step32EntryFvRow.sign::s6Step32EntryFvRow.payload).toFinset⊆s6Step32EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step32EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32EntryFv_reserved : s6Step32EntryFvBefore.reserve s6Step32EntryFvFresh.toFinset=some s6Step32EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step32EntryFvFresh,arenaWires]
  · norm_num [s6Step32EntryFvBefore,s6Step32EntryGAfter,s6Step32EntryFvFresh,arenaWires]
  · simp only [s6Step32EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step32EntryFv_checked : planRowResizeLog s6Step32EntryFvBefore s6Step32EntryFvRow 29 s6Step32EntryFvFresh=
    some (s6Step32EntryFvAfter,⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩,growRow 776 s6Step32EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step32EntryFvBefore s6Step32EntryFvAfter s6Step32EntryFvRow 29 s6Step32EntryFvFresh
    s6Step32EntryFv_distinct s6Step32EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step32EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step32EntryFvRow.payload++s6Step32EntryFvFresh) s6Step32EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step32EntryGvBefore : Arena := s6Step32EntryGAfter
def s6Step32EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step32EntryGvRow : WindowRow := ⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768],775⟩
def s6Step32EntryGvFresh : List Wire := [779]
theorem s6Step32EntryGv_distinct : (s6Step32EntryGvRow.sign::s6Step32EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32EntryGv_owned : (s6Step32EntryGvRow.sign::s6Step32EntryGvRow.payload).toFinset⊆s6Step32EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step32EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32EntryGv_reserved : s6Step32EntryGvBefore.reserve s6Step32EntryGvFresh.toFinset=some s6Step32EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step32EntryGvFresh,arenaWires]
  · norm_num [s6Step32EntryGvBefore,s6Step32EntryGAfter,s6Step32EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step32EntryGvBefore s6Step32EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step32EntryGvFresh rfl rfl
    · norm_num [s6Step32EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step32EntryGv_checked : planRowResizeLog s6Step32EntryGvBefore s6Step32EntryGvRow 29 s6Step32EntryGvFresh=
    some (s6Step32EntryGvAfter,⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 779],775⟩,growRow 775 s6Step32EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step32EntryGvBefore s6Step32EntryGvAfter s6Step32EntryGvRow 29 s6Step32EntryGvFresh
    s6Step32EntryGv_distinct s6Step32EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step32EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step32EntryGvRow.payload++s6Step32EntryGvFresh) s6Step32EntryGvRow.sign=⟨[511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step33EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step33EntryFAfter : Arena := s6Step33EntryFBefore
def s6Step33EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507],795⟩
def s6Step33EntryFFresh : List Wire := []
theorem s6Step33EntryF_distinct : (s6Step33EntryFRow.sign::s6Step33EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33EntryF_owned : (s6Step33EntryFRow.sign::s6Step33EntryFRow.payload).toFinset⊆s6Step33EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step33EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33EntryF_reserved : s6Step33EntryFBefore.reserve s6Step33EntryFFresh.toFinset=some s6Step33EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step33EntryFFresh,arenaWires]
  · norm_num [s6Step33EntryFBefore,s6Step33EntryFFresh,arenaWires]
  · simp only [s6Step33EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step33EntryF_checked : planRowResizeLog s6Step33EntryFBefore s6Step33EntryFRow 252 s6Step33EntryFFresh=
    some (s6Step33EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507],795⟩,growRow 795 s6Step33EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step33EntryFBefore s6Step33EntryFAfter s6Step33EntryFRow 252 s6Step33EntryFFresh
    s6Step33EntryF_distinct s6Step33EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step33EntryF_reserved
  have rowEq : WindowRow.mk (s6Step33EntryFRow.payload++s6Step33EntryFFresh) s6Step33EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step33EntryGBefore : Arena := s6Step33EntryFBefore
def s6Step33EntryGAfter : Arena := s6Step33EntryFBefore
def s6Step33EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859],777⟩
def s6Step33EntryGFresh : List Wire := []
theorem s6Step33EntryG_distinct : (s6Step33EntryGRow.sign::s6Step33EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33EntryG_owned : (s6Step33EntryGRow.sign::s6Step33EntryGRow.payload).toFinset⊆s6Step33EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step33EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33EntryG_reserved : s6Step33EntryGBefore.reserve s6Step33EntryGFresh.toFinset=some s6Step33EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step33EntryGFresh,arenaWires]
  · norm_num [s6Step33EntryGBefore,s6Step33EntryFBefore,s6Step33EntryGFresh,arenaWires]
  · simp only [s6Step33EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step33EntryG_checked : planRowResizeLog s6Step33EntryGBefore s6Step33EntryGRow 252 s6Step33EntryGFresh=
    some (s6Step33EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859],777⟩,growRow 777 s6Step33EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step33EntryGBefore s6Step33EntryGAfter s6Step33EntryGRow 252 s6Step33EntryGFresh
    s6Step33EntryG_distinct s6Step33EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step33EntryG_reserved
  have rowEq : WindowRow.mk (s6Step33EntryGRow.payload++s6Step33EntryGFresh) s6Step33EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step33EntryFvBefore : Arena := s6Step33EntryFBefore
def s6Step33EntryFvAfter : Arena := s6Step33EntryFBefore
def s6Step33EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩
def s6Step33EntryFvFresh : List Wire := []
theorem s6Step33EntryFv_distinct : (s6Step33EntryFvRow.sign::s6Step33EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33EntryFv_owned : (s6Step33EntryFvRow.sign::s6Step33EntryFvRow.payload).toFinset⊆s6Step33EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step33EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33EntryFv_reserved : s6Step33EntryFvBefore.reserve s6Step33EntryFvFresh.toFinset=some s6Step33EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step33EntryFvFresh,arenaWires]
  · norm_num [s6Step33EntryFvBefore,s6Step33EntryFBefore,s6Step33EntryFvFresh,arenaWires]
  · simp only [s6Step33EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step33EntryFv_checked : planRowResizeLog s6Step33EntryFvBefore s6Step33EntryFvRow 29 s6Step33EntryFvFresh=
    some (s6Step33EntryFvAfter,⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩,growRow 776 s6Step33EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step33EntryFvBefore s6Step33EntryFvAfter s6Step33EntryFvRow 29 s6Step33EntryFvFresh
    s6Step33EntryFv_distinct s6Step33EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step33EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step33EntryFvRow.payload++s6Step33EntryFvFresh) s6Step33EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step33EntryGvBefore : Arena := s6Step33EntryFBefore
def s6Step33EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step33EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768],775⟩
def s6Step33EntryGvFresh : List Wire := [881]
theorem s6Step33EntryGv_distinct : (s6Step33EntryGvRow.sign::s6Step33EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33EntryGv_owned : (s6Step33EntryGvRow.sign::s6Step33EntryGvRow.payload).toFinset⊆s6Step33EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step33EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33EntryGv_reserved : s6Step33EntryGvBefore.reserve s6Step33EntryGvFresh.toFinset=some s6Step33EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step33EntryGvFresh,arenaWires]
  · norm_num [s6Step33EntryGvBefore,s6Step33EntryFBefore,s6Step33EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step33EntryGvBefore s6Step33EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,881),(882,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(814,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step33EntryGvFresh rfl rfl
    · norm_num [s6Step33EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step33EntryGv_checked : planRowResizeLog s6Step33EntryGvBefore s6Step33EntryGvRow 29 s6Step33EntryGvFresh=
    some (s6Step33EntryGvAfter,⟨[511, 510, 509, 508, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881],775⟩,growRow 775 s6Step33EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step33EntryGvBefore s6Step33EntryGvAfter s6Step33EntryGvRow 29 s6Step33EntryGvFresh
    s6Step33EntryGv_distinct s6Step33EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step33EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step33EntryGvRow.payload++s6Step33EntryGvFresh) s6Step33EntryGvRow.sign=⟨[511, 510, 509, 508, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step34EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step34EntryFAfter : Arena := s6Step34EntryFBefore
def s6Step34EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩
def s6Step34EntryFFresh : List Wire := []
theorem s6Step34EntryF_distinct : (s6Step34EntryFRow.sign::s6Step34EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34EntryF_owned : (s6Step34EntryFRow.sign::s6Step34EntryFRow.payload).toFinset⊆s6Step34EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step34EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34EntryF_reserved : s6Step34EntryFBefore.reserve s6Step34EntryFFresh.toFinset=some s6Step34EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step34EntryFFresh,arenaWires]
  · norm_num [s6Step34EntryFBefore,s6Step34EntryFFresh,arenaWires]
  · simp only [s6Step34EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step34EntryF_checked : planRowResizeLog s6Step34EntryFBefore s6Step34EntryFRow 251 s6Step34EntryFFresh=
    some (s6Step34EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩,growRow 795 s6Step34EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step34EntryFBefore s6Step34EntryFAfter s6Step34EntryFRow 251 s6Step34EntryFFresh
    s6Step34EntryF_distinct s6Step34EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step34EntryF_reserved
  have rowEq : WindowRow.mk (s6Step34EntryFRow.payload++s6Step34EntryFFresh) s6Step34EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step34EntryGBefore : Arena := s6Step34EntryFBefore
def s6Step34EntryGAfter : Arena := s6Step34EntryFBefore
def s6Step34EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],777⟩
def s6Step34EntryGFresh : List Wire := []
theorem s6Step34EntryG_distinct : (s6Step34EntryGRow.sign::s6Step34EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34EntryG_owned : (s6Step34EntryGRow.sign::s6Step34EntryGRow.payload).toFinset⊆s6Step34EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step34EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34EntryG_reserved : s6Step34EntryGBefore.reserve s6Step34EntryGFresh.toFinset=some s6Step34EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step34EntryGFresh,arenaWires]
  · norm_num [s6Step34EntryGBefore,s6Step34EntryFBefore,s6Step34EntryGFresh,arenaWires]
  · simp only [s6Step34EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step34EntryG_checked : planRowResizeLog s6Step34EntryGBefore s6Step34EntryGRow 251 s6Step34EntryGFresh=
    some (s6Step34EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],777⟩,growRow 777 s6Step34EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step34EntryGBefore s6Step34EntryGAfter s6Step34EntryGRow 251 s6Step34EntryGFresh
    s6Step34EntryG_distinct s6Step34EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step34EntryG_reserved
  have rowEq : WindowRow.mk (s6Step34EntryGRow.payload++s6Step34EntryGFresh) s6Step34EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step34EntryFvBefore : Arena := s6Step34EntryFBefore
def s6Step34EntryFvAfter : Arena := s6Step34EntryFBefore
def s6Step34EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩
def s6Step34EntryFvFresh : List Wire := []
theorem s6Step34EntryFv_distinct : (s6Step34EntryFvRow.sign::s6Step34EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34EntryFv_owned : (s6Step34EntryFvRow.sign::s6Step34EntryFvRow.payload).toFinset⊆s6Step34EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step34EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34EntryFv_reserved : s6Step34EntryFvBefore.reserve s6Step34EntryFvFresh.toFinset=some s6Step34EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step34EntryFvFresh,arenaWires]
  · norm_num [s6Step34EntryFvBefore,s6Step34EntryFBefore,s6Step34EntryFvFresh,arenaWires]
  · simp only [s6Step34EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step34EntryFv_checked : planRowResizeLog s6Step34EntryFvBefore s6Step34EntryFvRow 30 s6Step34EntryFvFresh=
    some (s6Step34EntryFvAfter,⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩,growRow 776 s6Step34EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step34EntryFvBefore s6Step34EntryFvAfter s6Step34EntryFvRow 30 s6Step34EntryFvFresh
    s6Step34EntryFv_distinct s6Step34EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step34EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step34EntryFvRow.payload++s6Step34EntryFvFresh) s6Step34EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step34EntryGvBefore : Arena := s6Step34EntryFBefore
def s6Step34EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step34EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881],775⟩
def s6Step34EntryGvFresh : List Wire := [927]
theorem s6Step34EntryGv_distinct : (s6Step34EntryGvRow.sign::s6Step34EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34EntryGv_owned : (s6Step34EntryGvRow.sign::s6Step34EntryGvRow.payload).toFinset⊆s6Step34EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step34EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34EntryGv_reserved : s6Step34EntryGvBefore.reserve s6Step34EntryGvFresh.toFinset=some s6Step34EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step34EntryGvFresh,arenaWires]
  · norm_num [s6Step34EntryGvBefore,s6Step34EntryFBefore,s6Step34EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step34EntryGvBefore s6Step34EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step34EntryGvFresh rfl rfl
    · norm_num [s6Step34EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step34EntryGv_checked : planRowResizeLog s6Step34EntryGvBefore s6Step34EntryGvRow 30 s6Step34EntryGvFresh=
    some (s6Step34EntryGvAfter,⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩,growRow 775 s6Step34EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step34EntryGvBefore s6Step34EntryGvAfter s6Step34EntryGvRow 30 s6Step34EntryGvFresh
    s6Step34EntryGv_distinct s6Step34EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step34EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step34EntryGvRow.payload++s6Step34EntryGvFresh) s6Step34EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step35EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step35EntryFAfter : Arena := s6Step35EntryFBefore
def s6Step35EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩
def s6Step35EntryFFresh : List Wire := []
theorem s6Step35EntryF_distinct : (s6Step35EntryFRow.sign::s6Step35EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35EntryF_owned : (s6Step35EntryFRow.sign::s6Step35EntryFRow.payload).toFinset⊆s6Step35EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step35EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35EntryF_reserved : s6Step35EntryFBefore.reserve s6Step35EntryFFresh.toFinset=some s6Step35EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step35EntryFFresh,arenaWires]
  · norm_num [s6Step35EntryFBefore,s6Step35EntryFFresh,arenaWires]
  · simp only [s6Step35EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step35EntryF_checked : planRowResizeLog s6Step35EntryFBefore s6Step35EntryFRow 251 s6Step35EntryFFresh=
    some (s6Step35EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩,growRow 795 s6Step35EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step35EntryFBefore s6Step35EntryFAfter s6Step35EntryFRow 251 s6Step35EntryFFresh
    s6Step35EntryF_distinct s6Step35EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step35EntryF_reserved
  have rowEq : WindowRow.mk (s6Step35EntryFRow.payload++s6Step35EntryFFresh) s6Step35EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step35EntryGBefore : Arena := s6Step35EntryFBefore
def s6Step35EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step35EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],777⟩
def s6Step35EntryGFresh : List Wire := [875]
theorem s6Step35EntryG_distinct : (s6Step35EntryGRow.sign::s6Step35EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35EntryG_owned : (s6Step35EntryGRow.sign::s6Step35EntryGRow.payload).toFinset⊆s6Step35EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step35EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35EntryG_reserved : s6Step35EntryGBefore.reserve s6Step35EntryGFresh.toFinset=some s6Step35EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step35EntryGFresh,arenaWires]
  · norm_num [s6Step35EntryGBefore,s6Step35EntryFBefore,s6Step35EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step35EntryGBefore s6Step35EntryGAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step35EntryGFresh rfl rfl
    · norm_num [s6Step35EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step35EntryG_checked : planRowResizeLog s6Step35EntryGBefore s6Step35EntryGRow 251 s6Step35EntryGFresh=
    some (s6Step35EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875],777⟩,growRow 777 s6Step35EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step35EntryGBefore s6Step35EntryGAfter s6Step35EntryGRow 251 s6Step35EntryGFresh
    s6Step35EntryG_distinct s6Step35EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step35EntryG_reserved
  have rowEq : WindowRow.mk (s6Step35EntryGRow.payload++s6Step35EntryGFresh) s6Step35EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step35EntryFvBefore : Arena := s6Step35EntryGAfter
def s6Step35EntryFvAfter : Arena := s6Step35EntryGAfter
def s6Step35EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩
def s6Step35EntryFvFresh : List Wire := []
theorem s6Step35EntryFv_distinct : (s6Step35EntryFvRow.sign::s6Step35EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35EntryFv_owned : (s6Step35EntryFvRow.sign::s6Step35EntryFvRow.payload).toFinset⊆s6Step35EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step35EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35EntryFv_reserved : s6Step35EntryFvBefore.reserve s6Step35EntryFvFresh.toFinset=some s6Step35EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step35EntryFvFresh,arenaWires]
  · norm_num [s6Step35EntryFvBefore,s6Step35EntryGAfter,s6Step35EntryFvFresh,arenaWires]
  · simp only [s6Step35EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step35EntryFv_checked : planRowResizeLog s6Step35EntryFvBefore s6Step35EntryFvRow 30 s6Step35EntryFvFresh=
    some (s6Step35EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩,growRow 776 s6Step35EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step35EntryFvBefore s6Step35EntryFvAfter s6Step35EntryFvRow 30 s6Step35EntryFvFresh
    s6Step35EntryFv_distinct s6Step35EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step35EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step35EntryFvRow.payload++s6Step35EntryFvFresh) s6Step35EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step35EntryGvBefore : Arena := s6Step35EntryGAfter
def s6Step35EntryGvAfter : Arena := s6Step35EntryGAfter
def s6Step35EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩
def s6Step35EntryGvFresh : List Wire := []
theorem s6Step35EntryGv_distinct : (s6Step35EntryGvRow.sign::s6Step35EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35EntryGv_owned : (s6Step35EntryGvRow.sign::s6Step35EntryGvRow.payload).toFinset⊆s6Step35EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step35EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,871),(872,874),(875,876),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35EntryGv_reserved : s6Step35EntryGvBefore.reserve s6Step35EntryGvFresh.toFinset=some s6Step35EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step35EntryGvFresh,arenaWires]
  · norm_num [s6Step35EntryGvBefore,s6Step35EntryGAfter,s6Step35EntryGvFresh,arenaWires]
  · simp only [s6Step35EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step35EntryGv_checked : planRowResizeLog s6Step35EntryGvBefore s6Step35EntryGvRow 30 s6Step35EntryGvFresh=
    some (s6Step35EntryGvAfter,⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩,growRow 775 s6Step35EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step35EntryGvBefore s6Step35EntryGvAfter s6Step35EntryGvRow 30 s6Step35EntryGvFresh
    s6Step35EntryGv_distinct s6Step35EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step35EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step35EntryGvRow.payload++s6Step35EntryGvFresh) s6Step35EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step36EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step36EntryFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step36EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩
def s6Step36EntryFFresh : List Wire := [857]
theorem s6Step36EntryF_distinct : (s6Step36EntryFRow.sign::s6Step36EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36EntryF_owned : (s6Step36EntryFRow.sign::s6Step36EntryFRow.payload).toFinset⊆s6Step36EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step36EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36EntryF_reserved : s6Step36EntryFBefore.reserve s6Step36EntryFFresh.toFinset=some s6Step36EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step36EntryFFresh,arenaWires]
  · norm_num [s6Step36EntryFBefore,s6Step36EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step36EntryFBefore s6Step36EntryFAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EntryFFresh rfl rfl
    · norm_num [s6Step36EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step36EntryF_checked : planRowResizeLog s6Step36EntryFBefore s6Step36EntryFRow 251 s6Step36EntryFFresh=
    some (s6Step36EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 857],795⟩,growRow 795 s6Step36EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step36EntryFBefore s6Step36EntryFAfter s6Step36EntryFRow 251 s6Step36EntryFFresh
    s6Step36EntryF_distinct s6Step36EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step36EntryF_reserved
  have rowEq : WindowRow.mk (s6Step36EntryFRow.payload++s6Step36EntryFFresh) s6Step36EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step36EntryGBefore : Arena := s6Step36EntryFAfter
def s6Step36EntryGAfter : Arena := s6Step36EntryFAfter
def s6Step36EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875],777⟩
def s6Step36EntryGFresh : List Wire := []
theorem s6Step36EntryG_distinct : (s6Step36EntryGRow.sign::s6Step36EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36EntryG_owned : (s6Step36EntryGRow.sign::s6Step36EntryGRow.payload).toFinset⊆s6Step36EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step36EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36EntryG_reserved : s6Step36EntryGBefore.reserve s6Step36EntryGFresh.toFinset=some s6Step36EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step36EntryGFresh,arenaWires]
  · norm_num [s6Step36EntryGBefore,s6Step36EntryFAfter,s6Step36EntryGFresh,arenaWires]
  · simp only [s6Step36EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step36EntryG_checked : planRowResizeLog s6Step36EntryGBefore s6Step36EntryGRow 251 s6Step36EntryGFresh=
    some (s6Step36EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875],777⟩,growRow 777 s6Step36EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step36EntryGBefore s6Step36EntryGAfter s6Step36EntryGRow 251 s6Step36EntryGFresh
    s6Step36EntryG_distinct s6Step36EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step36EntryG_reserved
  have rowEq : WindowRow.mk (s6Step36EntryGRow.payload++s6Step36EntryGFresh) s6Step36EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step36EntryFvBefore : Arena := s6Step36EntryFAfter
def s6Step36EntryFvAfter : Arena := s6Step36EntryFAfter
def s6Step36EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩
def s6Step36EntryFvFresh : List Wire := []
theorem s6Step36EntryFv_distinct : (s6Step36EntryFvRow.sign::s6Step36EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36EntryFv_owned : (s6Step36EntryFvRow.sign::s6Step36EntryFvRow.payload).toFinset⊆s6Step36EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step36EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36EntryFv_reserved : s6Step36EntryFvBefore.reserve s6Step36EntryFvFresh.toFinset=some s6Step36EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step36EntryFvFresh,arenaWires]
  · norm_num [s6Step36EntryFvBefore,s6Step36EntryFAfter,s6Step36EntryFvFresh,arenaWires]
  · simp only [s6Step36EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step36EntryFv_checked : planRowResizeLog s6Step36EntryFvBefore s6Step36EntryFvRow 31 s6Step36EntryFvFresh=
    some (s6Step36EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩,growRow 776 s6Step36EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step36EntryFvBefore s6Step36EntryFvAfter s6Step36EntryFvRow 31 s6Step36EntryFvFresh
    s6Step36EntryFv_distinct s6Step36EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step36EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step36EntryFvRow.payload++s6Step36EntryFvFresh) s6Step36EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step36EntryGvBefore : Arena := s6Step36EntryFAfter
def s6Step36EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step36EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927],775⟩
def s6Step36EntryGvFresh : List Wire := [802]
theorem s6Step36EntryGv_distinct : (s6Step36EntryGvRow.sign::s6Step36EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36EntryGv_owned : (s6Step36EntryGvRow.sign::s6Step36EntryGvRow.payload).toFinset⊆s6Step36EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step36EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36EntryGv_reserved : s6Step36EntryGvBefore.reserve s6Step36EntryGvFresh.toFinset=some s6Step36EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step36EntryGvFresh,arenaWires]
  · norm_num [s6Step36EntryGvBefore,s6Step36EntryFAfter,s6Step36EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step36EntryGvBefore s6Step36EntryGvAfter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,859),(860,861),(862,866),(867,868),(869,871),(872,874),(875,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step36EntryGvFresh rfl rfl
    · norm_num [s6Step36EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step36EntryGv_checked : planRowResizeLog s6Step36EntryGvBefore s6Step36EntryGvRow 31 s6Step36EntryGvFresh=
    some (s6Step36EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802],775⟩,growRow 775 s6Step36EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step36EntryGvBefore s6Step36EntryGvAfter s6Step36EntryGvRow 31 s6Step36EntryGvFresh
    s6Step36EntryGv_distinct s6Step36EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step36EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step36EntryGvRow.payload++s6Step36EntryGvFresh) s6Step36EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step37EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step37EntryFAfter : Arena := s6Step37EntryFBefore
def s6Step37EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩
def s6Step37EntryFFresh : List Wire := []
theorem s6Step37EntryF_distinct : (s6Step37EntryFRow.sign::s6Step37EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37EntryF_owned : (s6Step37EntryFRow.sign::s6Step37EntryFRow.payload).toFinset⊆s6Step37EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step37EntryFBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37EntryF_reserved : s6Step37EntryFBefore.reserve s6Step37EntryFFresh.toFinset=some s6Step37EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step37EntryFFresh,arenaWires]
  · norm_num [s6Step37EntryFBefore,s6Step37EntryFFresh,arenaWires]
  · simp only [s6Step37EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step37EntryF_checked : planRowResizeLog s6Step37EntryFBefore s6Step37EntryFRow 250 s6Step37EntryFFresh=
    some (s6Step37EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩,growRow 795 s6Step37EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step37EntryFBefore s6Step37EntryFAfter s6Step37EntryFRow 250 s6Step37EntryFFresh
    s6Step37EntryF_distinct s6Step37EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step37EntryF_reserved
  have rowEq : WindowRow.mk (s6Step37EntryFRow.payload++s6Step37EntryFFresh) s6Step37EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step37EntryGBefore : Arena := s6Step37EntryFBefore
def s6Step37EntryGAfter : Arena := s6Step37EntryFBefore
def s6Step37EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],777⟩
def s6Step37EntryGFresh : List Wire := []
theorem s6Step37EntryG_distinct : (s6Step37EntryGRow.sign::s6Step37EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37EntryG_owned : (s6Step37EntryGRow.sign::s6Step37EntryGRow.payload).toFinset⊆s6Step37EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step37EntryGBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37EntryG_reserved : s6Step37EntryGBefore.reserve s6Step37EntryGFresh.toFinset=some s6Step37EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step37EntryGFresh,arenaWires]
  · norm_num [s6Step37EntryGBefore,s6Step37EntryFBefore,s6Step37EntryGFresh,arenaWires]
  · simp only [s6Step37EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step37EntryG_checked : planRowResizeLog s6Step37EntryGBefore s6Step37EntryGRow 250 s6Step37EntryGFresh=
    some (s6Step37EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],777⟩,growRow 777 s6Step37EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step37EntryGBefore s6Step37EntryGAfter s6Step37EntryGRow 250 s6Step37EntryGFresh
    s6Step37EntryG_distinct s6Step37EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step37EntryG_reserved
  have rowEq : WindowRow.mk (s6Step37EntryGRow.payload++s6Step37EntryGFresh) s6Step37EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step37EntryFvBefore : Arena := s6Step37EntryFBefore
def s6Step37EntryFvAfter : Arena := s6Step37EntryFBefore
def s6Step37EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩
def s6Step37EntryFvFresh : List Wire := []
theorem s6Step37EntryFv_distinct : (s6Step37EntryFvRow.sign::s6Step37EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37EntryFv_owned : (s6Step37EntryFvRow.sign::s6Step37EntryFvRow.payload).toFinset⊆s6Step37EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step37EntryFvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37EntryFv_reserved : s6Step37EntryFvBefore.reserve s6Step37EntryFvFresh.toFinset=some s6Step37EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step37EntryFvFresh,arenaWires]
  · norm_num [s6Step37EntryFvBefore,s6Step37EntryFBefore,s6Step37EntryFvFresh,arenaWires]
  · simp only [s6Step37EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step37EntryFv_checked : planRowResizeLog s6Step37EntryFvBefore s6Step37EntryFvRow 31 s6Step37EntryFvFresh=
    some (s6Step37EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩,growRow 776 s6Step37EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step37EntryFvBefore s6Step37EntryFvAfter s6Step37EntryFvRow 31 s6Step37EntryFvFresh
    s6Step37EntryFv_distinct s6Step37EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step37EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step37EntryFvRow.payload++s6Step37EntryFvFresh) s6Step37EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step37EntryGvBefore : Arena := s6Step37EntryFBefore
def s6Step37EntryGvAfter : Arena := s6Step37EntryFBefore
def s6Step37EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802],775⟩
def s6Step37EntryGvFresh : List Wire := []
theorem s6Step37EntryGv_distinct : (s6Step37EntryGvRow.sign::s6Step37EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37EntryGv_owned : (s6Step37EntryGvRow.sign::s6Step37EntryGvRow.payload).toFinset⊆s6Step37EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step37EntryGvBefore (fun q => ([(0,779),(780,781),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,857),(858,859),(860,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37EntryGv_reserved : s6Step37EntryGvBefore.reserve s6Step37EntryGvFresh.toFinset=some s6Step37EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step37EntryGvFresh,arenaWires]
  · norm_num [s6Step37EntryGvBefore,s6Step37EntryFBefore,s6Step37EntryGvFresh,arenaWires]
  · simp only [s6Step37EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step37EntryGv_checked : planRowResizeLog s6Step37EntryGvBefore s6Step37EntryGvRow 31 s6Step37EntryGvFresh=
    some (s6Step37EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802],775⟩,growRow 775 s6Step37EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step37EntryGvBefore s6Step37EntryGvAfter s6Step37EntryGvRow 31 s6Step37EntryGvFresh
    s6Step37EntryGv_distinct s6Step37EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step37EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step37EntryGvRow.payload++s6Step37EntryGvFresh) s6Step37EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step38EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step38EntryFAfter : Arena := s6Step38EntryFBefore
def s6Step38EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩
def s6Step38EntryFFresh : List Wire := []
theorem s6Step38EntryF_distinct : (s6Step38EntryFRow.sign::s6Step38EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38EntryF_owned : (s6Step38EntryFRow.sign::s6Step38EntryFRow.payload).toFinset⊆s6Step38EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step38EntryFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38EntryF_reserved : s6Step38EntryFBefore.reserve s6Step38EntryFFresh.toFinset=some s6Step38EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step38EntryFFresh,arenaWires]
  · norm_num [s6Step38EntryFBefore,s6Step38EntryFFresh,arenaWires]
  · simp only [s6Step38EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step38EntryF_checked : planRowResizeLog s6Step38EntryFBefore s6Step38EntryFRow 250 s6Step38EntryFFresh=
    some (s6Step38EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩,growRow 795 s6Step38EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step38EntryFBefore s6Step38EntryFAfter s6Step38EntryFRow 250 s6Step38EntryFFresh
    s6Step38EntryF_distinct s6Step38EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step38EntryF_reserved
  have rowEq : WindowRow.mk (s6Step38EntryFRow.payload++s6Step38EntryFFresh) s6Step38EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step38EntryGBefore : Arena := s6Step38EntryFBefore
def s6Step38EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step38EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],777⟩
def s6Step38EntryGFresh : List Wire := [868]
theorem s6Step38EntryG_distinct : (s6Step38EntryGRow.sign::s6Step38EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38EntryG_owned : (s6Step38EntryGRow.sign::s6Step38EntryGRow.payload).toFinset⊆s6Step38EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step38EntryGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38EntryG_reserved : s6Step38EntryGBefore.reserve s6Step38EntryGFresh.toFinset=some s6Step38EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step38EntryGFresh,arenaWires]
  · norm_num [s6Step38EntryGBefore,s6Step38EntryFBefore,s6Step38EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step38EntryGBefore s6Step38EntryGAfter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step38EntryGFresh rfl rfl
    · norm_num [s6Step38EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step38EntryG_checked : planRowResizeLog s6Step38EntryGBefore s6Step38EntryGRow 250 s6Step38EntryGFresh=
    some (s6Step38EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 868],777⟩,growRow 777 s6Step38EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step38EntryGBefore s6Step38EntryGAfter s6Step38EntryGRow 250 s6Step38EntryGFresh
    s6Step38EntryG_distinct s6Step38EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step38EntryG_reserved
  have rowEq : WindowRow.mk (s6Step38EntryGRow.payload++s6Step38EntryGFresh) s6Step38EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 868],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step38EntryFvBefore : Arena := s6Step38EntryGAfter
def s6Step38EntryFvAfter : Arena := s6Step38EntryGAfter
def s6Step38EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩
def s6Step38EntryFvFresh : List Wire := []
theorem s6Step38EntryFv_distinct : (s6Step38EntryFvRow.sign::s6Step38EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38EntryFv_owned : (s6Step38EntryFvRow.sign::s6Step38EntryFvRow.payload).toFinset⊆s6Step38EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step38EntryFvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38EntryFv_reserved : s6Step38EntryFvBefore.reserve s6Step38EntryFvFresh.toFinset=some s6Step38EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step38EntryFvFresh,arenaWires]
  · norm_num [s6Step38EntryFvBefore,s6Step38EntryGAfter,s6Step38EntryFvFresh,arenaWires]
  · simp only [s6Step38EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step38EntryFv_checked : planRowResizeLog s6Step38EntryFvBefore s6Step38EntryFvRow 32 s6Step38EntryFvFresh=
    some (s6Step38EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩,growRow 776 s6Step38EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step38EntryFvBefore s6Step38EntryFvAfter s6Step38EntryFvRow 32 s6Step38EntryFvFresh
    s6Step38EntryFv_distinct s6Step38EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step38EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step38EntryFvRow.payload++s6Step38EntryFvFresh) s6Step38EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step38EntryGvBefore : Arena := s6Step38EntryGAfter
def s6Step38EntryGvAfter : Arena := s6Step38EntryGAfter
def s6Step38EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩
def s6Step38EntryGvFresh : List Wire := []
theorem s6Step38EntryGv_distinct : (s6Step38EntryGvRow.sign::s6Step38EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38EntryGv_owned : (s6Step38EntryGvRow.sign::s6Step38EntryGvRow.payload).toFinset⊆s6Step38EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step38EntryGvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38EntryGv_reserved : s6Step38EntryGvBefore.reserve s6Step38EntryGvFresh.toFinset=some s6Step38EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step38EntryGvFresh,arenaWires]
  · norm_num [s6Step38EntryGvBefore,s6Step38EntryGAfter,s6Step38EntryGvFresh,arenaWires]
  · simp only [s6Step38EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step38EntryGv_checked : planRowResizeLog s6Step38EntryGvBefore s6Step38EntryGvRow 32 s6Step38EntryGvFresh=
    some (s6Step38EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩,growRow 775 s6Step38EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step38EntryGvBefore s6Step38EntryGvAfter s6Step38EntryGvRow 32 s6Step38EntryGvFresh
    s6Step38EntryGv_distinct s6Step38EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step38EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step38EntryGvRow.payload++s6Step38EntryGvFresh) s6Step38EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step39EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step39EntryFAfter : Arena := s6Step39EntryFBefore
def s6Step39EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩
def s6Step39EntryFFresh : List Wire := []
theorem s6Step39EntryF_distinct : (s6Step39EntryFRow.sign::s6Step39EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39EntryF_owned : (s6Step39EntryFRow.sign::s6Step39EntryFRow.payload).toFinset⊆s6Step39EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step39EntryFBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39EntryF_reserved : s6Step39EntryFBefore.reserve s6Step39EntryFFresh.toFinset=some s6Step39EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step39EntryFFresh,arenaWires]
  · norm_num [s6Step39EntryFBefore,s6Step39EntryFFresh,arenaWires]
  · simp only [s6Step39EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step39EntryF_checked : planRowResizeLog s6Step39EntryFBefore s6Step39EntryFRow 249 s6Step39EntryFFresh=
    some (s6Step39EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩,growRow 795 s6Step39EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step39EntryFBefore s6Step39EntryFAfter s6Step39EntryFRow 249 s6Step39EntryFFresh
    s6Step39EntryF_distinct s6Step39EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step39EntryF_reserved
  have rowEq : WindowRow.mk (s6Step39EntryFRow.payload++s6Step39EntryFFresh) s6Step39EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step39EntryGBefore : Arena := s6Step39EntryFBefore
def s6Step39EntryGAfter : Arena := s6Step39EntryFBefore
def s6Step39EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],777⟩
def s6Step39EntryGFresh : List Wire := []
theorem s6Step39EntryG_distinct : (s6Step39EntryGRow.sign::s6Step39EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39EntryG_owned : (s6Step39EntryGRow.sign::s6Step39EntryGRow.payload).toFinset⊆s6Step39EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step39EntryGBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39EntryG_reserved : s6Step39EntryGBefore.reserve s6Step39EntryGFresh.toFinset=some s6Step39EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step39EntryGFresh,arenaWires]
  · norm_num [s6Step39EntryGBefore,s6Step39EntryFBefore,s6Step39EntryGFresh,arenaWires]
  · simp only [s6Step39EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step39EntryG_checked : planRowResizeLog s6Step39EntryGBefore s6Step39EntryGRow 249 s6Step39EntryGFresh=
    some (s6Step39EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],777⟩,growRow 777 s6Step39EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step39EntryGBefore s6Step39EntryGAfter s6Step39EntryGRow 249 s6Step39EntryGFresh
    s6Step39EntryG_distinct s6Step39EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step39EntryG_reserved
  have rowEq : WindowRow.mk (s6Step39EntryGRow.payload++s6Step39EntryGFresh) s6Step39EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step39EntryFvBefore : Arena := s6Step39EntryFBefore
def s6Step39EntryFvAfter : Arena := s6Step39EntryFBefore
def s6Step39EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩
def s6Step39EntryFvFresh : List Wire := []
theorem s6Step39EntryFv_distinct : (s6Step39EntryFvRow.sign::s6Step39EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39EntryFv_owned : (s6Step39EntryFvRow.sign::s6Step39EntryFvRow.payload).toFinset⊆s6Step39EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step39EntryFvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39EntryFv_reserved : s6Step39EntryFvBefore.reserve s6Step39EntryFvFresh.toFinset=some s6Step39EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step39EntryFvFresh,arenaWires]
  · norm_num [s6Step39EntryFvBefore,s6Step39EntryFBefore,s6Step39EntryFvFresh,arenaWires]
  · simp only [s6Step39EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step39EntryFv_checked : planRowResizeLog s6Step39EntryFvBefore s6Step39EntryFvRow 32 s6Step39EntryFvFresh=
    some (s6Step39EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩,growRow 776 s6Step39EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step39EntryFvBefore s6Step39EntryFvAfter s6Step39EntryFvRow 32 s6Step39EntryFvFresh
    s6Step39EntryFv_distinct s6Step39EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step39EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step39EntryFvRow.payload++s6Step39EntryFvFresh) s6Step39EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step39EntryGvBefore : Arena := s6Step39EntryFBefore
def s6Step39EntryGvAfter : Arena := s6Step39EntryFBefore
def s6Step39EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩
def s6Step39EntryGvFresh : List Wire := []
theorem s6Step39EntryGv_distinct : (s6Step39EntryGvRow.sign::s6Step39EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39EntryGv_owned : (s6Step39EntryGvRow.sign::s6Step39EntryGvRow.payload).toFinset⊆s6Step39EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step39EntryGvBefore (fun q => ([(0,779),(780,782),(786,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,874),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39EntryGv_reserved : s6Step39EntryGvBefore.reserve s6Step39EntryGvFresh.toFinset=some s6Step39EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step39EntryGvFresh,arenaWires]
  · norm_num [s6Step39EntryGvBefore,s6Step39EntryFBefore,s6Step39EntryGvFresh,arenaWires]
  · simp only [s6Step39EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step39EntryGv_checked : planRowResizeLog s6Step39EntryGvBefore s6Step39EntryGvRow 32 s6Step39EntryGvFresh=
    some (s6Step39EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩,growRow 775 s6Step39EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step39EntryGvBefore s6Step39EntryGvAfter s6Step39EntryGvRow 32 s6Step39EntryGvFresh
    s6Step39EntryGv_distinct s6Step39EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step39EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step39EntryGvRow.payload++s6Step39EntryGvFresh) s6Step39EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step40EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step40EntryFAfter : Arena := s6Step40EntryFBefore
def s6Step40EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩
def s6Step40EntryFFresh : List Wire := []
theorem s6Step40EntryF_distinct : (s6Step40EntryFRow.sign::s6Step40EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40EntryF_owned : (s6Step40EntryFRow.sign::s6Step40EntryFRow.payload).toFinset⊆s6Step40EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step40EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40EntryF_reserved : s6Step40EntryFBefore.reserve s6Step40EntryFFresh.toFinset=some s6Step40EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step40EntryFFresh,arenaWires]
  · norm_num [s6Step40EntryFBefore,s6Step40EntryFFresh,arenaWires]
  · simp only [s6Step40EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step40EntryF_checked : planRowResizeLog s6Step40EntryFBefore s6Step40EntryFRow 249 s6Step40EntryFFresh=
    some (s6Step40EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩,growRow 795 s6Step40EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step40EntryFBefore s6Step40EntryFAfter s6Step40EntryFRow 249 s6Step40EntryFFresh
    s6Step40EntryF_distinct s6Step40EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step40EntryF_reserved
  have rowEq : WindowRow.mk (s6Step40EntryFRow.payload++s6Step40EntryFFresh) s6Step40EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step40EntryGBefore : Arena := s6Step40EntryFBefore
def s6Step40EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step40EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩
def s6Step40EntryGFresh : List Wire := [793]
theorem s6Step40EntryG_distinct : (s6Step40EntryGRow.sign::s6Step40EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40EntryG_owned : (s6Step40EntryGRow.sign::s6Step40EntryGRow.payload).toFinset⊆s6Step40EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step40EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40EntryG_reserved : s6Step40EntryGBefore.reserve s6Step40EntryGFresh.toFinset=some s6Step40EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step40EntryGFresh,arenaWires]
  · norm_num [s6Step40EntryGBefore,s6Step40EntryFBefore,s6Step40EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step40EntryGBefore s6Step40EntryGAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EntryGFresh rfl rfl
    · norm_num [s6Step40EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step40EntryG_checked : planRowResizeLog s6Step40EntryGBefore s6Step40EntryGRow 249 s6Step40EntryGFresh=
    some (s6Step40EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 793],777⟩,growRow 777 s6Step40EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step40EntryGBefore s6Step40EntryGAfter s6Step40EntryGRow 249 s6Step40EntryGFresh
    s6Step40EntryG_distinct s6Step40EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step40EntryG_reserved
  have rowEq : WindowRow.mk (s6Step40EntryGRow.payload++s6Step40EntryGFresh) s6Step40EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step40EntryFvBefore : Arena := s6Step40EntryGAfter
def s6Step40EntryFvAfter : Arena := s6Step40EntryGAfter
def s6Step40EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874],776⟩
def s6Step40EntryFvFresh : List Wire := []
theorem s6Step40EntryFv_distinct : (s6Step40EntryFvRow.sign::s6Step40EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40EntryFv_owned : (s6Step40EntryFvRow.sign::s6Step40EntryFvRow.payload).toFinset⊆s6Step40EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step40EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40EntryFv_reserved : s6Step40EntryFvBefore.reserve s6Step40EntryFvFresh.toFinset=some s6Step40EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step40EntryFvFresh,arenaWires]
  · norm_num [s6Step40EntryFvBefore,s6Step40EntryGAfter,s6Step40EntryFvFresh,arenaWires]
  · simp only [s6Step40EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step40EntryFv_checked : planRowResizeLog s6Step40EntryFvBefore s6Step40EntryFvRow 33 s6Step40EntryFvFresh=
    some (s6Step40EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874],776⟩,growRow 776 s6Step40EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step40EntryFvBefore s6Step40EntryFvAfter s6Step40EntryFvRow 33 s6Step40EntryFvFresh
    s6Step40EntryFv_distinct s6Step40EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step40EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step40EntryFvRow.payload++s6Step40EntryFvFresh) s6Step40EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step40EntryGvBefore : Arena := s6Step40EntryGAfter
def s6Step40EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step40EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857],775⟩
def s6Step40EntryGvFresh : List Wire := [858]
theorem s6Step40EntryGv_distinct : (s6Step40EntryGvRow.sign::s6Step40EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40EntryGv_owned : (s6Step40EntryGvRow.sign::s6Step40EntryGvRow.payload).toFinset⊆s6Step40EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step40EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40EntryGv_reserved : s6Step40EntryGvBefore.reserve s6Step40EntryGvFresh.toFinset=some s6Step40EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step40EntryGvFresh,arenaWires]
  · norm_num [s6Step40EntryGvBefore,s6Step40EntryGAfter,s6Step40EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step40EntryGvBefore s6Step40EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,858),(859,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,887),(888,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step40EntryGvFresh rfl rfl
    · norm_num [s6Step40EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step40EntryGv_checked : planRowResizeLog s6Step40EntryGvBefore s6Step40EntryGvRow 33 s6Step40EntryGvFresh=
    some (s6Step40EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858],775⟩,growRow 775 s6Step40EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step40EntryGvBefore s6Step40EntryGvAfter s6Step40EntryGvRow 33 s6Step40EntryGvFresh
    s6Step40EntryGv_distinct s6Step40EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step40EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step40EntryGvRow.payload++s6Step40EntryGvFresh) s6Step40EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step41EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step41EntryFAfter : Arena := s6Step41EntryFBefore
def s6Step41EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩
def s6Step41EntryFFresh : List Wire := []
theorem s6Step41EntryF_distinct : (s6Step41EntryFRow.sign::s6Step41EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41EntryF_owned : (s6Step41EntryFRow.sign::s6Step41EntryFRow.payload).toFinset⊆s6Step41EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step41EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41EntryF_reserved : s6Step41EntryFBefore.reserve s6Step41EntryFFresh.toFinset=some s6Step41EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step41EntryFFresh,arenaWires]
  · norm_num [s6Step41EntryFBefore,s6Step41EntryFFresh,arenaWires]
  · simp only [s6Step41EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step41EntryF_checked : planRowResizeLog s6Step41EntryFBefore s6Step41EntryFRow 248 s6Step41EntryFFresh=
    some (s6Step41EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩,growRow 795 s6Step41EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step41EntryFBefore s6Step41EntryFAfter s6Step41EntryFRow 248 s6Step41EntryFFresh
    s6Step41EntryF_distinct s6Step41EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step41EntryF_reserved
  have rowEq : WindowRow.mk (s6Step41EntryFRow.payload++s6Step41EntryFFresh) s6Step41EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step41EntryGBefore : Arena := s6Step41EntryFBefore
def s6Step41EntryGAfter : Arena := s6Step41EntryFBefore
def s6Step41EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩
def s6Step41EntryGFresh : List Wire := []
theorem s6Step41EntryG_distinct : (s6Step41EntryGRow.sign::s6Step41EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41EntryG_owned : (s6Step41EntryGRow.sign::s6Step41EntryGRow.payload).toFinset⊆s6Step41EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step41EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41EntryG_reserved : s6Step41EntryGBefore.reserve s6Step41EntryGFresh.toFinset=some s6Step41EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step41EntryGFresh,arenaWires]
  · norm_num [s6Step41EntryGBefore,s6Step41EntryFBefore,s6Step41EntryGFresh,arenaWires]
  · simp only [s6Step41EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step41EntryG_checked : planRowResizeLog s6Step41EntryGBefore s6Step41EntryGRow 248 s6Step41EntryGFresh=
    some (s6Step41EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩,growRow 777 s6Step41EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step41EntryGBefore s6Step41EntryGAfter s6Step41EntryGRow 248 s6Step41EntryGFresh
    s6Step41EntryG_distinct s6Step41EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step41EntryG_reserved
  have rowEq : WindowRow.mk (s6Step41EntryGRow.payload++s6Step41EntryGFresh) s6Step41EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step41EntryFvBefore : Arena := s6Step41EntryFBefore
def s6Step41EntryFvAfter : Arena := s6Step41EntryFBefore
def s6Step41EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩
def s6Step41EntryFvFresh : List Wire := []
theorem s6Step41EntryFv_distinct : (s6Step41EntryFvRow.sign::s6Step41EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41EntryFv_owned : (s6Step41EntryFvRow.sign::s6Step41EntryFvRow.payload).toFinset⊆s6Step41EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step41EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41EntryFv_reserved : s6Step41EntryFvBefore.reserve s6Step41EntryFvFresh.toFinset=some s6Step41EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step41EntryFvFresh,arenaWires]
  · norm_num [s6Step41EntryFvBefore,s6Step41EntryFBefore,s6Step41EntryFvFresh,arenaWires]
  · simp only [s6Step41EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step41EntryFv_checked : planRowResizeLog s6Step41EntryFvBefore s6Step41EntryFvRow 34 s6Step41EntryFvFresh=
    some (s6Step41EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩,growRow 776 s6Step41EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step41EntryFvBefore s6Step41EntryFvAfter s6Step41EntryFvRow 34 s6Step41EntryFvFresh
    s6Step41EntryFv_distinct s6Step41EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step41EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step41EntryFvRow.payload++s6Step41EntryFvFresh) s6Step41EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step41EntryGvBefore : Arena := s6Step41EntryFBefore
def s6Step41EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step41EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858],775⟩
def s6Step41EntryGvFresh : List Wire := [779]
theorem s6Step41EntryGv_distinct : (s6Step41EntryGvRow.sign::s6Step41EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41EntryGv_owned : (s6Step41EntryGvRow.sign::s6Step41EntryGvRow.payload).toFinset⊆s6Step41EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step41EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41EntryGv_reserved : s6Step41EntryGvBefore.reserve s6Step41EntryGvFresh.toFinset=some s6Step41EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step41EntryGvFresh,arenaWires]
  · norm_num [s6Step41EntryGvBefore,s6Step41EntryFBefore,s6Step41EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step41EntryGvBefore s6Step41EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,866),(867,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step41EntryGvFresh rfl rfl
    · norm_num [s6Step41EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step41EntryGv_checked : planRowResizeLog s6Step41EntryGvBefore s6Step41EntryGvRow 34 s6Step41EntryGvFresh=
    some (s6Step41EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 779],775⟩,growRow 775 s6Step41EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step41EntryGvBefore s6Step41EntryGvAfter s6Step41EntryGvRow 34 s6Step41EntryGvFresh
    s6Step41EntryGv_distinct s6Step41EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step41EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step41EntryGvRow.payload++s6Step41EntryGvFresh) s6Step41EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step42EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step42EntryFAfter : Arena := s6Step42EntryFBefore
def s6Step42EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩
def s6Step42EntryFFresh : List Wire := []
theorem s6Step42EntryF_distinct : (s6Step42EntryFRow.sign::s6Step42EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42EntryF_owned : (s6Step42EntryFRow.sign::s6Step42EntryFRow.payload).toFinset⊆s6Step42EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step42EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42EntryF_reserved : s6Step42EntryFBefore.reserve s6Step42EntryFFresh.toFinset=some s6Step42EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step42EntryFFresh,arenaWires]
  · norm_num [s6Step42EntryFBefore,s6Step42EntryFFresh,arenaWires]
  · simp only [s6Step42EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step42EntryF_checked : planRowResizeLog s6Step42EntryFBefore s6Step42EntryFRow 248 s6Step42EntryFFresh=
    some (s6Step42EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩,growRow 795 s6Step42EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step42EntryFBefore s6Step42EntryFAfter s6Step42EntryFRow 248 s6Step42EntryFFresh
    s6Step42EntryF_distinct s6Step42EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step42EntryF_reserved
  have rowEq : WindowRow.mk (s6Step42EntryFRow.payload++s6Step42EntryFFresh) s6Step42EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step42EntryGBefore : Arena := s6Step42EntryFBefore
def s6Step42EntryGAfter : Arena := s6Step42EntryFBefore
def s6Step42EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩
def s6Step42EntryGFresh : List Wire := []
theorem s6Step42EntryG_distinct : (s6Step42EntryGRow.sign::s6Step42EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42EntryG_owned : (s6Step42EntryGRow.sign::s6Step42EntryGRow.payload).toFinset⊆s6Step42EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step42EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42EntryG_reserved : s6Step42EntryGBefore.reserve s6Step42EntryGFresh.toFinset=some s6Step42EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step42EntryGFresh,arenaWires]
  · norm_num [s6Step42EntryGBefore,s6Step42EntryFBefore,s6Step42EntryGFresh,arenaWires]
  · simp only [s6Step42EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step42EntryG_checked : planRowResizeLog s6Step42EntryGBefore s6Step42EntryGRow 248 s6Step42EntryGFresh=
    some (s6Step42EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩,growRow 777 s6Step42EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step42EntryGBefore s6Step42EntryGAfter s6Step42EntryGRow 248 s6Step42EntryGFresh
    s6Step42EntryG_distinct s6Step42EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step42EntryG_reserved
  have rowEq : WindowRow.mk (s6Step42EntryGRow.payload++s6Step42EntryGFresh) s6Step42EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step42EntryFvBefore : Arena := s6Step42EntryFBefore
def s6Step42EntryFvAfter : Arena := s6Step42EntryFBefore
def s6Step42EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩
def s6Step42EntryFvFresh : List Wire := []
theorem s6Step42EntryFv_distinct : (s6Step42EntryFvRow.sign::s6Step42EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42EntryFv_owned : (s6Step42EntryFvRow.sign::s6Step42EntryFvRow.payload).toFinset⊆s6Step42EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step42EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42EntryFv_reserved : s6Step42EntryFvBefore.reserve s6Step42EntryFvFresh.toFinset=some s6Step42EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step42EntryFvFresh,arenaWires]
  · norm_num [s6Step42EntryFvBefore,s6Step42EntryFBefore,s6Step42EntryFvFresh,arenaWires]
  · simp only [s6Step42EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step42EntryFv_checked : planRowResizeLog s6Step42EntryFvBefore s6Step42EntryFvRow 34 s6Step42EntryFvFresh=
    some (s6Step42EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩,growRow 776 s6Step42EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step42EntryFvBefore s6Step42EntryFvAfter s6Step42EntryFvRow 34 s6Step42EntryFvFresh
    s6Step42EntryFv_distinct s6Step42EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step42EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step42EntryFvRow.payload++s6Step42EntryFvFresh) s6Step42EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step42EntryGvBefore : Arena := s6Step42EntryFBefore
def s6Step42EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step42EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858],775⟩
def s6Step42EntryGvFresh : List Wire := [908]
theorem s6Step42EntryGv_distinct : (s6Step42EntryGvRow.sign::s6Step42EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42EntryGv_owned : (s6Step42EntryGvRow.sign::s6Step42EntryGvRow.payload).toFinset⊆s6Step42EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step42EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42EntryGv_reserved : s6Step42EntryGvBefore.reserve s6Step42EntryGvFresh.toFinset=some s6Step42EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step42EntryGvFresh,arenaWires]
  · norm_num [s6Step42EntryGvBefore,s6Step42EntryFBefore,s6Step42EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step42EntryGvBefore s6Step42EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(908,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step42EntryGvFresh rfl rfl
    · norm_num [s6Step42EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step42EntryGv_checked : planRowResizeLog s6Step42EntryGvBefore s6Step42EntryGvRow 34 s6Step42EntryGvFresh=
    some (s6Step42EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908],775⟩,growRow 775 s6Step42EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step42EntryGvBefore s6Step42EntryGvAfter s6Step42EntryGvRow 34 s6Step42EntryGvFresh
    s6Step42EntryGv_distinct s6Step42EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step42EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step42EntryGvRow.payload++s6Step42EntryGvFresh) s6Step42EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step43EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step43EntryFAfter : Arena := s6Step43EntryFBefore
def s6Step43EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502],795⟩
def s6Step43EntryFFresh : List Wire := []
theorem s6Step43EntryF_distinct : (s6Step43EntryFRow.sign::s6Step43EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43EntryF_owned : (s6Step43EntryFRow.sign::s6Step43EntryFRow.payload).toFinset⊆s6Step43EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step43EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43EntryF_reserved : s6Step43EntryFBefore.reserve s6Step43EntryFFresh.toFinset=some s6Step43EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step43EntryFFresh,arenaWires]
  · norm_num [s6Step43EntryFBefore,s6Step43EntryFFresh,arenaWires]
  · simp only [s6Step43EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step43EntryF_checked : planRowResizeLog s6Step43EntryFBefore s6Step43EntryFRow 247 s6Step43EntryFFresh=
    some (s6Step43EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502],795⟩,growRow 795 s6Step43EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step43EntryFBefore s6Step43EntryFAfter s6Step43EntryFRow 247 s6Step43EntryFFresh
    s6Step43EntryF_distinct s6Step43EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step43EntryF_reserved
  have rowEq : WindowRow.mk (s6Step43EntryFRow.payload++s6Step43EntryFFresh) s6Step43EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step43EntryGBefore : Arena := s6Step43EntryFBefore
def s6Step43EntryGAfter : Arena := s6Step43EntryFBefore
def s6Step43EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],777⟩
def s6Step43EntryGFresh : List Wire := []
theorem s6Step43EntryG_distinct : (s6Step43EntryGRow.sign::s6Step43EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43EntryG_owned : (s6Step43EntryGRow.sign::s6Step43EntryGRow.payload).toFinset⊆s6Step43EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step43EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43EntryG_reserved : s6Step43EntryGBefore.reserve s6Step43EntryGFresh.toFinset=some s6Step43EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step43EntryGFresh,arenaWires]
  · norm_num [s6Step43EntryGBefore,s6Step43EntryFBefore,s6Step43EntryGFresh,arenaWires]
  · simp only [s6Step43EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step43EntryG_checked : planRowResizeLog s6Step43EntryGBefore s6Step43EntryGRow 247 s6Step43EntryGFresh=
    some (s6Step43EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],777⟩,growRow 777 s6Step43EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step43EntryGBefore s6Step43EntryGAfter s6Step43EntryGRow 247 s6Step43EntryGFresh
    s6Step43EntryG_distinct s6Step43EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step43EntryG_reserved
  have rowEq : WindowRow.mk (s6Step43EntryGRow.payload++s6Step43EntryGFresh) s6Step43EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step43EntryFvBefore : Arena := s6Step43EntryFBefore
def s6Step43EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step43EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩
def s6Step43EntryFvFresh : List Wire := [779]
theorem s6Step43EntryFv_distinct : (s6Step43EntryFvRow.sign::s6Step43EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43EntryFv_owned : (s6Step43EntryFvRow.sign::s6Step43EntryFvRow.payload).toFinset⊆s6Step43EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step43EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43EntryFv_reserved : s6Step43EntryFvBefore.reserve s6Step43EntryFvFresh.toFinset=some s6Step43EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step43EntryFvFresh,arenaWires]
  · norm_num [s6Step43EntryFvBefore,s6Step43EntryFBefore,s6Step43EntryFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step43EntryFvBefore s6Step43EntryFvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step43EntryFvFresh rfl rfl
    · norm_num [s6Step43EntryFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step43EntryFv_checked : planRowResizeLog s6Step43EntryFvBefore s6Step43EntryFvRow 35 s6Step43EntryFvFresh=
    some (s6Step43EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 779],776⟩,growRow 776 s6Step43EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step43EntryFvBefore s6Step43EntryFvAfter s6Step43EntryFvRow 35 s6Step43EntryFvFresh
    s6Step43EntryFv_distinct s6Step43EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step43EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step43EntryFvRow.payload++s6Step43EntryFvFresh) s6Step43EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 779],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step43EntryGvBefore : Arena := s6Step43EntryFvAfter
def s6Step43EntryGvAfter : Arena := s6Step43EntryFvAfter
def s6Step43EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
def s6Step43EntryGvFresh : List Wire := []
theorem s6Step43EntryGv_distinct : (s6Step43EntryGvRow.sign::s6Step43EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43EntryGv_owned : (s6Step43EntryGvRow.sign::s6Step43EntryGvRow.payload).toFinset⊆s6Step43EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step43EntryGvBefore (fun q => ([(0,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,861),(862,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43EntryGv_reserved : s6Step43EntryGvBefore.reserve s6Step43EntryGvFresh.toFinset=some s6Step43EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step43EntryGvFresh,arenaWires]
  · norm_num [s6Step43EntryGvBefore,s6Step43EntryFvAfter,s6Step43EntryGvFresh,arenaWires]
  · simp only [s6Step43EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step43EntryGv_checked : planRowResizeLog s6Step43EntryGvBefore s6Step43EntryGvRow 35 s6Step43EntryGvFresh=
    some (s6Step43EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩,growRow 775 s6Step43EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step43EntryGvBefore s6Step43EntryGvAfter s6Step43EntryGvRow 35 s6Step43EntryGvFresh
    s6Step43EntryGv_distinct s6Step43EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step43EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step43EntryGvRow.payload++s6Step43EntryGvFresh) s6Step43EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step44EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step44EntryFAfter : Arena := s6Step44EntryFBefore
def s6Step44EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩
def s6Step44EntryFFresh : List Wire := []
theorem s6Step44EntryF_distinct : (s6Step44EntryFRow.sign::s6Step44EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44EntryF_owned : (s6Step44EntryFRow.sign::s6Step44EntryFRow.payload).toFinset⊆s6Step44EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step44EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44EntryF_reserved : s6Step44EntryFBefore.reserve s6Step44EntryFFresh.toFinset=some s6Step44EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step44EntryFFresh,arenaWires]
  · norm_num [s6Step44EntryFBefore,s6Step44EntryFFresh,arenaWires]
  · simp only [s6Step44EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step44EntryF_checked : planRowResizeLog s6Step44EntryFBefore s6Step44EntryFRow 246 s6Step44EntryFFresh=
    some (s6Step44EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩,growRow 795 s6Step44EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step44EntryFBefore s6Step44EntryFAfter s6Step44EntryFRow 246 s6Step44EntryFFresh
    s6Step44EntryF_distinct s6Step44EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step44EntryF_reserved
  have rowEq : WindowRow.mk (s6Step44EntryFRow.payload++s6Step44EntryFFresh) s6Step44EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step44EntryGBefore : Arena := s6Step44EntryFBefore
def s6Step44EntryGAfter : Arena := s6Step44EntryFBefore
def s6Step44EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],777⟩
def s6Step44EntryGFresh : List Wire := []
theorem s6Step44EntryG_distinct : (s6Step44EntryGRow.sign::s6Step44EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44EntryG_owned : (s6Step44EntryGRow.sign::s6Step44EntryGRow.payload).toFinset⊆s6Step44EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step44EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44EntryG_reserved : s6Step44EntryGBefore.reserve s6Step44EntryGFresh.toFinset=some s6Step44EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step44EntryGFresh,arenaWires]
  · norm_num [s6Step44EntryGBefore,s6Step44EntryFBefore,s6Step44EntryGFresh,arenaWires]
  · simp only [s6Step44EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step44EntryG_checked : planRowResizeLog s6Step44EntryGBefore s6Step44EntryGRow 246 s6Step44EntryGFresh=
    some (s6Step44EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],777⟩,growRow 777 s6Step44EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step44EntryGBefore s6Step44EntryGAfter s6Step44EntryGRow 246 s6Step44EntryGFresh
    s6Step44EntryG_distinct s6Step44EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step44EntryG_reserved
  have rowEq : WindowRow.mk (s6Step44EntryGRow.payload++s6Step44EntryGFresh) s6Step44EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step44EntryFvBefore : Arena := s6Step44EntryFBefore
def s6Step44EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step44EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887],776⟩
def s6Step44EntryFvFresh : List Wire := [890]
theorem s6Step44EntryFv_distinct : (s6Step44EntryFvRow.sign::s6Step44EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44EntryFv_owned : (s6Step44EntryFvRow.sign::s6Step44EntryFvRow.payload).toFinset⊆s6Step44EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step44EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44EntryFv_reserved : s6Step44EntryFvBefore.reserve s6Step44EntryFvFresh.toFinset=some s6Step44EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step44EntryFvFresh,arenaWires]
  · norm_num [s6Step44EntryFvBefore,s6Step44EntryFBefore,s6Step44EntryFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step44EntryFvBefore s6Step44EntryFvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step44EntryFvFresh rfl rfl
    · norm_num [s6Step44EntryFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step44EntryFv_checked : planRowResizeLog s6Step44EntryFvBefore s6Step44EntryFvRow 35 s6Step44EntryFvFresh=
    some (s6Step44EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890],776⟩,growRow 776 s6Step44EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step44EntryFvBefore s6Step44EntryFvAfter s6Step44EntryFvRow 35 s6Step44EntryFvFresh
    s6Step44EntryFv_distinct s6Step44EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step44EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step44EntryFvRow.payload++s6Step44EntryFvFresh) s6Step44EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step44EntryGvBefore : Arena := s6Step44EntryFvAfter
def s6Step44EntryGvAfter : Arena := s6Step44EntryFvAfter
def s6Step44EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
def s6Step44EntryGvFresh : List Wire := []
theorem s6Step44EntryGv_distinct : (s6Step44EntryGvRow.sign::s6Step44EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44EntryGv_owned : (s6Step44EntryGvRow.sign::s6Step44EntryGvRow.payload).toFinset⊆s6Step44EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step44EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44EntryGv_reserved : s6Step44EntryGvBefore.reserve s6Step44EntryGvFresh.toFinset=some s6Step44EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step44EntryGvFresh,arenaWires]
  · norm_num [s6Step44EntryGvBefore,s6Step44EntryFvAfter,s6Step44EntryGvFresh,arenaWires]
  · simp only [s6Step44EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step44EntryGv_checked : planRowResizeLog s6Step44EntryGvBefore s6Step44EntryGvRow 35 s6Step44EntryGvFresh=
    some (s6Step44EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩,growRow 775 s6Step44EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step44EntryGvBefore s6Step44EntryGvAfter s6Step44EntryGvRow 35 s6Step44EntryGvFresh
    s6Step44EntryGv_distinct s6Step44EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step44EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step44EntryGvRow.payload++s6Step44EntryGvFresh) s6Step44EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step45EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step45EntryFAfter : Arena := s6Step45EntryFBefore
def s6Step45EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩
def s6Step45EntryFFresh : List Wire := []
theorem s6Step45EntryF_distinct : (s6Step45EntryFRow.sign::s6Step45EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45EntryF_owned : (s6Step45EntryFRow.sign::s6Step45EntryFRow.payload).toFinset⊆s6Step45EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step45EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45EntryF_reserved : s6Step45EntryFBefore.reserve s6Step45EntryFFresh.toFinset=some s6Step45EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step45EntryFFresh,arenaWires]
  · norm_num [s6Step45EntryFBefore,s6Step45EntryFFresh,arenaWires]
  · simp only [s6Step45EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step45EntryF_checked : planRowResizeLog s6Step45EntryFBefore s6Step45EntryFRow 246 s6Step45EntryFFresh=
    some (s6Step45EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩,growRow 795 s6Step45EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step45EntryFBefore s6Step45EntryFAfter s6Step45EntryFRow 246 s6Step45EntryFFresh
    s6Step45EntryF_distinct s6Step45EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step45EntryF_reserved
  have rowEq : WindowRow.mk (s6Step45EntryFRow.payload++s6Step45EntryFFresh) s6Step45EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step45EntryGBefore : Arena := s6Step45EntryFBefore
def s6Step45EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step45EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],777⟩
def s6Step45EntryGFresh : List Wire := [873]
theorem s6Step45EntryG_distinct : (s6Step45EntryGRow.sign::s6Step45EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45EntryG_owned : (s6Step45EntryGRow.sign::s6Step45EntryGRow.payload).toFinset⊆s6Step45EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step45EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45EntryG_reserved : s6Step45EntryGBefore.reserve s6Step45EntryGFresh.toFinset=some s6Step45EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step45EntryGFresh,arenaWires]
  · norm_num [s6Step45EntryGBefore,s6Step45EntryFBefore,s6Step45EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step45EntryGBefore s6Step45EntryGAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step45EntryGFresh rfl rfl
    · norm_num [s6Step45EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step45EntryG_checked : planRowResizeLog s6Step45EntryGBefore s6Step45EntryGRow 246 s6Step45EntryGFresh=
    some (s6Step45EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 873],777⟩,growRow 777 s6Step45EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step45EntryGBefore s6Step45EntryGAfter s6Step45EntryGRow 246 s6Step45EntryGFresh
    s6Step45EntryG_distinct s6Step45EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step45EntryG_reserved
  have rowEq : WindowRow.mk (s6Step45EntryGRow.payload++s6Step45EntryGFresh) s6Step45EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 873],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step45EntryFvBefore : Arena := s6Step45EntryGAfter
def s6Step45EntryFvAfter : Arena := s6Step45EntryGAfter
def s6Step45EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890],776⟩
def s6Step45EntryFvFresh : List Wire := []
theorem s6Step45EntryFv_distinct : (s6Step45EntryFvRow.sign::s6Step45EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45EntryFv_owned : (s6Step45EntryFvRow.sign::s6Step45EntryFvRow.payload).toFinset⊆s6Step45EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step45EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45EntryFv_reserved : s6Step45EntryFvBefore.reserve s6Step45EntryFvFresh.toFinset=some s6Step45EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step45EntryFvFresh,arenaWires]
  · norm_num [s6Step45EntryFvBefore,s6Step45EntryGAfter,s6Step45EntryFvFresh,arenaWires]
  · simp only [s6Step45EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step45EntryFv_checked : planRowResizeLog s6Step45EntryFvBefore s6Step45EntryFvRow 35 s6Step45EntryFvFresh=
    some (s6Step45EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890],776⟩,growRow 776 s6Step45EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step45EntryFvBefore s6Step45EntryFvAfter s6Step45EntryFvRow 35 s6Step45EntryFvFresh
    s6Step45EntryFv_distinct s6Step45EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step45EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step45EntryFvRow.payload++s6Step45EntryFvFresh) s6Step45EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step45EntryGvBefore : Arena := s6Step45EntryGAfter
def s6Step45EntryGvAfter : Arena := s6Step45EntryGAfter
def s6Step45EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
def s6Step45EntryGvFresh : List Wire := []
theorem s6Step45EntryGv_distinct : (s6Step45EntryGvRow.sign::s6Step45EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45EntryGv_owned : (s6Step45EntryGvRow.sign::s6Step45EntryGvRow.payload).toFinset⊆s6Step45EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step45EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,796),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,868),(869,871),(872,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45EntryGv_reserved : s6Step45EntryGvBefore.reserve s6Step45EntryGvFresh.toFinset=some s6Step45EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step45EntryGvFresh,arenaWires]
  · norm_num [s6Step45EntryGvBefore,s6Step45EntryGAfter,s6Step45EntryGvFresh,arenaWires]
  · simp only [s6Step45EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step45EntryGv_checked : planRowResizeLog s6Step45EntryGvBefore s6Step45EntryGvRow 35 s6Step45EntryGvFresh=
    some (s6Step45EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩,growRow 775 s6Step45EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step45EntryGvBefore s6Step45EntryGvAfter s6Step45EntryGvRow 35 s6Step45EntryGvFresh
    s6Step45EntryGv_distinct s6Step45EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step45EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step45EntryGvRow.payload++s6Step45EntryGvFresh) s6Step45EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step46EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step46EntryFAfter : Arena := s6Step46EntryFBefore
def s6Step46EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500],795⟩
def s6Step46EntryFFresh : List Wire := []
theorem s6Step46EntryF_distinct : (s6Step46EntryFRow.sign::s6Step46EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46EntryF_owned : (s6Step46EntryFRow.sign::s6Step46EntryFRow.payload).toFinset⊆s6Step46EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step46EntryFBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46EntryF_reserved : s6Step46EntryFBefore.reserve s6Step46EntryFFresh.toFinset=some s6Step46EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step46EntryFFresh,arenaWires]
  · norm_num [s6Step46EntryFBefore,s6Step46EntryFFresh,arenaWires]
  · simp only [s6Step46EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step46EntryF_checked : planRowResizeLog s6Step46EntryFBefore s6Step46EntryFRow 245 s6Step46EntryFFresh=
    some (s6Step46EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500],795⟩,growRow 795 s6Step46EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step46EntryFBefore s6Step46EntryFAfter s6Step46EntryFRow 245 s6Step46EntryFFresh
    s6Step46EntryF_distinct s6Step46EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step46EntryF_reserved
  have rowEq : WindowRow.mk (s6Step46EntryFRow.payload++s6Step46EntryFFresh) s6Step46EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step46EntryGBefore : Arena := s6Step46EntryFBefore
def s6Step46EntryGAfter : Arena := s6Step46EntryFBefore
def s6Step46EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],777⟩
def s6Step46EntryGFresh : List Wire := []
theorem s6Step46EntryG_distinct : (s6Step46EntryGRow.sign::s6Step46EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46EntryG_owned : (s6Step46EntryGRow.sign::s6Step46EntryGRow.payload).toFinset⊆s6Step46EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step46EntryGBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46EntryG_reserved : s6Step46EntryGBefore.reserve s6Step46EntryGFresh.toFinset=some s6Step46EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step46EntryGFresh,arenaWires]
  · norm_num [s6Step46EntryGBefore,s6Step46EntryFBefore,s6Step46EntryGFresh,arenaWires]
  · simp only [s6Step46EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step46EntryG_checked : planRowResizeLog s6Step46EntryGBefore s6Step46EntryGRow 245 s6Step46EntryGFresh=
    some (s6Step46EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],777⟩,growRow 777 s6Step46EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step46EntryGBefore s6Step46EntryGAfter s6Step46EntryGRow 245 s6Step46EntryGFresh
    s6Step46EntryG_distinct s6Step46EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step46EntryG_reserved
  have rowEq : WindowRow.mk (s6Step46EntryGRow.payload++s6Step46EntryGFresh) s6Step46EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step46EntryFvBefore : Arena := s6Step46EntryFBefore
def s6Step46EntryFvAfter : Arena := s6Step46EntryFBefore
def s6Step46EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796],776⟩
def s6Step46EntryFvFresh : List Wire := []
theorem s6Step46EntryFv_distinct : (s6Step46EntryFvRow.sign::s6Step46EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46EntryFv_owned : (s6Step46EntryFvRow.sign::s6Step46EntryFvRow.payload).toFinset⊆s6Step46EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step46EntryFvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46EntryFv_reserved : s6Step46EntryFvBefore.reserve s6Step46EntryFvFresh.toFinset=some s6Step46EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step46EntryFvFresh,arenaWires]
  · norm_num [s6Step46EntryFvBefore,s6Step46EntryFBefore,s6Step46EntryFvFresh,arenaWires]
  · simp only [s6Step46EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl
theorem s6Step46EntryFv_checked : planRowResizeLog s6Step46EntryFvBefore s6Step46EntryFvRow 36 s6Step46EntryFvFresh=
    some (s6Step46EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796],776⟩,growRow 776 s6Step46EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step46EntryFvBefore s6Step46EntryFvAfter s6Step46EntryFvRow 36 s6Step46EntryFvFresh
    s6Step46EntryFv_distinct s6Step46EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step46EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step46EntryFvRow.payload++s6Step46EntryFvFresh) s6Step46EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result
def s6Step46EntryGvBefore : Arena := s6Step46EntryFBefore
def s6Step46EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step46EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907],775⟩
def s6Step46EntryGvFresh : List Wire := [856]
theorem s6Step46EntryGv_distinct : (s6Step46EntryGvRow.sign::s6Step46EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46EntryGv_owned : (s6Step46EntryGvRow.sign::s6Step46EntryGvRow.payload).toFinset⊆s6Step46EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step46EntryGvBefore (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46EntryGv_reserved : s6Step46EntryGvBefore.reserve s6Step46EntryGvFresh.toFinset=some s6Step46EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step46EntryGvFresh,arenaWires]
  · norm_num [s6Step46EntryGvBefore,s6Step46EntryFBefore,s6Step46EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step46EntryGvBefore s6Step46EntryGvAfter (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(857,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(785,787),(789,790),(794,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(848,849),(850,855),(856,863),(864,868),(869,871),(872,873),(874,875),(876,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step46EntryGvFresh rfl rfl
    · norm_num [s6Step46EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel
theorem s6Step46EntryGv_checked : planRowResizeLog s6Step46EntryGvBefore s6Step46EntryGvRow 36 s6Step46EntryGvFresh=
    some (s6Step46EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856],775⟩,growRow 775 s6Step46EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step46EntryGvBefore s6Step46EntryGvAfter s6Step46EntryGvRow 36 s6Step46EntryGvFresh
    s6Step46EntryGv_distinct s6Step46EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step46EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step46EntryGvRow.payload++s6Step46EntryGvFresh) s6Step46EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

end ECDSAAdd.Arithmetic.Paper935
