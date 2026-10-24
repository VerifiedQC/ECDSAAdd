import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep171
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

private def s6Step173CompleteMoves : List (Wire × Wire) := [(778,182)]

private def s6Step173EarlyControlLog : HmrEarlyControlLog := ⟨[778, 857, 876, 922, 793],[863],[890],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step173FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [886], []],[[793], [922], [857], [876]],[[], [], [], []]⟩,[803],[907],[863],[890],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903]⟩

private def s6Step173CompleteLog : HmrEarlyStepLog := ⟨s6Step173FrontLog,s6Step173CompleteMoves,s6Step173EarlyControlLog⟩

private def s6Step173ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step173ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩

private def s6Step173ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩

private def s6Step173ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step173FrontOut : WindowBank := ⟨s6Step173ExitFOut,s6Step173ExitGOut,s6Step173ExitFvOut,s6Step173ExitGvOut⟩

private def s6Step173CompleteOut : WindowBank := s6Step173FrontOut.repacked s6Step173CompleteMoves

private def s6Step173EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step173EarlyControlPositiveArena,[863],s6Step173EarlyControlEqualityArena,[890],⟨⟨803,false⟩,[⟨⟨863,false⟩,890⟩]⟩⟩

private def s6Step173EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨772,false⟩,857⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,922⟩,⟨⟨769,false⟩,793⟩]⟩

private def s6Step173EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step173EarlyControlZeroArena,s6Step173EarlyControlZeroPlan,s6Step173EarlyControlClassPlan,s6Step173EarlyControlFlagArena,s6Step173EarlyControlFittedArena,s6Step173EarlyControlHistoryArena,s6Step173EarlyControlSigmaArena,s6Step173EarlyControlOutputArena,s6Step173EarlyControlLog⟩

private def s6Step173CounterWork : List Wire := [863, 890, 891, 903]

private theorem s6Step173Counter_bounded : s6Step173CounterWork.toFinset⊆arenaWires := by norm_num [s6Step173CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step173HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173CounterDuring : Arena := ⟨s6Step173HeadFvAfter.live∪s6Step173CounterWork.toFinset,Finset.union_subset s6Step173HeadFvAfter.bounded s6Step173Counter_bounded⟩

private def s6Step173EntryFFresh : List Wire := []

private def s6Step173EntryFvFresh : List Wire := [886]

private def s6Step173EntryGFresh : List Wire := []

private def s6Step173EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173EntryGvAfter : Arena := s6Step173EntryFvAfter

private def s6Step173EntryGvFresh : List Wire := []

private def s6Step173ExitFExtra : List Wire := [922]

private def s6Step173ExitFvExtra : List Wire := [876]

private def s6Step173ExitGExtra : List Wire := [182, 793]

private def s6Step173ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173ExitGvExtra : List Wire := [857]

private def s6Step173Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step173Add0_bounded : s6Step173Add0Work.toFinset⊆arenaWires := by
  have h : s6Step173Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step173Add0During : Arena := ⟨s6Step173Add0Arena.live∪s6Step173Add0Work.toFinset,Finset.union_subset s6Step173Add0Arena.bounded s6Step173Add0_bounded⟩

private def s6Step173Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step173Add1_bounded : s6Step173Add1Work.toFinset⊆arenaWires := by
  have h : s6Step173Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step173Add1During : Arena := ⟨s6Step173Add1Arena.live∪s6Step173Add1Work.toFinset,Finset.union_subset s6Step173Add1Arena.bounded s6Step173Add1_bounded⟩

private def s6Step173F4FlagArena : Arena := ⟨s6Step173HeadFvAfter.live∪{863},Finset.union_subset s6Step173HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step173F4Plan : HmrHybridF4Plan := ⟨s6Step173F4FlagArena,[863],s6Step173Add0Arena,[890],s6Step173Add0During,s6Step173Add0Work,s6Step173Add1During,s6Step173Add1Work⟩

private def s6Step173HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 922],795⟩

private def s6Step173HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 876],776⟩

private def s6Step173HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 793],777⟩

private def s6Step173HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 857],775⟩

private def s6Step173FrontHead : WindowBank := ⟨s6Step173HeadFOut,s6Step173HeadGOut,s6Step173HeadFvOut,s6Step173HeadGvOut⟩

private def s6Step173EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step173EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩

private def s6Step173EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩

private def s6Step173EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step173FrontPair : WindowBank := ⟨s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut⟩

private def s6Step173FrontSigmaArena : Arena := ⟨s6Step173EntryGvAfter.live∪{803},Finset.union_subset s6Step173EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step173HeadFFresh : List Wire := [922]

private def s6Step173HeadFvFresh : List Wire := [876]

private def s6Step173HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173HeadGFresh : List Wire := [793]

private def s6Step173HeadGvFresh : List Wire := [857]

private def s6Step173FrontPlan : HmrSourceFront := ⟨s6Step173EntryGvAfter,s6Step173FrontPair,(growRow 795 s6Step173EntryFFresh ++ (growRow 777 s6Step173EntryGFresh ++ (growRow 776 s6Step173EntryFvFresh ++ (growRow 775 s6Step173EntryGvFresh ++ [])))),s6Step173FrontSigmaArena,[803],s6Step173HeadGBefore,[907],
  s6Step173HeadFvAfter,s6Step173FrontHead,(growRow 777 s6Step173HeadGFresh ++ (growRow 795 s6Step173HeadFFresh ++ (growRow 775 s6Step173HeadGvFresh ++ (growRow 776 s6Step173HeadFvFresh ++ [])))),s6Step173F4Plan,s6Step173CounterDuring,s6Step173CounterWork,s6Step173ExitGvAfter,s6Step173FrontOut,(shrinkRow 777 s6Step173ExitGExtra ++ (shrinkRow 795 s6Step173ExitFExtra ++ (shrinkRow 776 s6Step173ExitFvExtra ++ (shrinkRow 775 s6Step173ExitGvExtra ++ []))))⟩

private def s6Step173CompletePlan : HmrEarlyStepPlan := ⟨s6Step173FrontPlan,s6Step173EarlyControlArena,s6Step173EarlyControlPlan,s6Step173CompleteMoves⟩

private theorem s6Step173Complete_apart : List.Disjoint (s6Step173CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step173CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step173Complete_owned : (s6Step173CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step173CompleteRelocationMove0Borrowed : Arena := ⟨s6Step173ExitGvAfter.live∪{182},Finset.union_subset s6Step173ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step173CompleteRelocation_move0_owned : 778∈s6Step173ExitGvAfter.live := by norm_num [s6Step173ExitGvAfter,arenaWires]

private theorem s6Step173CompleteRelocation_move0_reserve : s6Step173ExitGvAfter.reserve {182}=some s6Step173CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step173ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step173CompleteRelocation_move0_retire : s6Step173CompleteRelocationMove0Borrowed.retireSet {778}=s6Step173EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step173CompleteRelocationMove0Borrowed s6Step173EarlyControlArena {778}
  change s6Step173EarlyControlArena.live=(s6Step173ExitGvAfter.live∪{182})\{778}
  apply hmrArena_update_of_filter_check s6Step173ExitGvAfter s6Step173EarlyControlArena (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [182] [778] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step173CompleteRelocation_checked : s6Step173ExitGvAfter.checkRepack [(778,182)]=some s6Step173EarlyControlArena := by
  have tail1 : s6Step173EarlyControlArena.checkRepack []=some s6Step173EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step173ExitGvAfter s6Step173CompleteRelocationMove0Borrowed s6Step173EarlyControlArena s6Step173EarlyControlArena 778 182 []
    s6Step173CompleteRelocation_move0_owned s6Step173CompleteRelocation_move0_reserve s6Step173CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step173Complete_repack : s6Step173ExitGvAfter.checkRepack s6Step173CompleteMoves=some s6Step173EarlyControlArena := by
  simpa only [s6Step173CompleteMoves] using s6Step173CompleteRelocation_checked

private theorem s6Step173EarlyControl_branchOwned : ([907] : List Wire).toFinset⊆s6Step173EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlSigmaArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EarlyControl_branch : compileHmrBranchRetirement s6Step173EarlyControlSigmaArena 907=some s6Step173EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step173EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step173EarlyControlSigmaArena s6Step173EarlyControlOutputArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [907] rfl rfl
    decide +kernel

private theorem s6Step173EarlyControl_classEqualityBorrow : s6Step173EarlyControlPositiveArena.checkBorrow (([803, 863] : List Wire).length-1) s6Step173EarlyControlLog.classWork=some s6Step173EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step173EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step173EarlyControlEqualityArena,s6Step173EarlyControlPositiveArena,s6Step173EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step173EarlyControl_classEqualityOwned : ([803, 863] : List Wire).toFinset⊆s6Step173EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173EarlyControl_classEquality : compileHmrEqualityLog s6Step173EarlyControlPositiveArena [803, 863] 0 s6Step173EarlyControlLog.classWork=some (s6Step173EarlyControlEqualityArena,s6Step173EarlyControlLog.classWork,s6Step173EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step173EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step173EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step173EarlyControl_classOwned : ([769, 793, 803] : List Wire).toFinset⊆s6Step173EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173EarlyControl_positiveBorrow : s6Step173EarlyControlZeroArena.checkBorrow (1) s6Step173EarlyControlLog.positiveWork=some s6Step173EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step173EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step173EarlyControlPositiveArena,s6Step173EarlyControlZeroArena,s6Step173EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step173EarlyControl_class : compileHmrSourceClassLog s6Step173EarlyControlZeroArena false 769 s6Step173EarlyControlZeroPlan.top 0 803 s6Step173EarlyControlLog.positiveWork s6Step173EarlyControlLog.classWork=some s6Step173EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step173EarlyControlClassPlan s6Step173EarlyControlZeroArena false 769 s6Step173EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step173EarlyControl_classOwned
  · exact s6Step173EarlyControl_positiveBorrow
  · exact s6Step173EarlyControl_classEquality

private theorem s6Step173EarlyControl_entryRecordOwned : ([907, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EarlyControl_fitBorrow : s6Step173EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step173EarlyControlLog.recordFresh=some s6Step173EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step173EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step173EarlyControlFittedArena,s6Step173EarlyControlFlagArena,s6Step173EarlyControlLog,arenaWires]

private theorem s6Step173EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step173EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173EarlyControl_fit : compileHmrRecordGrowLog s6Step173EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step173EarlyControlLog.recordFresh=some s6Step173EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step173EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step173EarlyControl_fitBorrow

private theorem s6Step173EarlyControl_flagsBorrow : s6Step173EarlyControlEqualityArena.checkBorrow (6) s6Step173EarlyControlLog.flagWork=some s6Step173EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step173EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step173EarlyControlFlagArena,s6Step173EarlyControlEqualityArena,s6Step173EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step173EarlyControl_flagsOwned : ([890, 253, 252, 251] : List Wire).toFinset⊆s6Step173EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173EarlyControl_flags : compileHmrFlagsLog s6Step173EarlyControlClassPlan.equalityArena s6Step173EarlyControlClassPlan.equality.top 253 252 251 s6Step173EarlyControlLog.flagWork=some s6Step173EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step173EarlyControl_flagsOwned⟩
  · exact s6Step173EarlyControl_flagsBorrow

private theorem s6Step173EarlyControl_historyBorrow : s6Step173EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step173EarlyControlLog.recordFresh=some s6Step173EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step173EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step173EarlyControlArena s6Step173EarlyControlHistoryArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step173EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step173EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EarlyControl_history : compileHmrRecordGrowLog s6Step173EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step173EarlyControlLog.recordFresh=some s6Step173EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step173EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step173EarlyControl_historyBorrow

private theorem s6Step173EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step173EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlHistoryArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step173EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlHistoryArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EarlyControl_sigmaRelease : s6Step173EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step173EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step173EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step173EarlyControlHistoryArena s6Step173EarlyControlSigmaArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step173EarlyControl_sigma : compileHmrSigmaDropLog s6Step173EarlyControlHistoryArena false 0 0 254 803 []=some s6Step173EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step173EarlyControl_sigmaOwned⟩
  · exact s6Step173EarlyControl_sigmaRelease

private theorem s6Step173EarlyControl_zeroBorrow : s6Step173EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step173EarlyControlLog.zeroWork=some s6Step173EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step173EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step173EarlyControlArena s6Step173EarlyControlZeroArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step173EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step173EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step173EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step173EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step173EarlyControlArena (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EarlyControl_zero : compileHmrEqualityLog s6Step173EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step173EarlyControlLog.zeroWork=some (s6Step173EarlyControlZeroArena,s6Step173EarlyControlLog.zeroWork,s6Step173EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step173EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step173EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step173EarlyControl_logged : s6Step173EarlyControlPlan.Logged s6Step173EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 907 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step173EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step173EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step173EarlyControl_zero
  · exact s6Step173EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step173EarlyControl_flags
  · exact s6Step173EarlyControl_fit
  · exact s6Step173EarlyControl_history
  · exact s6Step173EarlyControl_sigma
  · exact s6Step173EarlyControl_branch

private theorem s6Step173EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step173EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 907 42 s6Step173EarlyControlLog=some s6Step173EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step173EarlyControlPlan s6Step173EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 907 42 s6Step173EarlyControl_logged

private def s6Step173EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step173EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818],776⟩

private def s6Step173EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩

private def s6Step173EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step173FrontBank : WindowBank := ⟨s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow⟩

private def s6Step173Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 922, 795]

private def s6Step173Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 793, 777]

private def s6Step173Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 876, 776]

private def s6Step173Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 857, 775]

private theorem s6Step173Counter_apart : Disjoint s6Step173HeadFvAfter.live s6Step173CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step173HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173Counter_borrowed : s6Step173HeadFvAfter.checkBorrow 4 s6Step173CounterWork=some s6Step173CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step173HeadFvAfter s6Step173CounterDuring s6Step173CounterWork.toFinset s6Step173Counter_bounded s6Step173Counter_apart rfl

private theorem s6Step173Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step173HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step173HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173Counter_checked : compileHmrCounterStepLog s6Step173HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step173CounterWork=some s6Step173CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step173HeadFvAfter.live := fun q hq => s6Step173Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step173Counter_borrowed

private def s6Step173EntryFAfter : Arena := s6Step173EntryFBefore

private theorem s6Step173EntryBank_incomingDistinct : ([s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173EntryF_Incoming : rowsOwned s6Step173EntryFBefore [s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow] 0 s6Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173EntryBank_outgoingOwned : rowsOwned s6Step173EntryGvAfter [s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step173EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173EntryF_Outgoing : rowsOwned s6Step173EntryGvAfter [s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut] :=
  hmrRows_owned_drop s6Step173EntryGvAfter [s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut] 0 s6Step173EntryBank_outgoingOwned

private theorem s6Step173EntryF_distinct : (s6Step173EntryFRow.sign::s6Step173EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173EntryF_owned : (s6Step173EntryFRow.sign::s6Step173EntryFRow.payload).toFinset⊆s6Step173EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EntryF_reserved : s6Step173EntryFBefore.reserve s6Step173EntryFFresh.toFinset=some s6Step173EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173EntryFFresh,arenaWires]
  · norm_num [s6Step173EntryFBefore,s6Step173EntryFFresh,arenaWires]
  · simp only [s6Step173EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step173EntryF_checked : planRowResizeLog s6Step173EntryFBefore s6Step173EntryFRow 183 s6Step173EntryFFresh=
    some (s6Step173EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩,growRow 795 s6Step173EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step173EntryFBefore s6Step173EntryFAfter s6Step173EntryFRow 183 s6Step173EntryFFresh
    s6Step173EntryF_distinct s6Step173EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173EntryF_reserved
  have rowEq : WindowRow.mk (s6Step173EntryFRow.payload++s6Step173EntryFFresh) s6Step173EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step173EntryFvBefore : Arena := s6Step173EntryFBefore

private theorem s6Step173EntryFv_Incoming : rowsOwned s6Step173EntryFvBefore [s6Step173EntryFvRow,s6Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow] 2 s6Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173EntryFv_Outgoing : rowsOwned s6Step173EntryGvAfter [s6Step173EntryFvOut,s6Step173EntryGvOut] :=
  hmrRows_owned_drop s6Step173EntryGvAfter [s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut] 2 s6Step173EntryBank_outgoingOwned

private theorem s6Step173EntryFv_distinct : (s6Step173EntryFvRow.sign::s6Step173EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173EntryFv_owned : (s6Step173EntryFvRow.sign::s6Step173EntryFvRow.payload).toFinset⊆s6Step173EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EntryFv_reserved : s6Step173EntryFvBefore.reserve s6Step173EntryFvFresh.toFinset=some s6Step173EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173EntryFvFresh,arenaWires]
  · norm_num [s6Step173EntryFvBefore,s6Step173EntryFBefore,s6Step173EntryFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step173EntryFvBefore s6Step173EntryFvAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step173EntryFvFresh rfl rfl
    · norm_num [s6Step173EntryFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step173EntryFv_checked : planRowResizeLog s6Step173EntryFvBefore s6Step173EntryFvRow 101 s6Step173EntryFvFresh=
    some (s6Step173EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩,growRow 776 s6Step173EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step173EntryFvBefore s6Step173EntryFvAfter s6Step173EntryFvRow 101 s6Step173EntryFvFresh
    s6Step173EntryFv_distinct s6Step173EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step173EntryFvRow.payload++s6Step173EntryFvFresh) s6Step173EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step173EntryGAfter : Arena := s6Step173EntryFBefore

private def s6Step173EntryGBefore : Arena := s6Step173EntryFBefore

private theorem s6Step173EntryG_Incoming : rowsOwned s6Step173EntryGBefore [s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow] 1 s6Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173EntryG_Outgoing : rowsOwned s6Step173EntryGvAfter [s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut] :=
  hmrRows_owned_drop s6Step173EntryGvAfter [s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut] 1 s6Step173EntryBank_outgoingOwned

private theorem s6Step173EntryG_distinct : (s6Step173EntryGRow.sign::s6Step173EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173EntryG_owned : (s6Step173EntryGRow.sign::s6Step173EntryGRow.payload).toFinset⊆s6Step173EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EntryG_reserved : s6Step173EntryGBefore.reserve s6Step173EntryGFresh.toFinset=some s6Step173EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173EntryGFresh,arenaWires]
  · norm_num [s6Step173EntryGBefore,s6Step173EntryFBefore,s6Step173EntryGFresh,arenaWires]
  · simp only [s6Step173EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step173EntryG_checked : planRowResizeLog s6Step173EntryGBefore s6Step173EntryGRow 183 s6Step173EntryGFresh=
    some (s6Step173EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩,growRow 777 s6Step173EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step173EntryGBefore s6Step173EntryGAfter s6Step173EntryGRow 183 s6Step173EntryGFresh
    s6Step173EntryG_distinct s6Step173EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173EntryG_reserved
  have rowEq : WindowRow.mk (s6Step173EntryGRow.payload++s6Step173EntryGFresh) s6Step173EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step173EntryGvBefore : Arena := s6Step173EntryFvAfter

private theorem s6Step173EntryGv_Incoming : rowsOwned s6Step173EntryGvBefore [s6Step173EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow] 3 s6Step173EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173EntryGv_Outgoing : rowsOwned s6Step173EntryGvAfter [s6Step173EntryGvOut] :=
  hmrRows_owned_drop s6Step173EntryGvAfter [s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut] 3 s6Step173EntryBank_outgoingOwned

private theorem s6Step173EntryGv_distinct : (s6Step173EntryGvRow.sign::s6Step173EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173EntryGv_owned : (s6Step173EntryGvRow.sign::s6Step173EntryGvRow.payload).toFinset⊆s6Step173EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173EntryGv_reserved : s6Step173EntryGvBefore.reserve s6Step173EntryGvFresh.toFinset=some s6Step173EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173EntryGvFresh,arenaWires]
  · norm_num [s6Step173EntryGvBefore,s6Step173EntryFvAfter,s6Step173EntryGvFresh,arenaWires]
  · simp only [s6Step173EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step173EntryGv_checked : planRowResizeLog s6Step173EntryGvBefore s6Step173EntryGvRow 101 s6Step173EntryGvFresh=
    some (s6Step173EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩,growRow 775 s6Step173EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step173EntryGvBefore s6Step173EntryGvAfter s6Step173EntryGvRow 101 s6Step173EntryGvFresh
    s6Step173EntryGv_distinct s6Step173EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step173EntryGvRow.payload++s6Step173EntryGvFresh) s6Step173EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step173EntryBank_rows : planWindowRowsLog s6Step173EntryFBefore [(s6Step173EntryFRow,183),(s6Step173EntryGRow,183),(s6Step173EntryFvRow,101),(s6Step173EntryGvRow,101)] [s6Step173EntryFFresh,s6Step173EntryGFresh,s6Step173EntryFvFresh,s6Step173EntryGvFresh]=
    some (s6Step173EntryGvAfter,[s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut],(growRow 795 s6Step173EntryFFresh ++ (growRow 777 s6Step173EntryGFresh ++ (growRow 776 s6Step173EntryFvFresh ++ (growRow 775 s6Step173EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step173EntryGvAfter [] []=some (s6Step173EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step173EntryGvBefore s6Step173EntryGvAfter s6Step173EntryGvAfter
    s6Step173EntryGvRow s6Step173EntryGvOut 101 s6Step173EntryGvFresh [] [] []
    (growRow 775 s6Step173EntryGvFresh) ([]) s6Step173EntryGv_Incoming s6Step173EntryGv_checked h4 s6Step173EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step173EntryFvBefore s6Step173EntryFvAfter s6Step173EntryGvAfter
    s6Step173EntryFvRow s6Step173EntryFvOut 101 s6Step173EntryFvFresh [(s6Step173EntryGvRow,101)] [s6Step173EntryGvFresh] [s6Step173EntryGvOut]
    (growRow 776 s6Step173EntryFvFresh) ((growRow 775 s6Step173EntryGvFresh ++ [])) s6Step173EntryFv_Incoming s6Step173EntryFv_checked h3 s6Step173EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step173EntryGBefore s6Step173EntryGAfter s6Step173EntryGvAfter
    s6Step173EntryGRow s6Step173EntryGOut 183 s6Step173EntryGFresh [(s6Step173EntryFvRow,101),(s6Step173EntryGvRow,101)] [s6Step173EntryFvFresh,s6Step173EntryGvFresh] [s6Step173EntryFvOut,s6Step173EntryGvOut]
    (growRow 777 s6Step173EntryGFresh) ((growRow 776 s6Step173EntryFvFresh ++ (growRow 775 s6Step173EntryGvFresh ++ []))) s6Step173EntryG_Incoming s6Step173EntryG_checked h2 s6Step173EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step173EntryFBefore s6Step173EntryFAfter s6Step173EntryGvAfter
    s6Step173EntryFRow s6Step173EntryFOut 183 s6Step173EntryFFresh [(s6Step173EntryGRow,183),(s6Step173EntryFvRow,101),(s6Step173EntryGvRow,101)] [s6Step173EntryGFresh,s6Step173EntryFvFresh,s6Step173EntryGvFresh] [s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut]
    (growRow 795 s6Step173EntryFFresh) ((growRow 777 s6Step173EntryGFresh ++ (growRow 776 s6Step173EntryFvFresh ++ (growRow 775 s6Step173EntryGvFresh ++ [])))) s6Step173EntryF_Incoming s6Step173EntryF_checked h1 s6Step173EntryF_Outgoing
  exact h0

private theorem s6Step173EntryBank_checked : compileHmrBankResizeLog .entry s6Step173EntryFBefore ⟨s6Step173EntryFRow,s6Step173EntryGRow,s6Step173EntryFvRow,s6Step173EntryGvRow⟩ ⟨183,183,101,101⟩ [s6Step173EntryFFresh,s6Step173EntryGFresh,s6Step173EntryFvFresh,s6Step173EntryGvFresh]=
    some (s6Step173EntryGvAfter,⟨s6Step173EntryFOut,s6Step173EntryGOut,s6Step173EntryFvOut,s6Step173EntryGvOut⟩,(growRow 795 s6Step173EntryFFresh ++ (growRow 777 s6Step173EntryGFresh ++ (growRow 776 s6Step173EntryFvFresh ++ (growRow 775 s6Step173EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step173EntryBank_rows]
  rfl

private def s6Step173ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173ExitFBefore : Arena := s6Step173ExitGAfter

private def s6Step173ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 922],795⟩

private def s6Step173ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 876],776⟩

private def s6Step173ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 793],777⟩

private def s6Step173ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 857],775⟩

private theorem s6Step173ExitBank_incomingDistinct : ([s6Step173ExitGRow,s6Step173ExitFRow,s6Step173ExitFvRow,s6Step173ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173ExitF_Incoming : rowsOwned s6Step173ExitFBefore [s6Step173ExitFRow,s6Step173ExitFvRow,s6Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173ExitGRow,s6Step173ExitFRow,s6Step173ExitFvRow,s6Step173ExitGvRow] 1 s6Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173ExitFBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step173ExitBank_outgoingOwned : rowsOwned s6Step173ExitGvAfter [s6Step173ExitGOut,s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step173ExitGvAfter (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173ExitF_Outgoing : rowsOwned s6Step173ExitGvAfter [s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut] :=
  hmrRows_owned_drop s6Step173ExitGvAfter [s6Step173ExitGOut,s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut] 1 s6Step173ExitBank_outgoingOwned

private theorem s6Step173ExitF_distinct : (s6Step173ExitFRow.sign::s6Step173ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173ExitF_owned : (s6Step173ExitFRow.sign::s6Step173ExitFRow.payload).toFinset⊆s6Step173ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173ExitFBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173ExitF_retired : s6Step173ExitFBefore.retireSet s6Step173ExitFExtra.toFinset=s6Step173ExitFAfter := by
  unfold Arena.retireSet s6Step173ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step173ExitFBefore,s6Step173ExitGAfter,s6Step173ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step173ExitF_checked : planRowResizeLog s6Step173ExitFBefore s6Step173ExitFRow 183 []=
    some (s6Step173ExitFAfter,s6Step173ExitFOut,shrinkRow 795 s6Step173ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step173ExitFBefore s6Step173ExitFRow 183 s6Step173ExitF_distinct s6Step173ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step173ExitFRow.payload.take 183) s6Step173ExitFRow.sign=s6Step173ExitFOut := by decide +kernel
  have hi : s6Step173ExitFRow.payload.drop 183=s6Step173ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step173ExitF_retired] at result
  exact result

private def s6Step173ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173ExitFvBefore : Arena := s6Step173ExitFAfter

private theorem s6Step173ExitFv_Incoming : rowsOwned s6Step173ExitFvBefore [s6Step173ExitFvRow,s6Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173ExitGRow,s6Step173ExitFRow,s6Step173ExitFvRow,s6Step173ExitGvRow] 2 s6Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173ExitFvBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step173ExitFv_Outgoing : rowsOwned s6Step173ExitGvAfter [s6Step173ExitFvOut,s6Step173ExitGvOut] :=
  hmrRows_owned_drop s6Step173ExitGvAfter [s6Step173ExitGOut,s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut] 2 s6Step173ExitBank_outgoingOwned

private theorem s6Step173ExitFv_distinct : (s6Step173ExitFvRow.sign::s6Step173ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173ExitFv_owned : (s6Step173ExitFvRow.sign::s6Step173ExitFvRow.payload).toFinset⊆s6Step173ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173ExitFvBefore (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173ExitFv_retired : s6Step173ExitFvBefore.retireSet s6Step173ExitFvExtra.toFinset=s6Step173ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step173ExitFvBefore s6Step173ExitFvAfter s6Step173ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step173ExitFvBefore s6Step173ExitFvAfter (fun q => (0≤q ∧ q<182) ∨ (183≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step173ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step173ExitFv_checked : planRowResizeLog s6Step173ExitFvBefore s6Step173ExitFvRow 101 []=
    some (s6Step173ExitFvAfter,s6Step173ExitFvOut,shrinkRow 776 s6Step173ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step173ExitFvBefore s6Step173ExitFvRow 101 s6Step173ExitFv_distinct s6Step173ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step173ExitFvRow.payload.take 101) s6Step173ExitFvRow.sign=s6Step173ExitFvOut := by decide +kernel
  have hi : s6Step173ExitFvRow.payload.drop 101=s6Step173ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step173ExitFv_retired] at result
  exact result

private def s6Step173ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step173ExitG_Incoming : rowsOwned s6Step173ExitGBefore [s6Step173ExitGRow,s6Step173ExitFRow,s6Step173ExitFvRow,s6Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173ExitGRow,s6Step173ExitFRow,s6Step173ExitFvRow,s6Step173ExitGvRow] 0 s6Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step173ExitG_Outgoing : rowsOwned s6Step173ExitGvAfter [s6Step173ExitGOut,s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut] :=
  hmrRows_owned_drop s6Step173ExitGvAfter [s6Step173ExitGOut,s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut] 0 s6Step173ExitBank_outgoingOwned

private theorem s6Step173ExitG_distinct : (s6Step173ExitGRow.sign::s6Step173ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173ExitG_owned : (s6Step173ExitGRow.sign::s6Step173ExitGRow.payload).toFinset⊆s6Step173ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173ExitG_retired : s6Step173ExitGBefore.retireSet s6Step173ExitGExtra.toFinset=s6Step173ExitGAfter := by
  unfold Arena.retireSet s6Step173ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step173ExitGBefore,s6Step173ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step173ExitG_checked : planRowResizeLog s6Step173ExitGBefore s6Step173ExitGRow 182 []=
    some (s6Step173ExitGAfter,s6Step173ExitGOut,shrinkRow 777 s6Step173ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step173ExitGBefore s6Step173ExitGRow 182 s6Step173ExitG_distinct s6Step173ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step173ExitGRow.payload.take 182) s6Step173ExitGRow.sign=s6Step173ExitGOut := by decide +kernel
  have hi : s6Step173ExitGRow.payload.drop 182=s6Step173ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step173ExitG_retired] at result
  exact result

private def s6Step173ExitGvBefore : Arena := s6Step173ExitFvAfter

private theorem s6Step173ExitGv_Incoming : rowsOwned s6Step173ExitGvBefore [s6Step173ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173ExitGRow,s6Step173ExitFRow,s6Step173ExitFvRow,s6Step173ExitGvRow] 3 s6Step173ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173ExitGvBefore (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173ExitGv_Outgoing : rowsOwned s6Step173ExitGvAfter [s6Step173ExitGvOut] :=
  hmrRows_owned_drop s6Step173ExitGvAfter [s6Step173ExitGOut,s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut] 3 s6Step173ExitBank_outgoingOwned

private theorem s6Step173ExitGv_distinct : (s6Step173ExitGvRow.sign::s6Step173ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173ExitGv_owned : (s6Step173ExitGvRow.sign::s6Step173ExitGvRow.payload).toFinset⊆s6Step173ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173ExitGvBefore (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173ExitGv_retired : s6Step173ExitGvBefore.retireSet s6Step173ExitGvExtra.toFinset=s6Step173ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step173ExitGvBefore s6Step173ExitGvAfter s6Step173ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step173ExitGvBefore s6Step173ExitGvAfter (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,182),(183,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step173ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step173ExitGv_checked : planRowResizeLog s6Step173ExitGvBefore s6Step173ExitGvRow 101 []=
    some (s6Step173ExitGvAfter,s6Step173ExitGvOut,shrinkRow 775 s6Step173ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step173ExitGvBefore s6Step173ExitGvRow 101 s6Step173ExitGv_distinct s6Step173ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step173ExitGvRow.payload.take 101) s6Step173ExitGvRow.sign=s6Step173ExitGvOut := by decide +kernel
  have hi : s6Step173ExitGvRow.payload.drop 101=s6Step173ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step173ExitGv_retired] at result
  exact result

private theorem s6Step173ExitBank_rows : planWindowRowsLog s6Step173ExitGBefore [(s6Step173ExitGRow,182),(s6Step173ExitFRow,183),(s6Step173ExitFvRow,101),(s6Step173ExitGvRow,101)] [[],[],[],[]]=
    some (s6Step173ExitGvAfter,[s6Step173ExitGOut,s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut],(shrinkRow 777 s6Step173ExitGExtra ++ (shrinkRow 795 s6Step173ExitFExtra ++ (shrinkRow 776 s6Step173ExitFvExtra ++ (shrinkRow 775 s6Step173ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step173ExitGvAfter [] []=some (s6Step173ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step173ExitGvBefore s6Step173ExitGvAfter s6Step173ExitGvAfter
    s6Step173ExitGvRow s6Step173ExitGvOut 101 [] [] [] []
    (shrinkRow 775 s6Step173ExitGvExtra) ([]) s6Step173ExitGv_Incoming s6Step173ExitGv_checked h4 s6Step173ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step173ExitFvBefore s6Step173ExitFvAfter s6Step173ExitGvAfter
    s6Step173ExitFvRow s6Step173ExitFvOut 101 [] [(s6Step173ExitGvRow,101)] [[]] [s6Step173ExitGvOut]
    (shrinkRow 776 s6Step173ExitFvExtra) ((shrinkRow 775 s6Step173ExitGvExtra ++ [])) s6Step173ExitFv_Incoming s6Step173ExitFv_checked h3 s6Step173ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step173ExitFBefore s6Step173ExitFAfter s6Step173ExitGvAfter
    s6Step173ExitFRow s6Step173ExitFOut 183 [] [(s6Step173ExitFvRow,101),(s6Step173ExitGvRow,101)] [[],[]] [s6Step173ExitFvOut,s6Step173ExitGvOut]
    (shrinkRow 795 s6Step173ExitFExtra) ((shrinkRow 776 s6Step173ExitFvExtra ++ (shrinkRow 775 s6Step173ExitGvExtra ++ []))) s6Step173ExitF_Incoming s6Step173ExitF_checked h2 s6Step173ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step173ExitGBefore s6Step173ExitGAfter s6Step173ExitGvAfter
    s6Step173ExitGRow s6Step173ExitGOut 182 [] [(s6Step173ExitFRow,183),(s6Step173ExitFvRow,101),(s6Step173ExitGvRow,101)] [[],[],[]] [s6Step173ExitFOut,s6Step173ExitFvOut,s6Step173ExitGvOut]
    (shrinkRow 777 s6Step173ExitGExtra) ((shrinkRow 795 s6Step173ExitFExtra ++ (shrinkRow 776 s6Step173ExitFvExtra ++ (shrinkRow 775 s6Step173ExitGvExtra ++ [])))) s6Step173ExitG_Incoming s6Step173ExitG_checked h1 s6Step173ExitG_Outgoing
  exact h0

private theorem s6Step173ExitBank_checked : compileHmrBankResizeLog .exit s6Step173ExitGBefore ⟨s6Step173ExitFRow,s6Step173ExitGRow,s6Step173ExitFvRow,s6Step173ExitGvRow⟩ ⟨183,182,101,101⟩ [[],[],[],[]]=
    some (s6Step173ExitGvAfter,⟨s6Step173ExitFOut,s6Step173ExitGOut,s6Step173ExitFvOut,s6Step173ExitGvOut⟩,(shrinkRow 777 s6Step173ExitGExtra ++ (shrinkRow 795 s6Step173ExitFExtra ++ (shrinkRow 776 s6Step173ExitFvExtra ++ (shrinkRow 775 s6Step173ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step173ExitBank_rows]
  rfl

private theorem s6Step173Add0_apart : Disjoint s6Step173Add0Arena.live s6Step173Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step173Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173Add0_card : s6Step173Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step173Add0_borrowed : s6Step173Add0Arena.checkBorrow (hmrHybridCount s6Step173Add0Arena s6Step173Add0B.length) s6Step173Add0Work=some s6Step173Add0During := by
  have len : s6Step173Add0Work.length=hmrHybridCount s6Step173Add0Arena s6Step173Add0B.length := by
    rw [hmrHybridCount,s6Step173Add0_card]
    decide +kernel
  have nd : s6Step173Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step173Add0Arena s6Step173Add0During s6Step173Add0Work.toFinset s6Step173Add0_bounded s6Step173Add0_apart rfl

private theorem s6Step173Add0_distinct : (863::907::890::(s6Step173Add0A++s6Step173Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173Add0_owned : (863::907::890::(s6Step173Add0A++s6Step173Add0B)).toFinset⊆s6Step173Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step173Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173Add0_checked : compileHmrHybridCinLog s6Step173Add0Arena 907 863 890 s6Step173Add0A s6Step173Add0B s6Step173Add0Work=some s6Step173Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step173Add0Arena s6Step173Add0During 907 863 890 s6Step173Add0A s6Step173Add0B s6Step173Add0Work
    (by decide +kernel) (by decide +kernel) s6Step173Add0_distinct
    (fun q hq => s6Step173Add0_owned (List.mem_toFinset.mpr hq)) s6Step173Add0_borrowed

private theorem s6Step173Add1_apart : Disjoint s6Step173Add1Arena.live s6Step173Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step173Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173Add1_card : s6Step173Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step173Add1_borrowed : s6Step173Add1Arena.checkBorrow (hmrHybridCount s6Step173Add1Arena s6Step173Add1B.length) s6Step173Add1Work=some s6Step173Add1During := by
  have len : s6Step173Add1Work.length=hmrHybridCount s6Step173Add1Arena s6Step173Add1B.length := by
    rw [hmrHybridCount,s6Step173Add1_card]
    decide +kernel
  have nd : s6Step173Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step173Add1Arena s6Step173Add1During s6Step173Add1Work.toFinset s6Step173Add1_bounded s6Step173Add1_apart rfl

private theorem s6Step173Add1_distinct : (863::907::890::(s6Step173Add1A++s6Step173Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173Add1_owned : (863::907::890::(s6Step173Add1A++s6Step173Add1B)).toFinset⊆s6Step173Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step173Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173Add1_checked : compileHmrHybridCinLog s6Step173Add1Arena 907 863 890 s6Step173Add1A s6Step173Add1B s6Step173Add1Work=some s6Step173Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step173Add1Arena s6Step173Add1During 907 863 890 s6Step173Add1A s6Step173Add1B s6Step173Add1Work
    (by decide +kernel) (by decide +kernel) s6Step173Add1_distinct
    (fun q hq => s6Step173Add1_owned (List.mem_toFinset.mpr hq)) s6Step173Add1_borrowed

private theorem s6Step173F4_apart : Disjoint (s6Step173Add0A++s6Step173Add0B).toFinset (s6Step173Add1A++s6Step173Add1B).toFinset := by
  have nd : ((s6Step173Add0A++s6Step173Add0B)++(s6Step173Add1A++s6Step173Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step173F4_carry : s6Step173F4FlagArena.checkBorrow 1 [890]=some s6Step173Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step173F4FlagArena,s6Step173HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step173F4FlagArena,s6Step173HeadFvAfter,s6Step173Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step173F4_distinct : (803::907::863::890::((s6Step173Add0A++s6Step173Add1A)++(s6Step173Add0B++s6Step173Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173F4_flag : s6Step173HeadFvAfter.checkBorrow 1 [863]=some s6Step173F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step173HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step173F4_owned : (803::907::((s6Step173Add0A++s6Step173Add1A)++(s6Step173Add0B++s6Step173Add1B))).toFinset⊆s6Step173HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step173HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173F4_checked : compileHmrHybridF4Log s6Step173HeadFvAfter 803 907 s6Step173Add0A s6Step173Add0B s6Step173Add1A s6Step173Add1B [863] [890] s6Step173Add0Work s6Step173Add1Work=some s6Step173F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step173HeadFvAfter s6Step173F4FlagArena s6Step173Add0Arena s6Step173Add0During s6Step173Add1During 803 907
    s6Step173Add0A s6Step173Add0B s6Step173Add1A s6Step173Add1B [863] [890] s6Step173Add0Work s6Step173Add1Work
    (fun q hq => s6Step173F4_owned (List.mem_toFinset.mpr hq)) s6Step173F4_flag s6Step173F4_carry
    s6Step173F4_distinct s6Step173F4_apart s6Step173Add0_checked s6Step173Add1_checked

private theorem s6Step173Front_branch : s6Step173FrontSigmaArena.checkBorrow 1 [907]=some s6Step173HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step173FrontSigmaArena,s6Step173EntryGvAfter,s6Step173EntryFvAfter,arenaWires]
  · change s6Step173HeadGBefore.live=(s6Step173EntryGvAfter.live∪{803})∪{907}
    apply hmrArena_union_pair_of_filter_check s6Step173EntryGvAfter s6Step173HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 907 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step173Front_entry : HmrFrontEntryValid s6Step173EntryFBefore s6Step173FrontBank 183 101 ⟨183,182,101,101⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step173FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step173EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step173EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,886),(887,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step173FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step173Front_sigma : s6Step173EntryGvAfter.checkBorrow 1 [803]=some s6Step173FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step173EntryGvAfter,s6Step173EntryFvAfter,arenaWires]
  · rfl

private def s6Step173HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step173HeadFBefore : Arena := s6Step173HeadGAfter

private def s6Step173HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step173HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩

private def s6Step173HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182],777⟩

private def s6Step173HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private theorem s6Step173HeadBank_incomingDistinct : ([s6Step173HeadGRow,s6Step173HeadFRow,s6Step173HeadGvRow,s6Step173HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173HeadF_Incoming : rowsOwned s6Step173HeadFBefore [s6Step173HeadFRow,s6Step173HeadGvRow,s6Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173HeadGRow,s6Step173HeadFRow,s6Step173HeadGvRow,s6Step173HeadFvRow] 1 s6Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173HeadBank_outgoingOwned : rowsOwned s6Step173HeadFvAfter [s6Step173HeadGOut,s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step173HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step173HeadF_Outgoing : rowsOwned s6Step173HeadFvAfter [s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut] :=
  hmrRows_owned_drop s6Step173HeadFvAfter [s6Step173HeadGOut,s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut] 1 s6Step173HeadBank_outgoingOwned

private theorem s6Step173HeadF_distinct : (s6Step173HeadFRow.sign::s6Step173HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173HeadF_owned : (s6Step173HeadFRow.sign::s6Step173HeadFRow.payload).toFinset⊆s6Step173HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173HeadF_reserved : s6Step173HeadFBefore.reserve s6Step173HeadFFresh.toFinset=some s6Step173HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173HeadFFresh,arenaWires]
  · norm_num [s6Step173HeadFBefore,s6Step173HeadGAfter,s6Step173HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step173HeadFBefore s6Step173HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step173HeadFFresh rfl rfl
    · norm_num [s6Step173HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step173HeadF_checked : planRowResizeLog s6Step173HeadFBefore s6Step173HeadFRow 184 s6Step173HeadFFresh=
    some (s6Step173HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 922],795⟩,growRow 795 s6Step173HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step173HeadFBefore s6Step173HeadFAfter s6Step173HeadFRow 184 s6Step173HeadFFresh
    s6Step173HeadF_distinct s6Step173HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173HeadF_reserved
  have rowEq : WindowRow.mk (s6Step173HeadFRow.payload++s6Step173HeadFFresh) s6Step173HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 922],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step173HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step173HeadFvBefore : Arena := s6Step173HeadGvAfter

private theorem s6Step173HeadFv_Incoming : rowsOwned s6Step173HeadFvBefore [s6Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173HeadGRow,s6Step173HeadFRow,s6Step173HeadGvRow,s6Step173HeadFvRow] 3 s6Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step173HeadFv_Outgoing : rowsOwned s6Step173HeadFvAfter [s6Step173HeadFvOut] :=
  hmrRows_owned_drop s6Step173HeadFvAfter [s6Step173HeadGOut,s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut] 3 s6Step173HeadBank_outgoingOwned

private theorem s6Step173HeadFv_distinct : (s6Step173HeadFvRow.sign::s6Step173HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173HeadFv_owned : (s6Step173HeadFvRow.sign::s6Step173HeadFvRow.payload).toFinset⊆s6Step173HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step173HeadFv_reserved : s6Step173HeadFvBefore.reserve s6Step173HeadFvFresh.toFinset=some s6Step173HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173HeadFvFresh,arenaWires]
  · norm_num [s6Step173HeadFvBefore,s6Step173HeadGvAfter,s6Step173HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step173HeadFvAfter,s6Step173HeadFvBefore,s6Step173HeadGvAfter,s6Step173HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step173HeadFv_checked : planRowResizeLog s6Step173HeadFvBefore s6Step173HeadFvRow 102 s6Step173HeadFvFresh=
    some (s6Step173HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 876],776⟩,growRow 776 s6Step173HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step173HeadFvBefore s6Step173HeadFvAfter s6Step173HeadFvRow 102 s6Step173HeadFvFresh
    s6Step173HeadFv_distinct s6Step173HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step173HeadFvRow.payload++s6Step173HeadFvFresh) s6Step173HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step173HeadG_Incoming : rowsOwned s6Step173HeadGBefore [s6Step173HeadGRow,s6Step173HeadFRow,s6Step173HeadGvRow,s6Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173HeadGRow,s6Step173HeadFRow,s6Step173HeadGvRow,s6Step173HeadFvRow] 0 s6Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173HeadG_Outgoing : rowsOwned s6Step173HeadFvAfter [s6Step173HeadGOut,s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut] :=
  hmrRows_owned_drop s6Step173HeadFvAfter [s6Step173HeadGOut,s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut] 0 s6Step173HeadBank_outgoingOwned

private theorem s6Step173HeadG_distinct : (s6Step173HeadGRow.sign::s6Step173HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173HeadG_owned : (s6Step173HeadGRow.sign::s6Step173HeadGRow.payload).toFinset⊆s6Step173HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173HeadG_reserved : s6Step173HeadGBefore.reserve s6Step173HeadGFresh.toFinset=some s6Step173HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173HeadGFresh,arenaWires]
  · norm_num [s6Step173HeadGBefore,s6Step173HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step173HeadGBefore s6Step173HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step173HeadGFresh rfl rfl
    · norm_num [s6Step173HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step173HeadG_checked : planRowResizeLog s6Step173HeadGBefore s6Step173HeadGRow 184 s6Step173HeadGFresh=
    some (s6Step173HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 793],777⟩,growRow 777 s6Step173HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step173HeadGBefore s6Step173HeadGAfter s6Step173HeadGRow 184 s6Step173HeadGFresh
    s6Step173HeadG_distinct s6Step173HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173HeadG_reserved
  have rowEq : WindowRow.mk (s6Step173HeadGRow.payload++s6Step173HeadGFresh) s6Step173HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 793],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step173HeadGvBefore : Arena := s6Step173HeadFAfter

private theorem s6Step173HeadGv_Incoming : rowsOwned s6Step173HeadGvBefore [s6Step173HeadGvRow,s6Step173HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step173HeadGRow,s6Step173HeadFRow,s6Step173HeadGvRow,s6Step173HeadFvRow] 2 s6Step173HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step173HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step173HeadGv_Outgoing : rowsOwned s6Step173HeadFvAfter [s6Step173HeadGvOut,s6Step173HeadFvOut] :=
  hmrRows_owned_drop s6Step173HeadFvAfter [s6Step173HeadGOut,s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut] 2 s6Step173HeadBank_outgoingOwned

private theorem s6Step173HeadGv_distinct : (s6Step173HeadGvRow.sign::s6Step173HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step173HeadGv_owned : (s6Step173HeadGvRow.sign::s6Step173HeadGvRow.payload).toFinset⊆s6Step173HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step173HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step173HeadGv_reserved : s6Step173HeadGvBefore.reserve s6Step173HeadGvFresh.toFinset=some s6Step173HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step173HeadGvFresh,arenaWires]
  · norm_num [s6Step173HeadGvBefore,s6Step173HeadFAfter,s6Step173HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step173HeadGvBefore s6Step173HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step173HeadGvFresh rfl rfl
    · norm_num [s6Step173HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step173HeadGv_checked : planRowResizeLog s6Step173HeadGvBefore s6Step173HeadGvRow 102 s6Step173HeadGvFresh=
    some (s6Step173HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 857],775⟩,growRow 775 s6Step173HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step173HeadGvBefore s6Step173HeadGvAfter s6Step173HeadGvRow 102 s6Step173HeadGvFresh
    s6Step173HeadGv_distinct s6Step173HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step173HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step173HeadGvRow.payload++s6Step173HeadGvFresh) s6Step173HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 857],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step173HeadBank_rows : planWindowRowsLog s6Step173HeadGBefore [(s6Step173HeadGRow,184),(s6Step173HeadFRow,184),(s6Step173HeadGvRow,102),(s6Step173HeadFvRow,102)] [s6Step173HeadGFresh,s6Step173HeadFFresh,s6Step173HeadGvFresh,s6Step173HeadFvFresh]=
    some (s6Step173HeadFvAfter,[s6Step173HeadGOut,s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut],(growRow 777 s6Step173HeadGFresh ++ (growRow 795 s6Step173HeadFFresh ++ (growRow 775 s6Step173HeadGvFresh ++ (growRow 776 s6Step173HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step173HeadFvAfter [] []=some (s6Step173HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step173HeadFvBefore s6Step173HeadFvAfter s6Step173HeadFvAfter
    s6Step173HeadFvRow s6Step173HeadFvOut 102 s6Step173HeadFvFresh [] [] []
    (growRow 776 s6Step173HeadFvFresh) ([]) s6Step173HeadFv_Incoming s6Step173HeadFv_checked h4 s6Step173HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step173HeadGvBefore s6Step173HeadGvAfter s6Step173HeadFvAfter
    s6Step173HeadGvRow s6Step173HeadGvOut 102 s6Step173HeadGvFresh [(s6Step173HeadFvRow,102)] [s6Step173HeadFvFresh] [s6Step173HeadFvOut]
    (growRow 775 s6Step173HeadGvFresh) ((growRow 776 s6Step173HeadFvFresh ++ [])) s6Step173HeadGv_Incoming s6Step173HeadGv_checked h3 s6Step173HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step173HeadFBefore s6Step173HeadFAfter s6Step173HeadFvAfter
    s6Step173HeadFRow s6Step173HeadFOut 184 s6Step173HeadFFresh [(s6Step173HeadGvRow,102),(s6Step173HeadFvRow,102)] [s6Step173HeadGvFresh,s6Step173HeadFvFresh] [s6Step173HeadGvOut,s6Step173HeadFvOut]
    (growRow 795 s6Step173HeadFFresh) ((growRow 775 s6Step173HeadGvFresh ++ (growRow 776 s6Step173HeadFvFresh ++ []))) s6Step173HeadF_Incoming s6Step173HeadF_checked h2 s6Step173HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step173HeadGBefore s6Step173HeadGAfter s6Step173HeadFvAfter
    s6Step173HeadGRow s6Step173HeadGOut 184 s6Step173HeadGFresh [(s6Step173HeadFRow,184),(s6Step173HeadGvRow,102),(s6Step173HeadFvRow,102)] [s6Step173HeadFFresh,s6Step173HeadGvFresh,s6Step173HeadFvFresh] [s6Step173HeadFOut,s6Step173HeadGvOut,s6Step173HeadFvOut]
    (growRow 777 s6Step173HeadGFresh) ((growRow 795 s6Step173HeadFFresh ++ (growRow 775 s6Step173HeadGvFresh ++ (growRow 776 s6Step173HeadFvFresh ++ [])))) s6Step173HeadG_Incoming s6Step173HeadG_checked h1 s6Step173HeadG_Outgoing
  exact h0

private theorem s6Step173HeadBank_checked : compileHmrBankResizeLog .headroom s6Step173HeadGBefore ⟨s6Step173HeadFRow,s6Step173HeadGRow,s6Step173HeadFvRow,s6Step173HeadGvRow⟩ ⟨184,184,102,102⟩ [s6Step173HeadGFresh,s6Step173HeadFFresh,s6Step173HeadGvFresh,s6Step173HeadFvFresh]=
    some (s6Step173HeadFvAfter,⟨s6Step173HeadFOut,s6Step173HeadGOut,s6Step173HeadFvOut,s6Step173HeadGvOut⟩,(growRow 777 s6Step173HeadGFresh ++ (growRow 795 s6Step173HeadFFresh ++ (growRow 775 s6Step173HeadGvFresh ++ (growRow 776 s6Step173HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step173HeadBank_rows]
  rfl

private theorem s6Step173Front_checked : compileHmrSourceFrontLog s6Step173EntryFBefore s6Step173FrontBank 183 101 ⟨183,182,101,101⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step173FrontLog=some s6Step173FrontPlan := by
  have pairEq : s6Step173FrontPair=⟨s6Step173HeadFRow,s6Step173HeadGRow,s6Step173HeadFvRow,s6Step173HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step173FrontHead=⟨s6Step173ExitFRow,s6Step173ExitGRow,s6Step173ExitFvRow,s6Step173ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step173Add0A=s6Step173FrontHead.f.wires := by decide +kernel
  have gEq : s6Step173Add0B=s6Step173FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step173Add1A=s6Step173FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step173Add1B=s6Step173FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step173EntryFBefore s6Step173FrontBank 183 101 ⟨183,182,101,101⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step173FrontLog s6Step173FrontPlan
  · exact s6Step173Front_entry
  · exact s6Step173EntryBank_checked
  · exact s6Step173Front_sigma
  · rfl
  · exact s6Step173Front_branch
  · rfl
  · simpa only [s6Step173FrontPlan,pairEq] using s6Step173HeadBank_checked
  · simpa only [s6Step173FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step173F4_checked
  · exact s6Step173Counter_checked
  · rfl
  · simpa only [s6Step173FrontPlan,headEq] using s6Step173ExitBank_checked

private theorem s6Step173Complete_explicit_checked : compileHmrEarlyStepLog s6Step173EntryFBefore s6Step173FrontBank 183 101 ⟨183,182,101,101⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step173CompleteLog=some s6Step173CompletePlan := by
  let Q := s6Step173EarlyControlPlan
  have hq := s6Step173EarlyControl_plan_checked
  have fv1 : s6Step173CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step173CompleteOut.fv.payload[2]?.getD s6Step173CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step173CompleteOut.fv.payload[3]?.getD s6Step173CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step173CompleteOut.fv.payload[4]?.getD s6Step173CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step173EntryFBefore s6Step173EarlyControlArena s6Step173FrontBank 183 101 ⟨183,182,101,101⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step173CompleteLog s6Step173FrontPlan Q
    s6Step173Front_checked s6Step173Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step173Complete_owned s6Step173Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step173EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step173CompleteOut.fv.second (s6Step173CompleteOut.fv.payload[2]?.getD s6Step173CompleteOut.fv.sign) (s6Step173CompleteOut.fv.payload[3]?.getD s6Step173CompleteOut.fv.sign) (s6Step173CompleteOut.fv.payload[4]?.getD s6Step173CompleteOut.fv.sign) 907 42 s6Step173EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep173Arena : Arena := s6Step173EntryFBefore
def s6PrivateStep173Bank : WindowBank := s6Step173FrontBank
def s6PrivateStep173Spec : HmrSourceWalkStepLog := ⟨183,101,⟨183,182,101,101⟩,42,.early s6Step173CompleteLog⟩
def s6PrivateStep173Plan : HmrSourceStepPlan := .early s6Step173CompletePlan
theorem s6PrivateStep173_source : s6PrivateStep173Spec=s6ObservedLogs160[13] := rfl
theorem s6PrivateStep173_checked : compileHmrSourceStepLog s6PrivateStep173Arena s6PrivateStep173Bank
    s6PrivateStep173Spec.fgWidth s6PrivateStep173Spec.vWidth s6PrivateStep173Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 173 s6PrivateStep173Spec.need none s6PrivateStep173Spec.log=some s6PrivateStep173Plan := by
  change compileHmrSourceStepLog s6Step173EntryFBefore s6Step173FrontBank 183 101 ⟨183,182,101,101⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 173 42 none (.early s6Step173CompleteLog)=some (.early s6Step173CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 173<498)]
  rw [s6Step173Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
