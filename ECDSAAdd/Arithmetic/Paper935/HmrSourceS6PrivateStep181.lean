import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep179
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

private def s6Step181CompleteMoves : List (Wire × Wire) := [(821,178)]

private def s6Step181EarlyControlLog : HmrEarlyControlLog := ⟨[821, 814, 907, 830, 880],[865],[863],[890, 891, 903, 791, 825, 810],[]⟩

private def s6Step181FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[830], [907], [814], [876]],[[], [], [], []]⟩,[848],[803],[880],[865],[863, 890, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[880, 865, 863, 890]⟩

private def s6Step181CompleteLog : HmrEarlyStepLog := ⟨s6Step181FrontLog,s6Step181CompleteMoves,s6Step181EarlyControlLog⟩

private def s6Step181ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step181ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩

private def s6Step181ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177],777⟩

private def s6Step181ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step181FrontOut : WindowBank := ⟨s6Step181ExitFOut,s6Step181ExitGOut,s6Step181ExitFvOut,s6Step181ExitGvOut⟩

private def s6Step181CompleteOut : WindowBank := s6Step181FrontOut.repacked s6Step181CompleteMoves

private def s6Step181EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step181EarlyControlPositiveArena,[865],s6Step181EarlyControlEqualityArena,[863],⟨⟨848,false⟩,[⟨⟨865,false⟩,863⟩]⟩⟩

private def s6Step181EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,821⟩,⟨⟨772,false⟩,814⟩,⟨⟨771,false⟩,907⟩,⟨⟨770,false⟩,830⟩,⟨⟨769,false⟩,880⟩]⟩

private def s6Step181EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step181EarlyControlZeroArena,s6Step181EarlyControlZeroPlan,s6Step181EarlyControlClassPlan,s6Step181EarlyControlFlagArena,s6Step181EarlyControlFittedArena,s6Step181EarlyControlHistoryArena,s6Step181EarlyControlSigmaArena,s6Step181EarlyControlOutputArena,s6Step181EarlyControlLog⟩

private def s6Step181CounterWork : List Wire := [880, 865, 863, 890]

private theorem s6Step181Counter_bounded : s6Step181CounterWork.toFinset⊆arenaWires := by norm_num [s6Step181CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step181HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181CounterDuring : Arena := ⟨s6Step181HeadFvAfter.live∪s6Step181CounterWork.toFinset,Finset.union_subset s6Step181HeadFvAfter.bounded s6Step181Counter_bounded⟩

private def s6Step181EntryFFresh : List Wire := []

private def s6Step181EntryFvFresh : List Wire := []

private def s6Step181EntryGFresh : List Wire := []

private def s6Step181EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181EntryGvAfter : Arena := s6Step181EntryFBefore

private def s6Step181EntryGvFresh : List Wire := []

private def s6Step181ExitFExtra : List Wire := [907]

private def s6Step181ExitGExtra : List Wire := [178, 830]

private def s6Step181ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181ExitGvExtra : List Wire := [814]

private def s6Step181Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181Add0Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step181Add0_bounded : s6Step181Add0Work.toFinset⊆arenaWires := by
  have h : s6Step181Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step181Add0During : Arena := ⟨s6Step181Add0Arena.live∪s6Step181Add0Work.toFinset,Finset.union_subset s6Step181Add0Arena.bounded s6Step181Add0_bounded⟩

private def s6Step181Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step181Add1Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step181Add1_bounded : s6Step181Add1Work.toFinset⊆arenaWires := by
  have h : s6Step181Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step181Add1During : Arena := ⟨s6Step181Add1Arena.live∪s6Step181Add1Work.toFinset,Finset.union_subset s6Step181Add1Arena.bounded s6Step181Add1_bounded⟩

private def s6Step181F4FlagArena : Arena := ⟨s6Step181HeadFvAfter.live∪{880},Finset.union_subset s6Step181HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step181F4Plan : HmrHybridF4Plan := ⟨s6Step181F4FlagArena,[880],s6Step181Add0Arena,[865],s6Step181Add0During,s6Step181Add0Work,s6Step181Add1During,s6Step181Add1Work⟩

private def s6Step181HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 907],795⟩

private def s6Step181HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩

private def s6Step181HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],777⟩

private def s6Step181HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 814],775⟩

private def s6Step181FrontHead : WindowBank := ⟨s6Step181HeadFOut,s6Step181HeadGOut,s6Step181HeadFvOut,s6Step181HeadGvOut⟩

private def s6Step181EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step181EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step181EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩

private def s6Step181EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step181FrontPair : WindowBank := ⟨s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut⟩

private def s6Step181FrontSigmaArena : Arena := ⟨s6Step181EntryGvAfter.live∪{848},Finset.union_subset s6Step181EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step181HeadFFresh : List Wire := [907]

private def s6Step181HeadFvFresh : List Wire := [876]

private def s6Step181HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181HeadGFresh : List Wire := [830]

private def s6Step181HeadGvFresh : List Wire := [814]

private def s6Step181FrontPlan : HmrSourceFront := ⟨s6Step181EntryGvAfter,s6Step181FrontPair,(growRow 795 s6Step181EntryFFresh ++ (growRow 777 s6Step181EntryGFresh ++ (growRow 776 s6Step181EntryFvFresh ++ (growRow 775 s6Step181EntryGvFresh ++ [])))),s6Step181FrontSigmaArena,[848],s6Step181HeadGBefore,[803],
  s6Step181HeadFvAfter,s6Step181FrontHead,(growRow 777 s6Step181HeadGFresh ++ (growRow 795 s6Step181HeadFFresh ++ (growRow 775 s6Step181HeadGvFresh ++ (growRow 776 s6Step181HeadFvFresh ++ [])))),s6Step181F4Plan,s6Step181CounterDuring,s6Step181CounterWork,s6Step181ExitGvAfter,s6Step181FrontOut,(shrinkRow 777 s6Step181ExitGExtra ++ (shrinkRow 795 s6Step181ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step181ExitGvExtra ++ []))))⟩

private def s6Step181CompletePlan : HmrEarlyStepPlan := ⟨s6Step181FrontPlan,s6Step181EarlyControlArena,s6Step181EarlyControlPlan,s6Step181CompleteMoves⟩

private theorem s6Step181Complete_apart : List.Disjoint (s6Step181CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [848, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step181CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[848, 803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step181Complete_owned : (s6Step181CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step181CompleteRelocationMove0Borrowed : Arena := ⟨s6Step181ExitGvAfter.live∪{178},Finset.union_subset s6Step181ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step181CompleteRelocation_move0_owned : 821∈s6Step181ExitGvAfter.live := by norm_num [s6Step181ExitGvAfter,arenaWires]

private theorem s6Step181CompleteRelocation_move0_reserve : s6Step181ExitGvAfter.reserve {178}=some s6Step181CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step181ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step181CompleteRelocation_move0_retire : s6Step181CompleteRelocationMove0Borrowed.retireSet {821}=s6Step181EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step181CompleteRelocationMove0Borrowed s6Step181EarlyControlArena {821}
  change s6Step181EarlyControlArena.live=(s6Step181ExitGvAfter.live∪{178})\{821}
  apply hmrArena_update_of_filter_check s6Step181ExitGvAfter s6Step181EarlyControlArena (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [178] [821] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step181CompleteRelocation_checked : s6Step181ExitGvAfter.checkRepack [(821,178)]=some s6Step181EarlyControlArena := by
  have tail1 : s6Step181EarlyControlArena.checkRepack []=some s6Step181EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step181ExitGvAfter s6Step181CompleteRelocationMove0Borrowed s6Step181EarlyControlArena s6Step181EarlyControlArena 821 178 []
    s6Step181CompleteRelocation_move0_owned s6Step181CompleteRelocation_move0_reserve s6Step181CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step181Complete_repack : s6Step181ExitGvAfter.checkRepack s6Step181CompleteMoves=some s6Step181EarlyControlArena := by
  simpa only [s6Step181CompleteMoves] using s6Step181CompleteRelocation_checked

private theorem s6Step181EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s6Step181EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EarlyControl_branch : compileHmrBranchRetirement s6Step181EarlyControlSigmaArena 803=some s6Step181EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step181EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step181EarlyControlSigmaArena s6Step181EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step181EarlyControl_classEqualityBorrow : s6Step181EarlyControlPositiveArena.checkBorrow (([848, 865] : List Wire).length-1) s6Step181EarlyControlLog.classWork=some s6Step181EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step181EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step181EarlyControlEqualityArena,s6Step181EarlyControlPositiveArena,s6Step181EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step181EarlyControl_classEqualityOwned : ([848, 865] : List Wire).toFinset⊆s6Step181EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181EarlyControl_classEquality : compileHmrEqualityLog s6Step181EarlyControlPositiveArena [848, 865] 0 s6Step181EarlyControlLog.classWork=some (s6Step181EarlyControlEqualityArena,s6Step181EarlyControlLog.classWork,s6Step181EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step181EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step181EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step181EarlyControl_classOwned : ([769, 880, 848] : List Wire).toFinset⊆s6Step181EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181EarlyControl_positiveBorrow : s6Step181EarlyControlZeroArena.checkBorrow (1) s6Step181EarlyControlLog.positiveWork=some s6Step181EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step181EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step181EarlyControlPositiveArena,s6Step181EarlyControlZeroArena,s6Step181EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step181EarlyControl_class : compileHmrSourceClassLog s6Step181EarlyControlZeroArena false 769 s6Step181EarlyControlZeroPlan.top 0 848 s6Step181EarlyControlLog.positiveWork s6Step181EarlyControlLog.classWork=some s6Step181EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step181EarlyControlClassPlan s6Step181EarlyControlZeroArena false 769 s6Step181EarlyControlZeroPlan.top 0 848
  constructor
  · decide +kernel
  · exact s6Step181EarlyControl_classOwned
  · exact s6Step181EarlyControl_positiveBorrow
  · exact s6Step181EarlyControl_classEquality

private theorem s6Step181EarlyControl_entryRecordOwned : ([803, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EarlyControl_entrySigmaOwned : ([848, 254] : List Wire).toFinset⊆s6Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EarlyControl_fitBorrow : s6Step181EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step181EarlyControlLog.recordFresh=some s6Step181EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step181EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step181EarlyControlFittedArena,s6Step181EarlyControlFlagArena,s6Step181EarlyControlLog,arenaWires]

private theorem s6Step181EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step181EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181EarlyControl_fit : compileHmrRecordGrowLog s6Step181EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step181EarlyControlLog.recordFresh=some s6Step181EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step181EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step181EarlyControl_fitBorrow

private theorem s6Step181EarlyControl_flagsBorrow : s6Step181EarlyControlEqualityArena.checkBorrow (6) s6Step181EarlyControlLog.flagWork=some s6Step181EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step181EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step181EarlyControlFlagArena,s6Step181EarlyControlEqualityArena,s6Step181EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step181EarlyControl_flagsOwned : ([863, 253, 252, 251] : List Wire).toFinset⊆s6Step181EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181EarlyControl_flags : compileHmrFlagsLog s6Step181EarlyControlClassPlan.equalityArena s6Step181EarlyControlClassPlan.equality.top 253 252 251 s6Step181EarlyControlLog.flagWork=some s6Step181EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step181EarlyControl_flagsOwned⟩
  · exact s6Step181EarlyControl_flagsBorrow

private theorem s6Step181EarlyControl_historyBorrow : s6Step181EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step181EarlyControlLog.recordFresh=some s6Step181EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step181EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step181EarlyControlArena s6Step181EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step181EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step181EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EarlyControl_history : compileHmrRecordGrowLog s6Step181EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step181EarlyControlLog.recordFresh=some s6Step181EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step181EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step181EarlyControl_historyBorrow

private theorem s6Step181EarlyControl_sigmaOwned : ([254, 848] : List Wire).toFinset⊆s6Step181EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EarlyControl_sigmaReleaseOwned : ([848] : List Wire).toFinset⊆s6Step181EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EarlyControl_sigmaRelease : s6Step181EarlyControlHistoryArena.release {848} (fun _ => false)=some s6Step181EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step181EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step181EarlyControlHistoryArena s6Step181EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [848] rfl rfl
    decide +kernel

private theorem s6Step181EarlyControl_sigma : compileHmrSigmaDropLog s6Step181EarlyControlHistoryArena false 0 0 254 848 []=some s6Step181EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step181EarlyControl_sigmaOwned⟩
  · exact s6Step181EarlyControl_sigmaRelease

private theorem s6Step181EarlyControl_zeroBorrow : s6Step181EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step181EarlyControlLog.zeroWork=some s6Step181EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step181EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step181EarlyControlArena s6Step181EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step181EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step181EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step181EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step181EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step181EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EarlyControl_zero : compileHmrEqualityLog s6Step181EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step181EarlyControlLog.zeroWork=some (s6Step181EarlyControlZeroArena,s6Step181EarlyControlLog.zeroWork,s6Step181EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step181EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step181EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step181EarlyControl_logged : s6Step181EarlyControlPlan.Logged s6Step181EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 848 254 253 252 251 803 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step181EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step181EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step181EarlyControl_zero
  · exact s6Step181EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step181EarlyControl_flags
  · exact s6Step181EarlyControl_fit
  · exact s6Step181EarlyControl_history
  · exact s6Step181EarlyControl_sigma
  · exact s6Step181EarlyControl_branch

private theorem s6Step181EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step181EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 848 254 253 252 251 803 43 s6Step181EarlyControlLog=some s6Step181EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step181EarlyControlPlan s6Step181EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 848 254 253 252 251 803 43 s6Step181EarlyControl_logged

private def s6Step181EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step181EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step181EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩

private def s6Step181EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step181FrontBank : WindowBank := ⟨s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow⟩

private def s6Step181Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 907, 795]

private def s6Step181Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830, 777]

private def s6Step181Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 776]

private def s6Step181Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 814, 775]

private theorem s6Step181Counter_apart : Disjoint s6Step181HeadFvAfter.live s6Step181CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step181HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181Counter_borrowed : s6Step181HeadFvAfter.checkBorrow 4 s6Step181CounterWork=some s6Step181CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step181HeadFvAfter s6Step181CounterDuring s6Step181CounterWork.toFinset s6Step181Counter_bounded s6Step181Counter_apart rfl

private theorem s6Step181Counter_owned : (848::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step181HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step181HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181Counter_checked : compileHmrCounterStepLog s6Step181HeadFvAfter true 848 [774, 773, 772, 771, 770, 769] s6Step181CounterWork=some s6Step181CounterDuring := by
  have owned : ∀q∈848::[774, 773, 772, 771, 770, 769],q∈s6Step181HeadFvAfter.live := fun q hq => s6Step181Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step181Counter_borrowed

private def s6Step181EntryFAfter : Arena := s6Step181EntryFBefore

private theorem s6Step181EntryBank_incomingDistinct : ([s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181EntryF_Incoming : rowsOwned s6Step181EntryFBefore [s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow] 0 s6Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181EntryBank_outgoingOwned : rowsOwned s6Step181EntryGvAfter [s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step181EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181EntryF_Outgoing : rowsOwned s6Step181EntryGvAfter [s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut] :=
  hmrRows_owned_drop s6Step181EntryGvAfter [s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut] 0 s6Step181EntryBank_outgoingOwned

private theorem s6Step181EntryF_distinct : (s6Step181EntryFRow.sign::s6Step181EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181EntryF_owned : (s6Step181EntryFRow.sign::s6Step181EntryFRow.payload).toFinset⊆s6Step181EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EntryF_reserved : s6Step181EntryFBefore.reserve s6Step181EntryFFresh.toFinset=some s6Step181EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181EntryFFresh,arenaWires]
  · norm_num [s6Step181EntryFBefore,s6Step181EntryFFresh,arenaWires]
  · simp only [s6Step181EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step181EntryF_checked : planRowResizeLog s6Step181EntryFBefore s6Step181EntryFRow 179 s6Step181EntryFFresh=
    some (s6Step181EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩,growRow 795 s6Step181EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step181EntryFBefore s6Step181EntryFAfter s6Step181EntryFRow 179 s6Step181EntryFFresh
    s6Step181EntryF_distinct s6Step181EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181EntryF_reserved
  have rowEq : WindowRow.mk (s6Step181EntryFRow.payload++s6Step181EntryFFresh) s6Step181EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step181EntryFvAfter : Arena := s6Step181EntryFBefore

private def s6Step181EntryFvBefore : Arena := s6Step181EntryFBefore

private theorem s6Step181EntryFv_Incoming : rowsOwned s6Step181EntryFvBefore [s6Step181EntryFvRow,s6Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow] 2 s6Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181EntryFv_Outgoing : rowsOwned s6Step181EntryGvAfter [s6Step181EntryFvOut,s6Step181EntryGvOut] :=
  hmrRows_owned_drop s6Step181EntryGvAfter [s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut] 2 s6Step181EntryBank_outgoingOwned

private theorem s6Step181EntryFv_distinct : (s6Step181EntryFvRow.sign::s6Step181EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181EntryFv_owned : (s6Step181EntryFvRow.sign::s6Step181EntryFvRow.payload).toFinset⊆s6Step181EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EntryFv_reserved : s6Step181EntryFvBefore.reserve s6Step181EntryFvFresh.toFinset=some s6Step181EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181EntryFvFresh,arenaWires]
  · norm_num [s6Step181EntryFvBefore,s6Step181EntryFBefore,s6Step181EntryFvFresh,arenaWires]
  · simp only [s6Step181EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step181EntryFv_checked : planRowResizeLog s6Step181EntryFvBefore s6Step181EntryFvRow 104 s6Step181EntryFvFresh=
    some (s6Step181EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩,growRow 776 s6Step181EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step181EntryFvBefore s6Step181EntryFvAfter s6Step181EntryFvRow 104 s6Step181EntryFvFresh
    s6Step181EntryFv_distinct s6Step181EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step181EntryFvRow.payload++s6Step181EntryFvFresh) s6Step181EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step181EntryGAfter : Arena := s6Step181EntryFBefore

private def s6Step181EntryGBefore : Arena := s6Step181EntryFBefore

private theorem s6Step181EntryG_Incoming : rowsOwned s6Step181EntryGBefore [s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow] 1 s6Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181EntryG_Outgoing : rowsOwned s6Step181EntryGvAfter [s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut] :=
  hmrRows_owned_drop s6Step181EntryGvAfter [s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut] 1 s6Step181EntryBank_outgoingOwned

private theorem s6Step181EntryG_distinct : (s6Step181EntryGRow.sign::s6Step181EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181EntryG_owned : (s6Step181EntryGRow.sign::s6Step181EntryGRow.payload).toFinset⊆s6Step181EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EntryG_reserved : s6Step181EntryGBefore.reserve s6Step181EntryGFresh.toFinset=some s6Step181EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181EntryGFresh,arenaWires]
  · norm_num [s6Step181EntryGBefore,s6Step181EntryFBefore,s6Step181EntryGFresh,arenaWires]
  · simp only [s6Step181EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step181EntryG_checked : planRowResizeLog s6Step181EntryGBefore s6Step181EntryGRow 179 s6Step181EntryGFresh=
    some (s6Step181EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩,growRow 777 s6Step181EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step181EntryGBefore s6Step181EntryGAfter s6Step181EntryGRow 179 s6Step181EntryGFresh
    s6Step181EntryG_distinct s6Step181EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181EntryG_reserved
  have rowEq : WindowRow.mk (s6Step181EntryGRow.payload++s6Step181EntryGFresh) s6Step181EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step181EntryGvBefore : Arena := s6Step181EntryFBefore

private theorem s6Step181EntryGv_Incoming : rowsOwned s6Step181EntryGvBefore [s6Step181EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow] 3 s6Step181EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181EntryGv_Outgoing : rowsOwned s6Step181EntryGvAfter [s6Step181EntryGvOut] :=
  hmrRows_owned_drop s6Step181EntryGvAfter [s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut] 3 s6Step181EntryBank_outgoingOwned

private theorem s6Step181EntryGv_distinct : (s6Step181EntryGvRow.sign::s6Step181EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181EntryGv_owned : (s6Step181EntryGvRow.sign::s6Step181EntryGvRow.payload).toFinset⊆s6Step181EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181EntryGv_reserved : s6Step181EntryGvBefore.reserve s6Step181EntryGvFresh.toFinset=some s6Step181EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181EntryGvFresh,arenaWires]
  · norm_num [s6Step181EntryGvBefore,s6Step181EntryFBefore,s6Step181EntryGvFresh,arenaWires]
  · simp only [s6Step181EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step181EntryGv_checked : planRowResizeLog s6Step181EntryGvBefore s6Step181EntryGvRow 104 s6Step181EntryGvFresh=
    some (s6Step181EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩,growRow 775 s6Step181EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step181EntryGvBefore s6Step181EntryGvAfter s6Step181EntryGvRow 104 s6Step181EntryGvFresh
    s6Step181EntryGv_distinct s6Step181EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step181EntryGvRow.payload++s6Step181EntryGvFresh) s6Step181EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step181EntryBank_rows : planWindowRowsLog s6Step181EntryFBefore [(s6Step181EntryFRow,179),(s6Step181EntryGRow,179),(s6Step181EntryFvRow,104),(s6Step181EntryGvRow,104)] [s6Step181EntryFFresh,s6Step181EntryGFresh,s6Step181EntryFvFresh,s6Step181EntryGvFresh]=
    some (s6Step181EntryGvAfter,[s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut],(growRow 795 s6Step181EntryFFresh ++ (growRow 777 s6Step181EntryGFresh ++ (growRow 776 s6Step181EntryFvFresh ++ (growRow 775 s6Step181EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step181EntryGvAfter [] []=some (s6Step181EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step181EntryGvBefore s6Step181EntryGvAfter s6Step181EntryGvAfter
    s6Step181EntryGvRow s6Step181EntryGvOut 104 s6Step181EntryGvFresh [] [] []
    (growRow 775 s6Step181EntryGvFresh) ([]) s6Step181EntryGv_Incoming s6Step181EntryGv_checked h4 s6Step181EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step181EntryFvBefore s6Step181EntryFvAfter s6Step181EntryGvAfter
    s6Step181EntryFvRow s6Step181EntryFvOut 104 s6Step181EntryFvFresh [(s6Step181EntryGvRow,104)] [s6Step181EntryGvFresh] [s6Step181EntryGvOut]
    (growRow 776 s6Step181EntryFvFresh) ((growRow 775 s6Step181EntryGvFresh ++ [])) s6Step181EntryFv_Incoming s6Step181EntryFv_checked h3 s6Step181EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step181EntryGBefore s6Step181EntryGAfter s6Step181EntryGvAfter
    s6Step181EntryGRow s6Step181EntryGOut 179 s6Step181EntryGFresh [(s6Step181EntryFvRow,104),(s6Step181EntryGvRow,104)] [s6Step181EntryFvFresh,s6Step181EntryGvFresh] [s6Step181EntryFvOut,s6Step181EntryGvOut]
    (growRow 777 s6Step181EntryGFresh) ((growRow 776 s6Step181EntryFvFresh ++ (growRow 775 s6Step181EntryGvFresh ++ []))) s6Step181EntryG_Incoming s6Step181EntryG_checked h2 s6Step181EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step181EntryFBefore s6Step181EntryFAfter s6Step181EntryGvAfter
    s6Step181EntryFRow s6Step181EntryFOut 179 s6Step181EntryFFresh [(s6Step181EntryGRow,179),(s6Step181EntryFvRow,104),(s6Step181EntryGvRow,104)] [s6Step181EntryGFresh,s6Step181EntryFvFresh,s6Step181EntryGvFresh] [s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut]
    (growRow 795 s6Step181EntryFFresh) ((growRow 777 s6Step181EntryGFresh ++ (growRow 776 s6Step181EntryFvFresh ++ (growRow 775 s6Step181EntryGvFresh ++ [])))) s6Step181EntryF_Incoming s6Step181EntryF_checked h1 s6Step181EntryF_Outgoing
  exact h0

private theorem s6Step181EntryBank_checked : compileHmrBankResizeLog .entry s6Step181EntryFBefore ⟨s6Step181EntryFRow,s6Step181EntryGRow,s6Step181EntryFvRow,s6Step181EntryGvRow⟩ ⟨179,179,104,104⟩ [s6Step181EntryFFresh,s6Step181EntryGFresh,s6Step181EntryFvFresh,s6Step181EntryGvFresh]=
    some (s6Step181EntryGvAfter,⟨s6Step181EntryFOut,s6Step181EntryGOut,s6Step181EntryFvOut,s6Step181EntryGvOut⟩,(growRow 795 s6Step181EntryFFresh ++ (growRow 777 s6Step181EntryGFresh ++ (growRow 776 s6Step181EntryFvFresh ++ (growRow 775 s6Step181EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step181EntryBank_rows]
  rfl

private def s6Step181ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181ExitFBefore : Arena := s6Step181ExitGAfter

private def s6Step181ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 907],795⟩

private def s6Step181ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩

private def s6Step181ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],777⟩

private def s6Step181ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 814],775⟩

private theorem s6Step181ExitBank_incomingDistinct : ([s6Step181ExitGRow,s6Step181ExitFRow,s6Step181ExitFvRow,s6Step181ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181ExitF_Incoming : rowsOwned s6Step181ExitFBefore [s6Step181ExitFRow,s6Step181ExitFvRow,s6Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181ExitGRow,s6Step181ExitFRow,s6Step181ExitFvRow,s6Step181ExitGvRow] 1 s6Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181ExitFBefore (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181ExitBank_outgoingOwned : rowsOwned s6Step181ExitGvAfter [s6Step181ExitGOut,s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step181ExitGvAfter (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181ExitF_Outgoing : rowsOwned s6Step181ExitGvAfter [s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut] :=
  hmrRows_owned_drop s6Step181ExitGvAfter [s6Step181ExitGOut,s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut] 1 s6Step181ExitBank_outgoingOwned

private theorem s6Step181ExitF_distinct : (s6Step181ExitFRow.sign::s6Step181ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181ExitF_owned : (s6Step181ExitFRow.sign::s6Step181ExitFRow.payload).toFinset⊆s6Step181ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181ExitFBefore (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181ExitF_retired : s6Step181ExitFBefore.retireSet s6Step181ExitFExtra.toFinset=s6Step181ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step181ExitFBefore s6Step181ExitFAfter s6Step181ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step181ExitFBefore s6Step181ExitFAfter (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step181ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step181ExitF_checked : planRowResizeLog s6Step181ExitFBefore s6Step181ExitFRow 179 []=
    some (s6Step181ExitFAfter,s6Step181ExitFOut,shrinkRow 795 s6Step181ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step181ExitFBefore s6Step181ExitFRow 179 s6Step181ExitF_distinct s6Step181ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step181ExitFRow.payload.take 179) s6Step181ExitFRow.sign=s6Step181ExitFOut := by decide +kernel
  have hi : s6Step181ExitFRow.payload.drop 179=s6Step181ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step181ExitF_retired] at result
  exact result

private def s6Step181ExitFvAfter : Arena := s6Step181ExitFAfter

private def s6Step181ExitFvBefore : Arena := s6Step181ExitFAfter

private theorem s6Step181ExitFv_Incoming : rowsOwned s6Step181ExitFvBefore [s6Step181ExitFvRow,s6Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181ExitGRow,s6Step181ExitFRow,s6Step181ExitFvRow,s6Step181ExitGvRow] 2 s6Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181ExitFvBefore (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181ExitFv_Outgoing : rowsOwned s6Step181ExitGvAfter [s6Step181ExitFvOut,s6Step181ExitGvOut] :=
  hmrRows_owned_drop s6Step181ExitGvAfter [s6Step181ExitGOut,s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut] 2 s6Step181ExitBank_outgoingOwned

private theorem s6Step181ExitFv_distinct : (s6Step181ExitFvRow.sign::s6Step181ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181ExitFv_owned : (s6Step181ExitFvRow.sign::s6Step181ExitFvRow.payload).toFinset⊆s6Step181ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181ExitFvBefore (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181ExitFv_reserved : s6Step181ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step181ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step181ExitFv_checked : planRowResizeLog s6Step181ExitFvBefore s6Step181ExitFvRow 105 []=
    some (s6Step181ExitFvAfter,s6Step181ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step181ExitFvBefore s6Step181ExitFvAfter s6Step181ExitFvRow 105 []
    s6Step181ExitFv_distinct s6Step181ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step181ExitFvRow.payload++[]) s6Step181ExitFvRow.sign=s6Step181ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step181ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step181ExitG_Incoming : rowsOwned s6Step181ExitGBefore [s6Step181ExitGRow,s6Step181ExitFRow,s6Step181ExitFvRow,s6Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181ExitGRow,s6Step181ExitFRow,s6Step181ExitFvRow,s6Step181ExitGvRow] 0 s6Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step181ExitG_Outgoing : rowsOwned s6Step181ExitGvAfter [s6Step181ExitGOut,s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut] :=
  hmrRows_owned_drop s6Step181ExitGvAfter [s6Step181ExitGOut,s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut] 0 s6Step181ExitBank_outgoingOwned

private theorem s6Step181ExitG_distinct : (s6Step181ExitGRow.sign::s6Step181ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181ExitG_owned : (s6Step181ExitGRow.sign::s6Step181ExitGRow.payload).toFinset⊆s6Step181ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181ExitG_retired : s6Step181ExitGBefore.retireSet s6Step181ExitGExtra.toFinset=s6Step181ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step181ExitGBefore s6Step181ExitGAfter s6Step181ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step181ExitGBefore s6Step181ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step181ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step181ExitG_checked : planRowResizeLog s6Step181ExitGBefore s6Step181ExitGRow 178 []=
    some (s6Step181ExitGAfter,s6Step181ExitGOut,shrinkRow 777 s6Step181ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step181ExitGBefore s6Step181ExitGRow 178 s6Step181ExitG_distinct s6Step181ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step181ExitGRow.payload.take 178) s6Step181ExitGRow.sign=s6Step181ExitGOut := by decide +kernel
  have hi : s6Step181ExitGRow.payload.drop 178=s6Step181ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step181ExitG_retired] at result
  exact result

private def s6Step181ExitGvBefore : Arena := s6Step181ExitFAfter

private theorem s6Step181ExitGv_Incoming : rowsOwned s6Step181ExitGvBefore [s6Step181ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181ExitGRow,s6Step181ExitFRow,s6Step181ExitFvRow,s6Step181ExitGvRow] 3 s6Step181ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181ExitGvBefore (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181ExitGv_Outgoing : rowsOwned s6Step181ExitGvAfter [s6Step181ExitGvOut] :=
  hmrRows_owned_drop s6Step181ExitGvAfter [s6Step181ExitGOut,s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut] 3 s6Step181ExitBank_outgoingOwned

private theorem s6Step181ExitGv_distinct : (s6Step181ExitGvRow.sign::s6Step181ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181ExitGv_owned : (s6Step181ExitGvRow.sign::s6Step181ExitGvRow.payload).toFinset⊆s6Step181ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181ExitGvBefore (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181ExitGv_retired : s6Step181ExitGvBefore.retireSet s6Step181ExitGvExtra.toFinset=s6Step181ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step181ExitGvBefore s6Step181ExitGvAfter s6Step181ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step181ExitGvBefore s6Step181ExitGvAfter (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,178),(179,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step181ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step181ExitGv_checked : planRowResizeLog s6Step181ExitGvBefore s6Step181ExitGvRow 104 []=
    some (s6Step181ExitGvAfter,s6Step181ExitGvOut,shrinkRow 775 s6Step181ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step181ExitGvBefore s6Step181ExitGvRow 104 s6Step181ExitGv_distinct s6Step181ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step181ExitGvRow.payload.take 104) s6Step181ExitGvRow.sign=s6Step181ExitGvOut := by decide +kernel
  have hi : s6Step181ExitGvRow.payload.drop 104=s6Step181ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step181ExitGv_retired] at result
  exact result

private theorem s6Step181ExitBank_rows : planWindowRowsLog s6Step181ExitGBefore [(s6Step181ExitGRow,178),(s6Step181ExitFRow,179),(s6Step181ExitFvRow,105),(s6Step181ExitGvRow,104)] [[],[],[],[]]=
    some (s6Step181ExitGvAfter,[s6Step181ExitGOut,s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut],(shrinkRow 777 s6Step181ExitGExtra ++ (shrinkRow 795 s6Step181ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step181ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step181ExitGvAfter [] []=some (s6Step181ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step181ExitGvBefore s6Step181ExitGvAfter s6Step181ExitGvAfter
    s6Step181ExitGvRow s6Step181ExitGvOut 104 [] [] [] []
    (shrinkRow 775 s6Step181ExitGvExtra) ([]) s6Step181ExitGv_Incoming s6Step181ExitGv_checked h4 s6Step181ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step181ExitFvBefore s6Step181ExitFvAfter s6Step181ExitGvAfter
    s6Step181ExitFvRow s6Step181ExitFvOut 105 [] [(s6Step181ExitGvRow,104)] [[]] [s6Step181ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step181ExitGvExtra ++ [])) s6Step181ExitFv_Incoming s6Step181ExitFv_checked h3 s6Step181ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step181ExitFBefore s6Step181ExitFAfter s6Step181ExitGvAfter
    s6Step181ExitFRow s6Step181ExitFOut 179 [] [(s6Step181ExitFvRow,105),(s6Step181ExitGvRow,104)] [[],[]] [s6Step181ExitFvOut,s6Step181ExitGvOut]
    (shrinkRow 795 s6Step181ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step181ExitGvExtra ++ []))) s6Step181ExitF_Incoming s6Step181ExitF_checked h2 s6Step181ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step181ExitGBefore s6Step181ExitGAfter s6Step181ExitGvAfter
    s6Step181ExitGRow s6Step181ExitGOut 178 [] [(s6Step181ExitFRow,179),(s6Step181ExitFvRow,105),(s6Step181ExitGvRow,104)] [[],[],[]] [s6Step181ExitFOut,s6Step181ExitFvOut,s6Step181ExitGvOut]
    (shrinkRow 777 s6Step181ExitGExtra) ((shrinkRow 795 s6Step181ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step181ExitGvExtra ++ [])))) s6Step181ExitG_Incoming s6Step181ExitG_checked h1 s6Step181ExitG_Outgoing
  exact h0

private theorem s6Step181ExitBank_checked : compileHmrBankResizeLog .exit s6Step181ExitGBefore ⟨s6Step181ExitFRow,s6Step181ExitGRow,s6Step181ExitFvRow,s6Step181ExitGvRow⟩ ⟨179,178,105,104⟩ [[],[],[],[]]=
    some (s6Step181ExitGvAfter,⟨s6Step181ExitFOut,s6Step181ExitGOut,s6Step181ExitFvOut,s6Step181ExitGvOut⟩,(shrinkRow 777 s6Step181ExitGExtra ++ (shrinkRow 795 s6Step181ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step181ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step181ExitBank_rows]
  rfl

private theorem s6Step181Add0_apart : Disjoint s6Step181Add0Arena.live s6Step181Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step181Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181Add0_card : s6Step181Add0Arena.live.card=883 := by
  decide +kernel

private theorem s6Step181Add0_borrowed : s6Step181Add0Arena.checkBorrow (hmrHybridCount s6Step181Add0Arena s6Step181Add0B.length) s6Step181Add0Work=some s6Step181Add0During := by
  have len : s6Step181Add0Work.length=hmrHybridCount s6Step181Add0Arena s6Step181Add0B.length := by
    rw [hmrHybridCount,s6Step181Add0_card]
    decide +kernel
  have nd : s6Step181Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step181Add0Arena s6Step181Add0During s6Step181Add0Work.toFinset s6Step181Add0_bounded s6Step181Add0_apart rfl

private theorem s6Step181Add0_distinct : (880::803::865::(s6Step181Add0A++s6Step181Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181Add0_owned : (880::803::865::(s6Step181Add0A++s6Step181Add0B)).toFinset⊆s6Step181Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step181Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181Add0_checked : compileHmrHybridCinLog s6Step181Add0Arena 803 880 865 s6Step181Add0A s6Step181Add0B s6Step181Add0Work=some s6Step181Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step181Add0Arena s6Step181Add0During 803 880 865 s6Step181Add0A s6Step181Add0B s6Step181Add0Work
    (by decide +kernel) (by decide +kernel) s6Step181Add0_distinct
    (fun q hq => s6Step181Add0_owned (List.mem_toFinset.mpr hq)) s6Step181Add0_borrowed

private theorem s6Step181Add1_apart : Disjoint s6Step181Add1Arena.live s6Step181Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step181Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181Add1_card : s6Step181Add1Arena.live.card=883 := by
  decide +kernel

private theorem s6Step181Add1_borrowed : s6Step181Add1Arena.checkBorrow (hmrHybridCount s6Step181Add1Arena s6Step181Add1B.length) s6Step181Add1Work=some s6Step181Add1During := by
  have len : s6Step181Add1Work.length=hmrHybridCount s6Step181Add1Arena s6Step181Add1B.length := by
    rw [hmrHybridCount,s6Step181Add1_card]
    decide +kernel
  have nd : s6Step181Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step181Add1Arena s6Step181Add1During s6Step181Add1Work.toFinset s6Step181Add1_bounded s6Step181Add1_apart rfl

private theorem s6Step181Add1_distinct : (880::803::865::(s6Step181Add1A++s6Step181Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181Add1_owned : (880::803::865::(s6Step181Add1A++s6Step181Add1B)).toFinset⊆s6Step181Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step181Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181Add1_checked : compileHmrHybridCinLog s6Step181Add1Arena 803 880 865 s6Step181Add1A s6Step181Add1B s6Step181Add1Work=some s6Step181Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step181Add1Arena s6Step181Add1During 803 880 865 s6Step181Add1A s6Step181Add1B s6Step181Add1Work
    (by decide +kernel) (by decide +kernel) s6Step181Add1_distinct
    (fun q hq => s6Step181Add1_owned (List.mem_toFinset.mpr hq)) s6Step181Add1_borrowed

private theorem s6Step181F4_apart : Disjoint (s6Step181Add0A++s6Step181Add0B).toFinset (s6Step181Add1A++s6Step181Add1B).toFinset := by
  have nd : ((s6Step181Add0A++s6Step181Add0B)++(s6Step181Add1A++s6Step181Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step181F4_carry : s6Step181F4FlagArena.checkBorrow 1 [865]=some s6Step181Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step181F4FlagArena,s6Step181HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step181F4FlagArena,s6Step181HeadFvAfter,s6Step181Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step181F4_distinct : (848::803::880::865::((s6Step181Add0A++s6Step181Add1A)++(s6Step181Add0B++s6Step181Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181F4_flag : s6Step181HeadFvAfter.checkBorrow 1 [880]=some s6Step181F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step181HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step181F4_owned : (848::803::((s6Step181Add0A++s6Step181Add1A)++(s6Step181Add0B++s6Step181Add1B))).toFinset⊆s6Step181HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step181HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step181F4_checked : compileHmrHybridF4Log s6Step181HeadFvAfter 848 803 s6Step181Add0A s6Step181Add0B s6Step181Add1A s6Step181Add1B [880] [865] s6Step181Add0Work s6Step181Add1Work=some s6Step181F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step181HeadFvAfter s6Step181F4FlagArena s6Step181Add0Arena s6Step181Add0During s6Step181Add1During 848 803
    s6Step181Add0A s6Step181Add0B s6Step181Add1A s6Step181Add1B [880] [865] s6Step181Add0Work s6Step181Add1Work
    (fun q hq => s6Step181F4_owned (List.mem_toFinset.mpr hq)) s6Step181F4_flag s6Step181F4_carry
    s6Step181F4_distinct s6Step181F4_apart s6Step181Add0_checked s6Step181Add1_checked

private theorem s6Step181Front_branch : s6Step181FrontSigmaArena.checkBorrow 1 [803]=some s6Step181HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step181FrontSigmaArena,s6Step181EntryGvAfter,s6Step181EntryFBefore,arenaWires]
  · change s6Step181HeadGBefore.live=(s6Step181EntryGvAfter.live∪{848})∪{803}
    apply hmrArena_union_pair_of_filter_check s6Step181EntryGvAfter s6Step181HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 848 803 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step181Front_entry : HmrFrontEntryValid s6Step181EntryFBefore s6Step181FrontBank 179 104 ⟨179,178,105,104⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step181FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step181EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step181EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step181FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step181Front_sigma : s6Step181EntryGvAfter.checkBorrow 1 [848]=some s6Step181FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step181EntryGvAfter,s6Step181EntryFBefore,arenaWires]
  · rfl

private def s6Step181HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181HeadFBefore : Arena := s6Step181HeadGAfter

private def s6Step181HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step181HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step181HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩

private def s6Step181HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private theorem s6Step181HeadBank_incomingDistinct : ([s6Step181HeadGRow,s6Step181HeadFRow,s6Step181HeadGvRow,s6Step181HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181HeadF_Incoming : rowsOwned s6Step181HeadFBefore [s6Step181HeadFRow,s6Step181HeadGvRow,s6Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181HeadGRow,s6Step181HeadFRow,s6Step181HeadGvRow,s6Step181HeadFvRow] 1 s6Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181HeadBank_outgoingOwned : rowsOwned s6Step181HeadFvAfter [s6Step181HeadGOut,s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step181HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step181HeadF_Outgoing : rowsOwned s6Step181HeadFvAfter [s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut] :=
  hmrRows_owned_drop s6Step181HeadFvAfter [s6Step181HeadGOut,s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut] 1 s6Step181HeadBank_outgoingOwned

private theorem s6Step181HeadF_distinct : (s6Step181HeadFRow.sign::s6Step181HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181HeadF_owned : (s6Step181HeadFRow.sign::s6Step181HeadFRow.payload).toFinset⊆s6Step181HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181HeadF_reserved : s6Step181HeadFBefore.reserve s6Step181HeadFFresh.toFinset=some s6Step181HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181HeadFFresh,arenaWires]
  · norm_num [s6Step181HeadFBefore,s6Step181HeadGAfter,s6Step181HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step181HeadFBefore s6Step181HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step181HeadFFresh rfl rfl
    · norm_num [s6Step181HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step181HeadF_checked : planRowResizeLog s6Step181HeadFBefore s6Step181HeadFRow 180 s6Step181HeadFFresh=
    some (s6Step181HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 907],795⟩,growRow 795 s6Step181HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step181HeadFBefore s6Step181HeadFAfter s6Step181HeadFRow 180 s6Step181HeadFFresh
    s6Step181HeadF_distinct s6Step181HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181HeadF_reserved
  have rowEq : WindowRow.mk (s6Step181HeadFRow.payload++s6Step181HeadFFresh) s6Step181HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 907],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step181HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step181HeadFvBefore : Arena := s6Step181HeadGvAfter

private theorem s6Step181HeadFv_Incoming : rowsOwned s6Step181HeadFvBefore [s6Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181HeadGRow,s6Step181HeadFRow,s6Step181HeadGvRow,s6Step181HeadFvRow] 3 s6Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181HeadFv_Outgoing : rowsOwned s6Step181HeadFvAfter [s6Step181HeadFvOut] :=
  hmrRows_owned_drop s6Step181HeadFvAfter [s6Step181HeadGOut,s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut] 3 s6Step181HeadBank_outgoingOwned

private theorem s6Step181HeadFv_distinct : (s6Step181HeadFvRow.sign::s6Step181HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181HeadFv_owned : (s6Step181HeadFvRow.sign::s6Step181HeadFvRow.payload).toFinset⊆s6Step181HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181HeadFv_reserved : s6Step181HeadFvBefore.reserve s6Step181HeadFvFresh.toFinset=some s6Step181HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181HeadFvFresh,arenaWires]
  · norm_num [s6Step181HeadFvBefore,s6Step181HeadGvAfter,s6Step181HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step181HeadFvBefore s6Step181HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<880) ∨ (881≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step181HeadFvFresh rfl rfl
    · norm_num [s6Step181HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step181HeadFv_checked : planRowResizeLog s6Step181HeadFvBefore s6Step181HeadFvRow 105 s6Step181HeadFvFresh=
    some (s6Step181HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩,growRow 776 s6Step181HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step181HeadFvBefore s6Step181HeadFvAfter s6Step181HeadFvRow 105 s6Step181HeadFvFresh
    s6Step181HeadFv_distinct s6Step181HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step181HeadFvRow.payload++s6Step181HeadFvFresh) s6Step181HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step181HeadG_Incoming : rowsOwned s6Step181HeadGBefore [s6Step181HeadGRow,s6Step181HeadFRow,s6Step181HeadGvRow,s6Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181HeadGRow,s6Step181HeadFRow,s6Step181HeadGvRow,s6Step181HeadFvRow] 0 s6Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181HeadG_Outgoing : rowsOwned s6Step181HeadFvAfter [s6Step181HeadGOut,s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut] :=
  hmrRows_owned_drop s6Step181HeadFvAfter [s6Step181HeadGOut,s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut] 0 s6Step181HeadBank_outgoingOwned

private theorem s6Step181HeadG_distinct : (s6Step181HeadGRow.sign::s6Step181HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181HeadG_owned : (s6Step181HeadGRow.sign::s6Step181HeadGRow.payload).toFinset⊆s6Step181HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181HeadG_reserved : s6Step181HeadGBefore.reserve s6Step181HeadGFresh.toFinset=some s6Step181HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181HeadGFresh,arenaWires]
  · norm_num [s6Step181HeadGBefore,s6Step181HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step181HeadGBefore s6Step181HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step181HeadGFresh rfl rfl
    · norm_num [s6Step181HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step181HeadG_checked : planRowResizeLog s6Step181HeadGBefore s6Step181HeadGRow 180 s6Step181HeadGFresh=
    some (s6Step181HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],777⟩,growRow 777 s6Step181HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step181HeadGBefore s6Step181HeadGAfter s6Step181HeadGRow 180 s6Step181HeadGFresh
    s6Step181HeadG_distinct s6Step181HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181HeadG_reserved
  have rowEq : WindowRow.mk (s6Step181HeadGRow.payload++s6Step181HeadGFresh) s6Step181HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 830],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step181HeadGvBefore : Arena := s6Step181HeadFAfter

private theorem s6Step181HeadGv_Incoming : rowsOwned s6Step181HeadGvBefore [s6Step181HeadGvRow,s6Step181HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step181HeadGRow,s6Step181HeadFRow,s6Step181HeadGvRow,s6Step181HeadFvRow] 2 s6Step181HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step181HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step181HeadGv_Outgoing : rowsOwned s6Step181HeadFvAfter [s6Step181HeadGvOut,s6Step181HeadFvOut] :=
  hmrRows_owned_drop s6Step181HeadFvAfter [s6Step181HeadGOut,s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut] 2 s6Step181HeadBank_outgoingOwned

private theorem s6Step181HeadGv_distinct : (s6Step181HeadGvRow.sign::s6Step181HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step181HeadGv_owned : (s6Step181HeadGvRow.sign::s6Step181HeadGvRow.payload).toFinset⊆s6Step181HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step181HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step181HeadGv_reserved : s6Step181HeadGvBefore.reserve s6Step181HeadGvFresh.toFinset=some s6Step181HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step181HeadGvFresh,arenaWires]
  · norm_num [s6Step181HeadGvBefore,s6Step181HeadFAfter,s6Step181HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step181HeadGvBefore s6Step181HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step181HeadGvFresh rfl rfl
    · norm_num [s6Step181HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step181HeadGv_checked : planRowResizeLog s6Step181HeadGvBefore s6Step181HeadGvRow 105 s6Step181HeadGvFresh=
    some (s6Step181HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 814],775⟩,growRow 775 s6Step181HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step181HeadGvBefore s6Step181HeadGvAfter s6Step181HeadGvRow 105 s6Step181HeadGvFresh
    s6Step181HeadGv_distinct s6Step181HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step181HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step181HeadGvRow.payload++s6Step181HeadGvFresh) s6Step181HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 814],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step181HeadBank_rows : planWindowRowsLog s6Step181HeadGBefore [(s6Step181HeadGRow,180),(s6Step181HeadFRow,180),(s6Step181HeadGvRow,105),(s6Step181HeadFvRow,105)] [s6Step181HeadGFresh,s6Step181HeadFFresh,s6Step181HeadGvFresh,s6Step181HeadFvFresh]=
    some (s6Step181HeadFvAfter,[s6Step181HeadGOut,s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut],(growRow 777 s6Step181HeadGFresh ++ (growRow 795 s6Step181HeadFFresh ++ (growRow 775 s6Step181HeadGvFresh ++ (growRow 776 s6Step181HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step181HeadFvAfter [] []=some (s6Step181HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step181HeadFvBefore s6Step181HeadFvAfter s6Step181HeadFvAfter
    s6Step181HeadFvRow s6Step181HeadFvOut 105 s6Step181HeadFvFresh [] [] []
    (growRow 776 s6Step181HeadFvFresh) ([]) s6Step181HeadFv_Incoming s6Step181HeadFv_checked h4 s6Step181HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step181HeadGvBefore s6Step181HeadGvAfter s6Step181HeadFvAfter
    s6Step181HeadGvRow s6Step181HeadGvOut 105 s6Step181HeadGvFresh [(s6Step181HeadFvRow,105)] [s6Step181HeadFvFresh] [s6Step181HeadFvOut]
    (growRow 775 s6Step181HeadGvFresh) ((growRow 776 s6Step181HeadFvFresh ++ [])) s6Step181HeadGv_Incoming s6Step181HeadGv_checked h3 s6Step181HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step181HeadFBefore s6Step181HeadFAfter s6Step181HeadFvAfter
    s6Step181HeadFRow s6Step181HeadFOut 180 s6Step181HeadFFresh [(s6Step181HeadGvRow,105),(s6Step181HeadFvRow,105)] [s6Step181HeadGvFresh,s6Step181HeadFvFresh] [s6Step181HeadGvOut,s6Step181HeadFvOut]
    (growRow 795 s6Step181HeadFFresh) ((growRow 775 s6Step181HeadGvFresh ++ (growRow 776 s6Step181HeadFvFresh ++ []))) s6Step181HeadF_Incoming s6Step181HeadF_checked h2 s6Step181HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step181HeadGBefore s6Step181HeadGAfter s6Step181HeadFvAfter
    s6Step181HeadGRow s6Step181HeadGOut 180 s6Step181HeadGFresh [(s6Step181HeadFRow,180),(s6Step181HeadGvRow,105),(s6Step181HeadFvRow,105)] [s6Step181HeadFFresh,s6Step181HeadGvFresh,s6Step181HeadFvFresh] [s6Step181HeadFOut,s6Step181HeadGvOut,s6Step181HeadFvOut]
    (growRow 777 s6Step181HeadGFresh) ((growRow 795 s6Step181HeadFFresh ++ (growRow 775 s6Step181HeadGvFresh ++ (growRow 776 s6Step181HeadFvFresh ++ [])))) s6Step181HeadG_Incoming s6Step181HeadG_checked h1 s6Step181HeadG_Outgoing
  exact h0

private theorem s6Step181HeadBank_checked : compileHmrBankResizeLog .headroom s6Step181HeadGBefore ⟨s6Step181HeadFRow,s6Step181HeadGRow,s6Step181HeadFvRow,s6Step181HeadGvRow⟩ ⟨180,180,105,105⟩ [s6Step181HeadGFresh,s6Step181HeadFFresh,s6Step181HeadGvFresh,s6Step181HeadFvFresh]=
    some (s6Step181HeadFvAfter,⟨s6Step181HeadFOut,s6Step181HeadGOut,s6Step181HeadFvOut,s6Step181HeadGvOut⟩,(growRow 777 s6Step181HeadGFresh ++ (growRow 795 s6Step181HeadFFresh ++ (growRow 775 s6Step181HeadGvFresh ++ (growRow 776 s6Step181HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step181HeadBank_rows]
  rfl

private theorem s6Step181Front_checked : compileHmrSourceFrontLog s6Step181EntryFBefore s6Step181FrontBank 179 104 ⟨179,178,105,104⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step181FrontLog=some s6Step181FrontPlan := by
  have pairEq : s6Step181FrontPair=⟨s6Step181HeadFRow,s6Step181HeadGRow,s6Step181HeadFvRow,s6Step181HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step181FrontHead=⟨s6Step181ExitFRow,s6Step181ExitGRow,s6Step181ExitFvRow,s6Step181ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step181Add0A=s6Step181FrontHead.f.wires := by decide +kernel
  have gEq : s6Step181Add0B=s6Step181FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step181Add1A=s6Step181FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step181Add1B=s6Step181FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step181EntryFBefore s6Step181FrontBank 179 104 ⟨179,178,105,104⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step181FrontLog s6Step181FrontPlan
  · exact s6Step181Front_entry
  · exact s6Step181EntryBank_checked
  · exact s6Step181Front_sigma
  · rfl
  · exact s6Step181Front_branch
  · rfl
  · simpa only [s6Step181FrontPlan,pairEq] using s6Step181HeadBank_checked
  · simpa only [s6Step181FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step181F4_checked
  · exact s6Step181Counter_checked
  · rfl
  · simpa only [s6Step181FrontPlan,headEq] using s6Step181ExitBank_checked

private theorem s6Step181Complete_explicit_checked : compileHmrEarlyStepLog s6Step181EntryFBefore s6Step181FrontBank 179 104 ⟨179,178,105,104⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step181CompleteLog=some s6Step181CompletePlan := by
  let Q := s6Step181EarlyControlPlan
  have hq := s6Step181EarlyControl_plan_checked
  have fv1 : s6Step181CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step181CompleteOut.fv.payload[2]?.getD s6Step181CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step181CompleteOut.fv.payload[3]?.getD s6Step181CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step181CompleteOut.fv.payload[4]?.getD s6Step181CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step181EntryFBefore s6Step181EarlyControlArena s6Step181FrontBank 179 104 ⟨179,178,105,104⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step181CompleteLog s6Step181FrontPlan Q
    s6Step181Front_checked s6Step181Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step181Complete_owned s6Step181Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step181EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 848 s6Step181CompleteOut.fv.second (s6Step181CompleteOut.fv.payload[2]?.getD s6Step181CompleteOut.fv.sign) (s6Step181CompleteOut.fv.payload[3]?.getD s6Step181CompleteOut.fv.sign) (s6Step181CompleteOut.fv.payload[4]?.getD s6Step181CompleteOut.fv.sign) 803 43 s6Step181EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep181Arena : Arena := s6Step181EntryFBefore
def s6PrivateStep181Bank : WindowBank := s6Step181FrontBank
def s6PrivateStep181Spec : HmrSourceWalkStepLog := ⟨179,104,⟨179,178,105,104⟩,43,.early s6Step181CompleteLog⟩
def s6PrivateStep181Plan : HmrSourceStepPlan := .early s6Step181CompletePlan
theorem s6PrivateStep181_source : s6PrivateStep181Spec=s6ObservedLogs176[5] := rfl
theorem s6PrivateStep181_checked : compileHmrSourceStepLog s6PrivateStep181Arena s6PrivateStep181Bank
    s6PrivateStep181Spec.fgWidth s6PrivateStep181Spec.vWidth s6PrivateStep181Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 181 s6PrivateStep181Spec.need none s6PrivateStep181Spec.log=some s6PrivateStep181Plan := by
  change compileHmrSourceStepLog s6Step181EntryFBefore s6Step181FrontBank 179 104 ⟨179,178,105,104⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 181 43 none (.early s6Step181CompleteLog)=some (.early s6Step181CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 181<498)]
  rw [s6Step181Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
