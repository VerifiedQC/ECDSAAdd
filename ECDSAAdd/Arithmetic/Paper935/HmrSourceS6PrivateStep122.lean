import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep120
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6WalkLogs

namespace ECDSAAdd.Arithmetic.Paper935
private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

private def s6Step122CompleteMoves : List (Wire × Wire) := [(814,464),(848,465)]

private def s6Step122EarlyControlLog : HmrEarlyControlLog := ⟨[848, 814, 813, 796, 868],[821],[879],[875, 882, 891, 903, 791, 825],[]⟩

private def s6Step122FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [833, 868, 821], [], []],[[879], [796], [813], [880]],[[], [], [], []]⟩,[888],[865],[875],[882],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step122CompleteLog : HmrEarlyStepLog := ⟨s6Step122FrontLog,s6Step122CompleteMoves,s6Step122EarlyControlLog⟩

private def s6Step122ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463],795⟩

private def s6Step122ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩

private def s6Step122ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833],777⟩

private def s6Step122ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩

private def s6Step122FrontOut : WindowBank := ⟨s6Step122ExitFOut,s6Step122ExitGOut,s6Step122ExitFvOut,s6Step122ExitGvOut⟩

private def s6Step122CompleteOut : WindowBank := s6Step122FrontOut.repacked s6Step122CompleteMoves

private def s6Step122EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step122EarlyControlPositiveArena,[821],s6Step122EarlyControlEqualityArena,[879],⟨⟨888,false⟩,[⟨⟨821,false⟩,879⟩]⟩⟩

private def s6Step122EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,848⟩,⟨⟨772,false⟩,814⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,796⟩,⟨⟨769,false⟩,868⟩]⟩

private def s6Step122EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step122EarlyControlZeroArena,s6Step122EarlyControlZeroPlan,s6Step122EarlyControlClassPlan,s6Step122EarlyControlFlagArena,s6Step122EarlyControlFittedArena,s6Step122EarlyControlHistoryArena,s6Step122EarlyControlSigmaArena,s6Step122EarlyControlOutputArena,s6Step122EarlyControlLog⟩

private def s6Step122CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step122Counter_bounded : s6Step122CounterWork.toFinset⊆arenaWires := by norm_num [s6Step122CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step122HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122CounterDuring : Arena := ⟨s6Step122HeadFvAfter.live∪s6Step122CounterWork.toFinset,Finset.union_subset s6Step122HeadFvAfter.bounded s6Step122Counter_bounded⟩

private def s6Step122EntryFFresh : List Wire := []

private def s6Step122EntryFvFresh : List Wire := []

private def s6Step122EntryGFresh : List Wire := [833, 868, 821]

private def s6Step122EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122EntryGvAfter : Arena := s6Step122EntryGAfter

private def s6Step122EntryGvFresh : List Wire := []

private def s6Step122ExitFExtra : List Wire := [464, 465, 796]

private def s6Step122ExitGExtra : List Wire := [868, 821, 879]

private def s6Step122ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122ExitGvExtra : List Wire := [813]

private def s6Step122Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122Add0Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step122Add0_bounded : s6Step122Add0Work.toFinset⊆arenaWires := by
  have h : s6Step122Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step122Add0During : Arena := ⟨s6Step122Add0Arena.live∪s6Step122Add0Work.toFinset,Finset.union_subset s6Step122Add0Arena.bounded s6Step122Add0_bounded⟩

private def s6Step122Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122Add1Work : List Wire := [891, 903, 791, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step122Add1_bounded : s6Step122Add1Work.toFinset⊆arenaWires := by
  have h : s6Step122Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step122Add1During : Arena := ⟨s6Step122Add1Arena.live∪s6Step122Add1Work.toFinset,Finset.union_subset s6Step122Add1Arena.bounded s6Step122Add1_bounded⟩

private def s6Step122F4FlagArena : Arena := ⟨s6Step122HeadFvAfter.live∪{875},Finset.union_subset s6Step122HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step122F4Plan : HmrHybridF4Plan := ⟨s6Step122F4FlagArena,[875],s6Step122Add0Arena,[882],s6Step122Add0During,s6Step122Add0Work,s6Step122Add1During,s6Step122Add1Work⟩

private def s6Step122HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 796],795⟩

private def s6Step122HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩

private def s6Step122HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821, 879],777⟩

private def s6Step122HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 813],775⟩

private def s6Step122FrontHead : WindowBank := ⟨s6Step122HeadFOut,s6Step122HeadGOut,s6Step122HeadFvOut,s6Step122HeadGvOut⟩

private def s6Step122EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step122EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step122EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821],777⟩

private def s6Step122EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩

private def s6Step122FrontPair : WindowBank := ⟨s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut⟩

private def s6Step122FrontSigmaArena : Arena := ⟨s6Step122EntryGvAfter.live∪{888},Finset.union_subset s6Step122EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step122HeadFFresh : List Wire := [796]

private def s6Step122HeadFvFresh : List Wire := [880]

private def s6Step122HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122HeadGFresh : List Wire := [879]

private def s6Step122HeadGvFresh : List Wire := [813]

private def s6Step122FrontPlan : HmrSourceFront := ⟨s6Step122EntryGvAfter,s6Step122FrontPair,(growRow 795 s6Step122EntryFFresh ++ (growRow 777 s6Step122EntryGFresh ++ (growRow 776 s6Step122EntryFvFresh ++ (growRow 775 s6Step122EntryGvFresh ++ [])))),s6Step122FrontSigmaArena,[888],s6Step122HeadGBefore,[865],
  s6Step122HeadFvAfter,s6Step122FrontHead,(growRow 777 s6Step122HeadGFresh ++ (growRow 795 s6Step122HeadFFresh ++ (growRow 775 s6Step122HeadGvFresh ++ (growRow 776 s6Step122HeadFvFresh ++ [])))),s6Step122F4Plan,s6Step122CounterDuring,s6Step122CounterWork,s6Step122ExitGvAfter,s6Step122FrontOut,(shrinkRow 777 s6Step122ExitGExtra ++ (shrinkRow 795 s6Step122ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step122ExitGvExtra ++ []))))⟩

private def s6Step122CompletePlan : HmrEarlyStepPlan := ⟨s6Step122FrontPlan,s6Step122EarlyControlArena,s6Step122EarlyControlPlan,s6Step122CompleteMoves⟩

private theorem s6Step122Complete_apart : List.Disjoint (s6Step122CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [888, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] := by
  have nd : ((s6Step122CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[888, 865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step122Complete_owned : (s6Step122CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private def s6Step122CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,465),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122CompleteRelocationMove0Borrowed : Arena := ⟨s6Step122ExitGvAfter.live∪{464},Finset.union_subset s6Step122ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step122CompleteRelocationMove1Borrowed : Arena := ⟨s6Step122CompleteRelocationMove0After.live∪{465},Finset.union_subset s6Step122CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step122CompleteRelocation_move0_owned : 814∈s6Step122ExitGvAfter.live := by norm_num [s6Step122ExitGvAfter,arenaWires]

private theorem s6Step122CompleteRelocation_move0_reserve : s6Step122ExitGvAfter.reserve {464}=some s6Step122CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step122ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step122CompleteRelocation_move0_retire : s6Step122CompleteRelocationMove0Borrowed.retireSet {814}=s6Step122CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step122CompleteRelocationMove0Borrowed s6Step122CompleteRelocationMove0After {814}
  change s6Step122CompleteRelocationMove0After.live=(s6Step122ExitGvAfter.live∪{464})\{814}
  apply hmrArena_update_of_filter_check s6Step122ExitGvAfter s6Step122CompleteRelocationMove0After (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,465),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [464] [814] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step122CompleteRelocation_move1_owned : 848∈s6Step122CompleteRelocationMove0After.live := by norm_num [s6Step122CompleteRelocationMove0After,arenaWires]

private theorem s6Step122CompleteRelocation_move1_reserve : s6Step122CompleteRelocationMove0After.reserve {465}=some s6Step122CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step122CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step122CompleteRelocation_move1_retire : s6Step122CompleteRelocationMove1Borrowed.retireSet {848}=s6Step122EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step122CompleteRelocationMove1Borrowed s6Step122EarlyControlArena {848}
  change s6Step122EarlyControlArena.live=(s6Step122CompleteRelocationMove0After.live∪{465})\{848}
  apply hmrArena_update_of_filter_check s6Step122CompleteRelocationMove0After s6Step122EarlyControlArena (fun q => ([(0,465),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) [465] [848] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step122CompleteRelocation_checked : s6Step122ExitGvAfter.checkRepack [(814,464),(848,465)]=some s6Step122EarlyControlArena := by
  have tail2 : s6Step122EarlyControlArena.checkRepack []=some s6Step122EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step122CompleteRelocationMove0After s6Step122CompleteRelocationMove1Borrowed s6Step122EarlyControlArena s6Step122EarlyControlArena 848 465 []
    s6Step122CompleteRelocation_move1_owned s6Step122CompleteRelocation_move1_reserve s6Step122CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step122ExitGvAfter s6Step122CompleteRelocationMove0Borrowed s6Step122CompleteRelocationMove0After s6Step122EarlyControlArena 814 464 [(848,465)]
    s6Step122CompleteRelocation_move0_owned s6Step122CompleteRelocation_move0_reserve s6Step122CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step122Complete_repack : s6Step122ExitGvAfter.checkRepack s6Step122CompleteMoves=some s6Step122EarlyControlArena := by
  simpa only [s6Step122CompleteMoves] using s6Step122CompleteRelocation_checked

private theorem s6Step122EarlyControl_branchOwned : ([865] : List Wire).toFinset⊆s6Step122EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122EarlyControl_branch : compileHmrBranchRetirement s6Step122EarlyControlSigmaArena 865=some s6Step122EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step122EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step122EarlyControlSigmaArena s6Step122EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,865),(866,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [865] rfl rfl
    decide +kernel

private theorem s6Step122EarlyControl_classEqualityBorrow : s6Step122EarlyControlPositiveArena.checkBorrow (([888, 821] : List Wire).length-1) s6Step122EarlyControlLog.classWork=some s6Step122EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step122EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step122EarlyControlEqualityArena,s6Step122EarlyControlPositiveArena,s6Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step122EarlyControl_classEqualityOwned : ([888, 821] : List Wire).toFinset⊆s6Step122EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_classEquality : compileHmrEqualityLog s6Step122EarlyControlPositiveArena [888, 821] 0 s6Step122EarlyControlLog.classWork=some (s6Step122EarlyControlEqualityArena,s6Step122EarlyControlLog.classWork,s6Step122EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step122EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step122EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step122EarlyControl_classOwned : ([769, 868, 888] : List Wire).toFinset⊆s6Step122EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_positiveBorrow : s6Step122EarlyControlZeroArena.checkBorrow (1) s6Step122EarlyControlLog.positiveWork=some s6Step122EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step122EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step122EarlyControlPositiveArena,s6Step122EarlyControlZeroArena,s6Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step122EarlyControl_class : compileHmrSourceClassLog s6Step122EarlyControlZeroArena false 769 s6Step122EarlyControlZeroPlan.top 0 888 s6Step122EarlyControlLog.positiveWork s6Step122EarlyControlLog.classWork=some s6Step122EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step122EarlyControlClassPlan s6Step122EarlyControlZeroArena false 769 s6Step122EarlyControlZeroPlan.top 0 888
  constructor
  · decide +kernel
  · exact s6Step122EarlyControl_classOwned
  · exact s6Step122EarlyControl_positiveBorrow
  · exact s6Step122EarlyControl_classEquality

private theorem s6Step122EarlyControl_entryRecordOwned : ([865, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_entrySigmaOwned : ([888, 254] : List Wire).toFinset⊆s6Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_fitBorrow : s6Step122EarlyControlFlagArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step122EarlyControlLog.recordFresh=some s6Step122EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step122EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step122EarlyControlFittedArena,s6Step122EarlyControlFlagArena,s6Step122EarlyControlLog,arenaWires]

private theorem s6Step122EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step122EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<904) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_fit : compileHmrRecordGrowLog s6Step122EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step122EarlyControlLog.recordFresh=some s6Step122EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step122EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step122EarlyControl_fitBorrow

private theorem s6Step122EarlyControl_flagsBorrow : s6Step122EarlyControlEqualityArena.checkBorrow (6) s6Step122EarlyControlLog.flagWork=some s6Step122EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step122EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step122EarlyControlFlagArena,s6Step122EarlyControlEqualityArena,s6Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step122EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step122EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_flags : compileHmrFlagsLog s6Step122EarlyControlClassPlan.equalityArena s6Step122EarlyControlClassPlan.equality.top 253 252 251 s6Step122EarlyControlLog.flagWork=some s6Step122EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step122EarlyControl_flagsOwned⟩
  · exact s6Step122EarlyControl_flagsBorrow

private theorem s6Step122EarlyControl_historyBorrow : s6Step122EarlyControlArena.checkBorrow ((37-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).length)) s6Step122EarlyControlLog.recordFresh=some s6Step122EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step122EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step122EarlyControlHistoryArena,s6Step122EarlyControlArena,s6Step122EarlyControlLog,arenaWires]

private theorem s6Step122EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] : List Wire).toFinset⊆s6Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_history : compileHmrRecordGrowLog s6Step122EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step122EarlyControlLog.recordFresh=some s6Step122EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step122EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step122EarlyControl_historyBorrow

private theorem s6Step122EarlyControl_sigmaOwned : ([254, 888] : List Wire).toFinset⊆s6Step122EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_sigmaReleaseOwned : ([888] : List Wire).toFinset⊆s6Step122EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_sigmaRelease : s6Step122EarlyControlHistoryArena.release {888} (fun _ => false)=some s6Step122EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step122EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step122EarlyControlHistoryArena s6Step122EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,848),(850,868),(869,875),(876,879),(880,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [888] rfl rfl
    decide +kernel

private theorem s6Step122EarlyControl_sigma : compileHmrSigmaDropLog s6Step122EarlyControlHistoryArena false 0 0 254 888 []=some s6Step122EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step122EarlyControl_sigmaOwned⟩
  · exact s6Step122EarlyControl_sigmaRelease

private theorem s6Step122EarlyControl_zeroBorrow : s6Step122EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step122EarlyControlLog.zeroWork=some s6Step122EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step122EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step122EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step122EarlyControlZeroArena,s6Step122EarlyControlArena,s6Step122EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step122EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step122EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step122EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<848) ∨ (850≤q ∧ q<868) ∨ (869≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122EarlyControl_zero : compileHmrEqualityLog s6Step122EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step122EarlyControlLog.zeroWork=some (s6Step122EarlyControlZeroArena,s6Step122EarlyControlLog.zeroWork,s6Step122EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step122EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step122EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step122EarlyControl_logged : s6Step122EarlyControlPlan.Logged s6Step122EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 865 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step122EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step122EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step122EarlyControl_zero
  · exact s6Step122EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step122EarlyControl_flags
  · exact s6Step122EarlyControl_fit
  · exact s6Step122EarlyControl_history
  · exact s6Step122EarlyControl_sigma
  · exact s6Step122EarlyControl_branch

private theorem s6Step122EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step122EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 865 37 s6Step122EarlyControlLog=some s6Step122EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step122EarlyControlPlan s6Step122EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 254 253 252 251 865 37 s6Step122EarlyControl_logged

private def s6Step122EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step122EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step122EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],777⟩

private def s6Step122EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩

private def s6Step122FrontBank : WindowBank := ⟨s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow⟩

private def s6Step122Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 796, 795]

private def s6Step122Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821, 879, 777]

private def s6Step122Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 776]

private def s6Step122Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 813, 775]

private theorem s6Step122Counter_apart : Disjoint s6Step122HeadFvAfter.live s6Step122CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step122HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122Counter_borrowed : s6Step122HeadFvAfter.checkBorrow 4 s6Step122CounterWork=some s6Step122CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step122HeadFvAfter s6Step122CounterDuring s6Step122CounterWork.toFinset s6Step122Counter_bounded s6Step122Counter_apart rfl

private theorem s6Step122Counter_owned : (888::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step122HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step122HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122Counter_checked : compileHmrCounterStepLog s6Step122HeadFvAfter true 888 [774, 773, 772, 771, 770, 769] s6Step122CounterWork=some s6Step122CounterDuring := by
  have owned : ∀q∈888::[774, 773, 772, 771, 770, 769],q∈s6Step122HeadFvAfter.live := fun q hq => s6Step122Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step122Counter_borrowed

private def s6Step122EntryFAfter : Arena := s6Step122EntryFBefore

private theorem s6Step122EntryBank_incomingDistinct : ([s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122EntryF_Incoming : rowsOwned s6Step122EntryFBefore [s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow] 0 s6Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122EntryBank_outgoingOwned : rowsOwned s6Step122EntryGvAfter [s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step122EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122EntryF_Outgoing : rowsOwned s6Step122EntryGvAfter [s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut] :=
  hmrRows_owned_drop s6Step122EntryGvAfter [s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut] 0 s6Step122EntryBank_outgoingOwned

private theorem s6Step122EntryF_distinct : (s6Step122EntryFRow.sign::s6Step122EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122EntryF_owned : (s6Step122EntryFRow.sign::s6Step122EntryFRow.payload).toFinset⊆s6Step122EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122EntryF_reserved : s6Step122EntryFBefore.reserve s6Step122EntryFFresh.toFinset=some s6Step122EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122EntryFFresh,arenaWires]
  · norm_num [s6Step122EntryFBefore,s6Step122EntryFFresh,arenaWires]
  · simp only [s6Step122EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step122EntryF_checked : planRowResizeLog s6Step122EntryFBefore s6Step122EntryFRow 210 s6Step122EntryFFresh=
    some (s6Step122EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩,growRow 795 s6Step122EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step122EntryFBefore s6Step122EntryFAfter s6Step122EntryFRow 210 s6Step122EntryFFresh
    s6Step122EntryF_distinct s6Step122EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122EntryF_reserved
  have rowEq : WindowRow.mk (s6Step122EntryFRow.payload++s6Step122EntryFFresh) s6Step122EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step122EntryFvAfter : Arena := s6Step122EntryGAfter

private def s6Step122EntryFvBefore : Arena := s6Step122EntryGAfter

private theorem s6Step122EntryFv_Incoming : rowsOwned s6Step122EntryFvBefore [s6Step122EntryFvRow,s6Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow] 2 s6Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122EntryFv_Outgoing : rowsOwned s6Step122EntryGvAfter [s6Step122EntryFvOut,s6Step122EntryGvOut] :=
  hmrRows_owned_drop s6Step122EntryGvAfter [s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut] 2 s6Step122EntryBank_outgoingOwned

private theorem s6Step122EntryFv_distinct : (s6Step122EntryFvRow.sign::s6Step122EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122EntryFv_owned : (s6Step122EntryFvRow.sign::s6Step122EntryFvRow.payload).toFinset⊆s6Step122EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122EntryFv_reserved : s6Step122EntryFvBefore.reserve s6Step122EntryFvFresh.toFinset=some s6Step122EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122EntryFvFresh,arenaWires]
  · norm_num [s6Step122EntryFvBefore,s6Step122EntryGAfter,s6Step122EntryFvFresh,arenaWires]
  · simp only [s6Step122EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step122EntryFv_checked : planRowResizeLog s6Step122EntryFvBefore s6Step122EntryFvRow 74 s6Step122EntryFvFresh=
    some (s6Step122EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩,growRow 776 s6Step122EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step122EntryFvBefore s6Step122EntryFvAfter s6Step122EntryFvRow 74 s6Step122EntryFvFresh
    s6Step122EntryFv_distinct s6Step122EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step122EntryFvRow.payload++s6Step122EntryFvFresh) s6Step122EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step122EntryGBefore : Arena := s6Step122EntryFBefore

private theorem s6Step122EntryG_Incoming : rowsOwned s6Step122EntryGBefore [s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow] 1 s6Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122EntryG_Outgoing : rowsOwned s6Step122EntryGvAfter [s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut] :=
  hmrRows_owned_drop s6Step122EntryGvAfter [s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut] 1 s6Step122EntryBank_outgoingOwned

private theorem s6Step122EntryG_distinct : (s6Step122EntryGRow.sign::s6Step122EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122EntryG_owned : (s6Step122EntryGRow.sign::s6Step122EntryGRow.payload).toFinset⊆s6Step122EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122EntryG_reserved : s6Step122EntryGBefore.reserve s6Step122EntryGFresh.toFinset=some s6Step122EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step122EntryGBefore,s6Step122EntryFBefore,s6Step122EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step122EntryGBefore s6Step122EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step122EntryGFresh rfl rfl
    · norm_num [s6Step122EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step122EntryG_checked : planRowResizeLog s6Step122EntryGBefore s6Step122EntryGRow 210 s6Step122EntryGFresh=
    some (s6Step122EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821],777⟩,growRow 777 s6Step122EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step122EntryGBefore s6Step122EntryGAfter s6Step122EntryGRow 210 s6Step122EntryGFresh
    s6Step122EntryG_distinct s6Step122EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122EntryG_reserved
  have rowEq : WindowRow.mk (s6Step122EntryGRow.payload++s6Step122EntryGFresh) s6Step122EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step122EntryGvBefore : Arena := s6Step122EntryGAfter

private theorem s6Step122EntryGv_Incoming : rowsOwned s6Step122EntryGvBefore [s6Step122EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow] 3 s6Step122EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122EntryGv_Outgoing : rowsOwned s6Step122EntryGvAfter [s6Step122EntryGvOut] :=
  hmrRows_owned_drop s6Step122EntryGvAfter [s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut] 3 s6Step122EntryBank_outgoingOwned

private theorem s6Step122EntryGv_distinct : (s6Step122EntryGvRow.sign::s6Step122EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122EntryGv_owned : (s6Step122EntryGvRow.sign::s6Step122EntryGvRow.payload).toFinset⊆s6Step122EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122EntryGv_reserved : s6Step122EntryGvBefore.reserve s6Step122EntryGvFresh.toFinset=some s6Step122EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122EntryGvFresh,arenaWires]
  · norm_num [s6Step122EntryGvBefore,s6Step122EntryGAfter,s6Step122EntryGvFresh,arenaWires]
  · simp only [s6Step122EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step122EntryGv_checked : planRowResizeLog s6Step122EntryGvBefore s6Step122EntryGvRow 74 s6Step122EntryGvFresh=
    some (s6Step122EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩,growRow 775 s6Step122EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step122EntryGvBefore s6Step122EntryGvAfter s6Step122EntryGvRow 74 s6Step122EntryGvFresh
    s6Step122EntryGv_distinct s6Step122EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step122EntryGvRow.payload++s6Step122EntryGvFresh) s6Step122EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step122EntryBank_rows : planWindowRowsLog s6Step122EntryFBefore [(s6Step122EntryFRow,210),(s6Step122EntryGRow,210),(s6Step122EntryFvRow,74),(s6Step122EntryGvRow,74)] [s6Step122EntryFFresh,s6Step122EntryGFresh,s6Step122EntryFvFresh,s6Step122EntryGvFresh]=
    some (s6Step122EntryGvAfter,[s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut],(growRow 795 s6Step122EntryFFresh ++ (growRow 777 s6Step122EntryGFresh ++ (growRow 776 s6Step122EntryFvFresh ++ (growRow 775 s6Step122EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step122EntryGvAfter [] []=some (s6Step122EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step122EntryGvBefore s6Step122EntryGvAfter s6Step122EntryGvAfter
    s6Step122EntryGvRow s6Step122EntryGvOut 74 s6Step122EntryGvFresh [] [] []
    (growRow 775 s6Step122EntryGvFresh) ([]) s6Step122EntryGv_Incoming s6Step122EntryGv_checked h4 s6Step122EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step122EntryFvBefore s6Step122EntryFvAfter s6Step122EntryGvAfter
    s6Step122EntryFvRow s6Step122EntryFvOut 74 s6Step122EntryFvFresh [(s6Step122EntryGvRow,74)] [s6Step122EntryGvFresh] [s6Step122EntryGvOut]
    (growRow 776 s6Step122EntryFvFresh) ((growRow 775 s6Step122EntryGvFresh ++ [])) s6Step122EntryFv_Incoming s6Step122EntryFv_checked h3 s6Step122EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step122EntryGBefore s6Step122EntryGAfter s6Step122EntryGvAfter
    s6Step122EntryGRow s6Step122EntryGOut 210 s6Step122EntryGFresh [(s6Step122EntryFvRow,74),(s6Step122EntryGvRow,74)] [s6Step122EntryFvFresh,s6Step122EntryGvFresh] [s6Step122EntryFvOut,s6Step122EntryGvOut]
    (growRow 777 s6Step122EntryGFresh) ((growRow 776 s6Step122EntryFvFresh ++ (growRow 775 s6Step122EntryGvFresh ++ []))) s6Step122EntryG_Incoming s6Step122EntryG_checked h2 s6Step122EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step122EntryFBefore s6Step122EntryFAfter s6Step122EntryGvAfter
    s6Step122EntryFRow s6Step122EntryFOut 210 s6Step122EntryFFresh [(s6Step122EntryGRow,210),(s6Step122EntryFvRow,74),(s6Step122EntryGvRow,74)] [s6Step122EntryGFresh,s6Step122EntryFvFresh,s6Step122EntryGvFresh] [s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut]
    (growRow 795 s6Step122EntryFFresh) ((growRow 777 s6Step122EntryGFresh ++ (growRow 776 s6Step122EntryFvFresh ++ (growRow 775 s6Step122EntryGvFresh ++ [])))) s6Step122EntryF_Incoming s6Step122EntryF_checked h1 s6Step122EntryF_Outgoing
  exact h0

private theorem s6Step122EntryBank_checked : compileHmrBankResizeLog .entry s6Step122EntryFBefore ⟨s6Step122EntryFRow,s6Step122EntryGRow,s6Step122EntryFvRow,s6Step122EntryGvRow⟩ ⟨210,210,74,74⟩ [s6Step122EntryFFresh,s6Step122EntryGFresh,s6Step122EntryFvFresh,s6Step122EntryGvFresh]=
    some (s6Step122EntryGvAfter,⟨s6Step122EntryFOut,s6Step122EntryGOut,s6Step122EntryFvOut,s6Step122EntryGvOut⟩,(growRow 795 s6Step122EntryFFresh ++ (growRow 777 s6Step122EntryGFresh ++ (growRow 776 s6Step122EntryFvFresh ++ (growRow 775 s6Step122EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step122EntryBank_rows]
  rfl

private def s6Step122ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step122ExitFBefore : Arena := s6Step122ExitGAfter

private def s6Step122ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 796],795⟩

private def s6Step122ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩

private def s6Step122ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821, 879],777⟩

private def s6Step122ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 813],775⟩

private theorem s6Step122ExitBank_incomingDistinct : ([s6Step122ExitGRow,s6Step122ExitFRow,s6Step122ExitFvRow,s6Step122ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122ExitF_Incoming : rowsOwned s6Step122ExitFBefore [s6Step122ExitFRow,s6Step122ExitFvRow,s6Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122ExitGRow,s6Step122ExitFRow,s6Step122ExitFvRow,s6Step122ExitGvRow] 1 s6Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122ExitBank_outgoingOwned : rowsOwned s6Step122ExitGvAfter [s6Step122ExitGOut,s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step122ExitGvAfter (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122ExitF_Outgoing : rowsOwned s6Step122ExitGvAfter [s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut] :=
  hmrRows_owned_drop s6Step122ExitGvAfter [s6Step122ExitGOut,s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut] 1 s6Step122ExitBank_outgoingOwned

private theorem s6Step122ExitF_distinct : (s6Step122ExitFRow.sign::s6Step122ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122ExitF_owned : (s6Step122ExitFRow.sign::s6Step122ExitFRow.payload).toFinset⊆s6Step122ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122ExitF_retired : s6Step122ExitFBefore.retireSet s6Step122ExitFExtra.toFinset=s6Step122ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step122ExitFBefore s6Step122ExitFAfter s6Step122ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step122ExitFBefore s6Step122ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step122ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step122ExitF_checked : planRowResizeLog s6Step122ExitFBefore s6Step122ExitFRow 208 []=
    some (s6Step122ExitFAfter,s6Step122ExitFOut,shrinkRow 795 s6Step122ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step122ExitFBefore s6Step122ExitFRow 208 s6Step122ExitF_distinct s6Step122ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step122ExitFRow.payload.take 208) s6Step122ExitFRow.sign=s6Step122ExitFOut := by decide +kernel
  have hi : s6Step122ExitFRow.payload.drop 208=s6Step122ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step122ExitF_retired] at result
  exact result

private def s6Step122ExitFvAfter : Arena := s6Step122ExitFAfter

private def s6Step122ExitFvBefore : Arena := s6Step122ExitFAfter

private theorem s6Step122ExitFv_Incoming : rowsOwned s6Step122ExitFvBefore [s6Step122ExitFvRow,s6Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122ExitGRow,s6Step122ExitFRow,s6Step122ExitFvRow,s6Step122ExitGvRow] 2 s6Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122ExitFvBefore (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122ExitFv_Outgoing : rowsOwned s6Step122ExitGvAfter [s6Step122ExitFvOut,s6Step122ExitGvOut] :=
  hmrRows_owned_drop s6Step122ExitGvAfter [s6Step122ExitGOut,s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut] 2 s6Step122ExitBank_outgoingOwned

private theorem s6Step122ExitFv_distinct : (s6Step122ExitFvRow.sign::s6Step122ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122ExitFv_owned : (s6Step122ExitFvRow.sign::s6Step122ExitFvRow.payload).toFinset⊆s6Step122ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122ExitFvBefore (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122ExitFv_reserved : s6Step122ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step122ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step122ExitFv_checked : planRowResizeLog s6Step122ExitFvBefore s6Step122ExitFvRow 75 []=
    some (s6Step122ExitFvAfter,s6Step122ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step122ExitFvBefore s6Step122ExitFvAfter s6Step122ExitFvRow 75 []
    s6Step122ExitFv_distinct s6Step122ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step122ExitFvRow.payload++[]) s6Step122ExitFvRow.sign=s6Step122ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step122ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step122ExitG_Incoming : rowsOwned s6Step122ExitGBefore [s6Step122ExitGRow,s6Step122ExitFRow,s6Step122ExitFvRow,s6Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122ExitGRow,s6Step122ExitFRow,s6Step122ExitFvRow,s6Step122ExitGvRow] 0 s6Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step122ExitG_Outgoing : rowsOwned s6Step122ExitGvAfter [s6Step122ExitGOut,s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut] :=
  hmrRows_owned_drop s6Step122ExitGvAfter [s6Step122ExitGOut,s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut] 0 s6Step122ExitBank_outgoingOwned

private theorem s6Step122ExitG_distinct : (s6Step122ExitGRow.sign::s6Step122ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122ExitG_owned : (s6Step122ExitGRow.sign::s6Step122ExitGRow.payload).toFinset⊆s6Step122ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122ExitG_retired : s6Step122ExitGBefore.retireSet s6Step122ExitGExtra.toFinset=s6Step122ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step122ExitGBefore s6Step122ExitGAfter s6Step122ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step122ExitGBefore s6Step122ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step122ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step122ExitG_checked : planRowResizeLog s6Step122ExitGBefore s6Step122ExitGRow 208 []=
    some (s6Step122ExitGAfter,s6Step122ExitGOut,shrinkRow 777 s6Step122ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step122ExitGBefore s6Step122ExitGRow 208 s6Step122ExitG_distinct s6Step122ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step122ExitGRow.payload.take 208) s6Step122ExitGRow.sign=s6Step122ExitGOut := by decide +kernel
  have hi : s6Step122ExitGRow.payload.drop 208=s6Step122ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step122ExitG_retired] at result
  exact result

private def s6Step122ExitGvBefore : Arena := s6Step122ExitFAfter

private theorem s6Step122ExitGv_Incoming : rowsOwned s6Step122ExitGvBefore [s6Step122ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122ExitGRow,s6Step122ExitFRow,s6Step122ExitFvRow,s6Step122ExitGvRow] 3 s6Step122ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122ExitGvBefore (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step122ExitGv_Outgoing : rowsOwned s6Step122ExitGvAfter [s6Step122ExitGvOut] :=
  hmrRows_owned_drop s6Step122ExitGvAfter [s6Step122ExitGOut,s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut] 3 s6Step122ExitBank_outgoingOwned

private theorem s6Step122ExitGv_distinct : (s6Step122ExitGvRow.sign::s6Step122ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122ExitGv_owned : (s6Step122ExitGvRow.sign::s6Step122ExitGvRow.payload).toFinset⊆s6Step122ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122ExitGvBefore (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step122ExitGv_retired : s6Step122ExitGvBefore.retireSet s6Step122ExitGvExtra.toFinset=s6Step122ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step122ExitGvBefore s6Step122ExitGvAfter s6Step122ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step122ExitGvBefore s6Step122ExitGvAfter (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,464),(466,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,868),(869,875),(876,879),(880,882),(883,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step122ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step122ExitGv_checked : planRowResizeLog s6Step122ExitGvBefore s6Step122ExitGvRow 74 []=
    some (s6Step122ExitGvAfter,s6Step122ExitGvOut,shrinkRow 775 s6Step122ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step122ExitGvBefore s6Step122ExitGvRow 74 s6Step122ExitGv_distinct s6Step122ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step122ExitGvRow.payload.take 74) s6Step122ExitGvRow.sign=s6Step122ExitGvOut := by decide +kernel
  have hi : s6Step122ExitGvRow.payload.drop 74=s6Step122ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step122ExitGv_retired] at result
  exact result

private theorem s6Step122ExitBank_rows : planWindowRowsLog s6Step122ExitGBefore [(s6Step122ExitGRow,208),(s6Step122ExitFRow,208),(s6Step122ExitFvRow,75),(s6Step122ExitGvRow,74)] [[],[],[],[]]=
    some (s6Step122ExitGvAfter,[s6Step122ExitGOut,s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut],(shrinkRow 777 s6Step122ExitGExtra ++ (shrinkRow 795 s6Step122ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step122ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step122ExitGvAfter [] []=some (s6Step122ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step122ExitGvBefore s6Step122ExitGvAfter s6Step122ExitGvAfter
    s6Step122ExitGvRow s6Step122ExitGvOut 74 [] [] [] []
    (shrinkRow 775 s6Step122ExitGvExtra) ([]) s6Step122ExitGv_Incoming s6Step122ExitGv_checked h4 s6Step122ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step122ExitFvBefore s6Step122ExitFvAfter s6Step122ExitGvAfter
    s6Step122ExitFvRow s6Step122ExitFvOut 75 [] [(s6Step122ExitGvRow,74)] [[]] [s6Step122ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step122ExitGvExtra ++ [])) s6Step122ExitFv_Incoming s6Step122ExitFv_checked h3 s6Step122ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step122ExitFBefore s6Step122ExitFAfter s6Step122ExitGvAfter
    s6Step122ExitFRow s6Step122ExitFOut 208 [] [(s6Step122ExitFvRow,75),(s6Step122ExitGvRow,74)] [[],[]] [s6Step122ExitFvOut,s6Step122ExitGvOut]
    (shrinkRow 795 s6Step122ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step122ExitGvExtra ++ []))) s6Step122ExitF_Incoming s6Step122ExitF_checked h2 s6Step122ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step122ExitGBefore s6Step122ExitGAfter s6Step122ExitGvAfter
    s6Step122ExitGRow s6Step122ExitGOut 208 [] [(s6Step122ExitFRow,208),(s6Step122ExitFvRow,75),(s6Step122ExitGvRow,74)] [[],[],[]] [s6Step122ExitFOut,s6Step122ExitFvOut,s6Step122ExitGvOut]
    (shrinkRow 777 s6Step122ExitGExtra) ((shrinkRow 795 s6Step122ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step122ExitGvExtra ++ [])))) s6Step122ExitG_Incoming s6Step122ExitG_checked h1 s6Step122ExitG_Outgoing
  exact h0

private theorem s6Step122ExitBank_checked : compileHmrBankResizeLog .exit s6Step122ExitGBefore ⟨s6Step122ExitFRow,s6Step122ExitGRow,s6Step122ExitFvRow,s6Step122ExitGvRow⟩ ⟨208,208,75,74⟩ [[],[],[],[]]=
    some (s6Step122ExitGvAfter,⟨s6Step122ExitFOut,s6Step122ExitGOut,s6Step122ExitFvOut,s6Step122ExitGvOut⟩,(shrinkRow 777 s6Step122ExitGExtra ++ (shrinkRow 795 s6Step122ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step122ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step122ExitBank_rows]
  rfl

private theorem s6Step122Add0_apart : Disjoint s6Step122Add0Arena.live s6Step122Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step122Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122Add0_card : s6Step122Add0Arena.live.card=879 := by
  decide +kernel

private theorem s6Step122Add0_borrowed : s6Step122Add0Arena.checkBorrow (hmrHybridCount s6Step122Add0Arena s6Step122Add0B.length) s6Step122Add0Work=some s6Step122Add0During := by
  have len : s6Step122Add0Work.length=hmrHybridCount s6Step122Add0Arena s6Step122Add0B.length := by
    rw [hmrHybridCount,s6Step122Add0_card]
    decide +kernel
  have nd : s6Step122Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step122Add0Arena s6Step122Add0During s6Step122Add0Work.toFinset s6Step122Add0_bounded s6Step122Add0_apart rfl

private theorem s6Step122Add0_distinct : (875::865::882::(s6Step122Add0A++s6Step122Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122Add0_owned : (875::865::882::(s6Step122Add0A++s6Step122Add0B)).toFinset⊆s6Step122Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step122Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122Add0_checked : compileHmrHybridCinLog s6Step122Add0Arena 865 875 882 s6Step122Add0A s6Step122Add0B s6Step122Add0Work=some s6Step122Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step122Add0Arena s6Step122Add0During 865 875 882 s6Step122Add0A s6Step122Add0B s6Step122Add0Work
    (by decide +kernel) (by decide +kernel) s6Step122Add0_distinct
    (fun q hq => s6Step122Add0_owned (List.mem_toFinset.mpr hq)) s6Step122Add0_borrowed

private theorem s6Step122Add1_apart : Disjoint s6Step122Add1Arena.live s6Step122Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step122Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122Add1_card : s6Step122Add1Arena.live.card=879 := by
  decide +kernel

private theorem s6Step122Add1_borrowed : s6Step122Add1Arena.checkBorrow (hmrHybridCount s6Step122Add1Arena s6Step122Add1B.length) s6Step122Add1Work=some s6Step122Add1During := by
  have len : s6Step122Add1Work.length=hmrHybridCount s6Step122Add1Arena s6Step122Add1B.length := by
    rw [hmrHybridCount,s6Step122Add1_card]
    decide +kernel
  have nd : s6Step122Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step122Add1Arena s6Step122Add1During s6Step122Add1Work.toFinset s6Step122Add1_bounded s6Step122Add1_apart rfl

private theorem s6Step122Add1_distinct : (875::865::882::(s6Step122Add1A++s6Step122Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122Add1_owned : (875::865::882::(s6Step122Add1A++s6Step122Add1B)).toFinset⊆s6Step122Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step122Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122Add1_checked : compileHmrHybridCinLog s6Step122Add1Arena 865 875 882 s6Step122Add1A s6Step122Add1B s6Step122Add1Work=some s6Step122Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step122Add1Arena s6Step122Add1During 865 875 882 s6Step122Add1A s6Step122Add1B s6Step122Add1Work
    (by decide +kernel) (by decide +kernel) s6Step122Add1_distinct
    (fun q hq => s6Step122Add1_owned (List.mem_toFinset.mpr hq)) s6Step122Add1_borrowed

private theorem s6Step122F4_apart : Disjoint (s6Step122Add0A++s6Step122Add0B).toFinset (s6Step122Add1A++s6Step122Add1B).toFinset := by
  have nd : ((s6Step122Add0A++s6Step122Add0B)++(s6Step122Add1A++s6Step122Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step122F4_carry : s6Step122F4FlagArena.checkBorrow 1 [882]=some s6Step122Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step122F4FlagArena,s6Step122HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step122F4FlagArena,s6Step122HeadFvAfter,s6Step122Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step122F4_distinct : (888::865::875::882::((s6Step122Add0A++s6Step122Add1A)++(s6Step122Add0B++s6Step122Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122F4_flag : s6Step122HeadFvAfter.checkBorrow 1 [875]=some s6Step122F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step122HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step122F4_owned : (888::865::((s6Step122Add0A++s6Step122Add1A)++(s6Step122Add0B++s6Step122Add1B))).toFinset⊆s6Step122HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step122HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122F4_checked : compileHmrHybridF4Log s6Step122HeadFvAfter 888 865 s6Step122Add0A s6Step122Add0B s6Step122Add1A s6Step122Add1B [875] [882] s6Step122Add0Work s6Step122Add1Work=some s6Step122F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step122HeadFvAfter s6Step122F4FlagArena s6Step122Add0Arena s6Step122Add0During s6Step122Add1During 888 865
    s6Step122Add0A s6Step122Add0B s6Step122Add1A s6Step122Add1B [875] [882] s6Step122Add0Work s6Step122Add1Work
    (fun q hq => s6Step122F4_owned (List.mem_toFinset.mpr hq)) s6Step122F4_flag s6Step122F4_carry
    s6Step122F4_distinct s6Step122F4_apart s6Step122Add0_checked s6Step122Add1_checked

private theorem s6Step122Front_branch : s6Step122FrontSigmaArena.checkBorrow 1 [865]=some s6Step122HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step122FrontSigmaArena,s6Step122EntryGvAfter,s6Step122EntryGAfter,arenaWires]
  · change s6Step122HeadGBefore.live=(s6Step122EntryGvAfter.live∪{888})∪{865}
    apply hmrArena_union_pair_of_filter_check s6Step122EntryGvAfter s6Step122HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(821,825),(827,832),(833,834),(835,836),(837,842),(843,849),(850,865),(866,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) 888 865 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step122Front_entry : HmrFrontEntryValid s6Step122EntryFBefore s6Step122FrontBank 210 74 ⟨208,208,75,74⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step122FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step122EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step122EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,796),(799,800),(802,804),(805,808),(814,815),(818,819),(822,825),(827,832),(835,836),(837,842),(843,849),(850,865),(866,868),(869,875),(876,879),(881,882),(883,888),(889,891),(892,893),(895,896),(898,899),(901,903),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step122FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step122Front_sigma : s6Step122EntryGvAfter.checkBorrow 1 [888]=some s6Step122FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step122EntryGvAfter,s6Step122EntryGAfter,arenaWires]
  · rfl

private def s6Step122HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122HeadFBefore : Arena := s6Step122HeadGAfter

private def s6Step122HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465],795⟩

private def s6Step122HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778],776⟩

private def s6Step122HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821],777⟩

private def s6Step122HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830],775⟩

private theorem s6Step122HeadBank_incomingDistinct : ([s6Step122HeadGRow,s6Step122HeadFRow,s6Step122HeadGvRow,s6Step122HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122HeadF_Incoming : rowsOwned s6Step122HeadFBefore [s6Step122HeadFRow,s6Step122HeadGvRow,s6Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122HeadGRow,s6Step122HeadFRow,s6Step122HeadGvRow,s6Step122HeadFvRow] 1 s6Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step122HeadBank_outgoingOwned : rowsOwned s6Step122HeadFvAfter [s6Step122HeadGOut,s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step122HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step122HeadF_Outgoing : rowsOwned s6Step122HeadFvAfter [s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut] :=
  hmrRows_owned_drop s6Step122HeadFvAfter [s6Step122HeadGOut,s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut] 1 s6Step122HeadBank_outgoingOwned

private theorem s6Step122HeadF_distinct : (s6Step122HeadFRow.sign::s6Step122HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122HeadF_owned : (s6Step122HeadFRow.sign::s6Step122HeadFRow.payload).toFinset⊆s6Step122HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122HeadF_reserved : s6Step122HeadFBefore.reserve s6Step122HeadFFresh.toFinset=some s6Step122HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122HeadFFresh,arenaWires]
  · norm_num [s6Step122HeadFBefore,s6Step122HeadGAfter,s6Step122HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step122HeadFAfter,s6Step122HeadFBefore,s6Step122HeadGAfter,s6Step122HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step122HeadF_checked : planRowResizeLog s6Step122HeadFBefore s6Step122HeadFRow 211 s6Step122HeadFFresh=
    some (s6Step122HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 796],795⟩,growRow 795 s6Step122HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step122HeadFBefore s6Step122HeadFAfter s6Step122HeadFRow 211 s6Step122HeadFFresh
    s6Step122HeadF_distinct s6Step122HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122HeadF_reserved
  have rowEq : WindowRow.mk (s6Step122HeadFRow.payload++s6Step122HeadFFresh) s6Step122HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 796],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step122HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step122HeadFvBefore : Arena := s6Step122HeadGvAfter

private theorem s6Step122HeadFv_Incoming : rowsOwned s6Step122HeadFvBefore [s6Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122HeadGRow,s6Step122HeadFRow,s6Step122HeadGvRow,s6Step122HeadFvRow] 3 s6Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step122HeadFv_Outgoing : rowsOwned s6Step122HeadFvAfter [s6Step122HeadFvOut] :=
  hmrRows_owned_drop s6Step122HeadFvAfter [s6Step122HeadGOut,s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut] 3 s6Step122HeadBank_outgoingOwned

private theorem s6Step122HeadFv_distinct : (s6Step122HeadFvRow.sign::s6Step122HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122HeadFv_owned : (s6Step122HeadFvRow.sign::s6Step122HeadFvRow.payload).toFinset⊆s6Step122HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122HeadFv_reserved : s6Step122HeadFvBefore.reserve s6Step122HeadFvFresh.toFinset=some s6Step122HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122HeadFvFresh,arenaWires]
  · norm_num [s6Step122HeadFvBefore,s6Step122HeadGvAfter,s6Step122HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step122HeadFvAfter,s6Step122HeadFvBefore,s6Step122HeadGvAfter,s6Step122HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step122HeadFv_checked : planRowResizeLog s6Step122HeadFvBefore s6Step122HeadFvRow 75 s6Step122HeadFvFresh=
    some (s6Step122HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩,growRow 776 s6Step122HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step122HeadFvBefore s6Step122HeadFvAfter s6Step122HeadFvRow 75 s6Step122HeadFvFresh
    s6Step122HeadFv_distinct s6Step122HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step122HeadFvRow.payload++s6Step122HeadFvFresh) s6Step122HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 854, 841, 839, 843, 807, 862, 860, 927, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step122HeadG_Incoming : rowsOwned s6Step122HeadGBefore [s6Step122HeadGRow,s6Step122HeadFRow,s6Step122HeadGvRow,s6Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122HeadGRow,s6Step122HeadFRow,s6Step122HeadGvRow,s6Step122HeadFvRow] 0 s6Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step122HeadG_Outgoing : rowsOwned s6Step122HeadFvAfter [s6Step122HeadGOut,s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut] :=
  hmrRows_owned_drop s6Step122HeadFvAfter [s6Step122HeadGOut,s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut] 0 s6Step122HeadBank_outgoingOwned

private theorem s6Step122HeadG_distinct : (s6Step122HeadGRow.sign::s6Step122HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122HeadG_owned : (s6Step122HeadGRow.sign::s6Step122HeadGRow.payload).toFinset⊆s6Step122HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<796) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122HeadG_reserved : s6Step122HeadGBefore.reserve s6Step122HeadGFresh.toFinset=some s6Step122HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122HeadGFresh,arenaWires]
  · norm_num [s6Step122HeadGBefore,s6Step122HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step122HeadGAfter,s6Step122HeadGBefore,s6Step122HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step122HeadG_checked : planRowResizeLog s6Step122HeadGBefore s6Step122HeadGRow 211 s6Step122HeadGFresh=
    some (s6Step122HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821, 879],777⟩,growRow 777 s6Step122HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step122HeadGBefore s6Step122HeadGAfter s6Step122HeadGRow 211 s6Step122HeadGFresh
    s6Step122HeadG_distinct s6Step122HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122HeadG_reserved
  have rowEq : WindowRow.mk (s6Step122HeadGRow.payload++s6Step122HeadGFresh) s6Step122HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 833, 868, 821, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step122HeadGvBefore : Arena := s6Step122HeadFAfter

private theorem s6Step122HeadGv_Incoming : rowsOwned s6Step122HeadGvBefore [s6Step122HeadGvRow,s6Step122HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step122HeadGRow,s6Step122HeadFRow,s6Step122HeadGvRow,s6Step122HeadFvRow] 2 s6Step122HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step122HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step122HeadGv_Outgoing : rowsOwned s6Step122HeadFvAfter [s6Step122HeadGvOut,s6Step122HeadFvOut] :=
  hmrRows_owned_drop s6Step122HeadFvAfter [s6Step122HeadGOut,s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut] 2 s6Step122HeadBank_outgoingOwned

private theorem s6Step122HeadGv_distinct : (s6Step122HeadGvRow.sign::s6Step122HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step122HeadGv_owned : (s6Step122HeadGvRow.sign::s6Step122HeadGvRow.payload).toFinset⊆s6Step122HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step122HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<836) ∨ (837≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<880) ∨ (881≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<893) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step122HeadGv_reserved : s6Step122HeadGvBefore.reserve s6Step122HeadGvFresh.toFinset=some s6Step122HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step122HeadGvFresh,arenaWires]
  · norm_num [s6Step122HeadGvBefore,s6Step122HeadFAfter,s6Step122HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step122HeadGvAfter,s6Step122HeadGvBefore,s6Step122HeadFAfter,s6Step122HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step122HeadGv_checked : planRowResizeLog s6Step122HeadGvBefore s6Step122HeadGvRow 75 s6Step122HeadGvFresh=
    some (s6Step122HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 813],775⟩,growRow 775 s6Step122HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step122HeadGvBefore s6Step122HeadGvAfter s6Step122HeadGvRow 75 s6Step122HeadGvFresh
    s6Step122HeadGv_distinct s6Step122HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step122HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step122HeadGvRow.payload++s6Step122HeadGvFresh) s6Step122HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 814, 848, 850, 838, 822, 898, 853, 869, 768, 867, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step122HeadBank_rows : planWindowRowsLog s6Step122HeadGBefore [(s6Step122HeadGRow,211),(s6Step122HeadFRow,211),(s6Step122HeadGvRow,75),(s6Step122HeadFvRow,75)] [s6Step122HeadGFresh,s6Step122HeadFFresh,s6Step122HeadGvFresh,s6Step122HeadFvFresh]=
    some (s6Step122HeadFvAfter,[s6Step122HeadGOut,s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut],(growRow 777 s6Step122HeadGFresh ++ (growRow 795 s6Step122HeadFFresh ++ (growRow 775 s6Step122HeadGvFresh ++ (growRow 776 s6Step122HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step122HeadFvAfter [] []=some (s6Step122HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step122HeadFvBefore s6Step122HeadFvAfter s6Step122HeadFvAfter
    s6Step122HeadFvRow s6Step122HeadFvOut 75 s6Step122HeadFvFresh [] [] []
    (growRow 776 s6Step122HeadFvFresh) ([]) s6Step122HeadFv_Incoming s6Step122HeadFv_checked h4 s6Step122HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step122HeadGvBefore s6Step122HeadGvAfter s6Step122HeadFvAfter
    s6Step122HeadGvRow s6Step122HeadGvOut 75 s6Step122HeadGvFresh [(s6Step122HeadFvRow,75)] [s6Step122HeadFvFresh] [s6Step122HeadFvOut]
    (growRow 775 s6Step122HeadGvFresh) ((growRow 776 s6Step122HeadFvFresh ++ [])) s6Step122HeadGv_Incoming s6Step122HeadGv_checked h3 s6Step122HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step122HeadFBefore s6Step122HeadFAfter s6Step122HeadFvAfter
    s6Step122HeadFRow s6Step122HeadFOut 211 s6Step122HeadFFresh [(s6Step122HeadGvRow,75),(s6Step122HeadFvRow,75)] [s6Step122HeadGvFresh,s6Step122HeadFvFresh] [s6Step122HeadGvOut,s6Step122HeadFvOut]
    (growRow 795 s6Step122HeadFFresh) ((growRow 775 s6Step122HeadGvFresh ++ (growRow 776 s6Step122HeadFvFresh ++ []))) s6Step122HeadF_Incoming s6Step122HeadF_checked h2 s6Step122HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step122HeadGBefore s6Step122HeadGAfter s6Step122HeadFvAfter
    s6Step122HeadGRow s6Step122HeadGOut 211 s6Step122HeadGFresh [(s6Step122HeadFRow,211),(s6Step122HeadGvRow,75),(s6Step122HeadFvRow,75)] [s6Step122HeadFFresh,s6Step122HeadGvFresh,s6Step122HeadFvFresh] [s6Step122HeadFOut,s6Step122HeadGvOut,s6Step122HeadFvOut]
    (growRow 777 s6Step122HeadGFresh) ((growRow 795 s6Step122HeadFFresh ++ (growRow 775 s6Step122HeadGvFresh ++ (growRow 776 s6Step122HeadFvFresh ++ [])))) s6Step122HeadG_Incoming s6Step122HeadG_checked h1 s6Step122HeadG_Outgoing
  exact h0

private theorem s6Step122HeadBank_checked : compileHmrBankResizeLog .headroom s6Step122HeadGBefore ⟨s6Step122HeadFRow,s6Step122HeadGRow,s6Step122HeadFvRow,s6Step122HeadGvRow⟩ ⟨211,211,75,75⟩ [s6Step122HeadGFresh,s6Step122HeadFFresh,s6Step122HeadGvFresh,s6Step122HeadFvFresh]=
    some (s6Step122HeadFvAfter,⟨s6Step122HeadFOut,s6Step122HeadGOut,s6Step122HeadFvOut,s6Step122HeadGvOut⟩,(growRow 777 s6Step122HeadGFresh ++ (growRow 795 s6Step122HeadFFresh ++ (growRow 775 s6Step122HeadGvFresh ++ (growRow 776 s6Step122HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step122HeadBank_rows]
  rfl

private theorem s6Step122Front_checked : compileHmrSourceFrontLog s6Step122EntryFBefore s6Step122FrontBank 210 74 ⟨208,208,75,74⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step122FrontLog=some s6Step122FrontPlan := by
  have pairEq : s6Step122FrontPair=⟨s6Step122HeadFRow,s6Step122HeadGRow,s6Step122HeadFvRow,s6Step122HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step122FrontHead=⟨s6Step122ExitFRow,s6Step122ExitGRow,s6Step122ExitFvRow,s6Step122ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step122Add0A=s6Step122FrontHead.f.wires := by decide +kernel
  have gEq : s6Step122Add0B=s6Step122FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step122Add1A=s6Step122FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step122Add1B=s6Step122FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step122EntryFBefore s6Step122FrontBank 210 74 ⟨208,208,75,74⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step122FrontLog s6Step122FrontPlan
  · exact s6Step122Front_entry
  · exact s6Step122EntryBank_checked
  · exact s6Step122Front_sigma
  · rfl
  · exact s6Step122Front_branch
  · rfl
  · simpa only [s6Step122FrontPlan,pairEq] using s6Step122HeadBank_checked
  · simpa only [s6Step122FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step122F4_checked
  · exact s6Step122Counter_checked
  · rfl
  · simpa only [s6Step122FrontPlan,headEq] using s6Step122ExitBank_checked

private theorem s6Step122Complete_explicit_checked : compileHmrEarlyStepLog s6Step122EntryFBefore s6Step122FrontBank 210 74 ⟨208,208,75,74⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step122CompleteLog=some s6Step122CompletePlan := by
  let Q := s6Step122EarlyControlPlan
  have hq := s6Step122EarlyControl_plan_checked
  have fv1 : s6Step122CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step122CompleteOut.fv.payload[2]?.getD s6Step122CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step122CompleteOut.fv.payload[3]?.getD s6Step122CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step122CompleteOut.fv.payload[4]?.getD s6Step122CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step122EntryFBefore s6Step122EarlyControlArena s6Step122FrontBank 210 74 ⟨208,208,75,74⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 37 s6Step122CompleteLog s6Step122FrontPlan Q
    s6Step122Front_checked s6Step122Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step122Complete_owned s6Step122Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step122EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 769 888 s6Step122CompleteOut.fv.second (s6Step122CompleteOut.fv.payload[2]?.getD s6Step122CompleteOut.fv.sign) (s6Step122CompleteOut.fv.payload[3]?.getD s6Step122CompleteOut.fv.sign) (s6Step122CompleteOut.fv.payload[4]?.getD s6Step122CompleteOut.fv.sign) 865 37 s6Step122EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep122Arena : Arena := s6Step122EntryFBefore
def s6PrivateStep122Bank : WindowBank := s6Step122FrontBank
def s6PrivateStep122Spec : HmrSourceWalkStepLog := ⟨210,74,⟨208,208,75,74⟩,37,.early s6Step122CompleteLog⟩
def s6PrivateStep122Plan : HmrSourceStepPlan := .early s6Step122CompletePlan
theorem s6PrivateStep122_source : s6PrivateStep122Spec=s6ObservedLogs112[10] := rfl
theorem s6PrivateStep122_checked : compileHmrSourceStepLog s6PrivateStep122Arena s6PrivateStep122Bank
    s6PrivateStep122Spec.fgWidth s6PrivateStep122Spec.vWidth s6PrivateStep122Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844]
    6 498 122 s6PrivateStep122Spec.need none s6PrivateStep122Spec.log=some s6PrivateStep122Plan := by
  change compileHmrSourceStepLog s6Step122EntryFBefore s6Step122FrontBank 210 74 ⟨208,208,75,74⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844] 6 498 122 37 none (.early s6Step122CompleteLog)=some (.early s6Step122CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 122<498)]
  rw [s6Step122Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
