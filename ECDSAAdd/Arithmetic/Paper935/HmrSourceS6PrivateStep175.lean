import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep173
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

private def s6Step175CompleteMoves : List (Wire × Wire) := [(880,181)]

private def s6Step175EarlyControlLog : HmrEarlyControlLog := ⟨[880, 907, 857, 876, 922],[863],[890],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step175FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [778]],[[922], [876], [907], [857]],[[], [], [], []]⟩,[803],[830],[863],[890],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903]⟩

private def s6Step175CompleteLog : HmrEarlyStepLog := ⟨s6Step175FrontLog,s6Step175CompleteMoves,s6Step175EarlyControlLog⟩

private def s6Step175ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step175ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step175ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩

private def s6Step175ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private def s6Step175FrontOut : WindowBank := ⟨s6Step175ExitFOut,s6Step175ExitGOut,s6Step175ExitFvOut,s6Step175ExitGvOut⟩

private def s6Step175CompleteOut : WindowBank := s6Step175FrontOut.repacked s6Step175CompleteMoves

private def s6Step175EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step175EarlyControlPositiveArena,[863],s6Step175EarlyControlEqualityArena,[890],⟨⟨803,false⟩,[⟨⟨863,false⟩,890⟩]⟩⟩

private def s6Step175EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,880⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,922⟩]⟩

private def s6Step175EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step175EarlyControlZeroArena,s6Step175EarlyControlZeroPlan,s6Step175EarlyControlClassPlan,s6Step175EarlyControlFlagArena,s6Step175EarlyControlFittedArena,s6Step175EarlyControlHistoryArena,s6Step175EarlyControlSigmaArena,s6Step175EarlyControlOutputArena,s6Step175EarlyControlLog⟩

private def s6Step175CounterWork : List Wire := [863, 890, 891, 903]

private theorem s6Step175Counter_bounded : s6Step175CounterWork.toFinset⊆arenaWires := by norm_num [s6Step175CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step175HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175CounterDuring : Arena := ⟨s6Step175HeadFvAfter.live∪s6Step175CounterWork.toFinset,Finset.union_subset s6Step175HeadFvAfter.bounded s6Step175Counter_bounded⟩

private def s6Step175EntryFFresh : List Wire := []

private def s6Step175EntryFvFresh : List Wire := []

private def s6Step175EntryGFresh : List Wire := []

private def s6Step175EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175EntryGvFresh : List Wire := [778]

private def s6Step175ExitFExtra : List Wire := [876]

private def s6Step175ExitFvExtra : List Wire := [857]

private def s6Step175ExitGExtra : List Wire := [181, 922]

private def s6Step175ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175ExitGvExtra : List Wire := [907]

private def s6Step175Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step175Add0_bounded : s6Step175Add0Work.toFinset⊆arenaWires := by
  have h : s6Step175Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step175Add0During : Arena := ⟨s6Step175Add0Arena.live∪s6Step175Add0Work.toFinset,Finset.union_subset s6Step175Add0Arena.bounded s6Step175Add0_bounded⟩

private def s6Step175Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step175Add1_bounded : s6Step175Add1Work.toFinset⊆arenaWires := by
  have h : s6Step175Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step175Add1During : Arena := ⟨s6Step175Add1Arena.live∪s6Step175Add1Work.toFinset,Finset.union_subset s6Step175Add1Arena.bounded s6Step175Add1_bounded⟩

private def s6Step175F4FlagArena : Arena := ⟨s6Step175HeadFvAfter.live∪{863},Finset.union_subset s6Step175HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step175F4Plan : HmrHybridF4Plan := ⟨s6Step175F4FlagArena,[863],s6Step175Add0Arena,[890],s6Step175Add0During,s6Step175Add0Work,s6Step175Add1During,s6Step175Add1Work⟩

private def s6Step175HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 876],795⟩

private def s6Step175HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step175HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 922],777⟩

private def s6Step175HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 907],775⟩

private def s6Step175FrontHead : WindowBank := ⟨s6Step175HeadFOut,s6Step175HeadGOut,s6Step175HeadFvOut,s6Step175HeadGvOut⟩

private def s6Step175EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step175EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step175EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩

private def s6Step175EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private def s6Step175FrontPair : WindowBank := ⟨s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut⟩

private def s6Step175FrontSigmaArena : Arena := ⟨s6Step175EntryGvAfter.live∪{803},Finset.union_subset s6Step175EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step175HeadFFresh : List Wire := [876]

private def s6Step175HeadFvFresh : List Wire := [857]

private def s6Step175HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175HeadGFresh : List Wire := [922]

private def s6Step175HeadGvFresh : List Wire := [907]

private def s6Step175FrontPlan : HmrSourceFront := ⟨s6Step175EntryGvAfter,s6Step175FrontPair,(growRow 795 s6Step175EntryFFresh ++ (growRow 777 s6Step175EntryGFresh ++ (growRow 776 s6Step175EntryFvFresh ++ (growRow 775 s6Step175EntryGvFresh ++ [])))),s6Step175FrontSigmaArena,[803],s6Step175HeadGBefore,[830],
  s6Step175HeadFvAfter,s6Step175FrontHead,(growRow 777 s6Step175HeadGFresh ++ (growRow 795 s6Step175HeadFFresh ++ (growRow 775 s6Step175HeadGvFresh ++ (growRow 776 s6Step175HeadFvFresh ++ [])))),s6Step175F4Plan,s6Step175CounterDuring,s6Step175CounterWork,s6Step175ExitGvAfter,s6Step175FrontOut,(shrinkRow 777 s6Step175ExitGExtra ++ (shrinkRow 795 s6Step175ExitFExtra ++ (shrinkRow 776 s6Step175ExitFvExtra ++ (shrinkRow 775 s6Step175ExitGvExtra ++ []))))⟩

private def s6Step175CompletePlan : HmrEarlyStepPlan := ⟨s6Step175FrontPlan,s6Step175EarlyControlArena,s6Step175EarlyControlPlan,s6Step175CompleteMoves⟩

private theorem s6Step175Complete_apart : List.Disjoint (s6Step175CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step175CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step175Complete_owned : (s6Step175CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step175CompleteRelocationMove0Borrowed : Arena := ⟨s6Step175ExitGvAfter.live∪{181},Finset.union_subset s6Step175ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step175CompleteRelocation_move0_owned : 880∈s6Step175ExitGvAfter.live := by norm_num [s6Step175ExitGvAfter,arenaWires]

private theorem s6Step175CompleteRelocation_move0_reserve : s6Step175ExitGvAfter.reserve {181}=some s6Step175CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step175ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step175CompleteRelocation_move0_retire : s6Step175CompleteRelocationMove0Borrowed.retireSet {880}=s6Step175EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step175CompleteRelocationMove0Borrowed s6Step175EarlyControlArena {880}
  change s6Step175EarlyControlArena.live=(s6Step175ExitGvAfter.live∪{181})\{880}
  apply hmrArena_update_of_filter_check s6Step175ExitGvAfter s6Step175EarlyControlArena (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [181] [880] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step175CompleteRelocation_checked : s6Step175ExitGvAfter.checkRepack [(880,181)]=some s6Step175EarlyControlArena := by
  have tail1 : s6Step175EarlyControlArena.checkRepack []=some s6Step175EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step175ExitGvAfter s6Step175CompleteRelocationMove0Borrowed s6Step175EarlyControlArena s6Step175EarlyControlArena 880 181 []
    s6Step175CompleteRelocation_move0_owned s6Step175CompleteRelocation_move0_reserve s6Step175CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step175Complete_repack : s6Step175ExitGvAfter.checkRepack s6Step175CompleteMoves=some s6Step175EarlyControlArena := by
  simpa only [s6Step175CompleteMoves] using s6Step175CompleteRelocation_checked

private theorem s6Step175EarlyControl_branchOwned : ([830] : List Wire).toFinset⊆s6Step175EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EarlyControl_branch : compileHmrBranchRetirement s6Step175EarlyControlSigmaArena 830=some s6Step175EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step175EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step175EarlyControlSigmaArena s6Step175EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [830] rfl rfl
    decide +kernel

private theorem s6Step175EarlyControl_classEqualityBorrow : s6Step175EarlyControlPositiveArena.checkBorrow (([803, 863] : List Wire).length-1) s6Step175EarlyControlLog.classWork=some s6Step175EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step175EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step175EarlyControlEqualityArena,s6Step175EarlyControlPositiveArena,s6Step175EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step175EarlyControl_classEqualityOwned : ([803, 863] : List Wire).toFinset⊆s6Step175EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175EarlyControl_classEquality : compileHmrEqualityLog s6Step175EarlyControlPositiveArena [803, 863] 0 s6Step175EarlyControlLog.classWork=some (s6Step175EarlyControlEqualityArena,s6Step175EarlyControlLog.classWork,s6Step175EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step175EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step175EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step175EarlyControl_classOwned : ([769, 922, 803] : List Wire).toFinset⊆s6Step175EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175EarlyControl_positiveBorrow : s6Step175EarlyControlZeroArena.checkBorrow (1) s6Step175EarlyControlLog.positiveWork=some s6Step175EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step175EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step175EarlyControlPositiveArena,s6Step175EarlyControlZeroArena,s6Step175EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step175EarlyControl_class : compileHmrSourceClassLog s6Step175EarlyControlZeroArena false 769 s6Step175EarlyControlZeroPlan.top 0 803 s6Step175EarlyControlLog.positiveWork s6Step175EarlyControlLog.classWork=some s6Step175EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step175EarlyControlClassPlan s6Step175EarlyControlZeroArena false 769 s6Step175EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step175EarlyControl_classOwned
  · exact s6Step175EarlyControl_positiveBorrow
  · exact s6Step175EarlyControl_classEquality

private theorem s6Step175EarlyControl_entryRecordOwned : ([830, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EarlyControl_fitBorrow : s6Step175EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step175EarlyControlLog.recordFresh=some s6Step175EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step175EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step175EarlyControlFittedArena,s6Step175EarlyControlFlagArena,s6Step175EarlyControlLog,arenaWires]

private theorem s6Step175EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step175EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175EarlyControl_fit : compileHmrRecordGrowLog s6Step175EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step175EarlyControlLog.recordFresh=some s6Step175EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step175EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step175EarlyControl_fitBorrow

private theorem s6Step175EarlyControl_flagsBorrow : s6Step175EarlyControlEqualityArena.checkBorrow (6) s6Step175EarlyControlLog.flagWork=some s6Step175EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step175EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step175EarlyControlFlagArena,s6Step175EarlyControlEqualityArena,s6Step175EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step175EarlyControl_flagsOwned : ([890, 253, 252, 251] : List Wire).toFinset⊆s6Step175EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175EarlyControl_flags : compileHmrFlagsLog s6Step175EarlyControlClassPlan.equalityArena s6Step175EarlyControlClassPlan.equality.top 253 252 251 s6Step175EarlyControlLog.flagWork=some s6Step175EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step175EarlyControl_flagsOwned⟩
  · exact s6Step175EarlyControl_flagsBorrow

private theorem s6Step175EarlyControl_historyBorrow : s6Step175EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step175EarlyControlLog.recordFresh=some s6Step175EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step175EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step175EarlyControlArena s6Step175EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step175EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step175EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EarlyControl_history : compileHmrRecordGrowLog s6Step175EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step175EarlyControlLog.recordFresh=some s6Step175EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step175EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step175EarlyControl_historyBorrow

private theorem s6Step175EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step175EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step175EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EarlyControl_sigmaRelease : s6Step175EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step175EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step175EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step175EarlyControlHistoryArena s6Step175EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step175EarlyControl_sigma : compileHmrSigmaDropLog s6Step175EarlyControlHistoryArena false 0 0 254 803 []=some s6Step175EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step175EarlyControl_sigmaOwned⟩
  · exact s6Step175EarlyControl_sigmaRelease

private theorem s6Step175EarlyControl_zeroBorrow : s6Step175EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step175EarlyControlLog.zeroWork=some s6Step175EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step175EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step175EarlyControlArena s6Step175EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step175EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step175EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step175EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step175EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step175EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EarlyControl_zero : compileHmrEqualityLog s6Step175EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step175EarlyControlLog.zeroWork=some (s6Step175EarlyControlZeroArena,s6Step175EarlyControlLog.zeroWork,s6Step175EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step175EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step175EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step175EarlyControl_logged : s6Step175EarlyControlPlan.Logged s6Step175EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 830 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step175EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step175EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step175EarlyControl_zero
  · exact s6Step175EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step175EarlyControl_flags
  · exact s6Step175EarlyControl_fit
  · exact s6Step175EarlyControl_history
  · exact s6Step175EarlyControl_sigma
  · exact s6Step175EarlyControl_branch

private theorem s6Step175EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step175EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 830 42 s6Step175EarlyControlLog=some s6Step175EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step175EarlyControlPlan s6Step175EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 830 42 s6Step175EarlyControl_logged

private def s6Step175EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step175EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step175EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩

private def s6Step175EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823],775⟩

private def s6Step175FrontBank : WindowBank := ⟨s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow⟩

private def s6Step175Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 876, 795]

private def s6Step175Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 922, 777]

private def s6Step175Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 776]

private def s6Step175Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 907, 775]

private theorem s6Step175Counter_apart : Disjoint s6Step175HeadFvAfter.live s6Step175CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step175HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175Counter_borrowed : s6Step175HeadFvAfter.checkBorrow 4 s6Step175CounterWork=some s6Step175CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step175HeadFvAfter s6Step175CounterDuring s6Step175CounterWork.toFinset s6Step175Counter_bounded s6Step175Counter_apart rfl

private theorem s6Step175Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step175HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step175HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175Counter_checked : compileHmrCounterStepLog s6Step175HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step175CounterWork=some s6Step175CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step175HeadFvAfter.live := fun q hq => s6Step175Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step175Counter_borrowed

private def s6Step175EntryFAfter : Arena := s6Step175EntryFBefore

private theorem s6Step175EntryBank_incomingDistinct : ([s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175EntryF_Incoming : rowsOwned s6Step175EntryFBefore [s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow] 0 s6Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175EntryBank_outgoingOwned : rowsOwned s6Step175EntryGvAfter [s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step175EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175EntryF_Outgoing : rowsOwned s6Step175EntryGvAfter [s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut] :=
  hmrRows_owned_drop s6Step175EntryGvAfter [s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut] 0 s6Step175EntryBank_outgoingOwned

private theorem s6Step175EntryF_distinct : (s6Step175EntryFRow.sign::s6Step175EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175EntryF_owned : (s6Step175EntryFRow.sign::s6Step175EntryFRow.payload).toFinset⊆s6Step175EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EntryF_reserved : s6Step175EntryFBefore.reserve s6Step175EntryFFresh.toFinset=some s6Step175EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175EntryFFresh,arenaWires]
  · norm_num [s6Step175EntryFBefore,s6Step175EntryFFresh,arenaWires]
  · simp only [s6Step175EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step175EntryF_checked : planRowResizeLog s6Step175EntryFBefore s6Step175EntryFRow 182 s6Step175EntryFFresh=
    some (s6Step175EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩,growRow 795 s6Step175EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step175EntryFBefore s6Step175EntryFAfter s6Step175EntryFRow 182 s6Step175EntryFFresh
    s6Step175EntryF_distinct s6Step175EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175EntryF_reserved
  have rowEq : WindowRow.mk (s6Step175EntryFRow.payload++s6Step175EntryFFresh) s6Step175EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step175EntryFvAfter : Arena := s6Step175EntryFBefore

private def s6Step175EntryFvBefore : Arena := s6Step175EntryFBefore

private theorem s6Step175EntryFv_Incoming : rowsOwned s6Step175EntryFvBefore [s6Step175EntryFvRow,s6Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow] 2 s6Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175EntryFv_Outgoing : rowsOwned s6Step175EntryGvAfter [s6Step175EntryFvOut,s6Step175EntryGvOut] :=
  hmrRows_owned_drop s6Step175EntryGvAfter [s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut] 2 s6Step175EntryBank_outgoingOwned

private theorem s6Step175EntryFv_distinct : (s6Step175EntryFvRow.sign::s6Step175EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175EntryFv_owned : (s6Step175EntryFvRow.sign::s6Step175EntryFvRow.payload).toFinset⊆s6Step175EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175EntryFvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EntryFv_reserved : s6Step175EntryFvBefore.reserve s6Step175EntryFvFresh.toFinset=some s6Step175EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175EntryFvFresh,arenaWires]
  · norm_num [s6Step175EntryFvBefore,s6Step175EntryFBefore,s6Step175EntryFvFresh,arenaWires]
  · simp only [s6Step175EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step175EntryFv_checked : planRowResizeLog s6Step175EntryFvBefore s6Step175EntryFvRow 102 s6Step175EntryFvFresh=
    some (s6Step175EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩,growRow 776 s6Step175EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step175EntryFvBefore s6Step175EntryFvAfter s6Step175EntryFvRow 102 s6Step175EntryFvFresh
    s6Step175EntryFv_distinct s6Step175EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step175EntryFvRow.payload++s6Step175EntryFvFresh) s6Step175EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step175EntryGAfter : Arena := s6Step175EntryFBefore

private def s6Step175EntryGBefore : Arena := s6Step175EntryFBefore

private theorem s6Step175EntryG_Incoming : rowsOwned s6Step175EntryGBefore [s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow] 1 s6Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175EntryG_Outgoing : rowsOwned s6Step175EntryGvAfter [s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut] :=
  hmrRows_owned_drop s6Step175EntryGvAfter [s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut] 1 s6Step175EntryBank_outgoingOwned

private theorem s6Step175EntryG_distinct : (s6Step175EntryGRow.sign::s6Step175EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175EntryG_owned : (s6Step175EntryGRow.sign::s6Step175EntryGRow.payload).toFinset⊆s6Step175EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175EntryGBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EntryG_reserved : s6Step175EntryGBefore.reserve s6Step175EntryGFresh.toFinset=some s6Step175EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175EntryGFresh,arenaWires]
  · norm_num [s6Step175EntryGBefore,s6Step175EntryFBefore,s6Step175EntryGFresh,arenaWires]
  · simp only [s6Step175EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step175EntryG_checked : planRowResizeLog s6Step175EntryGBefore s6Step175EntryGRow 182 s6Step175EntryGFresh=
    some (s6Step175EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩,growRow 777 s6Step175EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step175EntryGBefore s6Step175EntryGAfter s6Step175EntryGRow 182 s6Step175EntryGFresh
    s6Step175EntryG_distinct s6Step175EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175EntryG_reserved
  have rowEq : WindowRow.mk (s6Step175EntryGRow.payload++s6Step175EntryGFresh) s6Step175EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step175EntryGvBefore : Arena := s6Step175EntryFBefore

private theorem s6Step175EntryGv_Incoming : rowsOwned s6Step175EntryGvBefore [s6Step175EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow] 3 s6Step175EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175EntryGv_Outgoing : rowsOwned s6Step175EntryGvAfter [s6Step175EntryGvOut] :=
  hmrRows_owned_drop s6Step175EntryGvAfter [s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut] 3 s6Step175EntryBank_outgoingOwned

private theorem s6Step175EntryGv_distinct : (s6Step175EntryGvRow.sign::s6Step175EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175EntryGv_owned : (s6Step175EntryGvRow.sign::s6Step175EntryGvRow.payload).toFinset⊆s6Step175EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175EntryGvBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175EntryGv_reserved : s6Step175EntryGvBefore.reserve s6Step175EntryGvFresh.toFinset=some s6Step175EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175EntryGvFresh,arenaWires]
  · norm_num [s6Step175EntryGvBefore,s6Step175EntryFBefore,s6Step175EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step175EntryGvBefore s6Step175EntryGvAfter (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step175EntryGvFresh rfl rfl
    · norm_num [s6Step175EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step175EntryGv_checked : planRowResizeLog s6Step175EntryGvBefore s6Step175EntryGvRow 102 s6Step175EntryGvFresh=
    some (s6Step175EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩,growRow 775 s6Step175EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step175EntryGvBefore s6Step175EntryGvAfter s6Step175EntryGvRow 102 s6Step175EntryGvFresh
    s6Step175EntryGv_distinct s6Step175EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step175EntryGvRow.payload++s6Step175EntryGvFresh) s6Step175EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step175EntryBank_rows : planWindowRowsLog s6Step175EntryFBefore [(s6Step175EntryFRow,182),(s6Step175EntryGRow,182),(s6Step175EntryFvRow,102),(s6Step175EntryGvRow,102)] [s6Step175EntryFFresh,s6Step175EntryGFresh,s6Step175EntryFvFresh,s6Step175EntryGvFresh]=
    some (s6Step175EntryGvAfter,[s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut],(growRow 795 s6Step175EntryFFresh ++ (growRow 777 s6Step175EntryGFresh ++ (growRow 776 s6Step175EntryFvFresh ++ (growRow 775 s6Step175EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step175EntryGvAfter [] []=some (s6Step175EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step175EntryGvBefore s6Step175EntryGvAfter s6Step175EntryGvAfter
    s6Step175EntryGvRow s6Step175EntryGvOut 102 s6Step175EntryGvFresh [] [] []
    (growRow 775 s6Step175EntryGvFresh) ([]) s6Step175EntryGv_Incoming s6Step175EntryGv_checked h4 s6Step175EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step175EntryFvBefore s6Step175EntryFvAfter s6Step175EntryGvAfter
    s6Step175EntryFvRow s6Step175EntryFvOut 102 s6Step175EntryFvFresh [(s6Step175EntryGvRow,102)] [s6Step175EntryGvFresh] [s6Step175EntryGvOut]
    (growRow 776 s6Step175EntryFvFresh) ((growRow 775 s6Step175EntryGvFresh ++ [])) s6Step175EntryFv_Incoming s6Step175EntryFv_checked h3 s6Step175EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step175EntryGBefore s6Step175EntryGAfter s6Step175EntryGvAfter
    s6Step175EntryGRow s6Step175EntryGOut 182 s6Step175EntryGFresh [(s6Step175EntryFvRow,102),(s6Step175EntryGvRow,102)] [s6Step175EntryFvFresh,s6Step175EntryGvFresh] [s6Step175EntryFvOut,s6Step175EntryGvOut]
    (growRow 777 s6Step175EntryGFresh) ((growRow 776 s6Step175EntryFvFresh ++ (growRow 775 s6Step175EntryGvFresh ++ []))) s6Step175EntryG_Incoming s6Step175EntryG_checked h2 s6Step175EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step175EntryFBefore s6Step175EntryFAfter s6Step175EntryGvAfter
    s6Step175EntryFRow s6Step175EntryFOut 182 s6Step175EntryFFresh [(s6Step175EntryGRow,182),(s6Step175EntryFvRow,102),(s6Step175EntryGvRow,102)] [s6Step175EntryGFresh,s6Step175EntryFvFresh,s6Step175EntryGvFresh] [s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut]
    (growRow 795 s6Step175EntryFFresh) ((growRow 777 s6Step175EntryGFresh ++ (growRow 776 s6Step175EntryFvFresh ++ (growRow 775 s6Step175EntryGvFresh ++ [])))) s6Step175EntryF_Incoming s6Step175EntryF_checked h1 s6Step175EntryF_Outgoing
  exact h0

private theorem s6Step175EntryBank_checked : compileHmrBankResizeLog .entry s6Step175EntryFBefore ⟨s6Step175EntryFRow,s6Step175EntryGRow,s6Step175EntryFvRow,s6Step175EntryGvRow⟩ ⟨182,182,102,102⟩ [s6Step175EntryFFresh,s6Step175EntryGFresh,s6Step175EntryFvFresh,s6Step175EntryGvFresh]=
    some (s6Step175EntryGvAfter,⟨s6Step175EntryFOut,s6Step175EntryGOut,s6Step175EntryFvOut,s6Step175EntryGvOut⟩,(growRow 795 s6Step175EntryFFresh ++ (growRow 777 s6Step175EntryGFresh ++ (growRow 776 s6Step175EntryFvFresh ++ (growRow 775 s6Step175EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step175EntryBank_rows]
  rfl

private def s6Step175ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175ExitFBefore : Arena := s6Step175ExitGAfter

private def s6Step175ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 876],795⟩

private def s6Step175ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step175ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 922],777⟩

private def s6Step175ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 907],775⟩

private theorem s6Step175ExitBank_incomingDistinct : ([s6Step175ExitGRow,s6Step175ExitFRow,s6Step175ExitFvRow,s6Step175ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175ExitF_Incoming : rowsOwned s6Step175ExitFBefore [s6Step175ExitFRow,s6Step175ExitFvRow,s6Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175ExitGRow,s6Step175ExitFRow,s6Step175ExitFvRow,s6Step175ExitGvRow] 1 s6Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175ExitFBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step175ExitBank_outgoingOwned : rowsOwned s6Step175ExitGvAfter [s6Step175ExitGOut,s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step175ExitGvAfter (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175ExitF_Outgoing : rowsOwned s6Step175ExitGvAfter [s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut] :=
  hmrRows_owned_drop s6Step175ExitGvAfter [s6Step175ExitGOut,s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut] 1 s6Step175ExitBank_outgoingOwned

private theorem s6Step175ExitF_distinct : (s6Step175ExitFRow.sign::s6Step175ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175ExitF_owned : (s6Step175ExitFRow.sign::s6Step175ExitFRow.payload).toFinset⊆s6Step175ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175ExitFBefore (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175ExitF_retired : s6Step175ExitFBefore.retireSet s6Step175ExitFExtra.toFinset=s6Step175ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step175ExitFBefore s6Step175ExitFAfter s6Step175ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step175ExitFBefore s6Step175ExitFAfter (fun q => (0≤q ∧ q<181) ∨ (182≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step175ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step175ExitF_checked : planRowResizeLog s6Step175ExitFBefore s6Step175ExitFRow 182 []=
    some (s6Step175ExitFAfter,s6Step175ExitFOut,shrinkRow 795 s6Step175ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step175ExitFBefore s6Step175ExitFRow 182 s6Step175ExitF_distinct s6Step175ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step175ExitFRow.payload.take 182) s6Step175ExitFRow.sign=s6Step175ExitFOut := by decide +kernel
  have hi : s6Step175ExitFRow.payload.drop 182=s6Step175ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step175ExitF_retired] at result
  exact result

private def s6Step175ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175ExitFvBefore : Arena := s6Step175ExitFAfter

private theorem s6Step175ExitFv_Incoming : rowsOwned s6Step175ExitFvBefore [s6Step175ExitFvRow,s6Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175ExitGRow,s6Step175ExitFRow,s6Step175ExitFvRow,s6Step175ExitGvRow] 2 s6Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175ExitFvBefore (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175ExitFv_Outgoing : rowsOwned s6Step175ExitGvAfter [s6Step175ExitFvOut,s6Step175ExitGvOut] :=
  hmrRows_owned_drop s6Step175ExitGvAfter [s6Step175ExitGOut,s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut] 2 s6Step175ExitBank_outgoingOwned

private theorem s6Step175ExitFv_distinct : (s6Step175ExitFvRow.sign::s6Step175ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175ExitFv_owned : (s6Step175ExitFvRow.sign::s6Step175ExitFvRow.payload).toFinset⊆s6Step175ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175ExitFvBefore (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175ExitFv_retired : s6Step175ExitFvBefore.retireSet s6Step175ExitFvExtra.toFinset=s6Step175ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step175ExitFvBefore s6Step175ExitFvAfter s6Step175ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step175ExitFvBefore s6Step175ExitFvAfter (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step175ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step175ExitFv_checked : planRowResizeLog s6Step175ExitFvBefore s6Step175ExitFvRow 102 []=
    some (s6Step175ExitFvAfter,s6Step175ExitFvOut,shrinkRow 776 s6Step175ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step175ExitFvBefore s6Step175ExitFvRow 102 s6Step175ExitFv_distinct s6Step175ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step175ExitFvRow.payload.take 102) s6Step175ExitFvRow.sign=s6Step175ExitFvOut := by decide +kernel
  have hi : s6Step175ExitFvRow.payload.drop 102=s6Step175ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step175ExitFv_retired] at result
  exact result

private def s6Step175ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step175ExitG_Incoming : rowsOwned s6Step175ExitGBefore [s6Step175ExitGRow,s6Step175ExitFRow,s6Step175ExitFvRow,s6Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175ExitGRow,s6Step175ExitFRow,s6Step175ExitFvRow,s6Step175ExitGvRow] 0 s6Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step175ExitG_Outgoing : rowsOwned s6Step175ExitGvAfter [s6Step175ExitGOut,s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut] :=
  hmrRows_owned_drop s6Step175ExitGvAfter [s6Step175ExitGOut,s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut] 0 s6Step175ExitBank_outgoingOwned

private theorem s6Step175ExitG_distinct : (s6Step175ExitGRow.sign::s6Step175ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175ExitG_owned : (s6Step175ExitGRow.sign::s6Step175ExitGRow.payload).toFinset⊆s6Step175ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175ExitG_retired : s6Step175ExitGBefore.retireSet s6Step175ExitGExtra.toFinset=s6Step175ExitGAfter := by
  unfold Arena.retireSet s6Step175ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step175ExitGBefore,s6Step175ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step175ExitG_checked : planRowResizeLog s6Step175ExitGBefore s6Step175ExitGRow 181 []=
    some (s6Step175ExitGAfter,s6Step175ExitGOut,shrinkRow 777 s6Step175ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step175ExitGBefore s6Step175ExitGRow 181 s6Step175ExitG_distinct s6Step175ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step175ExitGRow.payload.take 181) s6Step175ExitGRow.sign=s6Step175ExitGOut := by decide +kernel
  have hi : s6Step175ExitGRow.payload.drop 181=s6Step175ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step175ExitG_retired] at result
  exact result

private def s6Step175ExitGvBefore : Arena := s6Step175ExitFvAfter

private theorem s6Step175ExitGv_Incoming : rowsOwned s6Step175ExitGvBefore [s6Step175ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175ExitGRow,s6Step175ExitFRow,s6Step175ExitFvRow,s6Step175ExitGvRow] 3 s6Step175ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175ExitGvBefore (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175ExitGv_Outgoing : rowsOwned s6Step175ExitGvAfter [s6Step175ExitGvOut] :=
  hmrRows_owned_drop s6Step175ExitGvAfter [s6Step175ExitGOut,s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut] 3 s6Step175ExitBank_outgoingOwned

private theorem s6Step175ExitGv_distinct : (s6Step175ExitGvRow.sign::s6Step175ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175ExitGv_owned : (s6Step175ExitGvRow.sign::s6Step175ExitGvRow.payload).toFinset⊆s6Step175ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175ExitGvBefore (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175ExitGv_retired : s6Step175ExitGvBefore.retireSet s6Step175ExitGvExtra.toFinset=s6Step175ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step175ExitGvBefore s6Step175ExitGvAfter s6Step175ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step175ExitGvBefore s6Step175ExitGvAfter (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,181),(182,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step175ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step175ExitGv_checked : planRowResizeLog s6Step175ExitGvBefore s6Step175ExitGvRow 102 []=
    some (s6Step175ExitGvAfter,s6Step175ExitGvOut,shrinkRow 775 s6Step175ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step175ExitGvBefore s6Step175ExitGvRow 102 s6Step175ExitGv_distinct s6Step175ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step175ExitGvRow.payload.take 102) s6Step175ExitGvRow.sign=s6Step175ExitGvOut := by decide +kernel
  have hi : s6Step175ExitGvRow.payload.drop 102=s6Step175ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step175ExitGv_retired] at result
  exact result

private theorem s6Step175ExitBank_rows : planWindowRowsLog s6Step175ExitGBefore [(s6Step175ExitGRow,181),(s6Step175ExitFRow,182),(s6Step175ExitFvRow,102),(s6Step175ExitGvRow,102)] [[],[],[],[]]=
    some (s6Step175ExitGvAfter,[s6Step175ExitGOut,s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut],(shrinkRow 777 s6Step175ExitGExtra ++ (shrinkRow 795 s6Step175ExitFExtra ++ (shrinkRow 776 s6Step175ExitFvExtra ++ (shrinkRow 775 s6Step175ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step175ExitGvAfter [] []=some (s6Step175ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step175ExitGvBefore s6Step175ExitGvAfter s6Step175ExitGvAfter
    s6Step175ExitGvRow s6Step175ExitGvOut 102 [] [] [] []
    (shrinkRow 775 s6Step175ExitGvExtra) ([]) s6Step175ExitGv_Incoming s6Step175ExitGv_checked h4 s6Step175ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step175ExitFvBefore s6Step175ExitFvAfter s6Step175ExitGvAfter
    s6Step175ExitFvRow s6Step175ExitFvOut 102 [] [(s6Step175ExitGvRow,102)] [[]] [s6Step175ExitGvOut]
    (shrinkRow 776 s6Step175ExitFvExtra) ((shrinkRow 775 s6Step175ExitGvExtra ++ [])) s6Step175ExitFv_Incoming s6Step175ExitFv_checked h3 s6Step175ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step175ExitFBefore s6Step175ExitFAfter s6Step175ExitGvAfter
    s6Step175ExitFRow s6Step175ExitFOut 182 [] [(s6Step175ExitFvRow,102),(s6Step175ExitGvRow,102)] [[],[]] [s6Step175ExitFvOut,s6Step175ExitGvOut]
    (shrinkRow 795 s6Step175ExitFExtra) ((shrinkRow 776 s6Step175ExitFvExtra ++ (shrinkRow 775 s6Step175ExitGvExtra ++ []))) s6Step175ExitF_Incoming s6Step175ExitF_checked h2 s6Step175ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step175ExitGBefore s6Step175ExitGAfter s6Step175ExitGvAfter
    s6Step175ExitGRow s6Step175ExitGOut 181 [] [(s6Step175ExitFRow,182),(s6Step175ExitFvRow,102),(s6Step175ExitGvRow,102)] [[],[],[]] [s6Step175ExitFOut,s6Step175ExitFvOut,s6Step175ExitGvOut]
    (shrinkRow 777 s6Step175ExitGExtra) ((shrinkRow 795 s6Step175ExitFExtra ++ (shrinkRow 776 s6Step175ExitFvExtra ++ (shrinkRow 775 s6Step175ExitGvExtra ++ [])))) s6Step175ExitG_Incoming s6Step175ExitG_checked h1 s6Step175ExitG_Outgoing
  exact h0

private theorem s6Step175ExitBank_checked : compileHmrBankResizeLog .exit s6Step175ExitGBefore ⟨s6Step175ExitFRow,s6Step175ExitGRow,s6Step175ExitFvRow,s6Step175ExitGvRow⟩ ⟨182,181,102,102⟩ [[],[],[],[]]=
    some (s6Step175ExitGvAfter,⟨s6Step175ExitFOut,s6Step175ExitGOut,s6Step175ExitFvOut,s6Step175ExitGvOut⟩,(shrinkRow 777 s6Step175ExitGExtra ++ (shrinkRow 795 s6Step175ExitFExtra ++ (shrinkRow 776 s6Step175ExitFvExtra ++ (shrinkRow 775 s6Step175ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step175ExitBank_rows]
  rfl

private theorem s6Step175Add0_apart : Disjoint s6Step175Add0Arena.live s6Step175Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step175Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175Add0_card : s6Step175Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step175Add0_borrowed : s6Step175Add0Arena.checkBorrow (hmrHybridCount s6Step175Add0Arena s6Step175Add0B.length) s6Step175Add0Work=some s6Step175Add0During := by
  have len : s6Step175Add0Work.length=hmrHybridCount s6Step175Add0Arena s6Step175Add0B.length := by
    rw [hmrHybridCount,s6Step175Add0_card]
    decide +kernel
  have nd : s6Step175Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step175Add0Arena s6Step175Add0During s6Step175Add0Work.toFinset s6Step175Add0_bounded s6Step175Add0_apart rfl

private theorem s6Step175Add0_distinct : (863::830::890::(s6Step175Add0A++s6Step175Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175Add0_owned : (863::830::890::(s6Step175Add0A++s6Step175Add0B)).toFinset⊆s6Step175Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step175Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175Add0_checked : compileHmrHybridCinLog s6Step175Add0Arena 830 863 890 s6Step175Add0A s6Step175Add0B s6Step175Add0Work=some s6Step175Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step175Add0Arena s6Step175Add0During 830 863 890 s6Step175Add0A s6Step175Add0B s6Step175Add0Work
    (by decide +kernel) (by decide +kernel) s6Step175Add0_distinct
    (fun q hq => s6Step175Add0_owned (List.mem_toFinset.mpr hq)) s6Step175Add0_borrowed

private theorem s6Step175Add1_apart : Disjoint s6Step175Add1Arena.live s6Step175Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step175Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175Add1_card : s6Step175Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step175Add1_borrowed : s6Step175Add1Arena.checkBorrow (hmrHybridCount s6Step175Add1Arena s6Step175Add1B.length) s6Step175Add1Work=some s6Step175Add1During := by
  have len : s6Step175Add1Work.length=hmrHybridCount s6Step175Add1Arena s6Step175Add1B.length := by
    rw [hmrHybridCount,s6Step175Add1_card]
    decide +kernel
  have nd : s6Step175Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step175Add1Arena s6Step175Add1During s6Step175Add1Work.toFinset s6Step175Add1_bounded s6Step175Add1_apart rfl

private theorem s6Step175Add1_distinct : (863::830::890::(s6Step175Add1A++s6Step175Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175Add1_owned : (863::830::890::(s6Step175Add1A++s6Step175Add1B)).toFinset⊆s6Step175Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step175Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175Add1_checked : compileHmrHybridCinLog s6Step175Add1Arena 830 863 890 s6Step175Add1A s6Step175Add1B s6Step175Add1Work=some s6Step175Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step175Add1Arena s6Step175Add1During 830 863 890 s6Step175Add1A s6Step175Add1B s6Step175Add1Work
    (by decide +kernel) (by decide +kernel) s6Step175Add1_distinct
    (fun q hq => s6Step175Add1_owned (List.mem_toFinset.mpr hq)) s6Step175Add1_borrowed

private theorem s6Step175F4_apart : Disjoint (s6Step175Add0A++s6Step175Add0B).toFinset (s6Step175Add1A++s6Step175Add1B).toFinset := by
  have nd : ((s6Step175Add0A++s6Step175Add0B)++(s6Step175Add1A++s6Step175Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step175F4_carry : s6Step175F4FlagArena.checkBorrow 1 [890]=some s6Step175Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step175F4FlagArena,s6Step175HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step175F4FlagArena,s6Step175HeadFvAfter,s6Step175Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step175F4_distinct : (803::830::863::890::((s6Step175Add0A++s6Step175Add1A)++(s6Step175Add0B++s6Step175Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175F4_flag : s6Step175HeadFvAfter.checkBorrow 1 [863]=some s6Step175F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step175HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step175F4_owned : (803::830::((s6Step175Add0A++s6Step175Add1A)++(s6Step175Add0B++s6Step175Add1B))).toFinset⊆s6Step175HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step175HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175F4_checked : compileHmrHybridF4Log s6Step175HeadFvAfter 803 830 s6Step175Add0A s6Step175Add0B s6Step175Add1A s6Step175Add1B [863] [890] s6Step175Add0Work s6Step175Add1Work=some s6Step175F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step175HeadFvAfter s6Step175F4FlagArena s6Step175Add0Arena s6Step175Add0During s6Step175Add1During 803 830
    s6Step175Add0A s6Step175Add0B s6Step175Add1A s6Step175Add1B [863] [890] s6Step175Add0Work s6Step175Add1Work
    (fun q hq => s6Step175F4_owned (List.mem_toFinset.mpr hq)) s6Step175F4_flag s6Step175F4_carry
    s6Step175F4_distinct s6Step175F4_apart s6Step175Add0_checked s6Step175Add1_checked

private theorem s6Step175Front_branch : s6Step175FrontSigmaArena.checkBorrow 1 [830]=some s6Step175HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step175FrontSigmaArena,s6Step175EntryGvAfter,arenaWires]
  · change s6Step175HeadGBefore.live=(s6Step175EntryGvAfter.live∪{803})∪{830}
    apply hmrArena_union_pair_of_filter_check s6Step175EntryGvAfter s6Step175HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 830 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step175Front_entry : HmrFrontEntryValid s6Step175EntryFBefore s6Step175FrontBank 182 102 ⟨182,181,102,102⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step175FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step175EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step175EntryFBefore (fun q => ([(0,778),(779,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step175FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step175Front_sigma : s6Step175EntryGvAfter.checkBorrow 1 [803]=some s6Step175FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step175EntryGvAfter,arenaWires]
  · rfl

private def s6Step175HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step175HeadFBefore : Arena := s6Step175HeadGAfter

private def s6Step175HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step175HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step175HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181],777⟩

private def s6Step175HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private theorem s6Step175HeadBank_incomingDistinct : ([s6Step175HeadGRow,s6Step175HeadFRow,s6Step175HeadGvRow,s6Step175HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175HeadF_Incoming : rowsOwned s6Step175HeadFBefore [s6Step175HeadFRow,s6Step175HeadGvRow,s6Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175HeadGRow,s6Step175HeadFRow,s6Step175HeadGvRow,s6Step175HeadFvRow] 1 s6Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175HeadBank_outgoingOwned : rowsOwned s6Step175HeadFvAfter [s6Step175HeadGOut,s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step175HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step175HeadF_Outgoing : rowsOwned s6Step175HeadFvAfter [s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut] :=
  hmrRows_owned_drop s6Step175HeadFvAfter [s6Step175HeadGOut,s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut] 1 s6Step175HeadBank_outgoingOwned

private theorem s6Step175HeadF_distinct : (s6Step175HeadFRow.sign::s6Step175HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175HeadF_owned : (s6Step175HeadFRow.sign::s6Step175HeadFRow.payload).toFinset⊆s6Step175HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175HeadF_reserved : s6Step175HeadFBefore.reserve s6Step175HeadFFresh.toFinset=some s6Step175HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175HeadFFresh,arenaWires]
  · norm_num [s6Step175HeadFBefore,s6Step175HeadGAfter,s6Step175HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step175HeadFBefore s6Step175HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step175HeadFFresh rfl rfl
    · norm_num [s6Step175HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step175HeadF_checked : planRowResizeLog s6Step175HeadFBefore s6Step175HeadFRow 183 s6Step175HeadFFresh=
    some (s6Step175HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 876],795⟩,growRow 795 s6Step175HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step175HeadFBefore s6Step175HeadFAfter s6Step175HeadFRow 183 s6Step175HeadFFresh
    s6Step175HeadF_distinct s6Step175HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175HeadF_reserved
  have rowEq : WindowRow.mk (s6Step175HeadFRow.payload++s6Step175HeadFFresh) s6Step175HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step175HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step175HeadFvBefore : Arena := s6Step175HeadGvAfter

private theorem s6Step175HeadFv_Incoming : rowsOwned s6Step175HeadFvBefore [s6Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175HeadGRow,s6Step175HeadFRow,s6Step175HeadGvRow,s6Step175HeadFvRow] 3 s6Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step175HeadFv_Outgoing : rowsOwned s6Step175HeadFvAfter [s6Step175HeadFvOut] :=
  hmrRows_owned_drop s6Step175HeadFvAfter [s6Step175HeadGOut,s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut] 3 s6Step175HeadBank_outgoingOwned

private theorem s6Step175HeadFv_distinct : (s6Step175HeadFvRow.sign::s6Step175HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175HeadFv_owned : (s6Step175HeadFvRow.sign::s6Step175HeadFvRow.payload).toFinset⊆s6Step175HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175HeadFv_reserved : s6Step175HeadFvBefore.reserve s6Step175HeadFvFresh.toFinset=some s6Step175HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175HeadFvFresh,arenaWires]
  · norm_num [s6Step175HeadFvBefore,s6Step175HeadGvAfter,s6Step175HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step175HeadFvAfter,s6Step175HeadFvBefore,s6Step175HeadGvAfter,s6Step175HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step175HeadFv_checked : planRowResizeLog s6Step175HeadFvBefore s6Step175HeadFvRow 103 s6Step175HeadFvFresh=
    some (s6Step175HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩,growRow 776 s6Step175HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step175HeadFvBefore s6Step175HeadFvAfter s6Step175HeadFvRow 103 s6Step175HeadFvFresh
    s6Step175HeadFv_distinct s6Step175HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step175HeadFvRow.payload++s6Step175HeadFvFresh) s6Step175HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step175HeadG_Incoming : rowsOwned s6Step175HeadGBefore [s6Step175HeadGRow,s6Step175HeadFRow,s6Step175HeadGvRow,s6Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175HeadGRow,s6Step175HeadFRow,s6Step175HeadGvRow,s6Step175HeadFvRow] 0 s6Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step175HeadG_Outgoing : rowsOwned s6Step175HeadFvAfter [s6Step175HeadGOut,s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut] :=
  hmrRows_owned_drop s6Step175HeadFvAfter [s6Step175HeadGOut,s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut] 0 s6Step175HeadBank_outgoingOwned

private theorem s6Step175HeadG_distinct : (s6Step175HeadGRow.sign::s6Step175HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175HeadG_owned : (s6Step175HeadGRow.sign::s6Step175HeadGRow.payload).toFinset⊆s6Step175HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step175HeadG_reserved : s6Step175HeadGBefore.reserve s6Step175HeadGFresh.toFinset=some s6Step175HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175HeadGFresh,arenaWires]
  · norm_num [s6Step175HeadGBefore,s6Step175HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step175HeadGBefore s6Step175HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step175HeadGFresh rfl rfl
    · norm_num [s6Step175HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step175HeadG_checked : planRowResizeLog s6Step175HeadGBefore s6Step175HeadGRow 183 s6Step175HeadGFresh=
    some (s6Step175HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 922],777⟩,growRow 777 s6Step175HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step175HeadGBefore s6Step175HeadGAfter s6Step175HeadGRow 183 s6Step175HeadGFresh
    s6Step175HeadG_distinct s6Step175HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175HeadG_reserved
  have rowEq : WindowRow.mk (s6Step175HeadGRow.payload++s6Step175HeadGFresh) s6Step175HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 922],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step175HeadGvBefore : Arena := s6Step175HeadFAfter

private theorem s6Step175HeadGv_Incoming : rowsOwned s6Step175HeadGvBefore [s6Step175HeadGvRow,s6Step175HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step175HeadGRow,s6Step175HeadFRow,s6Step175HeadGvRow,s6Step175HeadFvRow] 2 s6Step175HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step175HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step175HeadGv_Outgoing : rowsOwned s6Step175HeadFvAfter [s6Step175HeadGvOut,s6Step175HeadFvOut] :=
  hmrRows_owned_drop s6Step175HeadFvAfter [s6Step175HeadGOut,s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut] 2 s6Step175HeadBank_outgoingOwned

private theorem s6Step175HeadGv_distinct : (s6Step175HeadGvRow.sign::s6Step175HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step175HeadGv_owned : (s6Step175HeadGvRow.sign::s6Step175HeadGvRow.payload).toFinset⊆s6Step175HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step175HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<857) ∨ (858≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step175HeadGv_reserved : s6Step175HeadGvBefore.reserve s6Step175HeadGvFresh.toFinset=some s6Step175HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step175HeadGvFresh,arenaWires]
  · norm_num [s6Step175HeadGvBefore,s6Step175HeadFAfter,s6Step175HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step175HeadGvAfter,s6Step175HeadGvBefore,s6Step175HeadFAfter,s6Step175HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step175HeadGv_checked : planRowResizeLog s6Step175HeadGvBefore s6Step175HeadGvRow 103 s6Step175HeadGvFresh=
    some (s6Step175HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 907],775⟩,growRow 775 s6Step175HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step175HeadGvBefore s6Step175HeadGvAfter s6Step175HeadGvRow 103 s6Step175HeadGvFresh
    s6Step175HeadGv_distinct s6Step175HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step175HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step175HeadGvRow.payload++s6Step175HeadGvFresh) s6Step175HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 907],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step175HeadBank_rows : planWindowRowsLog s6Step175HeadGBefore [(s6Step175HeadGRow,183),(s6Step175HeadFRow,183),(s6Step175HeadGvRow,103),(s6Step175HeadFvRow,103)] [s6Step175HeadGFresh,s6Step175HeadFFresh,s6Step175HeadGvFresh,s6Step175HeadFvFresh]=
    some (s6Step175HeadFvAfter,[s6Step175HeadGOut,s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut],(growRow 777 s6Step175HeadGFresh ++ (growRow 795 s6Step175HeadFFresh ++ (growRow 775 s6Step175HeadGvFresh ++ (growRow 776 s6Step175HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step175HeadFvAfter [] []=some (s6Step175HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step175HeadFvBefore s6Step175HeadFvAfter s6Step175HeadFvAfter
    s6Step175HeadFvRow s6Step175HeadFvOut 103 s6Step175HeadFvFresh [] [] []
    (growRow 776 s6Step175HeadFvFresh) ([]) s6Step175HeadFv_Incoming s6Step175HeadFv_checked h4 s6Step175HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step175HeadGvBefore s6Step175HeadGvAfter s6Step175HeadFvAfter
    s6Step175HeadGvRow s6Step175HeadGvOut 103 s6Step175HeadGvFresh [(s6Step175HeadFvRow,103)] [s6Step175HeadFvFresh] [s6Step175HeadFvOut]
    (growRow 775 s6Step175HeadGvFresh) ((growRow 776 s6Step175HeadFvFresh ++ [])) s6Step175HeadGv_Incoming s6Step175HeadGv_checked h3 s6Step175HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step175HeadFBefore s6Step175HeadFAfter s6Step175HeadFvAfter
    s6Step175HeadFRow s6Step175HeadFOut 183 s6Step175HeadFFresh [(s6Step175HeadGvRow,103),(s6Step175HeadFvRow,103)] [s6Step175HeadGvFresh,s6Step175HeadFvFresh] [s6Step175HeadGvOut,s6Step175HeadFvOut]
    (growRow 795 s6Step175HeadFFresh) ((growRow 775 s6Step175HeadGvFresh ++ (growRow 776 s6Step175HeadFvFresh ++ []))) s6Step175HeadF_Incoming s6Step175HeadF_checked h2 s6Step175HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step175HeadGBefore s6Step175HeadGAfter s6Step175HeadFvAfter
    s6Step175HeadGRow s6Step175HeadGOut 183 s6Step175HeadGFresh [(s6Step175HeadFRow,183),(s6Step175HeadGvRow,103),(s6Step175HeadFvRow,103)] [s6Step175HeadFFresh,s6Step175HeadGvFresh,s6Step175HeadFvFresh] [s6Step175HeadFOut,s6Step175HeadGvOut,s6Step175HeadFvOut]
    (growRow 777 s6Step175HeadGFresh) ((growRow 795 s6Step175HeadFFresh ++ (growRow 775 s6Step175HeadGvFresh ++ (growRow 776 s6Step175HeadFvFresh ++ [])))) s6Step175HeadG_Incoming s6Step175HeadG_checked h1 s6Step175HeadG_Outgoing
  exact h0

private theorem s6Step175HeadBank_checked : compileHmrBankResizeLog .headroom s6Step175HeadGBefore ⟨s6Step175HeadFRow,s6Step175HeadGRow,s6Step175HeadFvRow,s6Step175HeadGvRow⟩ ⟨183,183,103,103⟩ [s6Step175HeadGFresh,s6Step175HeadFFresh,s6Step175HeadGvFresh,s6Step175HeadFvFresh]=
    some (s6Step175HeadFvAfter,⟨s6Step175HeadFOut,s6Step175HeadGOut,s6Step175HeadFvOut,s6Step175HeadGvOut⟩,(growRow 777 s6Step175HeadGFresh ++ (growRow 795 s6Step175HeadFFresh ++ (growRow 775 s6Step175HeadGvFresh ++ (growRow 776 s6Step175HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step175HeadBank_rows]
  rfl

private theorem s6Step175Front_checked : compileHmrSourceFrontLog s6Step175EntryFBefore s6Step175FrontBank 182 102 ⟨182,181,102,102⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step175FrontLog=some s6Step175FrontPlan := by
  have pairEq : s6Step175FrontPair=⟨s6Step175HeadFRow,s6Step175HeadGRow,s6Step175HeadFvRow,s6Step175HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step175FrontHead=⟨s6Step175ExitFRow,s6Step175ExitGRow,s6Step175ExitFvRow,s6Step175ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step175Add0A=s6Step175FrontHead.f.wires := by decide +kernel
  have gEq : s6Step175Add0B=s6Step175FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step175Add1A=s6Step175FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step175Add1B=s6Step175FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step175EntryFBefore s6Step175FrontBank 182 102 ⟨182,181,102,102⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step175FrontLog s6Step175FrontPlan
  · exact s6Step175Front_entry
  · exact s6Step175EntryBank_checked
  · exact s6Step175Front_sigma
  · rfl
  · exact s6Step175Front_branch
  · rfl
  · simpa only [s6Step175FrontPlan,pairEq] using s6Step175HeadBank_checked
  · simpa only [s6Step175FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step175F4_checked
  · exact s6Step175Counter_checked
  · rfl
  · simpa only [s6Step175FrontPlan,headEq] using s6Step175ExitBank_checked

private theorem s6Step175Complete_explicit_checked : compileHmrEarlyStepLog s6Step175EntryFBefore s6Step175FrontBank 182 102 ⟨182,181,102,102⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step175CompleteLog=some s6Step175CompletePlan := by
  let Q := s6Step175EarlyControlPlan
  have hq := s6Step175EarlyControl_plan_checked
  have fv1 : s6Step175CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step175CompleteOut.fv.payload[2]?.getD s6Step175CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step175CompleteOut.fv.payload[3]?.getD s6Step175CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step175CompleteOut.fv.payload[4]?.getD s6Step175CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step175EntryFBefore s6Step175EarlyControlArena s6Step175FrontBank 182 102 ⟨182,181,102,102⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step175CompleteLog s6Step175FrontPlan Q
    s6Step175Front_checked s6Step175Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step175Complete_owned s6Step175Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step175EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step175CompleteOut.fv.second (s6Step175CompleteOut.fv.payload[2]?.getD s6Step175CompleteOut.fv.sign) (s6Step175CompleteOut.fv.payload[3]?.getD s6Step175CompleteOut.fv.sign) (s6Step175CompleteOut.fv.payload[4]?.getD s6Step175CompleteOut.fv.sign) 830 42 s6Step175EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep175Arena : Arena := s6Step175EntryFBefore
def s6PrivateStep175Bank : WindowBank := s6Step175FrontBank
def s6PrivateStep175Spec : HmrSourceWalkStepLog := ⟨182,102,⟨182,181,102,102⟩,42,.early s6Step175CompleteLog⟩
def s6PrivateStep175Plan : HmrSourceStepPlan := .early s6Step175CompletePlan
theorem s6PrivateStep175_source : s6PrivateStep175Spec=s6ObservedLogs160[15] := rfl
theorem s6PrivateStep175_checked : compileHmrSourceStepLog s6PrivateStep175Arena s6PrivateStep175Bank
    s6PrivateStep175Spec.fgWidth s6PrivateStep175Spec.vWidth s6PrivateStep175Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 175 s6PrivateStep175Spec.need none s6PrivateStep175Spec.log=some s6PrivateStep175Plan := by
  change compileHmrSourceStepLog s6Step175EntryFBefore s6Step175FrontBank 182 102 ⟨182,181,102,102⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 175 42 none (.early s6Step175CompleteLog)=some (.early s6Step175CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 175<498)]
  rw [s6Step175Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
