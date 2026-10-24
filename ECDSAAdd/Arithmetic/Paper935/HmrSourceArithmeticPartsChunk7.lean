import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk6

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step47Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step47Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 865, 795]
def s6Step47Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 823, 777]
def s6Step47Add0Work : List Wire := [868, 805, 877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step47Add0_bounded : s6Step47Add0Work.toFinset⊆arenaWires := by
  have h : s6Step47Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step47Add0During : Arena := ⟨s6Step47Add0Arena.live∪s6Step47Add0Work.toFinset,Finset.union_subset s6Step47Add0Arena.bounded s6Step47Add0_bounded⟩
theorem s6Step47Add0_distinct : (793::845::875::(s6Step47Add0A++s6Step47Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step47Add0_owned : (793::845::875::(s6Step47Add0A++s6Step47Add0B)).toFinset⊆s6Step47Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step47Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47Add0_apart : Disjoint s6Step47Add0Arena.live s6Step47Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step47Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47Add0_card : s6Step47Add0Arena.live.card=854 := by
  decide +kernel
theorem s6Step47Add0_borrowed : s6Step47Add0Arena.checkBorrow (hmrHybridCount s6Step47Add0Arena s6Step47Add0B.length) s6Step47Add0Work=some s6Step47Add0During := by
  have len : s6Step47Add0Work.length=hmrHybridCount s6Step47Add0Arena s6Step47Add0B.length := by
    rw [hmrHybridCount,s6Step47Add0_card]
    decide +kernel
  have nd : s6Step47Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step47Add0Arena s6Step47Add0During s6Step47Add0Work.toFinset s6Step47Add0_bounded s6Step47Add0_apart rfl
theorem s6Step47Add0_checked : compileHmrHybridCinLog s6Step47Add0Arena 845 793 875 s6Step47Add0A s6Step47Add0B s6Step47Add0Work=some s6Step47Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step47Add0Arena s6Step47Add0During 845 793 875 s6Step47Add0A s6Step47Add0B s6Step47Add0Work
    (by decide +kernel) (by decide +kernel) s6Step47Add0_distinct
    (fun q hq => s6Step47Add0_owned (List.mem_toFinset.mpr hq)) s6Step47Add0_borrowed
def s6Step47Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step47Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 776]
def s6Step47Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 775]
def s6Step47Add1Work : List Wire := [868, 805, 877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923]
theorem s6Step47Add1_bounded : s6Step47Add1Work.toFinset⊆arenaWires := by
  have h : s6Step47Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step47Add1During : Arena := ⟨s6Step47Add1Arena.live∪s6Step47Add1Work.toFinset,Finset.union_subset s6Step47Add1Arena.bounded s6Step47Add1_bounded⟩
theorem s6Step47Add1_distinct : (793::845::875::(s6Step47Add1A++s6Step47Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step47Add1_owned : (793::845::875::(s6Step47Add1A++s6Step47Add1B)).toFinset⊆s6Step47Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step47Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47Add1_apart : Disjoint s6Step47Add1Arena.live s6Step47Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step47Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step47Add1_card : s6Step47Add1Arena.live.card=854 := by
  decide +kernel
theorem s6Step47Add1_borrowed : s6Step47Add1Arena.checkBorrow (hmrHybridCount s6Step47Add1Arena s6Step47Add1B.length) s6Step47Add1Work=some s6Step47Add1During := by
  have len : s6Step47Add1Work.length=hmrHybridCount s6Step47Add1Arena s6Step47Add1B.length := by
    rw [hmrHybridCount,s6Step47Add1_card]
    decide +kernel
  have nd : s6Step47Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step47Add1Arena s6Step47Add1During s6Step47Add1Work.toFinset s6Step47Add1_bounded s6Step47Add1_apart rfl
theorem s6Step47Add1_checked : compileHmrHybridCinLog s6Step47Add1Arena 845 793 875 s6Step47Add1A s6Step47Add1B s6Step47Add1Work=some s6Step47Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step47Add1Arena s6Step47Add1During 845 793 875 s6Step47Add1A s6Step47Add1B s6Step47Add1Work
    (by decide +kernel) (by decide +kernel) s6Step47Add1_distinct
    (fun q hq => s6Step47Add1_owned (List.mem_toFinset.mpr hq)) s6Step47Add1_borrowed
def s6Step48Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step48Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 823, 795]
def s6Step48Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 865, 777]
def s6Step48Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step48Add0_bounded : s6Step48Add0Work.toFinset⊆arenaWires := by
  have h : s6Step48Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step48Add0During : Arena := ⟨s6Step48Add0Arena.live∪s6Step48Add0Work.toFinset,Finset.union_subset s6Step48Add0Arena.bounded s6Step48Add0_bounded⟩
theorem s6Step48Add0_distinct : (868::863::805::(s6Step48Add0A++s6Step48Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step48Add0_owned : (868::863::805::(s6Step48Add0A++s6Step48Add0B)).toFinset⊆s6Step48Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step48Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48Add0_apart : Disjoint s6Step48Add0Arena.live s6Step48Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step48Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48Add0_card : s6Step48Add0Arena.live.card=857 := by
  decide +kernel
theorem s6Step48Add0_borrowed : s6Step48Add0Arena.checkBorrow (hmrHybridCount s6Step48Add0Arena s6Step48Add0B.length) s6Step48Add0Work=some s6Step48Add0During := by
  have len : s6Step48Add0Work.length=hmrHybridCount s6Step48Add0Arena s6Step48Add0B.length := by
    rw [hmrHybridCount,s6Step48Add0_card]
    decide +kernel
  have nd : s6Step48Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step48Add0Arena s6Step48Add0During s6Step48Add0Work.toFinset s6Step48Add0_bounded s6Step48Add0_apart rfl
theorem s6Step48Add0_checked : compileHmrHybridCinLog s6Step48Add0Arena 863 868 805 s6Step48Add0A s6Step48Add0B s6Step48Add0Work=some s6Step48Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step48Add0Arena s6Step48Add0During 863 868 805 s6Step48Add0A s6Step48Add0B s6Step48Add0Work
    (by decide +kernel) (by decide +kernel) s6Step48Add0_distinct
    (fun q hq => s6Step48Add0_owned (List.mem_toFinset.mpr hq)) s6Step48Add0_borrowed
def s6Step48Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step48Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 875, 776]
def s6Step48Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 793, 775]
def s6Step48Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817]
theorem s6Step48Add1_bounded : s6Step48Add1Work.toFinset⊆arenaWires := by
  have h : s6Step48Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step48Add1During : Arena := ⟨s6Step48Add1Arena.live∪s6Step48Add1Work.toFinset,Finset.union_subset s6Step48Add1Arena.bounded s6Step48Add1_bounded⟩
theorem s6Step48Add1_distinct : (868::863::805::(s6Step48Add1A++s6Step48Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step48Add1_owned : (868::863::805::(s6Step48Add1A++s6Step48Add1B)).toFinset⊆s6Step48Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step48Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48Add1_apart : Disjoint s6Step48Add1Arena.live s6Step48Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step48Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step48Add1_card : s6Step48Add1Arena.live.card=857 := by
  decide +kernel
theorem s6Step48Add1_borrowed : s6Step48Add1Arena.checkBorrow (hmrHybridCount s6Step48Add1Arena s6Step48Add1B.length) s6Step48Add1Work=some s6Step48Add1During := by
  have len : s6Step48Add1Work.length=hmrHybridCount s6Step48Add1Arena s6Step48Add1B.length := by
    rw [hmrHybridCount,s6Step48Add1_card]
    decide +kernel
  have nd : s6Step48Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step48Add1Arena s6Step48Add1During s6Step48Add1Work.toFinset s6Step48Add1_bounded s6Step48Add1_apart rfl
theorem s6Step48Add1_checked : compileHmrHybridCinLog s6Step48Add1Arena 863 868 805 s6Step48Add1A s6Step48Add1B s6Step48Add1Work=some s6Step48Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step48Add1Arena s6Step48Add1During 863 868 805 s6Step48Add1A s6Step48Add1B s6Step48Add1Work
    (by decide +kernel) (by decide +kernel) s6Step48Add1_distinct
    (fun q hq => s6Step48Add1_owned (List.mem_toFinset.mpr hq)) s6Step48Add1_borrowed
def s6Step49Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step49Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 875, 795]
def s6Step49Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 863, 793, 777]
def s6Step49Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step49Add0_bounded : s6Step49Add0Work.toFinset⊆arenaWires := by
  have h : s6Step49Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step49Add0During : Arena := ⟨s6Step49Add0Arena.live∪s6Step49Add0Work.toFinset,Finset.union_subset s6Step49Add0Arena.bounded s6Step49Add0_bounded⟩
theorem s6Step49Add0_distinct : (868::789::805::(s6Step49Add0A++s6Step49Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step49Add0_owned : (868::789::805::(s6Step49Add0A++s6Step49Add0B)).toFinset⊆s6Step49Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step49Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49Add0_apart : Disjoint s6Step49Add0Arena.live s6Step49Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step49Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49Add0_card : s6Step49Add0Arena.live.card=857 := by
  decide +kernel
theorem s6Step49Add0_borrowed : s6Step49Add0Arena.checkBorrow (hmrHybridCount s6Step49Add0Arena s6Step49Add0B.length) s6Step49Add0Work=some s6Step49Add0During := by
  have len : s6Step49Add0Work.length=hmrHybridCount s6Step49Add0Arena s6Step49Add0B.length := by
    rw [hmrHybridCount,s6Step49Add0_card]
    decide +kernel
  have nd : s6Step49Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step49Add0Arena s6Step49Add0During s6Step49Add0Work.toFinset s6Step49Add0_bounded s6Step49Add0_apart rfl
theorem s6Step49Add0_checked : compileHmrHybridCinLog s6Step49Add0Arena 789 868 805 s6Step49Add0A s6Step49Add0B s6Step49Add0Work=some s6Step49Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step49Add0Arena s6Step49Add0During 789 868 805 s6Step49Add0A s6Step49Add0B s6Step49Add0Work
    (by decide +kernel) (by decide +kernel) s6Step49Add0_distinct
    (fun q hq => s6Step49Add0_owned (List.mem_toFinset.mpr hq)) s6Step49Add0_borrowed
def s6Step49Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step49Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 776]
def s6Step49Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 823, 775]
def s6Step49Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 837, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817]
theorem s6Step49Add1_bounded : s6Step49Add1Work.toFinset⊆arenaWires := by
  have h : s6Step49Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step49Add1During : Arena := ⟨s6Step49Add1Arena.live∪s6Step49Add1Work.toFinset,Finset.union_subset s6Step49Add1Arena.bounded s6Step49Add1_bounded⟩
theorem s6Step49Add1_distinct : (868::789::805::(s6Step49Add1A++s6Step49Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step49Add1_owned : (868::789::805::(s6Step49Add1A++s6Step49Add1B)).toFinset⊆s6Step49Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step49Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49Add1_apart : Disjoint s6Step49Add1Arena.live s6Step49Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step49Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step49Add1_card : s6Step49Add1Arena.live.card=857 := by
  decide +kernel
theorem s6Step49Add1_borrowed : s6Step49Add1Arena.checkBorrow (hmrHybridCount s6Step49Add1Arena s6Step49Add1B.length) s6Step49Add1Work=some s6Step49Add1During := by
  have len : s6Step49Add1Work.length=hmrHybridCount s6Step49Add1Arena s6Step49Add1B.length := by
    rw [hmrHybridCount,s6Step49Add1_card]
    decide +kernel
  have nd : s6Step49Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step49Add1Arena s6Step49Add1During s6Step49Add1Work.toFinset s6Step49Add1_bounded s6Step49Add1_apart rfl
theorem s6Step49Add1_checked : compileHmrHybridCinLog s6Step49Add1Arena 789 868 805 s6Step49Add1A s6Step49Add1B s6Step49Add1Work=some s6Step49Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step49Add1Arena s6Step49Add1During 789 868 805 s6Step49Add1A s6Step49Add1B s6Step49Add1Work
    (by decide +kernel) (by decide +kernel) s6Step49Add1_distinct
    (fun q hq => s6Step49Add1_owned (List.mem_toFinset.mpr hq)) s6Step49Add1_borrowed
def s6Step50Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step50Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 875, 795]
def s6Step50Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 823, 777]
def s6Step50Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step50Add0_bounded : s6Step50Add0Work.toFinset⊆arenaWires := by
  have h : s6Step50Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step50Add0During : Arena := ⟨s6Step50Add0Arena.live∪s6Step50Add0Work.toFinset,Finset.union_subset s6Step50Add0Arena.bounded s6Step50Add0_bounded⟩
theorem s6Step50Add0_distinct : (868::880::805::(s6Step50Add0A++s6Step50Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step50Add0_owned : (868::880::805::(s6Step50Add0A++s6Step50Add0B)).toFinset⊆s6Step50Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step50Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50Add0_apart : Disjoint s6Step50Add0Arena.live s6Step50Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step50Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50Add0_card : s6Step50Add0Arena.live.card=858 := by
  decide +kernel
theorem s6Step50Add0_borrowed : s6Step50Add0Arena.checkBorrow (hmrHybridCount s6Step50Add0Arena s6Step50Add0B.length) s6Step50Add0Work=some s6Step50Add0During := by
  have len : s6Step50Add0Work.length=hmrHybridCount s6Step50Add0Arena s6Step50Add0B.length := by
    rw [hmrHybridCount,s6Step50Add0_card]
    decide +kernel
  have nd : s6Step50Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step50Add0Arena s6Step50Add0During s6Step50Add0Work.toFinset s6Step50Add0_bounded s6Step50Add0_apart rfl
theorem s6Step50Add0_checked : compileHmrHybridCinLog s6Step50Add0Arena 880 868 805 s6Step50Add0A s6Step50Add0B s6Step50Add0Work=some s6Step50Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step50Add0Arena s6Step50Add0During 880 868 805 s6Step50Add0A s6Step50Add0B s6Step50Add0Work
    (by decide +kernel) (by decide +kernel) s6Step50Add0_distinct
    (fun q hq => s6Step50Add0_owned (List.mem_toFinset.mpr hq)) s6Step50Add0_borrowed
def s6Step50Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step50Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 793, 776]
def s6Step50Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 789, 863, 775]
def s6Step50Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812]
theorem s6Step50Add1_bounded : s6Step50Add1Work.toFinset⊆arenaWires := by
  have h : s6Step50Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step50Add1During : Arena := ⟨s6Step50Add1Arena.live∪s6Step50Add1Work.toFinset,Finset.union_subset s6Step50Add1Arena.bounded s6Step50Add1_bounded⟩
theorem s6Step50Add1_distinct : (868::880::805::(s6Step50Add1A++s6Step50Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step50Add1_owned : (868::880::805::(s6Step50Add1A++s6Step50Add1B)).toFinset⊆s6Step50Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step50Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50Add1_apart : Disjoint s6Step50Add1Arena.live s6Step50Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step50Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step50Add1_card : s6Step50Add1Arena.live.card=858 := by
  decide +kernel
theorem s6Step50Add1_borrowed : s6Step50Add1Arena.checkBorrow (hmrHybridCount s6Step50Add1Arena s6Step50Add1B.length) s6Step50Add1Work=some s6Step50Add1During := by
  have len : s6Step50Add1Work.length=hmrHybridCount s6Step50Add1Arena s6Step50Add1B.length := by
    rw [hmrHybridCount,s6Step50Add1_card]
    decide +kernel
  have nd : s6Step50Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step50Add1Arena s6Step50Add1During s6Step50Add1Work.toFinset s6Step50Add1_bounded s6Step50Add1_apart rfl
theorem s6Step50Add1_checked : compileHmrHybridCinLog s6Step50Add1Arena 880 868 805 s6Step50Add1A s6Step50Add1B s6Step50Add1Work=some s6Step50Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step50Add1Arena s6Step50Add1During 880 868 805 s6Step50Add1A s6Step50Add1B s6Step50Add1Work
    (by decide +kernel) (by decide +kernel) s6Step50Add1_distinct
    (fun q hq => s6Step50Add1_owned (List.mem_toFinset.mpr hq)) s6Step50Add1_borrowed
def s6Step51Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step51Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 793, 795]
def s6Step51Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 880, 863, 777]
def s6Step51Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step51Add0_bounded : s6Step51Add0Work.toFinset⊆arenaWires := by
  have h : s6Step51Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step51Add0During : Arena := ⟨s6Step51Add0Arena.live∪s6Step51Add0Work.toFinset,Finset.union_subset s6Step51Add0Arena.bounded s6Step51Add0_bounded⟩
theorem s6Step51Add0_distinct : (868::789::805::(s6Step51Add0A++s6Step51Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step51Add0_owned : (868::789::805::(s6Step51Add0A++s6Step51Add0B)).toFinset⊆s6Step51Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step51Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51Add0_apart : Disjoint s6Step51Add0Arena.live s6Step51Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step51Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51Add0_card : s6Step51Add0Arena.live.card=858 := by
  decide +kernel
theorem s6Step51Add0_borrowed : s6Step51Add0Arena.checkBorrow (hmrHybridCount s6Step51Add0Arena s6Step51Add0B.length) s6Step51Add0Work=some s6Step51Add0During := by
  have len : s6Step51Add0Work.length=hmrHybridCount s6Step51Add0Arena s6Step51Add0B.length := by
    rw [hmrHybridCount,s6Step51Add0_card]
    decide +kernel
  have nd : s6Step51Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step51Add0Arena s6Step51Add0During s6Step51Add0Work.toFinset s6Step51Add0_bounded s6Step51Add0_apart rfl
theorem s6Step51Add0_checked : compileHmrHybridCinLog s6Step51Add0Arena 789 868 805 s6Step51Add0A s6Step51Add0B s6Step51Add0Work=some s6Step51Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step51Add0Arena s6Step51Add0During 789 868 805 s6Step51Add0A s6Step51Add0B s6Step51Add0Work
    (by decide +kernel) (by decide +kernel) s6Step51Add0_distinct
    (fun q hq => s6Step51Add0_owned (List.mem_toFinset.mpr hq)) s6Step51Add0_borrowed
def s6Step51Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step51Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 776]
def s6Step51Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 875, 775]
def s6Step51Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812]
theorem s6Step51Add1_bounded : s6Step51Add1Work.toFinset⊆arenaWires := by
  have h : s6Step51Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step51Add1During : Arena := ⟨s6Step51Add1Arena.live∪s6Step51Add1Work.toFinset,Finset.union_subset s6Step51Add1Arena.bounded s6Step51Add1_bounded⟩
theorem s6Step51Add1_distinct : (868::789::805::(s6Step51Add1A++s6Step51Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step51Add1_owned : (868::789::805::(s6Step51Add1A++s6Step51Add1B)).toFinset⊆s6Step51Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step51Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51Add1_apart : Disjoint s6Step51Add1Arena.live s6Step51Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step51Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step51Add1_card : s6Step51Add1Arena.live.card=858 := by
  decide +kernel
theorem s6Step51Add1_borrowed : s6Step51Add1Arena.checkBorrow (hmrHybridCount s6Step51Add1Arena s6Step51Add1B.length) s6Step51Add1Work=some s6Step51Add1During := by
  have len : s6Step51Add1Work.length=hmrHybridCount s6Step51Add1Arena s6Step51Add1B.length := by
    rw [hmrHybridCount,s6Step51Add1_card]
    decide +kernel
  have nd : s6Step51Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step51Add1Arena s6Step51Add1During s6Step51Add1Work.toFinset s6Step51Add1_bounded s6Step51Add1_apart rfl
theorem s6Step51Add1_checked : compileHmrHybridCinLog s6Step51Add1Arena 789 868 805 s6Step51Add1A s6Step51Add1B s6Step51Add1Work=some s6Step51Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step51Add1Arena s6Step51Add1During 789 868 805 s6Step51Add1A s6Step51Add1B s6Step51Add1Work
    (by decide +kernel) (by decide +kernel) s6Step51Add1_distinct
    (fun q hq => s6Step51Add1_owned (List.mem_toFinset.mpr hq)) s6Step51Add1_borrowed
def s6Step52Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step52Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 793, 795]
def s6Step52Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 875, 777]
def s6Step52Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step52Add0_bounded : s6Step52Add0Work.toFinset⊆arenaWires := by
  have h : s6Step52Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step52Add0During : Arena := ⟨s6Step52Add0Arena.live∪s6Step52Add0Work.toFinset,Finset.union_subset s6Step52Add0Arena.bounded s6Step52Add0_bounded⟩
theorem s6Step52Add0_distinct : (868::864::805::(s6Step52Add0A++s6Step52Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step52Add0_owned : (868::864::805::(s6Step52Add0A++s6Step52Add0B)).toFinset⊆s6Step52Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step52Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52Add0_apart : Disjoint s6Step52Add0Arena.live s6Step52Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step52Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52Add0_card : s6Step52Add0Arena.live.card=859 := by
  decide +kernel
theorem s6Step52Add0_borrowed : s6Step52Add0Arena.checkBorrow (hmrHybridCount s6Step52Add0Arena s6Step52Add0B.length) s6Step52Add0Work=some s6Step52Add0During := by
  have len : s6Step52Add0Work.length=hmrHybridCount s6Step52Add0Arena s6Step52Add0B.length := by
    rw [hmrHybridCount,s6Step52Add0_card]
    decide +kernel
  have nd : s6Step52Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step52Add0Arena s6Step52Add0During s6Step52Add0Work.toFinset s6Step52Add0_bounded s6Step52Add0_apart rfl
theorem s6Step52Add0_checked : compileHmrHybridCinLog s6Step52Add0Arena 864 868 805 s6Step52Add0A s6Step52Add0B s6Step52Add0Work=some s6Step52Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step52Add0Arena s6Step52Add0During 864 868 805 s6Step52Add0A s6Step52Add0B s6Step52Add0Work
    (by decide +kernel) (by decide +kernel) s6Step52Add0_distinct
    (fun q hq => s6Step52Add0_owned (List.mem_toFinset.mpr hq)) s6Step52Add0_borrowed
def s6Step52Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step52Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 776]
def s6Step52Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 789, 880, 775]
def s6Step52Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900]
theorem s6Step52Add1_bounded : s6Step52Add1Work.toFinset⊆arenaWires := by
  have h : s6Step52Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step52Add1During : Arena := ⟨s6Step52Add1Arena.live∪s6Step52Add1Work.toFinset,Finset.union_subset s6Step52Add1Arena.bounded s6Step52Add1_bounded⟩
theorem s6Step52Add1_distinct : (868::864::805::(s6Step52Add1A++s6Step52Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step52Add1_owned : (868::864::805::(s6Step52Add1A++s6Step52Add1B)).toFinset⊆s6Step52Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step52Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52Add1_apart : Disjoint s6Step52Add1Arena.live s6Step52Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step52Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step52Add1_card : s6Step52Add1Arena.live.card=859 := by
  decide +kernel
theorem s6Step52Add1_borrowed : s6Step52Add1Arena.checkBorrow (hmrHybridCount s6Step52Add1Arena s6Step52Add1B.length) s6Step52Add1Work=some s6Step52Add1During := by
  have len : s6Step52Add1Work.length=hmrHybridCount s6Step52Add1Arena s6Step52Add1B.length := by
    rw [hmrHybridCount,s6Step52Add1_card]
    decide +kernel
  have nd : s6Step52Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step52Add1Arena s6Step52Add1During s6Step52Add1Work.toFinset s6Step52Add1_bounded s6Step52Add1_apart rfl
theorem s6Step52Add1_checked : compileHmrHybridCinLog s6Step52Add1Arena 864 868 805 s6Step52Add1A s6Step52Add1B s6Step52Add1Work=some s6Step52Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step52Add1Arena s6Step52Add1During 864 868 805 s6Step52Add1A s6Step52Add1B s6Step52Add1Work
    (by decide +kernel) (by decide +kernel) s6Step52Add1_distinct
    (fun q hq => s6Step52Add1_owned (List.mem_toFinset.mpr hq)) s6Step52Add1_borrowed
def s6Step53Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step53Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 789, 795]
def s6Step53Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 892, 777]
def s6Step53Add0Work : List Wire := [868, 805, 877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step53Add0_bounded : s6Step53Add0Work.toFinset⊆arenaWires := by
  have h : s6Step53Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step53Add0During : Arena := ⟨s6Step53Add0Arena.live∪s6Step53Add0Work.toFinset,Finset.union_subset s6Step53Add0Arena.bounded s6Step53Add0_bounded⟩
theorem s6Step53Add0_distinct : (793::828::875::(s6Step53Add0A++s6Step53Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step53Add0_owned : (793::828::875::(s6Step53Add0A++s6Step53Add0B)).toFinset⊆s6Step53Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step53Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53Add0_apart : Disjoint s6Step53Add0Arena.live s6Step53Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step53Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53Add0_card : s6Step53Add0Arena.live.card=857 := by
  decide +kernel
theorem s6Step53Add0_borrowed : s6Step53Add0Arena.checkBorrow (hmrHybridCount s6Step53Add0Arena s6Step53Add0B.length) s6Step53Add0Work=some s6Step53Add0During := by
  have len : s6Step53Add0Work.length=hmrHybridCount s6Step53Add0Arena s6Step53Add0B.length := by
    rw [hmrHybridCount,s6Step53Add0_card]
    decide +kernel
  have nd : s6Step53Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step53Add0Arena s6Step53Add0During s6Step53Add0Work.toFinset s6Step53Add0_bounded s6Step53Add0_apart rfl
theorem s6Step53Add0_checked : compileHmrHybridCinLog s6Step53Add0Arena 828 793 875 s6Step53Add0A s6Step53Add0B s6Step53Add0Work=some s6Step53Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step53Add0Arena s6Step53Add0During 828 793 875 s6Step53Add0A s6Step53Add0B s6Step53Add0Work
    (by decide +kernel) (by decide +kernel) s6Step53Add0_distinct
    (fun q hq => s6Step53Add0_owned (List.mem_toFinset.mpr hq)) s6Step53Add0_borrowed
def s6Step53Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step53Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 776]
def s6Step53Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 880, 775]
def s6Step53Add1Work : List Wire := [868, 805, 877, 855, 803, 922, 879, 784, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812]
theorem s6Step53Add1_bounded : s6Step53Add1Work.toFinset⊆arenaWires := by
  have h : s6Step53Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step53Add1During : Arena := ⟨s6Step53Add1Arena.live∪s6Step53Add1Work.toFinset,Finset.union_subset s6Step53Add1Arena.bounded s6Step53Add1_bounded⟩
theorem s6Step53Add1_distinct : (793::828::875::(s6Step53Add1A++s6Step53Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step53Add1_owned : (793::828::875::(s6Step53Add1A++s6Step53Add1B)).toFinset⊆s6Step53Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step53Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53Add1_apart : Disjoint s6Step53Add1Arena.live s6Step53Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step53Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,868),(869,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step53Add1_card : s6Step53Add1Arena.live.card=857 := by
  decide +kernel
theorem s6Step53Add1_borrowed : s6Step53Add1Arena.checkBorrow (hmrHybridCount s6Step53Add1Arena s6Step53Add1B.length) s6Step53Add1Work=some s6Step53Add1During := by
  have len : s6Step53Add1Work.length=hmrHybridCount s6Step53Add1Arena s6Step53Add1B.length := by
    rw [hmrHybridCount,s6Step53Add1_card]
    decide +kernel
  have nd : s6Step53Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step53Add1Arena s6Step53Add1During s6Step53Add1Work.toFinset s6Step53Add1_bounded s6Step53Add1_apart rfl
theorem s6Step53Add1_checked : compileHmrHybridCinLog s6Step53Add1Arena 828 793 875 s6Step53Add1A s6Step53Add1B s6Step53Add1Work=some s6Step53Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step53Add1Arena s6Step53Add1During 828 793 875 s6Step53Add1A s6Step53Add1B s6Step53Add1Work
    (by decide +kernel) (by decide +kernel) s6Step53Add1_distinct
    (fun q hq => s6Step53Add1_owned (List.mem_toFinset.mpr hq)) s6Step53Add1_borrowed
def s6Step54Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step54Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 892, 795]
def s6Step54Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 789, 777]
def s6Step54Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step54Add0_bounded : s6Step54Add0Work.toFinset⊆arenaWires := by
  have h : s6Step54Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step54Add0During : Arena := ⟨s6Step54Add0Arena.live∪s6Step54Add0Work.toFinset,Finset.union_subset s6Step54Add0Arena.bounded s6Step54Add0_bounded⟩
theorem s6Step54Add0_distinct : (868::880::805::(s6Step54Add0A++s6Step54Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step54Add0_owned : (868::880::805::(s6Step54Add0A++s6Step54Add0B)).toFinset⊆s6Step54Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step54Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54Add0_apart : Disjoint s6Step54Add0Arena.live s6Step54Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step54Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54Add0_card : s6Step54Add0Arena.live.card=860 := by
  decide +kernel
theorem s6Step54Add0_borrowed : s6Step54Add0Arena.checkBorrow (hmrHybridCount s6Step54Add0Arena s6Step54Add0B.length) s6Step54Add0Work=some s6Step54Add0During := by
  have len : s6Step54Add0Work.length=hmrHybridCount s6Step54Add0Arena s6Step54Add0B.length := by
    rw [hmrHybridCount,s6Step54Add0_card]
    decide +kernel
  have nd : s6Step54Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step54Add0Arena s6Step54Add0During s6Step54Add0Work.toFinset s6Step54Add0_bounded s6Step54Add0_apart rfl
theorem s6Step54Add0_checked : compileHmrHybridCinLog s6Step54Add0Arena 880 868 805 s6Step54Add0A s6Step54Add0B s6Step54Add0Work=some s6Step54Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step54Add0Arena s6Step54Add0During 880 868 805 s6Step54Add0A s6Step54Add0B s6Step54Add0Work
    (by decide +kernel) (by decide +kernel) s6Step54Add0_distinct
    (fun q hq => s6Step54Add0_owned (List.mem_toFinset.mpr hq)) s6Step54Add0_borrowed
def s6Step54Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step54Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 875, 776]
def s6Step54Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 793, 775]
def s6Step54Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905]
theorem s6Step54Add1_bounded : s6Step54Add1Work.toFinset⊆arenaWires := by
  have h : s6Step54Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step54Add1During : Arena := ⟨s6Step54Add1Arena.live∪s6Step54Add1Work.toFinset,Finset.union_subset s6Step54Add1Arena.bounded s6Step54Add1_bounded⟩
theorem s6Step54Add1_distinct : (868::880::805::(s6Step54Add1A++s6Step54Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step54Add1_owned : (868::880::805::(s6Step54Add1A++s6Step54Add1B)).toFinset⊆s6Step54Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step54Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54Add1_apart : Disjoint s6Step54Add1Arena.live s6Step54Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step54Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step54Add1_card : s6Step54Add1Arena.live.card=860 := by
  decide +kernel
theorem s6Step54Add1_borrowed : s6Step54Add1Arena.checkBorrow (hmrHybridCount s6Step54Add1Arena s6Step54Add1B.length) s6Step54Add1Work=some s6Step54Add1During := by
  have len : s6Step54Add1Work.length=hmrHybridCount s6Step54Add1Arena s6Step54Add1B.length := by
    rw [hmrHybridCount,s6Step54Add1_card]
    decide +kernel
  have nd : s6Step54Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step54Add1Arena s6Step54Add1During s6Step54Add1Work.toFinset s6Step54Add1_bounded s6Step54Add1_apart rfl
theorem s6Step54Add1_checked : compileHmrHybridCinLog s6Step54Add1Arena 880 868 805 s6Step54Add1A s6Step54Add1B s6Step54Add1Work=some s6Step54Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step54Add1Arena s6Step54Add1During 880 868 805 s6Step54Add1A s6Step54Add1B s6Step54Add1Work
    (by decide +kernel) (by decide +kernel) s6Step54Add1_distinct
    (fun q hq => s6Step54Add1_owned (List.mem_toFinset.mpr hq)) s6Step54Add1_borrowed
def s6Step55Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step55Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 789, 795]
def s6Step55Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 880, 892, 777]
def s6Step55Add0Work : List Wire := [803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step55Add0_bounded : s6Step55Add0Work.toFinset⊆arenaWires := by
  have h : s6Step55Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step55Add0During : Arena := ⟨s6Step55Add0Arena.live∪s6Step55Add0Work.toFinset,Finset.union_subset s6Step55Add0Arena.bounded s6Step55Add0_bounded⟩
theorem s6Step55Add0_distinct : (877::793::855::(s6Step55Add0A++s6Step55Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step55Add0_owned : (877::793::855::(s6Step55Add0A++s6Step55Add0B)).toFinset⊆s6Step55Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step55Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55Add0_apart : Disjoint s6Step55Add0Arena.live s6Step55Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step55Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55Add0_card : s6Step55Add0Arena.live.card=862 := by
  decide +kernel
theorem s6Step55Add0_borrowed : s6Step55Add0Arena.checkBorrow (hmrHybridCount s6Step55Add0Arena s6Step55Add0B.length) s6Step55Add0Work=some s6Step55Add0During := by
  have len : s6Step55Add0Work.length=hmrHybridCount s6Step55Add0Arena s6Step55Add0B.length := by
    rw [hmrHybridCount,s6Step55Add0_card]
    decide +kernel
  have nd : s6Step55Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step55Add0Arena s6Step55Add0During s6Step55Add0Work.toFinset s6Step55Add0_bounded s6Step55Add0_apart rfl
theorem s6Step55Add0_checked : compileHmrHybridCinLog s6Step55Add0Arena 793 877 855 s6Step55Add0A s6Step55Add0B s6Step55Add0Work=some s6Step55Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step55Add0Arena s6Step55Add0During 793 877 855 s6Step55Add0A s6Step55Add0B s6Step55Add0Work
    (by decide +kernel) (by decide +kernel) s6Step55Add0_distinct
    (fun q hq => s6Step55Add0_owned (List.mem_toFinset.mpr hq)) s6Step55Add0_borrowed
def s6Step55Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step55Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 875, 805, 776]
def s6Step55Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 868, 775]
def s6Step55Add1Work : List Wire := [803, 922, 879, 784, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906]
theorem s6Step55Add1_bounded : s6Step55Add1Work.toFinset⊆arenaWires := by
  have h : s6Step55Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step55Add1During : Arena := ⟨s6Step55Add1Arena.live∪s6Step55Add1Work.toFinset,Finset.union_subset s6Step55Add1Arena.bounded s6Step55Add1_bounded⟩
theorem s6Step55Add1_distinct : (877::793::855::(s6Step55Add1A++s6Step55Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step55Add1_owned : (877::793::855::(s6Step55Add1A++s6Step55Add1B)).toFinset⊆s6Step55Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step55Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55Add1_apart : Disjoint s6Step55Add1Arena.live s6Step55Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step55Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,871),(872,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step55Add1_card : s6Step55Add1Arena.live.card=862 := by
  decide +kernel
theorem s6Step55Add1_borrowed : s6Step55Add1Arena.checkBorrow (hmrHybridCount s6Step55Add1Arena s6Step55Add1B.length) s6Step55Add1Work=some s6Step55Add1During := by
  have len : s6Step55Add1Work.length=hmrHybridCount s6Step55Add1Arena s6Step55Add1B.length := by
    rw [hmrHybridCount,s6Step55Add1_card]
    decide +kernel
  have nd : s6Step55Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step55Add1Arena s6Step55Add1During s6Step55Add1Work.toFinset s6Step55Add1_bounded s6Step55Add1_apart rfl
theorem s6Step55Add1_checked : compileHmrHybridCinLog s6Step55Add1Arena 793 877 855 s6Step55Add1A s6Step55Add1B s6Step55Add1Work=some s6Step55Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step55Add1Arena s6Step55Add1During 793 877 855 s6Step55Add1A s6Step55Add1B s6Step55Add1Work
    (by decide +kernel) (by decide +kernel) s6Step55Add1_distinct
    (fun q hq => s6Step55Add1_owned (List.mem_toFinset.mpr hq)) s6Step55Add1_borrowed
def s6Step56Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step56Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 875, 795]
def s6Step56Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 868, 777]
def s6Step56Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step56Add0_bounded : s6Step56Add0Work.toFinset⊆arenaWires := by
  have h : s6Step56Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step56Add0During : Arena := ⟨s6Step56Add0Arena.live∪s6Step56Add0Work.toFinset,Finset.union_subset s6Step56Add0Arena.bounded s6Step56Add0_bounded⟩
theorem s6Step56Add0_distinct : (880::822::892::(s6Step56Add0A++s6Step56Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step56Add0_owned : (880::822::892::(s6Step56Add0A++s6Step56Add0B)).toFinset⊆s6Step56Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step56Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56Add0_apart : Disjoint s6Step56Add0Arena.live s6Step56Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step56Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56Add0_card : s6Step56Add0Arena.live.card=861 := by
  decide +kernel
theorem s6Step56Add0_borrowed : s6Step56Add0Arena.checkBorrow (hmrHybridCount s6Step56Add0Arena s6Step56Add0B.length) s6Step56Add0Work=some s6Step56Add0During := by
  have len : s6Step56Add0Work.length=hmrHybridCount s6Step56Add0Arena s6Step56Add0B.length := by
    rw [hmrHybridCount,s6Step56Add0_card]
    decide +kernel
  have nd : s6Step56Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step56Add0Arena s6Step56Add0During s6Step56Add0Work.toFinset s6Step56Add0_bounded s6Step56Add0_apart rfl
theorem s6Step56Add0_checked : compileHmrHybridCinLog s6Step56Add0Arena 822 880 892 s6Step56Add0A s6Step56Add0B s6Step56Add0Work=some s6Step56Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step56Add0Arena s6Step56Add0During 822 880 892 s6Step56Add0A s6Step56Add0B s6Step56Add0Work
    (by decide +kernel) (by decide +kernel) s6Step56Add0_distinct
    (fun q hq => s6Step56Add0_owned (List.mem_toFinset.mpr hq)) s6Step56Add0_borrowed
def s6Step56Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step56Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 776]
def s6Step56Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 805, 775]
def s6Step56Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932]
theorem s6Step56Add1_bounded : s6Step56Add1Work.toFinset⊆arenaWires := by
  have h : s6Step56Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step56Add1During : Arena := ⟨s6Step56Add1Arena.live∪s6Step56Add1Work.toFinset,Finset.union_subset s6Step56Add1Arena.bounded s6Step56Add1_bounded⟩
theorem s6Step56Add1_distinct : (880::822::892::(s6Step56Add1A++s6Step56Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step56Add1_owned : (880::822::892::(s6Step56Add1A++s6Step56Add1B)).toFinset⊆s6Step56Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step56Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56Add1_apart : Disjoint s6Step56Add1Arena.live s6Step56Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step56Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step56Add1_card : s6Step56Add1Arena.live.card=861 := by
  decide +kernel
theorem s6Step56Add1_borrowed : s6Step56Add1Arena.checkBorrow (hmrHybridCount s6Step56Add1Arena s6Step56Add1B.length) s6Step56Add1Work=some s6Step56Add1During := by
  have len : s6Step56Add1Work.length=hmrHybridCount s6Step56Add1Arena s6Step56Add1B.length := by
    rw [hmrHybridCount,s6Step56Add1_card]
    decide +kernel
  have nd : s6Step56Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step56Add1Arena s6Step56Add1During s6Step56Add1Work.toFinset s6Step56Add1_bounded s6Step56Add1_apart rfl
theorem s6Step56Add1_checked : compileHmrHybridCinLog s6Step56Add1Arena 822 880 892 s6Step56Add1A s6Step56Add1B s6Step56Add1Work=some s6Step56Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step56Add1Arena s6Step56Add1During 822 880 892 s6Step56Add1A s6Step56Add1B s6Step56Add1Work
    (by decide +kernel) (by decide +kernel) s6Step56Add1_distinct
    (fun q hq => s6Step56Add1_owned (List.mem_toFinset.mpr hq)) s6Step56Add1_borrowed
def s6Step57Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step57Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 789, 795]
def s6Step57Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 822, 805, 777]
def s6Step57Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step57Add0_bounded : s6Step57Add0Work.toFinset⊆arenaWires := by
  have h : s6Step57Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step57Add0During : Arena := ⟨s6Step57Add0Arena.live∪s6Step57Add0Work.toFinset,Finset.union_subset s6Step57Add0Arena.bounded s6Step57Add0_bounded⟩
theorem s6Step57Add0_distinct : (880::833::892::(s6Step57Add0A++s6Step57Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step57Add0_owned : (880::833::892::(s6Step57Add0A++s6Step57Add0B)).toFinset⊆s6Step57Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step57Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57Add0_apart : Disjoint s6Step57Add0Arena.live s6Step57Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step57Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57Add0_card : s6Step57Add0Arena.live.card=861 := by
  decide +kernel
theorem s6Step57Add0_borrowed : s6Step57Add0Arena.checkBorrow (hmrHybridCount s6Step57Add0Arena s6Step57Add0B.length) s6Step57Add0Work=some s6Step57Add0During := by
  have len : s6Step57Add0Work.length=hmrHybridCount s6Step57Add0Arena s6Step57Add0B.length := by
    rw [hmrHybridCount,s6Step57Add0_card]
    decide +kernel
  have nd : s6Step57Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step57Add0Arena s6Step57Add0During s6Step57Add0Work.toFinset s6Step57Add0_bounded s6Step57Add0_apart rfl
theorem s6Step57Add0_checked : compileHmrHybridCinLog s6Step57Add0Arena 833 880 892 s6Step57Add0A s6Step57Add0B s6Step57Add0Work=some s6Step57Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step57Add0Arena s6Step57Add0During 833 880 892 s6Step57Add0A s6Step57Add0B s6Step57Add0Work
    (by decide +kernel) (by decide +kernel) s6Step57Add0_distinct
    (fun q hq => s6Step57Add0_owned (List.mem_toFinset.mpr hq)) s6Step57Add0_borrowed
def s6Step57Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step57Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 868, 776]
def s6Step57Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 875, 775]
def s6Step57Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932]
theorem s6Step57Add1_bounded : s6Step57Add1Work.toFinset⊆arenaWires := by
  have h : s6Step57Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step57Add1During : Arena := ⟨s6Step57Add1Arena.live∪s6Step57Add1Work.toFinset,Finset.union_subset s6Step57Add1Arena.bounded s6Step57Add1_bounded⟩
theorem s6Step57Add1_distinct : (880::833::892::(s6Step57Add1A++s6Step57Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step57Add1_owned : (880::833::892::(s6Step57Add1A++s6Step57Add1B)).toFinset⊆s6Step57Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step57Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57Add1_apart : Disjoint s6Step57Add1Arena.live s6Step57Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step57Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step57Add1_card : s6Step57Add1Arena.live.card=861 := by
  decide +kernel
theorem s6Step57Add1_borrowed : s6Step57Add1Arena.checkBorrow (hmrHybridCount s6Step57Add1Arena s6Step57Add1B.length) s6Step57Add1Work=some s6Step57Add1During := by
  have len : s6Step57Add1Work.length=hmrHybridCount s6Step57Add1Arena s6Step57Add1B.length := by
    rw [hmrHybridCount,s6Step57Add1_card]
    decide +kernel
  have nd : s6Step57Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step57Add1Arena s6Step57Add1During s6Step57Add1Work.toFinset s6Step57Add1_bounded s6Step57Add1_apart rfl
theorem s6Step57Add1_checked : compileHmrHybridCinLog s6Step57Add1Arena 833 880 892 s6Step57Add1A s6Step57Add1B s6Step57Add1Work=some s6Step57Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step57Add1Arena s6Step57Add1During 833 880 892 s6Step57Add1A s6Step57Add1B s6Step57Add1Work
    (by decide +kernel) (by decide +kernel) s6Step57Add1_distinct
    (fun q hq => s6Step57Add1_owned (List.mem_toFinset.mpr hq)) s6Step57Add1_borrowed
def s6Step58Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step58Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 875, 795]
def s6Step58Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 833, 886, 777]
def s6Step58Add0Work : List Wire := [880, 892, 877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step58Add0_bounded : s6Step58Add0Work.toFinset⊆arenaWires := by
  have h : s6Step58Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step58Add0During : Arena := ⟨s6Step58Add0Arena.live∪s6Step58Add0Work.toFinset,Finset.union_subset s6Step58Add0Arena.bounded s6Step58Add0_bounded⟩
theorem s6Step58Add0_distinct : (822::780::805::(s6Step58Add0A++s6Step58Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step58Add0_owned : (822::780::805::(s6Step58Add0A++s6Step58Add0B)).toFinset⊆s6Step58Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step58Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58Add0_apart : Disjoint s6Step58Add0Arena.live s6Step58Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step58Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58Add0_card : s6Step58Add0Arena.live.card=859 := by
  decide +kernel
theorem s6Step58Add0_borrowed : s6Step58Add0Arena.checkBorrow (hmrHybridCount s6Step58Add0Arena s6Step58Add0B.length) s6Step58Add0Work=some s6Step58Add0During := by
  have len : s6Step58Add0Work.length=hmrHybridCount s6Step58Add0Arena s6Step58Add0B.length := by
    rw [hmrHybridCount,s6Step58Add0_card]
    decide +kernel
  have nd : s6Step58Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step58Add0Arena s6Step58Add0During s6Step58Add0Work.toFinset s6Step58Add0_bounded s6Step58Add0_apart rfl
theorem s6Step58Add0_checked : compileHmrHybridCinLog s6Step58Add0Arena 780 822 805 s6Step58Add0A s6Step58Add0B s6Step58Add0Work=some s6Step58Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step58Add0Arena s6Step58Add0During 780 822 805 s6Step58Add0A s6Step58Add0B s6Step58Add0Work
    (by decide +kernel) (by decide +kernel) s6Step58Add0_distinct
    (fun q hq => s6Step58Add0_owned (List.mem_toFinset.mpr hq)) s6Step58Add0_borrowed
def s6Step58Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step58Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 776]
def s6Step58Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 868, 775]
def s6Step58Add1Work : List Wire := [880, 892, 877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905]
theorem s6Step58Add1_bounded : s6Step58Add1Work.toFinset⊆arenaWires := by
  have h : s6Step58Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step58Add1During : Arena := ⟨s6Step58Add1Arena.live∪s6Step58Add1Work.toFinset,Finset.union_subset s6Step58Add1Arena.bounded s6Step58Add1_bounded⟩
theorem s6Step58Add1_distinct : (822::780::805::(s6Step58Add1A++s6Step58Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step58Add1_owned : (822::780::805::(s6Step58Add1A++s6Step58Add1B)).toFinset⊆s6Step58Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step58Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58Add1_apart : Disjoint s6Step58Add1Arena.live s6Step58Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step58Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(881,884),(886,891),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step58Add1_card : s6Step58Add1Arena.live.card=859 := by
  decide +kernel
theorem s6Step58Add1_borrowed : s6Step58Add1Arena.checkBorrow (hmrHybridCount s6Step58Add1Arena s6Step58Add1B.length) s6Step58Add1Work=some s6Step58Add1During := by
  have len : s6Step58Add1Work.length=hmrHybridCount s6Step58Add1Arena s6Step58Add1B.length := by
    rw [hmrHybridCount,s6Step58Add1_card]
    decide +kernel
  have nd : s6Step58Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step58Add1Arena s6Step58Add1During s6Step58Add1Work.toFinset s6Step58Add1_bounded s6Step58Add1_apart rfl
theorem s6Step58Add1_checked : compileHmrHybridCinLog s6Step58Add1Arena 780 822 805 s6Step58Add1A s6Step58Add1B s6Step58Add1Work=some s6Step58Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step58Add1Arena s6Step58Add1During 780 822 805 s6Step58Add1A s6Step58Add1B s6Step58Add1Work
    (by decide +kernel) (by decide +kernel) s6Step58Add1_distinct
    (fun q hq => s6Step58Add1_owned (List.mem_toFinset.mpr hq)) s6Step58Add1_borrowed
def s6Step59Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step59Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 886, 795]
def s6Step59Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 780, 833, 777]
def s6Step59Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step59Add0_bounded : s6Step59Add0Work.toFinset⊆arenaWires := by
  have h : s6Step59Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step59Add0During : Arena := ⟨s6Step59Add0Arena.live∪s6Step59Add0Work.toFinset,Finset.union_subset s6Step59Add0Arena.bounded s6Step59Add0_bounded⟩
theorem s6Step59Add0_distinct : (880::875::892::(s6Step59Add0A++s6Step59Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step59Add0_owned : (880::875::892::(s6Step59Add0A++s6Step59Add0B)).toFinset⊆s6Step59Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step59Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59Add0_apart : Disjoint s6Step59Add0Arena.live s6Step59Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step59Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59Add0_card : s6Step59Add0Arena.live.card=861 := by
  decide +kernel
theorem s6Step59Add0_borrowed : s6Step59Add0Arena.checkBorrow (hmrHybridCount s6Step59Add0Arena s6Step59Add0B.length) s6Step59Add0Work=some s6Step59Add0During := by
  have len : s6Step59Add0Work.length=hmrHybridCount s6Step59Add0Arena s6Step59Add0B.length := by
    rw [hmrHybridCount,s6Step59Add0_card]
    decide +kernel
  have nd : s6Step59Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step59Add0Arena s6Step59Add0During s6Step59Add0Work.toFinset s6Step59Add0_bounded s6Step59Add0_apart rfl
theorem s6Step59Add0_checked : compileHmrHybridCinLog s6Step59Add0Arena 875 880 892 s6Step59Add0A s6Step59Add0B s6Step59Add0Work=some s6Step59Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step59Add0Arena s6Step59Add0During 875 880 892 s6Step59Add0A s6Step59Add0B s6Step59Add0Work
    (by decide +kernel) (by decide +kernel) s6Step59Add0_distinct
    (fun q hq => s6Step59Add0_owned (List.mem_toFinset.mpr hq)) s6Step59Add0_borrowed
def s6Step59Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step59Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 776]
def s6Step59Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 822, 775]
def s6Step59Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906]
theorem s6Step59Add1_bounded : s6Step59Add1Work.toFinset⊆arenaWires := by
  have h : s6Step59Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step59Add1During : Arena := ⟨s6Step59Add1Arena.live∪s6Step59Add1Work.toFinset,Finset.union_subset s6Step59Add1Arena.bounded s6Step59Add1_bounded⟩
theorem s6Step59Add1_distinct : (880::875::892::(s6Step59Add1A++s6Step59Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step59Add1_owned : (880::875::892::(s6Step59Add1A++s6Step59Add1B)).toFinset⊆s6Step59Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step59Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59Add1_apart : Disjoint s6Step59Add1Arena.live s6Step59Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step59Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,877),(878,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step59Add1_card : s6Step59Add1Arena.live.card=861 := by
  decide +kernel
theorem s6Step59Add1_borrowed : s6Step59Add1Arena.checkBorrow (hmrHybridCount s6Step59Add1Arena s6Step59Add1B.length) s6Step59Add1Work=some s6Step59Add1During := by
  have len : s6Step59Add1Work.length=hmrHybridCount s6Step59Add1Arena s6Step59Add1B.length := by
    rw [hmrHybridCount,s6Step59Add1_card]
    decide +kernel
  have nd : s6Step59Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step59Add1Arena s6Step59Add1During s6Step59Add1Work.toFinset s6Step59Add1_bounded s6Step59Add1_apart rfl
theorem s6Step59Add1_checked : compileHmrHybridCinLog s6Step59Add1Arena 875 880 892 s6Step59Add1A s6Step59Add1B s6Step59Add1Work=some s6Step59Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step59Add1Arena s6Step59Add1During 875 880 892 s6Step59Add1A s6Step59Add1B s6Step59Add1Work
    (by decide +kernel) (by decide +kernel) s6Step59Add1_distinct
    (fun q hq => s6Step59Add1_owned (List.mem_toFinset.mpr hq)) s6Step59Add1_borrowed
def s6Step60Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step60Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 833, 795]
def s6Step60Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 875, 780, 777]
def s6Step60Add0Work : List Wire := [803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step60Add0_bounded : s6Step60Add0Work.toFinset⊆arenaWires := by
  have h : s6Step60Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step60Add0During : Arena := ⟨s6Step60Add0Arena.live∪s6Step60Add0Work.toFinset,Finset.union_subset s6Step60Add0Arena.bounded s6Step60Add0_bounded⟩
theorem s6Step60Add0_distinct : (877::886::855::(s6Step60Add0A++s6Step60Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step60Add0_owned : (877::886::855::(s6Step60Add0A++s6Step60Add0B)).toFinset⊆s6Step60Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step60Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60Add0_apart : Disjoint s6Step60Add0Arena.live s6Step60Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step60Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60Add0_card : s6Step60Add0Arena.live.card=863 := by
  decide +kernel
theorem s6Step60Add0_borrowed : s6Step60Add0Arena.checkBorrow (hmrHybridCount s6Step60Add0Arena s6Step60Add0B.length) s6Step60Add0Work=some s6Step60Add0During := by
  have len : s6Step60Add0Work.length=hmrHybridCount s6Step60Add0Arena s6Step60Add0B.length := by
    rw [hmrHybridCount,s6Step60Add0_card]
    decide +kernel
  have nd : s6Step60Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step60Add0Arena s6Step60Add0During s6Step60Add0Work.toFinset s6Step60Add0_bounded s6Step60Add0_apart rfl
theorem s6Step60Add0_checked : compileHmrHybridCinLog s6Step60Add0Arena 886 877 855 s6Step60Add0A s6Step60Add0B s6Step60Add0Work=some s6Step60Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step60Add0Arena s6Step60Add0During 886 877 855 s6Step60Add0A s6Step60Add0B s6Step60Add0Work
    (by decide +kernel) (by decide +kernel) s6Step60Add0_distinct
    (fun q hq => s6Step60Add0_owned (List.mem_toFinset.mpr hq)) s6Step60Add0_borrowed
def s6Step60Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step60Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 776]
def s6Step60Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 775]
def s6Step60Add1Work : List Wire := [803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787]
theorem s6Step60Add1_bounded : s6Step60Add1Work.toFinset⊆arenaWires := by
  have h : s6Step60Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step60Add1During : Arena := ⟨s6Step60Add1Arena.live∪s6Step60Add1Work.toFinset,Finset.union_subset s6Step60Add1Arena.bounded s6Step60Add1_bounded⟩
theorem s6Step60Add1_distinct : (877::886::855::(s6Step60Add1A++s6Step60Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step60Add1_owned : (877::886::855::(s6Step60Add1A++s6Step60Add1B)).toFinset⊆s6Step60Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step60Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60Add1_apart : Disjoint s6Step60Add1Arena.live s6Step60Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step60Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step60Add1_card : s6Step60Add1Arena.live.card=863 := by
  decide +kernel
theorem s6Step60Add1_borrowed : s6Step60Add1Arena.checkBorrow (hmrHybridCount s6Step60Add1Arena s6Step60Add1B.length) s6Step60Add1Work=some s6Step60Add1During := by
  have len : s6Step60Add1Work.length=hmrHybridCount s6Step60Add1Arena s6Step60Add1B.length := by
    rw [hmrHybridCount,s6Step60Add1_card]
    decide +kernel
  have nd : s6Step60Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step60Add1Arena s6Step60Add1During s6Step60Add1Work.toFinset s6Step60Add1_bounded s6Step60Add1_apart rfl
theorem s6Step60Add1_checked : compileHmrHybridCinLog s6Step60Add1Arena 886 877 855 s6Step60Add1A s6Step60Add1B s6Step60Add1Work=some s6Step60Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step60Add1Arena s6Step60Add1During 886 877 855 s6Step60Add1A s6Step60Add1B s6Step60Add1Work
    (by decide +kernel) (by decide +kernel) s6Step60Add1_distinct
    (fun q hq => s6Step60Add1_owned (List.mem_toFinset.mpr hq)) s6Step60Add1_borrowed
def s6Step61Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step61Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 780, 795]
def s6Step61Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 886, 822, 875, 777]
def s6Step61Add0Work : List Wire := [879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step61Add0_bounded : s6Step61Add0Work.toFinset⊆arenaWires := by
  have h : s6Step61Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step61Add0During : Arena := ⟨s6Step61Add0Arena.live∪s6Step61Add0Work.toFinset,Finset.union_subset s6Step61Add0Arena.bounded s6Step61Add0_bounded⟩
theorem s6Step61Add0_distinct : (803::833::922::(s6Step61Add0A++s6Step61Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step61Add0_owned : (803::833::922::(s6Step61Add0A++s6Step61Add0B)).toFinset⊆s6Step61Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step61Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61Add0_apart : Disjoint s6Step61Add0Arena.live s6Step61Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step61Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61Add0_card : s6Step61Add0Arena.live.card=865 := by
  decide +kernel
theorem s6Step61Add0_borrowed : s6Step61Add0Arena.checkBorrow (hmrHybridCount s6Step61Add0Arena s6Step61Add0B.length) s6Step61Add0Work=some s6Step61Add0During := by
  have len : s6Step61Add0Work.length=hmrHybridCount s6Step61Add0Arena s6Step61Add0B.length := by
    rw [hmrHybridCount,s6Step61Add0_card]
    decide +kernel
  have nd : s6Step61Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step61Add0Arena s6Step61Add0During s6Step61Add0Work.toFinset s6Step61Add0_bounded s6Step61Add0_apart rfl
theorem s6Step61Add0_checked : compileHmrHybridCinLog s6Step61Add0Arena 833 803 922 s6Step61Add0A s6Step61Add0B s6Step61Add0Work=some s6Step61Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step61Add0Arena s6Step61Add0During 833 803 922 s6Step61Add0A s6Step61Add0B s6Step61Add0Work
    (by decide +kernel) (by decide +kernel) s6Step61Add0_distinct
    (fun q hq => s6Step61Add0_owned (List.mem_toFinset.mpr hq)) s6Step61Add0_borrowed
def s6Step61Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step61Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 855, 776]
def s6Step61Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 838, 877, 775]
def s6Step61Add1Work : List Wire := [879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811]
theorem s6Step61Add1_bounded : s6Step61Add1Work.toFinset⊆arenaWires := by
  have h : s6Step61Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step61Add1During : Arena := ⟨s6Step61Add1Arena.live∪s6Step61Add1Work.toFinset,Finset.union_subset s6Step61Add1Arena.bounded s6Step61Add1_bounded⟩
theorem s6Step61Add1_distinct : (803::833::922::(s6Step61Add1A++s6Step61Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step61Add1_owned : (803::833::922::(s6Step61Add1A++s6Step61Add1B)).toFinset⊆s6Step61Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step61Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61Add1_apart : Disjoint s6Step61Add1Arena.live s6Step61Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step61Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,804),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step61Add1_card : s6Step61Add1Arena.live.card=865 := by
  decide +kernel
theorem s6Step61Add1_borrowed : s6Step61Add1Arena.checkBorrow (hmrHybridCount s6Step61Add1Arena s6Step61Add1B.length) s6Step61Add1Work=some s6Step61Add1During := by
  have len : s6Step61Add1Work.length=hmrHybridCount s6Step61Add1Arena s6Step61Add1B.length := by
    rw [hmrHybridCount,s6Step61Add1_card]
    decide +kernel
  have nd : s6Step61Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step61Add1Arena s6Step61Add1During s6Step61Add1Work.toFinset s6Step61Add1_bounded s6Step61Add1_apart rfl
theorem s6Step61Add1_checked : compileHmrHybridCinLog s6Step61Add1Arena 833 803 922 s6Step61Add1A s6Step61Add1B s6Step61Add1Work=some s6Step61Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step61Add1Arena s6Step61Add1During 833 803 922 s6Step61Add1A s6Step61Add1B s6Step61Add1Work
    (by decide +kernel) (by decide +kernel) s6Step61Add1_distinct
    (fun q hq => s6Step61Add1_owned (List.mem_toFinset.mpr hq)) s6Step61Add1_borrowed
def s6Step62Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step62Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 855, 795]
def s6Step62Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 833, 877, 777]
def s6Step62Add0Work : List Wire := [803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step62Add0_bounded : s6Step62Add0Work.toFinset⊆arenaWires := by
  have h : s6Step62Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step62Add0During : Arena := ⟨s6Step62Add0Arena.live∪s6Step62Add0Work.toFinset,Finset.union_subset s6Step62Add0Arena.bounded s6Step62Add0_bounded⟩
theorem s6Step62Add0_distinct : (822::838::875::(s6Step62Add0A++s6Step62Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step62Add0_owned : (822::838::875::(s6Step62Add0A++s6Step62Add0B)).toFinset⊆s6Step62Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step62Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62Add0_apart : Disjoint s6Step62Add0Arena.live s6Step62Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step62Add0Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62Add0_card : s6Step62Add0Arena.live.card=863 := by
  decide +kernel
theorem s6Step62Add0_borrowed : s6Step62Add0Arena.checkBorrow (hmrHybridCount s6Step62Add0Arena s6Step62Add0B.length) s6Step62Add0Work=some s6Step62Add0During := by
  have len : s6Step62Add0Work.length=hmrHybridCount s6Step62Add0Arena s6Step62Add0B.length := by
    rw [hmrHybridCount,s6Step62Add0_card]
    decide +kernel
  have nd : s6Step62Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step62Add0Arena s6Step62Add0During s6Step62Add0Work.toFinset s6Step62Add0_bounded s6Step62Add0_apart rfl
theorem s6Step62Add0_checked : compileHmrHybridCinLog s6Step62Add0Arena 838 822 875 s6Step62Add0A s6Step62Add0B s6Step62Add0Work=some s6Step62Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step62Add0Arena s6Step62Add0During 838 822 875 s6Step62Add0A s6Step62Add0B s6Step62Add0Work
    (by decide +kernel) (by decide +kernel) s6Step62Add0_distinct
    (fun q hq => s6Step62Add0_owned (List.mem_toFinset.mpr hq)) s6Step62Add0_borrowed
def s6Step62Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step62Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 865, 823, 863, 793, 789, 805, 892, 886, 776]
def s6Step62Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 845, 864, 828, 818, 882, 868, 880, 780, 775]
def s6Step62Add1Work : List Wire := [803, 922, 879, 784, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792]
theorem s6Step62Add1_bounded : s6Step62Add1Work.toFinset⊆arenaWires := by
  have h : s6Step62Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step62Add1During : Arena := ⟨s6Step62Add1Arena.live∪s6Step62Add1Work.toFinset,Finset.union_subset s6Step62Add1Arena.bounded s6Step62Add1_bounded⟩
theorem s6Step62Add1_distinct : (822::838::875::(s6Step62Add1A++s6Step62Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step62Add1_owned : (822::838::875::(s6Step62Add1A++s6Step62Add1B)).toFinset⊆s6Step62Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step62Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62Add1_apart : Disjoint s6Step62Add1Arena.live s6Step62Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step62Add1Arena (fun q => ([(0,782),(785,787),(788,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,832),(833,834),(835,836),(837,840),(841,842),(843,844),(845,846),(848,849),(850,879),(880,884),(886,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step62Add1_card : s6Step62Add1Arena.live.card=863 := by
  decide +kernel
theorem s6Step62Add1_borrowed : s6Step62Add1Arena.checkBorrow (hmrHybridCount s6Step62Add1Arena s6Step62Add1B.length) s6Step62Add1Work=some s6Step62Add1During := by
  have len : s6Step62Add1Work.length=hmrHybridCount s6Step62Add1Arena s6Step62Add1B.length := by
    rw [hmrHybridCount,s6Step62Add1_card]
    decide +kernel
  have nd : s6Step62Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step62Add1Arena s6Step62Add1During s6Step62Add1Work.toFinset s6Step62Add1_bounded s6Step62Add1_apart rfl
theorem s6Step62Add1_checked : compileHmrHybridCinLog s6Step62Add1Arena 838 822 875 s6Step62Add1A s6Step62Add1B s6Step62Add1Work=some s6Step62Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step62Add1Arena s6Step62Add1During 838 822 875 s6Step62Add1A s6Step62Add1B s6Step62Add1Work
    (by decide +kernel) (by decide +kernel) s6Step62Add1_distinct
    (fun q hq => s6Step62Add1_owned (List.mem_toFinset.mpr hq)) s6Step62Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
