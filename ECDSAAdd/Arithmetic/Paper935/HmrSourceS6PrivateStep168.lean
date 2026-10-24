import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep166
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

private def s6Step168CompleteMoves : List (Wire × Wire) := [(886,441)]

private def s6Step168EarlyControlLog : HmrEarlyControlLog := ⟨[886, 818, 863, 876, 857],[890],[922],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step168FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [890], [], [805]],[[922], [857], [818], [876]],[[], [], [], []]⟩,[793],[892],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step168CompleteLog : HmrEarlyStepLog := ⟨s6Step168FrontLog,s6Step168CompleteMoves,s6Step168EarlyControlLog⟩

private def s6Step168ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step168ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887],776⟩

private def s6Step168ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩

private def s6Step168ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step168FrontOut : WindowBank := ⟨s6Step168ExitFOut,s6Step168ExitGOut,s6Step168ExitFvOut,s6Step168ExitGvOut⟩

private def s6Step168CompleteOut : WindowBank := s6Step168FrontOut.repacked s6Step168CompleteMoves

private def s6Step168EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step168EarlyControlPositiveArena,[890],s6Step168EarlyControlEqualityArena,[922],⟨⟨793,false⟩,[⟨⟨890,false⟩,922⟩]⟩⟩

private def s6Step168EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(893,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,886⟩,⟨⟨772,false⟩,818⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step168EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step168EarlyControlZeroArena,s6Step168EarlyControlZeroPlan,s6Step168EarlyControlClassPlan,s6Step168EarlyControlFlagArena,s6Step168EarlyControlFittedArena,s6Step168EarlyControlHistoryArena,s6Step168EarlyControlSigmaArena,s6Step168EarlyControlOutputArena,s6Step168EarlyControlLog⟩

private def s6Step168CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step168Counter_bounded : s6Step168CounterWork.toFinset⊆arenaWires := by norm_num [s6Step168CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step168HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168CounterDuring : Arena := ⟨s6Step168HeadFvAfter.live∪s6Step168CounterWork.toFinset,Finset.union_subset s6Step168HeadFvAfter.bounded s6Step168Counter_bounded⟩

private def s6Step168EntryFFresh : List Wire := []

private def s6Step168EntryFvFresh : List Wire := []

private def s6Step168EntryGFresh : List Wire := [890]

private def s6Step168EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EntryGvFresh : List Wire := [805]

private def s6Step168ExitFExtra : List Wire := [441, 857]

private def s6Step168ExitFvExtra : List Wire := [863, 876]

private def s6Step168ExitGExtra : List Wire := [890, 922]

private def s6Step168ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step168ExitGvExtra : List Wire := [818]

private def s6Step168Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step168Add0_bounded : s6Step168Add0Work.toFinset⊆arenaWires := by
  have h : s6Step168Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step168Add0During : Arena := ⟨s6Step168Add0Arena.live∪s6Step168Add0Work.toFinset,Finset.union_subset s6Step168Add0Arena.bounded s6Step168Add0_bounded⟩

private def s6Step168Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step168Add1_bounded : s6Step168Add1Work.toFinset⊆arenaWires := by
  have h : s6Step168Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step168Add1During : Arena := ⟨s6Step168Add1Arena.live∪s6Step168Add1Work.toFinset,Finset.union_subset s6Step168Add1Arena.bounded s6Step168Add1_bounded⟩

private def s6Step168F4FlagArena : Arena := ⟨s6Step168HeadFvAfter.live∪{891},Finset.union_subset s6Step168HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step168F4Plan : HmrHybridF4Plan := ⟨s6Step168F4FlagArena,[891],s6Step168Add0Arena,[903],s6Step168Add0During,s6Step168Add0Work,s6Step168Add1During,s6Step168Add1Work⟩

private def s6Step168HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 857],795⟩

private def s6Step168HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863, 876],776⟩

private def s6Step168HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890, 922],777⟩

private def s6Step168HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 818],775⟩

private def s6Step168FrontHead : WindowBank := ⟨s6Step168HeadFOut,s6Step168HeadGOut,s6Step168HeadFvOut,s6Step168HeadGvOut⟩

private def s6Step168EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441],795⟩

private def s6Step168EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step168EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890],777⟩

private def s6Step168EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step168FrontPair : WindowBank := ⟨s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut⟩

private def s6Step168FrontSigmaArena : Arena := ⟨s6Step168EntryGvAfter.live∪{793},Finset.union_subset s6Step168EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step168HeadFFresh : List Wire := [857]

private def s6Step168HeadFvFresh : List Wire := [876]

private def s6Step168HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168HeadGFresh : List Wire := [922]

private def s6Step168HeadGvFresh : List Wire := [818]

private def s6Step168FrontPlan : HmrSourceFront := ⟨s6Step168EntryGvAfter,s6Step168FrontPair,(growRow 795 s6Step168EntryFFresh ++ (growRow 777 s6Step168EntryGFresh ++ (growRow 776 s6Step168EntryFvFresh ++ (growRow 775 s6Step168EntryGvFresh ++ [])))),s6Step168FrontSigmaArena,[793],s6Step168HeadGBefore,[892],
  s6Step168HeadFvAfter,s6Step168FrontHead,(growRow 777 s6Step168HeadGFresh ++ (growRow 795 s6Step168HeadFFresh ++ (growRow 775 s6Step168HeadGvFresh ++ (growRow 776 s6Step168HeadFvFresh ++ [])))),s6Step168F4Plan,s6Step168CounterDuring,s6Step168CounterWork,s6Step168ExitGvAfter,s6Step168FrontOut,(shrinkRow 777 s6Step168ExitGExtra ++ (shrinkRow 795 s6Step168ExitFExtra ++ (shrinkRow 776 s6Step168ExitFvExtra ++ (shrinkRow 775 s6Step168ExitGvExtra ++ []))))⟩

private def s6Step168CompletePlan : HmrEarlyStepPlan := ⟨s6Step168FrontPlan,s6Step168EarlyControlArena,s6Step168EarlyControlPlan,s6Step168CompleteMoves⟩

private theorem s6Step168Complete_apart : List.Disjoint (s6Step168CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [793, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step168CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[793, 892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step168Complete_owned : (s6Step168CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step168CompleteRelocationMove0Borrowed : Arena := ⟨s6Step168ExitGvAfter.live∪{441},Finset.union_subset s6Step168ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step168CompleteRelocation_move0_owned : 886∈s6Step168ExitGvAfter.live := by norm_num [s6Step168ExitGvAfter,arenaWires]

private theorem s6Step168CompleteRelocation_move0_reserve : s6Step168ExitGvAfter.reserve {441}=some s6Step168CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step168ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step168CompleteRelocation_move0_retire : s6Step168CompleteRelocationMove0Borrowed.retireSet {886}=s6Step168EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step168CompleteRelocationMove0Borrowed s6Step168EarlyControlArena {886}
  change s6Step168EarlyControlArena.live=(s6Step168ExitGvAfter.live∪{441})\{886}
  apply hmrArena_update_of_filter_check s6Step168ExitGvAfter s6Step168EarlyControlArena (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [441] [886] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step168CompleteRelocation_checked : s6Step168ExitGvAfter.checkRepack [(886,441)]=some s6Step168EarlyControlArena := by
  have tail1 : s6Step168EarlyControlArena.checkRepack []=some s6Step168EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step168ExitGvAfter s6Step168CompleteRelocationMove0Borrowed s6Step168EarlyControlArena s6Step168EarlyControlArena 886 441 []
    s6Step168CompleteRelocation_move0_owned s6Step168CompleteRelocation_move0_reserve s6Step168CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step168Complete_repack : s6Step168ExitGvAfter.checkRepack s6Step168CompleteMoves=some s6Step168EarlyControlArena := by
  simpa only [s6Step168CompleteMoves] using s6Step168CompleteRelocation_checked

private theorem s6Step168EarlyControl_branchOwned : ([892] : List Wire).toFinset⊆s6Step168EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168EarlyControl_branch : compileHmrBranchRetirement s6Step168EarlyControlSigmaArena 892=some s6Step168EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step168EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step168EarlyControlSigmaArena s6Step168EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(893,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [892] rfl rfl
    decide +kernel

private theorem s6Step168EarlyControl_classEqualityBorrow : s6Step168EarlyControlPositiveArena.checkBorrow (([793, 890] : List Wire).length-1) s6Step168EarlyControlLog.classWork=some s6Step168EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step168EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step168EarlyControlEqualityArena,s6Step168EarlyControlPositiveArena,s6Step168EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step168EarlyControl_classEqualityOwned : ([793, 890] : List Wire).toFinset⊆s6Step168EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EarlyControl_classEquality : compileHmrEqualityLog s6Step168EarlyControlPositiveArena [793, 890] 0 s6Step168EarlyControlLog.classWork=some (s6Step168EarlyControlEqualityArena,s6Step168EarlyControlLog.classWork,s6Step168EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step168EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step168EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step168EarlyControl_classOwned : ([769, 857, 793] : List Wire).toFinset⊆s6Step168EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EarlyControl_positiveBorrow : s6Step168EarlyControlZeroArena.checkBorrow (1) s6Step168EarlyControlLog.positiveWork=some s6Step168EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step168EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step168EarlyControlPositiveArena,s6Step168EarlyControlZeroArena,s6Step168EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step168EarlyControl_class : compileHmrSourceClassLog s6Step168EarlyControlZeroArena false 769 s6Step168EarlyControlZeroPlan.top 0 793 s6Step168EarlyControlLog.positiveWork s6Step168EarlyControlLog.classWork=some s6Step168EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step168EarlyControlClassPlan s6Step168EarlyControlZeroArena false 769 s6Step168EarlyControlZeroPlan.top 0 793
  constructor
  · decide +kernel
  · exact s6Step168EarlyControl_classOwned
  · exact s6Step168EarlyControl_positiveBorrow
  · exact s6Step168EarlyControl_classEquality

private theorem s6Step168EarlyControl_entryRecordOwned : ([892, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168EarlyControl_entrySigmaOwned : ([793, 254] : List Wire).toFinset⊆s6Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168EarlyControl_fitBorrow : s6Step168EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step168EarlyControlLog.recordFresh=some s6Step168EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step168EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step168EarlyControlFittedArena,s6Step168EarlyControlFlagArena,s6Step168EarlyControlLog,arenaWires]

private theorem s6Step168EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step168EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EarlyControl_fit : compileHmrRecordGrowLog s6Step168EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step168EarlyControlLog.recordFresh=some s6Step168EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step168EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step168EarlyControl_fitBorrow

private theorem s6Step168EarlyControl_flagsBorrow : s6Step168EarlyControlEqualityArena.checkBorrow (6) s6Step168EarlyControlLog.flagWork=some s6Step168EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step168EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step168EarlyControlFlagArena,s6Step168EarlyControlEqualityArena,s6Step168EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step168EarlyControl_flagsOwned : ([922, 253, 252, 251] : List Wire).toFinset⊆s6Step168EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EarlyControl_flags : compileHmrFlagsLog s6Step168EarlyControlClassPlan.equalityArena s6Step168EarlyControlClassPlan.equality.top 253 252 251 s6Step168EarlyControlLog.flagWork=some s6Step168EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step168EarlyControl_flagsOwned⟩
  · exact s6Step168EarlyControl_flagsBorrow

private theorem s6Step168EarlyControl_historyBorrow : s6Step168EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step168EarlyControlLog.recordFresh=some s6Step168EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step168EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step168EarlyControlArena s6Step168EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step168EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step168EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168EarlyControl_history : compileHmrRecordGrowLog s6Step168EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step168EarlyControlLog.recordFresh=some s6Step168EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step168EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step168EarlyControl_historyBorrow

private theorem s6Step168EarlyControl_sigmaOwned : ([254, 793] : List Wire).toFinset⊆s6Step168EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168EarlyControl_sigmaReleaseOwned : ([793] : List Wire).toFinset⊆s6Step168EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168EarlyControl_sigmaRelease : s6Step168EarlyControlHistoryArena.release {793} (fun _ => false)=some s6Step168EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step168EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step168EarlyControlHistoryArena s6Step168EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel

private theorem s6Step168EarlyControl_sigma : compileHmrSigmaDropLog s6Step168EarlyControlHistoryArena false 0 0 254 793 []=some s6Step168EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step168EarlyControl_sigmaOwned⟩
  · exact s6Step168EarlyControl_sigmaRelease

private theorem s6Step168EarlyControl_zeroBorrow : s6Step168EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step168EarlyControlLog.zeroWork=some s6Step168EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step168EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step168EarlyControlArena s6Step168EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step168EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step168EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step168EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step168EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step168EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168EarlyControl_zero : compileHmrEqualityLog s6Step168EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step168EarlyControlLog.zeroWork=some (s6Step168EarlyControlZeroArena,s6Step168EarlyControlLog.zeroWork,s6Step168EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step168EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step168EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step168EarlyControl_logged : s6Step168EarlyControlPlan.Logged s6Step168EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 793 254 253 252 251 892 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step168EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step168EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step168EarlyControl_zero
  · exact s6Step168EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step168EarlyControl_flags
  · exact s6Step168EarlyControl_fit
  · exact s6Step168EarlyControl_history
  · exact s6Step168EarlyControl_sigma
  · exact s6Step168EarlyControl_branch

private theorem s6Step168EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step168EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 793 254 253 252 251 892 42 s6Step168EarlyControlLog=some s6Step168EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step168EarlyControlPlan s6Step168EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 793 254 253 252 251 892 42 s6Step168EarlyControl_logged

private def s6Step168EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441],795⟩

private def s6Step168EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step168EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩

private def s6Step168EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879],775⟩

private def s6Step168FrontBank : WindowBank := ⟨s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow⟩

private def s6Step168Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 857, 795]

private def s6Step168Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890, 922, 777]

private def s6Step168Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863, 876, 776]

private def s6Step168Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 818, 775]

private theorem s6Step168Counter_apart : Disjoint s6Step168HeadFvAfter.live s6Step168CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step168HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168Counter_borrowed : s6Step168HeadFvAfter.checkBorrow 4 s6Step168CounterWork=some s6Step168CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step168HeadFvAfter s6Step168CounterDuring s6Step168CounterWork.toFinset s6Step168Counter_bounded s6Step168Counter_apart rfl

private theorem s6Step168Counter_owned : (793::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step168HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step168HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168Counter_checked : compileHmrCounterStepLog s6Step168HeadFvAfter true 793 [774, 773, 772, 771, 770, 769] s6Step168CounterWork=some s6Step168CounterDuring := by
  have owned : ∀q∈793::[774, 773, 772, 771, 770, 769],q∈s6Step168HeadFvAfter.live := fun q hq => s6Step168Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step168Counter_borrowed

private def s6Step168EntryFAfter : Arena := s6Step168EntryFBefore

private theorem s6Step168EntryBank_incomingDistinct : ([s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168EntryF_Incoming : rowsOwned s6Step168EntryFBefore [s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow] 0 s6Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168EntryBank_outgoingOwned : rowsOwned s6Step168EntryGvAfter [s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step168EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168EntryF_Outgoing : rowsOwned s6Step168EntryGvAfter [s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut] :=
  hmrRows_owned_drop s6Step168EntryGvAfter [s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut] 0 s6Step168EntryBank_outgoingOwned

private theorem s6Step168EntryF_distinct : (s6Step168EntryFRow.sign::s6Step168EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168EntryF_owned : (s6Step168EntryFRow.sign::s6Step168EntryFRow.payload).toFinset⊆s6Step168EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EntryF_reserved : s6Step168EntryFBefore.reserve s6Step168EntryFFresh.toFinset=some s6Step168EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168EntryFFresh,arenaWires]
  · norm_num [s6Step168EntryFBefore,s6Step168EntryFFresh,arenaWires]
  · simp only [s6Step168EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step168EntryF_checked : planRowResizeLog s6Step168EntryFBefore s6Step168EntryFRow 186 s6Step168EntryFFresh=
    some (s6Step168EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441],795⟩,growRow 795 s6Step168EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step168EntryFBefore s6Step168EntryFAfter s6Step168EntryFRow 186 s6Step168EntryFFresh
    s6Step168EntryF_distinct s6Step168EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168EntryF_reserved
  have rowEq : WindowRow.mk (s6Step168EntryFRow.payload++s6Step168EntryFFresh) s6Step168EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step168EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168EntryFvAfter : Arena := s6Step168EntryGAfter

private def s6Step168EntryFvBefore : Arena := s6Step168EntryGAfter

private theorem s6Step168EntryFv_Incoming : rowsOwned s6Step168EntryFvBefore [s6Step168EntryFvRow,s6Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow] 2 s6Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168EntryFv_Outgoing : rowsOwned s6Step168EntryGvAfter [s6Step168EntryFvOut,s6Step168EntryGvOut] :=
  hmrRows_owned_drop s6Step168EntryGvAfter [s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut] 2 s6Step168EntryBank_outgoingOwned

private theorem s6Step168EntryFv_distinct : (s6Step168EntryFvRow.sign::s6Step168EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168EntryFv_owned : (s6Step168EntryFvRow.sign::s6Step168EntryFvRow.payload).toFinset⊆s6Step168EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EntryFv_reserved : s6Step168EntryFvBefore.reserve s6Step168EntryFvFresh.toFinset=some s6Step168EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168EntryFvFresh,arenaWires]
  · norm_num [s6Step168EntryFvBefore,s6Step168EntryGAfter,s6Step168EntryFvFresh,arenaWires]
  · simp only [s6Step168EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step168EntryFv_checked : planRowResizeLog s6Step168EntryFvBefore s6Step168EntryFvRow 99 s6Step168EntryFvFresh=
    some (s6Step168EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩,growRow 776 s6Step168EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step168EntryFvBefore s6Step168EntryFvAfter s6Step168EntryFvRow 99 s6Step168EntryFvFresh
    s6Step168EntryFv_distinct s6Step168EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step168EntryFvRow.payload++s6Step168EntryFvFresh) s6Step168EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step168EntryGBefore : Arena := s6Step168EntryFBefore

private theorem s6Step168EntryG_Incoming : rowsOwned s6Step168EntryGBefore [s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow] 1 s6Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168EntryG_Outgoing : rowsOwned s6Step168EntryGvAfter [s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut] :=
  hmrRows_owned_drop s6Step168EntryGvAfter [s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut] 1 s6Step168EntryBank_outgoingOwned

private theorem s6Step168EntryG_distinct : (s6Step168EntryGRow.sign::s6Step168EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168EntryG_owned : (s6Step168EntryGRow.sign::s6Step168EntryGRow.payload).toFinset⊆s6Step168EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EntryG_reserved : s6Step168EntryGBefore.reserve s6Step168EntryGFresh.toFinset=some s6Step168EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168EntryGFresh,arenaWires]
  · norm_num [s6Step168EntryGBefore,s6Step168EntryFBefore,s6Step168EntryGFresh,arenaWires]
  · ext q
    simp only [s6Step168EntryGAfter,s6Step168EntryGBefore,s6Step168EntryFBefore,s6Step168EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168EntryG_checked : planRowResizeLog s6Step168EntryGBefore s6Step168EntryGRow 186 s6Step168EntryGFresh=
    some (s6Step168EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890],777⟩,growRow 777 s6Step168EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step168EntryGBefore s6Step168EntryGAfter s6Step168EntryGRow 186 s6Step168EntryGFresh
    s6Step168EntryG_distinct s6Step168EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168EntryG_reserved
  have rowEq : WindowRow.mk (s6Step168EntryGRow.payload++s6Step168EntryGFresh) s6Step168EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step168EntryGvBefore : Arena := s6Step168EntryGAfter

private theorem s6Step168EntryGv_Incoming : rowsOwned s6Step168EntryGvBefore [s6Step168EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow] 3 s6Step168EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168EntryGv_Outgoing : rowsOwned s6Step168EntryGvAfter [s6Step168EntryGvOut] :=
  hmrRows_owned_drop s6Step168EntryGvAfter [s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut] 3 s6Step168EntryBank_outgoingOwned

private theorem s6Step168EntryGv_distinct : (s6Step168EntryGvRow.sign::s6Step168EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168EntryGv_owned : (s6Step168EntryGvRow.sign::s6Step168EntryGvRow.payload).toFinset⊆s6Step168EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168EntryGv_reserved : s6Step168EntryGvBefore.reserve s6Step168EntryGvFresh.toFinset=some s6Step168EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168EntryGvFresh,arenaWires]
  · norm_num [s6Step168EntryGvBefore,s6Step168EntryGAfter,s6Step168EntryGvFresh,arenaWires]
  · ext q
    simp only [s6Step168EntryGvAfter,s6Step168EntryGvBefore,s6Step168EntryGAfter,s6Step168EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168EntryGv_checked : planRowResizeLog s6Step168EntryGvBefore s6Step168EntryGvRow 99 s6Step168EntryGvFresh=
    some (s6Step168EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩,growRow 775 s6Step168EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step168EntryGvBefore s6Step168EntryGvAfter s6Step168EntryGvRow 99 s6Step168EntryGvFresh
    s6Step168EntryGv_distinct s6Step168EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step168EntryGvRow.payload++s6Step168EntryGvFresh) s6Step168EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step168EntryBank_rows : planWindowRowsLog s6Step168EntryFBefore [(s6Step168EntryFRow,186),(s6Step168EntryGRow,186),(s6Step168EntryFvRow,99),(s6Step168EntryGvRow,99)] [s6Step168EntryFFresh,s6Step168EntryGFresh,s6Step168EntryFvFresh,s6Step168EntryGvFresh]=
    some (s6Step168EntryGvAfter,[s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut],(growRow 795 s6Step168EntryFFresh ++ (growRow 777 s6Step168EntryGFresh ++ (growRow 776 s6Step168EntryFvFresh ++ (growRow 775 s6Step168EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step168EntryGvAfter [] []=some (s6Step168EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step168EntryGvBefore s6Step168EntryGvAfter s6Step168EntryGvAfter
    s6Step168EntryGvRow s6Step168EntryGvOut 99 s6Step168EntryGvFresh [] [] []
    (growRow 775 s6Step168EntryGvFresh) ([]) s6Step168EntryGv_Incoming s6Step168EntryGv_checked h4 s6Step168EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step168EntryFvBefore s6Step168EntryFvAfter s6Step168EntryGvAfter
    s6Step168EntryFvRow s6Step168EntryFvOut 99 s6Step168EntryFvFresh [(s6Step168EntryGvRow,99)] [s6Step168EntryGvFresh] [s6Step168EntryGvOut]
    (growRow 776 s6Step168EntryFvFresh) ((growRow 775 s6Step168EntryGvFresh ++ [])) s6Step168EntryFv_Incoming s6Step168EntryFv_checked h3 s6Step168EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step168EntryGBefore s6Step168EntryGAfter s6Step168EntryGvAfter
    s6Step168EntryGRow s6Step168EntryGOut 186 s6Step168EntryGFresh [(s6Step168EntryFvRow,99),(s6Step168EntryGvRow,99)] [s6Step168EntryFvFresh,s6Step168EntryGvFresh] [s6Step168EntryFvOut,s6Step168EntryGvOut]
    (growRow 777 s6Step168EntryGFresh) ((growRow 776 s6Step168EntryFvFresh ++ (growRow 775 s6Step168EntryGvFresh ++ []))) s6Step168EntryG_Incoming s6Step168EntryG_checked h2 s6Step168EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step168EntryFBefore s6Step168EntryFAfter s6Step168EntryGvAfter
    s6Step168EntryFRow s6Step168EntryFOut 186 s6Step168EntryFFresh [(s6Step168EntryGRow,186),(s6Step168EntryFvRow,99),(s6Step168EntryGvRow,99)] [s6Step168EntryGFresh,s6Step168EntryFvFresh,s6Step168EntryGvFresh] [s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut]
    (growRow 795 s6Step168EntryFFresh) ((growRow 777 s6Step168EntryGFresh ++ (growRow 776 s6Step168EntryFvFresh ++ (growRow 775 s6Step168EntryGvFresh ++ [])))) s6Step168EntryF_Incoming s6Step168EntryF_checked h1 s6Step168EntryF_Outgoing
  exact h0

private theorem s6Step168EntryBank_checked : compileHmrBankResizeLog .entry s6Step168EntryFBefore ⟨s6Step168EntryFRow,s6Step168EntryGRow,s6Step168EntryFvRow,s6Step168EntryGvRow⟩ ⟨186,186,99,99⟩ [s6Step168EntryFFresh,s6Step168EntryGFresh,s6Step168EntryFvFresh,s6Step168EntryGvFresh]=
    some (s6Step168EntryGvAfter,⟨s6Step168EntryFOut,s6Step168EntryGOut,s6Step168EntryFvOut,s6Step168EntryGvOut⟩,(growRow 795 s6Step168EntryFFresh ++ (growRow 777 s6Step168EntryGFresh ++ (growRow 776 s6Step168EntryFvFresh ++ (growRow 775 s6Step168EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step168EntryBank_rows]
  rfl

private def s6Step168ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<441) ∨ (442≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168ExitFBefore : Arena := s6Step168ExitGAfter

private def s6Step168ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 857],795⟩

private def s6Step168ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863, 876],776⟩

private def s6Step168ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890, 922],777⟩

private def s6Step168ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 818],775⟩

private theorem s6Step168ExitBank_incomingDistinct : ([s6Step168ExitGRow,s6Step168ExitFRow,s6Step168ExitFvRow,s6Step168ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168ExitF_Incoming : rowsOwned s6Step168ExitFBefore [s6Step168ExitFRow,s6Step168ExitFvRow,s6Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168ExitGRow,s6Step168ExitFRow,s6Step168ExitFvRow,s6Step168ExitGvRow] 1 s6Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168ExitBank_outgoingOwned : rowsOwned s6Step168ExitGvAfter [s6Step168ExitGOut,s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step168ExitGvAfter (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step168ExitF_Outgoing : rowsOwned s6Step168ExitGvAfter [s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut] :=
  hmrRows_owned_drop s6Step168ExitGvAfter [s6Step168ExitGOut,s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut] 1 s6Step168ExitBank_outgoingOwned

private theorem s6Step168ExitF_distinct : (s6Step168ExitFRow.sign::s6Step168ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168ExitF_owned : (s6Step168ExitFRow.sign::s6Step168ExitFRow.payload).toFinset⊆s6Step168ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168ExitF_retired : s6Step168ExitFBefore.retireSet s6Step168ExitFExtra.toFinset=s6Step168ExitFAfter := by
  unfold Arena.retireSet s6Step168ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step168ExitFBefore,s6Step168ExitGAfter,s6Step168ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step168ExitF_checked : planRowResizeLog s6Step168ExitFBefore s6Step168ExitFRow 185 []=
    some (s6Step168ExitFAfter,s6Step168ExitFOut,shrinkRow 795 s6Step168ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step168ExitFBefore s6Step168ExitFRow 185 s6Step168ExitF_distinct s6Step168ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step168ExitFRow.payload.take 185) s6Step168ExitFRow.sign=s6Step168ExitFOut := by decide +kernel
  have hi : s6Step168ExitFRow.payload.drop 185=s6Step168ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step168ExitF_retired] at result
  exact result

private def s6Step168ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step168ExitFvBefore : Arena := s6Step168ExitFAfter

private theorem s6Step168ExitFv_Incoming : rowsOwned s6Step168ExitFvBefore [s6Step168ExitFvRow,s6Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168ExitGRow,s6Step168ExitFRow,s6Step168ExitFvRow,s6Step168ExitGvRow] 2 s6Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168ExitFvBefore (fun q => (0≤q ∧ q<441) ∨ (442≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168ExitFv_Outgoing : rowsOwned s6Step168ExitGvAfter [s6Step168ExitFvOut,s6Step168ExitGvOut] :=
  hmrRows_owned_drop s6Step168ExitGvAfter [s6Step168ExitGOut,s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut] 2 s6Step168ExitBank_outgoingOwned

private theorem s6Step168ExitFv_distinct : (s6Step168ExitFvRow.sign::s6Step168ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168ExitFv_owned : (s6Step168ExitFvRow.sign::s6Step168ExitFvRow.payload).toFinset⊆s6Step168ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168ExitFvBefore (fun q => (0≤q ∧ q<441) ∨ (442≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168ExitFv_retired : s6Step168ExitFvBefore.retireSet s6Step168ExitFvExtra.toFinset=s6Step168ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step168ExitFvBefore s6Step168ExitFvAfter s6Step168ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step168ExitFvBefore s6Step168ExitFvAfter (fun q => (0≤q ∧ q<441) ∨ (442≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step168ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step168ExitFv_checked : planRowResizeLog s6Step168ExitFvBefore s6Step168ExitFvRow 98 []=
    some (s6Step168ExitFvAfter,s6Step168ExitFvOut,shrinkRow 776 s6Step168ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step168ExitFvBefore s6Step168ExitFvRow 98 s6Step168ExitFv_distinct s6Step168ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step168ExitFvRow.payload.take 98) s6Step168ExitFvRow.sign=s6Step168ExitFvOut := by decide +kernel
  have hi : s6Step168ExitFvRow.payload.drop 98=s6Step168ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step168ExitFv_retired] at result
  exact result

private def s6Step168ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step168ExitG_Incoming : rowsOwned s6Step168ExitGBefore [s6Step168ExitGRow,s6Step168ExitFRow,s6Step168ExitFvRow,s6Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168ExitGRow,s6Step168ExitFRow,s6Step168ExitFvRow,s6Step168ExitGvRow] 0 s6Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168ExitG_Outgoing : rowsOwned s6Step168ExitGvAfter [s6Step168ExitGOut,s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut] :=
  hmrRows_owned_drop s6Step168ExitGvAfter [s6Step168ExitGOut,s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut] 0 s6Step168ExitBank_outgoingOwned

private theorem s6Step168ExitG_distinct : (s6Step168ExitGRow.sign::s6Step168ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168ExitG_owned : (s6Step168ExitGRow.sign::s6Step168ExitGRow.payload).toFinset⊆s6Step168ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168ExitG_retired : s6Step168ExitGBefore.retireSet s6Step168ExitGExtra.toFinset=s6Step168ExitGAfter := by
  unfold Arena.retireSet s6Step168ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step168ExitGBefore,s6Step168ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step168ExitG_checked : planRowResizeLog s6Step168ExitGBefore s6Step168ExitGRow 185 []=
    some (s6Step168ExitGAfter,s6Step168ExitGOut,shrinkRow 777 s6Step168ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step168ExitGBefore s6Step168ExitGRow 185 s6Step168ExitG_distinct s6Step168ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step168ExitGRow.payload.take 185) s6Step168ExitGRow.sign=s6Step168ExitGOut := by decide +kernel
  have hi : s6Step168ExitGRow.payload.drop 185=s6Step168ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step168ExitG_retired] at result
  exact result

private def s6Step168ExitGvBefore : Arena := s6Step168ExitFvAfter

private theorem s6Step168ExitGv_Incoming : rowsOwned s6Step168ExitGvBefore [s6Step168ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168ExitGRow,s6Step168ExitFRow,s6Step168ExitFvRow,s6Step168ExitGvRow] 3 s6Step168ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168ExitGvBefore (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step168ExitGv_Outgoing : rowsOwned s6Step168ExitGvAfter [s6Step168ExitGvOut] :=
  hmrRows_owned_drop s6Step168ExitGvAfter [s6Step168ExitGOut,s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut] 3 s6Step168ExitBank_outgoingOwned

private theorem s6Step168ExitGv_distinct : (s6Step168ExitGvRow.sign::s6Step168ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168ExitGv_owned : (s6Step168ExitGvRow.sign::s6Step168ExitGvRow.payload).toFinset⊆s6Step168ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168ExitGvBefore (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step168ExitGv_retired : s6Step168ExitGvBefore.retireSet s6Step168ExitGvExtra.toFinset=s6Step168ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step168ExitGvBefore s6Step168ExitGvAfter s6Step168ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step168ExitGvBefore s6Step168ExitGvAfter (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,441),(442,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step168ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step168ExitGv_checked : planRowResizeLog s6Step168ExitGvBefore s6Step168ExitGvRow 99 []=
    some (s6Step168ExitGvAfter,s6Step168ExitGvOut,shrinkRow 775 s6Step168ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step168ExitGvBefore s6Step168ExitGvRow 99 s6Step168ExitGv_distinct s6Step168ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step168ExitGvRow.payload.take 99) s6Step168ExitGvRow.sign=s6Step168ExitGvOut := by decide +kernel
  have hi : s6Step168ExitGvRow.payload.drop 99=s6Step168ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step168ExitGv_retired] at result
  exact result

private theorem s6Step168ExitBank_rows : planWindowRowsLog s6Step168ExitGBefore [(s6Step168ExitGRow,185),(s6Step168ExitFRow,185),(s6Step168ExitFvRow,98),(s6Step168ExitGvRow,99)] [[],[],[],[]]=
    some (s6Step168ExitGvAfter,[s6Step168ExitGOut,s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut],(shrinkRow 777 s6Step168ExitGExtra ++ (shrinkRow 795 s6Step168ExitFExtra ++ (shrinkRow 776 s6Step168ExitFvExtra ++ (shrinkRow 775 s6Step168ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step168ExitGvAfter [] []=some (s6Step168ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step168ExitGvBefore s6Step168ExitGvAfter s6Step168ExitGvAfter
    s6Step168ExitGvRow s6Step168ExitGvOut 99 [] [] [] []
    (shrinkRow 775 s6Step168ExitGvExtra) ([]) s6Step168ExitGv_Incoming s6Step168ExitGv_checked h4 s6Step168ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step168ExitFvBefore s6Step168ExitFvAfter s6Step168ExitGvAfter
    s6Step168ExitFvRow s6Step168ExitFvOut 98 [] [(s6Step168ExitGvRow,99)] [[]] [s6Step168ExitGvOut]
    (shrinkRow 776 s6Step168ExitFvExtra) ((shrinkRow 775 s6Step168ExitGvExtra ++ [])) s6Step168ExitFv_Incoming s6Step168ExitFv_checked h3 s6Step168ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step168ExitFBefore s6Step168ExitFAfter s6Step168ExitGvAfter
    s6Step168ExitFRow s6Step168ExitFOut 185 [] [(s6Step168ExitFvRow,98),(s6Step168ExitGvRow,99)] [[],[]] [s6Step168ExitFvOut,s6Step168ExitGvOut]
    (shrinkRow 795 s6Step168ExitFExtra) ((shrinkRow 776 s6Step168ExitFvExtra ++ (shrinkRow 775 s6Step168ExitGvExtra ++ []))) s6Step168ExitF_Incoming s6Step168ExitF_checked h2 s6Step168ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step168ExitGBefore s6Step168ExitGAfter s6Step168ExitGvAfter
    s6Step168ExitGRow s6Step168ExitGOut 185 [] [(s6Step168ExitFRow,185),(s6Step168ExitFvRow,98),(s6Step168ExitGvRow,99)] [[],[],[]] [s6Step168ExitFOut,s6Step168ExitFvOut,s6Step168ExitGvOut]
    (shrinkRow 777 s6Step168ExitGExtra) ((shrinkRow 795 s6Step168ExitFExtra ++ (shrinkRow 776 s6Step168ExitFvExtra ++ (shrinkRow 775 s6Step168ExitGvExtra ++ [])))) s6Step168ExitG_Incoming s6Step168ExitG_checked h1 s6Step168ExitG_Outgoing
  exact h0

private theorem s6Step168ExitBank_checked : compileHmrBankResizeLog .exit s6Step168ExitGBefore ⟨s6Step168ExitFRow,s6Step168ExitGRow,s6Step168ExitFvRow,s6Step168ExitGvRow⟩ ⟨185,185,98,99⟩ [[],[],[],[]]=
    some (s6Step168ExitGvAfter,⟨s6Step168ExitFOut,s6Step168ExitGOut,s6Step168ExitFvOut,s6Step168ExitGvOut⟩,(shrinkRow 777 s6Step168ExitGExtra ++ (shrinkRow 795 s6Step168ExitFExtra ++ (shrinkRow 776 s6Step168ExitFvExtra ++ (shrinkRow 775 s6Step168ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step168ExitBank_rows]
  rfl

private theorem s6Step168Add0_apart : Disjoint s6Step168Add0Arena.live s6Step168Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step168Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168Add0_card : s6Step168Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step168Add0_borrowed : s6Step168Add0Arena.checkBorrow (hmrHybridCount s6Step168Add0Arena s6Step168Add0B.length) s6Step168Add0Work=some s6Step168Add0During := by
  have len : s6Step168Add0Work.length=hmrHybridCount s6Step168Add0Arena s6Step168Add0B.length := by
    rw [hmrHybridCount,s6Step168Add0_card]
    decide +kernel
  have nd : s6Step168Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step168Add0Arena s6Step168Add0During s6Step168Add0Work.toFinset s6Step168Add0_bounded s6Step168Add0_apart rfl

private theorem s6Step168Add0_distinct : (891::892::903::(s6Step168Add0A++s6Step168Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168Add0_owned : (891::892::903::(s6Step168Add0A++s6Step168Add0B)).toFinset⊆s6Step168Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step168Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168Add0_checked : compileHmrHybridCinLog s6Step168Add0Arena 892 891 903 s6Step168Add0A s6Step168Add0B s6Step168Add0Work=some s6Step168Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step168Add0Arena s6Step168Add0During 892 891 903 s6Step168Add0A s6Step168Add0B s6Step168Add0Work
    (by decide +kernel) (by decide +kernel) s6Step168Add0_distinct
    (fun q hq => s6Step168Add0_owned (List.mem_toFinset.mpr hq)) s6Step168Add0_borrowed

private theorem s6Step168Add1_apart : Disjoint s6Step168Add1Arena.live s6Step168Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step168Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168Add1_card : s6Step168Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step168Add1_borrowed : s6Step168Add1Arena.checkBorrow (hmrHybridCount s6Step168Add1Arena s6Step168Add1B.length) s6Step168Add1Work=some s6Step168Add1During := by
  have len : s6Step168Add1Work.length=hmrHybridCount s6Step168Add1Arena s6Step168Add1B.length := by
    rw [hmrHybridCount,s6Step168Add1_card]
    decide +kernel
  have nd : s6Step168Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step168Add1Arena s6Step168Add1During s6Step168Add1Work.toFinset s6Step168Add1_bounded s6Step168Add1_apart rfl

private theorem s6Step168Add1_distinct : (891::892::903::(s6Step168Add1A++s6Step168Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168Add1_owned : (891::892::903::(s6Step168Add1A++s6Step168Add1B)).toFinset⊆s6Step168Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step168Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168Add1_checked : compileHmrHybridCinLog s6Step168Add1Arena 892 891 903 s6Step168Add1A s6Step168Add1B s6Step168Add1Work=some s6Step168Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step168Add1Arena s6Step168Add1During 892 891 903 s6Step168Add1A s6Step168Add1B s6Step168Add1Work
    (by decide +kernel) (by decide +kernel) s6Step168Add1_distinct
    (fun q hq => s6Step168Add1_owned (List.mem_toFinset.mpr hq)) s6Step168Add1_borrowed

private theorem s6Step168F4_apart : Disjoint (s6Step168Add0A++s6Step168Add0B).toFinset (s6Step168Add1A++s6Step168Add1B).toFinset := by
  have nd : ((s6Step168Add0A++s6Step168Add0B)++(s6Step168Add1A++s6Step168Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step168F4_carry : s6Step168F4FlagArena.checkBorrow 1 [903]=some s6Step168Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step168F4FlagArena,s6Step168HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step168F4FlagArena,s6Step168HeadFvAfter,s6Step168Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168F4_distinct : (793::892::891::903::((s6Step168Add0A++s6Step168Add1A)++(s6Step168Add0B++s6Step168Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168F4_flag : s6Step168HeadFvAfter.checkBorrow 1 [891]=some s6Step168F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step168HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step168F4_owned : (793::892::((s6Step168Add0A++s6Step168Add1A)++(s6Step168Add0B++s6Step168Add1B))).toFinset⊆s6Step168HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step168HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168F4_checked : compileHmrHybridF4Log s6Step168HeadFvAfter 793 892 s6Step168Add0A s6Step168Add0B s6Step168Add1A s6Step168Add1B [891] [903] s6Step168Add0Work s6Step168Add1Work=some s6Step168F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step168HeadFvAfter s6Step168F4FlagArena s6Step168Add0Arena s6Step168Add0During s6Step168Add1During 793 892
    s6Step168Add0A s6Step168Add0B s6Step168Add1A s6Step168Add1B [891] [903] s6Step168Add0Work s6Step168Add1Work
    (fun q hq => s6Step168F4_owned (List.mem_toFinset.mpr hq)) s6Step168F4_flag s6Step168F4_carry
    s6Step168F4_distinct s6Step168F4_apart s6Step168Add0_checked s6Step168Add1_checked

private theorem s6Step168Front_branch : s6Step168FrontSigmaArena.checkBorrow 1 [892]=some s6Step168HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step168FrontSigmaArena,s6Step168EntryGvAfter,arenaWires]
  · ext q
    simp only [s6Step168FrontSigmaArena,s6Step168EntryGvAfter,s6Step168HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168Front_entry : HmrFrontEntryValid s6Step168EntryFBefore s6Step168FrontBank 186 99 ⟨185,185,98,99⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step168FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step168EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step168EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (806≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (893≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step168FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step168Front_sigma : s6Step168EntryGvAfter.checkBorrow 1 [793]=some s6Step168FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step168EntryGvAfter,arenaWires]
  · rfl

private def s6Step168HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168HeadFBefore : Arena := s6Step168HeadGAfter

private def s6Step168HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441],795⟩

private def s6Step168HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863],776⟩

private def s6Step168HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890],777⟩

private def s6Step168HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private theorem s6Step168HeadBank_incomingDistinct : ([s6Step168HeadGRow,s6Step168HeadFRow,s6Step168HeadGvRow,s6Step168HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168HeadF_Incoming : rowsOwned s6Step168HeadFBefore [s6Step168HeadFRow,s6Step168HeadGvRow,s6Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168HeadGRow,s6Step168HeadFRow,s6Step168HeadGvRow,s6Step168HeadFvRow] 1 s6Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168HeadBank_outgoingOwned : rowsOwned s6Step168HeadFvAfter [s6Step168HeadGOut,s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step168HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168HeadF_Outgoing : rowsOwned s6Step168HeadFvAfter [s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut] :=
  hmrRows_owned_drop s6Step168HeadFvAfter [s6Step168HeadGOut,s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut] 1 s6Step168HeadBank_outgoingOwned

private theorem s6Step168HeadF_distinct : (s6Step168HeadFRow.sign::s6Step168HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168HeadF_owned : (s6Step168HeadFRow.sign::s6Step168HeadFRow.payload).toFinset⊆s6Step168HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168HeadF_reserved : s6Step168HeadFBefore.reserve s6Step168HeadFFresh.toFinset=some s6Step168HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168HeadFFresh,arenaWires]
  · norm_num [s6Step168HeadFBefore,s6Step168HeadGAfter,s6Step168HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step168HeadFAfter,s6Step168HeadFBefore,s6Step168HeadGAfter,s6Step168HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168HeadF_checked : planRowResizeLog s6Step168HeadFBefore s6Step168HeadFRow 187 s6Step168HeadFFresh=
    some (s6Step168HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 857],795⟩,growRow 795 s6Step168HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step168HeadFBefore s6Step168HeadFAfter s6Step168HeadFRow 187 s6Step168HeadFFresh
    s6Step168HeadF_distinct s6Step168HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168HeadF_reserved
  have rowEq : WindowRow.mk (s6Step168HeadFRow.payload++s6Step168HeadFFresh) s6Step168HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step168HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step168HeadFvBefore : Arena := s6Step168HeadGvAfter

private theorem s6Step168HeadFv_Incoming : rowsOwned s6Step168HeadFvBefore [s6Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168HeadGRow,s6Step168HeadFRow,s6Step168HeadGvRow,s6Step168HeadFvRow] 3 s6Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168HeadFv_Outgoing : rowsOwned s6Step168HeadFvAfter [s6Step168HeadFvOut] :=
  hmrRows_owned_drop s6Step168HeadFvAfter [s6Step168HeadGOut,s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut] 3 s6Step168HeadBank_outgoingOwned

private theorem s6Step168HeadFv_distinct : (s6Step168HeadFvRow.sign::s6Step168HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168HeadFv_owned : (s6Step168HeadFvRow.sign::s6Step168HeadFvRow.payload).toFinset⊆s6Step168HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168HeadFv_reserved : s6Step168HeadFvBefore.reserve s6Step168HeadFvFresh.toFinset=some s6Step168HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168HeadFvFresh,arenaWires]
  · norm_num [s6Step168HeadFvBefore,s6Step168HeadGvAfter,s6Step168HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step168HeadFvAfter,s6Step168HeadFvBefore,s6Step168HeadGvAfter,s6Step168HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168HeadFv_checked : planRowResizeLog s6Step168HeadFvBefore s6Step168HeadFvRow 100 s6Step168HeadFvFresh=
    some (s6Step168HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863, 876],776⟩,growRow 776 s6Step168HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step168HeadFvBefore s6Step168HeadFvAfter s6Step168HeadFvRow 100 s6Step168HeadFvFresh
    s6Step168HeadFv_distinct s6Step168HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step168HeadFvRow.payload++s6Step168HeadFvFresh) s6Step168HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 863, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step168HeadG_Incoming : rowsOwned s6Step168HeadGBefore [s6Step168HeadGRow,s6Step168HeadFRow,s6Step168HeadGvRow,s6Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168HeadGRow,s6Step168HeadFRow,s6Step168HeadGvRow,s6Step168HeadFvRow] 0 s6Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168HeadG_Outgoing : rowsOwned s6Step168HeadFvAfter [s6Step168HeadGOut,s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut] :=
  hmrRows_owned_drop s6Step168HeadFvAfter [s6Step168HeadGOut,s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut] 0 s6Step168HeadBank_outgoingOwned

private theorem s6Step168HeadG_distinct : (s6Step168HeadGRow.sign::s6Step168HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168HeadG_owned : (s6Step168HeadGRow.sign::s6Step168HeadGRow.payload).toFinset⊆s6Step168HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168HeadG_reserved : s6Step168HeadGBefore.reserve s6Step168HeadGFresh.toFinset=some s6Step168HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168HeadGFresh,arenaWires]
  · norm_num [s6Step168HeadGBefore,s6Step168HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step168HeadGAfter,s6Step168HeadGBefore,s6Step168HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168HeadG_checked : planRowResizeLog s6Step168HeadGBefore s6Step168HeadGRow 187 s6Step168HeadGFresh=
    some (s6Step168HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890, 922],777⟩,growRow 777 s6Step168HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step168HeadGBefore s6Step168HeadGAfter s6Step168HeadGRow 187 s6Step168HeadGFresh
    s6Step168HeadG_distinct s6Step168HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168HeadG_reserved
  have rowEq : WindowRow.mk (s6Step168HeadGRow.payload++s6Step168HeadGFresh) s6Step168HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 890, 922],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step168HeadGvBefore : Arena := s6Step168HeadFAfter

private theorem s6Step168HeadGv_Incoming : rowsOwned s6Step168HeadGvBefore [s6Step168HeadGvRow,s6Step168HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step168HeadGRow,s6Step168HeadFRow,s6Step168HeadGvRow,s6Step168HeadFvRow] 2 s6Step168HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step168HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step168HeadGv_Outgoing : rowsOwned s6Step168HeadFvAfter [s6Step168HeadGvOut,s6Step168HeadFvOut] :=
  hmrRows_owned_drop s6Step168HeadFvAfter [s6Step168HeadGOut,s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut] 2 s6Step168HeadBank_outgoingOwned

private theorem s6Step168HeadGv_distinct : (s6Step168HeadGvRow.sign::s6Step168HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step168HeadGv_owned : (s6Step168HeadGvRow.sign::s6Step168HeadGvRow.payload).toFinset⊆s6Step168HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step168HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step168HeadGv_reserved : s6Step168HeadGvBefore.reserve s6Step168HeadGvFresh.toFinset=some s6Step168HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step168HeadGvFresh,arenaWires]
  · norm_num [s6Step168HeadGvBefore,s6Step168HeadFAfter,s6Step168HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step168HeadGvAfter,s6Step168HeadGvBefore,s6Step168HeadFAfter,s6Step168HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step168HeadGv_checked : planRowResizeLog s6Step168HeadGvBefore s6Step168HeadGvRow 100 s6Step168HeadGvFresh=
    some (s6Step168HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 818],775⟩,growRow 775 s6Step168HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step168HeadGvBefore s6Step168HeadGvAfter s6Step168HeadGvRow 100 s6Step168HeadGvFresh
    s6Step168HeadGv_distinct s6Step168HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step168HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step168HeadGvRow.payload++s6Step168HeadGvFresh) s6Step168HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 818],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step168HeadBank_rows : planWindowRowsLog s6Step168HeadGBefore [(s6Step168HeadGRow,187),(s6Step168HeadFRow,187),(s6Step168HeadGvRow,100),(s6Step168HeadFvRow,100)] [s6Step168HeadGFresh,s6Step168HeadFFresh,s6Step168HeadGvFresh,s6Step168HeadFvFresh]=
    some (s6Step168HeadFvAfter,[s6Step168HeadGOut,s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut],(growRow 777 s6Step168HeadGFresh ++ (growRow 795 s6Step168HeadFFresh ++ (growRow 775 s6Step168HeadGvFresh ++ (growRow 776 s6Step168HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step168HeadFvAfter [] []=some (s6Step168HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step168HeadFvBefore s6Step168HeadFvAfter s6Step168HeadFvAfter
    s6Step168HeadFvRow s6Step168HeadFvOut 100 s6Step168HeadFvFresh [] [] []
    (growRow 776 s6Step168HeadFvFresh) ([]) s6Step168HeadFv_Incoming s6Step168HeadFv_checked h4 s6Step168HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step168HeadGvBefore s6Step168HeadGvAfter s6Step168HeadFvAfter
    s6Step168HeadGvRow s6Step168HeadGvOut 100 s6Step168HeadGvFresh [(s6Step168HeadFvRow,100)] [s6Step168HeadFvFresh] [s6Step168HeadFvOut]
    (growRow 775 s6Step168HeadGvFresh) ((growRow 776 s6Step168HeadFvFresh ++ [])) s6Step168HeadGv_Incoming s6Step168HeadGv_checked h3 s6Step168HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step168HeadFBefore s6Step168HeadFAfter s6Step168HeadFvAfter
    s6Step168HeadFRow s6Step168HeadFOut 187 s6Step168HeadFFresh [(s6Step168HeadGvRow,100),(s6Step168HeadFvRow,100)] [s6Step168HeadGvFresh,s6Step168HeadFvFresh] [s6Step168HeadGvOut,s6Step168HeadFvOut]
    (growRow 795 s6Step168HeadFFresh) ((growRow 775 s6Step168HeadGvFresh ++ (growRow 776 s6Step168HeadFvFresh ++ []))) s6Step168HeadF_Incoming s6Step168HeadF_checked h2 s6Step168HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step168HeadGBefore s6Step168HeadGAfter s6Step168HeadFvAfter
    s6Step168HeadGRow s6Step168HeadGOut 187 s6Step168HeadGFresh [(s6Step168HeadFRow,187),(s6Step168HeadGvRow,100),(s6Step168HeadFvRow,100)] [s6Step168HeadFFresh,s6Step168HeadGvFresh,s6Step168HeadFvFresh] [s6Step168HeadFOut,s6Step168HeadGvOut,s6Step168HeadFvOut]
    (growRow 777 s6Step168HeadGFresh) ((growRow 795 s6Step168HeadFFresh ++ (growRow 775 s6Step168HeadGvFresh ++ (growRow 776 s6Step168HeadFvFresh ++ [])))) s6Step168HeadG_Incoming s6Step168HeadG_checked h1 s6Step168HeadG_Outgoing
  exact h0

private theorem s6Step168HeadBank_checked : compileHmrBankResizeLog .headroom s6Step168HeadGBefore ⟨s6Step168HeadFRow,s6Step168HeadGRow,s6Step168HeadFvRow,s6Step168HeadGvRow⟩ ⟨187,187,100,100⟩ [s6Step168HeadGFresh,s6Step168HeadFFresh,s6Step168HeadGvFresh,s6Step168HeadFvFresh]=
    some (s6Step168HeadFvAfter,⟨s6Step168HeadFOut,s6Step168HeadGOut,s6Step168HeadFvOut,s6Step168HeadGvOut⟩,(growRow 777 s6Step168HeadGFresh ++ (growRow 795 s6Step168HeadFFresh ++ (growRow 775 s6Step168HeadGvFresh ++ (growRow 776 s6Step168HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step168HeadBank_rows]
  rfl

private theorem s6Step168Front_checked : compileHmrSourceFrontLog s6Step168EntryFBefore s6Step168FrontBank 186 99 ⟨185,185,98,99⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step168FrontLog=some s6Step168FrontPlan := by
  have pairEq : s6Step168FrontPair=⟨s6Step168HeadFRow,s6Step168HeadGRow,s6Step168HeadFvRow,s6Step168HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step168FrontHead=⟨s6Step168ExitFRow,s6Step168ExitGRow,s6Step168ExitFvRow,s6Step168ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step168Add0A=s6Step168FrontHead.f.wires := by decide +kernel
  have gEq : s6Step168Add0B=s6Step168FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step168Add1A=s6Step168FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step168Add1B=s6Step168FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step168EntryFBefore s6Step168FrontBank 186 99 ⟨185,185,98,99⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step168FrontLog s6Step168FrontPlan
  · exact s6Step168Front_entry
  · exact s6Step168EntryBank_checked
  · exact s6Step168Front_sigma
  · rfl
  · exact s6Step168Front_branch
  · rfl
  · simpa only [s6Step168FrontPlan,pairEq] using s6Step168HeadBank_checked
  · simpa only [s6Step168FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step168F4_checked
  · exact s6Step168Counter_checked
  · rfl
  · simpa only [s6Step168FrontPlan,headEq] using s6Step168ExitBank_checked

private theorem s6Step168Complete_explicit_checked : compileHmrEarlyStepLog s6Step168EntryFBefore s6Step168FrontBank 186 99 ⟨185,185,98,99⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step168CompleteLog=some s6Step168CompletePlan := by
  let Q := s6Step168EarlyControlPlan
  have hq := s6Step168EarlyControl_plan_checked
  have fv1 : s6Step168CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step168CompleteOut.fv.payload[2]?.getD s6Step168CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step168CompleteOut.fv.payload[3]?.getD s6Step168CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step168CompleteOut.fv.payload[4]?.getD s6Step168CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step168EntryFBefore s6Step168EarlyControlArena s6Step168FrontBank 186 99 ⟨185,185,98,99⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step168CompleteLog s6Step168FrontPlan Q
    s6Step168Front_checked s6Step168Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step168Complete_owned s6Step168Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step168EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 793 s6Step168CompleteOut.fv.second (s6Step168CompleteOut.fv.payload[2]?.getD s6Step168CompleteOut.fv.sign) (s6Step168CompleteOut.fv.payload[3]?.getD s6Step168CompleteOut.fv.sign) (s6Step168CompleteOut.fv.payload[4]?.getD s6Step168CompleteOut.fv.sign) 892 42 s6Step168EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep168Arena : Arena := s6Step168EntryFBefore
def s6PrivateStep168Bank : WindowBank := s6Step168FrontBank
def s6PrivateStep168Spec : HmrSourceWalkStepLog := ⟨186,99,⟨185,185,98,99⟩,42,.early s6Step168CompleteLog⟩
def s6PrivateStep168Plan : HmrSourceStepPlan := .early s6Step168CompletePlan
theorem s6PrivateStep168_source : s6PrivateStep168Spec=s6ObservedLogs160[8] := rfl
theorem s6PrivateStep168_checked : compileHmrSourceStepLog s6PrivateStep168Arena s6PrivateStep168Bank
    s6PrivateStep168Spec.fgWidth s6PrivateStep168Spec.vWidth s6PrivateStep168Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 168 s6PrivateStep168Spec.need none s6PrivateStep168Spec.log=some s6PrivateStep168Plan := by
  change compileHmrSourceStepLog s6Step168EntryFBefore s6Step168FrontBank 186 99 ⟨185,185,98,99⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 168 42 none (.early s6Step168CompleteLog)=some (.early s6Step168CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 168<498)]
  rw [s6Step168Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
