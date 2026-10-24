import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep138
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

private def s6Step140CompleteMoves : List (Wire × Wire) := [(786,455)]

private def s6Step140EarlyControlLog : HmrEarlyControlLog := ⟨[786, 879, 813, 850, 867],[807],[875],[882, 891, 903, 791, 825, 810],[924]⟩

private def s6Step140FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [867], [], []],[[807], [850], [879], [813]],[[], [], [], []]⟩,[768],[927],[875],[882],[891, 903, 791, 825, 810, 924, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 924, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step140CompleteLog : HmrEarlyStepLog := ⟨s6Step140FrontLog,s6Step140CompleteMoves,s6Step140EarlyControlLog⟩

private def s6Step140ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step140ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step140ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩

private def s6Step140ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private def s6Step140FrontOut : WindowBank := ⟨s6Step140ExitFOut,s6Step140ExitGOut,s6Step140ExitFvOut,s6Step140ExitGvOut⟩

private def s6Step140CompleteOut : WindowBank := s6Step140FrontOut.repacked s6Step140CompleteMoves

private def s6Step140EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step140EarlyControlPositiveArena,[807],s6Step140EarlyControlEqualityArena,[875],⟨⟨768,false⟩,[⟨⟨807,false⟩,875⟩]⟩⟩

private def s6Step140EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,813⟩,⟨⟨770,false⟩,850⟩,⟨⟨769,false⟩,867⟩]⟩

private def s6Step140EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step140EarlyControlZeroArena,s6Step140EarlyControlZeroPlan,s6Step140EarlyControlClassPlan,s6Step140EarlyControlFlagArena,s6Step140EarlyControlFittedArena,s6Step140EarlyControlHistoryArena,s6Step140EarlyControlSigmaArena,s6Step140EarlyControlOutputArena,s6Step140EarlyControlLog⟩

private def s6Step140CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step140Counter_bounded : s6Step140CounterWork.toFinset⊆arenaWires := by norm_num [s6Step140CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step140HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140CounterDuring : Arena := ⟨s6Step140HeadFvAfter.live∪s6Step140CounterWork.toFinset,Finset.union_subset s6Step140HeadFvAfter.bounded s6Step140Counter_bounded⟩

private def s6Step140EntryFFresh : List Wire := []

private def s6Step140EntryFvFresh : List Wire := []

private def s6Step140EntryGFresh : List Wire := [867]

private def s6Step140EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)),Finset.filter_subset _ _⟩

private def s6Step140EntryGvAfter : Arena := s6Step140EntryGAfter

private def s6Step140EntryGvFresh : List Wire := []

private def s6Step140ExitFExtra : List Wire := [455, 850]

private def s6Step140ExitFvExtra : List Wire := [813]

private def s6Step140ExitGExtra : List Wire := [867, 807]

private def s6Step140ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140ExitGvExtra : List Wire := [879]

private def s6Step140Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140Add0Work : List Wire := [891, 903, 791, 825, 810, 924, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step140Add0_bounded : s6Step140Add0Work.toFinset⊆arenaWires := by
  have h : s6Step140Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step140Add0During : Arena := ⟨s6Step140Add0Arena.live∪s6Step140Add0Work.toFinset,Finset.union_subset s6Step140Add0Arena.bounded s6Step140Add0_bounded⟩

private def s6Step140Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140Add1Work : List Wire := [891, 903, 791, 825, 810, 924, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step140Add1_bounded : s6Step140Add1Work.toFinset⊆arenaWires := by
  have h : s6Step140Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step140Add1During : Arena := ⟨s6Step140Add1Arena.live∪s6Step140Add1Work.toFinset,Finset.union_subset s6Step140Add1Arena.bounded s6Step140Add1_bounded⟩

private def s6Step140F4FlagArena : Arena := ⟨s6Step140HeadFvAfter.live∪{875},Finset.union_subset s6Step140HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step140F4Plan : HmrHybridF4Plan := ⟨s6Step140F4FlagArena,[875],s6Step140Add0Arena,[882],s6Step140Add0During,s6Step140Add0Work,s6Step140Add1During,s6Step140Add1Work⟩

private def s6Step140HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 850],795⟩

private def s6Step140HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 813],776⟩

private def s6Step140HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867, 807],777⟩

private def s6Step140HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 879],775⟩

private def s6Step140FrontHead : WindowBank := ⟨s6Step140HeadFOut,s6Step140HeadGOut,s6Step140HeadFvOut,s6Step140HeadGvOut⟩

private def s6Step140EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step140EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step140EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867],777⟩

private def s6Step140EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private def s6Step140FrontPair : WindowBank := ⟨s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut⟩

private def s6Step140FrontSigmaArena : Arena := ⟨s6Step140EntryGvAfter.live∪{768},Finset.union_subset s6Step140EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step140HeadFFresh : List Wire := [850]

private def s6Step140HeadFvFresh : List Wire := [813]

private def s6Step140HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140HeadGFresh : List Wire := [807]

private def s6Step140HeadGvFresh : List Wire := [879]

private def s6Step140FrontPlan : HmrSourceFront := ⟨s6Step140EntryGvAfter,s6Step140FrontPair,(growRow 795 s6Step140EntryFFresh ++ (growRow 777 s6Step140EntryGFresh ++ (growRow 776 s6Step140EntryFvFresh ++ (growRow 775 s6Step140EntryGvFresh ++ [])))),s6Step140FrontSigmaArena,[768],s6Step140HeadGBefore,[927],
  s6Step140HeadFvAfter,s6Step140FrontHead,(growRow 777 s6Step140HeadGFresh ++ (growRow 795 s6Step140HeadFFresh ++ (growRow 775 s6Step140HeadGvFresh ++ (growRow 776 s6Step140HeadFvFresh ++ [])))),s6Step140F4Plan,s6Step140CounterDuring,s6Step140CounterWork,s6Step140ExitGvAfter,s6Step140FrontOut,(shrinkRow 777 s6Step140ExitGExtra ++ (shrinkRow 795 s6Step140ExitFExtra ++ (shrinkRow 776 s6Step140ExitFvExtra ++ (shrinkRow 775 s6Step140ExitGvExtra ++ []))))⟩

private def s6Step140CompletePlan : HmrEarlyStepPlan := ⟨s6Step140FrontPlan,s6Step140EarlyControlArena,s6Step140EarlyControlPlan,s6Step140CompleteMoves⟩

private theorem s6Step140Complete_apart : List.Disjoint (s6Step140CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] := by
  have nd : ((s6Step140CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step140Complete_owned : (s6Step140CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step140CompleteRelocationMove0Borrowed : Arena := ⟨s6Step140ExitGvAfter.live∪{455},Finset.union_subset s6Step140ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step140CompleteRelocation_move0_owned : 786∈s6Step140ExitGvAfter.live := by norm_num [s6Step140ExitGvAfter,arenaWires]

private theorem s6Step140CompleteRelocation_move0_reserve : s6Step140ExitGvAfter.reserve {455}=some s6Step140CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step140ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step140CompleteRelocation_move0_retire : s6Step140CompleteRelocationMove0Borrowed.retireSet {786}=s6Step140EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step140CompleteRelocationMove0Borrowed s6Step140EarlyControlArena {786}
  change s6Step140EarlyControlArena.live=(s6Step140ExitGvAfter.live∪{455})\{786}
  apply hmrArena_update_of_filter_check s6Step140ExitGvAfter s6Step140EarlyControlArena (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [455] [786] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step140CompleteRelocation_checked : s6Step140ExitGvAfter.checkRepack [(786,455)]=some s6Step140EarlyControlArena := by
  have tail1 : s6Step140EarlyControlArena.checkRepack []=some s6Step140EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step140ExitGvAfter s6Step140CompleteRelocationMove0Borrowed s6Step140EarlyControlArena s6Step140EarlyControlArena 786 455 []
    s6Step140CompleteRelocation_move0_owned s6Step140CompleteRelocation_move0_reserve s6Step140CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step140Complete_repack : s6Step140ExitGvAfter.checkRepack s6Step140CompleteMoves=some s6Step140EarlyControlArena := by
  simpa only [s6Step140CompleteMoves] using s6Step140CompleteRelocation_checked

private theorem s6Step140EarlyControl_branchOwned : ([927] : List Wire).toFinset⊆s6Step140EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EarlyControl_branch : compileHmrBranchRetirement s6Step140EarlyControlSigmaArena 927=some s6Step140EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step140EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step140EarlyControlSigmaArena s6Step140EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [927] rfl rfl
    decide +kernel

private theorem s6Step140EarlyControl_classEqualityBorrow : s6Step140EarlyControlPositiveArena.checkBorrow (([768, 807] : List Wire).length-1) s6Step140EarlyControlLog.classWork=some s6Step140EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step140EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step140EarlyControlEqualityArena,s6Step140EarlyControlPositiveArena,s6Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step140EarlyControl_classEqualityOwned : ([768, 807] : List Wire).toFinset⊆s6Step140EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140EarlyControl_classEquality : compileHmrEqualityLog s6Step140EarlyControlPositiveArena [768, 807] 0 s6Step140EarlyControlLog.classWork=some (s6Step140EarlyControlEqualityArena,s6Step140EarlyControlLog.classWork,s6Step140EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step140EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step140EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step140EarlyControl_classOwned : ([769, 867, 768] : List Wire).toFinset⊆s6Step140EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140EarlyControl_positiveBorrow : s6Step140EarlyControlZeroArena.checkBorrow (1) s6Step140EarlyControlLog.positiveWork=some s6Step140EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step140EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step140EarlyControlPositiveArena,s6Step140EarlyControlZeroArena,s6Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step140EarlyControl_class : compileHmrSourceClassLog s6Step140EarlyControlZeroArena false 769 s6Step140EarlyControlZeroPlan.top 0 768 s6Step140EarlyControlLog.positiveWork s6Step140EarlyControlLog.classWork=some s6Step140EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step140EarlyControlClassPlan s6Step140EarlyControlZeroArena false 769 s6Step140EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step140EarlyControl_classOwned
  · exact s6Step140EarlyControl_positiveBorrow
  · exact s6Step140EarlyControl_classEquality

private theorem s6Step140EarlyControl_entryRecordOwned : ([927, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] : List Wire).toFinset⊆s6Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EarlyControl_fitBorrow : s6Step140EarlyControlFlagArena.checkBorrow ((41-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] : List Wire).length)) s6Step140EarlyControlLog.recordFresh=some s6Step140EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step140EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step140EarlyControlFittedArena,s6Step140EarlyControlFlagArena,s6Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step140EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] : List Wire).toFinset⊆s6Step140EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140EarlyControl_fit : compileHmrRecordGrowLog s6Step140EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 41 s6Step140EarlyControlLog.recordFresh=some s6Step140EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step140EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step140EarlyControl_fitBorrow

private theorem s6Step140EarlyControl_flagsBorrow : s6Step140EarlyControlEqualityArena.checkBorrow (6) s6Step140EarlyControlLog.flagWork=some s6Step140EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step140EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step140EarlyControlFlagArena,s6Step140EarlyControlEqualityArena,s6Step140EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step140EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step140EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140EarlyControl_flags : compileHmrFlagsLog s6Step140EarlyControlClassPlan.equalityArena s6Step140EarlyControlClassPlan.equality.top 253 252 251 s6Step140EarlyControlLog.flagWork=some s6Step140EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step140EarlyControl_flagsOwned⟩
  · exact s6Step140EarlyControl_flagsBorrow

private theorem s6Step140EarlyControl_historyBorrow : s6Step140EarlyControlArena.checkBorrow ((41-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] : List Wire).length)) s6Step140EarlyControlLog.recordFresh=some s6Step140EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step140EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step140EarlyControlArena s6Step140EarlyControlHistoryArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step140EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step140EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] : List Wire).toFinset⊆s6Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EarlyControl_history : compileHmrRecordGrowLog s6Step140EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 41 s6Step140EarlyControlLog.recordFresh=some s6Step140EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step140EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step140EarlyControl_historyBorrow

private theorem s6Step140EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step140EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlHistoryArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step140EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlHistoryArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EarlyControl_sigmaRelease : s6Step140EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step140EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step140EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step140EarlyControlHistoryArena s6Step140EarlyControlSigmaArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step140EarlyControl_sigma : compileHmrSigmaDropLog s6Step140EarlyControlHistoryArena false 0 0 254 768 []=some s6Step140EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step140EarlyControl_sigmaOwned⟩
  · exact s6Step140EarlyControl_sigmaRelease

private theorem s6Step140EarlyControl_zeroBorrow : s6Step140EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step140EarlyControlLog.zeroWork=some s6Step140EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step140EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step140EarlyControlArena s6Step140EarlyControlZeroArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) s6Step140EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step140EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step140EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step140EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step140EarlyControlArena (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EarlyControl_zero : compileHmrEqualityLog s6Step140EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step140EarlyControlLog.zeroWork=some (s6Step140EarlyControlZeroArena,s6Step140EarlyControlLog.zeroWork,s6Step140EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step140EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step140EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step140EarlyControl_logged : s6Step140EarlyControlPlan.Logged s6Step140EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 769 768 254 253 252 251 927 41 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step140EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step140EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step140EarlyControl_zero
  · exact s6Step140EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step140EarlyControl_flags
  · exact s6Step140EarlyControl_fit
  · exact s6Step140EarlyControl_history
  · exact s6Step140EarlyControl_sigma
  · exact s6Step140EarlyControl_branch

private theorem s6Step140EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step140EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 769 768 254 253 252 251 927 41 s6Step140EarlyControlLog=some s6Step140EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step140EarlyControlPlan s6Step140EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 769 768 254 253 252 251 927 41 s6Step140EarlyControl_logged

private def s6Step140EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step140EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step140EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],777⟩

private def s6Step140EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private def s6Step140FrontBank : WindowBank := ⟨s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow⟩

private def s6Step140Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 850, 795]

private def s6Step140Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867, 807, 777]

private def s6Step140Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 813, 776]

private def s6Step140Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 879, 775]

private theorem s6Step140Counter_apart : Disjoint s6Step140HeadFvAfter.live s6Step140CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step140HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140Counter_borrowed : s6Step140HeadFvAfter.checkBorrow 4 s6Step140CounterWork=some s6Step140CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step140HeadFvAfter s6Step140CounterDuring s6Step140CounterWork.toFinset s6Step140Counter_bounded s6Step140Counter_apart rfl

private theorem s6Step140Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step140HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step140HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140Counter_checked : compileHmrCounterStepLog s6Step140HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step140CounterWork=some s6Step140CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step140HeadFvAfter.live := fun q hq => s6Step140Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step140Counter_borrowed

private def s6Step140EntryFAfter : Arena := s6Step140EntryFBefore

private theorem s6Step140EntryBank_incomingDistinct : ([s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140EntryF_Incoming : rowsOwned s6Step140EntryFBefore [s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow] 0 s6Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step140EntryBank_outgoingOwned : rowsOwned s6Step140EntryGvAfter [s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step140EntryGvAfter (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
    decide +kernel

private theorem s6Step140EntryF_Outgoing : rowsOwned s6Step140EntryGvAfter [s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut] :=
  hmrRows_owned_drop s6Step140EntryGvAfter [s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut] 0 s6Step140EntryBank_outgoingOwned

private theorem s6Step140EntryF_distinct : (s6Step140EntryFRow.sign::s6Step140EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140EntryF_owned : (s6Step140EntryFRow.sign::s6Step140EntryFRow.payload).toFinset⊆s6Step140EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EntryF_reserved : s6Step140EntryFBefore.reserve s6Step140EntryFFresh.toFinset=some s6Step140EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140EntryFFresh,arenaWires]
  · norm_num [s6Step140EntryFBefore,s6Step140EntryFFresh,arenaWires]
  · simp only [s6Step140EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step140EntryF_checked : planRowResizeLog s6Step140EntryFBefore s6Step140EntryFRow 200 s6Step140EntryFFresh=
    some (s6Step140EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩,growRow 795 s6Step140EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step140EntryFBefore s6Step140EntryFAfter s6Step140EntryFRow 200 s6Step140EntryFFresh
    s6Step140EntryF_distinct s6Step140EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140EntryF_reserved
  have rowEq : WindowRow.mk (s6Step140EntryFRow.payload++s6Step140EntryFFresh) s6Step140EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step140EntryFvAfter : Arena := s6Step140EntryGAfter

private def s6Step140EntryFvBefore : Arena := s6Step140EntryGAfter

private theorem s6Step140EntryFv_Incoming : rowsOwned s6Step140EntryFvBefore [s6Step140EntryFvRow,s6Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow] 2 s6Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
    decide +kernel

private theorem s6Step140EntryFv_Outgoing : rowsOwned s6Step140EntryGvAfter [s6Step140EntryFvOut,s6Step140EntryGvOut] :=
  hmrRows_owned_drop s6Step140EntryGvAfter [s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut] 2 s6Step140EntryBank_outgoingOwned

private theorem s6Step140EntryFv_distinct : (s6Step140EntryFvRow.sign::s6Step140EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140EntryFv_owned : (s6Step140EntryFvRow.sign::s6Step140EntryFvRow.payload).toFinset⊆s6Step140EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140EntryFvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step140EntryFv_reserved : s6Step140EntryFvBefore.reserve s6Step140EntryFvFresh.toFinset=some s6Step140EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140EntryFvFresh,arenaWires]
  · norm_num [s6Step140EntryFvBefore,s6Step140EntryGAfter,s6Step140EntryFvFresh,arenaWires]
  · simp only [s6Step140EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step140EntryFv_checked : planRowResizeLog s6Step140EntryFvBefore s6Step140EntryFvRow 84 s6Step140EntryFvFresh=
    some (s6Step140EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩,growRow 776 s6Step140EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step140EntryFvBefore s6Step140EntryFvAfter s6Step140EntryFvRow 84 s6Step140EntryFvFresh
    s6Step140EntryFv_distinct s6Step140EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step140EntryFvRow.payload++s6Step140EntryFvFresh) s6Step140EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step140EntryGBefore : Arena := s6Step140EntryFBefore

private theorem s6Step140EntryG_Incoming : rowsOwned s6Step140EntryGBefore [s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow] 1 s6Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step140EntryG_Outgoing : rowsOwned s6Step140EntryGvAfter [s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut] :=
  hmrRows_owned_drop s6Step140EntryGvAfter [s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut] 1 s6Step140EntryBank_outgoingOwned

private theorem s6Step140EntryG_distinct : (s6Step140EntryGRow.sign::s6Step140EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140EntryG_owned : (s6Step140EntryGRow.sign::s6Step140EntryGRow.payload).toFinset⊆s6Step140EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140EntryG_reserved : s6Step140EntryGBefore.reserve s6Step140EntryGFresh.toFinset=some s6Step140EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140EntryGFresh,arenaWires]
  · norm_num [s6Step140EntryGBefore,s6Step140EntryFBefore,s6Step140EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step140EntryGBefore s6Step140EntryGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) s6Step140EntryGFresh rfl rfl
    · norm_num [s6Step140EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step140EntryG_checked : planRowResizeLog s6Step140EntryGBefore s6Step140EntryGRow 200 s6Step140EntryGFresh=
    some (s6Step140EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867],777⟩,growRow 777 s6Step140EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step140EntryGBefore s6Step140EntryGAfter s6Step140EntryGRow 200 s6Step140EntryGFresh
    s6Step140EntryG_distinct s6Step140EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140EntryG_reserved
  have rowEq : WindowRow.mk (s6Step140EntryGRow.payload++s6Step140EntryGFresh) s6Step140EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step140EntryGvBefore : Arena := s6Step140EntryGAfter

private theorem s6Step140EntryGv_Incoming : rowsOwned s6Step140EntryGvBefore [s6Step140EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow] 3 s6Step140EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
    decide +kernel

private theorem s6Step140EntryGv_Outgoing : rowsOwned s6Step140EntryGvAfter [s6Step140EntryGvOut] :=
  hmrRows_owned_drop s6Step140EntryGvAfter [s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut] 3 s6Step140EntryBank_outgoingOwned

private theorem s6Step140EntryGv_distinct : (s6Step140EntryGvRow.sign::s6Step140EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140EntryGv_owned : (s6Step140EntryGvRow.sign::s6Step140EntryGvRow.payload).toFinset⊆s6Step140EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140EntryGvBefore (fun q => (0≤q ∧ q<768) ∨ (769≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923)) rfl
  decide +kernel

private theorem s6Step140EntryGv_reserved : s6Step140EntryGvBefore.reserve s6Step140EntryGvFresh.toFinset=some s6Step140EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140EntryGvFresh,arenaWires]
  · norm_num [s6Step140EntryGvBefore,s6Step140EntryGAfter,s6Step140EntryGvFresh,arenaWires]
  · simp only [s6Step140EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step140EntryGv_checked : planRowResizeLog s6Step140EntryGvBefore s6Step140EntryGvRow 84 s6Step140EntryGvFresh=
    some (s6Step140EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩,growRow 775 s6Step140EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step140EntryGvBefore s6Step140EntryGvAfter s6Step140EntryGvRow 84 s6Step140EntryGvFresh
    s6Step140EntryGv_distinct s6Step140EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step140EntryGvRow.payload++s6Step140EntryGvFresh) s6Step140EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step140EntryBank_rows : planWindowRowsLog s6Step140EntryFBefore [(s6Step140EntryFRow,200),(s6Step140EntryGRow,200),(s6Step140EntryFvRow,84),(s6Step140EntryGvRow,84)] [s6Step140EntryFFresh,s6Step140EntryGFresh,s6Step140EntryFvFresh,s6Step140EntryGvFresh]=
    some (s6Step140EntryGvAfter,[s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut],(growRow 795 s6Step140EntryFFresh ++ (growRow 777 s6Step140EntryGFresh ++ (growRow 776 s6Step140EntryFvFresh ++ (growRow 775 s6Step140EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step140EntryGvAfter [] []=some (s6Step140EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step140EntryGvBefore s6Step140EntryGvAfter s6Step140EntryGvAfter
    s6Step140EntryGvRow s6Step140EntryGvOut 84 s6Step140EntryGvFresh [] [] []
    (growRow 775 s6Step140EntryGvFresh) ([]) s6Step140EntryGv_Incoming s6Step140EntryGv_checked h4 s6Step140EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step140EntryFvBefore s6Step140EntryFvAfter s6Step140EntryGvAfter
    s6Step140EntryFvRow s6Step140EntryFvOut 84 s6Step140EntryFvFresh [(s6Step140EntryGvRow,84)] [s6Step140EntryGvFresh] [s6Step140EntryGvOut]
    (growRow 776 s6Step140EntryFvFresh) ((growRow 775 s6Step140EntryGvFresh ++ [])) s6Step140EntryFv_Incoming s6Step140EntryFv_checked h3 s6Step140EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step140EntryGBefore s6Step140EntryGAfter s6Step140EntryGvAfter
    s6Step140EntryGRow s6Step140EntryGOut 200 s6Step140EntryGFresh [(s6Step140EntryFvRow,84),(s6Step140EntryGvRow,84)] [s6Step140EntryFvFresh,s6Step140EntryGvFresh] [s6Step140EntryFvOut,s6Step140EntryGvOut]
    (growRow 777 s6Step140EntryGFresh) ((growRow 776 s6Step140EntryFvFresh ++ (growRow 775 s6Step140EntryGvFresh ++ []))) s6Step140EntryG_Incoming s6Step140EntryG_checked h2 s6Step140EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step140EntryFBefore s6Step140EntryFAfter s6Step140EntryGvAfter
    s6Step140EntryFRow s6Step140EntryFOut 200 s6Step140EntryFFresh [(s6Step140EntryGRow,200),(s6Step140EntryFvRow,84),(s6Step140EntryGvRow,84)] [s6Step140EntryGFresh,s6Step140EntryFvFresh,s6Step140EntryGvFresh] [s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut]
    (growRow 795 s6Step140EntryFFresh) ((growRow 777 s6Step140EntryGFresh ++ (growRow 776 s6Step140EntryFvFresh ++ (growRow 775 s6Step140EntryGvFresh ++ [])))) s6Step140EntryF_Incoming s6Step140EntryF_checked h1 s6Step140EntryF_Outgoing
  exact h0

private theorem s6Step140EntryBank_checked : compileHmrBankResizeLog .entry s6Step140EntryFBefore ⟨s6Step140EntryFRow,s6Step140EntryGRow,s6Step140EntryFvRow,s6Step140EntryGvRow⟩ ⟨200,200,84,84⟩ [s6Step140EntryFFresh,s6Step140EntryGFresh,s6Step140EntryFvFresh,s6Step140EntryGvFresh]=
    some (s6Step140EntryGvAfter,⟨s6Step140EntryFOut,s6Step140EntryGOut,s6Step140EntryFvOut,s6Step140EntryGvOut⟩,(growRow 795 s6Step140EntryFFresh ++ (growRow 777 s6Step140EntryGFresh ++ (growRow 776 s6Step140EntryFvFresh ++ (growRow 775 s6Step140EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step140EntryBank_rows]
  rfl

private def s6Step140ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140ExitFBefore : Arena := s6Step140ExitGAfter

private def s6Step140ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 850],795⟩

private def s6Step140ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 813],776⟩

private def s6Step140ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867, 807],777⟩

private def s6Step140ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 879],775⟩

private theorem s6Step140ExitBank_incomingDistinct : ([s6Step140ExitGRow,s6Step140ExitFRow,s6Step140ExitFvRow,s6Step140ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140ExitF_Incoming : rowsOwned s6Step140ExitFBefore [s6Step140ExitFRow,s6Step140ExitFvRow,s6Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140ExitGRow,s6Step140ExitFRow,s6Step140ExitFvRow,s6Step140ExitGvRow] 1 s6Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step140ExitBank_outgoingOwned : rowsOwned s6Step140ExitGvAfter [s6Step140ExitGOut,s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step140ExitGvAfter (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step140ExitF_Outgoing : rowsOwned s6Step140ExitGvAfter [s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut] :=
  hmrRows_owned_drop s6Step140ExitGvAfter [s6Step140ExitGOut,s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut] 1 s6Step140ExitBank_outgoingOwned

private theorem s6Step140ExitF_distinct : (s6Step140ExitFRow.sign::s6Step140ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140ExitF_owned : (s6Step140ExitFRow.sign::s6Step140ExitFRow.payload).toFinset⊆s6Step140ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140ExitF_retired : s6Step140ExitFBefore.retireSet s6Step140ExitFExtra.toFinset=s6Step140ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step140ExitFBefore s6Step140ExitFAfter s6Step140ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step140ExitFBefore s6Step140ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step140ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step140ExitF_checked : planRowResizeLog s6Step140ExitFBefore s6Step140ExitFRow 199 []=
    some (s6Step140ExitFAfter,s6Step140ExitFOut,shrinkRow 795 s6Step140ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step140ExitFBefore s6Step140ExitFRow 199 s6Step140ExitF_distinct s6Step140ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step140ExitFRow.payload.take 199) s6Step140ExitFRow.sign=s6Step140ExitFOut := by decide +kernel
  have hi : s6Step140ExitFRow.payload.drop 199=s6Step140ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step140ExitF_retired] at result
  exact result

private def s6Step140ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step140ExitFvBefore : Arena := s6Step140ExitFAfter

private theorem s6Step140ExitFv_Incoming : rowsOwned s6Step140ExitFvBefore [s6Step140ExitFvRow,s6Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140ExitGRow,s6Step140ExitFRow,s6Step140ExitFvRow,s6Step140ExitGvRow] 2 s6Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140ExitFvBefore (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step140ExitFv_Outgoing : rowsOwned s6Step140ExitGvAfter [s6Step140ExitFvOut,s6Step140ExitGvOut] :=
  hmrRows_owned_drop s6Step140ExitGvAfter [s6Step140ExitGOut,s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut] 2 s6Step140ExitBank_outgoingOwned

private theorem s6Step140ExitFv_distinct : (s6Step140ExitFvRow.sign::s6Step140ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140ExitFv_owned : (s6Step140ExitFvRow.sign::s6Step140ExitFvRow.payload).toFinset⊆s6Step140ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140ExitFvBefore (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140ExitFv_retired : s6Step140ExitFvBefore.retireSet s6Step140ExitFvExtra.toFinset=s6Step140ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step140ExitFvBefore s6Step140ExitFvAfter s6Step140ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step140ExitFvBefore s6Step140ExitFvAfter (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step140ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step140ExitFv_checked : planRowResizeLog s6Step140ExitFvBefore s6Step140ExitFvRow 84 []=
    some (s6Step140ExitFvAfter,s6Step140ExitFvOut,shrinkRow 776 s6Step140ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step140ExitFvBefore s6Step140ExitFvRow 84 s6Step140ExitFv_distinct s6Step140ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step140ExitFvRow.payload.take 84) s6Step140ExitFvRow.sign=s6Step140ExitFvOut := by decide +kernel
  have hi : s6Step140ExitFvRow.payload.drop 84=s6Step140ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step140ExitFv_retired] at result
  exact result

private def s6Step140ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step140ExitG_Incoming : rowsOwned s6Step140ExitGBefore [s6Step140ExitGRow,s6Step140ExitFRow,s6Step140ExitFvRow,s6Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140ExitGRow,s6Step140ExitFRow,s6Step140ExitFvRow,s6Step140ExitGvRow] 0 s6Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step140ExitG_Outgoing : rowsOwned s6Step140ExitGvAfter [s6Step140ExitGOut,s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut] :=
  hmrRows_owned_drop s6Step140ExitGvAfter [s6Step140ExitGOut,s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut] 0 s6Step140ExitBank_outgoingOwned

private theorem s6Step140ExitG_distinct : (s6Step140ExitGRow.sign::s6Step140ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140ExitG_owned : (s6Step140ExitGRow.sign::s6Step140ExitGRow.payload).toFinset⊆s6Step140ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140ExitG_retired : s6Step140ExitGBefore.retireSet s6Step140ExitGExtra.toFinset=s6Step140ExitGAfter := by
  unfold Arena.retireSet s6Step140ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step140ExitGBefore,s6Step140ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step140ExitG_checked : planRowResizeLog s6Step140ExitGBefore s6Step140ExitGRow 199 []=
    some (s6Step140ExitGAfter,s6Step140ExitGOut,shrinkRow 777 s6Step140ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step140ExitGBefore s6Step140ExitGRow 199 s6Step140ExitG_distinct s6Step140ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step140ExitGRow.payload.take 199) s6Step140ExitGRow.sign=s6Step140ExitGOut := by decide +kernel
  have hi : s6Step140ExitGRow.payload.drop 199=s6Step140ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step140ExitG_retired] at result
  exact result

private def s6Step140ExitGvBefore : Arena := s6Step140ExitFvAfter

private theorem s6Step140ExitGv_Incoming : rowsOwned s6Step140ExitGvBefore [s6Step140ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140ExitGRow,s6Step140ExitFRow,s6Step140ExitFvRow,s6Step140ExitGvRow] 3 s6Step140ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140ExitGvBefore (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step140ExitGv_Outgoing : rowsOwned s6Step140ExitGvAfter [s6Step140ExitGvOut] :=
  hmrRows_owned_drop s6Step140ExitGvAfter [s6Step140ExitGOut,s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut] 3 s6Step140ExitBank_outgoingOwned

private theorem s6Step140ExitGv_distinct : (s6Step140ExitGvRow.sign::s6Step140ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140ExitGv_owned : (s6Step140ExitGvRow.sign::s6Step140ExitGvRow.payload).toFinset⊆s6Step140ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140ExitGvBefore (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step140ExitGv_retired : s6Step140ExitGvBefore.retireSet s6Step140ExitGvExtra.toFinset=s6Step140ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step140ExitGvBefore s6Step140ExitGvAfter s6Step140ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step140ExitGvBefore s6Step140ExitGvAfter (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,455),(456,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step140ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step140ExitGv_checked : planRowResizeLog s6Step140ExitGvBefore s6Step140ExitGvRow 84 []=
    some (s6Step140ExitGvAfter,s6Step140ExitGvOut,shrinkRow 775 s6Step140ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step140ExitGvBefore s6Step140ExitGvRow 84 s6Step140ExitGv_distinct s6Step140ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step140ExitGvRow.payload.take 84) s6Step140ExitGvRow.sign=s6Step140ExitGvOut := by decide +kernel
  have hi : s6Step140ExitGvRow.payload.drop 84=s6Step140ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step140ExitGv_retired] at result
  exact result

private theorem s6Step140ExitBank_rows : planWindowRowsLog s6Step140ExitGBefore [(s6Step140ExitGRow,199),(s6Step140ExitFRow,199),(s6Step140ExitFvRow,84),(s6Step140ExitGvRow,84)] [[],[],[],[]]=
    some (s6Step140ExitGvAfter,[s6Step140ExitGOut,s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut],(shrinkRow 777 s6Step140ExitGExtra ++ (shrinkRow 795 s6Step140ExitFExtra ++ (shrinkRow 776 s6Step140ExitFvExtra ++ (shrinkRow 775 s6Step140ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step140ExitGvAfter [] []=some (s6Step140ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step140ExitGvBefore s6Step140ExitGvAfter s6Step140ExitGvAfter
    s6Step140ExitGvRow s6Step140ExitGvOut 84 [] [] [] []
    (shrinkRow 775 s6Step140ExitGvExtra) ([]) s6Step140ExitGv_Incoming s6Step140ExitGv_checked h4 s6Step140ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step140ExitFvBefore s6Step140ExitFvAfter s6Step140ExitGvAfter
    s6Step140ExitFvRow s6Step140ExitFvOut 84 [] [(s6Step140ExitGvRow,84)] [[]] [s6Step140ExitGvOut]
    (shrinkRow 776 s6Step140ExitFvExtra) ((shrinkRow 775 s6Step140ExitGvExtra ++ [])) s6Step140ExitFv_Incoming s6Step140ExitFv_checked h3 s6Step140ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step140ExitFBefore s6Step140ExitFAfter s6Step140ExitGvAfter
    s6Step140ExitFRow s6Step140ExitFOut 199 [] [(s6Step140ExitFvRow,84),(s6Step140ExitGvRow,84)] [[],[]] [s6Step140ExitFvOut,s6Step140ExitGvOut]
    (shrinkRow 795 s6Step140ExitFExtra) ((shrinkRow 776 s6Step140ExitFvExtra ++ (shrinkRow 775 s6Step140ExitGvExtra ++ []))) s6Step140ExitF_Incoming s6Step140ExitF_checked h2 s6Step140ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step140ExitGBefore s6Step140ExitGAfter s6Step140ExitGvAfter
    s6Step140ExitGRow s6Step140ExitGOut 199 [] [(s6Step140ExitFRow,199),(s6Step140ExitFvRow,84),(s6Step140ExitGvRow,84)] [[],[],[]] [s6Step140ExitFOut,s6Step140ExitFvOut,s6Step140ExitGvOut]
    (shrinkRow 777 s6Step140ExitGExtra) ((shrinkRow 795 s6Step140ExitFExtra ++ (shrinkRow 776 s6Step140ExitFvExtra ++ (shrinkRow 775 s6Step140ExitGvExtra ++ [])))) s6Step140ExitG_Incoming s6Step140ExitG_checked h1 s6Step140ExitG_Outgoing
  exact h0

private theorem s6Step140ExitBank_checked : compileHmrBankResizeLog .exit s6Step140ExitGBefore ⟨s6Step140ExitFRow,s6Step140ExitGRow,s6Step140ExitFvRow,s6Step140ExitGvRow⟩ ⟨199,199,84,84⟩ [[],[],[],[]]=
    some (s6Step140ExitGvAfter,⟨s6Step140ExitFOut,s6Step140ExitGOut,s6Step140ExitFvOut,s6Step140ExitGvOut⟩,(shrinkRow 777 s6Step140ExitGExtra ++ (shrinkRow 795 s6Step140ExitFExtra ++ (shrinkRow 776 s6Step140ExitFvExtra ++ (shrinkRow 775 s6Step140ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step140ExitBank_rows]
  rfl

private theorem s6Step140Add0_apart : Disjoint s6Step140Add0Arena.live s6Step140Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step140Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140Add0_card : s6Step140Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step140Add0_borrowed : s6Step140Add0Arena.checkBorrow (hmrHybridCount s6Step140Add0Arena s6Step140Add0B.length) s6Step140Add0Work=some s6Step140Add0During := by
  have len : s6Step140Add0Work.length=hmrHybridCount s6Step140Add0Arena s6Step140Add0B.length := by
    rw [hmrHybridCount,s6Step140Add0_card]
    decide +kernel
  have nd : s6Step140Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step140Add0Arena s6Step140Add0During s6Step140Add0Work.toFinset s6Step140Add0_bounded s6Step140Add0_apart rfl

private theorem s6Step140Add0_distinct : (875::927::882::(s6Step140Add0A++s6Step140Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140Add0_owned : (875::927::882::(s6Step140Add0A++s6Step140Add0B)).toFinset⊆s6Step140Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step140Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140Add0_checked : compileHmrHybridCinLog s6Step140Add0Arena 927 875 882 s6Step140Add0A s6Step140Add0B s6Step140Add0Work=some s6Step140Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step140Add0Arena s6Step140Add0During 927 875 882 s6Step140Add0A s6Step140Add0B s6Step140Add0Work
    (by decide +kernel) (by decide +kernel) s6Step140Add0_distinct
    (fun q hq => s6Step140Add0_owned (List.mem_toFinset.mpr hq)) s6Step140Add0_borrowed

private theorem s6Step140Add1_apart : Disjoint s6Step140Add1Arena.live s6Step140Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step140Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140Add1_card : s6Step140Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step140Add1_borrowed : s6Step140Add1Arena.checkBorrow (hmrHybridCount s6Step140Add1Arena s6Step140Add1B.length) s6Step140Add1Work=some s6Step140Add1During := by
  have len : s6Step140Add1Work.length=hmrHybridCount s6Step140Add1Arena s6Step140Add1B.length := by
    rw [hmrHybridCount,s6Step140Add1_card]
    decide +kernel
  have nd : s6Step140Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step140Add1Arena s6Step140Add1During s6Step140Add1Work.toFinset s6Step140Add1_bounded s6Step140Add1_apart rfl

private theorem s6Step140Add1_distinct : (875::927::882::(s6Step140Add1A++s6Step140Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140Add1_owned : (875::927::882::(s6Step140Add1A++s6Step140Add1B)).toFinset⊆s6Step140Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step140Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140Add1_checked : compileHmrHybridCinLog s6Step140Add1Arena 927 875 882 s6Step140Add1A s6Step140Add1B s6Step140Add1Work=some s6Step140Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step140Add1Arena s6Step140Add1During 927 875 882 s6Step140Add1A s6Step140Add1B s6Step140Add1Work
    (by decide +kernel) (by decide +kernel) s6Step140Add1_distinct
    (fun q hq => s6Step140Add1_owned (List.mem_toFinset.mpr hq)) s6Step140Add1_borrowed

private theorem s6Step140F4_apart : Disjoint (s6Step140Add0A++s6Step140Add0B).toFinset (s6Step140Add1A++s6Step140Add1B).toFinset := by
  have nd : ((s6Step140Add0A++s6Step140Add0B)++(s6Step140Add1A++s6Step140Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step140F4_carry : s6Step140F4FlagArena.checkBorrow 1 [882]=some s6Step140Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step140F4FlagArena,s6Step140HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step140F4FlagArena,s6Step140HeadFvAfter,s6Step140Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step140F4_distinct : (768::927::875::882::((s6Step140Add0A++s6Step140Add1A)++(s6Step140Add0B++s6Step140Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140F4_flag : s6Step140HeadFvAfter.checkBorrow 1 [875]=some s6Step140F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step140HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step140F4_owned : (768::927::((s6Step140Add0A++s6Step140Add1A)++(s6Step140Add0B++s6Step140Add1B))).toFinset⊆s6Step140HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step140HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140F4_checked : compileHmrHybridF4Log s6Step140HeadFvAfter 768 927 s6Step140Add0A s6Step140Add0B s6Step140Add1A s6Step140Add1B [875] [882] s6Step140Add0Work s6Step140Add1Work=some s6Step140F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step140HeadFvAfter s6Step140F4FlagArena s6Step140Add0Arena s6Step140Add0During s6Step140Add1During 768 927
    s6Step140Add0A s6Step140Add0B s6Step140Add1A s6Step140Add1B [875] [882] s6Step140Add0Work s6Step140Add1Work
    (fun q hq => s6Step140F4_owned (List.mem_toFinset.mpr hq)) s6Step140F4_flag s6Step140F4_carry
    s6Step140F4_distinct s6Step140F4_apart s6Step140Add0_checked s6Step140Add1_checked

private theorem s6Step140Front_branch : s6Step140FrontSigmaArena.checkBorrow 1 [927]=some s6Step140HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step140FrontSigmaArena,s6Step140EntryGvAfter,s6Step140EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step140FrontSigmaArena,s6Step140EntryGvAfter,s6Step140EntryGAfter,s6Step140HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step140Front_entry : HmrFrontEntryValid s6Step140EntryFBefore s6Step140FrontBank 200 84 ⟨199,199,84,84⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step140FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step140EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step140EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(814,815),(818,819),(821,825),(827,832),(833,834),(835,842),(843,849),(851,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step140FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step140Front_sigma : s6Step140EntryGvAfter.checkBorrow 1 [768]=some s6Step140FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step140EntryGvAfter,s6Step140EntryGAfter,arenaWires]
  · rfl

private def s6Step140HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140HeadFBefore : Arena := s6Step140HeadGAfter

private def s6Step140HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455],795⟩

private def s6Step140HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869],776⟩

private def s6Step140HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867],777⟩

private def s6Step140HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822],775⟩

private theorem s6Step140HeadBank_incomingDistinct : ([s6Step140HeadGRow,s6Step140HeadFRow,s6Step140HeadGvRow,s6Step140HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140HeadF_Incoming : rowsOwned s6Step140HeadFBefore [s6Step140HeadFRow,s6Step140HeadGvRow,s6Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140HeadGRow,s6Step140HeadFRow,s6Step140HeadGvRow,s6Step140HeadFvRow] 1 s6Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step140HeadBank_outgoingOwned : rowsOwned s6Step140HeadFvAfter [s6Step140HeadGOut,s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step140HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step140HeadF_Outgoing : rowsOwned s6Step140HeadFvAfter [s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut] :=
  hmrRows_owned_drop s6Step140HeadFvAfter [s6Step140HeadGOut,s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut] 1 s6Step140HeadBank_outgoingOwned

private theorem s6Step140HeadF_distinct : (s6Step140HeadFRow.sign::s6Step140HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140HeadF_owned : (s6Step140HeadFRow.sign::s6Step140HeadFRow.payload).toFinset⊆s6Step140HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140HeadF_reserved : s6Step140HeadFBefore.reserve s6Step140HeadFFresh.toFinset=some s6Step140HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140HeadFFresh,arenaWires]
  · norm_num [s6Step140HeadFBefore,s6Step140HeadGAfter,s6Step140HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step140HeadFAfter,s6Step140HeadFBefore,s6Step140HeadGAfter,s6Step140HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step140HeadF_checked : planRowResizeLog s6Step140HeadFBefore s6Step140HeadFRow 201 s6Step140HeadFFresh=
    some (s6Step140HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 850],795⟩,growRow 795 s6Step140HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step140HeadFBefore s6Step140HeadFAfter s6Step140HeadFRow 201 s6Step140HeadFFresh
    s6Step140HeadF_distinct s6Step140HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140HeadF_reserved
  have rowEq : WindowRow.mk (s6Step140HeadFRow.payload++s6Step140HeadFFresh) s6Step140HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 850],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step140HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step140HeadFvBefore : Arena := s6Step140HeadGvAfter

private theorem s6Step140HeadFv_Incoming : rowsOwned s6Step140HeadFvBefore [s6Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140HeadGRow,s6Step140HeadFRow,s6Step140HeadGvRow,s6Step140HeadFvRow] 3 s6Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step140HeadFv_Outgoing : rowsOwned s6Step140HeadFvAfter [s6Step140HeadFvOut] :=
  hmrRows_owned_drop s6Step140HeadFvAfter [s6Step140HeadGOut,s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut] 3 s6Step140HeadBank_outgoingOwned

private theorem s6Step140HeadFv_distinct : (s6Step140HeadFvRow.sign::s6Step140HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140HeadFv_owned : (s6Step140HeadFvRow.sign::s6Step140HeadFvRow.payload).toFinset⊆s6Step140HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140HeadFv_reserved : s6Step140HeadFvBefore.reserve s6Step140HeadFvFresh.toFinset=some s6Step140HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140HeadFvFresh,arenaWires]
  · norm_num [s6Step140HeadFvBefore,s6Step140HeadGvAfter,s6Step140HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step140HeadFvAfter,s6Step140HeadFvBefore,s6Step140HeadGvAfter,s6Step140HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step140HeadFv_checked : planRowResizeLog s6Step140HeadFvBefore s6Step140HeadFvRow 85 s6Step140HeadFvFresh=
    some (s6Step140HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 813],776⟩,growRow 776 s6Step140HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step140HeadFvBefore s6Step140HeadFvAfter s6Step140HeadFvRow 85 s6Step140HeadFvFresh
    s6Step140HeadFv_distinct s6Step140HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step140HeadFvRow.payload++s6Step140HeadFvFresh) s6Step140HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 855, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 813],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step140HeadG_Incoming : rowsOwned s6Step140HeadGBefore [s6Step140HeadGRow,s6Step140HeadFRow,s6Step140HeadGvRow,s6Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140HeadGRow,s6Step140HeadFRow,s6Step140HeadGvRow,s6Step140HeadFvRow] 0 s6Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step140HeadG_Outgoing : rowsOwned s6Step140HeadFvAfter [s6Step140HeadGOut,s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut] :=
  hmrRows_owned_drop s6Step140HeadFvAfter [s6Step140HeadGOut,s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut] 0 s6Step140HeadBank_outgoingOwned

private theorem s6Step140HeadG_distinct : (s6Step140HeadGRow.sign::s6Step140HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140HeadG_owned : (s6Step140HeadGRow.sign::s6Step140HeadGRow.payload).toFinset⊆s6Step140HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (851≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140HeadG_reserved : s6Step140HeadGBefore.reserve s6Step140HeadGFresh.toFinset=some s6Step140HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140HeadGFresh,arenaWires]
  · norm_num [s6Step140HeadGBefore,s6Step140HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step140HeadGAfter,s6Step140HeadGBefore,s6Step140HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step140HeadG_checked : planRowResizeLog s6Step140HeadGBefore s6Step140HeadGRow 201 s6Step140HeadGFresh=
    some (s6Step140HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867, 807],777⟩,growRow 777 s6Step140HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step140HeadGBefore s6Step140HeadGAfter s6Step140HeadGRow 201 s6Step140HeadGFresh
    s6Step140HeadG_distinct s6Step140HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140HeadG_reserved
  have rowEq : WindowRow.mk (s6Step140HeadGRow.payload++s6Step140HeadGFresh) s6Step140HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 867, 807],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step140HeadGvBefore : Arena := s6Step140HeadFAfter

private theorem s6Step140HeadGv_Incoming : rowsOwned s6Step140HeadGvBefore [s6Step140HeadGvRow,s6Step140HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step140HeadGRow,s6Step140HeadFRow,s6Step140HeadGvRow,s6Step140HeadFvRow] 2 s6Step140HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step140HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step140HeadGv_Outgoing : rowsOwned s6Step140HeadFvAfter [s6Step140HeadGvOut,s6Step140HeadFvOut] :=
  hmrRows_owned_drop s6Step140HeadFvAfter [s6Step140HeadGOut,s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut] 2 s6Step140HeadBank_outgoingOwned

private theorem s6Step140HeadGv_distinct : (s6Step140HeadGvRow.sign::s6Step140HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step140HeadGv_owned : (s6Step140HeadGvRow.sign::s6Step140HeadGvRow.payload).toFinset⊆s6Step140HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step140HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (814≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step140HeadGv_reserved : s6Step140HeadGvBefore.reserve s6Step140HeadGvFresh.toFinset=some s6Step140HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step140HeadGvFresh,arenaWires]
  · norm_num [s6Step140HeadGvBefore,s6Step140HeadFAfter,s6Step140HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step140HeadGvAfter,s6Step140HeadGvBefore,s6Step140HeadFAfter,s6Step140HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step140HeadGv_checked : planRowResizeLog s6Step140HeadGvBefore s6Step140HeadGvRow 85 s6Step140HeadGvFresh=
    some (s6Step140HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 879],775⟩,growRow 775 s6Step140HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step140HeadGvBefore s6Step140HeadGvAfter s6Step140HeadGvRow 85 s6Step140HeadGvFresh
    s6Step140HeadGv_distinct s6Step140HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step140HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step140HeadGvRow.payload++s6Step140HeadGvFresh) s6Step140HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 786, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step140HeadBank_rows : planWindowRowsLog s6Step140HeadGBefore [(s6Step140HeadGRow,201),(s6Step140HeadFRow,201),(s6Step140HeadGvRow,85),(s6Step140HeadFvRow,85)] [s6Step140HeadGFresh,s6Step140HeadFFresh,s6Step140HeadGvFresh,s6Step140HeadFvFresh]=
    some (s6Step140HeadFvAfter,[s6Step140HeadGOut,s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut],(growRow 777 s6Step140HeadGFresh ++ (growRow 795 s6Step140HeadFFresh ++ (growRow 775 s6Step140HeadGvFresh ++ (growRow 776 s6Step140HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step140HeadFvAfter [] []=some (s6Step140HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step140HeadFvBefore s6Step140HeadFvAfter s6Step140HeadFvAfter
    s6Step140HeadFvRow s6Step140HeadFvOut 85 s6Step140HeadFvFresh [] [] []
    (growRow 776 s6Step140HeadFvFresh) ([]) s6Step140HeadFv_Incoming s6Step140HeadFv_checked h4 s6Step140HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step140HeadGvBefore s6Step140HeadGvAfter s6Step140HeadFvAfter
    s6Step140HeadGvRow s6Step140HeadGvOut 85 s6Step140HeadGvFresh [(s6Step140HeadFvRow,85)] [s6Step140HeadFvFresh] [s6Step140HeadFvOut]
    (growRow 775 s6Step140HeadGvFresh) ((growRow 776 s6Step140HeadFvFresh ++ [])) s6Step140HeadGv_Incoming s6Step140HeadGv_checked h3 s6Step140HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step140HeadFBefore s6Step140HeadFAfter s6Step140HeadFvAfter
    s6Step140HeadFRow s6Step140HeadFOut 201 s6Step140HeadFFresh [(s6Step140HeadGvRow,85),(s6Step140HeadFvRow,85)] [s6Step140HeadGvFresh,s6Step140HeadFvFresh] [s6Step140HeadGvOut,s6Step140HeadFvOut]
    (growRow 795 s6Step140HeadFFresh) ((growRow 775 s6Step140HeadGvFresh ++ (growRow 776 s6Step140HeadFvFresh ++ []))) s6Step140HeadF_Incoming s6Step140HeadF_checked h2 s6Step140HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step140HeadGBefore s6Step140HeadGAfter s6Step140HeadFvAfter
    s6Step140HeadGRow s6Step140HeadGOut 201 s6Step140HeadGFresh [(s6Step140HeadFRow,201),(s6Step140HeadGvRow,85),(s6Step140HeadFvRow,85)] [s6Step140HeadFFresh,s6Step140HeadGvFresh,s6Step140HeadFvFresh] [s6Step140HeadFOut,s6Step140HeadGvOut,s6Step140HeadFvOut]
    (growRow 777 s6Step140HeadGFresh) ((growRow 795 s6Step140HeadFFresh ++ (growRow 775 s6Step140HeadGvFresh ++ (growRow 776 s6Step140HeadFvFresh ++ [])))) s6Step140HeadG_Incoming s6Step140HeadG_checked h1 s6Step140HeadG_Outgoing
  exact h0

private theorem s6Step140HeadBank_checked : compileHmrBankResizeLog .headroom s6Step140HeadGBefore ⟨s6Step140HeadFRow,s6Step140HeadGRow,s6Step140HeadFvRow,s6Step140HeadGvRow⟩ ⟨201,201,85,85⟩ [s6Step140HeadGFresh,s6Step140HeadFFresh,s6Step140HeadGvFresh,s6Step140HeadFvFresh]=
    some (s6Step140HeadFvAfter,⟨s6Step140HeadFOut,s6Step140HeadGOut,s6Step140HeadFvOut,s6Step140HeadGvOut⟩,(growRow 777 s6Step140HeadGFresh ++ (growRow 795 s6Step140HeadFFresh ++ (growRow 775 s6Step140HeadGvFresh ++ (growRow 776 s6Step140HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step140HeadBank_rows]
  rfl

private theorem s6Step140Front_checked : compileHmrSourceFrontLog s6Step140EntryFBefore s6Step140FrontBank 200 84 ⟨199,199,84,84⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step140FrontLog=some s6Step140FrontPlan := by
  have pairEq : s6Step140FrontPair=⟨s6Step140HeadFRow,s6Step140HeadGRow,s6Step140HeadFvRow,s6Step140HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step140FrontHead=⟨s6Step140ExitFRow,s6Step140ExitGRow,s6Step140ExitFvRow,s6Step140ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step140Add0A=s6Step140FrontHead.f.wires := by decide +kernel
  have gEq : s6Step140Add0B=s6Step140FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step140Add1A=s6Step140FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step140Add1B=s6Step140FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step140EntryFBefore s6Step140FrontBank 200 84 ⟨199,199,84,84⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step140FrontLog s6Step140FrontPlan
  · exact s6Step140Front_entry
  · exact s6Step140EntryBank_checked
  · exact s6Step140Front_sigma
  · rfl
  · exact s6Step140Front_branch
  · rfl
  · simpa only [s6Step140FrontPlan,pairEq] using s6Step140HeadBank_checked
  · simpa only [s6Step140FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step140F4_checked
  · exact s6Step140Counter_checked
  · rfl
  · simpa only [s6Step140FrontPlan,headEq] using s6Step140ExitBank_checked

private theorem s6Step140Complete_explicit_checked : compileHmrEarlyStepLog s6Step140EntryFBefore s6Step140FrontBank 200 84 ⟨199,199,84,84⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 41 s6Step140CompleteLog=some s6Step140CompletePlan := by
  let Q := s6Step140EarlyControlPlan
  have hq := s6Step140EarlyControl_plan_checked
  have fv1 : s6Step140CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step140CompleteOut.fv.payload[2]?.getD s6Step140CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step140CompleteOut.fv.payload[3]?.getD s6Step140CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step140CompleteOut.fv.payload[4]?.getD s6Step140CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step140EntryFBefore s6Step140EarlyControlArena s6Step140FrontBank 200 84 ⟨199,199,84,84⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 41 s6Step140CompleteLog s6Step140FrontPlan Q
    s6Step140Front_checked s6Step140Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step140Complete_owned s6Step140Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step140EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 769 768 s6Step140CompleteOut.fv.second (s6Step140CompleteOut.fv.payload[2]?.getD s6Step140CompleteOut.fv.sign) (s6Step140CompleteOut.fv.payload[3]?.getD s6Step140CompleteOut.fv.sign) (s6Step140CompleteOut.fv.payload[4]?.getD s6Step140CompleteOut.fv.sign) 927 41 s6Step140EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep140Arena : Arena := s6Step140EntryFBefore
def s6PrivateStep140Bank : WindowBank := s6Step140FrontBank
def s6PrivateStep140Spec : HmrSourceWalkStepLog := ⟨200,84,⟨199,199,84,84⟩,41,.early s6Step140CompleteLog⟩
def s6PrivateStep140Plan : HmrSourceStepPlan := .early s6Step140CompletePlan
theorem s6PrivateStep140_source : s6PrivateStep140Spec=s6ObservedLogs128[12] := rfl
theorem s6PrivateStep140_checked : compileHmrSourceStepLog s6PrivateStep140Arena s6PrivateStep140Bank
    s6PrivateStep140Spec.fgWidth s6PrivateStep140Spec.vWidth s6PrivateStep140Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893]
    6 498 140 s6PrivateStep140Spec.need none s6PrivateStep140Spec.log=some s6PrivateStep140Plan := by
  change compileHmrSourceStepLog s6Step140EntryFBefore s6Step140FrontBank 200 84 ⟨199,199,84,84⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893] 6 498 140 41 none (.early s6Step140CompleteLog)=some (.early s6Step140CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 140<498)]
  rw [s6Step140Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
