import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk4

namespace ECDSAAdd.Arithmetic.Paper935
def s6Step15Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813, 795]
def s6Step15Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860, 777]
def s6Step15Add0Work : List Wire := [778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step15Add0_bounded : s6Step15Add0Work.toFinset⊆arenaWires := by
  have h : s6Step15Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step15Add0During : Arena := ⟨s6Step15Add0Arena.live∪s6Step15Add0Work.toFinset,Finset.union_subset s6Step15Add0Arena.bounded s6Step15Add0_bounded⟩
theorem s6Step15Add0_distinct : (888::807::886::(s6Step15Add0A++s6Step15Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15Add0_owned : (888::807::886::(s6Step15Add0A++s6Step15Add0B)).toFinset⊆s6Step15Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step15Add0Arena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15Add0_apart : Disjoint s6Step15Add0Arena.live s6Step15Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step15Add0Arena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15Add0_card : s6Step15Add0Arena.live.card=822 := by
  decide +kernel
theorem s6Step15Add0_borrowed : s6Step15Add0Arena.checkBorrow (hmrHybridCount s6Step15Add0Arena s6Step15Add0B.length) s6Step15Add0Work=some s6Step15Add0During := by
  have len : s6Step15Add0Work.length=hmrHybridCount s6Step15Add0Arena s6Step15Add0B.length := by
    rw [hmrHybridCount,s6Step15Add0_card]
    decide +kernel
  have nd : s6Step15Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step15Add0Arena s6Step15Add0During s6Step15Add0Work.toFinset s6Step15Add0_bounded s6Step15Add0_apart rfl
theorem s6Step15Add0_checked : compileHmrHybridCinLog s6Step15Add0Arena 807 888 886 s6Step15Add0A s6Step15Add0B s6Step15Add0Work=some s6Step15Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step15Add0Arena s6Step15Add0During 807 888 886 s6Step15Add0A s6Step15Add0B s6Step15Add0Work
    (by decide +kernel) (by decide +kernel) s6Step15Add0_distinct
    (fun q hq => s6Step15Add0_owned (List.mem_toFinset.mpr hq)) s6Step15Add0_borrowed
def s6Step15Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step15Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 776]
def s6Step15Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 887, 780, 775]
def s6Step15Add1Work : List Wire := [778, 838, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911]
theorem s6Step15Add1_bounded : s6Step15Add1Work.toFinset⊆arenaWires := by
  have h : s6Step15Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step15Add1During : Arena := ⟨s6Step15Add1Arena.live∪s6Step15Add1Work.toFinset,Finset.union_subset s6Step15Add1Arena.bounded s6Step15Add1_bounded⟩
theorem s6Step15Add1_distinct : (888::807::886::(s6Step15Add1A++s6Step15Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step15Add1_owned : (888::807::886::(s6Step15Add1A++s6Step15Add1B)).toFinset⊆s6Step15Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step15Add1Arena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15Add1_apart : Disjoint s6Step15Add1Arena.live s6Step15Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step15Add1Arena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (833≤q ∧ q<834) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step15Add1_card : s6Step15Add1Arena.live.card=822 := by
  decide +kernel
theorem s6Step15Add1_borrowed : s6Step15Add1Arena.checkBorrow (hmrHybridCount s6Step15Add1Arena s6Step15Add1B.length) s6Step15Add1Work=some s6Step15Add1During := by
  have len : s6Step15Add1Work.length=hmrHybridCount s6Step15Add1Arena s6Step15Add1B.length := by
    rw [hmrHybridCount,s6Step15Add1_card]
    decide +kernel
  have nd : s6Step15Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step15Add1Arena s6Step15Add1During s6Step15Add1Work.toFinset s6Step15Add1_bounded s6Step15Add1_apart rfl
theorem s6Step15Add1_checked : compileHmrHybridCinLog s6Step15Add1Arena 807 888 886 s6Step15Add1A s6Step15Add1B s6Step15Add1Work=some s6Step15Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step15Add1Arena s6Step15Add1During 807 888 886 s6Step15Add1A s6Step15Add1B s6Step15Add1Work
    (by decide +kernel) (by decide +kernel) s6Step15Add1_distinct
    (fun q hq => s6Step15Add1_owned (List.mem_toFinset.mpr hq)) s6Step15Add1_borrowed
def s6Step16Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step16Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860, 795]
def s6Step16Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862, 777]
def s6Step16Add0Work : List Wire := [814, 821, 869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step16Add0_bounded : s6Step16Add0Work.toFinset⊆arenaWires := by
  have h : s6Step16Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step16Add0During : Arena := ⟨s6Step16Add0Arena.live∪s6Step16Add0Work.toFinset,Finset.union_subset s6Step16Add0Arena.bounded s6Step16Add0_bounded⟩
theorem s6Step16Add0_distinct : (778::813::838::(s6Step16Add0A++s6Step16Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16Add0_owned : (778::813::838::(s6Step16Add0A++s6Step16Add0B)).toFinset⊆s6Step16Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step16Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16Add0_apart : Disjoint s6Step16Add0Arena.live s6Step16Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step16Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16Add0_card : s6Step16Add0Arena.live.card=825 := by
  decide +kernel
theorem s6Step16Add0_borrowed : s6Step16Add0Arena.checkBorrow (hmrHybridCount s6Step16Add0Arena s6Step16Add0B.length) s6Step16Add0Work=some s6Step16Add0During := by
  have len : s6Step16Add0Work.length=hmrHybridCount s6Step16Add0Arena s6Step16Add0B.length := by
    rw [hmrHybridCount,s6Step16Add0_card]
    decide +kernel
  have nd : s6Step16Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step16Add0Arena s6Step16Add0During s6Step16Add0Work.toFinset s6Step16Add0_bounded s6Step16Add0_apart rfl
theorem s6Step16Add0_checked : compileHmrHybridCinLog s6Step16Add0Arena 813 778 838 s6Step16Add0A s6Step16Add0B s6Step16Add0Work=some s6Step16Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step16Add0Arena s6Step16Add0During 813 778 838 s6Step16Add0A s6Step16Add0B s6Step16Add0Work
    (by decide +kernel) (by decide +kernel) s6Step16Add0_distinct
    (fun q hq => s6Step16Add0_owned (List.mem_toFinset.mpr hq)) s6Step16Add0_borrowed
def s6Step16Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step16Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 776]
def s6Step16Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 887, 888, 775]
def s6Step16Add1Work : List Wire := [814, 821, 869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786]
theorem s6Step16Add1_bounded : s6Step16Add1Work.toFinset⊆arenaWires := by
  have h : s6Step16Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step16Add1During : Arena := ⟨s6Step16Add1Arena.live∪s6Step16Add1Work.toFinset,Finset.union_subset s6Step16Add1Arena.bounded s6Step16Add1_bounded⟩
theorem s6Step16Add1_distinct : (778::813::838::(s6Step16Add1A++s6Step16Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step16Add1_owned : (778::813::838::(s6Step16Add1A++s6Step16Add1B)).toFinset⊆s6Step16Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step16Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16Add1_apart : Disjoint s6Step16Add1Arena.live s6Step16Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step16Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step16Add1_card : s6Step16Add1Arena.live.card=825 := by
  decide +kernel
theorem s6Step16Add1_borrowed : s6Step16Add1Arena.checkBorrow (hmrHybridCount s6Step16Add1Arena s6Step16Add1B.length) s6Step16Add1Work=some s6Step16Add1During := by
  have len : s6Step16Add1Work.length=hmrHybridCount s6Step16Add1Arena s6Step16Add1B.length := by
    rw [hmrHybridCount,s6Step16Add1_card]
    decide +kernel
  have nd : s6Step16Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step16Add1Arena s6Step16Add1During s6Step16Add1Work.toFinset s6Step16Add1_bounded s6Step16Add1_apart rfl
theorem s6Step16Add1_checked : compileHmrHybridCinLog s6Step16Add1Arena 813 778 838 s6Step16Add1A s6Step16Add1B s6Step16Add1Work=some s6Step16Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step16Add1Arena s6Step16Add1During 813 778 838 s6Step16Add1A s6Step16Add1B s6Step16Add1Work
    (by decide +kernel) (by decide +kernel) s6Step16Add1_distinct
    (fun q hq => s6Step16Add1_owned (List.mem_toFinset.mpr hq)) s6Step16Add1_borrowed
def s6Step17Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step17Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862, 795]
def s6Step17Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807, 777]
def s6Step17Add0Work : List Wire := [869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step17Add0_bounded : s6Step17Add0Work.toFinset⊆arenaWires := by
  have h : s6Step17Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step17Add0During : Arena := ⟨s6Step17Add0Arena.live∪s6Step17Add0Work.toFinset,Finset.union_subset s6Step17Add0Arena.bounded s6Step17Add0_bounded⟩
theorem s6Step17Add0_distinct : (814::860::821::(s6Step17Add0A++s6Step17Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17Add0_owned : (814::860::821::(s6Step17Add0A++s6Step17Add0B)).toFinset⊆s6Step17Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step17Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17Add0_apart : Disjoint s6Step17Add0Arena.live s6Step17Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step17Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17Add0_card : s6Step17Add0Arena.live.card=827 := by
  decide +kernel
theorem s6Step17Add0_borrowed : s6Step17Add0Arena.checkBorrow (hmrHybridCount s6Step17Add0Arena s6Step17Add0B.length) s6Step17Add0Work=some s6Step17Add0During := by
  have len : s6Step17Add0Work.length=hmrHybridCount s6Step17Add0Arena s6Step17Add0B.length := by
    rw [hmrHybridCount,s6Step17Add0_card]
    decide +kernel
  have nd : s6Step17Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step17Add0Arena s6Step17Add0During s6Step17Add0Work.toFinset s6Step17Add0_bounded s6Step17Add0_apart rfl
theorem s6Step17Add0_checked : compileHmrHybridCinLog s6Step17Add0Arena 860 814 821 s6Step17Add0A s6Step17Add0B s6Step17Add0Work=some s6Step17Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step17Add0Arena s6Step17Add0During 860 814 821 s6Step17Add0A s6Step17Add0B s6Step17Add0Work
    (by decide +kernel) (by decide +kernel) s6Step17Add0_distinct
    (fun q hq => s6Step17Add0_owned (List.mem_toFinset.mpr hq)) s6Step17Add0_borrowed
def s6Step17Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step17Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 776]
def s6Step17Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 887, 778, 775]
def s6Step17Add1Work : List Wire := [869, 843, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855]
theorem s6Step17Add1_bounded : s6Step17Add1Work.toFinset⊆arenaWires := by
  have h : s6Step17Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step17Add1During : Arena := ⟨s6Step17Add1Arena.live∪s6Step17Add1Work.toFinset,Finset.union_subset s6Step17Add1Arena.bounded s6Step17Add1_bounded⟩
theorem s6Step17Add1_distinct : (814::860::821::(s6Step17Add1A++s6Step17Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step17Add1_owned : (814::860::821::(s6Step17Add1A++s6Step17Add1B)).toFinset⊆s6Step17Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step17Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17Add1_apart : Disjoint s6Step17Add1Arena.live s6Step17Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step17Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (845≤q ∧ q<846) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<869) ∨ (870≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step17Add1_card : s6Step17Add1Arena.live.card=827 := by
  decide +kernel
theorem s6Step17Add1_borrowed : s6Step17Add1Arena.checkBorrow (hmrHybridCount s6Step17Add1Arena s6Step17Add1B.length) s6Step17Add1Work=some s6Step17Add1During := by
  have len : s6Step17Add1Work.length=hmrHybridCount s6Step17Add1Arena s6Step17Add1B.length := by
    rw [hmrHybridCount,s6Step17Add1_card]
    decide +kernel
  have nd : s6Step17Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step17Add1Arena s6Step17Add1During s6Step17Add1Work.toFinset s6Step17Add1_bounded s6Step17Add1_apart rfl
theorem s6Step17Add1_checked : compileHmrHybridCinLog s6Step17Add1Arena 860 814 821 s6Step17Add1A s6Step17Add1B s6Step17Add1Work=some s6Step17Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step17Add1Arena s6Step17Add1During 860 814 821 s6Step17Add1A s6Step17Add1B s6Step17Add1Work
    (by decide +kernel) (by decide +kernel) s6Step17Add1_distinct
    (fun q hq => s6Step17Add1_owned (List.mem_toFinset.mpr hq)) s6Step17Add1_borrowed
def s6Step18Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step18Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807, 795]
def s6Step18Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813, 777]
def s6Step18Add0Work : List Wire := [854, 830, 898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step18Add0_bounded : s6Step18Add0Work.toFinset⊆arenaWires := by
  have h : s6Step18Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step18Add0During : Arena := ⟨s6Step18Add0Arena.live∪s6Step18Add0Work.toFinset,Finset.union_subset s6Step18Add0Arena.bounded s6Step18Add0_bounded⟩
theorem s6Step18Add0_distinct : (869::862::843::(s6Step18Add0A++s6Step18Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18Add0_owned : (869::862::843::(s6Step18Add0A++s6Step18Add0B)).toFinset⊆s6Step18Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step18Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18Add0_apart : Disjoint s6Step18Add0Arena.live s6Step18Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step18Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18Add0_card : s6Step18Add0Arena.live.card=830 := by
  decide +kernel
theorem s6Step18Add0_borrowed : s6Step18Add0Arena.checkBorrow (hmrHybridCount s6Step18Add0Arena s6Step18Add0B.length) s6Step18Add0Work=some s6Step18Add0During := by
  have len : s6Step18Add0Work.length=hmrHybridCount s6Step18Add0Arena s6Step18Add0B.length := by
    rw [hmrHybridCount,s6Step18Add0_card]
    decide +kernel
  have nd : s6Step18Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step18Add0Arena s6Step18Add0During s6Step18Add0Work.toFinset s6Step18Add0_bounded s6Step18Add0_apart rfl
theorem s6Step18Add0_checked : compileHmrHybridCinLog s6Step18Add0Arena 862 869 843 s6Step18Add0A s6Step18Add0B s6Step18Add0Work=some s6Step18Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step18Add0Arena s6Step18Add0During 862 869 843 s6Step18Add0A s6Step18Add0B s6Step18Add0Work
    (by decide +kernel) (by decide +kernel) s6Step18Add0_distinct
    (fun q hq => s6Step18Add0_owned (List.mem_toFinset.mpr hq)) s6Step18Add0_borrowed
def s6Step18Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step18Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 776]
def s6Step18Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 887, 814, 775]
def s6Step18Add1Work : List Wire := [854, 830, 898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879]
theorem s6Step18Add1_bounded : s6Step18Add1Work.toFinset⊆arenaWires := by
  have h : s6Step18Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step18Add1During : Arena := ⟨s6Step18Add1Arena.live∪s6Step18Add1Work.toFinset,Finset.union_subset s6Step18Add1Arena.bounded s6Step18Add1_bounded⟩
theorem s6Step18Add1_distinct : (869::862::843::(s6Step18Add1A++s6Step18Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step18Add1_owned : (869::862::843::(s6Step18Add1A++s6Step18Add1B)).toFinset⊆s6Step18Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step18Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18Add1_apart : Disjoint s6Step18Add1Arena.live s6Step18Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step18Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step18Add1_card : s6Step18Add1Arena.live.card=830 := by
  decide +kernel
theorem s6Step18Add1_borrowed : s6Step18Add1Arena.checkBorrow (hmrHybridCount s6Step18Add1Arena s6Step18Add1B.length) s6Step18Add1Work=some s6Step18Add1During := by
  have len : s6Step18Add1Work.length=hmrHybridCount s6Step18Add1Arena s6Step18Add1B.length := by
    rw [hmrHybridCount,s6Step18Add1_card]
    decide +kernel
  have nd : s6Step18Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step18Add1Arena s6Step18Add1During s6Step18Add1Work.toFinset s6Step18Add1_bounded s6Step18Add1_apart rfl
theorem s6Step18Add1_checked : compileHmrHybridCinLog s6Step18Add1Arena 862 869 843 s6Step18Add1A s6Step18Add1B s6Step18Add1Work=some s6Step18Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step18Add1Arena s6Step18Add1During 862 869 843 s6Step18Add1A s6Step18Add1B s6Step18Add1Work
    (by decide +kernel) (by decide +kernel) s6Step18Add1_distinct
    (fun q hq => s6Step18Add1_owned (List.mem_toFinset.mpr hq)) s6Step18Add1_borrowed
def s6Step19Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step19Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813, 795]
def s6Step19Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860, 777]
def s6Step19Add0Work : List Wire := [898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step19Add0_bounded : s6Step19Add0Work.toFinset⊆arenaWires := by
  have h : s6Step19Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step19Add0During : Arena := ⟨s6Step19Add0Arena.live∪s6Step19Add0Work.toFinset,Finset.union_subset s6Step19Add0Arena.bounded s6Step19Add0_bounded⟩
theorem s6Step19Add0_distinct : (854::807::830::(s6Step19Add0A++s6Step19Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19Add0_owned : (854::807::830::(s6Step19Add0A++s6Step19Add0B)).toFinset⊆s6Step19Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step19Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19Add0_apart : Disjoint s6Step19Add0Arena.live s6Step19Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step19Add0Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19Add0_card : s6Step19Add0Arena.live.card=832 := by
  decide +kernel
theorem s6Step19Add0_borrowed : s6Step19Add0Arena.checkBorrow (hmrHybridCount s6Step19Add0Arena s6Step19Add0B.length) s6Step19Add0Work=some s6Step19Add0During := by
  have len : s6Step19Add0Work.length=hmrHybridCount s6Step19Add0Arena s6Step19Add0B.length := by
    rw [hmrHybridCount,s6Step19Add0_card]
    decide +kernel
  have nd : s6Step19Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step19Add0Arena s6Step19Add0During s6Step19Add0Work.toFinset s6Step19Add0_bounded s6Step19Add0_apart rfl
theorem s6Step19Add0_checked : compileHmrHybridCinLog s6Step19Add0Arena 807 854 830 s6Step19Add0A s6Step19Add0B s6Step19Add0Work=some s6Step19Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step19Add0Arena s6Step19Add0During 807 854 830 s6Step19Add0A s6Step19Add0B s6Step19Add0Work
    (by decide +kernel) (by decide +kernel) s6Step19Add0_distinct
    (fun q hq => s6Step19Add0_owned (List.mem_toFinset.mpr hq)) s6Step19Add0_borrowed
def s6Step19Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step19Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 776]
def s6Step19Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 887, 869, 775]
def s6Step19Add1Work : List Wire := [898, 848, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901]
theorem s6Step19Add1_bounded : s6Step19Add1Work.toFinset⊆arenaWires := by
  have h : s6Step19Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step19Add1During : Arena := ⟨s6Step19Add1Arena.live∪s6Step19Add1Work.toFinset,Finset.union_subset s6Step19Add1Arena.bounded s6Step19Add1_bounded⟩
theorem s6Step19Add1_distinct : (854::807::830::(s6Step19Add1A++s6Step19Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step19Add1_owned : (854::807::830::(s6Step19Add1A++s6Step19Add1B)).toFinset⊆s6Step19Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step19Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19Add1_apart : Disjoint s6Step19Add1Arena.live s6Step19Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step19Add1Arena (fun q => (0≤q ∧ q<781) ∨ (789≤q ∧ q<790) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<797) ∨ (802≤q ∧ q<803) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (838≤q ∧ q<839) ∨ (843≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (852≤q ∧ q<853) ∨ (854≤q ∧ q<855) ∨ (856≤q ∧ q<861) ∨ (862≤q ∧ q<866) ∨ (868≤q ∧ q<871) ∨ (872≤q ∧ q<877) ∨ (880≤q ∧ q<881) ∨ (882≤q ∧ q<884) ∨ (886≤q ∧ q<889) ∨ (890≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (907≤q ∧ q<909) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step19Add1_card : s6Step19Add1Arena.live.card=832 := by
  decide +kernel
theorem s6Step19Add1_borrowed : s6Step19Add1Arena.checkBorrow (hmrHybridCount s6Step19Add1Arena s6Step19Add1B.length) s6Step19Add1Work=some s6Step19Add1During := by
  have len : s6Step19Add1Work.length=hmrHybridCount s6Step19Add1Arena s6Step19Add1B.length := by
    rw [hmrHybridCount,s6Step19Add1_card]
    decide +kernel
  have nd : s6Step19Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step19Add1Arena s6Step19Add1During s6Step19Add1Work.toFinset s6Step19Add1_bounded s6Step19Add1_apart rfl
theorem s6Step19Add1_checked : compileHmrHybridCinLog s6Step19Add1Arena 807 854 830 s6Step19Add1A s6Step19Add1B s6Step19Add1Work=some s6Step19Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step19Add1Arena s6Step19Add1During 807 854 830 s6Step19Add1A s6Step19Add1B s6Step19Add1Work
    (by decide +kernel) (by decide +kernel) s6Step19Add1_distinct
    (fun q hq => s6Step19Add1_owned (List.mem_toFinset.mpr hq)) s6Step19Add1_borrowed
def s6Step20Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step20Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860, 795]
def s6Step20Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862, 777]
def s6Step20Add0Work : List Wire := [841, 839, 794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step20Add0_bounded : s6Step20Add0Work.toFinset⊆arenaWires := by
  have h : s6Step20Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step20Add0During : Arena := ⟨s6Step20Add0Arena.live∪s6Step20Add0Work.toFinset,Finset.union_subset s6Step20Add0Arena.bounded s6Step20Add0_bounded⟩
theorem s6Step20Add0_distinct : (898::813::848::(s6Step20Add0A++s6Step20Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20Add0_owned : (898::813::848::(s6Step20Add0A++s6Step20Add0B)).toFinset⊆s6Step20Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step20Add0Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20Add0_apart : Disjoint s6Step20Add0Arena.live s6Step20Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step20Add0Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20Add0_card : s6Step20Add0Arena.live.card=835 := by
  decide +kernel
theorem s6Step20Add0_borrowed : s6Step20Add0Arena.checkBorrow (hmrHybridCount s6Step20Add0Arena s6Step20Add0B.length) s6Step20Add0Work=some s6Step20Add0During := by
  have len : s6Step20Add0Work.length=hmrHybridCount s6Step20Add0Arena s6Step20Add0B.length := by
    rw [hmrHybridCount,s6Step20Add0_card]
    decide +kernel
  have nd : s6Step20Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step20Add0Arena s6Step20Add0During s6Step20Add0Work.toFinset s6Step20Add0_bounded s6Step20Add0_apart rfl
theorem s6Step20Add0_checked : compileHmrHybridCinLog s6Step20Add0Arena 813 898 848 s6Step20Add0A s6Step20Add0B s6Step20Add0Work=some s6Step20Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step20Add0Arena s6Step20Add0During 813 898 848 s6Step20Add0A s6Step20Add0B s6Step20Add0Work
    (by decide +kernel) (by decide +kernel) s6Step20Add0_distinct
    (fun q hq => s6Step20Add0_owned (List.mem_toFinset.mpr hq)) s6Step20Add0_borrowed
def s6Step20Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step20Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 776]
def s6Step20Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 887, 854, 775]
def s6Step20Add1Work : List Wire := [841, 839, 794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861]
theorem s6Step20Add1_bounded : s6Step20Add1Work.toFinset⊆arenaWires := by
  have h : s6Step20Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step20Add1During : Arena := ⟨s6Step20Add1Arena.live∪s6Step20Add1Work.toFinset,Finset.union_subset s6Step20Add1Arena.bounded s6Step20Add1_bounded⟩
theorem s6Step20Add1_distinct : (898::813::848::(s6Step20Add1A++s6Step20Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step20Add1_owned : (898::813::848::(s6Step20Add1A++s6Step20Add1B)).toFinset⊆s6Step20Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step20Add1Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20Add1_apart : Disjoint s6Step20Add1Arena.live s6Step20Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step20Add1Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,839),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step20Add1_card : s6Step20Add1Arena.live.card=835 := by
  decide +kernel
theorem s6Step20Add1_borrowed : s6Step20Add1Arena.checkBorrow (hmrHybridCount s6Step20Add1Arena s6Step20Add1B.length) s6Step20Add1Work=some s6Step20Add1During := by
  have len : s6Step20Add1Work.length=hmrHybridCount s6Step20Add1Arena s6Step20Add1B.length := by
    rw [hmrHybridCount,s6Step20Add1_card]
    decide +kernel
  have nd : s6Step20Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step20Add1Arena s6Step20Add1During s6Step20Add1Work.toFinset s6Step20Add1_bounded s6Step20Add1_apart rfl
theorem s6Step20Add1_checked : compileHmrHybridCinLog s6Step20Add1Arena 813 898 848 s6Step20Add1A s6Step20Add1B s6Step20Add1Work=some s6Step20Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step20Add1Arena s6Step20Add1During 813 898 848 s6Step20Add1A s6Step20Add1B s6Step20Add1Work
    (by decide +kernel) (by decide +kernel) s6Step20Add1_distinct
    (fun q hq => s6Step20Add1_owned (List.mem_toFinset.mpr hq)) s6Step20Add1_borrowed
def s6Step21Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step21Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862, 795]
def s6Step21Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807, 777]
def s6Step21Add0Work : List Wire := [794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step21Add0_bounded : s6Step21Add0Work.toFinset⊆arenaWires := by
  have h : s6Step21Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step21Add0During : Arena := ⟨s6Step21Add0Arena.live∪s6Step21Add0Work.toFinset,Finset.union_subset s6Step21Add0Arena.bounded s6Step21Add0_bounded⟩
theorem s6Step21Add0_distinct : (841::860::839::(s6Step21Add0A++s6Step21Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21Add0_owned : (841::860::839::(s6Step21Add0A++s6Step21Add0B)).toFinset⊆s6Step21Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step21Add0Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21Add0_apart : Disjoint s6Step21Add0Arena.live s6Step21Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step21Add0Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21Add0_card : s6Step21Add0Arena.live.card=837 := by
  decide +kernel
theorem s6Step21Add0_borrowed : s6Step21Add0Arena.checkBorrow (hmrHybridCount s6Step21Add0Arena s6Step21Add0B.length) s6Step21Add0Work=some s6Step21Add0During := by
  have len : s6Step21Add0Work.length=hmrHybridCount s6Step21Add0Arena s6Step21Add0B.length := by
    rw [hmrHybridCount,s6Step21Add0_card]
    decide +kernel
  have nd : s6Step21Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step21Add0Arena s6Step21Add0During s6Step21Add0Work.toFinset s6Step21Add0_bounded s6Step21Add0_apart rfl
theorem s6Step21Add0_checked : compileHmrHybridCinLog s6Step21Add0Arena 860 841 839 s6Step21Add0A s6Step21Add0B s6Step21Add0Work=some s6Step21Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step21Add0Arena s6Step21Add0During 860 841 839 s6Step21Add0A s6Step21Add0B s6Step21Add0Work
    (by decide +kernel) (by decide +kernel) s6Step21Add0_distinct
    (fun q hq => s6Step21Add0_owned (List.mem_toFinset.mpr hq)) s6Step21Add0_borrowed
def s6Step21Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step21Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 776]
def s6Step21Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 887, 898, 775]
def s6Step21Add1Work : List Wire := [794, 850, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781]
theorem s6Step21Add1_bounded : s6Step21Add1Work.toFinset⊆arenaWires := by
  have h : s6Step21Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step21Add1During : Arena := ⟨s6Step21Add1Arena.live∪s6Step21Add1Work.toFinset,Finset.union_subset s6Step21Add1Arena.bounded s6Step21Add1_bounded⟩
theorem s6Step21Add1_distinct : (841::860::839::(s6Step21Add1A++s6Step21Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step21Add1_owned : (841::860::839::(s6Step21Add1A++s6Step21Add1B)).toFinset⊆s6Step21Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step21Add1Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21Add1_apart : Disjoint s6Step21Add1Arena.live s6Step21Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step21Add1Arena (fun q => ([(0,781),(789,790),(793,794),(795,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(911,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step21Add1_card : s6Step21Add1Arena.live.card=837 := by
  decide +kernel
theorem s6Step21Add1_borrowed : s6Step21Add1Arena.checkBorrow (hmrHybridCount s6Step21Add1Arena s6Step21Add1B.length) s6Step21Add1Work=some s6Step21Add1During := by
  have len : s6Step21Add1Work.length=hmrHybridCount s6Step21Add1Arena s6Step21Add1B.length := by
    rw [hmrHybridCount,s6Step21Add1_card]
    decide +kernel
  have nd : s6Step21Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step21Add1Arena s6Step21Add1During s6Step21Add1Work.toFinset s6Step21Add1_bounded s6Step21Add1_apart rfl
theorem s6Step21Add1_checked : compileHmrHybridCinLog s6Step21Add1Arena 860 841 839 s6Step21Add1A s6Step21Add1B s6Step21Add1Work=some s6Step21Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step21Add1Arena s6Step21Add1During 860 841 839 s6Step21Add1A s6Step21Add1B s6Step21Add1Work
    (by decide +kernel) (by decide +kernel) s6Step21Add1_distinct
    (fun q hq => s6Step21Add1_owned (List.mem_toFinset.mpr hq)) s6Step21Add1_borrowed
def s6Step22Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step22Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807, 795]
def s6Step22Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 860, 813, 777]
def s6Step22Add0Work : List Wire := [881, 853, 867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step22Add0_bounded : s6Step22Add0Work.toFinset⊆arenaWires := by
  have h : s6Step22Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step22Add0During : Arena := ⟨s6Step22Add0Arena.live∪s6Step22Add0Work.toFinset,Finset.union_subset s6Step22Add0Arena.bounded s6Step22Add0_bounded⟩
theorem s6Step22Add0_distinct : (794::862::850::(s6Step22Add0A++s6Step22Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22Add0_owned : (794::862::850::(s6Step22Add0A++s6Step22Add0B)).toFinset⊆s6Step22Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step22Add0Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22Add0_apart : Disjoint s6Step22Add0Arena.live s6Step22Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step22Add0Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22Add0_card : s6Step22Add0Arena.live.card=840 := by
  decide +kernel
theorem s6Step22Add0_borrowed : s6Step22Add0Arena.checkBorrow (hmrHybridCount s6Step22Add0Arena s6Step22Add0B.length) s6Step22Add0Work=some s6Step22Add0During := by
  have len : s6Step22Add0Work.length=hmrHybridCount s6Step22Add0Arena s6Step22Add0B.length := by
    rw [hmrHybridCount,s6Step22Add0_card]
    decide +kernel
  have nd : s6Step22Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step22Add0Arena s6Step22Add0During s6Step22Add0Work.toFinset s6Step22Add0_bounded s6Step22Add0_apart rfl
theorem s6Step22Add0_checked : compileHmrHybridCinLog s6Step22Add0Arena 862 794 850 s6Step22Add0A s6Step22Add0B s6Step22Add0Work=some s6Step22Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step22Add0Arena s6Step22Add0During 862 794 850 s6Step22Add0A s6Step22Add0B s6Step22Add0Work
    (by decide +kernel) (by decide +kernel) s6Step22Add0_distinct
    (fun q hq => s6Step22Add0_owned (List.mem_toFinset.mpr hq)) s6Step22Add0_borrowed
def s6Step22Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step22Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 776]
def s6Step22Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 887, 841, 775]
def s6Step22Add1Work : List Wire := [881, 853, 867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829]
theorem s6Step22Add1_bounded : s6Step22Add1Work.toFinset⊆arenaWires := by
  have h : s6Step22Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step22Add1During : Arena := ⟨s6Step22Add1Arena.live∪s6Step22Add1Work.toFinset,Finset.union_subset s6Step22Add1Arena.bounded s6Step22Add1_bounded⟩
theorem s6Step22Add1_distinct : (794::862::850::(s6Step22Add1A++s6Step22Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step22Add1_owned : (794::862::850::(s6Step22Add1A++s6Step22Add1B)).toFinset⊆s6Step22Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step22Add1Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22Add1_apart : Disjoint s6Step22Add1Arena.live s6Step22Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step22Add1Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,853),(854,855),(856,861),(862,866),(868,871),(872,877),(880,881),(882,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step22Add1_card : s6Step22Add1Arena.live.card=840 := by
  decide +kernel
theorem s6Step22Add1_borrowed : s6Step22Add1Arena.checkBorrow (hmrHybridCount s6Step22Add1Arena s6Step22Add1B.length) s6Step22Add1Work=some s6Step22Add1During := by
  have len : s6Step22Add1Work.length=hmrHybridCount s6Step22Add1Arena s6Step22Add1B.length := by
    rw [hmrHybridCount,s6Step22Add1_card]
    decide +kernel
  have nd : s6Step22Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step22Add1Arena s6Step22Add1During s6Step22Add1Work.toFinset s6Step22Add1_bounded s6Step22Add1_apart rfl
theorem s6Step22Add1_checked : compileHmrHybridCinLog s6Step22Add1Arena 862 794 850 s6Step22Add1A s6Step22Add1B s6Step22Add1Work=some s6Step22Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step22Add1Arena s6Step22Add1During 862 794 850 s6Step22Add1A s6Step22Add1B s6Step22Add1Work
    (by decide +kernel) (by decide +kernel) s6Step22Add1_distinct
    (fun q hq => s6Step22Add1_owned (List.mem_toFinset.mpr hq)) s6Step22Add1_borrowed
def s6Step23Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step23Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 813, 795]
def s6Step23Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 862, 860, 777]
def s6Step23Add0Work : List Wire := [867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step23Add0_bounded : s6Step23Add0Work.toFinset⊆arenaWires := by
  have h : s6Step23Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step23Add0During : Arena := ⟨s6Step23Add0Arena.live∪s6Step23Add0Work.toFinset,Finset.union_subset s6Step23Add0Arena.bounded s6Step23Add0_bounded⟩
theorem s6Step23Add0_distinct : (881::807::853::(s6Step23Add0A++s6Step23Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23Add0_owned : (881::807::853::(s6Step23Add0A++s6Step23Add0B)).toFinset⊆s6Step23Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step23Add0Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23Add0_apart : Disjoint s6Step23Add0Arena.live s6Step23Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step23Add0Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23Add0_card : s6Step23Add0Arena.live.card=842 := by
  decide +kernel
theorem s6Step23Add0_borrowed : s6Step23Add0Arena.checkBorrow (hmrHybridCount s6Step23Add0Arena s6Step23Add0B.length) s6Step23Add0Work=some s6Step23Add0During := by
  have len : s6Step23Add0Work.length=hmrHybridCount s6Step23Add0Arena s6Step23Add0B.length := by
    rw [hmrHybridCount,s6Step23Add0_card]
    decide +kernel
  have nd : s6Step23Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step23Add0Arena s6Step23Add0During s6Step23Add0Work.toFinset s6Step23Add0_bounded s6Step23Add0_apart rfl
theorem s6Step23Add0_checked : compileHmrHybridCinLog s6Step23Add0Arena 807 881 853 s6Step23Add0A s6Step23Add0B s6Step23Add0Work=some s6Step23Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step23Add0Arena s6Step23Add0During 807 881 853 s6Step23Add0A s6Step23Add0B s6Step23Add0Work
    (by decide +kernel) (by decide +kernel) s6Step23Add0_distinct
    (fun q hq => s6Step23Add0_owned (List.mem_toFinset.mpr hq)) s6Step23Add0_borrowed
def s6Step23Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step23Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 776]
def s6Step23Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 887, 794, 775]
def s6Step23Add1Work : List Wire := [867, 786, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871]
theorem s6Step23Add1_bounded : s6Step23Add1Work.toFinset⊆arenaWires := by
  have h : s6Step23Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step23Add1During : Arena := ⟨s6Step23Add1Arena.live∪s6Step23Add1Work.toFinset,Finset.union_subset s6Step23Add1Arena.bounded s6Step23Add1_bounded⟩
theorem s6Step23Add1_distinct : (881::807::853::(s6Step23Add1A++s6Step23Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step23Add1_owned : (881::807::853::(s6Step23Add1A++s6Step23Add1B)).toFinset⊆s6Step23Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step23Add1Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23Add1_apart : Disjoint s6Step23Add1Arena.live s6Step23Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step23Add1Arena (fun q => ([(0,781),(789,790),(793,797),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step23Add1_card : s6Step23Add1Arena.live.card=842 := by
  decide +kernel
theorem s6Step23Add1_borrowed : s6Step23Add1Arena.checkBorrow (hmrHybridCount s6Step23Add1Arena s6Step23Add1B.length) s6Step23Add1Work=some s6Step23Add1During := by
  have len : s6Step23Add1Work.length=hmrHybridCount s6Step23Add1Arena s6Step23Add1B.length := by
    rw [hmrHybridCount,s6Step23Add1_card]
    decide +kernel
  have nd : s6Step23Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step23Add1Arena s6Step23Add1During s6Step23Add1Work.toFinset s6Step23Add1_bounded s6Step23Add1_apart rfl
theorem s6Step23Add1_checked : compileHmrHybridCinLog s6Step23Add1Arena 807 881 853 s6Step23Add1A s6Step23Add1B s6Step23Add1Work=some s6Step23Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step23Add1Arena s6Step23Add1During 807 881 853 s6Step23Add1A s6Step23Add1B s6Step23Add1Work
    (by decide +kernel) (by decide +kernel) s6Step23Add1_distinct
    (fun q hq => s6Step23Add1_owned (List.mem_toFinset.mpr hq)) s6Step23Add1_borrowed
def s6Step24Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 860, 795]
def s6Step24Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 807, 862, 777]
def s6Step24Add0Work : List Wire := [877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step24Add0_bounded : s6Step24Add0Work.toFinset⊆arenaWires := by
  have h : s6Step24Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step24Add0During : Arena := ⟨s6Step24Add0Arena.live∪s6Step24Add0Work.toFinset,Finset.union_subset s6Step24Add0Arena.bounded s6Step24Add0_bounded⟩
theorem s6Step24Add0_distinct : (867::813::786::(s6Step24Add0A++s6Step24Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24Add0_owned : (867::813::786::(s6Step24Add0A++s6Step24Add0B)).toFinset⊆s6Step24Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step24Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24Add0_apart : Disjoint s6Step24Add0Arena.live s6Step24Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step24Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24Add0_card : s6Step24Add0Arena.live.card=845 := by
  decide +kernel
theorem s6Step24Add0_borrowed : s6Step24Add0Arena.checkBorrow (hmrHybridCount s6Step24Add0Arena s6Step24Add0B.length) s6Step24Add0Work=some s6Step24Add0During := by
  have len : s6Step24Add0Work.length=hmrHybridCount s6Step24Add0Arena s6Step24Add0B.length := by
    rw [hmrHybridCount,s6Step24Add0_card]
    decide +kernel
  have nd : s6Step24Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step24Add0Arena s6Step24Add0During s6Step24Add0Work.toFinset s6Step24Add0_bounded s6Step24Add0_apart rfl
theorem s6Step24Add0_checked : compileHmrHybridCinLog s6Step24Add0Arena 813 867 786 s6Step24Add0A s6Step24Add0B s6Step24Add0Work=some s6Step24Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step24Add0Arena s6Step24Add0During 813 867 786 s6Step24Add0A s6Step24Add0B s6Step24Add0Work
    (by decide +kernel) (by decide +kernel) s6Step24Add0_distinct
    (fun q hq => s6Step24Add0_owned (List.mem_toFinset.mpr hq)) s6Step24Add0_borrowed
def s6Step24Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step24Add1A : List Wire := [255, 876, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 853, 776]
def s6Step24Add1B : List Wire := [859, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 887, 881, 775]
def s6Step24Add1Work : List Wire := [877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806]
theorem s6Step24Add1_bounded : s6Step24Add1Work.toFinset⊆arenaWires := by
  have h : s6Step24Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step24Add1During : Arena := ⟨s6Step24Add1Arena.live∪s6Step24Add1Work.toFinset,Finset.union_subset s6Step24Add1Arena.bounded s6Step24Add1_bounded⟩
theorem s6Step24Add1_distinct : (867::813::786::(s6Step24Add1A++s6Step24Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step24Add1_owned : (867::813::786::(s6Step24Add1A++s6Step24Add1B)).toFinset⊆s6Step24Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step24Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24Add1_apart : Disjoint s6Step24Add1Arena.live s6Step24Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step24Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step24Add1_card : s6Step24Add1Arena.live.card=845 := by
  decide +kernel
theorem s6Step24Add1_borrowed : s6Step24Add1Arena.checkBorrow (hmrHybridCount s6Step24Add1Arena s6Step24Add1B.length) s6Step24Add1Work=some s6Step24Add1During := by
  have len : s6Step24Add1Work.length=hmrHybridCount s6Step24Add1Arena s6Step24Add1B.length := by
    rw [hmrHybridCount,s6Step24Add1_card]
    decide +kernel
  have nd : s6Step24Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step24Add1Arena s6Step24Add1During s6Step24Add1Work.toFinset s6Step24Add1_bounded s6Step24Add1_apart rfl
theorem s6Step24Add1_checked : compileHmrHybridCinLog s6Step24Add1Arena 813 867 786 s6Step24Add1A s6Step24Add1B s6Step24Add1Work=some s6Step24Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step24Add1Arena s6Step24Add1During 813 867 786 s6Step24Add1A s6Step24Add1B s6Step24Add1Work
    (by decide +kernel) (by decide +kernel) s6Step24Add1_distinct
    (fun q hq => s6Step24Add1_owned (List.mem_toFinset.mpr hq)) s6Step24Add1_borrowed
def s6Step25Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step25Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 881, 795]
def s6Step25Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 813, 887, 777]
def s6Step25Add0Work : List Wire := [867, 786, 877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step25Add0_bounded : s6Step25Add0Work.toFinset⊆arenaWires := by
  have h : s6Step25Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step25Add0During : Arena := ⟨s6Step25Add0Arena.live∪s6Step25Add0Work.toFinset,Finset.union_subset s6Step25Add0Arena.bounded s6Step25Add0_bounded⟩
theorem s6Step25Add0_distinct : (807::876::862::(s6Step25Add0A++s6Step25Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25Add0_owned : (807::876::862::(s6Step25Add0A++s6Step25Add0B)).toFinset⊆s6Step25Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step25Add0Arena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25Add0_apart : Disjoint s6Step25Add0Arena.live s6Step25Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step25Add0Arena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25Add0_card : s6Step25Add0Arena.live.card=843 := by
  decide +kernel
theorem s6Step25Add0_borrowed : s6Step25Add0Arena.checkBorrow (hmrHybridCount s6Step25Add0Arena s6Step25Add0B.length) s6Step25Add0Work=some s6Step25Add0During := by
  have len : s6Step25Add0Work.length=hmrHybridCount s6Step25Add0Arena s6Step25Add0B.length := by
    rw [hmrHybridCount,s6Step25Add0_card]
    decide +kernel
  have nd : s6Step25Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step25Add0Arena s6Step25Add0During s6Step25Add0Work.toFinset s6Step25Add0_bounded s6Step25Add0_apart rfl
theorem s6Step25Add0_checked : compileHmrHybridCinLog s6Step25Add0Arena 876 807 862 s6Step25Add0A s6Step25Add0B s6Step25Add0Work=some s6Step25Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step25Add0Arena s6Step25Add0During 876 807 862 s6Step25Add0A s6Step25Add0B s6Step25Add0Work
    (by decide +kernel) (by decide +kernel) s6Step25Add0_distinct
    (fun q hq => s6Step25Add0_owned (List.mem_toFinset.mpr hq)) s6Step25Add0_borrowed
def s6Step25Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step25Add1A : List Wire := [255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 776]
def s6Step25Add1B : List Wire := [511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 775]
def s6Step25Add1Work : List Wire := [867, 786, 877, 855, 803, 922, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846]
theorem s6Step25Add1_bounded : s6Step25Add1Work.toFinset⊆arenaWires := by
  have h : s6Step25Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step25Add1During : Arena := ⟨s6Step25Add1Arena.live∪s6Step25Add1Work.toFinset,Finset.union_subset s6Step25Add1Arena.bounded s6Step25Add1_bounded⟩
theorem s6Step25Add1_distinct : (807::876::862::(s6Step25Add1A++s6Step25Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step25Add1_owned : (807::876::862::(s6Step25Add1A++s6Step25Add1B)).toFinset⊆s6Step25Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step25Add1Arena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25Add1_apart : Disjoint s6Step25Add1Arena.live s6Step25Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step25Add1Arena (fun q => ([(0,781),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(828,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(868,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step25Add1_card : s6Step25Add1Arena.live.card=843 := by
  decide +kernel
theorem s6Step25Add1_borrowed : s6Step25Add1Arena.checkBorrow (hmrHybridCount s6Step25Add1Arena s6Step25Add1B.length) s6Step25Add1Work=some s6Step25Add1During := by
  have len : s6Step25Add1Work.length=hmrHybridCount s6Step25Add1Arena s6Step25Add1B.length := by
    rw [hmrHybridCount,s6Step25Add1_card]
    decide +kernel
  have nd : s6Step25Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step25Add1Arena s6Step25Add1During s6Step25Add1Work.toFinset s6Step25Add1_bounded s6Step25Add1_apart rfl
theorem s6Step25Add1_checked : compileHmrHybridCinLog s6Step25Add1Arena 876 807 862 s6Step25Add1A s6Step25Add1B s6Step25Add1Work=some s6Step25Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step25Add1Arena s6Step25Add1During 876 807 862 s6Step25Add1A s6Step25Add1B s6Step25Add1Work
    (by decide +kernel) (by decide +kernel) s6Step25Add1_distinct
    (fun q hq => s6Step25Add1_owned (List.mem_toFinset.mpr hq)) s6Step25Add1_borrowed
def s6Step26Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step26Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 887, 795]
def s6Step26Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 876, 813, 777]
def s6Step26Add0Work : List Wire := [877, 855, 803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step26Add0_bounded : s6Step26Add0Work.toFinset⊆arenaWires := by
  have h : s6Step26Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step26Add0During : Arena := ⟨s6Step26Add0Arena.live∪s6Step26Add0Work.toFinset,Finset.union_subset s6Step26Add0Arena.bounded s6Step26Add0_bounded⟩
theorem s6Step26Add0_distinct : (867::881::786::(s6Step26Add0A++s6Step26Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26Add0_owned : (867::881::786::(s6Step26Add0A++s6Step26Add0B)).toFinset⊆s6Step26Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step26Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26Add0_apart : Disjoint s6Step26Add0Arena.live s6Step26Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step26Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26Add0_card : s6Step26Add0Arena.live.card=846 := by
  decide +kernel
theorem s6Step26Add0_borrowed : s6Step26Add0Arena.checkBorrow (hmrHybridCount s6Step26Add0Arena s6Step26Add0B.length) s6Step26Add0Work=some s6Step26Add0During := by
  have len : s6Step26Add0Work.length=hmrHybridCount s6Step26Add0Arena s6Step26Add0B.length := by
    rw [hmrHybridCount,s6Step26Add0_card]
    decide +kernel
  have nd : s6Step26Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step26Add0Arena s6Step26Add0During s6Step26Add0Work.toFinset s6Step26Add0_bounded s6Step26Add0_apart rfl
theorem s6Step26Add0_checked : compileHmrHybridCinLog s6Step26Add0Arena 881 867 786 s6Step26Add0A s6Step26Add0B s6Step26Add0Work=some s6Step26Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step26Add0Arena s6Step26Add0During 881 867 786 s6Step26Add0A s6Step26Add0B s6Step26Add0Work
    (by decide +kernel) (by decide +kernel) s6Step26Add0_distinct
    (fun q hq => s6Step26Add0_owned (List.mem_toFinset.mpr hq)) s6Step26Add0_borrowed
def s6Step26Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step26Add1A : List Wire := [255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 776]
def s6Step26Add1B : List Wire := [511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 859, 807, 775]
def s6Step26Add1Work : List Wire := [877, 855, 803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902]
theorem s6Step26Add1_bounded : s6Step26Add1Work.toFinset⊆arenaWires := by
  have h : s6Step26Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step26Add1During : Arena := ⟨s6Step26Add1Arena.live∪s6Step26Add1Work.toFinset,Finset.union_subset s6Step26Add1Arena.bounded s6Step26Add1_bounded⟩
theorem s6Step26Add1_distinct : (867::881::786::(s6Step26Add1A++s6Step26Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step26Add1_owned : (867::881::786::(s6Step26Add1A++s6Step26Add1B)).toFinset⊆s6Step26Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step26Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26Add1_apart : Disjoint s6Step26Add1Arena.live s6Step26Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step26Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,855),(856,861),(862,866),(867,871),(872,877),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step26Add1_card : s6Step26Add1Arena.live.card=846 := by
  decide +kernel
theorem s6Step26Add1_borrowed : s6Step26Add1Arena.checkBorrow (hmrHybridCount s6Step26Add1Arena s6Step26Add1B.length) s6Step26Add1Work=some s6Step26Add1During := by
  have len : s6Step26Add1Work.length=hmrHybridCount s6Step26Add1Arena s6Step26Add1B.length := by
    rw [hmrHybridCount,s6Step26Add1_card]
    decide +kernel
  have nd : s6Step26Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step26Add1Arena s6Step26Add1During s6Step26Add1Work.toFinset s6Step26Add1_bounded s6Step26Add1_apart rfl
theorem s6Step26Add1_checked : compileHmrHybridCinLog s6Step26Add1Arena 881 867 786 s6Step26Add1A s6Step26Add1B s6Step26Add1Work=some s6Step26Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step26Add1Arena s6Step26Add1During 881 867 786 s6Step26Add1A s6Step26Add1B s6Step26Add1Work
    (by decide +kernel) (by decide +kernel) s6Step26Add1_distinct
    (fun q hq => s6Step26Add1_owned (List.mem_toFinset.mpr hq)) s6Step26Add1_borrowed
def s6Step27Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step27Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 813, 795]
def s6Step27Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 881, 876, 777]
def s6Step27Add0Work : List Wire := [803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step27Add0_bounded : s6Step27Add0Work.toFinset⊆arenaWires := by
  have h : s6Step27Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step27Add0During : Arena := ⟨s6Step27Add0Arena.live∪s6Step27Add0Work.toFinset,Finset.union_subset s6Step27Add0Arena.bounded s6Step27Add0_bounded⟩
theorem s6Step27Add0_distinct : (877::887::855::(s6Step27Add0A++s6Step27Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27Add0_owned : (877::887::855::(s6Step27Add0A++s6Step27Add0B)).toFinset⊆s6Step27Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step27Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27Add0_apart : Disjoint s6Step27Add0Arena.live s6Step27Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step27Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27Add0_card : s6Step27Add0Arena.live.card=848 := by
  decide +kernel
theorem s6Step27Add0_borrowed : s6Step27Add0Arena.checkBorrow (hmrHybridCount s6Step27Add0Arena s6Step27Add0B.length) s6Step27Add0Work=some s6Step27Add0During := by
  have len : s6Step27Add0Work.length=hmrHybridCount s6Step27Add0Arena s6Step27Add0B.length := by
    rw [hmrHybridCount,s6Step27Add0_card]
    decide +kernel
  have nd : s6Step27Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step27Add0Arena s6Step27Add0During s6Step27Add0Work.toFinset s6Step27Add0_bounded s6Step27Add0_apart rfl
theorem s6Step27Add0_checked : compileHmrHybridCinLog s6Step27Add0Arena 887 877 855 s6Step27Add0A s6Step27Add0B s6Step27Add0Work=some s6Step27Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step27Add0Arena s6Step27Add0During 887 877 855 s6Step27Add0A s6Step27Add0B s6Step27Add0Work
    (by decide +kernel) (by decide +kernel) s6Step27Add0_distinct
    (fun q hq => s6Step27Add0_owned (List.mem_toFinset.mpr hq)) s6Step27Add0_borrowed
def s6Step27Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step27Add1A : List Wire := [255, 254, 793, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 776]
def s6Step27Add1B : List Wire := [511, 768, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 859, 867, 775]
def s6Step27Add1Work : List Wire := [803, 922, 879, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884]
theorem s6Step27Add1_bounded : s6Step27Add1Work.toFinset⊆arenaWires := by
  have h : s6Step27Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step27Add1During : Arena := ⟨s6Step27Add1Arena.live∪s6Step27Add1Work.toFinset,Finset.union_subset s6Step27Add1Arena.bounded s6Step27Add1_bounded⟩
theorem s6Step27Add1_distinct : (877::887::855::(s6Step27Add1A++s6Step27Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step27Add1_owned : (877::887::855::(s6Step27Add1A++s6Step27Add1B)).toFinset⊆s6Step27Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step27Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27Add1_apart : Disjoint s6Step27Add1Arena.live s6Step27Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step27Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step27Add1_card : s6Step27Add1Arena.live.card=848 := by
  decide +kernel
theorem s6Step27Add1_borrowed : s6Step27Add1Arena.checkBorrow (hmrHybridCount s6Step27Add1Arena s6Step27Add1B.length) s6Step27Add1Work=some s6Step27Add1During := by
  have len : s6Step27Add1Work.length=hmrHybridCount s6Step27Add1Arena s6Step27Add1B.length := by
    rw [hmrHybridCount,s6Step27Add1_card]
    decide +kernel
  have nd : s6Step27Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step27Add1Arena s6Step27Add1During s6Step27Add1Work.toFinset s6Step27Add1_bounded s6Step27Add1_apart rfl
theorem s6Step27Add1_checked : compileHmrHybridCinLog s6Step27Add1Arena 887 877 855 s6Step27Add1A s6Step27Add1B s6Step27Add1Work=some s6Step27Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step27Add1Arena s6Step27Add1During 887 877 855 s6Step27Add1A s6Step27Add1B s6Step27Add1Work
    (by decide +kernel) (by decide +kernel) s6Step27Add1_distinct
    (fun q hq => s6Step27Add1_owned (List.mem_toFinset.mpr hq)) s6Step27Add1_borrowed
def s6Step28Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step28Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 813, 795]
def s6Step28Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 887, 867, 777]
def s6Step28Add0Work : List Wire := [803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step28Add0_bounded : s6Step28Add0Work.toFinset⊆arenaWires := by
  have h : s6Step28Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step28Add0During : Arena := ⟨s6Step28Add0Arena.live∪s6Step28Add0Work.toFinset,Finset.union_subset s6Step28Add0Arena.bounded s6Step28Add0_bounded⟩
theorem s6Step28Add0_distinct : (877::859::855::(s6Step28Add0A++s6Step28Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28Add0_owned : (877::859::855::(s6Step28Add0A++s6Step28Add0B)).toFinset⊆s6Step28Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step28Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28Add0_apart : Disjoint s6Step28Add0Arena.live s6Step28Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step28Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28Add0_card : s6Step28Add0Arena.live.card=849 := by
  decide +kernel
theorem s6Step28Add0_borrowed : s6Step28Add0Arena.checkBorrow (hmrHybridCount s6Step28Add0Arena s6Step28Add0B.length) s6Step28Add0Work=some s6Step28Add0During := by
  have len : s6Step28Add0Work.length=hmrHybridCount s6Step28Add0Arena s6Step28Add0B.length := by
    rw [hmrHybridCount,s6Step28Add0_card]
    decide +kernel
  have nd : s6Step28Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step28Add0Arena s6Step28Add0During s6Step28Add0Work.toFinset s6Step28Add0_bounded s6Step28Add0_apart rfl
theorem s6Step28Add0_checked : compileHmrHybridCinLog s6Step28Add0Arena 859 877 855 s6Step28Add0A s6Step28Add0B s6Step28Add0Work=some s6Step28Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step28Add0Arena s6Step28Add0During 859 877 855 s6Step28Add0A s6Step28Add0B s6Step28Add0Work
    (by decide +kernel) (by decide +kernel) s6Step28Add0_distinct
    (fun q hq => s6Step28Add0_owned (List.mem_toFinset.mpr hq)) s6Step28Add0_borrowed
def s6Step28Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step28Add1A : List Wire := [255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 876, 776]
def s6Step28Add1B : List Wire := [511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 881, 775]
def s6Step28Add1Work : List Wire := [803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903]
theorem s6Step28Add1_bounded : s6Step28Add1Work.toFinset⊆arenaWires := by
  have h : s6Step28Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step28Add1During : Arena := ⟨s6Step28Add1Arena.live∪s6Step28Add1Work.toFinset,Finset.union_subset s6Step28Add1Arena.bounded s6Step28Add1_bounded⟩
theorem s6Step28Add1_distinct : (877::859::855::(s6Step28Add1A++s6Step28Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step28Add1_owned : (877::859::855::(s6Step28Add1A++s6Step28Add1B)).toFinset⊆s6Step28Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step28Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28Add1_apart : Disjoint s6Step28Add1Arena.live s6Step28Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step28Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step28Add1_card : s6Step28Add1Arena.live.card=849 := by
  decide +kernel
theorem s6Step28Add1_borrowed : s6Step28Add1Arena.checkBorrow (hmrHybridCount s6Step28Add1Arena s6Step28Add1B.length) s6Step28Add1Work=some s6Step28Add1During := by
  have len : s6Step28Add1Work.length=hmrHybridCount s6Step28Add1Arena s6Step28Add1B.length := by
    rw [hmrHybridCount,s6Step28Add1_card]
    decide +kernel
  have nd : s6Step28Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step28Add1Arena s6Step28Add1During s6Step28Add1Work.toFinset s6Step28Add1_bounded s6Step28Add1_apart rfl
theorem s6Step28Add1_checked : compileHmrHybridCinLog s6Step28Add1Arena 859 877 855 s6Step28Add1A s6Step28Add1B s6Step28Add1Work=some s6Step28Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step28Add1Arena s6Step28Add1During 859 877 855 s6Step28Add1A s6Step28Add1B s6Step28Add1Work
    (by decide +kernel) (by decide +kernel) s6Step28Add1_distinct
    (fun q hq => s6Step28Add1_owned (List.mem_toFinset.mpr hq)) s6Step28Add1_borrowed
def s6Step29Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step29Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 813, 795]
def s6Step29Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 859, 876, 777]
def s6Step29Add0Work : List Wire := [803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step29Add0_bounded : s6Step29Add0Work.toFinset⊆arenaWires := by
  have h : s6Step29Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step29Add0During : Arena := ⟨s6Step29Add0Arena.live∪s6Step29Add0Work.toFinset,Finset.union_subset s6Step29Add0Arena.bounded s6Step29Add0_bounded⟩
theorem s6Step29Add0_distinct : (877::881::855::(s6Step29Add0A++s6Step29Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29Add0_owned : (877::881::855::(s6Step29Add0A++s6Step29Add0B)).toFinset⊆s6Step29Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step29Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29Add0_apart : Disjoint s6Step29Add0Arena.live s6Step29Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step29Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29Add0_card : s6Step29Add0Arena.live.card=849 := by
  decide +kernel
theorem s6Step29Add0_borrowed : s6Step29Add0Arena.checkBorrow (hmrHybridCount s6Step29Add0Arena s6Step29Add0B.length) s6Step29Add0Work=some s6Step29Add0During := by
  have len : s6Step29Add0Work.length=hmrHybridCount s6Step29Add0Arena s6Step29Add0B.length := by
    rw [hmrHybridCount,s6Step29Add0_card]
    decide +kernel
  have nd : s6Step29Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step29Add0Arena s6Step29Add0During s6Step29Add0Work.toFinset s6Step29Add0_bounded s6Step29Add0_apart rfl
theorem s6Step29Add0_checked : compileHmrHybridCinLog s6Step29Add0Arena 881 877 855 s6Step29Add0A s6Step29Add0B s6Step29Add0Work=some s6Step29Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step29Add0Arena s6Step29Add0During 881 877 855 s6Step29Add0A s6Step29Add0B s6Step29Add0Work
    (by decide +kernel) (by decide +kernel) s6Step29Add0_distinct
    (fun q hq => s6Step29Add0_owned (List.mem_toFinset.mpr hq)) s6Step29Add0_borrowed
def s6Step29Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step29Add1A : List Wire := [255, 254, 253, 802, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 776]
def s6Step29Add1B : List Wire := [511, 510, 874, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 793, 887, 775]
def s6Step29Add1Work : List Wire := [803, 922, 879, 784, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903]
theorem s6Step29Add1_bounded : s6Step29Add1Work.toFinset⊆arenaWires := by
  have h : s6Step29Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step29Add1During : Arena := ⟨s6Step29Add1Arena.live∪s6Step29Add1Work.toFinset,Finset.union_subset s6Step29Add1Arena.bounded s6Step29Add1_bounded⟩
theorem s6Step29Add1_distinct : (877::881::855::(s6Step29Add1A++s6Step29Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step29Add1_owned : (877::881::855::(s6Step29Add1A++s6Step29Add1B)).toFinset⊆s6Step29Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step29Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29Add1_apart : Disjoint s6Step29Add1Arena.live s6Step29Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step29Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step29Add1_card : s6Step29Add1Arena.live.card=849 := by
  decide +kernel
theorem s6Step29Add1_borrowed : s6Step29Add1Arena.checkBorrow (hmrHybridCount s6Step29Add1Arena s6Step29Add1B.length) s6Step29Add1Work=some s6Step29Add1During := by
  have len : s6Step29Add1Work.length=hmrHybridCount s6Step29Add1Arena s6Step29Add1B.length := by
    rw [hmrHybridCount,s6Step29Add1_card]
    decide +kernel
  have nd : s6Step29Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step29Add1Arena s6Step29Add1During s6Step29Add1Work.toFinset s6Step29Add1_bounded s6Step29Add1_apart rfl
theorem s6Step29Add1_checked : compileHmrHybridCinLog s6Step29Add1Arena 881 877 855 s6Step29Add1A s6Step29Add1B s6Step29Add1Work=some s6Step29Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step29Add1Arena s6Step29Add1During 881 877 855 s6Step29Add1A s6Step29Add1B s6Step29Add1Work
    (by decide +kernel) (by decide +kernel) s6Step29Add1_distinct
    (fun q hq => s6Step29Add1_owned (List.mem_toFinset.mpr hq)) s6Step29Add1_borrowed
def s6Step30Add0Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step30Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 813, 795]
def s6Step30Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 881, 887, 777]
def s6Step30Add0Work : List Wire := [803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step30Add0_bounded : s6Step30Add0Work.toFinset⊆arenaWires := by
  have h : s6Step30Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step30Add0During : Arena := ⟨s6Step30Add0Arena.live∪s6Step30Add0Work.toFinset,Finset.union_subset s6Step30Add0Arena.bounded s6Step30Add0_bounded⟩
theorem s6Step30Add0_distinct : (877::793::855::(s6Step30Add0A++s6Step30Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30Add0_owned : (877::793::855::(s6Step30Add0A++s6Step30Add0B)).toFinset⊆s6Step30Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step30Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30Add0_apart : Disjoint s6Step30Add0Arena.live s6Step30Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step30Add0Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30Add0_card : s6Step30Add0Arena.live.card=850 := by
  decide +kernel
theorem s6Step30Add0_borrowed : s6Step30Add0Arena.checkBorrow (hmrHybridCount s6Step30Add0Arena s6Step30Add0B.length) s6Step30Add0Work=some s6Step30Add0During := by
  have len : s6Step30Add0Work.length=hmrHybridCount s6Step30Add0Arena s6Step30Add0B.length := by
    rw [hmrHybridCount,s6Step30Add0_card]
    decide +kernel
  have nd : s6Step30Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step30Add0Arena s6Step30Add0During s6Step30Add0Work.toFinset s6Step30Add0_bounded s6Step30Add0_apart rfl
theorem s6Step30Add0_checked : compileHmrHybridCinLog s6Step30Add0Arena 793 877 855 s6Step30Add0A s6Step30Add0B s6Step30Add0Work=some s6Step30Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step30Add0Arena s6Step30Add0During 793 877 855 s6Step30Add0A s6Step30Add0B s6Step30Add0Work
    (by decide +kernel) (by decide +kernel) s6Step30Add0_distinct
    (fun q hq => s6Step30Add0_owned (List.mem_toFinset.mpr hq)) s6Step30Add0_borrowed
def s6Step30Add1Arena : Arena := ⟨arenaWires.filter (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩
def s6Step30Add1A : List Wire := [255, 254, 253, 252, 779, 857, 858, 845, 805, 796, 856, 865, 789, 818, 892, 882, 833, 886, 838, 821, 843, 830, 848, 839, 850, 860, 862, 786, 867, 876, 776]
def s6Step30Add1B : List Wire := [511, 510, 509, 927, 875, 868, 907, 908, 890, 873, 863, 823, 880, 864, 828, 822, 780, 888, 778, 814, 869, 854, 898, 841, 794, 853, 807, 768, 874, 859, 775]
def s6Step30Add1Work : List Wire := [803, 922, 879, 784, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791]
theorem s6Step30Add1_bounded : s6Step30Add1Work.toFinset⊆arenaWires := by
  have h : s6Step30Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step30Add1During : Arena := ⟨s6Step30Add1Arena.live∪s6Step30Add1Work.toFinset,Finset.union_subset s6Step30Add1Arena.bounded s6Step30Add1_bounded⟩
theorem s6Step30Add1_distinct : (877::793::855::(s6Step30Add1A++s6Step30Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step30Add1_owned : (877::793::855::(s6Step30Add1A++s6Step30Add1B)).toFinset⊆s6Step30Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step30Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30Add1_apart : Disjoint s6Step30Add1Arena.live s6Step30Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step30Add1Arena (fun q => ([(0,781),(786,787),(789,790),(793,797),(799,800),(802,803),(805,806),(807,808),(813,815),(818,819),(821,824),(827,829),(830,832),(833,834),(838,840),(841,842),(843,844),(845,846),(848,849),(850,851),(852,861),(862,866),(867,871),(872,878),(880,884),(886,889),(890,891),(892,893),(895,896),(898,899),(901,902),(907,909),(910,912),(917,918),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel
theorem s6Step30Add1_card : s6Step30Add1Arena.live.card=850 := by
  decide +kernel
theorem s6Step30Add1_borrowed : s6Step30Add1Arena.checkBorrow (hmrHybridCount s6Step30Add1Arena s6Step30Add1B.length) s6Step30Add1Work=some s6Step30Add1During := by
  have len : s6Step30Add1Work.length=hmrHybridCount s6Step30Add1Arena s6Step30Add1B.length := by
    rw [hmrHybridCount,s6Step30Add1_card]
    decide +kernel
  have nd : s6Step30Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step30Add1Arena s6Step30Add1During s6Step30Add1Work.toFinset s6Step30Add1_bounded s6Step30Add1_apart rfl
theorem s6Step30Add1_checked : compileHmrHybridCinLog s6Step30Add1Arena 793 877 855 s6Step30Add1A s6Step30Add1B s6Step30Add1Work=some s6Step30Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step30Add1Arena s6Step30Add1During 793 877 855 s6Step30Add1A s6Step30Add1B s6Step30Add1Work
    (by decide +kernel) (by decide +kernel) s6Step30Add1_distinct
    (fun q hq => s6Step30Add1_owned (List.mem_toFinset.mpr hq)) s6Step30Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
