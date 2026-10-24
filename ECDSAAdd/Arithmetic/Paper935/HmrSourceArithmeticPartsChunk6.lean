import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk5

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step31Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step31Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 813, 795]
def s6Step31Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 793, 876, 777]
def s6Step31Add0Work : List Wire := [803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step31Add0_bounded : s6Step31Add0Work.toFinset⊆arenaWires := by
  have h : s6Step31Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step31Add0During : Arena := ⟨s6Step31Add0Arena.live∪s6Step31Add0Work.toFinset,Finset.union_subset s6Step31Add0Arena.bounded s6Step31Add0_bounded⟩
theorem s6Step31Add0_distinct : (877::859::855::(s6Step31Add0A++s6Step31Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31Add0_owned : (877::859::855::(s6Step31Add0A++s6Step31Add0B)).toFinset⊆s6Step31Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step31Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31Add0_apart : Disjoint s6Step31Add0Arena.live s6Step31Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step31Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31Add0_card : s6Step31Add0Arena.live.card=850 := by
  decide +kernel
theorem s6Step31Add0_borrowed : s6Step31Add0Arena.checkBorrow (hmrHybridCount s6Step31Add0Arena s6Step31Add0B.length) s6Step31Add0Work=some s6Step31Add0During := by
  have len : s6Step31Add0Work.length=hmrHybridCount s6Step31Add0Arena s6Step31Add0B.length := by
    rw [hmrHybridCount,s6Step31Add0_card]
    decide +kernel
  have nd : s6Step31Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step31Add0Arena s6Step31Add0During s6Step31Add0Work.toFinset s6Step31Add0_bounded s6Step31Add0_apart rfl
theorem s6Step31Add0_checked : compileHmrHybridCinLog s6Step31Add0Arena 859 877 855 s6Step31Add0A s6Step31Add0B s6Step31Add0Work=some s6Step31Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step31Add0Arena s6Step31Add0During 859 877 855 s6Step31Add0A s6Step31Add0B s6Step31Add0Work
    (by decide +kernel) (by decide +kernel) s6Step31Add0_distinct
    (fun q hq => s6Step31Add0_owned (List.mem_toFinset.mpr hq)) s6Step31Add0_borrowed
def s6Step31Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step31Add1A : List Wire := [255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 887, 776]
def s6Step31Add1B : List Wire := [511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 802, 881, 775]
def s6Step31Add1Work : List Wire := [803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791]
theorem s6Step31Add1_bounded : s6Step31Add1Work.toFinset⊆arenaWires := by
  have h : s6Step31Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step31Add1During : Arena := ⟨s6Step31Add1Arena.live∪s6Step31Add1Work.toFinset,Finset.union_subset s6Step31Add1Arena.bounded s6Step31Add1_bounded⟩
theorem s6Step31Add1_distinct : (877::859::855::(s6Step31Add1A++s6Step31Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step31Add1_owned : (877::859::855::(s6Step31Add1A++s6Step31Add1B)).toFinset⊆s6Step31Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step31Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31Add1_apart : Disjoint s6Step31Add1Arena.live s6Step31Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step31Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step31Add1_card : s6Step31Add1Arena.live.card=850 := by
  decide +kernel
theorem s6Step31Add1_borrowed : s6Step31Add1Arena.checkBorrow (hmrHybridCount s6Step31Add1Arena s6Step31Add1B.length) s6Step31Add1Work=some s6Step31Add1During := by
  have len : s6Step31Add1Work.length=hmrHybridCount s6Step31Add1Arena s6Step31Add1B.length := by
    rw [hmrHybridCount,s6Step31Add1_card]
    decide +kernel
  have nd : s6Step31Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step31Add1Arena s6Step31Add1During s6Step31Add1Work.toFinset s6Step31Add1_bounded s6Step31Add1_apart rfl
theorem s6Step31Add1_checked : compileHmrHybridCinLog s6Step31Add1Arena 859 877 855 s6Step31Add1A s6Step31Add1B s6Step31Add1Work=some s6Step31Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step31Add1Arena s6Step31Add1During 859 877 855 s6Step31Add1A s6Step31Add1B s6Step31Add1Work
    (by decide +kernel) (by decide +kernel) s6Step31Add1_distinct
    (fun q hq => s6Step31Add1_owned (List.mem_toFinset.mpr hq)) s6Step31Add1_borrowed
def s6Step32Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step32Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 813, 795]
def s6Step32Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859, 874, 887, 777]
def s6Step32Add0Work : List Wire := [803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step32Add0_bounded : s6Step32Add0Work.toFinset⊆arenaWires := by
  have h : s6Step32Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step32Add0During : Arena := ⟨s6Step32Add0Arena.live∪s6Step32Add0Work.toFinset,Finset.union_subset s6Step32Add0Arena.bounded s6Step32Add0_bounded⟩
theorem s6Step32Add0_distinct : (877::881::855::(s6Step32Add0A++s6Step32Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32Add0_owned : (877::881::855::(s6Step32Add0A++s6Step32Add0B)).toFinset⊆s6Step32Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step32Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32Add0_apart : Disjoint s6Step32Add0Arena.live s6Step32Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step32Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32Add0_card : s6Step32Add0Arena.live.card=851 := by
  decide +kernel
theorem s6Step32Add0_borrowed : s6Step32Add0Arena.checkBorrow (hmrHybridCount s6Step32Add0Arena s6Step32Add0B.length) s6Step32Add0Work=some s6Step32Add0During := by
  have len : s6Step32Add0Work.length=hmrHybridCount s6Step32Add0Arena s6Step32Add0B.length := by
    rw [hmrHybridCount,s6Step32Add0_card]
    decide +kernel
  have nd : s6Step32Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step32Add0Arena s6Step32Add0During s6Step32Add0Work.toFinset s6Step32Add0_bounded s6Step32Add0_apart rfl
theorem s6Step32Add0_checked : compileHmrHybridCinLog s6Step32Add0Arena 881 877 855 s6Step32Add0A s6Step32Add0B s6Step32Add0Work=some s6Step32Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step32Add0Arena s6Step32Add0During 881 877 855 s6Step32Add0A s6Step32Add0B s6Step32Add0Work
    (by decide +kernel) (by decide +kernel) s6Step32Add0_distinct
    (fun q hq => s6Step32Add0_owned (List.mem_toFinset.mpr hq)) s6Step32Add0_borrowed
def s6Step32Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step32Add1A : List Wire := [255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 876, 776]
def s6Step32Add1B : List Wire := [511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 779, 793, 775]
def s6Step32Add1Work : List Wire := [803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840]
theorem s6Step32Add1_bounded : s6Step32Add1Work.toFinset⊆arenaWires := by
  have h : s6Step32Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step32Add1During : Arena := ⟨s6Step32Add1Arena.live∪s6Step32Add1Work.toFinset,Finset.union_subset s6Step32Add1Arena.bounded s6Step32Add1_bounded⟩
theorem s6Step32Add1_distinct : (877::881::855::(s6Step32Add1A++s6Step32Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step32Add1_owned : (877::881::855::(s6Step32Add1A++s6Step32Add1B)).toFinset⊆s6Step32Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step32Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32Add1_apart : Disjoint s6Step32Add1Arena.live s6Step32Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step32Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step32Add1_card : s6Step32Add1Arena.live.card=851 := by
  decide +kernel
theorem s6Step32Add1_borrowed : s6Step32Add1Arena.checkBorrow (hmrHybridCount s6Step32Add1Arena s6Step32Add1B.length) s6Step32Add1Work=some s6Step32Add1During := by
  have len : s6Step32Add1Work.length=hmrHybridCount s6Step32Add1Arena s6Step32Add1B.length := by
    rw [hmrHybridCount,s6Step32Add1_card]
    decide +kernel
  have nd : s6Step32Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step32Add1Arena s6Step32Add1During s6Step32Add1Work.toFinset s6Step32Add1_bounded s6Step32Add1_apart rfl
theorem s6Step32Add1_checked : compileHmrHybridCinLog s6Step32Add1Arena 881 877 855 s6Step32Add1A s6Step32Add1B s6Step32Add1Work=some s6Step32Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step32Add1Arena s6Step32Add1During 881 877 855 s6Step32Add1A s6Step32Add1B s6Step32Add1Work
    (by decide +kernel) (by decide +kernel) s6Step32Add1_distinct
    (fun q hq => s6Step32Add1_owned (List.mem_toFinset.mpr hq)) s6Step32Add1_borrowed
def s6Step33Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step33Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 793, 795]
def s6Step33Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 859, 779, 777]
def s6Step33Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step33Add0_bounded : s6Step33Add0Work.toFinset⊆arenaWires := by
  have h : s6Step33Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step33Add0During : Arena := ⟨s6Step33Add0Arena.live∪s6Step33Add0Work.toFinset,Finset.union_subset s6Step33Add0Arena.bounded s6Step33Add0_bounded⟩
theorem s6Step33Add0_distinct : (874::927::887::(s6Step33Add0A++s6Step33Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33Add0_owned : (874::927::887::(s6Step33Add0A++s6Step33Add0B)).toFinset⊆s6Step33Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step33Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33Add0_apart : Disjoint s6Step33Add0Arena.live s6Step33Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step33Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33Add0_card : s6Step33Add0Arena.live.card=849 := by
  decide +kernel
theorem s6Step33Add0_borrowed : s6Step33Add0Arena.checkBorrow (hmrHybridCount s6Step33Add0Arena s6Step33Add0B.length) s6Step33Add0Work=some s6Step33Add0During := by
  have len : s6Step33Add0Work.length=hmrHybridCount s6Step33Add0Arena s6Step33Add0B.length := by
    rw [hmrHybridCount,s6Step33Add0_card]
    decide +kernel
  have nd : s6Step33Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step33Add0Arena s6Step33Add0During s6Step33Add0Work.toFinset s6Step33Add0_bounded s6Step33Add0_apart rfl
theorem s6Step33Add0_checked : compileHmrHybridCinLog s6Step33Add0Arena 927 874 887 s6Step33Add0A s6Step33Add0B s6Step33Add0Work=some s6Step33Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step33Add0Arena s6Step33Add0During 927 874 887 s6Step33Add0A s6Step33Add0B s6Step33Add0Work
    (by decide +kernel) (by decide +kernel) s6Step33Add0_distinct
    (fun q hq => s6Step33Add0_owned (List.mem_toFinset.mpr hq)) s6Step33Add0_borrowed
def s6Step33Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step33Add1A : List Wire := [255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 776]
def s6Step33Add1B : List Wire := [511, 510, 509, 508, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 876, 775]
def s6Step33Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885]
theorem s6Step33Add1_bounded : s6Step33Add1Work.toFinset⊆arenaWires := by
  have h : s6Step33Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step33Add1During : Arena := ⟨s6Step33Add1Arena.live∪s6Step33Add1Work.toFinset,Finset.union_subset s6Step33Add1Arena.bounded s6Step33Add1_bounded⟩
theorem s6Step33Add1_distinct : (874::927::887::(s6Step33Add1A++s6Step33Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step33Add1_owned : (874::927::887::(s6Step33Add1A++s6Step33Add1B)).toFinset⊆s6Step33Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step33Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33Add1_apart : Disjoint s6Step33Add1Arena.live s6Step33Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step33Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step33Add1_card : s6Step33Add1Arena.live.card=849 := by
  decide +kernel
theorem s6Step33Add1_borrowed : s6Step33Add1Arena.checkBorrow (hmrHybridCount s6Step33Add1Arena s6Step33Add1B.length) s6Step33Add1Work=some s6Step33Add1During := by
  have len : s6Step33Add1Work.length=hmrHybridCount s6Step33Add1Arena s6Step33Add1B.length := by
    rw [hmrHybridCount,s6Step33Add1_card]
    decide +kernel
  have nd : s6Step33Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step33Add1Arena s6Step33Add1During s6Step33Add1Work.toFinset s6Step33Add1_bounded s6Step33Add1_apart rfl
theorem s6Step33Add1_checked : compileHmrHybridCinLog s6Step33Add1Arena 927 874 887 s6Step33Add1A s6Step33Add1B s6Step33Add1Work=some s6Step33Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step33Add1Arena s6Step33Add1During 927 874 887 s6Step33Add1A s6Step33Add1B s6Step33Add1Work
    (by decide +kernel) (by decide +kernel) s6Step33Add1_distinct
    (fun q hq => s6Step33Add1_owned (List.mem_toFinset.mpr hq)) s6Step33Add1_borrowed
def s6Step34Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step34Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 793, 795]
def s6Step34Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 876, 777]
def s6Step34Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step34Add0_bounded : s6Step34Add0Work.toFinset⊆arenaWires := by
  have h : s6Step34Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step34Add0During : Arena := ⟨s6Step34Add0Arena.live∪s6Step34Add0Work.toFinset,Finset.union_subset s6Step34Add0Arena.bounded s6Step34Add0_bounded⟩
theorem s6Step34Add0_distinct : (874::875::887::(s6Step34Add0A++s6Step34Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34Add0_owned : (874::875::887::(s6Step34Add0A++s6Step34Add0B)).toFinset⊆s6Step34Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step34Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34Add0_apart : Disjoint s6Step34Add0Arena.live s6Step34Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step34Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34Add0_card : s6Step34Add0Arena.live.card=850 := by
  decide +kernel
theorem s6Step34Add0_borrowed : s6Step34Add0Arena.checkBorrow (hmrHybridCount s6Step34Add0Arena s6Step34Add0B.length) s6Step34Add0Work=some s6Step34Add0During := by
  have len : s6Step34Add0Work.length=hmrHybridCount s6Step34Add0Arena s6Step34Add0B.length := by
    rw [hmrHybridCount,s6Step34Add0_card]
    decide +kernel
  have nd : s6Step34Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step34Add0Arena s6Step34Add0During s6Step34Add0Work.toFinset s6Step34Add0_bounded s6Step34Add0_apart rfl
theorem s6Step34Add0_checked : compileHmrHybridCinLog s6Step34Add0Arena 875 874 887 s6Step34Add0A s6Step34Add0B s6Step34Add0Work=some s6Step34Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step34Add0Arena s6Step34Add0During 875 874 887 s6Step34Add0A s6Step34Add0B s6Step34Add0Work
    (by decide +kernel) (by decide +kernel) s6Step34Add0_distinct
    (fun q hq => s6Step34Add0_owned (List.mem_toFinset.mpr hq)) s6Step34Add0_borrowed
def s6Step34Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step34Add1A : List Wire := [255, 254, 253, 252, 251, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 779, 776]
def s6Step34Add1B : List Wire := [511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 859, 775]
def s6Step34Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840]
theorem s6Step34Add1_bounded : s6Step34Add1Work.toFinset⊆arenaWires := by
  have h : s6Step34Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step34Add1During : Arena := ⟨s6Step34Add1Arena.live∪s6Step34Add1Work.toFinset,Finset.union_subset s6Step34Add1Arena.bounded s6Step34Add1_bounded⟩
theorem s6Step34Add1_distinct : (874::875::887::(s6Step34Add1A++s6Step34Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step34Add1_owned : (874::875::887::(s6Step34Add1A++s6Step34Add1B)).toFinset⊆s6Step34Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step34Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34Add1_apart : Disjoint s6Step34Add1Arena.live s6Step34Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step34Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step34Add1_card : s6Step34Add1Arena.live.card=850 := by
  decide +kernel
theorem s6Step34Add1_borrowed : s6Step34Add1Arena.checkBorrow (hmrHybridCount s6Step34Add1Arena s6Step34Add1B.length) s6Step34Add1Work=some s6Step34Add1During := by
  have len : s6Step34Add1Work.length=hmrHybridCount s6Step34Add1Arena s6Step34Add1B.length := by
    rw [hmrHybridCount,s6Step34Add1_card]
    decide +kernel
  have nd : s6Step34Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step34Add1Arena s6Step34Add1During s6Step34Add1Work.toFinset s6Step34Add1_bounded s6Step34Add1_apart rfl
theorem s6Step34Add1_checked : compileHmrHybridCinLog s6Step34Add1Arena 875 874 887 s6Step34Add1A s6Step34Add1B s6Step34Add1Work=some s6Step34Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step34Add1Arena s6Step34Add1During 875 874 887 s6Step34Add1A s6Step34Add1B s6Step34Add1Work
    (by decide +kernel) (by decide +kernel) s6Step34Add1_distinct
    (fun q hq => s6Step34Add1_owned (List.mem_toFinset.mpr hq)) s6Step34Add1_borrowed
def s6Step35Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step35Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 779, 795]
def s6Step35Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875, 859, 777]
def s6Step35Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step35Add0_bounded : s6Step35Add0Work.toFinset⊆arenaWires := by
  have h : s6Step35Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step35Add0During : Arena := ⟨s6Step35Add0Arena.live∪s6Step35Add0Work.toFinset,Finset.union_subset s6Step35Add0Arena.bounded s6Step35Add0_bounded⟩
theorem s6Step35Add0_distinct : (874::857::887::(s6Step35Add0A++s6Step35Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35Add0_owned : (874::857::887::(s6Step35Add0A++s6Step35Add0B)).toFinset⊆s6Step35Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step35Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35Add0_apart : Disjoint s6Step35Add0Arena.live s6Step35Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step35Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35Add0_card : s6Step35Add0Arena.live.card=850 := by
  decide +kernel
theorem s6Step35Add0_borrowed : s6Step35Add0Arena.checkBorrow (hmrHybridCount s6Step35Add0Arena s6Step35Add0B.length) s6Step35Add0Work=some s6Step35Add0During := by
  have len : s6Step35Add0Work.length=hmrHybridCount s6Step35Add0Arena s6Step35Add0B.length := by
    rw [hmrHybridCount,s6Step35Add0_card]
    decide +kernel
  have nd : s6Step35Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step35Add0Arena s6Step35Add0During s6Step35Add0Work.toFinset s6Step35Add0_bounded s6Step35Add0_apart rfl
theorem s6Step35Add0_checked : compileHmrHybridCinLog s6Step35Add0Arena 857 874 887 s6Step35Add0A s6Step35Add0B s6Step35Add0Work=some s6Step35Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step35Add0Arena s6Step35Add0During 857 874 887 s6Step35Add0A s6Step35Add0B s6Step35Add0Work
    (by decide +kernel) (by decide +kernel) s6Step35Add0_distinct
    (fun q hq => s6Step35Add0_owned (List.mem_toFinset.mpr hq)) s6Step35Add0_borrowed
def s6Step35Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step35Add1A : List Wire := [255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 776]
def s6Step35Add1B : List Wire := [511, 510, 509, 508, 507, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 793, 775]
def s6Step35Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840]
theorem s6Step35Add1_bounded : s6Step35Add1Work.toFinset⊆arenaWires := by
  have h : s6Step35Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step35Add1During : Arena := ⟨s6Step35Add1Arena.live∪s6Step35Add1Work.toFinset,Finset.union_subset s6Step35Add1Arena.bounded s6Step35Add1_bounded⟩
theorem s6Step35Add1_distinct : (874::857::887::(s6Step35Add1A++s6Step35Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step35Add1_owned : (874::857::887::(s6Step35Add1A++s6Step35Add1B)).toFinset⊆s6Step35Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step35Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35Add1_apart : Disjoint s6Step35Add1Arena.live s6Step35Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step35Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step35Add1_card : s6Step35Add1Arena.live.card=850 := by
  decide +kernel
theorem s6Step35Add1_borrowed : s6Step35Add1Arena.checkBorrow (hmrHybridCount s6Step35Add1Arena s6Step35Add1B.length) s6Step35Add1Work=some s6Step35Add1During := by
  have len : s6Step35Add1Work.length=hmrHybridCount s6Step35Add1Arena s6Step35Add1B.length := by
    rw [hmrHybridCount,s6Step35Add1_card]
    decide +kernel
  have nd : s6Step35Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step35Add1Arena s6Step35Add1During s6Step35Add1Work.toFinset s6Step35Add1_bounded s6Step35Add1_apart rfl
theorem s6Step35Add1_checked : compileHmrHybridCinLog s6Step35Add1Arena 857 874 887 s6Step35Add1A s6Step35Add1B s6Step35Add1Work=some s6Step35Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step35Add1Arena s6Step35Add1During 857 874 887 s6Step35Add1A s6Step35Add1B s6Step35Add1Work
    (by decide +kernel) (by decide +kernel) s6Step35Add1_distinct
    (fun q hq => s6Step35Add1_owned (List.mem_toFinset.mpr hq)) s6Step35Add1_borrowed
def s6Step36Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step36Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 857, 859, 795]
def s6Step36Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 875, 779, 777]
def s6Step36Add0Work : List Wire := [803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step36Add0_bounded : s6Step36Add0Work.toFinset⊆arenaWires := by
  have h : s6Step36Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step36Add0During : Arena := ⟨s6Step36Add0Arena.live∪s6Step36Add0Work.toFinset,Finset.union_subset s6Step36Add0Arena.bounded s6Step36Add0_bounded⟩
theorem s6Step36Add0_distinct : (877::793::855::(s6Step36Add0A++s6Step36Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36Add0_owned : (877::793::855::(s6Step36Add0A++s6Step36Add0B)).toFinset⊆s6Step36Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step36Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36Add0_apart : Disjoint s6Step36Add0Arena.live s6Step36Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step36Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36Add0_card : s6Step36Add0Arena.live.card=853 := by
  decide +kernel
theorem s6Step36Add0_borrowed : s6Step36Add0Arena.checkBorrow (hmrHybridCount s6Step36Add0Arena s6Step36Add0B.length) s6Step36Add0Work=some s6Step36Add0During := by
  have len : s6Step36Add0Work.length=hmrHybridCount s6Step36Add0Arena s6Step36Add0B.length := by
    rw [hmrHybridCount,s6Step36Add0_card]
    decide +kernel
  have nd : s6Step36Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step36Add0Arena s6Step36Add0During s6Step36Add0Work.toFinset s6Step36Add0_bounded s6Step36Add0_apart rfl
theorem s6Step36Add0_checked : compileHmrHybridCinLog s6Step36Add0Arena 793 877 855 s6Step36Add0A s6Step36Add0B s6Step36Add0Work=some s6Step36Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step36Add0Arena s6Step36Add0During 793 877 855 s6Step36Add0A s6Step36Add0B s6Step36Add0Work
    (by decide +kernel) (by decide +kernel) s6Step36Add0_distinct
    (fun q hq => s6Step36Add0_owned (List.mem_toFinset.mpr hq)) s6Step36Add0_borrowed
def s6Step36Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step36Add1A : List Wire := [255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 887, 776]
def s6Step36Add1B : List Wire := [511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 874, 775]
def s6Step36Add1Work : List Wire := [803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904]
theorem s6Step36Add1_bounded : s6Step36Add1Work.toFinset⊆arenaWires := by
  have h : s6Step36Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step36Add1During : Arena := ⟨s6Step36Add1Arena.live∪s6Step36Add1Work.toFinset,Finset.union_subset s6Step36Add1Arena.bounded s6Step36Add1_bounded⟩
theorem s6Step36Add1_distinct : (877::793::855::(s6Step36Add1A++s6Step36Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step36Add1_owned : (877::793::855::(s6Step36Add1A++s6Step36Add1B)).toFinset⊆s6Step36Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step36Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36Add1_apart : Disjoint s6Step36Add1Arena.live s6Step36Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step36Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step36Add1_card : s6Step36Add1Arena.live.card=853 := by
  decide +kernel
theorem s6Step36Add1_borrowed : s6Step36Add1Arena.checkBorrow (hmrHybridCount s6Step36Add1Arena s6Step36Add1B.length) s6Step36Add1Work=some s6Step36Add1During := by
  have len : s6Step36Add1Work.length=hmrHybridCount s6Step36Add1Arena s6Step36Add1B.length := by
    rw [hmrHybridCount,s6Step36Add1_card]
    decide +kernel
  have nd : s6Step36Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step36Add1Arena s6Step36Add1During s6Step36Add1Work.toFinset s6Step36Add1_bounded s6Step36Add1_apart rfl
theorem s6Step36Add1_checked : compileHmrHybridCinLog s6Step36Add1Arena 793 877 855 s6Step36Add1A s6Step36Add1B s6Step36Add1Work=some s6Step36Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step36Add1Arena s6Step36Add1During 793 877 855 s6Step36Add1A s6Step36Add1B s6Step36Add1Work
    (by decide +kernel) (by decide +kernel) s6Step36Add1_distinct
    (fun q hq => s6Step36Add1_owned (List.mem_toFinset.mpr hq)) s6Step36Add1_borrowed
def s6Step37Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step37Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 887, 795]
def s6Step37Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 874, 777]
def s6Step37Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step37Add0_bounded : s6Step37Add0Work.toFinset⊆arenaWires := by
  have h : s6Step37Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step37Add0During : Arena := ⟨s6Step37Add0Arena.live∪s6Step37Add0Work.toFinset,Finset.union_subset s6Step37Add0Arena.bounded s6Step37Add0_bounded⟩
theorem s6Step37Add0_distinct : (875::868::779::(s6Step37Add0A++s6Step37Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37Add0_owned : (875::868::779::(s6Step37Add0A++s6Step37Add0B)).toFinset⊆s6Step37Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step37Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37Add0_apart : Disjoint s6Step37Add0Arena.live s6Step37Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step37Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37Add0_card : s6Step37Add0Arena.live.card=851 := by
  decide +kernel
theorem s6Step37Add0_borrowed : s6Step37Add0Arena.checkBorrow (hmrHybridCount s6Step37Add0Arena s6Step37Add0B.length) s6Step37Add0Work=some s6Step37Add0During := by
  have len : s6Step37Add0Work.length=hmrHybridCount s6Step37Add0Arena s6Step37Add0B.length := by
    rw [hmrHybridCount,s6Step37Add0_card]
    decide +kernel
  have nd : s6Step37Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step37Add0Arena s6Step37Add0During s6Step37Add0Work.toFinset s6Step37Add0_bounded s6Step37Add0_apart rfl
theorem s6Step37Add0_checked : compileHmrHybridCinLog s6Step37Add0Arena 868 875 779 s6Step37Add0A s6Step37Add0B s6Step37Add0Work=some s6Step37Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step37Add0Arena s6Step37Add0During 868 875 779 s6Step37Add0A s6Step37Add0B s6Step37Add0Work
    (by decide +kernel) (by decide +kernel) s6Step37Add0_distinct
    (fun q hq => s6Step37Add0_owned (List.mem_toFinset.mpr hq)) s6Step37Add0_borrowed
def s6Step37Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step37Add1A : List Wire := [255, 254, 253, 252, 251, 250, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 776]
def s6Step37Add1B : List Wire := [511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 775]
def s6Step37Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825]
theorem s6Step37Add1_bounded : s6Step37Add1Work.toFinset⊆arenaWires := by
  have h : s6Step37Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step37Add1During : Arena := ⟨s6Step37Add1Arena.live∪s6Step37Add1Work.toFinset,Finset.union_subset s6Step37Add1Arena.bounded s6Step37Add1_bounded⟩
theorem s6Step37Add1_distinct : (875::868::779::(s6Step37Add1A++s6Step37Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step37Add1_owned : (875::868::779::(s6Step37Add1A++s6Step37Add1B)).toFinset⊆s6Step37Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step37Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37Add1_apart : Disjoint s6Step37Add1Arena.live s6Step37Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step37Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step37Add1_card : s6Step37Add1Arena.live.card=851 := by
  decide +kernel
theorem s6Step37Add1_borrowed : s6Step37Add1Arena.checkBorrow (hmrHybridCount s6Step37Add1Arena s6Step37Add1B.length) s6Step37Add1Work=some s6Step37Add1During := by
  have len : s6Step37Add1Work.length=hmrHybridCount s6Step37Add1Arena s6Step37Add1B.length := by
    rw [hmrHybridCount,s6Step37Add1_card]
    decide +kernel
  have nd : s6Step37Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step37Add1Arena s6Step37Add1During s6Step37Add1Work.toFinset s6Step37Add1_bounded s6Step37Add1_apart rfl
theorem s6Step37Add1_checked : compileHmrHybridCinLog s6Step37Add1Arena 868 875 779 s6Step37Add1A s6Step37Add1B s6Step37Add1Work=some s6Step37Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step37Add1Arena s6Step37Add1During 868 875 779 s6Step37Add1A s6Step37Add1B s6Step37Add1Work
    (by decide +kernel) (by decide +kernel) s6Step37Add1_distinct
    (fun q hq => s6Step37Add1_owned (List.mem_toFinset.mpr hq)) s6Step37Add1_borrowed
def s6Step38Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step38Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 874, 795]
def s6Step38Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 868, 887, 777]
def s6Step38Add0Work : List Wire := [803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step38Add0_bounded : s6Step38Add0Work.toFinset⊆arenaWires := by
  have h : s6Step38Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step38Add0During : Arena := ⟨s6Step38Add0Arena.live∪s6Step38Add0Work.toFinset,Finset.union_subset s6Step38Add0Arena.bounded s6Step38Add0_bounded⟩
theorem s6Step38Add0_distinct : (877::858::855::(s6Step38Add0A++s6Step38Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38Add0_owned : (877::858::855::(s6Step38Add0A++s6Step38Add0B)).toFinset⊆s6Step38Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step38Add0Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38Add0_apart : Disjoint s6Step38Add0Arena.live s6Step38Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step38Add0Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38Add0_card : s6Step38Add0Arena.live.card=854 := by
  decide +kernel
theorem s6Step38Add0_borrowed : s6Step38Add0Arena.checkBorrow (hmrHybridCount s6Step38Add0Arena s6Step38Add0B.length) s6Step38Add0Work=some s6Step38Add0During := by
  have len : s6Step38Add0Work.length=hmrHybridCount s6Step38Add0Arena s6Step38Add0B.length := by
    rw [hmrHybridCount,s6Step38Add0_card]
    decide +kernel
  have nd : s6Step38Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step38Add0Arena s6Step38Add0During s6Step38Add0Work.toFinset s6Step38Add0_bounded s6Step38Add0_apart rfl
theorem s6Step38Add0_checked : compileHmrHybridCinLog s6Step38Add0Arena 858 877 855 s6Step38Add0A s6Step38Add0B s6Step38Add0Work=some s6Step38Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step38Add0Arena s6Step38Add0During 858 877 855 s6Step38Add0A s6Step38Add0B s6Step38Add0Work
    (by decide +kernel) (by decide +kernel) s6Step38Add0_distinct
    (fun q hq => s6Step38Add0_owned (List.mem_toFinset.mpr hq)) s6Step38Add0_borrowed
def s6Step38Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step38Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 779, 776]
def s6Step38Add1B : List Wire := [511, 510, 509, 508, 507, 506, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 875, 775]
def s6Step38Add1Work : List Wire := [803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924]
theorem s6Step38Add1_bounded : s6Step38Add1Work.toFinset⊆arenaWires := by
  have h : s6Step38Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step38Add1During : Arena := ⟨s6Step38Add1Arena.live∪s6Step38Add1Work.toFinset,Finset.union_subset s6Step38Add1Arena.bounded s6Step38Add1_bounded⟩
theorem s6Step38Add1_distinct : (877::858::855::(s6Step38Add1A++s6Step38Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step38Add1_owned : (877::858::855::(s6Step38Add1A++s6Step38Add1B)).toFinset⊆s6Step38Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step38Add1Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38Add1_apart : Disjoint s6Step38Add1Arena.live s6Step38Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step38Add1Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step38Add1_card : s6Step38Add1Arena.live.card=854 := by
  decide +kernel
theorem s6Step38Add1_borrowed : s6Step38Add1Arena.checkBorrow (hmrHybridCount s6Step38Add1Arena s6Step38Add1B.length) s6Step38Add1Work=some s6Step38Add1During := by
  have len : s6Step38Add1Work.length=hmrHybridCount s6Step38Add1Arena s6Step38Add1B.length := by
    rw [hmrHybridCount,s6Step38Add1_card]
    decide +kernel
  have nd : s6Step38Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step38Add1Arena s6Step38Add1During s6Step38Add1Work.toFinset s6Step38Add1_bounded s6Step38Add1_apart rfl
theorem s6Step38Add1_checked : compileHmrHybridCinLog s6Step38Add1Arena 858 877 855 s6Step38Add1A s6Step38Add1B s6Step38Add1Work=some s6Step38Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step38Add1Arena s6Step38Add1During 858 877 855 s6Step38Add1A s6Step38Add1B s6Step38Add1Work
    (by decide +kernel) (by decide +kernel) s6Step38Add1_distinct
    (fun q hq => s6Step38Add1_owned (List.mem_toFinset.mpr hq)) s6Step38Add1_borrowed
def s6Step39Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step39Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 875, 795]
def s6Step39Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 907, 777]
def s6Step39Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step39Add0_bounded : s6Step39Add0Work.toFinset⊆arenaWires := by
  have h : s6Step39Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step39Add0During : Arena := ⟨s6Step39Add0Arena.live∪s6Step39Add0Work.toFinset,Finset.union_subset s6Step39Add0Arena.bounded s6Step39Add0_bounded⟩
theorem s6Step39Add0_distinct : (868::793::887::(s6Step39Add0A++s6Step39Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39Add0_owned : (868::793::887::(s6Step39Add0A++s6Step39Add0B)).toFinset⊆s6Step39Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step39Add0Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39Add0_apart : Disjoint s6Step39Add0Arena.live s6Step39Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step39Add0Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39Add0_card : s6Step39Add0Arena.live.card=852 := by
  decide +kernel
theorem s6Step39Add0_borrowed : s6Step39Add0Arena.checkBorrow (hmrHybridCount s6Step39Add0Arena s6Step39Add0B.length) s6Step39Add0Work=some s6Step39Add0During := by
  have len : s6Step39Add0Work.length=hmrHybridCount s6Step39Add0Arena s6Step39Add0B.length := by
    rw [hmrHybridCount,s6Step39Add0_card]
    decide +kernel
  have nd : s6Step39Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step39Add0Arena s6Step39Add0During s6Step39Add0Work.toFinset s6Step39Add0_bounded s6Step39Add0_apart rfl
theorem s6Step39Add0_checked : compileHmrHybridCinLog s6Step39Add0Arena 793 868 887 s6Step39Add0A s6Step39Add0B s6Step39Add0Work=some s6Step39Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step39Add0Arena s6Step39Add0During 793 868 887 s6Step39Add0A s6Step39Add0B s6Step39Add0Work
    (by decide +kernel) (by decide +kernel) s6Step39Add0_distinct
    (fun q hq => s6Step39Add0_owned (List.mem_toFinset.mpr hq)) s6Step39Add0_borrowed
def s6Step39Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step39Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 776]
def s6Step39Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 779, 775]
def s6Step39Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 861, 785, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904]
theorem s6Step39Add1_bounded : s6Step39Add1Work.toFinset⊆arenaWires := by
  have h : s6Step39Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step39Add1During : Arena := ⟨s6Step39Add1Arena.live∪s6Step39Add1Work.toFinset,Finset.union_subset s6Step39Add1Arena.bounded s6Step39Add1_bounded⟩
theorem s6Step39Add1_distinct : (868::793::887::(s6Step39Add1A++s6Step39Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step39Add1_owned : (868::793::887::(s6Step39Add1A++s6Step39Add1B)).toFinset⊆s6Step39Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step39Add1Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39Add1_apart : Disjoint s6Step39Add1Arena.live s6Step39Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step39Add1Arena (fun q => ([(0,782),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,861),(862,866),(867,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step39Add1_card : s6Step39Add1Arena.live.card=852 := by
  decide +kernel
theorem s6Step39Add1_borrowed : s6Step39Add1Arena.checkBorrow (hmrHybridCount s6Step39Add1Arena s6Step39Add1B.length) s6Step39Add1Work=some s6Step39Add1During := by
  have len : s6Step39Add1Work.length=hmrHybridCount s6Step39Add1Arena s6Step39Add1B.length := by
    rw [hmrHybridCount,s6Step39Add1_card]
    decide +kernel
  have nd : s6Step39Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step39Add1Arena s6Step39Add1During s6Step39Add1Work.toFinset s6Step39Add1_bounded s6Step39Add1_apart rfl
theorem s6Step39Add1_checked : compileHmrHybridCinLog s6Step39Add1Arena 793 868 887 s6Step39Add1A s6Step39Add1B s6Step39Add1Work=some s6Step39Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step39Add1Arena s6Step39Add1During 793 868 887 s6Step39Add1A s6Step39Add1B s6Step39Add1Work
    (by decide +kernel) (by decide +kernel) s6Step39Add1_distinct
    (fun q hq => s6Step39Add1_owned (List.mem_toFinset.mpr hq)) s6Step39Add1_borrowed
def s6Step40Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step40Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 907, 795]
def s6Step40Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 793, 875, 777]
def s6Step40Add0Work : List Wire := [803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step40Add0_bounded : s6Step40Add0Work.toFinset⊆arenaWires := by
  have h : s6Step40Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step40Add0During : Arena := ⟨s6Step40Add0Arena.live∪s6Step40Add0Work.toFinset,Finset.union_subset s6Step40Add0Arena.bounded s6Step40Add0_bounded⟩
theorem s6Step40Add0_distinct : (877::779::855::(s6Step40Add0A++s6Step40Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40Add0_owned : (877::779::855::(s6Step40Add0A++s6Step40Add0B)).toFinset⊆s6Step40Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step40Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40Add0_apart : Disjoint s6Step40Add0Arena.live s6Step40Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step40Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40Add0_card : s6Step40Add0Arena.live.card=855 := by
  decide +kernel
theorem s6Step40Add0_borrowed : s6Step40Add0Arena.checkBorrow (hmrHybridCount s6Step40Add0Arena s6Step40Add0B.length) s6Step40Add0Work=some s6Step40Add0During := by
  have len : s6Step40Add0Work.length=hmrHybridCount s6Step40Add0Arena s6Step40Add0B.length := by
    rw [hmrHybridCount,s6Step40Add0_card]
    decide +kernel
  have nd : s6Step40Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step40Add0Arena s6Step40Add0During s6Step40Add0Work.toFinset s6Step40Add0_bounded s6Step40Add0_apart rfl
theorem s6Step40Add0_checked : compileHmrHybridCinLog s6Step40Add0Arena 779 877 855 s6Step40Add0A s6Step40Add0B s6Step40Add0Work=some s6Step40Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step40Add0Arena s6Step40Add0During 779 877 855 s6Step40Add0A s6Step40Add0B s6Step40Add0Work
    (by decide +kernel) (by decide +kernel) s6Step40Add0_distinct
    (fun q hq => s6Step40Add0_owned (List.mem_toFinset.mpr hq)) s6Step40Add0_borrowed
def s6Step40Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step40Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 776]
def s6Step40Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 868, 775]
def s6Step40Add1Work : List Wire := [803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894]
theorem s6Step40Add1_bounded : s6Step40Add1Work.toFinset⊆arenaWires := by
  have h : s6Step40Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step40Add1During : Arena := ⟨s6Step40Add1Arena.live∪s6Step40Add1Work.toFinset,Finset.union_subset s6Step40Add1Arena.bounded s6Step40Add1_bounded⟩
theorem s6Step40Add1_distinct : (877::779::855::(s6Step40Add1A++s6Step40Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step40Add1_owned : (877::779::855::(s6Step40Add1A++s6Step40Add1B)).toFinset⊆s6Step40Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step40Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40Add1_apart : Disjoint s6Step40Add1Arena.live s6Step40Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step40Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step40Add1_card : s6Step40Add1Arena.live.card=855 := by
  decide +kernel
theorem s6Step40Add1_borrowed : s6Step40Add1Arena.checkBorrow (hmrHybridCount s6Step40Add1Arena s6Step40Add1B.length) s6Step40Add1Work=some s6Step40Add1During := by
  have len : s6Step40Add1Work.length=hmrHybridCount s6Step40Add1Arena s6Step40Add1B.length := by
    rw [hmrHybridCount,s6Step40Add1_card]
    decide +kernel
  have nd : s6Step40Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step40Add1Arena s6Step40Add1During s6Step40Add1Work.toFinset s6Step40Add1_bounded s6Step40Add1_apart rfl
theorem s6Step40Add1_checked : compileHmrHybridCinLog s6Step40Add1Arena 779 877 855 s6Step40Add1A s6Step40Add1B s6Step40Add1Work=some s6Step40Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step40Add1Arena s6Step40Add1During 779 877 855 s6Step40Add1A s6Step40Add1B s6Step40Add1Work
    (by decide +kernel) (by decide +kernel) s6Step40Add1_distinct
    (fun q hq => s6Step40Add1_owned (List.mem_toFinset.mpr hq)) s6Step40Add1_borrowed
def s6Step41Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step41Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 907, 795]
def s6Step41Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 868, 777]
def s6Step41Add0Work : List Wire := [803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step41Add0_bounded : s6Step41Add0Work.toFinset⊆arenaWires := by
  have h : s6Step41Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step41Add0During : Arena := ⟨s6Step41Add0Arena.live∪s6Step41Add0Work.toFinset,Finset.union_subset s6Step41Add0Arena.bounded s6Step41Add0_bounded⟩
theorem s6Step41Add0_distinct : (877::908::855::(s6Step41Add0A++s6Step41Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41Add0_owned : (877::908::855::(s6Step41Add0A++s6Step41Add0B)).toFinset⊆s6Step41Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step41Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41Add0_apart : Disjoint s6Step41Add0Arena.live s6Step41Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step41Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41Add0_card : s6Step41Add0Arena.live.card=855 := by
  decide +kernel
theorem s6Step41Add0_borrowed : s6Step41Add0Arena.checkBorrow (hmrHybridCount s6Step41Add0Arena s6Step41Add0B.length) s6Step41Add0Work=some s6Step41Add0During := by
  have len : s6Step41Add0Work.length=hmrHybridCount s6Step41Add0Arena s6Step41Add0B.length := by
    rw [hmrHybridCount,s6Step41Add0_card]
    decide +kernel
  have nd : s6Step41Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step41Add0Arena s6Step41Add0During s6Step41Add0Work.toFinset s6Step41Add0_bounded s6Step41Add0_apart rfl
theorem s6Step41Add0_checked : compileHmrHybridCinLog s6Step41Add0Arena 908 877 855 s6Step41Add0A s6Step41Add0B s6Step41Add0Work=some s6Step41Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step41Add0Arena s6Step41Add0During 908 877 855 s6Step41Add0A s6Step41Add0B s6Step41Add0Work
    (by decide +kernel) (by decide +kernel) s6Step41Add0_distinct
    (fun q hq => s6Step41Add0_owned (List.mem_toFinset.mpr hq)) s6Step41Add0_borrowed
def s6Step41Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step41Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 875, 776]
def s6Step41Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 779, 793, 775]
def s6Step41Add1Work : List Wire := [803, 922, 879, 784, 861, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826]
theorem s6Step41Add1_bounded : s6Step41Add1Work.toFinset⊆arenaWires := by
  have h : s6Step41Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step41Add1During : Arena := ⟨s6Step41Add1Arena.live∪s6Step41Add1Work.toFinset,Finset.union_subset s6Step41Add1Arena.bounded s6Step41Add1_bounded⟩
theorem s6Step41Add1_distinct : (877::908::855::(s6Step41Add1A++s6Step41Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step41Add1_owned : (877::908::855::(s6Step41Add1A++s6Step41Add1B)).toFinset⊆s6Step41Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step41Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41Add1_apart : Disjoint s6Step41Add1Arena.live s6Step41Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step41Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,866),(867,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step41Add1_card : s6Step41Add1Arena.live.card=855 := by
  decide +kernel
theorem s6Step41Add1_borrowed : s6Step41Add1Arena.checkBorrow (hmrHybridCount s6Step41Add1Arena s6Step41Add1B.length) s6Step41Add1Work=some s6Step41Add1During := by
  have len : s6Step41Add1Work.length=hmrHybridCount s6Step41Add1Arena s6Step41Add1B.length := by
    rw [hmrHybridCount,s6Step41Add1_card]
    decide +kernel
  have nd : s6Step41Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step41Add1Arena s6Step41Add1During s6Step41Add1Work.toFinset s6Step41Add1_bounded s6Step41Add1_apart rfl
theorem s6Step41Add1_checked : compileHmrHybridCinLog s6Step41Add1Arena 908 877 855 s6Step41Add1A s6Step41Add1B s6Step41Add1Work=some s6Step41Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step41Add1Arena s6Step41Add1During 908 877 855 s6Step41Add1A s6Step41Add1B s6Step41Add1Work
    (by decide +kernel) (by decide +kernel) s6Step41Add1_distinct
    (fun q hq => s6Step41Add1_owned (List.mem_toFinset.mpr hq)) s6Step41Add1_borrowed
def s6Step42Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step42Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 875, 795]
def s6Step42Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 793, 777]
def s6Step42Add0Work : List Wire := [803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step42Add0_bounded : s6Step42Add0Work.toFinset⊆arenaWires := by
  have h : s6Step42Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step42Add0During : Arena := ⟨s6Step42Add0Arena.live∪s6Step42Add0Work.toFinset,Finset.union_subset s6Step42Add0Arena.bounded s6Step42Add0_bounded⟩
theorem s6Step42Add0_distinct : (877::779::855::(s6Step42Add0A++s6Step42Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42Add0_owned : (877::779::855::(s6Step42Add0A++s6Step42Add0B)).toFinset⊆s6Step42Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step42Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42Add0_apart : Disjoint s6Step42Add0Arena.live s6Step42Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step42Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42Add0_card : s6Step42Add0Arena.live.card=856 := by
  decide +kernel
theorem s6Step42Add0_borrowed : s6Step42Add0Arena.checkBorrow (hmrHybridCount s6Step42Add0Arena s6Step42Add0B.length) s6Step42Add0Work=some s6Step42Add0During := by
  have len : s6Step42Add0Work.length=hmrHybridCount s6Step42Add0Arena s6Step42Add0B.length := by
    rw [hmrHybridCount,s6Step42Add0_card]
    decide +kernel
  have nd : s6Step42Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step42Add0Arena s6Step42Add0During s6Step42Add0Work.toFinset s6Step42Add0_bounded s6Step42Add0_apart rfl
theorem s6Step42Add0_checked : compileHmrHybridCinLog s6Step42Add0Arena 779 877 855 s6Step42Add0A s6Step42Add0B s6Step42Add0Work=some s6Step42Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step42Add0Arena s6Step42Add0During 779 877 855 s6Step42Add0A s6Step42Add0B s6Step42Add0Work
    (by decide +kernel) (by decide +kernel) s6Step42Add0_distinct
    (fun q hq => s6Step42Add0_owned (List.mem_toFinset.mpr hq)) s6Step42Add0_borrowed
def s6Step42Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step42Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 868, 776]
def s6Step42Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 775]
def s6Step42Add1Work : List Wire := [803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923]
theorem s6Step42Add1_bounded : s6Step42Add1Work.toFinset⊆arenaWires := by
  have h : s6Step42Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step42Add1During : Arena := ⟨s6Step42Add1Arena.live∪s6Step42Add1Work.toFinset,Finset.union_subset s6Step42Add1Arena.bounded s6Step42Add1_bounded⟩
theorem s6Step42Add1_distinct : (877::779::855::(s6Step42Add1A++s6Step42Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step42Add1_owned : (877::779::855::(s6Step42Add1A++s6Step42Add1B)).toFinset⊆s6Step42Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step42Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42Add1_apart : Disjoint s6Step42Add1Arena.live s6Step42Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step42Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step42Add1_card : s6Step42Add1Arena.live.card=856 := by
  decide +kernel
theorem s6Step42Add1_borrowed : s6Step42Add1Arena.checkBorrow (hmrHybridCount s6Step42Add1Arena s6Step42Add1B.length) s6Step42Add1Work=some s6Step42Add1During := by
  have len : s6Step42Add1Work.length=hmrHybridCount s6Step42Add1Arena s6Step42Add1B.length := by
    rw [hmrHybridCount,s6Step42Add1_card]
    decide +kernel
  have nd : s6Step42Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step42Add1Arena s6Step42Add1During s6Step42Add1Work.toFinset s6Step42Add1_bounded s6Step42Add1_apart rfl
theorem s6Step42Add1_checked : compileHmrHybridCinLog s6Step42Add1Arena 779 877 855 s6Step42Add1A s6Step42Add1B s6Step42Add1Work=some s6Step42Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step42Add1Arena s6Step42Add1During 779 877 855 s6Step42Add1A s6Step42Add1B s6Step42Add1Work
    (by decide +kernel) (by decide +kernel) s6Step42Add1_distinct
    (fun q hq => s6Step42Add1_owned (List.mem_toFinset.mpr hq)) s6Step42Add1_borrowed
def s6Step43Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step43Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 868, 795]
def s6Step43Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 805, 777]
def s6Step43Add0Work : List Wire := [803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step43Add0_bounded : s6Step43Add0Work.toFinset⊆arenaWires := by
  have h : s6Step43Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step43Add0During : Arena := ⟨s6Step43Add0Arena.live∪s6Step43Add0Work.toFinset,Finset.union_subset s6Step43Add0Arena.bounded s6Step43Add0_bounded⟩
theorem s6Step43Add0_distinct : (877::890::855::(s6Step43Add0A++s6Step43Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43Add0_owned : (877::890::855::(s6Step43Add0A++s6Step43Add0B)).toFinset⊆s6Step43Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step43Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43Add0_apart : Disjoint s6Step43Add0Arena.live s6Step43Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step43Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43Add0_card : s6Step43Add0Arena.live.card=856 := by
  decide +kernel
theorem s6Step43Add0_borrowed : s6Step43Add0Arena.checkBorrow (hmrHybridCount s6Step43Add0Arena s6Step43Add0B.length) s6Step43Add0Work=some s6Step43Add0During := by
  have len : s6Step43Add0Work.length=hmrHybridCount s6Step43Add0Arena s6Step43Add0B.length := by
    rw [hmrHybridCount,s6Step43Add0_card]
    decide +kernel
  have nd : s6Step43Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step43Add0Arena s6Step43Add0During s6Step43Add0Work.toFinset s6Step43Add0_bounded s6Step43Add0_apart rfl
theorem s6Step43Add0_checked : compileHmrHybridCinLog s6Step43Add0Arena 890 877 855 s6Step43Add0A s6Step43Add0B s6Step43Add0Work=some s6Step43Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step43Add0Arena s6Step43Add0During 890 877 855 s6Step43Add0A s6Step43Add0B s6Step43Add0Work
    (by decide +kernel) (by decide +kernel) s6Step43Add0_distinct
    (fun q hq => s6Step43Add0_owned (List.mem_toFinset.mpr hq)) s6Step43Add0_borrowed
def s6Step43Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step43Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 779, 793, 776]
def s6Step43Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 875, 775]
def s6Step43Add1Work : List Wire := [803, 922, 879, 784, 861, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809]
theorem s6Step43Add1_bounded : s6Step43Add1Work.toFinset⊆arenaWires := by
  have h : s6Step43Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step43Add1During : Arena := ⟨s6Step43Add1Arena.live∪s6Step43Add1Work.toFinset,Finset.union_subset s6Step43Add1Arena.bounded s6Step43Add1_bounded⟩
theorem s6Step43Add1_distinct : (877::890::855::(s6Step43Add1A++s6Step43Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step43Add1_owned : (877::890::855::(s6Step43Add1A++s6Step43Add1B)).toFinset⊆s6Step43Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step43Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43Add1_apart : Disjoint s6Step43Add1Arena.live s6Step43Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step43Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,861),(862,871),(872,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step43Add1_card : s6Step43Add1Arena.live.card=856 := by
  decide +kernel
theorem s6Step43Add1_borrowed : s6Step43Add1Arena.checkBorrow (hmrHybridCount s6Step43Add1Arena s6Step43Add1B.length) s6Step43Add1Work=some s6Step43Add1During := by
  have len : s6Step43Add1Work.length=hmrHybridCount s6Step43Add1Arena s6Step43Add1B.length := by
    rw [hmrHybridCount,s6Step43Add1_card]
    decide +kernel
  have nd : s6Step43Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step43Add1Arena s6Step43Add1During s6Step43Add1Work.toFinset s6Step43Add1_bounded s6Step43Add1_apart rfl
theorem s6Step43Add1_checked : compileHmrHybridCinLog s6Step43Add1Arena 890 877 855 s6Step43Add1A s6Step43Add1B s6Step43Add1Work=some s6Step43Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step43Add1Arena s6Step43Add1During 890 877 855 s6Step43Add1A s6Step43Add1B s6Step43Add1Work
    (by decide +kernel) (by decide +kernel) s6Step43Add1_distinct
    (fun q hq => s6Step43Add1_owned (List.mem_toFinset.mpr hq)) s6Step43Add1_borrowed
def s6Step44Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step44Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 875, 795]
def s6Step44Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 796, 777]
def s6Step44Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step44Add0_bounded : s6Step44Add0Work.toFinset⊆arenaWires := by
  have h : s6Step44Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step44Add0During : Arena := ⟨s6Step44Add0Arena.live∪s6Step44Add0Work.toFinset,Finset.union_subset s6Step44Add0Arena.bounded s6Step44Add0_bounded⟩
theorem s6Step44Add0_distinct : (868::873::805::(s6Step44Add0A++s6Step44Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44Add0_owned : (868::873::805::(s6Step44Add0A++s6Step44Add0B)).toFinset⊆s6Step44Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step44Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44Add0_apart : Disjoint s6Step44Add0Arena.live s6Step44Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step44Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44Add0_card : s6Step44Add0Arena.live.card=855 := by
  decide +kernel
theorem s6Step44Add0_borrowed : s6Step44Add0Arena.checkBorrow (hmrHybridCount s6Step44Add0Arena s6Step44Add0B.length) s6Step44Add0Work=some s6Step44Add0During := by
  have len : s6Step44Add0Work.length=hmrHybridCount s6Step44Add0Arena s6Step44Add0B.length := by
    rw [hmrHybridCount,s6Step44Add0_card]
    decide +kernel
  have nd : s6Step44Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step44Add0Arena s6Step44Add0During s6Step44Add0Work.toFinset s6Step44Add0_bounded s6Step44Add0_apart rfl
theorem s6Step44Add0_checked : compileHmrHybridCinLog s6Step44Add0Arena 873 868 805 s6Step44Add0A s6Step44Add0B s6Step44Add0Work=some s6Step44Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step44Add0Arena s6Step44Add0During 873 868 805 s6Step44Add0A s6Step44Add0B s6Step44Add0Work
    (by decide +kernel) (by decide +kernel) s6Step44Add0_distinct
    (fun q hq => s6Step44Add0_owned (List.mem_toFinset.mpr hq)) s6Step44Add0_borrowed
def s6Step44Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step44Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 793, 776]
def s6Step44Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 779, 775]
def s6Step44Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923]
theorem s6Step44Add1_bounded : s6Step44Add1Work.toFinset⊆arenaWires := by
  have h : s6Step44Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step44Add1During : Arena := ⟨s6Step44Add1Arena.live∪s6Step44Add1Work.toFinset,Finset.union_subset s6Step44Add1Arena.bounded s6Step44Add1_bounded⟩
theorem s6Step44Add1_distinct : (868::873::805::(s6Step44Add1A++s6Step44Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step44Add1_owned : (868::873::805::(s6Step44Add1A++s6Step44Add1B)).toFinset⊆s6Step44Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step44Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44Add1_apart : Disjoint s6Step44Add1Arena.live s6Step44Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step44Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step44Add1_card : s6Step44Add1Arena.live.card=855 := by
  decide +kernel
theorem s6Step44Add1_borrowed : s6Step44Add1Arena.checkBorrow (hmrHybridCount s6Step44Add1Arena s6Step44Add1B.length) s6Step44Add1Work=some s6Step44Add1During := by
  have len : s6Step44Add1Work.length=hmrHybridCount s6Step44Add1Arena s6Step44Add1B.length := by
    rw [hmrHybridCount,s6Step44Add1_card]
    decide +kernel
  have nd : s6Step44Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step44Add1Arena s6Step44Add1During s6Step44Add1Work.toFinset s6Step44Add1_bounded s6Step44Add1_apart rfl
theorem s6Step44Add1_checked : compileHmrHybridCinLog s6Step44Add1Arena 873 868 805 s6Step44Add1A s6Step44Add1B s6Step44Add1Work=some s6Step44Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step44Add1Arena s6Step44Add1During 873 868 805 s6Step44Add1A s6Step44Add1B s6Step44Add1Work
    (by decide +kernel) (by decide +kernel) s6Step44Add1_distinct
    (fun q hq => s6Step44Add1_owned (List.mem_toFinset.mpr hq)) s6Step44Add1_borrowed
def s6Step45Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step45Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 793, 795]
def s6Step45Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 873, 779, 777]
def s6Step45Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step45Add0_bounded : s6Step45Add0Work.toFinset⊆arenaWires := by
  have h : s6Step45Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step45Add0During : Arena := ⟨s6Step45Add0Arena.live∪s6Step45Add0Work.toFinset,Finset.union_subset s6Step45Add0Arena.bounded s6Step45Add0_bounded⟩
theorem s6Step45Add0_distinct : (868::856::805::(s6Step45Add0A++s6Step45Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45Add0_owned : (868::856::805::(s6Step45Add0A++s6Step45Add0B)).toFinset⊆s6Step45Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step45Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45Add0_apart : Disjoint s6Step45Add0Arena.live s6Step45Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step45Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45Add0_card : s6Step45Add0Arena.live.card=855 := by
  decide +kernel
theorem s6Step45Add0_borrowed : s6Step45Add0Arena.checkBorrow (hmrHybridCount s6Step45Add0Arena s6Step45Add0B.length) s6Step45Add0Work=some s6Step45Add0During := by
  have len : s6Step45Add0Work.length=hmrHybridCount s6Step45Add0Arena s6Step45Add0B.length := by
    rw [hmrHybridCount,s6Step45Add0_card]
    decide +kernel
  have nd : s6Step45Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step45Add0Arena s6Step45Add0During s6Step45Add0Work.toFinset s6Step45Add0_bounded s6Step45Add0_apart rfl
theorem s6Step45Add0_checked : compileHmrHybridCinLog s6Step45Add0Arena 856 868 805 s6Step45Add0A s6Step45Add0B s6Step45Add0Work=some s6Step45Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step45Add0Arena s6Step45Add0During 856 868 805 s6Step45Add0A s6Step45Add0B s6Step45Add0Work
    (by decide +kernel) (by decide +kernel) s6Step45Add0_distinct
    (fun q hq => s6Step45Add0_owned (List.mem_toFinset.mpr hq)) s6Step45Add0_borrowed
def s6Step45Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step45Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 776]
def s6Step45Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 875, 775]
def s6Step45Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 921, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923]
theorem s6Step45Add1_bounded : s6Step45Add1Work.toFinset⊆arenaWires := by
  have h : s6Step45Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step45Add1During : Arena := ⟨s6Step45Add1Arena.live∪s6Step45Add1Work.toFinset,Finset.union_subset s6Step45Add1Arena.bounded s6Step45Add1_bounded⟩
theorem s6Step45Add1_distinct : (868::856::805::(s6Step45Add1A++s6Step45Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step45Add1_owned : (868::856::805::(s6Step45Add1A++s6Step45Add1B)).toFinset⊆s6Step45Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step45Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45Add1_apart : Disjoint s6Step45Add1Arena.live s6Step45Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step45Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step45Add1_card : s6Step45Add1Arena.live.card=855 := by
  decide +kernel
theorem s6Step45Add1_borrowed : s6Step45Add1Arena.checkBorrow (hmrHybridCount s6Step45Add1Arena s6Step45Add1B.length) s6Step45Add1Work=some s6Step45Add1During := by
  have len : s6Step45Add1Work.length=hmrHybridCount s6Step45Add1Arena s6Step45Add1B.length := by
    rw [hmrHybridCount,s6Step45Add1_card]
    decide +kernel
  have nd : s6Step45Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step45Add1Arena s6Step45Add1During s6Step45Add1Work.toFinset s6Step45Add1_bounded s6Step45Add1_apart rfl
theorem s6Step45Add1_checked : compileHmrHybridCinLog s6Step45Add1Arena 856 868 805 s6Step45Add1A s6Step45Add1B s6Step45Add1Work=some s6Step45Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step45Add1Arena s6Step45Add1During 856 868 805 s6Step45Add1A s6Step45Add1B s6Step45Add1Work
    (by decide +kernel) (by decide +kernel) s6Step45Add1_distinct
    (fun q hq => s6Step45Add1_owned (List.mem_toFinset.mpr hq)) s6Step45Add1_borrowed
def s6Step46Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step46Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 793, 795]
def s6Step46Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 875, 777]
def s6Step46Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step46Add0_bounded : s6Step46Add0Work.toFinset⊆arenaWires := by
  have h : s6Step46Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step46Add0During : Arena := ⟨s6Step46Add0Arena.live∪s6Step46Add0Work.toFinset,Finset.union_subset s6Step46Add0Arena.bounded s6Step46Add0_bounded⟩
theorem s6Step46Add0_distinct : (868::863::805::(s6Step46Add0A++s6Step46Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46Add0_owned : (868::863::805::(s6Step46Add0A++s6Step46Add0B)).toFinset⊆s6Step46Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step46Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46Add0_apart : Disjoint s6Step46Add0Arena.live s6Step46Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step46Add0Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46Add0_card : s6Step46Add0Arena.live.card=856 := by
  decide +kernel
theorem s6Step46Add0_borrowed : s6Step46Add0Arena.checkBorrow (hmrHybridCount s6Step46Add0Arena s6Step46Add0B.length) s6Step46Add0Work=some s6Step46Add0During := by
  have len : s6Step46Add0Work.length=hmrHybridCount s6Step46Add0Arena s6Step46Add0B.length := by
    rw [hmrHybridCount,s6Step46Add0_card]
    decide +kernel
  have nd : s6Step46Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step46Add0Arena s6Step46Add0During s6Step46Add0Work.toFinset s6Step46Add0_bounded s6Step46Add0_apart rfl
theorem s6Step46Add0_checked : compileHmrHybridCinLog s6Step46Add0Arena 863 868 805 s6Step46Add0A s6Step46Add0B s6Step46Add0Work=some s6Step46Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step46Add0Arena s6Step46Add0During 863 868 805 s6Step46Add0A s6Step46Add0B s6Step46Add0Work
    (by decide +kernel) (by decide +kernel) s6Step46Add0_distinct
    (fun q hq => s6Step46Add0_owned (List.mem_toFinset.mpr hq)) s6Step46Add0_borrowed
def s6Step46Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step46Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 813, 876, 859, 874, 887, 890, 796, 779, 776]
def s6Step46Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 927, 802, 857, 858, 908, 907, 856, 873, 775]
def s6Step46Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897]
theorem s6Step46Add1_bounded : s6Step46Add1Work.toFinset⊆arenaWires := by
  have h : s6Step46Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step46Add1During : Arena := ⟨s6Step46Add1Arena.live∪s6Step46Add1Work.toFinset,Finset.union_subset s6Step46Add1Arena.bounded s6Step46Add1_bounded⟩
theorem s6Step46Add1_distinct : (868::863::805::(s6Step46Add1A++s6Step46Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step46Add1_owned : (868::863::805::(s6Step46Add1A++s6Step46Add1B)).toFinset⊆s6Step46Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step46Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46Add1_apart : Disjoint s6Step46Add1Arena.live s6Step46Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step46Add1Arena (fun q => ([(0,782),(785,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(835,836),(838,840),(841,842),(843,844),(845,846),(848,849),(850,855),(856,871),(872,877),(878,879),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(921,922),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step46Add1_card : s6Step46Add1Arena.live.card=856 := by
  decide +kernel
theorem s6Step46Add1_borrowed : s6Step46Add1Arena.checkBorrow (hmrHybridCount s6Step46Add1Arena s6Step46Add1B.length) s6Step46Add1Work=some s6Step46Add1During := by
  have len : s6Step46Add1Work.length=hmrHybridCount s6Step46Add1Arena s6Step46Add1B.length := by
    rw [hmrHybridCount,s6Step46Add1_card]
    decide +kernel
  have nd : s6Step46Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step46Add1Arena s6Step46Add1During s6Step46Add1Work.toFinset s6Step46Add1_bounded s6Step46Add1_apart rfl
theorem s6Step46Add1_checked : compileHmrHybridCinLog s6Step46Add1Arena 863 868 805 s6Step46Add1A s6Step46Add1B s6Step46Add1Work=some s6Step46Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step46Add1Arena s6Step46Add1During 863 868 805 s6Step46Add1A s6Step46Add1B s6Step46Add1Work
    (by decide +kernel) (by decide +kernel) s6Step46Add1_distinct
    (fun q hq => s6Step46Add1_owned (List.mem_toFinset.mpr hq)) s6Step46Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
