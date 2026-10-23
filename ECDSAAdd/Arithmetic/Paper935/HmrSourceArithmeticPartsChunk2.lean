import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk1

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
def s6Step498Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 915, 808, 795]
def s6Step498Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 855, 798, 777]
def s6Step498Add0Work : List Wire := [916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step498Add0_bounded : s6Step498Add0Work.toFinset⊆arenaWires := by
  have h : s6Step498Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step498Add0During : Arena := ⟨s6Step498Add0Arena.live∪s6Step498Add0Work.toFinset,Finset.union_subset s6Step498Add0Arena.bounded s6Step498Add0_bounded⟩
theorem s6Step498Add0_distinct : (790::842::914::(s6Step498Add0A++s6Step498Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498Add0_owned : (790::842::914::(s6Step498Add0A++s6Step498Add0B)).toFinset⊆s6Step498Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step498Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add0_apart : Disjoint s6Step498Add0Arena.live s6Step498Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step498Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add0_card : s6Step498Add0Arena.live.card=923 := by
  decide +kernel
theorem s6Step498Add0_borrowed : s6Step498Add0Arena.checkBorrow (hmrHybridCount s6Step498Add0Arena s6Step498Add0B.length) s6Step498Add0Work=some s6Step498Add0During := by
  have len : s6Step498Add0Work.length=hmrHybridCount s6Step498Add0Arena s6Step498Add0B.length := by
    rw [hmrHybridCount,s6Step498Add0_card]
    decide +kernel
  have nd : s6Step498Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step498Add0Arena s6Step498Add0During s6Step498Add0Work.toFinset s6Step498Add0_bounded s6Step498Add0_apart rfl
theorem s6Step498Add0_checked : compileHmrHybridCinLog s6Step498Add0Arena 842 790 914 s6Step498Add0A s6Step498Add0B s6Step498Add0Work=some s6Step498Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step498Add0Arena s6Step498Add0During 842 790 914 s6Step498Add0A s6Step498Add0B s6Step498Add0Work
    (by decide +kernel) (by decide +kernel) s6Step498Add0_distinct
    (fun q hq => s6Step498Add0_owned (List.mem_toFinset.mpr hq)) s6Step498Add0_borrowed
def s6Step498Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 778, 848, 812, 825, 906, 888, 869, 898, 823, 839, 863, 876, 903, 920, 818, 864, 853, 891, 821, 784, 793, 833, 927, 856, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779, 896, 776]
def s6Step498Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 329, 328, 326, 327, 325, 323, 324, 322, 321, 320, 319, 317, 318, 316, 315, 314, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 302, 300, 301, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 289, 288, 287, 286, 285, 284, 283, 282, 280, 281, 886, 887, 922, 807, 858, 802, 786, 796, 792, 803, 805, 850, 828, 862, 814, 868, 890, 794, 841, 867, 880, 830, 857, 859, 854, 882, 810, 865, 817, 860, 816, 789, 873, 875, 820, 775]
def s6Step498Add1Work : List Wire := [916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step498Add1_bounded : s6Step498Add1Work.toFinset⊆arenaWires := by
  have h : s6Step498Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step498Add1During : Arena := ⟨s6Step498Add1Arena.live∪s6Step498Add1Work.toFinset,Finset.union_subset s6Step498Add1Arena.bounded s6Step498Add1_bounded⟩
theorem s6Step498Add1_distinct : (790::842::914::(s6Step498Add1A++s6Step498Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498Add1_owned : (790::842::914::(s6Step498Add1A++s6Step498Add1B)).toFinset⊆s6Step498Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step498Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add1_apart : Disjoint s6Step498Add1Arena.live s6Step498Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step498Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add1_card : s6Step498Add1Arena.live.card=923 := by
  decide +kernel
theorem s6Step498Add1_borrowed : s6Step498Add1Arena.checkBorrow (hmrHybridCount s6Step498Add1Arena s6Step498Add1B.length) s6Step498Add1Work=some s6Step498Add1During := by
  have len : s6Step498Add1Work.length=hmrHybridCount s6Step498Add1Arena s6Step498Add1B.length := by
    rw [hmrHybridCount,s6Step498Add1_card]
    decide +kernel
  have nd : s6Step498Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step498Add1Arena s6Step498Add1During s6Step498Add1Work.toFinset s6Step498Add1_bounded s6Step498Add1_apart rfl
theorem s6Step498Add1_checked : compileHmrHybridCinLog s6Step498Add1Arena 842 790 914 s6Step498Add1A s6Step498Add1B s6Step498Add1Work=some s6Step498Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step498Add1Arena s6Step498Add1During 842 790 914 s6Step498Add1A s6Step498Add1B s6Step498Add1Work
    (by decide +kernel) (by decide +kernel) s6Step498Add1_distinct
    (fun q hq => s6Step498Add1_owned (List.mem_toFinset.mpr hq)) s6Step498Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
