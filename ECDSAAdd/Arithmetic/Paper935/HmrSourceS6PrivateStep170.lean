import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep168
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

private def s6Step170CompleteMoves : List (Wire × Wire) := [(864,184)]

private def s6Step170EarlyControlLog : HmrEarlyControlLog := ⟨[864, 863, 857, 876, 890],[922],[891],[903, 791, 825, 810, 894, 923],[]⟩

private def s6Step170FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[876], [857], [863], [818]],[[], [], [], []]⟩,[886],[793],[890],[922],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[890, 922, 891, 903]⟩

private def s6Step170CompleteLog : HmrEarlyStepLog := ⟨s6Step170FrontLog,s6Step170CompleteMoves,s6Step170EarlyControlLog⟩

private def s6Step170ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step170ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step170ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183],777⟩

private def s6Step170ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step170FrontOut : WindowBank := ⟨s6Step170ExitFOut,s6Step170ExitGOut,s6Step170ExitFvOut,s6Step170ExitGvOut⟩

private def s6Step170CompleteOut : WindowBank := s6Step170FrontOut.repacked s6Step170CompleteMoves

private def s6Step170EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step170EarlyControlPositiveArena,[922],s6Step170EarlyControlEqualityArena,[891],⟨⟨886,false⟩,[⟨⟨922,false⟩,891⟩]⟩⟩

private def s6Step170EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,864⟩,⟨⟨772,false⟩,863⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,890⟩]⟩

private def s6Step170EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step170EarlyControlZeroArena,s6Step170EarlyControlZeroPlan,s6Step170EarlyControlClassPlan,s6Step170EarlyControlFlagArena,s6Step170EarlyControlFittedArena,s6Step170EarlyControlHistoryArena,s6Step170EarlyControlSigmaArena,s6Step170EarlyControlOutputArena,s6Step170EarlyControlLog⟩

private def s6Step170CounterWork : List Wire := [890, 922, 891, 903]

private theorem s6Step170Counter_bounded : s6Step170CounterWork.toFinset⊆arenaWires := by norm_num [s6Step170CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step170HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170CounterDuring : Arena := ⟨s6Step170HeadFvAfter.live∪s6Step170CounterWork.toFinset,Finset.union_subset s6Step170HeadFvAfter.bounded s6Step170Counter_bounded⟩

private def s6Step170EntryFFresh : List Wire := []

private def s6Step170EntryFvFresh : List Wire := []

private def s6Step170EntryGFresh : List Wire := []

private def s6Step170EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step170EntryGvAfter : Arena := s6Step170EntryFBefore

private def s6Step170EntryGvFresh : List Wire := []

private def s6Step170ExitFExtra : List Wire := [857]

private def s6Step170ExitGExtra : List Wire := [184, 876]

private def s6Step170ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step170ExitGvExtra : List Wire := [863]

private def s6Step170Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step170Add0_bounded : s6Step170Add0Work.toFinset⊆arenaWires := by
  have h : s6Step170Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step170Add0During : Arena := ⟨s6Step170Add0Arena.live∪s6Step170Add0Work.toFinset,Finset.union_subset s6Step170Add0Arena.bounded s6Step170Add0_bounded⟩

private def s6Step170Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step170Add1_bounded : s6Step170Add1Work.toFinset⊆arenaWires := by
  have h : s6Step170Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step170Add1During : Arena := ⟨s6Step170Add1Arena.live∪s6Step170Add1Work.toFinset,Finset.union_subset s6Step170Add1Arena.bounded s6Step170Add1_bounded⟩

private def s6Step170F4FlagArena : Arena := ⟨s6Step170HeadFvAfter.live∪{890},Finset.union_subset s6Step170HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step170F4Plan : HmrHybridF4Plan := ⟨s6Step170F4FlagArena,[890],s6Step170Add0Arena,[922],s6Step170Add0During,s6Step170Add0Work,s6Step170Add1During,s6Step170Add1Work⟩

private def s6Step170HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 857],795⟩

private def s6Step170HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step170HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 876],777⟩

private def s6Step170HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 863],775⟩

private def s6Step170FrontHead : WindowBank := ⟨s6Step170HeadFOut,s6Step170HeadGOut,s6Step170HeadFvOut,s6Step170HeadGvOut⟩

private def s6Step170EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step170EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892],776⟩

private def s6Step170EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩

private def s6Step170EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step170FrontPair : WindowBank := ⟨s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut⟩

private def s6Step170FrontSigmaArena : Arena := ⟨s6Step170EntryGvAfter.live∪{886},Finset.union_subset s6Step170EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step170HeadFFresh : List Wire := [857]

private def s6Step170HeadFvFresh : List Wire := [818]

private def s6Step170HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170HeadGFresh : List Wire := [876]

private def s6Step170HeadGvFresh : List Wire := [863]

private def s6Step170FrontPlan : HmrSourceFront := ⟨s6Step170EntryGvAfter,s6Step170FrontPair,(growRow 795 s6Step170EntryFFresh ++ (growRow 777 s6Step170EntryGFresh ++ (growRow 776 s6Step170EntryFvFresh ++ (growRow 775 s6Step170EntryGvFresh ++ [])))),s6Step170FrontSigmaArena,[886],s6Step170HeadGBefore,[793],
  s6Step170HeadFvAfter,s6Step170FrontHead,(growRow 777 s6Step170HeadGFresh ++ (growRow 795 s6Step170HeadFFresh ++ (growRow 775 s6Step170HeadGvFresh ++ (growRow 776 s6Step170HeadFvFresh ++ [])))),s6Step170F4Plan,s6Step170CounterDuring,s6Step170CounterWork,s6Step170ExitGvAfter,s6Step170FrontOut,(shrinkRow 777 s6Step170ExitGExtra ++ (shrinkRow 795 s6Step170ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step170ExitGvExtra ++ []))))⟩

private def s6Step170CompletePlan : HmrEarlyStepPlan := ⟨s6Step170FrontPlan,s6Step170EarlyControlArena,s6Step170EarlyControlPlan,s6Step170CompleteMoves⟩

private theorem s6Step170Complete_apart : List.Disjoint (s6Step170CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [886, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step170CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[886, 793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step170Complete_owned : (s6Step170CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step170CompleteRelocationMove0Borrowed : Arena := ⟨s6Step170ExitGvAfter.live∪{184},Finset.union_subset s6Step170ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step170CompleteRelocation_move0_owned : 864∈s6Step170ExitGvAfter.live := by norm_num [s6Step170ExitGvAfter,arenaWires]

private theorem s6Step170CompleteRelocation_move0_reserve : s6Step170ExitGvAfter.reserve {184}=some s6Step170CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step170ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step170CompleteRelocation_move0_retire : s6Step170CompleteRelocationMove0Borrowed.retireSet {864}=s6Step170EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step170CompleteRelocationMove0Borrowed s6Step170EarlyControlArena {864}
  change s6Step170EarlyControlArena.live=(s6Step170ExitGvAfter.live∪{184})\{864}
  apply hmrArena_update_of_filter_check s6Step170ExitGvAfter s6Step170EarlyControlArena (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [184] [864] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step170CompleteRelocation_checked : s6Step170ExitGvAfter.checkRepack [(864,184)]=some s6Step170EarlyControlArena := by
  have tail1 : s6Step170EarlyControlArena.checkRepack []=some s6Step170EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step170ExitGvAfter s6Step170CompleteRelocationMove0Borrowed s6Step170EarlyControlArena s6Step170EarlyControlArena 864 184 []
    s6Step170CompleteRelocation_move0_owned s6Step170CompleteRelocation_move0_reserve s6Step170CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step170Complete_repack : s6Step170ExitGvAfter.checkRepack s6Step170CompleteMoves=some s6Step170EarlyControlArena := by
  simpa only [s6Step170CompleteMoves] using s6Step170CompleteRelocation_checked

private theorem s6Step170EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s6Step170EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EarlyControl_branch : compileHmrBranchRetirement s6Step170EarlyControlSigmaArena 793=some s6Step170EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step170EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step170EarlyControlSigmaArena s6Step170EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [793] rfl rfl
    decide +kernel

private theorem s6Step170EarlyControl_classEqualityBorrow : s6Step170EarlyControlPositiveArena.checkBorrow (([886, 922] : List Wire).length-1) s6Step170EarlyControlLog.classWork=some s6Step170EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step170EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step170EarlyControlEqualityArena,s6Step170EarlyControlPositiveArena,s6Step170EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step170EarlyControl_classEqualityOwned : ([886, 922] : List Wire).toFinset⊆s6Step170EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170EarlyControl_classEquality : compileHmrEqualityLog s6Step170EarlyControlPositiveArena [886, 922] 0 s6Step170EarlyControlLog.classWork=some (s6Step170EarlyControlEqualityArena,s6Step170EarlyControlLog.classWork,s6Step170EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step170EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step170EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step170EarlyControl_classOwned : ([769, 890, 886] : List Wire).toFinset⊆s6Step170EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170EarlyControl_positiveBorrow : s6Step170EarlyControlZeroArena.checkBorrow (1) s6Step170EarlyControlLog.positiveWork=some s6Step170EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step170EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step170EarlyControlPositiveArena,s6Step170EarlyControlZeroArena,s6Step170EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step170EarlyControl_class : compileHmrSourceClassLog s6Step170EarlyControlZeroArena false 769 s6Step170EarlyControlZeroPlan.top 0 886 s6Step170EarlyControlLog.positiveWork s6Step170EarlyControlLog.classWork=some s6Step170EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step170EarlyControlClassPlan s6Step170EarlyControlZeroArena false 769 s6Step170EarlyControlZeroPlan.top 0 886
  constructor
  · decide +kernel
  · exact s6Step170EarlyControl_classOwned
  · exact s6Step170EarlyControl_positiveBorrow
  · exact s6Step170EarlyControl_classEquality

private theorem s6Step170EarlyControl_entryRecordOwned : ([793, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EarlyControl_entrySigmaOwned : ([886, 254] : List Wire).toFinset⊆s6Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EarlyControl_fitBorrow : s6Step170EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step170EarlyControlLog.recordFresh=some s6Step170EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step170EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step170EarlyControlFittedArena,s6Step170EarlyControlFlagArena,s6Step170EarlyControlLog,arenaWires]

private theorem s6Step170EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step170EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170EarlyControl_fit : compileHmrRecordGrowLog s6Step170EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step170EarlyControlLog.recordFresh=some s6Step170EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step170EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step170EarlyControl_fitBorrow

private theorem s6Step170EarlyControl_flagsBorrow : s6Step170EarlyControlEqualityArena.checkBorrow (6) s6Step170EarlyControlLog.flagWork=some s6Step170EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step170EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step170EarlyControlFlagArena,s6Step170EarlyControlEqualityArena,s6Step170EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step170EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s6Step170EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170EarlyControl_flags : compileHmrFlagsLog s6Step170EarlyControlClassPlan.equalityArena s6Step170EarlyControlClassPlan.equality.top 253 252 251 s6Step170EarlyControlLog.flagWork=some s6Step170EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step170EarlyControl_flagsOwned⟩
  · exact s6Step170EarlyControl_flagsBorrow

private theorem s6Step170EarlyControl_historyBorrow : s6Step170EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step170EarlyControlLog.recordFresh=some s6Step170EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step170EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step170EarlyControlArena s6Step170EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step170EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step170EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EarlyControl_history : compileHmrRecordGrowLog s6Step170EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step170EarlyControlLog.recordFresh=some s6Step170EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step170EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step170EarlyControl_historyBorrow

private theorem s6Step170EarlyControl_sigmaOwned : ([254, 886] : List Wire).toFinset⊆s6Step170EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EarlyControl_sigmaReleaseOwned : ([886] : List Wire).toFinset⊆s6Step170EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EarlyControl_sigmaRelease : s6Step170EarlyControlHistoryArena.release {886} (fun _ => false)=some s6Step170EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step170EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step170EarlyControlHistoryArena s6Step170EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [886] rfl rfl
    decide +kernel

private theorem s6Step170EarlyControl_sigma : compileHmrSigmaDropLog s6Step170EarlyControlHistoryArena false 0 0 254 886 []=some s6Step170EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step170EarlyControl_sigmaOwned⟩
  · exact s6Step170EarlyControl_sigmaRelease

private theorem s6Step170EarlyControl_zeroBorrow : s6Step170EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step170EarlyControlLog.zeroWork=some s6Step170EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step170EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step170EarlyControlArena s6Step170EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step170EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step170EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step170EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step170EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step170EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(865,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EarlyControl_zero : compileHmrEqualityLog s6Step170EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step170EarlyControlLog.zeroWork=some (s6Step170EarlyControlZeroArena,s6Step170EarlyControlLog.zeroWork,s6Step170EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step170EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step170EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step170EarlyControl_logged : s6Step170EarlyControlPlan.Logged s6Step170EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 886 254 253 252 251 793 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step170EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step170EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step170EarlyControl_zero
  · exact s6Step170EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step170EarlyControl_flags
  · exact s6Step170EarlyControl_fit
  · exact s6Step170EarlyControl_history
  · exact s6Step170EarlyControl_sigma
  · exact s6Step170EarlyControl_branch

private theorem s6Step170EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step170EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 886 254 253 252 251 793 42 s6Step170EarlyControlLog=some s6Step170EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step170EarlyControlPlan s6Step170EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 886 254 253 252 251 793 42 s6Step170EarlyControl_logged

private def s6Step170EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step170EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892],776⟩

private def s6Step170EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩

private def s6Step170EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private def s6Step170FrontBank : WindowBank := ⟨s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow⟩

private def s6Step170Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 857, 795]

private def s6Step170Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 876, 777]

private def s6Step170Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 776]

private def s6Step170Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 863, 775]

private theorem s6Step170Counter_apart : Disjoint s6Step170HeadFvAfter.live s6Step170CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step170HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170Counter_borrowed : s6Step170HeadFvAfter.checkBorrow 4 s6Step170CounterWork=some s6Step170CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step170HeadFvAfter s6Step170CounterDuring s6Step170CounterWork.toFinset s6Step170Counter_bounded s6Step170Counter_apart rfl

private theorem s6Step170Counter_owned : (886::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step170HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step170HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170Counter_checked : compileHmrCounterStepLog s6Step170HeadFvAfter true 886 [774, 773, 772, 771, 770, 769] s6Step170CounterWork=some s6Step170CounterDuring := by
  have owned : ∀q∈886::[774, 773, 772, 771, 770, 769],q∈s6Step170HeadFvAfter.live := fun q hq => s6Step170Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step170Counter_borrowed

private def s6Step170EntryFAfter : Arena := s6Step170EntryFBefore

private theorem s6Step170EntryBank_incomingDistinct : ([s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170EntryF_Incoming : rowsOwned s6Step170EntryFBefore [s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow] 0 s6Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170EntryBank_outgoingOwned : rowsOwned s6Step170EntryGvAfter [s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step170EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170EntryF_Outgoing : rowsOwned s6Step170EntryGvAfter [s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut] :=
  hmrRows_owned_drop s6Step170EntryGvAfter [s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut] 0 s6Step170EntryBank_outgoingOwned

private theorem s6Step170EntryF_distinct : (s6Step170EntryFRow.sign::s6Step170EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170EntryF_owned : (s6Step170EntryFRow.sign::s6Step170EntryFRow.payload).toFinset⊆s6Step170EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EntryF_reserved : s6Step170EntryFBefore.reserve s6Step170EntryFFresh.toFinset=some s6Step170EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170EntryFFresh,arenaWires]
  · norm_num [s6Step170EntryFBefore,s6Step170EntryFFresh,arenaWires]
  · simp only [s6Step170EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step170EntryF_checked : planRowResizeLog s6Step170EntryFBefore s6Step170EntryFRow 185 s6Step170EntryFFresh=
    some (s6Step170EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩,growRow 795 s6Step170EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step170EntryFBefore s6Step170EntryFAfter s6Step170EntryFRow 185 s6Step170EntryFFresh
    s6Step170EntryF_distinct s6Step170EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170EntryF_reserved
  have rowEq : WindowRow.mk (s6Step170EntryFRow.payload++s6Step170EntryFFresh) s6Step170EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step170EntryFvAfter : Arena := s6Step170EntryFBefore

private def s6Step170EntryFvBefore : Arena := s6Step170EntryFBefore

private theorem s6Step170EntryFv_Incoming : rowsOwned s6Step170EntryFvBefore [s6Step170EntryFvRow,s6Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow] 2 s6Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170EntryFv_Outgoing : rowsOwned s6Step170EntryGvAfter [s6Step170EntryFvOut,s6Step170EntryGvOut] :=
  hmrRows_owned_drop s6Step170EntryGvAfter [s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut] 2 s6Step170EntryBank_outgoingOwned

private theorem s6Step170EntryFv_distinct : (s6Step170EntryFvRow.sign::s6Step170EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170EntryFv_owned : (s6Step170EntryFvRow.sign::s6Step170EntryFvRow.payload).toFinset⊆s6Step170EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EntryFv_reserved : s6Step170EntryFvBefore.reserve s6Step170EntryFvFresh.toFinset=some s6Step170EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170EntryFvFresh,arenaWires]
  · norm_num [s6Step170EntryFvBefore,s6Step170EntryFBefore,s6Step170EntryFvFresh,arenaWires]
  · simp only [s6Step170EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step170EntryFv_checked : planRowResizeLog s6Step170EntryFvBefore s6Step170EntryFvRow 99 s6Step170EntryFvFresh=
    some (s6Step170EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892],776⟩,growRow 776 s6Step170EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step170EntryFvBefore s6Step170EntryFvAfter s6Step170EntryFvRow 99 s6Step170EntryFvFresh
    s6Step170EntryFv_distinct s6Step170EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step170EntryFvRow.payload++s6Step170EntryFvFresh) s6Step170EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step170EntryGAfter : Arena := s6Step170EntryFBefore

private def s6Step170EntryGBefore : Arena := s6Step170EntryFBefore

private theorem s6Step170EntryG_Incoming : rowsOwned s6Step170EntryGBefore [s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow] 1 s6Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170EntryG_Outgoing : rowsOwned s6Step170EntryGvAfter [s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut] :=
  hmrRows_owned_drop s6Step170EntryGvAfter [s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut] 1 s6Step170EntryBank_outgoingOwned

private theorem s6Step170EntryG_distinct : (s6Step170EntryGRow.sign::s6Step170EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170EntryG_owned : (s6Step170EntryGRow.sign::s6Step170EntryGRow.payload).toFinset⊆s6Step170EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EntryG_reserved : s6Step170EntryGBefore.reserve s6Step170EntryGFresh.toFinset=some s6Step170EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170EntryGFresh,arenaWires]
  · norm_num [s6Step170EntryGBefore,s6Step170EntryFBefore,s6Step170EntryGFresh,arenaWires]
  · simp only [s6Step170EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step170EntryG_checked : planRowResizeLog s6Step170EntryGBefore s6Step170EntryGRow 185 s6Step170EntryGFresh=
    some (s6Step170EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩,growRow 777 s6Step170EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step170EntryGBefore s6Step170EntryGAfter s6Step170EntryGRow 185 s6Step170EntryGFresh
    s6Step170EntryG_distinct s6Step170EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170EntryG_reserved
  have rowEq : WindowRow.mk (s6Step170EntryGRow.payload++s6Step170EntryGFresh) s6Step170EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step170EntryGvBefore : Arena := s6Step170EntryFBefore

private theorem s6Step170EntryGv_Incoming : rowsOwned s6Step170EntryGvBefore [s6Step170EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow] 3 s6Step170EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170EntryGv_Outgoing : rowsOwned s6Step170EntryGvAfter [s6Step170EntryGvOut] :=
  hmrRows_owned_drop s6Step170EntryGvAfter [s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut] 3 s6Step170EntryBank_outgoingOwned

private theorem s6Step170EntryGv_distinct : (s6Step170EntryGvRow.sign::s6Step170EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170EntryGv_owned : (s6Step170EntryGvRow.sign::s6Step170EntryGvRow.payload).toFinset⊆s6Step170EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170EntryGv_reserved : s6Step170EntryGvBefore.reserve s6Step170EntryGvFresh.toFinset=some s6Step170EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170EntryGvFresh,arenaWires]
  · norm_num [s6Step170EntryGvBefore,s6Step170EntryFBefore,s6Step170EntryGvFresh,arenaWires]
  · simp only [s6Step170EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step170EntryGv_checked : planRowResizeLog s6Step170EntryGvBefore s6Step170EntryGvRow 99 s6Step170EntryGvFresh=
    some (s6Step170EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩,growRow 775 s6Step170EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step170EntryGvBefore s6Step170EntryGvAfter s6Step170EntryGvRow 99 s6Step170EntryGvFresh
    s6Step170EntryGv_distinct s6Step170EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step170EntryGvRow.payload++s6Step170EntryGvFresh) s6Step170EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step170EntryBank_rows : planWindowRowsLog s6Step170EntryFBefore [(s6Step170EntryFRow,185),(s6Step170EntryGRow,185),(s6Step170EntryFvRow,99),(s6Step170EntryGvRow,99)] [s6Step170EntryFFresh,s6Step170EntryGFresh,s6Step170EntryFvFresh,s6Step170EntryGvFresh]=
    some (s6Step170EntryGvAfter,[s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut],(growRow 795 s6Step170EntryFFresh ++ (growRow 777 s6Step170EntryGFresh ++ (growRow 776 s6Step170EntryFvFresh ++ (growRow 775 s6Step170EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step170EntryGvAfter [] []=some (s6Step170EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step170EntryGvBefore s6Step170EntryGvAfter s6Step170EntryGvAfter
    s6Step170EntryGvRow s6Step170EntryGvOut 99 s6Step170EntryGvFresh [] [] []
    (growRow 775 s6Step170EntryGvFresh) ([]) s6Step170EntryGv_Incoming s6Step170EntryGv_checked h4 s6Step170EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step170EntryFvBefore s6Step170EntryFvAfter s6Step170EntryGvAfter
    s6Step170EntryFvRow s6Step170EntryFvOut 99 s6Step170EntryFvFresh [(s6Step170EntryGvRow,99)] [s6Step170EntryGvFresh] [s6Step170EntryGvOut]
    (growRow 776 s6Step170EntryFvFresh) ((growRow 775 s6Step170EntryGvFresh ++ [])) s6Step170EntryFv_Incoming s6Step170EntryFv_checked h3 s6Step170EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step170EntryGBefore s6Step170EntryGAfter s6Step170EntryGvAfter
    s6Step170EntryGRow s6Step170EntryGOut 185 s6Step170EntryGFresh [(s6Step170EntryFvRow,99),(s6Step170EntryGvRow,99)] [s6Step170EntryFvFresh,s6Step170EntryGvFresh] [s6Step170EntryFvOut,s6Step170EntryGvOut]
    (growRow 777 s6Step170EntryGFresh) ((growRow 776 s6Step170EntryFvFresh ++ (growRow 775 s6Step170EntryGvFresh ++ []))) s6Step170EntryG_Incoming s6Step170EntryG_checked h2 s6Step170EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step170EntryFBefore s6Step170EntryFAfter s6Step170EntryGvAfter
    s6Step170EntryFRow s6Step170EntryFOut 185 s6Step170EntryFFresh [(s6Step170EntryGRow,185),(s6Step170EntryFvRow,99),(s6Step170EntryGvRow,99)] [s6Step170EntryGFresh,s6Step170EntryFvFresh,s6Step170EntryGvFresh] [s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut]
    (growRow 795 s6Step170EntryFFresh) ((growRow 777 s6Step170EntryGFresh ++ (growRow 776 s6Step170EntryFvFresh ++ (growRow 775 s6Step170EntryGvFresh ++ [])))) s6Step170EntryF_Incoming s6Step170EntryF_checked h1 s6Step170EntryF_Outgoing
  exact h0

private theorem s6Step170EntryBank_checked : compileHmrBankResizeLog .entry s6Step170EntryFBefore ⟨s6Step170EntryFRow,s6Step170EntryGRow,s6Step170EntryFvRow,s6Step170EntryGvRow⟩ ⟨185,185,99,99⟩ [s6Step170EntryFFresh,s6Step170EntryGFresh,s6Step170EntryFvFresh,s6Step170EntryGvFresh]=
    some (s6Step170EntryGvAfter,⟨s6Step170EntryFOut,s6Step170EntryGOut,s6Step170EntryFvOut,s6Step170EntryGvOut⟩,(growRow 795 s6Step170EntryFFresh ++ (growRow 777 s6Step170EntryGFresh ++ (growRow 776 s6Step170EntryFvFresh ++ (growRow 775 s6Step170EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step170EntryBank_rows]
  rfl

private def s6Step170ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step170ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170ExitFBefore : Arena := s6Step170ExitGAfter

private def s6Step170ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 857],795⟩

private def s6Step170ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step170ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 876],777⟩

private def s6Step170ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 863],775⟩

private theorem s6Step170ExitBank_incomingDistinct : ([s6Step170ExitGRow,s6Step170ExitFRow,s6Step170ExitFvRow,s6Step170ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170ExitF_Incoming : rowsOwned s6Step170ExitFBefore [s6Step170ExitFRow,s6Step170ExitFvRow,s6Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170ExitGRow,s6Step170ExitFRow,s6Step170ExitFvRow,s6Step170ExitGvRow] 1 s6Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170ExitFBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step170ExitBank_outgoingOwned : rowsOwned s6Step170ExitGvAfter [s6Step170ExitGOut,s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step170ExitGvAfter (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170ExitF_Outgoing : rowsOwned s6Step170ExitGvAfter [s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut] :=
  hmrRows_owned_drop s6Step170ExitGvAfter [s6Step170ExitGOut,s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut] 1 s6Step170ExitBank_outgoingOwned

private theorem s6Step170ExitF_distinct : (s6Step170ExitFRow.sign::s6Step170ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170ExitF_owned : (s6Step170ExitFRow.sign::s6Step170ExitFRow.payload).toFinset⊆s6Step170ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170ExitFBefore (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170ExitF_retired : s6Step170ExitFBefore.retireSet s6Step170ExitFExtra.toFinset=s6Step170ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step170ExitFBefore s6Step170ExitFAfter s6Step170ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step170ExitFBefore s6Step170ExitFAfter (fun q => (0≤q ∧ q<184) ∨ (185≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step170ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step170ExitF_checked : planRowResizeLog s6Step170ExitFBefore s6Step170ExitFRow 185 []=
    some (s6Step170ExitFAfter,s6Step170ExitFOut,shrinkRow 795 s6Step170ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step170ExitFBefore s6Step170ExitFRow 185 s6Step170ExitF_distinct s6Step170ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step170ExitFRow.payload.take 185) s6Step170ExitFRow.sign=s6Step170ExitFOut := by decide +kernel
  have hi : s6Step170ExitFRow.payload.drop 185=s6Step170ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step170ExitF_retired] at result
  exact result

private def s6Step170ExitFvAfter : Arena := s6Step170ExitFAfter

private def s6Step170ExitFvBefore : Arena := s6Step170ExitFAfter

private theorem s6Step170ExitFv_Incoming : rowsOwned s6Step170ExitFvBefore [s6Step170ExitFvRow,s6Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170ExitGRow,s6Step170ExitFRow,s6Step170ExitFvRow,s6Step170ExitGvRow] 2 s6Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170ExitFvBefore (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170ExitFv_Outgoing : rowsOwned s6Step170ExitGvAfter [s6Step170ExitFvOut,s6Step170ExitGvOut] :=
  hmrRows_owned_drop s6Step170ExitGvAfter [s6Step170ExitGOut,s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut] 2 s6Step170ExitBank_outgoingOwned

private theorem s6Step170ExitFv_distinct : (s6Step170ExitFvRow.sign::s6Step170ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170ExitFv_owned : (s6Step170ExitFvRow.sign::s6Step170ExitFvRow.payload).toFinset⊆s6Step170ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170ExitFvBefore (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170ExitFv_reserved : s6Step170ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step170ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step170ExitFv_checked : planRowResizeLog s6Step170ExitFvBefore s6Step170ExitFvRow 100 []=
    some (s6Step170ExitFvAfter,s6Step170ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step170ExitFvBefore s6Step170ExitFvAfter s6Step170ExitFvRow 100 []
    s6Step170ExitFv_distinct s6Step170ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step170ExitFvRow.payload++[]) s6Step170ExitFvRow.sign=s6Step170ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step170ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step170ExitG_Incoming : rowsOwned s6Step170ExitGBefore [s6Step170ExitGRow,s6Step170ExitFRow,s6Step170ExitFvRow,s6Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170ExitGRow,s6Step170ExitFRow,s6Step170ExitFvRow,s6Step170ExitGvRow] 0 s6Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step170ExitG_Outgoing : rowsOwned s6Step170ExitGvAfter [s6Step170ExitGOut,s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut] :=
  hmrRows_owned_drop s6Step170ExitGvAfter [s6Step170ExitGOut,s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut] 0 s6Step170ExitBank_outgoingOwned

private theorem s6Step170ExitG_distinct : (s6Step170ExitGRow.sign::s6Step170ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170ExitG_owned : (s6Step170ExitGRow.sign::s6Step170ExitGRow.payload).toFinset⊆s6Step170ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170ExitG_retired : s6Step170ExitGBefore.retireSet s6Step170ExitGExtra.toFinset=s6Step170ExitGAfter := by
  unfold Arena.retireSet s6Step170ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step170ExitGBefore,s6Step170ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step170ExitG_checked : planRowResizeLog s6Step170ExitGBefore s6Step170ExitGRow 184 []=
    some (s6Step170ExitGAfter,s6Step170ExitGOut,shrinkRow 777 s6Step170ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step170ExitGBefore s6Step170ExitGRow 184 s6Step170ExitG_distinct s6Step170ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step170ExitGRow.payload.take 184) s6Step170ExitGRow.sign=s6Step170ExitGOut := by decide +kernel
  have hi : s6Step170ExitGRow.payload.drop 184=s6Step170ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step170ExitG_retired] at result
  exact result

private def s6Step170ExitGvBefore : Arena := s6Step170ExitFAfter

private theorem s6Step170ExitGv_Incoming : rowsOwned s6Step170ExitGvBefore [s6Step170ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170ExitGRow,s6Step170ExitFRow,s6Step170ExitFvRow,s6Step170ExitGvRow] 3 s6Step170ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170ExitGvBefore (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step170ExitGv_Outgoing : rowsOwned s6Step170ExitGvAfter [s6Step170ExitGvOut] :=
  hmrRows_owned_drop s6Step170ExitGvAfter [s6Step170ExitGOut,s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut] 3 s6Step170ExitBank_outgoingOwned

private theorem s6Step170ExitGv_distinct : (s6Step170ExitGvRow.sign::s6Step170ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170ExitGv_owned : (s6Step170ExitGvRow.sign::s6Step170ExitGvRow.payload).toFinset⊆s6Step170ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170ExitGvBefore (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step170ExitGv_retired : s6Step170ExitGvBefore.retireSet s6Step170ExitGvExtra.toFinset=s6Step170ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step170ExitGvBefore s6Step170ExitGvAfter s6Step170ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step170ExitGvBefore s6Step170ExitGvAfter (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,184),(185,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step170ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step170ExitGv_checked : planRowResizeLog s6Step170ExitGvBefore s6Step170ExitGvRow 99 []=
    some (s6Step170ExitGvAfter,s6Step170ExitGvOut,shrinkRow 775 s6Step170ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step170ExitGvBefore s6Step170ExitGvRow 99 s6Step170ExitGv_distinct s6Step170ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step170ExitGvRow.payload.take 99) s6Step170ExitGvRow.sign=s6Step170ExitGvOut := by decide +kernel
  have hi : s6Step170ExitGvRow.payload.drop 99=s6Step170ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step170ExitGv_retired] at result
  exact result

private theorem s6Step170ExitBank_rows : planWindowRowsLog s6Step170ExitGBefore [(s6Step170ExitGRow,184),(s6Step170ExitFRow,185),(s6Step170ExitFvRow,100),(s6Step170ExitGvRow,99)] [[],[],[],[]]=
    some (s6Step170ExitGvAfter,[s6Step170ExitGOut,s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut],(shrinkRow 777 s6Step170ExitGExtra ++ (shrinkRow 795 s6Step170ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step170ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step170ExitGvAfter [] []=some (s6Step170ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step170ExitGvBefore s6Step170ExitGvAfter s6Step170ExitGvAfter
    s6Step170ExitGvRow s6Step170ExitGvOut 99 [] [] [] []
    (shrinkRow 775 s6Step170ExitGvExtra) ([]) s6Step170ExitGv_Incoming s6Step170ExitGv_checked h4 s6Step170ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step170ExitFvBefore s6Step170ExitFvAfter s6Step170ExitGvAfter
    s6Step170ExitFvRow s6Step170ExitFvOut 100 [] [(s6Step170ExitGvRow,99)] [[]] [s6Step170ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step170ExitGvExtra ++ [])) s6Step170ExitFv_Incoming s6Step170ExitFv_checked h3 s6Step170ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step170ExitFBefore s6Step170ExitFAfter s6Step170ExitGvAfter
    s6Step170ExitFRow s6Step170ExitFOut 185 [] [(s6Step170ExitFvRow,100),(s6Step170ExitGvRow,99)] [[],[]] [s6Step170ExitFvOut,s6Step170ExitGvOut]
    (shrinkRow 795 s6Step170ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step170ExitGvExtra ++ []))) s6Step170ExitF_Incoming s6Step170ExitF_checked h2 s6Step170ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step170ExitGBefore s6Step170ExitGAfter s6Step170ExitGvAfter
    s6Step170ExitGRow s6Step170ExitGOut 184 [] [(s6Step170ExitFRow,185),(s6Step170ExitFvRow,100),(s6Step170ExitGvRow,99)] [[],[],[]] [s6Step170ExitFOut,s6Step170ExitFvOut,s6Step170ExitGvOut]
    (shrinkRow 777 s6Step170ExitGExtra) ((shrinkRow 795 s6Step170ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step170ExitGvExtra ++ [])))) s6Step170ExitG_Incoming s6Step170ExitG_checked h1 s6Step170ExitG_Outgoing
  exact h0

private theorem s6Step170ExitBank_checked : compileHmrBankResizeLog .exit s6Step170ExitGBefore ⟨s6Step170ExitFRow,s6Step170ExitGRow,s6Step170ExitFvRow,s6Step170ExitGvRow⟩ ⟨185,184,100,99⟩ [[],[],[],[]]=
    some (s6Step170ExitGvAfter,⟨s6Step170ExitFOut,s6Step170ExitGOut,s6Step170ExitFvOut,s6Step170ExitGvOut⟩,(shrinkRow 777 s6Step170ExitGExtra ++ (shrinkRow 795 s6Step170ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step170ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step170ExitBank_rows]
  rfl

private theorem s6Step170Add0_apart : Disjoint s6Step170Add0Arena.live s6Step170Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step170Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170Add0_card : s6Step170Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step170Add0_borrowed : s6Step170Add0Arena.checkBorrow (hmrHybridCount s6Step170Add0Arena s6Step170Add0B.length) s6Step170Add0Work=some s6Step170Add0During := by
  have len : s6Step170Add0Work.length=hmrHybridCount s6Step170Add0Arena s6Step170Add0B.length := by
    rw [hmrHybridCount,s6Step170Add0_card]
    decide +kernel
  have nd : s6Step170Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step170Add0Arena s6Step170Add0During s6Step170Add0Work.toFinset s6Step170Add0_bounded s6Step170Add0_apart rfl

private theorem s6Step170Add0_distinct : (890::793::922::(s6Step170Add0A++s6Step170Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170Add0_owned : (890::793::922::(s6Step170Add0A++s6Step170Add0B)).toFinset⊆s6Step170Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step170Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170Add0_checked : compileHmrHybridCinLog s6Step170Add0Arena 793 890 922 s6Step170Add0A s6Step170Add0B s6Step170Add0Work=some s6Step170Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step170Add0Arena s6Step170Add0During 793 890 922 s6Step170Add0A s6Step170Add0B s6Step170Add0Work
    (by decide +kernel) (by decide +kernel) s6Step170Add0_distinct
    (fun q hq => s6Step170Add0_owned (List.mem_toFinset.mpr hq)) s6Step170Add0_borrowed

private theorem s6Step170Add1_apart : Disjoint s6Step170Add1Arena.live s6Step170Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step170Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170Add1_card : s6Step170Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step170Add1_borrowed : s6Step170Add1Arena.checkBorrow (hmrHybridCount s6Step170Add1Arena s6Step170Add1B.length) s6Step170Add1Work=some s6Step170Add1During := by
  have len : s6Step170Add1Work.length=hmrHybridCount s6Step170Add1Arena s6Step170Add1B.length := by
    rw [hmrHybridCount,s6Step170Add1_card]
    decide +kernel
  have nd : s6Step170Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step170Add1Arena s6Step170Add1During s6Step170Add1Work.toFinset s6Step170Add1_bounded s6Step170Add1_apart rfl

private theorem s6Step170Add1_distinct : (890::793::922::(s6Step170Add1A++s6Step170Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170Add1_owned : (890::793::922::(s6Step170Add1A++s6Step170Add1B)).toFinset⊆s6Step170Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step170Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170Add1_checked : compileHmrHybridCinLog s6Step170Add1Arena 793 890 922 s6Step170Add1A s6Step170Add1B s6Step170Add1Work=some s6Step170Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step170Add1Arena s6Step170Add1During 793 890 922 s6Step170Add1A s6Step170Add1B s6Step170Add1Work
    (by decide +kernel) (by decide +kernel) s6Step170Add1_distinct
    (fun q hq => s6Step170Add1_owned (List.mem_toFinset.mpr hq)) s6Step170Add1_borrowed

private theorem s6Step170F4_apart : Disjoint (s6Step170Add0A++s6Step170Add0B).toFinset (s6Step170Add1A++s6Step170Add1B).toFinset := by
  have nd : ((s6Step170Add0A++s6Step170Add0B)++(s6Step170Add1A++s6Step170Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step170F4_carry : s6Step170F4FlagArena.checkBorrow 1 [922]=some s6Step170Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step170F4FlagArena,s6Step170HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step170F4FlagArena,s6Step170HeadFvAfter,s6Step170Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step170F4_distinct : (886::793::890::922::((s6Step170Add0A++s6Step170Add1A)++(s6Step170Add0B++s6Step170Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170F4_flag : s6Step170HeadFvAfter.checkBorrow 1 [890]=some s6Step170F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step170HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step170F4_owned : (886::793::((s6Step170Add0A++s6Step170Add1A)++(s6Step170Add0B++s6Step170Add1B))).toFinset⊆s6Step170HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step170HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170F4_checked : compileHmrHybridF4Log s6Step170HeadFvAfter 886 793 s6Step170Add0A s6Step170Add0B s6Step170Add1A s6Step170Add1B [890] [922] s6Step170Add0Work s6Step170Add1Work=some s6Step170F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step170HeadFvAfter s6Step170F4FlagArena s6Step170Add0Arena s6Step170Add0During s6Step170Add1During 886 793
    s6Step170Add0A s6Step170Add0B s6Step170Add1A s6Step170Add1B [890] [922] s6Step170Add0Work s6Step170Add1Work
    (fun q hq => s6Step170F4_owned (List.mem_toFinset.mpr hq)) s6Step170F4_flag s6Step170F4_carry
    s6Step170F4_distinct s6Step170F4_apart s6Step170Add0_checked s6Step170Add1_checked

private theorem s6Step170Front_branch : s6Step170FrontSigmaArena.checkBorrow 1 [793]=some s6Step170HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step170FrontSigmaArena,s6Step170EntryGvAfter,s6Step170EntryFBefore,arenaWires]
  · change s6Step170HeadGBefore.live=(s6Step170EntryGvAfter.live∪{886})∪{793}
    apply hmrArena_union_pair_of_filter_check s6Step170EntryGvAfter s6Step170HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 886 793 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step170Front_entry : HmrFrontEntryValid s6Step170EntryFBefore s6Step170FrontBank 185 99 ⟨185,184,100,99⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step170FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step170EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step170EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step170FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step170Front_sigma : s6Step170EntryGvAfter.checkBorrow 1 [886]=some s6Step170FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step170EntryGvAfter,s6Step170EntryFBefore,arenaWires]
  · rfl

private def s6Step170HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170HeadFBefore : Arena := s6Step170HeadGAfter

private def s6Step170HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440],795⟩

private def s6Step170HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892],776⟩

private def s6Step170HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184],777⟩

private def s6Step170HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805],775⟩

private theorem s6Step170HeadBank_incomingDistinct : ([s6Step170HeadGRow,s6Step170HeadFRow,s6Step170HeadGvRow,s6Step170HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170HeadF_Incoming : rowsOwned s6Step170HeadFBefore [s6Step170HeadFRow,s6Step170HeadGvRow,s6Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170HeadGRow,s6Step170HeadFRow,s6Step170HeadGvRow,s6Step170HeadFvRow] 1 s6Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step170HeadBank_outgoingOwned : rowsOwned s6Step170HeadFvAfter [s6Step170HeadGOut,s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step170HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step170HeadF_Outgoing : rowsOwned s6Step170HeadFvAfter [s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut] :=
  hmrRows_owned_drop s6Step170HeadFvAfter [s6Step170HeadGOut,s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut] 1 s6Step170HeadBank_outgoingOwned

private theorem s6Step170HeadF_distinct : (s6Step170HeadFRow.sign::s6Step170HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170HeadF_owned : (s6Step170HeadFRow.sign::s6Step170HeadFRow.payload).toFinset⊆s6Step170HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170HeadF_reserved : s6Step170HeadFBefore.reserve s6Step170HeadFFresh.toFinset=some s6Step170HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170HeadFFresh,arenaWires]
  · norm_num [s6Step170HeadFBefore,s6Step170HeadGAfter,s6Step170HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step170HeadFAfter,s6Step170HeadFBefore,s6Step170HeadGAfter,s6Step170HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step170HeadF_checked : planRowResizeLog s6Step170HeadFBefore s6Step170HeadFRow 186 s6Step170HeadFFresh=
    some (s6Step170HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 857],795⟩,growRow 795 s6Step170HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step170HeadFBefore s6Step170HeadFAfter s6Step170HeadFRow 186 s6Step170HeadFFresh
    s6Step170HeadF_distinct s6Step170HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170HeadF_reserved
  have rowEq : WindowRow.mk (s6Step170HeadFRow.payload++s6Step170HeadFFresh) s6Step170HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step170HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step170HeadFvBefore : Arena := s6Step170HeadGvAfter

private theorem s6Step170HeadFv_Incoming : rowsOwned s6Step170HeadFvBefore [s6Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170HeadGRow,s6Step170HeadFRow,s6Step170HeadGvRow,s6Step170HeadFvRow] 3 s6Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step170HeadFv_Outgoing : rowsOwned s6Step170HeadFvAfter [s6Step170HeadFvOut] :=
  hmrRows_owned_drop s6Step170HeadFvAfter [s6Step170HeadGOut,s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut] 3 s6Step170HeadBank_outgoingOwned

private theorem s6Step170HeadFv_distinct : (s6Step170HeadFvRow.sign::s6Step170HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170HeadFv_owned : (s6Step170HeadFvRow.sign::s6Step170HeadFvRow.payload).toFinset⊆s6Step170HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170HeadFv_reserved : s6Step170HeadFvBefore.reserve s6Step170HeadFvFresh.toFinset=some s6Step170HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170HeadFvFresh,arenaWires]
  · norm_num [s6Step170HeadFvBefore,s6Step170HeadGvAfter,s6Step170HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step170HeadFvAfter,s6Step170HeadFvBefore,s6Step170HeadGvAfter,s6Step170HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step170HeadFv_checked : planRowResizeLog s6Step170HeadFvBefore s6Step170HeadFvRow 100 s6Step170HeadFvFresh=
    some (s6Step170HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩,growRow 776 s6Step170HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step170HeadFvBefore s6Step170HeadFvAfter s6Step170HeadFvRow 100 s6Step170HeadFvFresh
    s6Step170HeadFv_distinct s6Step170HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step170HeadFvRow.payload++s6Step170HeadFvFresh) s6Step170HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step170HeadG_Incoming : rowsOwned s6Step170HeadGBefore [s6Step170HeadGRow,s6Step170HeadFRow,s6Step170HeadGvRow,s6Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170HeadGRow,s6Step170HeadFRow,s6Step170HeadGvRow,s6Step170HeadFvRow] 0 s6Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step170HeadG_Outgoing : rowsOwned s6Step170HeadFvAfter [s6Step170HeadGOut,s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut] :=
  hmrRows_owned_drop s6Step170HeadFvAfter [s6Step170HeadGOut,s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut] 0 s6Step170HeadBank_outgoingOwned

private theorem s6Step170HeadG_distinct : (s6Step170HeadGRow.sign::s6Step170HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170HeadG_owned : (s6Step170HeadGRow.sign::s6Step170HeadGRow.payload).toFinset⊆s6Step170HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170HeadG_reserved : s6Step170HeadGBefore.reserve s6Step170HeadGFresh.toFinset=some s6Step170HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170HeadGFresh,arenaWires]
  · norm_num [s6Step170HeadGBefore,s6Step170HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step170HeadGAfter,s6Step170HeadGBefore,s6Step170HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step170HeadG_checked : planRowResizeLog s6Step170HeadGBefore s6Step170HeadGRow 186 s6Step170HeadGFresh=
    some (s6Step170HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 876],777⟩,growRow 777 s6Step170HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step170HeadGBefore s6Step170HeadGAfter s6Step170HeadGRow 186 s6Step170HeadGFresh
    s6Step170HeadG_distinct s6Step170HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170HeadG_reserved
  have rowEq : WindowRow.mk (s6Step170HeadGRow.payload++s6Step170HeadGFresh) s6Step170HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step170HeadGvBefore : Arena := s6Step170HeadFAfter

private theorem s6Step170HeadGv_Incoming : rowsOwned s6Step170HeadGvBefore [s6Step170HeadGvRow,s6Step170HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step170HeadGRow,s6Step170HeadFRow,s6Step170HeadGvRow,s6Step170HeadFvRow] 2 s6Step170HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step170HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step170HeadGv_Outgoing : rowsOwned s6Step170HeadFvAfter [s6Step170HeadGvOut,s6Step170HeadFvOut] :=
  hmrRows_owned_drop s6Step170HeadFvAfter [s6Step170HeadGOut,s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut] 2 s6Step170HeadBank_outgoingOwned

private theorem s6Step170HeadGv_distinct : (s6Step170HeadGvRow.sign::s6Step170HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step170HeadGv_owned : (s6Step170HeadGvRow.sign::s6Step170HeadGvRow.payload).toFinset⊆s6Step170HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step170HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step170HeadGv_reserved : s6Step170HeadGvBefore.reserve s6Step170HeadGvFresh.toFinset=some s6Step170HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step170HeadGvFresh,arenaWires]
  · norm_num [s6Step170HeadGvBefore,s6Step170HeadFAfter,s6Step170HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step170HeadGvAfter,s6Step170HeadGvBefore,s6Step170HeadFAfter,s6Step170HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step170HeadGv_checked : planRowResizeLog s6Step170HeadGvBefore s6Step170HeadGvRow 100 s6Step170HeadGvFresh=
    some (s6Step170HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 863],775⟩,growRow 775 s6Step170HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step170HeadGvBefore s6Step170HeadGvAfter s6Step170HeadGvRow 100 s6Step170HeadGvFresh
    s6Step170HeadGv_distinct s6Step170HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step170HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step170HeadGvRow.payload++s6Step170HeadGvFresh) s6Step170HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step170HeadBank_rows : planWindowRowsLog s6Step170HeadGBefore [(s6Step170HeadGRow,186),(s6Step170HeadFRow,186),(s6Step170HeadGvRow,100),(s6Step170HeadFvRow,100)] [s6Step170HeadGFresh,s6Step170HeadFFresh,s6Step170HeadGvFresh,s6Step170HeadFvFresh]=
    some (s6Step170HeadFvAfter,[s6Step170HeadGOut,s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut],(growRow 777 s6Step170HeadGFresh ++ (growRow 795 s6Step170HeadFFresh ++ (growRow 775 s6Step170HeadGvFresh ++ (growRow 776 s6Step170HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step170HeadFvAfter [] []=some (s6Step170HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step170HeadFvBefore s6Step170HeadFvAfter s6Step170HeadFvAfter
    s6Step170HeadFvRow s6Step170HeadFvOut 100 s6Step170HeadFvFresh [] [] []
    (growRow 776 s6Step170HeadFvFresh) ([]) s6Step170HeadFv_Incoming s6Step170HeadFv_checked h4 s6Step170HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step170HeadGvBefore s6Step170HeadGvAfter s6Step170HeadFvAfter
    s6Step170HeadGvRow s6Step170HeadGvOut 100 s6Step170HeadGvFresh [(s6Step170HeadFvRow,100)] [s6Step170HeadFvFresh] [s6Step170HeadFvOut]
    (growRow 775 s6Step170HeadGvFresh) ((growRow 776 s6Step170HeadFvFresh ++ [])) s6Step170HeadGv_Incoming s6Step170HeadGv_checked h3 s6Step170HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step170HeadFBefore s6Step170HeadFAfter s6Step170HeadFvAfter
    s6Step170HeadFRow s6Step170HeadFOut 186 s6Step170HeadFFresh [(s6Step170HeadGvRow,100),(s6Step170HeadFvRow,100)] [s6Step170HeadGvFresh,s6Step170HeadFvFresh] [s6Step170HeadGvOut,s6Step170HeadFvOut]
    (growRow 795 s6Step170HeadFFresh) ((growRow 775 s6Step170HeadGvFresh ++ (growRow 776 s6Step170HeadFvFresh ++ []))) s6Step170HeadF_Incoming s6Step170HeadF_checked h2 s6Step170HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step170HeadGBefore s6Step170HeadGAfter s6Step170HeadFvAfter
    s6Step170HeadGRow s6Step170HeadGOut 186 s6Step170HeadGFresh [(s6Step170HeadFRow,186),(s6Step170HeadGvRow,100),(s6Step170HeadFvRow,100)] [s6Step170HeadFFresh,s6Step170HeadGvFresh,s6Step170HeadFvFresh] [s6Step170HeadFOut,s6Step170HeadGvOut,s6Step170HeadFvOut]
    (growRow 777 s6Step170HeadGFresh) ((growRow 795 s6Step170HeadFFresh ++ (growRow 775 s6Step170HeadGvFresh ++ (growRow 776 s6Step170HeadFvFresh ++ [])))) s6Step170HeadG_Incoming s6Step170HeadG_checked h1 s6Step170HeadG_Outgoing
  exact h0

private theorem s6Step170HeadBank_checked : compileHmrBankResizeLog .headroom s6Step170HeadGBefore ⟨s6Step170HeadFRow,s6Step170HeadGRow,s6Step170HeadFvRow,s6Step170HeadGvRow⟩ ⟨186,186,100,100⟩ [s6Step170HeadGFresh,s6Step170HeadFFresh,s6Step170HeadGvFresh,s6Step170HeadFvFresh]=
    some (s6Step170HeadFvAfter,⟨s6Step170HeadFOut,s6Step170HeadGOut,s6Step170HeadFvOut,s6Step170HeadGvOut⟩,(growRow 777 s6Step170HeadGFresh ++ (growRow 795 s6Step170HeadFFresh ++ (growRow 775 s6Step170HeadGvFresh ++ (growRow 776 s6Step170HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step170HeadBank_rows]
  rfl

private theorem s6Step170Front_checked : compileHmrSourceFrontLog s6Step170EntryFBefore s6Step170FrontBank 185 99 ⟨185,184,100,99⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step170FrontLog=some s6Step170FrontPlan := by
  have pairEq : s6Step170FrontPair=⟨s6Step170HeadFRow,s6Step170HeadGRow,s6Step170HeadFvRow,s6Step170HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step170FrontHead=⟨s6Step170ExitFRow,s6Step170ExitGRow,s6Step170ExitFvRow,s6Step170ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step170Add0A=s6Step170FrontHead.f.wires := by decide +kernel
  have gEq : s6Step170Add0B=s6Step170FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step170Add1A=s6Step170FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step170Add1B=s6Step170FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step170EntryFBefore s6Step170FrontBank 185 99 ⟨185,184,100,99⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step170FrontLog s6Step170FrontPlan
  · exact s6Step170Front_entry
  · exact s6Step170EntryBank_checked
  · exact s6Step170Front_sigma
  · rfl
  · exact s6Step170Front_branch
  · rfl
  · simpa only [s6Step170FrontPlan,pairEq] using s6Step170HeadBank_checked
  · simpa only [s6Step170FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step170F4_checked
  · exact s6Step170Counter_checked
  · rfl
  · simpa only [s6Step170FrontPlan,headEq] using s6Step170ExitBank_checked

private theorem s6Step170Complete_explicit_checked : compileHmrEarlyStepLog s6Step170EntryFBefore s6Step170FrontBank 185 99 ⟨185,184,100,99⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step170CompleteLog=some s6Step170CompletePlan := by
  let Q := s6Step170EarlyControlPlan
  have hq := s6Step170EarlyControl_plan_checked
  have fv1 : s6Step170CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step170CompleteOut.fv.payload[2]?.getD s6Step170CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step170CompleteOut.fv.payload[3]?.getD s6Step170CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step170CompleteOut.fv.payload[4]?.getD s6Step170CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step170EntryFBefore s6Step170EarlyControlArena s6Step170FrontBank 185 99 ⟨185,184,100,99⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step170CompleteLog s6Step170FrontPlan Q
    s6Step170Front_checked s6Step170Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step170Complete_owned s6Step170Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step170EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 886 s6Step170CompleteOut.fv.second (s6Step170CompleteOut.fv.payload[2]?.getD s6Step170CompleteOut.fv.sign) (s6Step170CompleteOut.fv.payload[3]?.getD s6Step170CompleteOut.fv.sign) (s6Step170CompleteOut.fv.payload[4]?.getD s6Step170CompleteOut.fv.sign) 793 42 s6Step170EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep170Arena : Arena := s6Step170EntryFBefore
def s6PrivateStep170Bank : WindowBank := s6Step170FrontBank
def s6PrivateStep170Spec : HmrSourceWalkStepLog := ⟨185,99,⟨185,184,100,99⟩,42,.early s6Step170CompleteLog⟩
def s6PrivateStep170Plan : HmrSourceStepPlan := .early s6Step170CompletePlan
theorem s6PrivateStep170_source : s6PrivateStep170Spec=s6ObservedLogs160[10] := rfl
theorem s6PrivateStep170_checked : compileHmrSourceStepLog s6PrivateStep170Arena s6PrivateStep170Bank
    s6PrivateStep170Spec.fgWidth s6PrivateStep170Spec.vWidth s6PrivateStep170Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 170 s6PrivateStep170Spec.need none s6PrivateStep170Spec.log=some s6PrivateStep170Plan := by
  change compileHmrSourceStepLog s6Step170EntryFBefore s6Step170FrontBank 185 99 ⟨185,184,100,99⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 170 42 none (.early s6Step170CompleteLog)=some (.early s6Step170CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 170<498)]
  rw [s6Step170Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
