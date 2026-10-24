import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep172
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

private def s6Step174CompleteMoves : List (Wire × Wire) := [(830,438)]

private def s6Step174EarlyControlLog : HmrEarlyControlLog := ⟨[830, 922, 876, 907, 857],[863],[890],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step174FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [907], [], []],[[857], [876], [922], [793]],[[], [], [], []]⟩,[803],[778],[863],[890],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903]⟩

private def s6Step174CompleteLog : HmrEarlyStepLog := ⟨s6Step174FrontLog,s6Step174CompleteMoves,s6Step174EarlyControlLog⟩

private def s6Step174ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step174ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step174ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩

private def s6Step174ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step174FrontOut : WindowBank := ⟨s6Step174ExitFOut,s6Step174ExitGOut,s6Step174ExitFvOut,s6Step174ExitGvOut⟩

private def s6Step174CompleteOut : WindowBank := s6Step174FrontOut.repacked s6Step174CompleteMoves

private def s6Step174EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step174EarlyControlPositiveArena,[863],s6Step174EarlyControlEqualityArena,[890],⟨⟨803,false⟩,[⟨⟨863,false⟩,890⟩]⟩⟩

private def s6Step174EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨772,false⟩,922⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,907⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step174EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step174EarlyControlZeroArena,s6Step174EarlyControlZeroPlan,s6Step174EarlyControlClassPlan,s6Step174EarlyControlFlagArena,s6Step174EarlyControlFittedArena,s6Step174EarlyControlHistoryArena,s6Step174EarlyControlSigmaArena,s6Step174EarlyControlOutputArena,s6Step174EarlyControlLog⟩

private def s6Step174CounterWork : List Wire := [863, 890, 891, 903]

private theorem s6Step174Counter_bounded : s6Step174CounterWork.toFinset⊆arenaWires := by norm_num [s6Step174CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step174HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174CounterDuring : Arena := ⟨s6Step174HeadFvAfter.live∪s6Step174CounterWork.toFinset,Finset.union_subset s6Step174HeadFvAfter.bounded s6Step174Counter_bounded⟩

private def s6Step174EntryFFresh : List Wire := []

private def s6Step174EntryFvFresh : List Wire := []

private def s6Step174EntryGFresh : List Wire := [907]

private def s6Step174EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174EntryGvAfter : Arena := s6Step174EntryGAfter

private def s6Step174EntryGvFresh : List Wire := []

private def s6Step174ExitFExtra : List Wire := [438, 876]

private def s6Step174ExitGExtra : List Wire := [907, 857]

private def s6Step174ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174ExitGvExtra : List Wire := [922]

private def s6Step174Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step174Add0_bounded : s6Step174Add0Work.toFinset⊆arenaWires := by
  have h : s6Step174Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step174Add0During : Arena := ⟨s6Step174Add0Arena.live∪s6Step174Add0Work.toFinset,Finset.union_subset s6Step174Add0Arena.bounded s6Step174Add0_bounded⟩

private def s6Step174Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step174Add1_bounded : s6Step174Add1Work.toFinset⊆arenaWires := by
  have h : s6Step174Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step174Add1During : Arena := ⟨s6Step174Add1Arena.live∪s6Step174Add1Work.toFinset,Finset.union_subset s6Step174Add1Arena.bounded s6Step174Add1_bounded⟩

private def s6Step174F4FlagArena : Arena := ⟨s6Step174HeadFvAfter.live∪{863},Finset.union_subset s6Step174HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step174F4Plan : HmrHybridF4Plan := ⟨s6Step174F4FlagArena,[863],s6Step174Add0Arena,[890],s6Step174Add0During,s6Step174Add0Work,s6Step174Add1During,s6Step174Add1Work⟩

private def s6Step174HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 876],795⟩

private def s6Step174HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step174HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907, 857],777⟩

private def s6Step174HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 922],775⟩

private def s6Step174FrontHead : WindowBank := ⟨s6Step174HeadFOut,s6Step174HeadGOut,s6Step174HeadFvOut,s6Step174HeadGvOut⟩

private def s6Step174EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step174EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩

private def s6Step174EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907],777⟩

private def s6Step174EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step174FrontPair : WindowBank := ⟨s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut⟩

private def s6Step174FrontSigmaArena : Arena := ⟨s6Step174EntryGvAfter.live∪{803},Finset.union_subset s6Step174EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step174HeadFFresh : List Wire := [876]

private def s6Step174HeadFvFresh : List Wire := [793]

private def s6Step174HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174HeadGFresh : List Wire := [857]

private def s6Step174HeadGvFresh : List Wire := [922]

private def s6Step174FrontPlan : HmrSourceFront := ⟨s6Step174EntryGvAfter,s6Step174FrontPair,(growRow 795 s6Step174EntryFFresh ++ (growRow 777 s6Step174EntryGFresh ++ (growRow 776 s6Step174EntryFvFresh ++ (growRow 775 s6Step174EntryGvFresh ++ [])))),s6Step174FrontSigmaArena,[803],s6Step174HeadGBefore,[778],
  s6Step174HeadFvAfter,s6Step174FrontHead,(growRow 777 s6Step174HeadGFresh ++ (growRow 795 s6Step174HeadFFresh ++ (growRow 775 s6Step174HeadGvFresh ++ (growRow 776 s6Step174HeadFvFresh ++ [])))),s6Step174F4Plan,s6Step174CounterDuring,s6Step174CounterWork,s6Step174ExitGvAfter,s6Step174FrontOut,(shrinkRow 777 s6Step174ExitGExtra ++ (shrinkRow 795 s6Step174ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step174ExitGvExtra ++ []))))⟩

private def s6Step174CompletePlan : HmrEarlyStepPlan := ⟨s6Step174FrontPlan,s6Step174EarlyControlArena,s6Step174EarlyControlPlan,s6Step174CompleteMoves⟩

private theorem s6Step174Complete_apart : List.Disjoint (s6Step174CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step174CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step174Complete_owned : (s6Step174CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step174CompleteRelocationMove0Borrowed : Arena := ⟨s6Step174ExitGvAfter.live∪{438},Finset.union_subset s6Step174ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step174CompleteRelocation_move0_owned : 830∈s6Step174ExitGvAfter.live := by norm_num [s6Step174ExitGvAfter,arenaWires]

private theorem s6Step174CompleteRelocation_move0_reserve : s6Step174ExitGvAfter.reserve {438}=some s6Step174CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step174ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step174CompleteRelocation_move0_retire : s6Step174CompleteRelocationMove0Borrowed.retireSet {830}=s6Step174EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step174CompleteRelocationMove0Borrowed s6Step174EarlyControlArena {830}
  change s6Step174EarlyControlArena.live=(s6Step174ExitGvAfter.live∪{438})\{830}
  apply hmrArena_update_of_filter_check s6Step174ExitGvAfter s6Step174EarlyControlArena (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [438] [830] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step174CompleteRelocation_checked : s6Step174ExitGvAfter.checkRepack [(830,438)]=some s6Step174EarlyControlArena := by
  have tail1 : s6Step174EarlyControlArena.checkRepack []=some s6Step174EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step174ExitGvAfter s6Step174CompleteRelocationMove0Borrowed s6Step174EarlyControlArena s6Step174EarlyControlArena 830 438 []
    s6Step174CompleteRelocation_move0_owned s6Step174CompleteRelocation_move0_reserve s6Step174CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step174Complete_repack : s6Step174ExitGvAfter.checkRepack s6Step174CompleteMoves=some s6Step174EarlyControlArena := by
  simpa only [s6Step174CompleteMoves] using s6Step174CompleteRelocation_checked

private theorem s6Step174EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s6Step174EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EarlyControl_branch : compileHmrBranchRetirement s6Step174EarlyControlSigmaArena 778=some s6Step174EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step174EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step174EarlyControlSigmaArena s6Step174EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [778] rfl rfl
    decide +kernel

private theorem s6Step174EarlyControl_classEqualityBorrow : s6Step174EarlyControlPositiveArena.checkBorrow (([803, 863] : List Wire).length-1) s6Step174EarlyControlLog.classWork=some s6Step174EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step174EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step174EarlyControlEqualityArena,s6Step174EarlyControlPositiveArena,s6Step174EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step174EarlyControl_classEqualityOwned : ([803, 863] : List Wire).toFinset⊆s6Step174EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174EarlyControl_classEquality : compileHmrEqualityLog s6Step174EarlyControlPositiveArena [803, 863] 0 s6Step174EarlyControlLog.classWork=some (s6Step174EarlyControlEqualityArena,s6Step174EarlyControlLog.classWork,s6Step174EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step174EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step174EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step174EarlyControl_classOwned : ([769, 857, 803] : List Wire).toFinset⊆s6Step174EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174EarlyControl_positiveBorrow : s6Step174EarlyControlZeroArena.checkBorrow (1) s6Step174EarlyControlLog.positiveWork=some s6Step174EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step174EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step174EarlyControlPositiveArena,s6Step174EarlyControlZeroArena,s6Step174EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step174EarlyControl_class : compileHmrSourceClassLog s6Step174EarlyControlZeroArena false 769 s6Step174EarlyControlZeroPlan.top 0 803 s6Step174EarlyControlLog.positiveWork s6Step174EarlyControlLog.classWork=some s6Step174EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step174EarlyControlClassPlan s6Step174EarlyControlZeroArena false 769 s6Step174EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step174EarlyControl_classOwned
  · exact s6Step174EarlyControl_positiveBorrow
  · exact s6Step174EarlyControl_classEquality

private theorem s6Step174EarlyControl_entryRecordOwned : ([778, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EarlyControl_fitBorrow : s6Step174EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step174EarlyControlLog.recordFresh=some s6Step174EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step174EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step174EarlyControlFittedArena,s6Step174EarlyControlFlagArena,s6Step174EarlyControlLog,arenaWires]

private theorem s6Step174EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step174EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174EarlyControl_fit : compileHmrRecordGrowLog s6Step174EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step174EarlyControlLog.recordFresh=some s6Step174EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step174EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step174EarlyControl_fitBorrow

private theorem s6Step174EarlyControl_flagsBorrow : s6Step174EarlyControlEqualityArena.checkBorrow (6) s6Step174EarlyControlLog.flagWork=some s6Step174EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step174EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step174EarlyControlFlagArena,s6Step174EarlyControlEqualityArena,s6Step174EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step174EarlyControl_flagsOwned : ([890, 253, 252, 251] : List Wire).toFinset⊆s6Step174EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174EarlyControl_flags : compileHmrFlagsLog s6Step174EarlyControlClassPlan.equalityArena s6Step174EarlyControlClassPlan.equality.top 253 252 251 s6Step174EarlyControlLog.flagWork=some s6Step174EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step174EarlyControl_flagsOwned⟩
  · exact s6Step174EarlyControl_flagsBorrow

private theorem s6Step174EarlyControl_historyBorrow : s6Step174EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step174EarlyControlLog.recordFresh=some s6Step174EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step174EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step174EarlyControlArena s6Step174EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step174EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step174EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EarlyControl_history : compileHmrRecordGrowLog s6Step174EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step174EarlyControlLog.recordFresh=some s6Step174EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step174EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step174EarlyControl_historyBorrow

private theorem s6Step174EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step174EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step174EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EarlyControl_sigmaRelease : s6Step174EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step174EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step174EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step174EarlyControlHistoryArena s6Step174EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step174EarlyControl_sigma : compileHmrSigmaDropLog s6Step174EarlyControlHistoryArena false 0 0 254 803 []=some s6Step174EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step174EarlyControl_sigmaOwned⟩
  · exact s6Step174EarlyControl_sigmaRelease

private theorem s6Step174EarlyControl_zeroBorrow : s6Step174EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step174EarlyControlLog.zeroWork=some s6Step174EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step174EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step174EarlyControlArena s6Step174EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step174EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step174EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step174EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step174EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step174EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EarlyControl_zero : compileHmrEqualityLog s6Step174EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step174EarlyControlLog.zeroWork=some (s6Step174EarlyControlZeroArena,s6Step174EarlyControlLog.zeroWork,s6Step174EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step174EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step174EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step174EarlyControl_logged : s6Step174EarlyControlPlan.Logged s6Step174EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 778 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step174EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step174EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step174EarlyControl_zero
  · exact s6Step174EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step174EarlyControl_flags
  · exact s6Step174EarlyControl_fit
  · exact s6Step174EarlyControl_history
  · exact s6Step174EarlyControl_sigma
  · exact s6Step174EarlyControl_branch

private theorem s6Step174EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step174EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 778 42 s6Step174EarlyControlLog=some s6Step174EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step174EarlyControlPlan s6Step174EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 778 42 s6Step174EarlyControl_logged

private def s6Step174EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step174EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩

private def s6Step174EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩

private def s6Step174EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step174FrontBank : WindowBank := ⟨s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow⟩

private def s6Step174Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 876, 795]

private def s6Step174Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907, 857, 777]

private def s6Step174Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 776]

private def s6Step174Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 922, 775]

private theorem s6Step174Counter_apart : Disjoint s6Step174HeadFvAfter.live s6Step174CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step174HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174Counter_borrowed : s6Step174HeadFvAfter.checkBorrow 4 s6Step174CounterWork=some s6Step174CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step174HeadFvAfter s6Step174CounterDuring s6Step174CounterWork.toFinset s6Step174Counter_bounded s6Step174Counter_apart rfl

private theorem s6Step174Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step174HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step174HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174Counter_checked : compileHmrCounterStepLog s6Step174HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step174CounterWork=some s6Step174CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step174HeadFvAfter.live := fun q hq => s6Step174Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step174Counter_borrowed

private def s6Step174EntryFAfter : Arena := s6Step174EntryFBefore

private theorem s6Step174EntryBank_incomingDistinct : ([s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174EntryF_Incoming : rowsOwned s6Step174EntryFBefore [s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow] 0 s6Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174EntryBank_outgoingOwned : rowsOwned s6Step174EntryGvAfter [s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step174EntryGvAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174EntryF_Outgoing : rowsOwned s6Step174EntryGvAfter [s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut] :=
  hmrRows_owned_drop s6Step174EntryGvAfter [s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut] 0 s6Step174EntryBank_outgoingOwned

private theorem s6Step174EntryF_distinct : (s6Step174EntryFRow.sign::s6Step174EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174EntryF_owned : (s6Step174EntryFRow.sign::s6Step174EntryFRow.payload).toFinset⊆s6Step174EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EntryF_reserved : s6Step174EntryFBefore.reserve s6Step174EntryFFresh.toFinset=some s6Step174EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174EntryFFresh,arenaWires]
  · norm_num [s6Step174EntryFBefore,s6Step174EntryFFresh,arenaWires]
  · simp only [s6Step174EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step174EntryF_checked : planRowResizeLog s6Step174EntryFBefore s6Step174EntryFRow 183 s6Step174EntryFFresh=
    some (s6Step174EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩,growRow 795 s6Step174EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step174EntryFBefore s6Step174EntryFAfter s6Step174EntryFRow 183 s6Step174EntryFFresh
    s6Step174EntryF_distinct s6Step174EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174EntryF_reserved
  have rowEq : WindowRow.mk (s6Step174EntryFRow.payload++s6Step174EntryFFresh) s6Step174EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step174EntryFvAfter : Arena := s6Step174EntryGAfter

private def s6Step174EntryFvBefore : Arena := s6Step174EntryGAfter

private theorem s6Step174EntryFv_Incoming : rowsOwned s6Step174EntryFvBefore [s6Step174EntryFvRow,s6Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow] 2 s6Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174EntryFv_Outgoing : rowsOwned s6Step174EntryGvAfter [s6Step174EntryFvOut,s6Step174EntryGvOut] :=
  hmrRows_owned_drop s6Step174EntryGvAfter [s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut] 2 s6Step174EntryBank_outgoingOwned

private theorem s6Step174EntryFv_distinct : (s6Step174EntryFvRow.sign::s6Step174EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174EntryFv_owned : (s6Step174EntryFvRow.sign::s6Step174EntryFvRow.payload).toFinset⊆s6Step174EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EntryFv_reserved : s6Step174EntryFvBefore.reserve s6Step174EntryFvFresh.toFinset=some s6Step174EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174EntryFvFresh,arenaWires]
  · norm_num [s6Step174EntryFvBefore,s6Step174EntryGAfter,s6Step174EntryFvFresh,arenaWires]
  · simp only [s6Step174EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step174EntryFv_checked : planRowResizeLog s6Step174EntryFvBefore s6Step174EntryFvRow 101 s6Step174EntryFvFresh=
    some (s6Step174EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩,growRow 776 s6Step174EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step174EntryFvBefore s6Step174EntryFvAfter s6Step174EntryFvRow 101 s6Step174EntryFvFresh
    s6Step174EntryFv_distinct s6Step174EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step174EntryFvRow.payload++s6Step174EntryFvFresh) s6Step174EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step174EntryGBefore : Arena := s6Step174EntryFBefore

private theorem s6Step174EntryG_Incoming : rowsOwned s6Step174EntryGBefore [s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow] 1 s6Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174EntryG_Outgoing : rowsOwned s6Step174EntryGvAfter [s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut] :=
  hmrRows_owned_drop s6Step174EntryGvAfter [s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut] 1 s6Step174EntryBank_outgoingOwned

private theorem s6Step174EntryG_distinct : (s6Step174EntryGRow.sign::s6Step174EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174EntryG_owned : (s6Step174EntryGRow.sign::s6Step174EntryGRow.payload).toFinset⊆s6Step174EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EntryG_reserved : s6Step174EntryGBefore.reserve s6Step174EntryGFresh.toFinset=some s6Step174EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174EntryGFresh,arenaWires]
  · norm_num [s6Step174EntryGBefore,s6Step174EntryFBefore,s6Step174EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step174EntryGBefore s6Step174EntryGAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step174EntryGFresh rfl rfl
    · norm_num [s6Step174EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step174EntryG_checked : planRowResizeLog s6Step174EntryGBefore s6Step174EntryGRow 183 s6Step174EntryGFresh=
    some (s6Step174EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907],777⟩,growRow 777 s6Step174EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step174EntryGBefore s6Step174EntryGAfter s6Step174EntryGRow 183 s6Step174EntryGFresh
    s6Step174EntryG_distinct s6Step174EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174EntryG_reserved
  have rowEq : WindowRow.mk (s6Step174EntryGRow.payload++s6Step174EntryGFresh) s6Step174EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step174EntryGvBefore : Arena := s6Step174EntryGAfter

private theorem s6Step174EntryGv_Incoming : rowsOwned s6Step174EntryGvBefore [s6Step174EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow] 3 s6Step174EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174EntryGv_Outgoing : rowsOwned s6Step174EntryGvAfter [s6Step174EntryGvOut] :=
  hmrRows_owned_drop s6Step174EntryGvAfter [s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut] 3 s6Step174EntryBank_outgoingOwned

private theorem s6Step174EntryGv_distinct : (s6Step174EntryGvRow.sign::s6Step174EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174EntryGv_owned : (s6Step174EntryGvRow.sign::s6Step174EntryGvRow.payload).toFinset⊆s6Step174EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174EntryGv_reserved : s6Step174EntryGvBefore.reserve s6Step174EntryGvFresh.toFinset=some s6Step174EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174EntryGvFresh,arenaWires]
  · norm_num [s6Step174EntryGvBefore,s6Step174EntryGAfter,s6Step174EntryGvFresh,arenaWires]
  · simp only [s6Step174EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step174EntryGv_checked : planRowResizeLog s6Step174EntryGvBefore s6Step174EntryGvRow 101 s6Step174EntryGvFresh=
    some (s6Step174EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩,growRow 775 s6Step174EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step174EntryGvBefore s6Step174EntryGvAfter s6Step174EntryGvRow 101 s6Step174EntryGvFresh
    s6Step174EntryGv_distinct s6Step174EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step174EntryGvRow.payload++s6Step174EntryGvFresh) s6Step174EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step174EntryBank_rows : planWindowRowsLog s6Step174EntryFBefore [(s6Step174EntryFRow,183),(s6Step174EntryGRow,183),(s6Step174EntryFvRow,101),(s6Step174EntryGvRow,101)] [s6Step174EntryFFresh,s6Step174EntryGFresh,s6Step174EntryFvFresh,s6Step174EntryGvFresh]=
    some (s6Step174EntryGvAfter,[s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut],(growRow 795 s6Step174EntryFFresh ++ (growRow 777 s6Step174EntryGFresh ++ (growRow 776 s6Step174EntryFvFresh ++ (growRow 775 s6Step174EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step174EntryGvAfter [] []=some (s6Step174EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step174EntryGvBefore s6Step174EntryGvAfter s6Step174EntryGvAfter
    s6Step174EntryGvRow s6Step174EntryGvOut 101 s6Step174EntryGvFresh [] [] []
    (growRow 775 s6Step174EntryGvFresh) ([]) s6Step174EntryGv_Incoming s6Step174EntryGv_checked h4 s6Step174EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step174EntryFvBefore s6Step174EntryFvAfter s6Step174EntryGvAfter
    s6Step174EntryFvRow s6Step174EntryFvOut 101 s6Step174EntryFvFresh [(s6Step174EntryGvRow,101)] [s6Step174EntryGvFresh] [s6Step174EntryGvOut]
    (growRow 776 s6Step174EntryFvFresh) ((growRow 775 s6Step174EntryGvFresh ++ [])) s6Step174EntryFv_Incoming s6Step174EntryFv_checked h3 s6Step174EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step174EntryGBefore s6Step174EntryGAfter s6Step174EntryGvAfter
    s6Step174EntryGRow s6Step174EntryGOut 183 s6Step174EntryGFresh [(s6Step174EntryFvRow,101),(s6Step174EntryGvRow,101)] [s6Step174EntryFvFresh,s6Step174EntryGvFresh] [s6Step174EntryFvOut,s6Step174EntryGvOut]
    (growRow 777 s6Step174EntryGFresh) ((growRow 776 s6Step174EntryFvFresh ++ (growRow 775 s6Step174EntryGvFresh ++ []))) s6Step174EntryG_Incoming s6Step174EntryG_checked h2 s6Step174EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step174EntryFBefore s6Step174EntryFAfter s6Step174EntryGvAfter
    s6Step174EntryFRow s6Step174EntryFOut 183 s6Step174EntryFFresh [(s6Step174EntryGRow,183),(s6Step174EntryFvRow,101),(s6Step174EntryGvRow,101)] [s6Step174EntryGFresh,s6Step174EntryFvFresh,s6Step174EntryGvFresh] [s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut]
    (growRow 795 s6Step174EntryFFresh) ((growRow 777 s6Step174EntryGFresh ++ (growRow 776 s6Step174EntryFvFresh ++ (growRow 775 s6Step174EntryGvFresh ++ [])))) s6Step174EntryF_Incoming s6Step174EntryF_checked h1 s6Step174EntryF_Outgoing
  exact h0

private theorem s6Step174EntryBank_checked : compileHmrBankResizeLog .entry s6Step174EntryFBefore ⟨s6Step174EntryFRow,s6Step174EntryGRow,s6Step174EntryFvRow,s6Step174EntryGvRow⟩ ⟨183,183,101,101⟩ [s6Step174EntryFFresh,s6Step174EntryGFresh,s6Step174EntryFvFresh,s6Step174EntryGvFresh]=
    some (s6Step174EntryGvAfter,⟨s6Step174EntryFOut,s6Step174EntryGOut,s6Step174EntryFvOut,s6Step174EntryGvOut⟩,(growRow 795 s6Step174EntryFFresh ++ (growRow 777 s6Step174EntryGFresh ++ (growRow 776 s6Step174EntryFvFresh ++ (growRow 775 s6Step174EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step174EntryBank_rows]
  rfl

private def s6Step174ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step174ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174ExitFBefore : Arena := s6Step174ExitGAfter

private def s6Step174ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 876],795⟩

private def s6Step174ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step174ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907, 857],777⟩

private def s6Step174ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 922],775⟩

private theorem s6Step174ExitBank_incomingDistinct : ([s6Step174ExitGRow,s6Step174ExitFRow,s6Step174ExitFvRow,s6Step174ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174ExitF_Incoming : rowsOwned s6Step174ExitFBefore [s6Step174ExitFRow,s6Step174ExitFvRow,s6Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174ExitGRow,s6Step174ExitFRow,s6Step174ExitFvRow,s6Step174ExitGvRow] 1 s6Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step174ExitBank_outgoingOwned : rowsOwned s6Step174ExitGvAfter [s6Step174ExitGOut,s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step174ExitGvAfter (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174ExitF_Outgoing : rowsOwned s6Step174ExitGvAfter [s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut] :=
  hmrRows_owned_drop s6Step174ExitGvAfter [s6Step174ExitGOut,s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut] 1 s6Step174ExitBank_outgoingOwned

private theorem s6Step174ExitF_distinct : (s6Step174ExitFRow.sign::s6Step174ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174ExitF_owned : (s6Step174ExitFRow.sign::s6Step174ExitFRow.payload).toFinset⊆s6Step174ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174ExitF_retired : s6Step174ExitFBefore.retireSet s6Step174ExitFExtra.toFinset=s6Step174ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step174ExitFBefore s6Step174ExitFAfter s6Step174ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step174ExitFBefore s6Step174ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step174ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step174ExitF_checked : planRowResizeLog s6Step174ExitFBefore s6Step174ExitFRow 182 []=
    some (s6Step174ExitFAfter,s6Step174ExitFOut,shrinkRow 795 s6Step174ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step174ExitFBefore s6Step174ExitFRow 182 s6Step174ExitF_distinct s6Step174ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step174ExitFRow.payload.take 182) s6Step174ExitFRow.sign=s6Step174ExitFOut := by decide +kernel
  have hi : s6Step174ExitFRow.payload.drop 182=s6Step174ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step174ExitF_retired] at result
  exact result

private def s6Step174ExitFvAfter : Arena := s6Step174ExitFAfter

private def s6Step174ExitFvBefore : Arena := s6Step174ExitFAfter

private theorem s6Step174ExitFv_Incoming : rowsOwned s6Step174ExitFvBefore [s6Step174ExitFvRow,s6Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174ExitGRow,s6Step174ExitFRow,s6Step174ExitFvRow,s6Step174ExitGvRow] 2 s6Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174ExitFvBefore (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174ExitFv_Outgoing : rowsOwned s6Step174ExitGvAfter [s6Step174ExitFvOut,s6Step174ExitGvOut] :=
  hmrRows_owned_drop s6Step174ExitGvAfter [s6Step174ExitGOut,s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut] 2 s6Step174ExitBank_outgoingOwned

private theorem s6Step174ExitFv_distinct : (s6Step174ExitFvRow.sign::s6Step174ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174ExitFv_owned : (s6Step174ExitFvRow.sign::s6Step174ExitFvRow.payload).toFinset⊆s6Step174ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174ExitFvBefore (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174ExitFv_reserved : s6Step174ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step174ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step174ExitFv_checked : planRowResizeLog s6Step174ExitFvBefore s6Step174ExitFvRow 102 []=
    some (s6Step174ExitFvAfter,s6Step174ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step174ExitFvBefore s6Step174ExitFvAfter s6Step174ExitFvRow 102 []
    s6Step174ExitFv_distinct s6Step174ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step174ExitFvRow.payload++[]) s6Step174ExitFvRow.sign=s6Step174ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step174ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step174ExitG_Incoming : rowsOwned s6Step174ExitGBefore [s6Step174ExitGRow,s6Step174ExitFRow,s6Step174ExitFvRow,s6Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174ExitGRow,s6Step174ExitFRow,s6Step174ExitFvRow,s6Step174ExitGvRow] 0 s6Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step174ExitG_Outgoing : rowsOwned s6Step174ExitGvAfter [s6Step174ExitGOut,s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut] :=
  hmrRows_owned_drop s6Step174ExitGvAfter [s6Step174ExitGOut,s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut] 0 s6Step174ExitBank_outgoingOwned

private theorem s6Step174ExitG_distinct : (s6Step174ExitGRow.sign::s6Step174ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174ExitG_owned : (s6Step174ExitGRow.sign::s6Step174ExitGRow.payload).toFinset⊆s6Step174ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174ExitG_retired : s6Step174ExitGBefore.retireSet s6Step174ExitGExtra.toFinset=s6Step174ExitGAfter := by
  unfold Arena.retireSet s6Step174ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step174ExitGBefore,s6Step174ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step174ExitG_checked : planRowResizeLog s6Step174ExitGBefore s6Step174ExitGRow 182 []=
    some (s6Step174ExitGAfter,s6Step174ExitGOut,shrinkRow 777 s6Step174ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step174ExitGBefore s6Step174ExitGRow 182 s6Step174ExitG_distinct s6Step174ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step174ExitGRow.payload.take 182) s6Step174ExitGRow.sign=s6Step174ExitGOut := by decide +kernel
  have hi : s6Step174ExitGRow.payload.drop 182=s6Step174ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step174ExitG_retired] at result
  exact result

private def s6Step174ExitGvBefore : Arena := s6Step174ExitFAfter

private theorem s6Step174ExitGv_Incoming : rowsOwned s6Step174ExitGvBefore [s6Step174ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174ExitGRow,s6Step174ExitFRow,s6Step174ExitFvRow,s6Step174ExitGvRow] 3 s6Step174ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174ExitGvBefore (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174ExitGv_Outgoing : rowsOwned s6Step174ExitGvAfter [s6Step174ExitGvOut] :=
  hmrRows_owned_drop s6Step174ExitGvAfter [s6Step174ExitGOut,s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut] 3 s6Step174ExitBank_outgoingOwned

private theorem s6Step174ExitGv_distinct : (s6Step174ExitGvRow.sign::s6Step174ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174ExitGv_owned : (s6Step174ExitGvRow.sign::s6Step174ExitGvRow.payload).toFinset⊆s6Step174ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174ExitGvBefore (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174ExitGv_retired : s6Step174ExitGvBefore.retireSet s6Step174ExitGvExtra.toFinset=s6Step174ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step174ExitGvBefore s6Step174ExitGvAfter s6Step174ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step174ExitGvBefore s6Step174ExitGvAfter (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,438),(439,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step174ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step174ExitGv_checked : planRowResizeLog s6Step174ExitGvBefore s6Step174ExitGvRow 101 []=
    some (s6Step174ExitGvAfter,s6Step174ExitGvOut,shrinkRow 775 s6Step174ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step174ExitGvBefore s6Step174ExitGvRow 101 s6Step174ExitGv_distinct s6Step174ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step174ExitGvRow.payload.take 101) s6Step174ExitGvRow.sign=s6Step174ExitGvOut := by decide +kernel
  have hi : s6Step174ExitGvRow.payload.drop 101=s6Step174ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step174ExitGv_retired] at result
  exact result

private theorem s6Step174ExitBank_rows : planWindowRowsLog s6Step174ExitGBefore [(s6Step174ExitGRow,182),(s6Step174ExitFRow,182),(s6Step174ExitFvRow,102),(s6Step174ExitGvRow,101)] [[],[],[],[]]=
    some (s6Step174ExitGvAfter,[s6Step174ExitGOut,s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut],(shrinkRow 777 s6Step174ExitGExtra ++ (shrinkRow 795 s6Step174ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step174ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step174ExitGvAfter [] []=some (s6Step174ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step174ExitGvBefore s6Step174ExitGvAfter s6Step174ExitGvAfter
    s6Step174ExitGvRow s6Step174ExitGvOut 101 [] [] [] []
    (shrinkRow 775 s6Step174ExitGvExtra) ([]) s6Step174ExitGv_Incoming s6Step174ExitGv_checked h4 s6Step174ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step174ExitFvBefore s6Step174ExitFvAfter s6Step174ExitGvAfter
    s6Step174ExitFvRow s6Step174ExitFvOut 102 [] [(s6Step174ExitGvRow,101)] [[]] [s6Step174ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step174ExitGvExtra ++ [])) s6Step174ExitFv_Incoming s6Step174ExitFv_checked h3 s6Step174ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step174ExitFBefore s6Step174ExitFAfter s6Step174ExitGvAfter
    s6Step174ExitFRow s6Step174ExitFOut 182 [] [(s6Step174ExitFvRow,102),(s6Step174ExitGvRow,101)] [[],[]] [s6Step174ExitFvOut,s6Step174ExitGvOut]
    (shrinkRow 795 s6Step174ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step174ExitGvExtra ++ []))) s6Step174ExitF_Incoming s6Step174ExitF_checked h2 s6Step174ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step174ExitGBefore s6Step174ExitGAfter s6Step174ExitGvAfter
    s6Step174ExitGRow s6Step174ExitGOut 182 [] [(s6Step174ExitFRow,182),(s6Step174ExitFvRow,102),(s6Step174ExitGvRow,101)] [[],[],[]] [s6Step174ExitFOut,s6Step174ExitFvOut,s6Step174ExitGvOut]
    (shrinkRow 777 s6Step174ExitGExtra) ((shrinkRow 795 s6Step174ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step174ExitGvExtra ++ [])))) s6Step174ExitG_Incoming s6Step174ExitG_checked h1 s6Step174ExitG_Outgoing
  exact h0

private theorem s6Step174ExitBank_checked : compileHmrBankResizeLog .exit s6Step174ExitGBefore ⟨s6Step174ExitFRow,s6Step174ExitGRow,s6Step174ExitFvRow,s6Step174ExitGvRow⟩ ⟨182,182,102,101⟩ [[],[],[],[]]=
    some (s6Step174ExitGvAfter,⟨s6Step174ExitFOut,s6Step174ExitGOut,s6Step174ExitFvOut,s6Step174ExitGvOut⟩,(shrinkRow 777 s6Step174ExitGExtra ++ (shrinkRow 795 s6Step174ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step174ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step174ExitBank_rows]
  rfl

private theorem s6Step174Add0_apart : Disjoint s6Step174Add0Arena.live s6Step174Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step174Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174Add0_card : s6Step174Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step174Add0_borrowed : s6Step174Add0Arena.checkBorrow (hmrHybridCount s6Step174Add0Arena s6Step174Add0B.length) s6Step174Add0Work=some s6Step174Add0During := by
  have len : s6Step174Add0Work.length=hmrHybridCount s6Step174Add0Arena s6Step174Add0B.length := by
    rw [hmrHybridCount,s6Step174Add0_card]
    decide +kernel
  have nd : s6Step174Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step174Add0Arena s6Step174Add0During s6Step174Add0Work.toFinset s6Step174Add0_bounded s6Step174Add0_apart rfl

private theorem s6Step174Add0_distinct : (863::778::890::(s6Step174Add0A++s6Step174Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174Add0_owned : (863::778::890::(s6Step174Add0A++s6Step174Add0B)).toFinset⊆s6Step174Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step174Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174Add0_checked : compileHmrHybridCinLog s6Step174Add0Arena 778 863 890 s6Step174Add0A s6Step174Add0B s6Step174Add0Work=some s6Step174Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step174Add0Arena s6Step174Add0During 778 863 890 s6Step174Add0A s6Step174Add0B s6Step174Add0Work
    (by decide +kernel) (by decide +kernel) s6Step174Add0_distinct
    (fun q hq => s6Step174Add0_owned (List.mem_toFinset.mpr hq)) s6Step174Add0_borrowed

private theorem s6Step174Add1_apart : Disjoint s6Step174Add1Arena.live s6Step174Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step174Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174Add1_card : s6Step174Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step174Add1_borrowed : s6Step174Add1Arena.checkBorrow (hmrHybridCount s6Step174Add1Arena s6Step174Add1B.length) s6Step174Add1Work=some s6Step174Add1During := by
  have len : s6Step174Add1Work.length=hmrHybridCount s6Step174Add1Arena s6Step174Add1B.length := by
    rw [hmrHybridCount,s6Step174Add1_card]
    decide +kernel
  have nd : s6Step174Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step174Add1Arena s6Step174Add1During s6Step174Add1Work.toFinset s6Step174Add1_bounded s6Step174Add1_apart rfl

private theorem s6Step174Add1_distinct : (863::778::890::(s6Step174Add1A++s6Step174Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174Add1_owned : (863::778::890::(s6Step174Add1A++s6Step174Add1B)).toFinset⊆s6Step174Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step174Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174Add1_checked : compileHmrHybridCinLog s6Step174Add1Arena 778 863 890 s6Step174Add1A s6Step174Add1B s6Step174Add1Work=some s6Step174Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step174Add1Arena s6Step174Add1During 778 863 890 s6Step174Add1A s6Step174Add1B s6Step174Add1Work
    (by decide +kernel) (by decide +kernel) s6Step174Add1_distinct
    (fun q hq => s6Step174Add1_owned (List.mem_toFinset.mpr hq)) s6Step174Add1_borrowed

private theorem s6Step174F4_apart : Disjoint (s6Step174Add0A++s6Step174Add0B).toFinset (s6Step174Add1A++s6Step174Add1B).toFinset := by
  have nd : ((s6Step174Add0A++s6Step174Add0B)++(s6Step174Add1A++s6Step174Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step174F4_carry : s6Step174F4FlagArena.checkBorrow 1 [890]=some s6Step174Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step174F4FlagArena,s6Step174HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step174F4FlagArena,s6Step174HeadFvAfter,s6Step174Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step174F4_distinct : (803::778::863::890::((s6Step174Add0A++s6Step174Add1A)++(s6Step174Add0B++s6Step174Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174F4_flag : s6Step174HeadFvAfter.checkBorrow 1 [863]=some s6Step174F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step174HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step174F4_owned : (803::778::((s6Step174Add0A++s6Step174Add1A)++(s6Step174Add0B++s6Step174Add1B))).toFinset⊆s6Step174HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step174HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174F4_checked : compileHmrHybridF4Log s6Step174HeadFvAfter 803 778 s6Step174Add0A s6Step174Add0B s6Step174Add1A s6Step174Add1B [863] [890] s6Step174Add0Work s6Step174Add1Work=some s6Step174F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step174HeadFvAfter s6Step174F4FlagArena s6Step174Add0Arena s6Step174Add0During s6Step174Add1During 803 778
    s6Step174Add0A s6Step174Add0B s6Step174Add1A s6Step174Add1B [863] [890] s6Step174Add0Work s6Step174Add1Work
    (fun q hq => s6Step174F4_owned (List.mem_toFinset.mpr hq)) s6Step174F4_flag s6Step174F4_carry
    s6Step174F4_distinct s6Step174F4_apart s6Step174Add0_checked s6Step174Add1_checked

private theorem s6Step174Front_branch : s6Step174FrontSigmaArena.checkBorrow 1 [778]=some s6Step174HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step174FrontSigmaArena,s6Step174EntryGvAfter,s6Step174EntryGAfter,arenaWires]
  · change s6Step174HeadGBefore.live=(s6Step174EntryGvAfter.live∪{803})∪{778}
    apply hmrArena_union_pair_of_filter_check s6Step174EntryGvAfter s6Step174HeadGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 778 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step174Front_entry : HmrFrontEntryValid s6Step174EntryFBefore s6Step174FrontBank 183 101 ⟨182,182,102,101⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step174FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step174EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step174EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(794,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step174FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step174Front_sigma : s6Step174EntryGvAfter.checkBorrow 1 [803]=some s6Step174FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step174EntryGvAfter,s6Step174EntryGAfter,arenaWires]
  · rfl

private def s6Step174HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174HeadFBefore : Arena := s6Step174HeadGAfter

private def s6Step174HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438],795⟩

private def s6Step174HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886],776⟩

private def s6Step174HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907],777⟩

private def s6Step174HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private theorem s6Step174HeadBank_incomingDistinct : ([s6Step174HeadGRow,s6Step174HeadFRow,s6Step174HeadGvRow,s6Step174HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174HeadF_Incoming : rowsOwned s6Step174HeadFBefore [s6Step174HeadFRow,s6Step174HeadGvRow,s6Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174HeadGRow,s6Step174HeadFRow,s6Step174HeadGvRow,s6Step174HeadFvRow] 1 s6Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step174HeadBank_outgoingOwned : rowsOwned s6Step174HeadFvAfter [s6Step174HeadGOut,s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step174HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step174HeadF_Outgoing : rowsOwned s6Step174HeadFvAfter [s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut] :=
  hmrRows_owned_drop s6Step174HeadFvAfter [s6Step174HeadGOut,s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut] 1 s6Step174HeadBank_outgoingOwned

private theorem s6Step174HeadF_distinct : (s6Step174HeadFRow.sign::s6Step174HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174HeadF_owned : (s6Step174HeadFRow.sign::s6Step174HeadFRow.payload).toFinset⊆s6Step174HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174HeadF_reserved : s6Step174HeadFBefore.reserve s6Step174HeadFFresh.toFinset=some s6Step174HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174HeadFFresh,arenaWires]
  · norm_num [s6Step174HeadFBefore,s6Step174HeadGAfter,s6Step174HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step174HeadFAfter,s6Step174HeadFBefore,s6Step174HeadGAfter,s6Step174HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step174HeadF_checked : planRowResizeLog s6Step174HeadFBefore s6Step174HeadFRow 184 s6Step174HeadFFresh=
    some (s6Step174HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 876],795⟩,growRow 795 s6Step174HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step174HeadFBefore s6Step174HeadFAfter s6Step174HeadFRow 184 s6Step174HeadFFresh
    s6Step174HeadF_distinct s6Step174HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174HeadF_reserved
  have rowEq : WindowRow.mk (s6Step174HeadFRow.payload++s6Step174HeadFFresh) s6Step174HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step174HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step174HeadFvBefore : Arena := s6Step174HeadGvAfter

private theorem s6Step174HeadFv_Incoming : rowsOwned s6Step174HeadFvBefore [s6Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174HeadGRow,s6Step174HeadFRow,s6Step174HeadGvRow,s6Step174HeadFvRow] 3 s6Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step174HeadFv_Outgoing : rowsOwned s6Step174HeadFvAfter [s6Step174HeadFvOut] :=
  hmrRows_owned_drop s6Step174HeadFvAfter [s6Step174HeadGOut,s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut] 3 s6Step174HeadBank_outgoingOwned

private theorem s6Step174HeadFv_distinct : (s6Step174HeadFvRow.sign::s6Step174HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174HeadFv_owned : (s6Step174HeadFvRow.sign::s6Step174HeadFvRow.payload).toFinset⊆s6Step174HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174HeadFv_reserved : s6Step174HeadFvBefore.reserve s6Step174HeadFvFresh.toFinset=some s6Step174HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174HeadFvFresh,arenaWires]
  · norm_num [s6Step174HeadFvBefore,s6Step174HeadGvAfter,s6Step174HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step174HeadFvAfter,s6Step174HeadFvBefore,s6Step174HeadGvAfter,s6Step174HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step174HeadFv_checked : planRowResizeLog s6Step174HeadFvBefore s6Step174HeadFvRow 102 s6Step174HeadFvFresh=
    some (s6Step174HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩,growRow 776 s6Step174HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step174HeadFvBefore s6Step174HeadFvAfter s6Step174HeadFvRow 102 s6Step174HeadFvFresh
    s6Step174HeadFv_distinct s6Step174HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step174HeadFvRow.payload++s6Step174HeadFvFresh) s6Step174HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step174HeadG_Incoming : rowsOwned s6Step174HeadGBefore [s6Step174HeadGRow,s6Step174HeadFRow,s6Step174HeadGvRow,s6Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174HeadGRow,s6Step174HeadFRow,s6Step174HeadGvRow,s6Step174HeadFvRow] 0 s6Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step174HeadG_Outgoing : rowsOwned s6Step174HeadFvAfter [s6Step174HeadGOut,s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut] :=
  hmrRows_owned_drop s6Step174HeadFvAfter [s6Step174HeadGOut,s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut] 0 s6Step174HeadBank_outgoingOwned

private theorem s6Step174HeadG_distinct : (s6Step174HeadGRow.sign::s6Step174HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174HeadG_owned : (s6Step174HeadGRow.sign::s6Step174HeadGRow.payload).toFinset⊆s6Step174HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step174HeadG_reserved : s6Step174HeadGBefore.reserve s6Step174HeadGFresh.toFinset=some s6Step174HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174HeadGFresh,arenaWires]
  · norm_num [s6Step174HeadGBefore,s6Step174HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step174HeadGBefore s6Step174HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(794,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step174HeadGFresh rfl rfl
    · norm_num [s6Step174HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step174HeadG_checked : planRowResizeLog s6Step174HeadGBefore s6Step174HeadGRow 184 s6Step174HeadGFresh=
    some (s6Step174HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907, 857],777⟩,growRow 777 s6Step174HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step174HeadGBefore s6Step174HeadGAfter s6Step174HeadGRow 184 s6Step174HeadGFresh
    s6Step174HeadG_distinct s6Step174HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174HeadG_reserved
  have rowEq : WindowRow.mk (s6Step174HeadGRow.payload++s6Step174HeadGFresh) s6Step174HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 907, 857],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step174HeadGvBefore : Arena := s6Step174HeadFAfter

private theorem s6Step174HeadGv_Incoming : rowsOwned s6Step174HeadGvBefore [s6Step174HeadGvRow,s6Step174HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step174HeadGRow,s6Step174HeadFRow,s6Step174HeadGvRow,s6Step174HeadFvRow] 2 s6Step174HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step174HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step174HeadGv_Outgoing : rowsOwned s6Step174HeadFvAfter [s6Step174HeadGvOut,s6Step174HeadFvOut] :=
  hmrRows_owned_drop s6Step174HeadFvAfter [s6Step174HeadGOut,s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut] 2 s6Step174HeadBank_outgoingOwned

private theorem s6Step174HeadGv_distinct : (s6Step174HeadGvRow.sign::s6Step174HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step174HeadGv_owned : (s6Step174HeadGvRow.sign::s6Step174HeadGvRow.payload).toFinset⊆s6Step174HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step174HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step174HeadGv_reserved : s6Step174HeadGvBefore.reserve s6Step174HeadGvFresh.toFinset=some s6Step174HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step174HeadGvFresh,arenaWires]
  · norm_num [s6Step174HeadGvBefore,s6Step174HeadFAfter,s6Step174HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step174HeadGvAfter,s6Step174HeadGvBefore,s6Step174HeadFAfter,s6Step174HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step174HeadGv_checked : planRowResizeLog s6Step174HeadGvBefore s6Step174HeadGvRow 102 s6Step174HeadGvFresh=
    some (s6Step174HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 922],775⟩,growRow 775 s6Step174HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step174HeadGvBefore s6Step174HeadGvAfter s6Step174HeadGvRow 102 s6Step174HeadGvFresh
    s6Step174HeadGv_distinct s6Step174HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step174HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step174HeadGvRow.payload++s6Step174HeadGvFresh) s6Step174HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step174HeadBank_rows : planWindowRowsLog s6Step174HeadGBefore [(s6Step174HeadGRow,184),(s6Step174HeadFRow,184),(s6Step174HeadGvRow,102),(s6Step174HeadFvRow,102)] [s6Step174HeadGFresh,s6Step174HeadFFresh,s6Step174HeadGvFresh,s6Step174HeadFvFresh]=
    some (s6Step174HeadFvAfter,[s6Step174HeadGOut,s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut],(growRow 777 s6Step174HeadGFresh ++ (growRow 795 s6Step174HeadFFresh ++ (growRow 775 s6Step174HeadGvFresh ++ (growRow 776 s6Step174HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step174HeadFvAfter [] []=some (s6Step174HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step174HeadFvBefore s6Step174HeadFvAfter s6Step174HeadFvAfter
    s6Step174HeadFvRow s6Step174HeadFvOut 102 s6Step174HeadFvFresh [] [] []
    (growRow 776 s6Step174HeadFvFresh) ([]) s6Step174HeadFv_Incoming s6Step174HeadFv_checked h4 s6Step174HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step174HeadGvBefore s6Step174HeadGvAfter s6Step174HeadFvAfter
    s6Step174HeadGvRow s6Step174HeadGvOut 102 s6Step174HeadGvFresh [(s6Step174HeadFvRow,102)] [s6Step174HeadFvFresh] [s6Step174HeadFvOut]
    (growRow 775 s6Step174HeadGvFresh) ((growRow 776 s6Step174HeadFvFresh ++ [])) s6Step174HeadGv_Incoming s6Step174HeadGv_checked h3 s6Step174HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step174HeadFBefore s6Step174HeadFAfter s6Step174HeadFvAfter
    s6Step174HeadFRow s6Step174HeadFOut 184 s6Step174HeadFFresh [(s6Step174HeadGvRow,102),(s6Step174HeadFvRow,102)] [s6Step174HeadGvFresh,s6Step174HeadFvFresh] [s6Step174HeadGvOut,s6Step174HeadFvOut]
    (growRow 795 s6Step174HeadFFresh) ((growRow 775 s6Step174HeadGvFresh ++ (growRow 776 s6Step174HeadFvFresh ++ []))) s6Step174HeadF_Incoming s6Step174HeadF_checked h2 s6Step174HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step174HeadGBefore s6Step174HeadGAfter s6Step174HeadFvAfter
    s6Step174HeadGRow s6Step174HeadGOut 184 s6Step174HeadGFresh [(s6Step174HeadFRow,184),(s6Step174HeadGvRow,102),(s6Step174HeadFvRow,102)] [s6Step174HeadFFresh,s6Step174HeadGvFresh,s6Step174HeadFvFresh] [s6Step174HeadFOut,s6Step174HeadGvOut,s6Step174HeadFvOut]
    (growRow 777 s6Step174HeadGFresh) ((growRow 795 s6Step174HeadFFresh ++ (growRow 775 s6Step174HeadGvFresh ++ (growRow 776 s6Step174HeadFvFresh ++ [])))) s6Step174HeadG_Incoming s6Step174HeadG_checked h1 s6Step174HeadG_Outgoing
  exact h0

private theorem s6Step174HeadBank_checked : compileHmrBankResizeLog .headroom s6Step174HeadGBefore ⟨s6Step174HeadFRow,s6Step174HeadGRow,s6Step174HeadFvRow,s6Step174HeadGvRow⟩ ⟨184,184,102,102⟩ [s6Step174HeadGFresh,s6Step174HeadFFresh,s6Step174HeadGvFresh,s6Step174HeadFvFresh]=
    some (s6Step174HeadFvAfter,⟨s6Step174HeadFOut,s6Step174HeadGOut,s6Step174HeadFvOut,s6Step174HeadGvOut⟩,(growRow 777 s6Step174HeadGFresh ++ (growRow 795 s6Step174HeadFFresh ++ (growRow 775 s6Step174HeadGvFresh ++ (growRow 776 s6Step174HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step174HeadBank_rows]
  rfl

private theorem s6Step174Front_checked : compileHmrSourceFrontLog s6Step174EntryFBefore s6Step174FrontBank 183 101 ⟨182,182,102,101⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step174FrontLog=some s6Step174FrontPlan := by
  have pairEq : s6Step174FrontPair=⟨s6Step174HeadFRow,s6Step174HeadGRow,s6Step174HeadFvRow,s6Step174HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step174FrontHead=⟨s6Step174ExitFRow,s6Step174ExitGRow,s6Step174ExitFvRow,s6Step174ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step174Add0A=s6Step174FrontHead.f.wires := by decide +kernel
  have gEq : s6Step174Add0B=s6Step174FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step174Add1A=s6Step174FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step174Add1B=s6Step174FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step174EntryFBefore s6Step174FrontBank 183 101 ⟨182,182,102,101⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step174FrontLog s6Step174FrontPlan
  · exact s6Step174Front_entry
  · exact s6Step174EntryBank_checked
  · exact s6Step174Front_sigma
  · rfl
  · exact s6Step174Front_branch
  · rfl
  · simpa only [s6Step174FrontPlan,pairEq] using s6Step174HeadBank_checked
  · simpa only [s6Step174FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step174F4_checked
  · exact s6Step174Counter_checked
  · rfl
  · simpa only [s6Step174FrontPlan,headEq] using s6Step174ExitBank_checked

private theorem s6Step174Complete_explicit_checked : compileHmrEarlyStepLog s6Step174EntryFBefore s6Step174FrontBank 183 101 ⟨182,182,102,101⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step174CompleteLog=some s6Step174CompletePlan := by
  let Q := s6Step174EarlyControlPlan
  have hq := s6Step174EarlyControl_plan_checked
  have fv1 : s6Step174CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step174CompleteOut.fv.payload[2]?.getD s6Step174CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step174CompleteOut.fv.payload[3]?.getD s6Step174CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step174CompleteOut.fv.payload[4]?.getD s6Step174CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step174EntryFBefore s6Step174EarlyControlArena s6Step174FrontBank 183 101 ⟨182,182,102,101⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step174CompleteLog s6Step174FrontPlan Q
    s6Step174Front_checked s6Step174Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step174Complete_owned s6Step174Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step174EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step174CompleteOut.fv.second (s6Step174CompleteOut.fv.payload[2]?.getD s6Step174CompleteOut.fv.sign) (s6Step174CompleteOut.fv.payload[3]?.getD s6Step174CompleteOut.fv.sign) (s6Step174CompleteOut.fv.payload[4]?.getD s6Step174CompleteOut.fv.sign) 778 42 s6Step174EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep174Arena : Arena := s6Step174EntryFBefore
def s6PrivateStep174Bank : WindowBank := s6Step174FrontBank
def s6PrivateStep174Spec : HmrSourceWalkStepLog := ⟨183,101,⟨182,182,102,101⟩,42,.early s6Step174CompleteLog⟩
def s6PrivateStep174Plan : HmrSourceStepPlan := .early s6Step174CompletePlan
theorem s6PrivateStep174_source : s6PrivateStep174Spec=s6ObservedLogs160[14] := rfl
theorem s6PrivateStep174_checked : compileHmrSourceStepLog s6PrivateStep174Arena s6PrivateStep174Bank
    s6PrivateStep174Spec.fgWidth s6PrivateStep174Spec.vWidth s6PrivateStep174Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 174 s6PrivateStep174Spec.need none s6PrivateStep174Spec.log=some s6PrivateStep174Plan := by
  change compileHmrSourceStepLog s6Step174EntryFBefore s6Step174FrontBank 183 101 ⟨182,182,102,101⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 174 42 none (.early s6Step174CompleteLog)=some (.early s6Step174CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 174<498)]
  rw [s6Step174Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
