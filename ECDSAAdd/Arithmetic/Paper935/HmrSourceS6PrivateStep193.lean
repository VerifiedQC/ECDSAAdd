import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep191
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

private def s6Step193CompleteMoves : List (Wire × Wire) := [(869,172),(822,428)]

private def s6Step193EarlyControlLog : HmrEarlyControlLog := ⟨[822, 869, 854, 860, 880],[843],[853],[907, 891, 903, 791, 825, 810],[]⟩

private def s6Step193FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [862]],[[843], [880], [854], [860]],[[], [], [], []]⟩,[833],[838],[853],[907],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903]⟩

private def s6Step193CompleteLog : HmrEarlyStepLog := ⟨s6Step193FrontLog,s6Step193CompleteMoves,s6Step193EarlyControlLog⟩

private def s6Step193ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427],795⟩

private def s6Step193ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step193ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171],777⟩

private def s6Step193ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private def s6Step193FrontOut : WindowBank := ⟨s6Step193ExitFOut,s6Step193ExitGOut,s6Step193ExitFvOut,s6Step193ExitGvOut⟩

private def s6Step193CompleteOut : WindowBank := s6Step193FrontOut.repacked s6Step193CompleteMoves

private def s6Step193EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step193EarlyControlPositiveArena,[843],s6Step193EarlyControlEqualityArena,[853],⟨⟨833,false⟩,[⟨⟨843,false⟩,853⟩]⟩⟩

private def s6Step193EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨772,false⟩,869⟩,⟨⟨771,false⟩,854⟩,⟨⟨770,false⟩,860⟩,⟨⟨769,false⟩,880⟩]⟩

private def s6Step193EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step193EarlyControlZeroArena,s6Step193EarlyControlZeroPlan,s6Step193EarlyControlClassPlan,s6Step193EarlyControlFlagArena,s6Step193EarlyControlFittedArena,s6Step193EarlyControlHistoryArena,s6Step193EarlyControlSigmaArena,s6Step193EarlyControlOutputArena,s6Step193EarlyControlLog⟩

private def s6Step193CounterWork : List Wire := [853, 907, 891, 903]

private theorem s6Step193Counter_bounded : s6Step193CounterWork.toFinset⊆arenaWires := by norm_num [s6Step193CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step193HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193CounterDuring : Arena := ⟨s6Step193HeadFvAfter.live∪s6Step193CounterWork.toFinset,Finset.union_subset s6Step193HeadFvAfter.bounded s6Step193Counter_bounded⟩

private def s6Step193EntryFFresh : List Wire := []

private def s6Step193EntryFvFresh : List Wire := []

private def s6Step193EntryGFresh : List Wire := []

private def s6Step193EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193EntryGvFresh : List Wire := [862]

private def s6Step193ExitFExtra : List Wire := [428, 880]

private def s6Step193ExitFvExtra : List Wire := [860]

private def s6Step193ExitGExtra : List Wire := [172, 843]

private def s6Step193ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193ExitGvExtra : List Wire := [854]

private def s6Step193Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step193Add0_bounded : s6Step193Add0Work.toFinset⊆arenaWires := by
  have h : s6Step193Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step193Add0During : Arena := ⟨s6Step193Add0Arena.live∪s6Step193Add0Work.toFinset,Finset.union_subset s6Step193Add0Arena.bounded s6Step193Add0_bounded⟩

private def s6Step193Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step193Add1_bounded : s6Step193Add1Work.toFinset⊆arenaWires := by
  have h : s6Step193Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step193Add1During : Arena := ⟨s6Step193Add1Arena.live∪s6Step193Add1Work.toFinset,Finset.union_subset s6Step193Add1Arena.bounded s6Step193Add1_bounded⟩

private def s6Step193F4FlagArena : Arena := ⟨s6Step193HeadFvAfter.live∪{853},Finset.union_subset s6Step193HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step193F4Plan : HmrHybridF4Plan := ⟨s6Step193F4FlagArena,[853],s6Step193Add0Arena,[907],s6Step193Add0During,s6Step193Add0Work,s6Step193Add1During,s6Step193Add1Work⟩

private def s6Step193HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 880],795⟩

private def s6Step193HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step193HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 843],777⟩

private def s6Step193HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩

private def s6Step193FrontHead : WindowBank := ⟨s6Step193HeadFOut,s6Step193HeadGOut,s6Step193HeadFvOut,s6Step193HeadGvOut⟩

private def s6Step193EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩

private def s6Step193EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step193EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩

private def s6Step193EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private def s6Step193FrontPair : WindowBank := ⟨s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut⟩

private def s6Step193FrontSigmaArena : Arena := ⟨s6Step193EntryGvAfter.live∪{833},Finset.union_subset s6Step193EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step193HeadFFresh : List Wire := [880]

private def s6Step193HeadFvFresh : List Wire := [860]

private def s6Step193HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193HeadGFresh : List Wire := [843]

private def s6Step193HeadGvFresh : List Wire := [854]

private def s6Step193FrontPlan : HmrSourceFront := ⟨s6Step193EntryGvAfter,s6Step193FrontPair,(growRow 795 s6Step193EntryFFresh ++ (growRow 777 s6Step193EntryGFresh ++ (growRow 776 s6Step193EntryFvFresh ++ (growRow 775 s6Step193EntryGvFresh ++ [])))),s6Step193FrontSigmaArena,[833],s6Step193HeadGBefore,[838],
  s6Step193HeadFvAfter,s6Step193FrontHead,(growRow 777 s6Step193HeadGFresh ++ (growRow 795 s6Step193HeadFFresh ++ (growRow 775 s6Step193HeadGvFresh ++ (growRow 776 s6Step193HeadFvFresh ++ [])))),s6Step193F4Plan,s6Step193CounterDuring,s6Step193CounterWork,s6Step193ExitGvAfter,s6Step193FrontOut,(shrinkRow 777 s6Step193ExitGExtra ++ (shrinkRow 795 s6Step193ExitFExtra ++ (shrinkRow 776 s6Step193ExitFvExtra ++ (shrinkRow 775 s6Step193ExitGvExtra ++ []))))⟩

private def s6Step193CompletePlan : HmrEarlyStepPlan := ⟨s6Step193FrontPlan,s6Step193EarlyControlArena,s6Step193EarlyControlPlan,s6Step193CompleteMoves⟩

private theorem s6Step193Complete_apart : List.Disjoint (s6Step193CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [833, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step193CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[833, 838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step193Complete_owned : (s6Step193CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step193CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193CompleteRelocationMove0Borrowed : Arena := ⟨s6Step193ExitGvAfter.live∪{172},Finset.union_subset s6Step193ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step193CompleteRelocationMove1Borrowed : Arena := ⟨s6Step193CompleteRelocationMove0After.live∪{428},Finset.union_subset s6Step193CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step193CompleteRelocation_move0_owned : 869∈s6Step193ExitGvAfter.live := by norm_num [s6Step193ExitGvAfter,arenaWires]

private theorem s6Step193CompleteRelocation_move0_reserve : s6Step193ExitGvAfter.reserve {172}=some s6Step193CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step193ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step193CompleteRelocation_move0_retire : s6Step193CompleteRelocationMove0Borrowed.retireSet {869}=s6Step193CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step193CompleteRelocationMove0Borrowed s6Step193CompleteRelocationMove0After {869}
  change s6Step193CompleteRelocationMove0After.live=(s6Step193ExitGvAfter.live∪{172})\{869}
  apply hmrArena_update_of_filter_check s6Step193ExitGvAfter s6Step193CompleteRelocationMove0After (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [172] [869] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step193CompleteRelocation_move1_owned : 822∈s6Step193CompleteRelocationMove0After.live := by norm_num [s6Step193CompleteRelocationMove0After,arenaWires]

private theorem s6Step193CompleteRelocation_move1_reserve : s6Step193CompleteRelocationMove0After.reserve {428}=some s6Step193CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step193CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step193CompleteRelocation_move1_retire : s6Step193CompleteRelocationMove1Borrowed.retireSet {822}=s6Step193EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step193CompleteRelocationMove1Borrowed s6Step193EarlyControlArena {822}
  change s6Step193EarlyControlArena.live=(s6Step193CompleteRelocationMove0After.live∪{428})\{822}
  apply hmrArena_update_of_filter_check s6Step193CompleteRelocationMove0After s6Step193EarlyControlArena (fun q => ([(0,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [428] [822] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step193CompleteRelocation_checked : s6Step193ExitGvAfter.checkRepack [(869,172),(822,428)]=some s6Step193EarlyControlArena := by
  have tail2 : s6Step193EarlyControlArena.checkRepack []=some s6Step193EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step193CompleteRelocationMove0After s6Step193CompleteRelocationMove1Borrowed s6Step193EarlyControlArena s6Step193EarlyControlArena 822 428 []
    s6Step193CompleteRelocation_move1_owned s6Step193CompleteRelocation_move1_reserve s6Step193CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step193ExitGvAfter s6Step193CompleteRelocationMove0Borrowed s6Step193CompleteRelocationMove0After s6Step193EarlyControlArena 869 172 [(822,428)]
    s6Step193CompleteRelocation_move0_owned s6Step193CompleteRelocation_move0_reserve s6Step193CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step193Complete_repack : s6Step193ExitGvAfter.checkRepack s6Step193CompleteMoves=some s6Step193EarlyControlArena := by
  simpa only [s6Step193CompleteMoves] using s6Step193CompleteRelocation_checked

private theorem s6Step193EarlyControl_branchOwned : ([838] : List Wire).toFinset⊆s6Step193EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EarlyControl_branch : compileHmrBranchRetirement s6Step193EarlyControlSigmaArena 838=some s6Step193EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step193EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step193EarlyControlSigmaArena s6Step193EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [838] rfl rfl
    decide +kernel

private theorem s6Step193EarlyControl_classEqualityBorrow : s6Step193EarlyControlPositiveArena.checkBorrow (([833, 843] : List Wire).length-1) s6Step193EarlyControlLog.classWork=some s6Step193EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step193EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step193EarlyControlEqualityArena,s6Step193EarlyControlPositiveArena,s6Step193EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step193EarlyControl_classEqualityOwned : ([833, 843] : List Wire).toFinset⊆s6Step193EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193EarlyControl_classEquality : compileHmrEqualityLog s6Step193EarlyControlPositiveArena [833, 843] 0 s6Step193EarlyControlLog.classWork=some (s6Step193EarlyControlEqualityArena,s6Step193EarlyControlLog.classWork,s6Step193EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step193EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step193EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step193EarlyControl_classOwned : ([769, 880, 833] : List Wire).toFinset⊆s6Step193EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193EarlyControl_positiveBorrow : s6Step193EarlyControlZeroArena.checkBorrow (1) s6Step193EarlyControlLog.positiveWork=some s6Step193EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step193EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step193EarlyControlPositiveArena,s6Step193EarlyControlZeroArena,s6Step193EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step193EarlyControl_class : compileHmrSourceClassLog s6Step193EarlyControlZeroArena false 769 s6Step193EarlyControlZeroPlan.top 0 833 s6Step193EarlyControlLog.positiveWork s6Step193EarlyControlLog.classWork=some s6Step193EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step193EarlyControlClassPlan s6Step193EarlyControlZeroArena false 769 s6Step193EarlyControlZeroPlan.top 0 833
  constructor
  · decide +kernel
  · exact s6Step193EarlyControl_classOwned
  · exact s6Step193EarlyControl_positiveBorrow
  · exact s6Step193EarlyControl_classEquality

private theorem s6Step193EarlyControl_entryRecordOwned : ([838, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EarlyControl_entrySigmaOwned : ([833, 254] : List Wire).toFinset⊆s6Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EarlyControl_fitBorrow : s6Step193EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step193EarlyControlLog.recordFresh=some s6Step193EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step193EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step193EarlyControlFittedArena,s6Step193EarlyControlFlagArena,s6Step193EarlyControlLog,arenaWires]

private theorem s6Step193EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step193EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193EarlyControl_fit : compileHmrRecordGrowLog s6Step193EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step193EarlyControlLog.recordFresh=some s6Step193EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step193EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step193EarlyControl_fitBorrow

private theorem s6Step193EarlyControl_flagsBorrow : s6Step193EarlyControlEqualityArena.checkBorrow (6) s6Step193EarlyControlLog.flagWork=some s6Step193EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step193EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step193EarlyControlFlagArena,s6Step193EarlyControlEqualityArena,s6Step193EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step193EarlyControl_flagsOwned : ([853, 253, 252, 251] : List Wire).toFinset⊆s6Step193EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193EarlyControl_flags : compileHmrFlagsLog s6Step193EarlyControlClassPlan.equalityArena s6Step193EarlyControlClassPlan.equality.top 253 252 251 s6Step193EarlyControlLog.flagWork=some s6Step193EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step193EarlyControl_flagsOwned⟩
  · exact s6Step193EarlyControl_flagsBorrow

private theorem s6Step193EarlyControl_historyBorrow : s6Step193EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step193EarlyControlLog.recordFresh=some s6Step193EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step193EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step193EarlyControlArena s6Step193EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step193EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step193EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EarlyControl_history : compileHmrRecordGrowLog s6Step193EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step193EarlyControlLog.recordFresh=some s6Step193EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step193EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step193EarlyControl_historyBorrow

private theorem s6Step193EarlyControl_sigmaOwned : ([254, 833] : List Wire).toFinset⊆s6Step193EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EarlyControl_sigmaReleaseOwned : ([833] : List Wire).toFinset⊆s6Step193EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EarlyControl_sigmaRelease : s6Step193EarlyControlHistoryArena.release {833} (fun _ => false)=some s6Step193EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step193EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step193EarlyControlHistoryArena s6Step193EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel

private theorem s6Step193EarlyControl_sigma : compileHmrSigmaDropLog s6Step193EarlyControlHistoryArena false 0 0 254 833 []=some s6Step193EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step193EarlyControl_sigmaOwned⟩
  · exact s6Step193EarlyControl_sigmaRelease

private theorem s6Step193EarlyControl_zeroBorrow : s6Step193EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step193EarlyControlLog.zeroWork=some s6Step193EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step193EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step193EarlyControlArena s6Step193EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step193EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step193EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step193EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step193EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step193EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,822),(823,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,869),(870,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EarlyControl_zero : compileHmrEqualityLog s6Step193EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step193EarlyControlLog.zeroWork=some (s6Step193EarlyControlZeroArena,s6Step193EarlyControlLog.zeroWork,s6Step193EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step193EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step193EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step193EarlyControl_logged : s6Step193EarlyControlPlan.Logged s6Step193EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 838 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step193EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step193EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step193EarlyControl_zero
  · exact s6Step193EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step193EarlyControl_flags
  · exact s6Step193EarlyControl_fit
  · exact s6Step193EarlyControl_history
  · exact s6Step193EarlyControl_sigma
  · exact s6Step193EarlyControl_branch

private theorem s6Step193EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step193EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 838 43 s6Step193EarlyControlLog=some s6Step193EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step193EarlyControlPlan s6Step193EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 838 43 s6Step193EarlyControl_logged

private def s6Step193EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩

private def s6Step193EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step193EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩

private def s6Step193EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private def s6Step193FrontBank : WindowBank := ⟨s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow⟩

private def s6Step193Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 880, 795]

private def s6Step193Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 843, 777]

private def s6Step193Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860, 776]

private def s6Step193Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854, 775]

private theorem s6Step193Counter_apart : Disjoint s6Step193HeadFvAfter.live s6Step193CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step193HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193Counter_borrowed : s6Step193HeadFvAfter.checkBorrow 4 s6Step193CounterWork=some s6Step193CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step193HeadFvAfter s6Step193CounterDuring s6Step193CounterWork.toFinset s6Step193Counter_bounded s6Step193Counter_apart rfl

private theorem s6Step193Counter_owned : (833::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step193HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step193HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193Counter_checked : compileHmrCounterStepLog s6Step193HeadFvAfter true 833 [774, 773, 772, 771, 770, 769] s6Step193CounterWork=some s6Step193CounterDuring := by
  have owned : ∀q∈833::[774, 773, 772, 771, 770, 769],q∈s6Step193HeadFvAfter.live := fun q hq => s6Step193Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step193Counter_borrowed

private def s6Step193EntryFAfter : Arena := s6Step193EntryFBefore

private theorem s6Step193EntryBank_incomingDistinct : ([s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193EntryF_Incoming : rowsOwned s6Step193EntryFBefore [s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow] 0 s6Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step193EntryBank_outgoingOwned : rowsOwned s6Step193EntryGvAfter [s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step193EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193EntryF_Outgoing : rowsOwned s6Step193EntryGvAfter [s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut] :=
  hmrRows_owned_drop s6Step193EntryGvAfter [s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut] 0 s6Step193EntryBank_outgoingOwned

private theorem s6Step193EntryF_distinct : (s6Step193EntryFRow.sign::s6Step193EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193EntryF_owned : (s6Step193EntryFRow.sign::s6Step193EntryFRow.payload).toFinset⊆s6Step193EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EntryF_reserved : s6Step193EntryFBefore.reserve s6Step193EntryFFresh.toFinset=some s6Step193EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193EntryFFresh,arenaWires]
  · norm_num [s6Step193EntryFBefore,s6Step193EntryFFresh,arenaWires]
  · simp only [s6Step193EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step193EntryF_checked : planRowResizeLog s6Step193EntryFBefore s6Step193EntryFRow 173 s6Step193EntryFFresh=
    some (s6Step193EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩,growRow 795 s6Step193EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step193EntryFBefore s6Step193EntryFAfter s6Step193EntryFRow 173 s6Step193EntryFFresh
    s6Step193EntryF_distinct s6Step193EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193EntryF_reserved
  have rowEq : WindowRow.mk (s6Step193EntryFRow.payload++s6Step193EntryFFresh) s6Step193EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step193EntryFvAfter : Arena := s6Step193EntryFBefore

private def s6Step193EntryFvBefore : Arena := s6Step193EntryFBefore

private theorem s6Step193EntryFv_Incoming : rowsOwned s6Step193EntryFvBefore [s6Step193EntryFvRow,s6Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow] 2 s6Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step193EntryFv_Outgoing : rowsOwned s6Step193EntryGvAfter [s6Step193EntryFvOut,s6Step193EntryGvOut] :=
  hmrRows_owned_drop s6Step193EntryGvAfter [s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut] 2 s6Step193EntryBank_outgoingOwned

private theorem s6Step193EntryFv_distinct : (s6Step193EntryFvRow.sign::s6Step193EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193EntryFv_owned : (s6Step193EntryFvRow.sign::s6Step193EntryFvRow.payload).toFinset⊆s6Step193EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EntryFv_reserved : s6Step193EntryFvBefore.reserve s6Step193EntryFvFresh.toFinset=some s6Step193EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193EntryFvFresh,arenaWires]
  · norm_num [s6Step193EntryFvBefore,s6Step193EntryFBefore,s6Step193EntryFvFresh,arenaWires]
  · simp only [s6Step193EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step193EntryFv_checked : planRowResizeLog s6Step193EntryFvBefore s6Step193EntryFvRow 111 s6Step193EntryFvFresh=
    some (s6Step193EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩,growRow 776 s6Step193EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step193EntryFvBefore s6Step193EntryFvAfter s6Step193EntryFvRow 111 s6Step193EntryFvFresh
    s6Step193EntryFv_distinct s6Step193EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step193EntryFvRow.payload++s6Step193EntryFvFresh) s6Step193EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step193EntryGAfter : Arena := s6Step193EntryFBefore

private def s6Step193EntryGBefore : Arena := s6Step193EntryFBefore

private theorem s6Step193EntryG_Incoming : rowsOwned s6Step193EntryGBefore [s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow] 1 s6Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step193EntryG_Outgoing : rowsOwned s6Step193EntryGvAfter [s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut] :=
  hmrRows_owned_drop s6Step193EntryGvAfter [s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut] 1 s6Step193EntryBank_outgoingOwned

private theorem s6Step193EntryG_distinct : (s6Step193EntryGRow.sign::s6Step193EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193EntryG_owned : (s6Step193EntryGRow.sign::s6Step193EntryGRow.payload).toFinset⊆s6Step193EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EntryG_reserved : s6Step193EntryGBefore.reserve s6Step193EntryGFresh.toFinset=some s6Step193EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193EntryGFresh,arenaWires]
  · norm_num [s6Step193EntryGBefore,s6Step193EntryFBefore,s6Step193EntryGFresh,arenaWires]
  · simp only [s6Step193EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step193EntryG_checked : planRowResizeLog s6Step193EntryGBefore s6Step193EntryGRow 173 s6Step193EntryGFresh=
    some (s6Step193EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩,growRow 777 s6Step193EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step193EntryGBefore s6Step193EntryGAfter s6Step193EntryGRow 173 s6Step193EntryGFresh
    s6Step193EntryG_distinct s6Step193EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193EntryG_reserved
  have rowEq : WindowRow.mk (s6Step193EntryGRow.payload++s6Step193EntryGFresh) s6Step193EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step193EntryGvBefore : Arena := s6Step193EntryFBefore

private theorem s6Step193EntryGv_Incoming : rowsOwned s6Step193EntryGvBefore [s6Step193EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow] 3 s6Step193EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step193EntryGv_Outgoing : rowsOwned s6Step193EntryGvAfter [s6Step193EntryGvOut] :=
  hmrRows_owned_drop s6Step193EntryGvAfter [s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut] 3 s6Step193EntryBank_outgoingOwned

private theorem s6Step193EntryGv_distinct : (s6Step193EntryGvRow.sign::s6Step193EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193EntryGv_owned : (s6Step193EntryGvRow.sign::s6Step193EntryGvRow.payload).toFinset⊆s6Step193EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193EntryGv_reserved : s6Step193EntryGvBefore.reserve s6Step193EntryGvFresh.toFinset=some s6Step193EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193EntryGvFresh,arenaWires]
  · norm_num [s6Step193EntryGvBefore,s6Step193EntryFBefore,s6Step193EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step193EntryGvBefore s6Step193EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step193EntryGvFresh rfl rfl
    · norm_num [s6Step193EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step193EntryGv_checked : planRowResizeLog s6Step193EntryGvBefore s6Step193EntryGvRow 111 s6Step193EntryGvFresh=
    some (s6Step193EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩,growRow 775 s6Step193EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step193EntryGvBefore s6Step193EntryGvAfter s6Step193EntryGvRow 111 s6Step193EntryGvFresh
    s6Step193EntryGv_distinct s6Step193EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step193EntryGvRow.payload++s6Step193EntryGvFresh) s6Step193EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step193EntryBank_rows : planWindowRowsLog s6Step193EntryFBefore [(s6Step193EntryFRow,173),(s6Step193EntryGRow,173),(s6Step193EntryFvRow,111),(s6Step193EntryGvRow,111)] [s6Step193EntryFFresh,s6Step193EntryGFresh,s6Step193EntryFvFresh,s6Step193EntryGvFresh]=
    some (s6Step193EntryGvAfter,[s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut],(growRow 795 s6Step193EntryFFresh ++ (growRow 777 s6Step193EntryGFresh ++ (growRow 776 s6Step193EntryFvFresh ++ (growRow 775 s6Step193EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step193EntryGvAfter [] []=some (s6Step193EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step193EntryGvBefore s6Step193EntryGvAfter s6Step193EntryGvAfter
    s6Step193EntryGvRow s6Step193EntryGvOut 111 s6Step193EntryGvFresh [] [] []
    (growRow 775 s6Step193EntryGvFresh) ([]) s6Step193EntryGv_Incoming s6Step193EntryGv_checked h4 s6Step193EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step193EntryFvBefore s6Step193EntryFvAfter s6Step193EntryGvAfter
    s6Step193EntryFvRow s6Step193EntryFvOut 111 s6Step193EntryFvFresh [(s6Step193EntryGvRow,111)] [s6Step193EntryGvFresh] [s6Step193EntryGvOut]
    (growRow 776 s6Step193EntryFvFresh) ((growRow 775 s6Step193EntryGvFresh ++ [])) s6Step193EntryFv_Incoming s6Step193EntryFv_checked h3 s6Step193EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step193EntryGBefore s6Step193EntryGAfter s6Step193EntryGvAfter
    s6Step193EntryGRow s6Step193EntryGOut 173 s6Step193EntryGFresh [(s6Step193EntryFvRow,111),(s6Step193EntryGvRow,111)] [s6Step193EntryFvFresh,s6Step193EntryGvFresh] [s6Step193EntryFvOut,s6Step193EntryGvOut]
    (growRow 777 s6Step193EntryGFresh) ((growRow 776 s6Step193EntryFvFresh ++ (growRow 775 s6Step193EntryGvFresh ++ []))) s6Step193EntryG_Incoming s6Step193EntryG_checked h2 s6Step193EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step193EntryFBefore s6Step193EntryFAfter s6Step193EntryGvAfter
    s6Step193EntryFRow s6Step193EntryFOut 173 s6Step193EntryFFresh [(s6Step193EntryGRow,173),(s6Step193EntryFvRow,111),(s6Step193EntryGvRow,111)] [s6Step193EntryGFresh,s6Step193EntryFvFresh,s6Step193EntryGvFresh] [s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut]
    (growRow 795 s6Step193EntryFFresh) ((growRow 777 s6Step193EntryGFresh ++ (growRow 776 s6Step193EntryFvFresh ++ (growRow 775 s6Step193EntryGvFresh ++ [])))) s6Step193EntryF_Incoming s6Step193EntryF_checked h1 s6Step193EntryF_Outgoing
  exact h0

private theorem s6Step193EntryBank_checked : compileHmrBankResizeLog .entry s6Step193EntryFBefore ⟨s6Step193EntryFRow,s6Step193EntryGRow,s6Step193EntryFvRow,s6Step193EntryGvRow⟩ ⟨173,173,111,111⟩ [s6Step193EntryFFresh,s6Step193EntryGFresh,s6Step193EntryFvFresh,s6Step193EntryGvFresh]=
    some (s6Step193EntryGvAfter,⟨s6Step193EntryFOut,s6Step193EntryGOut,s6Step193EntryFvOut,s6Step193EntryGvOut⟩,(growRow 795 s6Step193EntryFFresh ++ (growRow 777 s6Step193EntryGFresh ++ (growRow 776 s6Step193EntryFvFresh ++ (growRow 775 s6Step193EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step193EntryBank_rows]
  rfl

private def s6Step193ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193ExitFBefore : Arena := s6Step193ExitGAfter

private def s6Step193ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 880],795⟩

private def s6Step193ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩

private def s6Step193ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 843],777⟩

private def s6Step193ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩

private theorem s6Step193ExitBank_incomingDistinct : ([s6Step193ExitGRow,s6Step193ExitFRow,s6Step193ExitFvRow,s6Step193ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193ExitF_Incoming : rowsOwned s6Step193ExitFBefore [s6Step193ExitFRow,s6Step193ExitFvRow,s6Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193ExitGRow,s6Step193ExitFRow,s6Step193ExitFvRow,s6Step193ExitGvRow] 1 s6Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193ExitFBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193ExitBank_outgoingOwned : rowsOwned s6Step193ExitGvAfter [s6Step193ExitGOut,s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step193ExitGvAfter (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step193ExitF_Outgoing : rowsOwned s6Step193ExitGvAfter [s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut] :=
  hmrRows_owned_drop s6Step193ExitGvAfter [s6Step193ExitGOut,s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut] 1 s6Step193ExitBank_outgoingOwned

private theorem s6Step193ExitF_distinct : (s6Step193ExitFRow.sign::s6Step193ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193ExitF_owned : (s6Step193ExitFRow.sign::s6Step193ExitFRow.payload).toFinset⊆s6Step193ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193ExitFBefore (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193ExitF_retired : s6Step193ExitFBefore.retireSet s6Step193ExitFExtra.toFinset=s6Step193ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step193ExitFBefore s6Step193ExitFAfter s6Step193ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step193ExitFBefore s6Step193ExitFAfter (fun q => (0≤q ∧ q<172) ∨ (173≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step193ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step193ExitF_checked : planRowResizeLog s6Step193ExitFBefore s6Step193ExitFRow 172 []=
    some (s6Step193ExitFAfter,s6Step193ExitFOut,shrinkRow 795 s6Step193ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step193ExitFBefore s6Step193ExitFRow 172 s6Step193ExitF_distinct s6Step193ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step193ExitFRow.payload.take 172) s6Step193ExitFRow.sign=s6Step193ExitFOut := by decide +kernel
  have hi : s6Step193ExitFRow.payload.drop 172=s6Step193ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step193ExitF_retired] at result
  exact result

private def s6Step193ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step193ExitFvBefore : Arena := s6Step193ExitFAfter

private theorem s6Step193ExitFv_Incoming : rowsOwned s6Step193ExitFvBefore [s6Step193ExitFvRow,s6Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193ExitGRow,s6Step193ExitFRow,s6Step193ExitFvRow,s6Step193ExitGvRow] 2 s6Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193ExitFvBefore (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step193ExitFv_Outgoing : rowsOwned s6Step193ExitGvAfter [s6Step193ExitFvOut,s6Step193ExitGvOut] :=
  hmrRows_owned_drop s6Step193ExitGvAfter [s6Step193ExitGOut,s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut] 2 s6Step193ExitBank_outgoingOwned

private theorem s6Step193ExitFv_distinct : (s6Step193ExitFvRow.sign::s6Step193ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193ExitFv_owned : (s6Step193ExitFvRow.sign::s6Step193ExitFvRow.payload).toFinset⊆s6Step193ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193ExitFvBefore (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193ExitFv_retired : s6Step193ExitFvBefore.retireSet s6Step193ExitFvExtra.toFinset=s6Step193ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step193ExitFvBefore s6Step193ExitFvAfter s6Step193ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step193ExitFvBefore s6Step193ExitFvAfter (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step193ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step193ExitFv_checked : planRowResizeLog s6Step193ExitFvBefore s6Step193ExitFvRow 111 []=
    some (s6Step193ExitFvAfter,s6Step193ExitFvOut,shrinkRow 776 s6Step193ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step193ExitFvBefore s6Step193ExitFvRow 111 s6Step193ExitFv_distinct s6Step193ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step193ExitFvRow.payload.take 111) s6Step193ExitFvRow.sign=s6Step193ExitFvOut := by decide +kernel
  have hi : s6Step193ExitFvRow.payload.drop 111=s6Step193ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step193ExitFv_retired] at result
  exact result

private def s6Step193ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step193ExitG_Incoming : rowsOwned s6Step193ExitGBefore [s6Step193ExitGRow,s6Step193ExitFRow,s6Step193ExitFvRow,s6Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193ExitGRow,s6Step193ExitFRow,s6Step193ExitFvRow,s6Step193ExitGvRow] 0 s6Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193ExitG_Outgoing : rowsOwned s6Step193ExitGvAfter [s6Step193ExitGOut,s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut] :=
  hmrRows_owned_drop s6Step193ExitGvAfter [s6Step193ExitGOut,s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut] 0 s6Step193ExitBank_outgoingOwned

private theorem s6Step193ExitG_distinct : (s6Step193ExitGRow.sign::s6Step193ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193ExitG_owned : (s6Step193ExitGRow.sign::s6Step193ExitGRow.payload).toFinset⊆s6Step193ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193ExitG_retired : s6Step193ExitGBefore.retireSet s6Step193ExitGExtra.toFinset=s6Step193ExitGAfter := by
  unfold Arena.retireSet s6Step193ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step193ExitGBefore,s6Step193ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step193ExitG_checked : planRowResizeLog s6Step193ExitGBefore s6Step193ExitGRow 172 []=
    some (s6Step193ExitGAfter,s6Step193ExitGOut,shrinkRow 777 s6Step193ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step193ExitGBefore s6Step193ExitGRow 172 s6Step193ExitG_distinct s6Step193ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step193ExitGRow.payload.take 172) s6Step193ExitGRow.sign=s6Step193ExitGOut := by decide +kernel
  have hi : s6Step193ExitGRow.payload.drop 172=s6Step193ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step193ExitG_retired] at result
  exact result

private def s6Step193ExitGvBefore : Arena := s6Step193ExitFvAfter

private theorem s6Step193ExitGv_Incoming : rowsOwned s6Step193ExitGvBefore [s6Step193ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193ExitGRow,s6Step193ExitFRow,s6Step193ExitFvRow,s6Step193ExitGvRow] 3 s6Step193ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193ExitGvBefore (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step193ExitGv_Outgoing : rowsOwned s6Step193ExitGvAfter [s6Step193ExitGvOut] :=
  hmrRows_owned_drop s6Step193ExitGvAfter [s6Step193ExitGOut,s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut] 3 s6Step193ExitBank_outgoingOwned

private theorem s6Step193ExitGv_distinct : (s6Step193ExitGvRow.sign::s6Step193ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193ExitGv_owned : (s6Step193ExitGvRow.sign::s6Step193ExitGvRow.payload).toFinset⊆s6Step193ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193ExitGvBefore (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step193ExitGv_retired : s6Step193ExitGvBefore.retireSet s6Step193ExitGvExtra.toFinset=s6Step193ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step193ExitGvBefore s6Step193ExitGvAfter s6Step193ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step193ExitGvBefore s6Step193ExitGvAfter (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,172),(173,428),(429,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step193ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step193ExitGv_checked : planRowResizeLog s6Step193ExitGvBefore s6Step193ExitGvRow 111 []=
    some (s6Step193ExitGvAfter,s6Step193ExitGvOut,shrinkRow 775 s6Step193ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step193ExitGvBefore s6Step193ExitGvRow 111 s6Step193ExitGv_distinct s6Step193ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step193ExitGvRow.payload.take 111) s6Step193ExitGvRow.sign=s6Step193ExitGvOut := by decide +kernel
  have hi : s6Step193ExitGvRow.payload.drop 111=s6Step193ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step193ExitGv_retired] at result
  exact result

private theorem s6Step193ExitBank_rows : planWindowRowsLog s6Step193ExitGBefore [(s6Step193ExitGRow,172),(s6Step193ExitFRow,172),(s6Step193ExitFvRow,111),(s6Step193ExitGvRow,111)] [[],[],[],[]]=
    some (s6Step193ExitGvAfter,[s6Step193ExitGOut,s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut],(shrinkRow 777 s6Step193ExitGExtra ++ (shrinkRow 795 s6Step193ExitFExtra ++ (shrinkRow 776 s6Step193ExitFvExtra ++ (shrinkRow 775 s6Step193ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step193ExitGvAfter [] []=some (s6Step193ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step193ExitGvBefore s6Step193ExitGvAfter s6Step193ExitGvAfter
    s6Step193ExitGvRow s6Step193ExitGvOut 111 [] [] [] []
    (shrinkRow 775 s6Step193ExitGvExtra) ([]) s6Step193ExitGv_Incoming s6Step193ExitGv_checked h4 s6Step193ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step193ExitFvBefore s6Step193ExitFvAfter s6Step193ExitGvAfter
    s6Step193ExitFvRow s6Step193ExitFvOut 111 [] [(s6Step193ExitGvRow,111)] [[]] [s6Step193ExitGvOut]
    (shrinkRow 776 s6Step193ExitFvExtra) ((shrinkRow 775 s6Step193ExitGvExtra ++ [])) s6Step193ExitFv_Incoming s6Step193ExitFv_checked h3 s6Step193ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step193ExitFBefore s6Step193ExitFAfter s6Step193ExitGvAfter
    s6Step193ExitFRow s6Step193ExitFOut 172 [] [(s6Step193ExitFvRow,111),(s6Step193ExitGvRow,111)] [[],[]] [s6Step193ExitFvOut,s6Step193ExitGvOut]
    (shrinkRow 795 s6Step193ExitFExtra) ((shrinkRow 776 s6Step193ExitFvExtra ++ (shrinkRow 775 s6Step193ExitGvExtra ++ []))) s6Step193ExitF_Incoming s6Step193ExitF_checked h2 s6Step193ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step193ExitGBefore s6Step193ExitGAfter s6Step193ExitGvAfter
    s6Step193ExitGRow s6Step193ExitGOut 172 [] [(s6Step193ExitFRow,172),(s6Step193ExitFvRow,111),(s6Step193ExitGvRow,111)] [[],[],[]] [s6Step193ExitFOut,s6Step193ExitFvOut,s6Step193ExitGvOut]
    (shrinkRow 777 s6Step193ExitGExtra) ((shrinkRow 795 s6Step193ExitFExtra ++ (shrinkRow 776 s6Step193ExitFvExtra ++ (shrinkRow 775 s6Step193ExitGvExtra ++ [])))) s6Step193ExitG_Incoming s6Step193ExitG_checked h1 s6Step193ExitG_Outgoing
  exact h0

private theorem s6Step193ExitBank_checked : compileHmrBankResizeLog .exit s6Step193ExitGBefore ⟨s6Step193ExitFRow,s6Step193ExitGRow,s6Step193ExitFvRow,s6Step193ExitGvRow⟩ ⟨172,172,111,111⟩ [[],[],[],[]]=
    some (s6Step193ExitGvAfter,⟨s6Step193ExitFOut,s6Step193ExitGOut,s6Step193ExitFvOut,s6Step193ExitGvOut⟩,(shrinkRow 777 s6Step193ExitGExtra ++ (shrinkRow 795 s6Step193ExitFExtra ++ (shrinkRow 776 s6Step193ExitFvExtra ++ (shrinkRow 775 s6Step193ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step193ExitBank_rows]
  rfl

private theorem s6Step193Add0_apart : Disjoint s6Step193Add0Arena.live s6Step193Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step193Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193Add0_card : s6Step193Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step193Add0_borrowed : s6Step193Add0Arena.checkBorrow (hmrHybridCount s6Step193Add0Arena s6Step193Add0B.length) s6Step193Add0Work=some s6Step193Add0During := by
  have len : s6Step193Add0Work.length=hmrHybridCount s6Step193Add0Arena s6Step193Add0B.length := by
    rw [hmrHybridCount,s6Step193Add0_card]
    decide +kernel
  have nd : s6Step193Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step193Add0Arena s6Step193Add0During s6Step193Add0Work.toFinset s6Step193Add0_bounded s6Step193Add0_apart rfl

private theorem s6Step193Add0_distinct : (853::838::907::(s6Step193Add0A++s6Step193Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193Add0_owned : (853::838::907::(s6Step193Add0A++s6Step193Add0B)).toFinset⊆s6Step193Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step193Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193Add0_checked : compileHmrHybridCinLog s6Step193Add0Arena 838 853 907 s6Step193Add0A s6Step193Add0B s6Step193Add0Work=some s6Step193Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step193Add0Arena s6Step193Add0During 838 853 907 s6Step193Add0A s6Step193Add0B s6Step193Add0Work
    (by decide +kernel) (by decide +kernel) s6Step193Add0_distinct
    (fun q hq => s6Step193Add0_owned (List.mem_toFinset.mpr hq)) s6Step193Add0_borrowed

private theorem s6Step193Add1_apart : Disjoint s6Step193Add1Arena.live s6Step193Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step193Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193Add1_card : s6Step193Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step193Add1_borrowed : s6Step193Add1Arena.checkBorrow (hmrHybridCount s6Step193Add1Arena s6Step193Add1B.length) s6Step193Add1Work=some s6Step193Add1During := by
  have len : s6Step193Add1Work.length=hmrHybridCount s6Step193Add1Arena s6Step193Add1B.length := by
    rw [hmrHybridCount,s6Step193Add1_card]
    decide +kernel
  have nd : s6Step193Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step193Add1Arena s6Step193Add1During s6Step193Add1Work.toFinset s6Step193Add1_bounded s6Step193Add1_apart rfl

private theorem s6Step193Add1_distinct : (853::838::907::(s6Step193Add1A++s6Step193Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193Add1_owned : (853::838::907::(s6Step193Add1A++s6Step193Add1B)).toFinset⊆s6Step193Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step193Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193Add1_checked : compileHmrHybridCinLog s6Step193Add1Arena 838 853 907 s6Step193Add1A s6Step193Add1B s6Step193Add1Work=some s6Step193Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step193Add1Arena s6Step193Add1During 838 853 907 s6Step193Add1A s6Step193Add1B s6Step193Add1Work
    (by decide +kernel) (by decide +kernel) s6Step193Add1_distinct
    (fun q hq => s6Step193Add1_owned (List.mem_toFinset.mpr hq)) s6Step193Add1_borrowed

private theorem s6Step193F4_apart : Disjoint (s6Step193Add0A++s6Step193Add0B).toFinset (s6Step193Add1A++s6Step193Add1B).toFinset := by
  have nd : ((s6Step193Add0A++s6Step193Add0B)++(s6Step193Add1A++s6Step193Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step193F4_carry : s6Step193F4FlagArena.checkBorrow 1 [907]=some s6Step193Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step193F4FlagArena,s6Step193HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step193F4FlagArena,s6Step193HeadFvAfter,s6Step193Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step193F4_distinct : (833::838::853::907::((s6Step193Add0A++s6Step193Add1A)++(s6Step193Add0B++s6Step193Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193F4_flag : s6Step193HeadFvAfter.checkBorrow 1 [853]=some s6Step193F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step193HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step193F4_owned : (833::838::((s6Step193Add0A++s6Step193Add1A)++(s6Step193Add0B++s6Step193Add1B))).toFinset⊆s6Step193HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step193HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193F4_checked : compileHmrHybridF4Log s6Step193HeadFvAfter 833 838 s6Step193Add0A s6Step193Add0B s6Step193Add1A s6Step193Add1B [853] [907] s6Step193Add0Work s6Step193Add1Work=some s6Step193F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step193HeadFvAfter s6Step193F4FlagArena s6Step193Add0Arena s6Step193Add0During s6Step193Add1During 833 838
    s6Step193Add0A s6Step193Add0B s6Step193Add1A s6Step193Add1B [853] [907] s6Step193Add0Work s6Step193Add1Work
    (fun q hq => s6Step193F4_owned (List.mem_toFinset.mpr hq)) s6Step193F4_flag s6Step193F4_carry
    s6Step193F4_distinct s6Step193F4_apart s6Step193Add0_checked s6Step193Add1_checked

private theorem s6Step193Front_branch : s6Step193FrontSigmaArena.checkBorrow 1 [838]=some s6Step193HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step193FrontSigmaArena,s6Step193EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step193FrontSigmaArena,s6Step193EntryGvAfter,s6Step193HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step193Front_entry : HmrFrontEntryValid s6Step193EntryFBefore s6Step193FrontBank 173 111 ⟨172,172,111,111⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step193FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step193EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step193EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step193FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step193Front_sigma : s6Step193EntryGvAfter.checkBorrow 1 [833]=some s6Step193FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step193EntryGvAfter,arenaWires]
  · rfl

private def s6Step193HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193HeadFBefore : Arena := s6Step193HeadGAfter

private def s6Step193HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩

private def s6Step193HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step193HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩

private def s6Step193HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862],775⟩

private theorem s6Step193HeadBank_incomingDistinct : ([s6Step193HeadGRow,s6Step193HeadFRow,s6Step193HeadGvRow,s6Step193HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193HeadF_Incoming : rowsOwned s6Step193HeadFBefore [s6Step193HeadFRow,s6Step193HeadGvRow,s6Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193HeadGRow,s6Step193HeadFRow,s6Step193HeadGvRow,s6Step193HeadFvRow] 1 s6Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193HeadBank_outgoingOwned : rowsOwned s6Step193HeadFvAfter [s6Step193HeadGOut,s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step193HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193HeadF_Outgoing : rowsOwned s6Step193HeadFvAfter [s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut] :=
  hmrRows_owned_drop s6Step193HeadFvAfter [s6Step193HeadGOut,s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut] 1 s6Step193HeadBank_outgoingOwned

private theorem s6Step193HeadF_distinct : (s6Step193HeadFRow.sign::s6Step193HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193HeadF_owned : (s6Step193HeadFRow.sign::s6Step193HeadFRow.payload).toFinset⊆s6Step193HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193HeadF_reserved : s6Step193HeadFBefore.reserve s6Step193HeadFFresh.toFinset=some s6Step193HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193HeadFFresh,arenaWires]
  · norm_num [s6Step193HeadFBefore,s6Step193HeadGAfter,s6Step193HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step193HeadFAfter,s6Step193HeadFBefore,s6Step193HeadGAfter,s6Step193HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step193HeadF_checked : planRowResizeLog s6Step193HeadFBefore s6Step193HeadFRow 174 s6Step193HeadFFresh=
    some (s6Step193HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 880],795⟩,growRow 795 s6Step193HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step193HeadFBefore s6Step193HeadFAfter s6Step193HeadFRow 174 s6Step193HeadFFresh
    s6Step193HeadF_distinct s6Step193HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193HeadF_reserved
  have rowEq : WindowRow.mk (s6Step193HeadFRow.payload++s6Step193HeadFFresh) s6Step193HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 880],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step193HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step193HeadFvBefore : Arena := s6Step193HeadGvAfter

private theorem s6Step193HeadFv_Incoming : rowsOwned s6Step193HeadFvBefore [s6Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193HeadGRow,s6Step193HeadFRow,s6Step193HeadGvRow,s6Step193HeadFvRow] 3 s6Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193HeadFv_Outgoing : rowsOwned s6Step193HeadFvAfter [s6Step193HeadFvOut] :=
  hmrRows_owned_drop s6Step193HeadFvAfter [s6Step193HeadGOut,s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut] 3 s6Step193HeadBank_outgoingOwned

private theorem s6Step193HeadFv_distinct : (s6Step193HeadFvRow.sign::s6Step193HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193HeadFv_owned : (s6Step193HeadFvRow.sign::s6Step193HeadFvRow.payload).toFinset⊆s6Step193HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193HeadFv_reserved : s6Step193HeadFvBefore.reserve s6Step193HeadFvFresh.toFinset=some s6Step193HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193HeadFvFresh,arenaWires]
  · norm_num [s6Step193HeadFvBefore,s6Step193HeadGvAfter,s6Step193HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step193HeadFvAfter,s6Step193HeadFvBefore,s6Step193HeadGvAfter,s6Step193HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step193HeadFv_checked : planRowResizeLog s6Step193HeadFvBefore s6Step193HeadFvRow 112 s6Step193HeadFvFresh=
    some (s6Step193HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩,growRow 776 s6Step193HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step193HeadFvBefore s6Step193HeadFvAfter s6Step193HeadFvRow 112 s6Step193HeadFvFresh
    s6Step193HeadFv_distinct s6Step193HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step193HeadFvRow.payload++s6Step193HeadFvFresh) s6Step193HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 860],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step193HeadG_Incoming : rowsOwned s6Step193HeadGBefore [s6Step193HeadGRow,s6Step193HeadFRow,s6Step193HeadGvRow,s6Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193HeadGRow,s6Step193HeadFRow,s6Step193HeadGvRow,s6Step193HeadFvRow] 0 s6Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193HeadG_Outgoing : rowsOwned s6Step193HeadFvAfter [s6Step193HeadGOut,s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut] :=
  hmrRows_owned_drop s6Step193HeadFvAfter [s6Step193HeadGOut,s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut] 0 s6Step193HeadBank_outgoingOwned

private theorem s6Step193HeadG_distinct : (s6Step193HeadGRow.sign::s6Step193HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193HeadG_owned : (s6Step193HeadGRow.sign::s6Step193HeadGRow.payload).toFinset⊆s6Step193HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193HeadG_reserved : s6Step193HeadGBefore.reserve s6Step193HeadGFresh.toFinset=some s6Step193HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193HeadGFresh,arenaWires]
  · norm_num [s6Step193HeadGBefore,s6Step193HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step193HeadGAfter,s6Step193HeadGBefore,s6Step193HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step193HeadG_checked : planRowResizeLog s6Step193HeadGBefore s6Step193HeadGRow 174 s6Step193HeadGFresh=
    some (s6Step193HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 843],777⟩,growRow 777 s6Step193HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step193HeadGBefore s6Step193HeadGAfter s6Step193HeadGRow 174 s6Step193HeadGFresh
    s6Step193HeadG_distinct s6Step193HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193HeadG_reserved
  have rowEq : WindowRow.mk (s6Step193HeadGRow.payload++s6Step193HeadGFresh) s6Step193HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 843],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step193HeadGvBefore : Arena := s6Step193HeadFAfter

private theorem s6Step193HeadGv_Incoming : rowsOwned s6Step193HeadGvBefore [s6Step193HeadGvRow,s6Step193HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step193HeadGRow,s6Step193HeadFRow,s6Step193HeadGvRow,s6Step193HeadFvRow] 2 s6Step193HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step193HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step193HeadGv_Outgoing : rowsOwned s6Step193HeadFvAfter [s6Step193HeadGvOut,s6Step193HeadFvOut] :=
  hmrRows_owned_drop s6Step193HeadFvAfter [s6Step193HeadGOut,s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut] 2 s6Step193HeadBank_outgoingOwned

private theorem s6Step193HeadGv_distinct : (s6Step193HeadGvRow.sign::s6Step193HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step193HeadGv_owned : (s6Step193HeadGvRow.sign::s6Step193HeadGvRow.payload).toFinset⊆s6Step193HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step193HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step193HeadGv_reserved : s6Step193HeadGvBefore.reserve s6Step193HeadGvFresh.toFinset=some s6Step193HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step193HeadGvFresh,arenaWires]
  · norm_num [s6Step193HeadGvBefore,s6Step193HeadFAfter,s6Step193HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step193HeadGvAfter,s6Step193HeadGvBefore,s6Step193HeadFAfter,s6Step193HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step193HeadGv_checked : planRowResizeLog s6Step193HeadGvBefore s6Step193HeadGvRow 112 s6Step193HeadGvFresh=
    some (s6Step193HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩,growRow 775 s6Step193HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step193HeadGvBefore s6Step193HeadGvAfter s6Step193HeadGvRow 112 s6Step193HeadGvFresh
    s6Step193HeadGv_distinct s6Step193HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step193HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step193HeadGvRow.payload++s6Step193HeadGvFresh) s6Step193HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 862, 854],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step193HeadBank_rows : planWindowRowsLog s6Step193HeadGBefore [(s6Step193HeadGRow,174),(s6Step193HeadFRow,174),(s6Step193HeadGvRow,112),(s6Step193HeadFvRow,112)] [s6Step193HeadGFresh,s6Step193HeadFFresh,s6Step193HeadGvFresh,s6Step193HeadFvFresh]=
    some (s6Step193HeadFvAfter,[s6Step193HeadGOut,s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut],(growRow 777 s6Step193HeadGFresh ++ (growRow 795 s6Step193HeadFFresh ++ (growRow 775 s6Step193HeadGvFresh ++ (growRow 776 s6Step193HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step193HeadFvAfter [] []=some (s6Step193HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step193HeadFvBefore s6Step193HeadFvAfter s6Step193HeadFvAfter
    s6Step193HeadFvRow s6Step193HeadFvOut 112 s6Step193HeadFvFresh [] [] []
    (growRow 776 s6Step193HeadFvFresh) ([]) s6Step193HeadFv_Incoming s6Step193HeadFv_checked h4 s6Step193HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step193HeadGvBefore s6Step193HeadGvAfter s6Step193HeadFvAfter
    s6Step193HeadGvRow s6Step193HeadGvOut 112 s6Step193HeadGvFresh [(s6Step193HeadFvRow,112)] [s6Step193HeadFvFresh] [s6Step193HeadFvOut]
    (growRow 775 s6Step193HeadGvFresh) ((growRow 776 s6Step193HeadFvFresh ++ [])) s6Step193HeadGv_Incoming s6Step193HeadGv_checked h3 s6Step193HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step193HeadFBefore s6Step193HeadFAfter s6Step193HeadFvAfter
    s6Step193HeadFRow s6Step193HeadFOut 174 s6Step193HeadFFresh [(s6Step193HeadGvRow,112),(s6Step193HeadFvRow,112)] [s6Step193HeadGvFresh,s6Step193HeadFvFresh] [s6Step193HeadGvOut,s6Step193HeadFvOut]
    (growRow 795 s6Step193HeadFFresh) ((growRow 775 s6Step193HeadGvFresh ++ (growRow 776 s6Step193HeadFvFresh ++ []))) s6Step193HeadF_Incoming s6Step193HeadF_checked h2 s6Step193HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step193HeadGBefore s6Step193HeadGAfter s6Step193HeadFvAfter
    s6Step193HeadGRow s6Step193HeadGOut 174 s6Step193HeadGFresh [(s6Step193HeadFRow,174),(s6Step193HeadGvRow,112),(s6Step193HeadFvRow,112)] [s6Step193HeadFFresh,s6Step193HeadGvFresh,s6Step193HeadFvFresh] [s6Step193HeadFOut,s6Step193HeadGvOut,s6Step193HeadFvOut]
    (growRow 777 s6Step193HeadGFresh) ((growRow 795 s6Step193HeadFFresh ++ (growRow 775 s6Step193HeadGvFresh ++ (growRow 776 s6Step193HeadFvFresh ++ [])))) s6Step193HeadG_Incoming s6Step193HeadG_checked h1 s6Step193HeadG_Outgoing
  exact h0

private theorem s6Step193HeadBank_checked : compileHmrBankResizeLog .headroom s6Step193HeadGBefore ⟨s6Step193HeadFRow,s6Step193HeadGRow,s6Step193HeadFvRow,s6Step193HeadGvRow⟩ ⟨174,174,112,112⟩ [s6Step193HeadGFresh,s6Step193HeadFFresh,s6Step193HeadGvFresh,s6Step193HeadFvFresh]=
    some (s6Step193HeadFvAfter,⟨s6Step193HeadFOut,s6Step193HeadGOut,s6Step193HeadFvOut,s6Step193HeadGvOut⟩,(growRow 777 s6Step193HeadGFresh ++ (growRow 795 s6Step193HeadFFresh ++ (growRow 775 s6Step193HeadGvFresh ++ (growRow 776 s6Step193HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step193HeadBank_rows]
  rfl

private theorem s6Step193Front_checked : compileHmrSourceFrontLog s6Step193EntryFBefore s6Step193FrontBank 173 111 ⟨172,172,111,111⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step193FrontLog=some s6Step193FrontPlan := by
  have pairEq : s6Step193FrontPair=⟨s6Step193HeadFRow,s6Step193HeadGRow,s6Step193HeadFvRow,s6Step193HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step193FrontHead=⟨s6Step193ExitFRow,s6Step193ExitGRow,s6Step193ExitFvRow,s6Step193ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step193Add0A=s6Step193FrontHead.f.wires := by decide +kernel
  have gEq : s6Step193Add0B=s6Step193FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step193Add1A=s6Step193FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step193Add1B=s6Step193FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step193EntryFBefore s6Step193FrontBank 173 111 ⟨172,172,111,111⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step193FrontLog s6Step193FrontPlan
  · exact s6Step193Front_entry
  · exact s6Step193EntryBank_checked
  · exact s6Step193Front_sigma
  · rfl
  · exact s6Step193Front_branch
  · rfl
  · simpa only [s6Step193FrontPlan,pairEq] using s6Step193HeadBank_checked
  · simpa only [s6Step193FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step193F4_checked
  · exact s6Step193Counter_checked
  · rfl
  · simpa only [s6Step193FrontPlan,headEq] using s6Step193ExitBank_checked

private theorem s6Step193Complete_explicit_checked : compileHmrEarlyStepLog s6Step193EntryFBefore s6Step193FrontBank 173 111 ⟨172,172,111,111⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step193CompleteLog=some s6Step193CompletePlan := by
  let Q := s6Step193EarlyControlPlan
  have hq := s6Step193EarlyControl_plan_checked
  have fv1 : s6Step193CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step193CompleteOut.fv.payload[2]?.getD s6Step193CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step193CompleteOut.fv.payload[3]?.getD s6Step193CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step193CompleteOut.fv.payload[4]?.getD s6Step193CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step193EntryFBefore s6Step193EarlyControlArena s6Step193FrontBank 173 111 ⟨172,172,111,111⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step193CompleteLog s6Step193FrontPlan Q
    s6Step193Front_checked s6Step193Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step193Complete_owned s6Step193Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step193EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 s6Step193CompleteOut.fv.second (s6Step193CompleteOut.fv.payload[2]?.getD s6Step193CompleteOut.fv.sign) (s6Step193CompleteOut.fv.payload[3]?.getD s6Step193CompleteOut.fv.sign) (s6Step193CompleteOut.fv.payload[4]?.getD s6Step193CompleteOut.fv.sign) 838 43 s6Step193EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep193Arena : Arena := s6Step193EntryFBefore
def s6PrivateStep193Bank : WindowBank := s6Step193FrontBank
def s6PrivateStep193Spec : HmrSourceWalkStepLog := ⟨173,111,⟨172,172,111,111⟩,43,.early s6Step193CompleteLog⟩
def s6PrivateStep193Plan : HmrSourceStepPlan := .early s6Step193CompletePlan
theorem s6PrivateStep193_source : s6PrivateStep193Spec=s6ObservedLogs192[1] := rfl
theorem s6PrivateStep193_checked : compileHmrSourceStepLog s6PrivateStep193Arena s6PrivateStep193Bank
    s6PrivateStep193Spec.fgWidth s6PrivateStep193Spec.vWidth s6PrivateStep193Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 193 s6PrivateStep193Spec.need none s6PrivateStep193Spec.log=some s6PrivateStep193Plan := by
  change compileHmrSourceStepLog s6Step193EntryFBefore s6Step193FrontBank 173 111 ⟨172,172,111,111⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 193 43 none (.early s6Step193CompleteLog)=some (.early s6Step193CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 193<498)]
  rw [s6Step193Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
