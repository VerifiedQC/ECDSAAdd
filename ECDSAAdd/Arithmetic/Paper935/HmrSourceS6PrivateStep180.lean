import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep178
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

private def s6Step180CompleteMoves : List (Wire × Wire) := []

private def s6Step180EarlyControlLog : HmrEarlyControlLog := ⟨[830, 907, 814, 876, 880],[865],[863],[890, 891, 903, 791, 825, 810],[894]⟩

private def s6Step180FrontLog : HmrFrontAllocationLog := ⟨⟨[[814], [], [], []],[[865], [876], [830], [907]],[[], [], [], []]⟩,[803],[848],[863],[890],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903]⟩

private def s6Step180CompleteLog : HmrEarlyStepLog := ⟨s6Step180FrontLog,s6Step180CompleteMoves,s6Step180EarlyControlLog⟩

private def s6Step180ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step180ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step180ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩

private def s6Step180ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step180FrontOut : WindowBank := ⟨s6Step180ExitFOut,s6Step180ExitGOut,s6Step180ExitFvOut,s6Step180ExitGvOut⟩

private def s6Step180CompleteOut : WindowBank := s6Step180FrontOut.repacked s6Step180CompleteMoves

private def s6Step180EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step180EarlyControlPositiveArena,[865],s6Step180EarlyControlEqualityArena,[863],⟨⟨803,false⟩,[⟨⟨865,false⟩,863⟩]⟩⟩

private def s6Step180EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨772,false⟩,907⟩,⟨⟨771,false⟩,814⟩,⟨⟨770,false⟩,876⟩,⟨⟨769,false⟩,880⟩]⟩

private def s6Step180EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step180EarlyControlZeroArena,s6Step180EarlyControlZeroPlan,s6Step180EarlyControlClassPlan,s6Step180EarlyControlFlagArena,s6Step180EarlyControlFittedArena,s6Step180EarlyControlHistoryArena,s6Step180EarlyControlSigmaArena,s6Step180EarlyControlOutputArena,s6Step180EarlyControlLog⟩

private def s6Step180CounterWork : List Wire := [863, 890, 891, 903]

private theorem s6Step180Counter_bounded : s6Step180CounterWork.toFinset⊆arenaWires := by norm_num [s6Step180CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step180HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180CounterDuring : Arena := ⟨s6Step180HeadFvAfter.live∪s6Step180CounterWork.toFinset,Finset.union_subset s6Step180HeadFvAfter.bounded s6Step180Counter_bounded⟩

private def s6Step180EntryFFresh : List Wire := [814]

private def s6Step180EntryFvFresh : List Wire := []

private def s6Step180EntryGFresh : List Wire := []

private def s6Step180EntryFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180EntryGvAfter : Arena := s6Step180EntryFAfter

private def s6Step180EntryGvFresh : List Wire := []

private def s6Step180ExitFExtra : List Wire := [814, 876]

private def s6Step180ExitFvExtra : List Wire := [907]

private def s6Step180ExitGExtra : List Wire := [880, 865]

private def s6Step180ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180ExitGvExtra : List Wire := [830]

private def s6Step180Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step180Add0_bounded : s6Step180Add0Work.toFinset⊆arenaWires := by
  have h : s6Step180Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step180Add0During : Arena := ⟨s6Step180Add0Arena.live∪s6Step180Add0Work.toFinset,Finset.union_subset s6Step180Add0Arena.bounded s6Step180Add0_bounded⟩

private def s6Step180Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step180Add1_bounded : s6Step180Add1Work.toFinset⊆arenaWires := by
  have h : s6Step180Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step180Add1During : Arena := ⟨s6Step180Add1Arena.live∪s6Step180Add1Work.toFinset,Finset.union_subset s6Step180Add1Arena.bounded s6Step180Add1_bounded⟩

private def s6Step180F4FlagArena : Arena := ⟨s6Step180HeadFvAfter.live∪{863},Finset.union_subset s6Step180HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step180F4Plan : HmrHybridF4Plan := ⟨s6Step180F4FlagArena,[863],s6Step180Add0Arena,[890],s6Step180Add0During,s6Step180Add0Work,s6Step180Add1During,s6Step180Add1Work⟩

private def s6Step180HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814, 876],795⟩

private def s6Step180HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 907],776⟩

private def s6Step180HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 865],777⟩

private def s6Step180HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 830],775⟩

private def s6Step180FrontHead : WindowBank := ⟨s6Step180HeadFOut,s6Step180HeadGOut,s6Step180HeadFvOut,s6Step180HeadGvOut⟩

private def s6Step180EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814],795⟩

private def s6Step180EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step180EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩

private def s6Step180EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step180FrontPair : WindowBank := ⟨s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut⟩

private def s6Step180FrontSigmaArena : Arena := ⟨s6Step180EntryGvAfter.live∪{803},Finset.union_subset s6Step180EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step180HeadFFresh : List Wire := [876]

private def s6Step180HeadFvFresh : List Wire := [907]

private def s6Step180HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180HeadGFresh : List Wire := [865]

private def s6Step180HeadGvFresh : List Wire := [830]

private def s6Step180FrontPlan : HmrSourceFront := ⟨s6Step180EntryGvAfter,s6Step180FrontPair,(growRow 795 s6Step180EntryFFresh ++ (growRow 777 s6Step180EntryGFresh ++ (growRow 776 s6Step180EntryFvFresh ++ (growRow 775 s6Step180EntryGvFresh ++ [])))),s6Step180FrontSigmaArena,[803],s6Step180HeadGBefore,[848],
  s6Step180HeadFvAfter,s6Step180FrontHead,(growRow 777 s6Step180HeadGFresh ++ (growRow 795 s6Step180HeadFFresh ++ (growRow 775 s6Step180HeadGvFresh ++ (growRow 776 s6Step180HeadFvFresh ++ [])))),s6Step180F4Plan,s6Step180CounterDuring,s6Step180CounterWork,s6Step180ExitGvAfter,s6Step180FrontOut,(shrinkRow 777 s6Step180ExitGExtra ++ (shrinkRow 795 s6Step180ExitFExtra ++ (shrinkRow 776 s6Step180ExitFvExtra ++ (shrinkRow 775 s6Step180ExitGvExtra ++ []))))⟩

private def s6Step180CompletePlan : HmrEarlyStepPlan := ⟨s6Step180FrontPlan,s6Step180EarlyControlArena,s6Step180EarlyControlPlan,s6Step180CompleteMoves⟩

private theorem s6Step180Complete_apart : List.Disjoint (s6Step180CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step180CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step180Complete_owned : (s6Step180CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180Complete_repack : s6Step180ExitGvAfter.checkRepack s6Step180CompleteMoves=some s6Step180EarlyControlArena := by rfl

private theorem s6Step180EarlyControl_branchOwned : ([848] : List Wire).toFinset⊆s6Step180EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EarlyControl_branch : compileHmrBranchRetirement s6Step180EarlyControlSigmaArena 848=some s6Step180EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step180EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step180EarlyControlSigmaArena s6Step180EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [848] rfl rfl
    decide +kernel

private theorem s6Step180EarlyControl_classEqualityBorrow : s6Step180EarlyControlPositiveArena.checkBorrow (([803, 865] : List Wire).length-1) s6Step180EarlyControlLog.classWork=some s6Step180EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step180EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step180EarlyControlEqualityArena,s6Step180EarlyControlPositiveArena,s6Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step180EarlyControl_classEqualityOwned : ([803, 865] : List Wire).toFinset⊆s6Step180EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180EarlyControl_classEquality : compileHmrEqualityLog s6Step180EarlyControlPositiveArena [803, 865] 0 s6Step180EarlyControlLog.classWork=some (s6Step180EarlyControlEqualityArena,s6Step180EarlyControlLog.classWork,s6Step180EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step180EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step180EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step180EarlyControl_classOwned : ([769, 880, 803] : List Wire).toFinset⊆s6Step180EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180EarlyControl_positiveBorrow : s6Step180EarlyControlZeroArena.checkBorrow (1) s6Step180EarlyControlLog.positiveWork=some s6Step180EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step180EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step180EarlyControlPositiveArena,s6Step180EarlyControlZeroArena,s6Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step180EarlyControl_class : compileHmrSourceClassLog s6Step180EarlyControlZeroArena false 769 s6Step180EarlyControlZeroPlan.top 0 803 s6Step180EarlyControlLog.positiveWork s6Step180EarlyControlLog.classWork=some s6Step180EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step180EarlyControlClassPlan s6Step180EarlyControlZeroArena false 769 s6Step180EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step180EarlyControl_classOwned
  · exact s6Step180EarlyControl_positiveBorrow
  · exact s6Step180EarlyControl_classEquality

private theorem s6Step180EarlyControl_entryRecordOwned : ([848, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EarlyControl_fitBorrow : s6Step180EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step180EarlyControlLog.recordFresh=some s6Step180EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step180EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step180EarlyControlFittedArena,s6Step180EarlyControlFlagArena,s6Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step180EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step180EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180EarlyControl_fit : compileHmrRecordGrowLog s6Step180EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 43 s6Step180EarlyControlLog.recordFresh=some s6Step180EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step180EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step180EarlyControl_fitBorrow

private theorem s6Step180EarlyControl_flagsBorrow : s6Step180EarlyControlEqualityArena.checkBorrow (6) s6Step180EarlyControlLog.flagWork=some s6Step180EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step180EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step180EarlyControlFlagArena,s6Step180EarlyControlEqualityArena,s6Step180EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step180EarlyControl_flagsOwned : ([863, 253, 252, 251] : List Wire).toFinset⊆s6Step180EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180EarlyControl_flags : compileHmrFlagsLog s6Step180EarlyControlClassPlan.equalityArena s6Step180EarlyControlClassPlan.equality.top 253 252 251 s6Step180EarlyControlLog.flagWork=some s6Step180EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step180EarlyControl_flagsOwned⟩
  · exact s6Step180EarlyControl_flagsBorrow

private theorem s6Step180EarlyControl_historyBorrow : s6Step180EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step180EarlyControlLog.recordFresh=some s6Step180EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step180EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step180EarlyControlArena s6Step180EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step180EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step180EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EarlyControl_history : compileHmrRecordGrowLog s6Step180EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 43 s6Step180EarlyControlLog.recordFresh=some s6Step180EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step180EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step180EarlyControl_historyBorrow

private theorem s6Step180EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step180EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step180EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EarlyControl_sigmaRelease : s6Step180EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step180EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step180EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step180EarlyControlHistoryArena s6Step180EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step180EarlyControl_sigma : compileHmrSigmaDropLog s6Step180EarlyControlHistoryArena false 0 0 254 803 []=some s6Step180EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step180EarlyControl_sigmaOwned⟩
  · exact s6Step180EarlyControl_sigmaRelease

private theorem s6Step180EarlyControl_zeroBorrow : s6Step180EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step180EarlyControlLog.zeroWork=some s6Step180EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step180EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step180EarlyControlArena s6Step180EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<865) ∨ (866≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step180EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step180EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step180EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step180EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step180EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EarlyControl_zero : compileHmrEqualityLog s6Step180EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step180EarlyControlLog.zeroWork=some (s6Step180EarlyControlZeroArena,s6Step180EarlyControlLog.zeroWork,s6Step180EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step180EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step180EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step180EarlyControl_logged : s6Step180EarlyControlPlan.Logged s6Step180EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 848 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step180EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step180EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step180EarlyControl_zero
  · exact s6Step180EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step180EarlyControl_flags
  · exact s6Step180EarlyControl_fit
  · exact s6Step180EarlyControl_history
  · exact s6Step180EarlyControl_sigma
  · exact s6Step180EarlyControl_branch

private theorem s6Step180EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step180EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 848 43 s6Step180EarlyControlLog=some s6Step180EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step180EarlyControlPlan s6Step180EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 848 43 s6Step180EarlyControl_logged

private def s6Step180EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step180EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step180EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩

private def s6Step180EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step180FrontBank : WindowBank := ⟨s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow⟩

private def s6Step180Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814, 876, 795]

private def s6Step180Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 865, 777]

private def s6Step180Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 907, 776]

private def s6Step180Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 830, 775]

private theorem s6Step180Counter_apart : Disjoint s6Step180HeadFvAfter.live s6Step180CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step180HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180Counter_borrowed : s6Step180HeadFvAfter.checkBorrow 4 s6Step180CounterWork=some s6Step180CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step180HeadFvAfter s6Step180CounterDuring s6Step180CounterWork.toFinset s6Step180Counter_bounded s6Step180Counter_apart rfl

private theorem s6Step180Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step180HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step180HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180Counter_checked : compileHmrCounterStepLog s6Step180HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step180CounterWork=some s6Step180CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step180HeadFvAfter.live := fun q hq => s6Step180Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step180Counter_borrowed

private theorem s6Step180EntryBank_incomingDistinct : ([s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180EntryF_Incoming : rowsOwned s6Step180EntryFBefore [s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow] 0 s6Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180EntryBank_outgoingOwned : rowsOwned s6Step180EntryGvAfter [s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step180EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180EntryF_Outgoing : rowsOwned s6Step180EntryGvAfter [s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut] :=
  hmrRows_owned_drop s6Step180EntryGvAfter [s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut] 0 s6Step180EntryBank_outgoingOwned

private theorem s6Step180EntryF_distinct : (s6Step180EntryFRow.sign::s6Step180EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180EntryF_owned : (s6Step180EntryFRow.sign::s6Step180EntryFRow.payload).toFinset⊆s6Step180EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EntryF_reserved : s6Step180EntryFBefore.reserve s6Step180EntryFFresh.toFinset=some s6Step180EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180EntryFFresh,arenaWires]
  · norm_num [s6Step180EntryFBefore,s6Step180EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step180EntryFBefore s6Step180EntryFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step180EntryFFresh rfl rfl
    · norm_num [s6Step180EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step180EntryF_checked : planRowResizeLog s6Step180EntryFBefore s6Step180EntryFRow 180 s6Step180EntryFFresh=
    some (s6Step180EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814],795⟩,growRow 795 s6Step180EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step180EntryFBefore s6Step180EntryFAfter s6Step180EntryFRow 180 s6Step180EntryFFresh
    s6Step180EntryF_distinct s6Step180EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180EntryF_reserved
  have rowEq : WindowRow.mk (s6Step180EntryFRow.payload++s6Step180EntryFFresh) s6Step180EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step180EntryFvAfter : Arena := s6Step180EntryFAfter

private def s6Step180EntryFvBefore : Arena := s6Step180EntryFAfter

private theorem s6Step180EntryFv_Incoming : rowsOwned s6Step180EntryFvBefore [s6Step180EntryFvRow,s6Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow] 2 s6Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180EntryFv_Outgoing : rowsOwned s6Step180EntryGvAfter [s6Step180EntryFvOut,s6Step180EntryGvOut] :=
  hmrRows_owned_drop s6Step180EntryGvAfter [s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut] 2 s6Step180EntryBank_outgoingOwned

private theorem s6Step180EntryFv_distinct : (s6Step180EntryFvRow.sign::s6Step180EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180EntryFv_owned : (s6Step180EntryFvRow.sign::s6Step180EntryFvRow.payload).toFinset⊆s6Step180EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EntryFv_reserved : s6Step180EntryFvBefore.reserve s6Step180EntryFvFresh.toFinset=some s6Step180EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180EntryFvFresh,arenaWires]
  · norm_num [s6Step180EntryFvBefore,s6Step180EntryFAfter,s6Step180EntryFvFresh,arenaWires]
  · simp only [s6Step180EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step180EntryFv_checked : planRowResizeLog s6Step180EntryFvBefore s6Step180EntryFvRow 104 s6Step180EntryFvFresh=
    some (s6Step180EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩,growRow 776 s6Step180EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step180EntryFvBefore s6Step180EntryFvAfter s6Step180EntryFvRow 104 s6Step180EntryFvFresh
    s6Step180EntryFv_distinct s6Step180EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step180EntryFvRow.payload++s6Step180EntryFvFresh) s6Step180EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step180EntryGAfter : Arena := s6Step180EntryFAfter

private def s6Step180EntryGBefore : Arena := s6Step180EntryFAfter

private theorem s6Step180EntryG_Incoming : rowsOwned s6Step180EntryGBefore [s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow] 1 s6Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180EntryG_Outgoing : rowsOwned s6Step180EntryGvAfter [s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut] :=
  hmrRows_owned_drop s6Step180EntryGvAfter [s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut] 1 s6Step180EntryBank_outgoingOwned

private theorem s6Step180EntryG_distinct : (s6Step180EntryGRow.sign::s6Step180EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180EntryG_owned : (s6Step180EntryGRow.sign::s6Step180EntryGRow.payload).toFinset⊆s6Step180EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EntryG_reserved : s6Step180EntryGBefore.reserve s6Step180EntryGFresh.toFinset=some s6Step180EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180EntryGFresh,arenaWires]
  · norm_num [s6Step180EntryGBefore,s6Step180EntryFAfter,s6Step180EntryGFresh,arenaWires]
  · simp only [s6Step180EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step180EntryG_checked : planRowResizeLog s6Step180EntryGBefore s6Step180EntryGRow 180 s6Step180EntryGFresh=
    some (s6Step180EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩,growRow 777 s6Step180EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step180EntryGBefore s6Step180EntryGAfter s6Step180EntryGRow 180 s6Step180EntryGFresh
    s6Step180EntryG_distinct s6Step180EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180EntryG_reserved
  have rowEq : WindowRow.mk (s6Step180EntryGRow.payload++s6Step180EntryGFresh) s6Step180EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step180EntryGvBefore : Arena := s6Step180EntryFAfter

private theorem s6Step180EntryGv_Incoming : rowsOwned s6Step180EntryGvBefore [s6Step180EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow] 3 s6Step180EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180EntryGv_Outgoing : rowsOwned s6Step180EntryGvAfter [s6Step180EntryGvOut] :=
  hmrRows_owned_drop s6Step180EntryGvAfter [s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut] 3 s6Step180EntryBank_outgoingOwned

private theorem s6Step180EntryGv_distinct : (s6Step180EntryGvRow.sign::s6Step180EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180EntryGv_owned : (s6Step180EntryGvRow.sign::s6Step180EntryGvRow.payload).toFinset⊆s6Step180EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180EntryGv_reserved : s6Step180EntryGvBefore.reserve s6Step180EntryGvFresh.toFinset=some s6Step180EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180EntryGvFresh,arenaWires]
  · norm_num [s6Step180EntryGvBefore,s6Step180EntryFAfter,s6Step180EntryGvFresh,arenaWires]
  · simp only [s6Step180EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step180EntryGv_checked : planRowResizeLog s6Step180EntryGvBefore s6Step180EntryGvRow 104 s6Step180EntryGvFresh=
    some (s6Step180EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩,growRow 775 s6Step180EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step180EntryGvBefore s6Step180EntryGvAfter s6Step180EntryGvRow 104 s6Step180EntryGvFresh
    s6Step180EntryGv_distinct s6Step180EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step180EntryGvRow.payload++s6Step180EntryGvFresh) s6Step180EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step180EntryBank_rows : planWindowRowsLog s6Step180EntryFBefore [(s6Step180EntryFRow,180),(s6Step180EntryGRow,180),(s6Step180EntryFvRow,104),(s6Step180EntryGvRow,104)] [s6Step180EntryFFresh,s6Step180EntryGFresh,s6Step180EntryFvFresh,s6Step180EntryGvFresh]=
    some (s6Step180EntryGvAfter,[s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut],(growRow 795 s6Step180EntryFFresh ++ (growRow 777 s6Step180EntryGFresh ++ (growRow 776 s6Step180EntryFvFresh ++ (growRow 775 s6Step180EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step180EntryGvAfter [] []=some (s6Step180EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step180EntryGvBefore s6Step180EntryGvAfter s6Step180EntryGvAfter
    s6Step180EntryGvRow s6Step180EntryGvOut 104 s6Step180EntryGvFresh [] [] []
    (growRow 775 s6Step180EntryGvFresh) ([]) s6Step180EntryGv_Incoming s6Step180EntryGv_checked h4 s6Step180EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step180EntryFvBefore s6Step180EntryFvAfter s6Step180EntryGvAfter
    s6Step180EntryFvRow s6Step180EntryFvOut 104 s6Step180EntryFvFresh [(s6Step180EntryGvRow,104)] [s6Step180EntryGvFresh] [s6Step180EntryGvOut]
    (growRow 776 s6Step180EntryFvFresh) ((growRow 775 s6Step180EntryGvFresh ++ [])) s6Step180EntryFv_Incoming s6Step180EntryFv_checked h3 s6Step180EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step180EntryGBefore s6Step180EntryGAfter s6Step180EntryGvAfter
    s6Step180EntryGRow s6Step180EntryGOut 180 s6Step180EntryGFresh [(s6Step180EntryFvRow,104),(s6Step180EntryGvRow,104)] [s6Step180EntryFvFresh,s6Step180EntryGvFresh] [s6Step180EntryFvOut,s6Step180EntryGvOut]
    (growRow 777 s6Step180EntryGFresh) ((growRow 776 s6Step180EntryFvFresh ++ (growRow 775 s6Step180EntryGvFresh ++ []))) s6Step180EntryG_Incoming s6Step180EntryG_checked h2 s6Step180EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step180EntryFBefore s6Step180EntryFAfter s6Step180EntryGvAfter
    s6Step180EntryFRow s6Step180EntryFOut 180 s6Step180EntryFFresh [(s6Step180EntryGRow,180),(s6Step180EntryFvRow,104),(s6Step180EntryGvRow,104)] [s6Step180EntryGFresh,s6Step180EntryFvFresh,s6Step180EntryGvFresh] [s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut]
    (growRow 795 s6Step180EntryFFresh) ((growRow 777 s6Step180EntryGFresh ++ (growRow 776 s6Step180EntryFvFresh ++ (growRow 775 s6Step180EntryGvFresh ++ [])))) s6Step180EntryF_Incoming s6Step180EntryF_checked h1 s6Step180EntryF_Outgoing
  exact h0

private theorem s6Step180EntryBank_checked : compileHmrBankResizeLog .entry s6Step180EntryFBefore ⟨s6Step180EntryFRow,s6Step180EntryGRow,s6Step180EntryFvRow,s6Step180EntryGvRow⟩ ⟨180,180,104,104⟩ [s6Step180EntryFFresh,s6Step180EntryGFresh,s6Step180EntryFvFresh,s6Step180EntryGvFresh]=
    some (s6Step180EntryGvAfter,⟨s6Step180EntryFOut,s6Step180EntryGOut,s6Step180EntryFvOut,s6Step180EntryGvOut⟩,(growRow 795 s6Step180EntryFFresh ++ (growRow 777 s6Step180EntryGFresh ++ (growRow 776 s6Step180EntryFvFresh ++ (growRow 775 s6Step180EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step180EntryBank_rows]
  rfl

private def s6Step180ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180ExitFBefore : Arena := s6Step180ExitGAfter

private def s6Step180ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814, 876],795⟩

private def s6Step180ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 907],776⟩

private def s6Step180ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 865],777⟩

private def s6Step180ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 830],775⟩

private theorem s6Step180ExitBank_incomingDistinct : ([s6Step180ExitGRow,s6Step180ExitFRow,s6Step180ExitFvRow,s6Step180ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180ExitF_Incoming : rowsOwned s6Step180ExitFBefore [s6Step180ExitFRow,s6Step180ExitFvRow,s6Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180ExitGRow,s6Step180ExitFRow,s6Step180ExitFvRow,s6Step180ExitGvRow] 1 s6Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180ExitBank_outgoingOwned : rowsOwned s6Step180ExitGvAfter [s6Step180ExitGOut,s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step180ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180ExitF_Outgoing : rowsOwned s6Step180ExitGvAfter [s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut] :=
  hmrRows_owned_drop s6Step180ExitGvAfter [s6Step180ExitGOut,s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut] 1 s6Step180ExitBank_outgoingOwned

private theorem s6Step180ExitF_distinct : (s6Step180ExitFRow.sign::s6Step180ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180ExitF_owned : (s6Step180ExitFRow.sign::s6Step180ExitFRow.payload).toFinset⊆s6Step180ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180ExitF_retired : s6Step180ExitFBefore.retireSet s6Step180ExitFExtra.toFinset=s6Step180ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step180ExitFBefore s6Step180ExitFAfter s6Step180ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step180ExitFBefore s6Step180ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step180ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step180ExitF_checked : planRowResizeLog s6Step180ExitFBefore s6Step180ExitFRow 179 []=
    some (s6Step180ExitFAfter,s6Step180ExitFOut,shrinkRow 795 s6Step180ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step180ExitFBefore s6Step180ExitFRow 179 s6Step180ExitF_distinct s6Step180ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step180ExitFRow.payload.take 179) s6Step180ExitFRow.sign=s6Step180ExitFOut := by decide +kernel
  have hi : s6Step180ExitFRow.payload.drop 179=s6Step180ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step180ExitF_retired] at result
  exact result

private def s6Step180ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180ExitFvBefore : Arena := s6Step180ExitFAfter

private theorem s6Step180ExitFv_Incoming : rowsOwned s6Step180ExitFvBefore [s6Step180ExitFvRow,s6Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180ExitGRow,s6Step180ExitFRow,s6Step180ExitFvRow,s6Step180ExitGvRow] 2 s6Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180ExitFv_Outgoing : rowsOwned s6Step180ExitGvAfter [s6Step180ExitFvOut,s6Step180ExitGvOut] :=
  hmrRows_owned_drop s6Step180ExitGvAfter [s6Step180ExitGOut,s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut] 2 s6Step180ExitBank_outgoingOwned

private theorem s6Step180ExitFv_distinct : (s6Step180ExitFvRow.sign::s6Step180ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180ExitFv_owned : (s6Step180ExitFvRow.sign::s6Step180ExitFvRow.payload).toFinset⊆s6Step180ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180ExitFv_retired : s6Step180ExitFvBefore.retireSet s6Step180ExitFvExtra.toFinset=s6Step180ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step180ExitFvBefore s6Step180ExitFvAfter s6Step180ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step180ExitFvBefore s6Step180ExitFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step180ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step180ExitFv_checked : planRowResizeLog s6Step180ExitFvBefore s6Step180ExitFvRow 104 []=
    some (s6Step180ExitFvAfter,s6Step180ExitFvOut,shrinkRow 776 s6Step180ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step180ExitFvBefore s6Step180ExitFvRow 104 s6Step180ExitFv_distinct s6Step180ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step180ExitFvRow.payload.take 104) s6Step180ExitFvRow.sign=s6Step180ExitFvOut := by decide +kernel
  have hi : s6Step180ExitFvRow.payload.drop 104=s6Step180ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step180ExitFv_retired] at result
  exact result

private def s6Step180ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step180ExitG_Incoming : rowsOwned s6Step180ExitGBefore [s6Step180ExitGRow,s6Step180ExitFRow,s6Step180ExitFvRow,s6Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180ExitGRow,s6Step180ExitFRow,s6Step180ExitFvRow,s6Step180ExitGvRow] 0 s6Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step180ExitG_Outgoing : rowsOwned s6Step180ExitGvAfter [s6Step180ExitGOut,s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut] :=
  hmrRows_owned_drop s6Step180ExitGvAfter [s6Step180ExitGOut,s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut] 0 s6Step180ExitBank_outgoingOwned

private theorem s6Step180ExitG_distinct : (s6Step180ExitGRow.sign::s6Step180ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180ExitG_owned : (s6Step180ExitGRow.sign::s6Step180ExitGRow.payload).toFinset⊆s6Step180ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180ExitG_retired : s6Step180ExitGBefore.retireSet s6Step180ExitGExtra.toFinset=s6Step180ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step180ExitGBefore s6Step180ExitGAfter s6Step180ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step180ExitGBefore s6Step180ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step180ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step180ExitG_checked : planRowResizeLog s6Step180ExitGBefore s6Step180ExitGRow 179 []=
    some (s6Step180ExitGAfter,s6Step180ExitGOut,shrinkRow 777 s6Step180ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step180ExitGBefore s6Step180ExitGRow 179 s6Step180ExitG_distinct s6Step180ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step180ExitGRow.payload.take 179) s6Step180ExitGRow.sign=s6Step180ExitGOut := by decide +kernel
  have hi : s6Step180ExitGRow.payload.drop 179=s6Step180ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step180ExitG_retired] at result
  exact result

private def s6Step180ExitGvBefore : Arena := s6Step180ExitFvAfter

private theorem s6Step180ExitGv_Incoming : rowsOwned s6Step180ExitGvBefore [s6Step180ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180ExitGRow,s6Step180ExitFRow,s6Step180ExitFvRow,s6Step180ExitGvRow] 3 s6Step180ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180ExitGv_Outgoing : rowsOwned s6Step180ExitGvAfter [s6Step180ExitGvOut] :=
  hmrRows_owned_drop s6Step180ExitGvAfter [s6Step180ExitGOut,s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut] 3 s6Step180ExitBank_outgoingOwned

private theorem s6Step180ExitGv_distinct : (s6Step180ExitGvRow.sign::s6Step180ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180ExitGv_owned : (s6Step180ExitGvRow.sign::s6Step180ExitGvRow.payload).toFinset⊆s6Step180ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180ExitGv_retired : s6Step180ExitGvBefore.retireSet s6Step180ExitGvExtra.toFinset=s6Step180ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step180ExitGvBefore s6Step180ExitGvAfter s6Step180ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step180ExitGvBefore s6Step180ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step180ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step180ExitGv_checked : planRowResizeLog s6Step180ExitGvBefore s6Step180ExitGvRow 104 []=
    some (s6Step180ExitGvAfter,s6Step180ExitGvOut,shrinkRow 775 s6Step180ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step180ExitGvBefore s6Step180ExitGvRow 104 s6Step180ExitGv_distinct s6Step180ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step180ExitGvRow.payload.take 104) s6Step180ExitGvRow.sign=s6Step180ExitGvOut := by decide +kernel
  have hi : s6Step180ExitGvRow.payload.drop 104=s6Step180ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step180ExitGv_retired] at result
  exact result

private theorem s6Step180ExitBank_rows : planWindowRowsLog s6Step180ExitGBefore [(s6Step180ExitGRow,179),(s6Step180ExitFRow,179),(s6Step180ExitFvRow,104),(s6Step180ExitGvRow,104)] [[],[],[],[]]=
    some (s6Step180ExitGvAfter,[s6Step180ExitGOut,s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut],(shrinkRow 777 s6Step180ExitGExtra ++ (shrinkRow 795 s6Step180ExitFExtra ++ (shrinkRow 776 s6Step180ExitFvExtra ++ (shrinkRow 775 s6Step180ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step180ExitGvAfter [] []=some (s6Step180ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step180ExitGvBefore s6Step180ExitGvAfter s6Step180ExitGvAfter
    s6Step180ExitGvRow s6Step180ExitGvOut 104 [] [] [] []
    (shrinkRow 775 s6Step180ExitGvExtra) ([]) s6Step180ExitGv_Incoming s6Step180ExitGv_checked h4 s6Step180ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step180ExitFvBefore s6Step180ExitFvAfter s6Step180ExitGvAfter
    s6Step180ExitFvRow s6Step180ExitFvOut 104 [] [(s6Step180ExitGvRow,104)] [[]] [s6Step180ExitGvOut]
    (shrinkRow 776 s6Step180ExitFvExtra) ((shrinkRow 775 s6Step180ExitGvExtra ++ [])) s6Step180ExitFv_Incoming s6Step180ExitFv_checked h3 s6Step180ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step180ExitFBefore s6Step180ExitFAfter s6Step180ExitGvAfter
    s6Step180ExitFRow s6Step180ExitFOut 179 [] [(s6Step180ExitFvRow,104),(s6Step180ExitGvRow,104)] [[],[]] [s6Step180ExitFvOut,s6Step180ExitGvOut]
    (shrinkRow 795 s6Step180ExitFExtra) ((shrinkRow 776 s6Step180ExitFvExtra ++ (shrinkRow 775 s6Step180ExitGvExtra ++ []))) s6Step180ExitF_Incoming s6Step180ExitF_checked h2 s6Step180ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step180ExitGBefore s6Step180ExitGAfter s6Step180ExitGvAfter
    s6Step180ExitGRow s6Step180ExitGOut 179 [] [(s6Step180ExitFRow,179),(s6Step180ExitFvRow,104),(s6Step180ExitGvRow,104)] [[],[],[]] [s6Step180ExitFOut,s6Step180ExitFvOut,s6Step180ExitGvOut]
    (shrinkRow 777 s6Step180ExitGExtra) ((shrinkRow 795 s6Step180ExitFExtra ++ (shrinkRow 776 s6Step180ExitFvExtra ++ (shrinkRow 775 s6Step180ExitGvExtra ++ [])))) s6Step180ExitG_Incoming s6Step180ExitG_checked h1 s6Step180ExitG_Outgoing
  exact h0

private theorem s6Step180ExitBank_checked : compileHmrBankResizeLog .exit s6Step180ExitGBefore ⟨s6Step180ExitFRow,s6Step180ExitGRow,s6Step180ExitFvRow,s6Step180ExitGvRow⟩ ⟨179,179,104,104⟩ [[],[],[],[]]=
    some (s6Step180ExitGvAfter,⟨s6Step180ExitFOut,s6Step180ExitGOut,s6Step180ExitFvOut,s6Step180ExitGvOut⟩,(shrinkRow 777 s6Step180ExitGExtra ++ (shrinkRow 795 s6Step180ExitFExtra ++ (shrinkRow 776 s6Step180ExitFvExtra ++ (shrinkRow 775 s6Step180ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step180ExitBank_rows]
  rfl

private theorem s6Step180Add0_apart : Disjoint s6Step180Add0Arena.live s6Step180Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step180Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180Add0_card : s6Step180Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step180Add0_borrowed : s6Step180Add0Arena.checkBorrow (hmrHybridCount s6Step180Add0Arena s6Step180Add0B.length) s6Step180Add0Work=some s6Step180Add0During := by
  have len : s6Step180Add0Work.length=hmrHybridCount s6Step180Add0Arena s6Step180Add0B.length := by
    rw [hmrHybridCount,s6Step180Add0_card]
    decide +kernel
  have nd : s6Step180Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step180Add0Arena s6Step180Add0During s6Step180Add0Work.toFinset s6Step180Add0_bounded s6Step180Add0_apart rfl

private theorem s6Step180Add0_distinct : (863::848::890::(s6Step180Add0A++s6Step180Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180Add0_owned : (863::848::890::(s6Step180Add0A++s6Step180Add0B)).toFinset⊆s6Step180Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step180Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180Add0_checked : compileHmrHybridCinLog s6Step180Add0Arena 848 863 890 s6Step180Add0A s6Step180Add0B s6Step180Add0Work=some s6Step180Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step180Add0Arena s6Step180Add0During 848 863 890 s6Step180Add0A s6Step180Add0B s6Step180Add0Work
    (by decide +kernel) (by decide +kernel) s6Step180Add0_distinct
    (fun q hq => s6Step180Add0_owned (List.mem_toFinset.mpr hq)) s6Step180Add0_borrowed

private theorem s6Step180Add1_apart : Disjoint s6Step180Add1Arena.live s6Step180Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step180Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180Add1_card : s6Step180Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step180Add1_borrowed : s6Step180Add1Arena.checkBorrow (hmrHybridCount s6Step180Add1Arena s6Step180Add1B.length) s6Step180Add1Work=some s6Step180Add1During := by
  have len : s6Step180Add1Work.length=hmrHybridCount s6Step180Add1Arena s6Step180Add1B.length := by
    rw [hmrHybridCount,s6Step180Add1_card]
    decide +kernel
  have nd : s6Step180Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step180Add1Arena s6Step180Add1During s6Step180Add1Work.toFinset s6Step180Add1_bounded s6Step180Add1_apart rfl

private theorem s6Step180Add1_distinct : (863::848::890::(s6Step180Add1A++s6Step180Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180Add1_owned : (863::848::890::(s6Step180Add1A++s6Step180Add1B)).toFinset⊆s6Step180Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step180Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180Add1_checked : compileHmrHybridCinLog s6Step180Add1Arena 848 863 890 s6Step180Add1A s6Step180Add1B s6Step180Add1Work=some s6Step180Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step180Add1Arena s6Step180Add1During 848 863 890 s6Step180Add1A s6Step180Add1B s6Step180Add1Work
    (by decide +kernel) (by decide +kernel) s6Step180Add1_distinct
    (fun q hq => s6Step180Add1_owned (List.mem_toFinset.mpr hq)) s6Step180Add1_borrowed

private theorem s6Step180F4_apart : Disjoint (s6Step180Add0A++s6Step180Add0B).toFinset (s6Step180Add1A++s6Step180Add1B).toFinset := by
  have nd : ((s6Step180Add0A++s6Step180Add0B)++(s6Step180Add1A++s6Step180Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step180F4_carry : s6Step180F4FlagArena.checkBorrow 1 [890]=some s6Step180Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step180F4FlagArena,s6Step180HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step180F4FlagArena,s6Step180HeadFvAfter,s6Step180Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step180F4_distinct : (803::848::863::890::((s6Step180Add0A++s6Step180Add1A)++(s6Step180Add0B++s6Step180Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180F4_flag : s6Step180HeadFvAfter.checkBorrow 1 [863]=some s6Step180F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step180HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step180F4_owned : (803::848::((s6Step180Add0A++s6Step180Add1A)++(s6Step180Add0B++s6Step180Add1B))).toFinset⊆s6Step180HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step180HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180F4_checked : compileHmrHybridF4Log s6Step180HeadFvAfter 803 848 s6Step180Add0A s6Step180Add0B s6Step180Add1A s6Step180Add1B [863] [890] s6Step180Add0Work s6Step180Add1Work=some s6Step180F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step180HeadFvAfter s6Step180F4FlagArena s6Step180Add0Arena s6Step180Add0During s6Step180Add1During 803 848
    s6Step180Add0A s6Step180Add0B s6Step180Add1A s6Step180Add1B [863] [890] s6Step180Add0Work s6Step180Add1Work
    (fun q hq => s6Step180F4_owned (List.mem_toFinset.mpr hq)) s6Step180F4_flag s6Step180F4_carry
    s6Step180F4_distinct s6Step180F4_apart s6Step180Add0_checked s6Step180Add1_checked

private theorem s6Step180Front_branch : s6Step180FrontSigmaArena.checkBorrow 1 [848]=some s6Step180HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step180FrontSigmaArena,s6Step180EntryGvAfter,s6Step180EntryFAfter,arenaWires]
  · change s6Step180HeadGBefore.live=(s6Step180EntryGvAfter.live∪{803})∪{848}
    apply hmrArena_union_pair_of_filter_check s6Step180EntryGvAfter s6Step180HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 848 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step180Front_entry : HmrFrontEntryValid s6Step180EntryFBefore s6Step180FrontBank 180 104 ⟨179,179,104,104⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step180FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step180EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step180EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step180FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step180Front_sigma : s6Step180EntryGvAfter.checkBorrow 1 [803]=some s6Step180FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step180EntryGvAfter,s6Step180EntryFAfter,arenaWires]
  · rfl

private def s6Step180HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step180HeadFBefore : Arena := s6Step180HeadGAfter

private def s6Step180HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814],795⟩

private def s6Step180HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step180HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩

private def s6Step180HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private theorem s6Step180HeadBank_incomingDistinct : ([s6Step180HeadGRow,s6Step180HeadFRow,s6Step180HeadGvRow,s6Step180HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180HeadF_Incoming : rowsOwned s6Step180HeadFBefore [s6Step180HeadFRow,s6Step180HeadGvRow,s6Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180HeadGRow,s6Step180HeadFRow,s6Step180HeadGvRow,s6Step180HeadFvRow] 1 s6Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180HeadBank_outgoingOwned : rowsOwned s6Step180HeadFvAfter [s6Step180HeadGOut,s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step180HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step180HeadF_Outgoing : rowsOwned s6Step180HeadFvAfter [s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut] :=
  hmrRows_owned_drop s6Step180HeadFvAfter [s6Step180HeadGOut,s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut] 1 s6Step180HeadBank_outgoingOwned

private theorem s6Step180HeadF_distinct : (s6Step180HeadFRow.sign::s6Step180HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180HeadF_owned : (s6Step180HeadFRow.sign::s6Step180HeadFRow.payload).toFinset⊆s6Step180HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180HeadF_reserved : s6Step180HeadFBefore.reserve s6Step180HeadFFresh.toFinset=some s6Step180HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180HeadFFresh,arenaWires]
  · norm_num [s6Step180HeadFBefore,s6Step180HeadGAfter,s6Step180HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step180HeadFBefore s6Step180HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step180HeadFFresh rfl rfl
    · norm_num [s6Step180HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step180HeadF_checked : planRowResizeLog s6Step180HeadFBefore s6Step180HeadFRow 181 s6Step180HeadFFresh=
    some (s6Step180HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814, 876],795⟩,growRow 795 s6Step180HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step180HeadFBefore s6Step180HeadFAfter s6Step180HeadFRow 181 s6Step180HeadFFresh
    s6Step180HeadF_distinct s6Step180HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180HeadF_reserved
  have rowEq : WindowRow.mk (s6Step180HeadFRow.payload++s6Step180HeadFFresh) s6Step180HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 814, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step180HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step180HeadFvBefore : Arena := s6Step180HeadGvAfter

private theorem s6Step180HeadFv_Incoming : rowsOwned s6Step180HeadFvBefore [s6Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180HeadGRow,s6Step180HeadFRow,s6Step180HeadGvRow,s6Step180HeadFvRow] 3 s6Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step180HeadFv_Outgoing : rowsOwned s6Step180HeadFvAfter [s6Step180HeadFvOut] :=
  hmrRows_owned_drop s6Step180HeadFvAfter [s6Step180HeadGOut,s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut] 3 s6Step180HeadBank_outgoingOwned

private theorem s6Step180HeadFv_distinct : (s6Step180HeadFvRow.sign::s6Step180HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180HeadFv_owned : (s6Step180HeadFvRow.sign::s6Step180HeadFvRow.payload).toFinset⊆s6Step180HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180HeadFv_reserved : s6Step180HeadFvBefore.reserve s6Step180HeadFvFresh.toFinset=some s6Step180HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180HeadFvFresh,arenaWires]
  · norm_num [s6Step180HeadFvBefore,s6Step180HeadGvAfter,s6Step180HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step180HeadFvAfter,s6Step180HeadFvBefore,s6Step180HeadGvAfter,s6Step180HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step180HeadFv_checked : planRowResizeLog s6Step180HeadFvBefore s6Step180HeadFvRow 105 s6Step180HeadFvFresh=
    some (s6Step180HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 907],776⟩,growRow 776 s6Step180HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step180HeadFvBefore s6Step180HeadFvAfter s6Step180HeadFvRow 105 s6Step180HeadFvFresh
    s6Step180HeadFv_distinct s6Step180HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step180HeadFvRow.payload++s6Step180HeadFvFresh) s6Step180HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 907],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step180HeadG_Incoming : rowsOwned s6Step180HeadGBefore [s6Step180HeadGRow,s6Step180HeadFRow,s6Step180HeadGvRow,s6Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180HeadGRow,s6Step180HeadFRow,s6Step180HeadGvRow,s6Step180HeadFvRow] 0 s6Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step180HeadG_Outgoing : rowsOwned s6Step180HeadFvAfter [s6Step180HeadGOut,s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut] :=
  hmrRows_owned_drop s6Step180HeadFvAfter [s6Step180HeadGOut,s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut] 0 s6Step180HeadBank_outgoingOwned

private theorem s6Step180HeadG_distinct : (s6Step180HeadGRow.sign::s6Step180HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180HeadG_owned : (s6Step180HeadGRow.sign::s6Step180HeadGRow.payload).toFinset⊆s6Step180HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step180HeadG_reserved : s6Step180HeadGBefore.reserve s6Step180HeadGFresh.toFinset=some s6Step180HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180HeadGFresh,arenaWires]
  · norm_num [s6Step180HeadGBefore,s6Step180HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step180HeadGBefore s6Step180HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step180HeadGFresh rfl rfl
    · norm_num [s6Step180HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step180HeadG_checked : planRowResizeLog s6Step180HeadGBefore s6Step180HeadGRow 181 s6Step180HeadGFresh=
    some (s6Step180HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 865],777⟩,growRow 777 s6Step180HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step180HeadGBefore s6Step180HeadGAfter s6Step180HeadGRow 181 s6Step180HeadGFresh
    s6Step180HeadG_distinct s6Step180HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180HeadG_reserved
  have rowEq : WindowRow.mk (s6Step180HeadGRow.payload++s6Step180HeadGFresh) s6Step180HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 865],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step180HeadGvBefore : Arena := s6Step180HeadFAfter

private theorem s6Step180HeadGv_Incoming : rowsOwned s6Step180HeadGvBefore [s6Step180HeadGvRow,s6Step180HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step180HeadGRow,s6Step180HeadFRow,s6Step180HeadGvRow,s6Step180HeadFvRow] 2 s6Step180HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step180HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step180HeadGv_Outgoing : rowsOwned s6Step180HeadFvAfter [s6Step180HeadGvOut,s6Step180HeadFvOut] :=
  hmrRows_owned_drop s6Step180HeadFvAfter [s6Step180HeadGOut,s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut] 2 s6Step180HeadBank_outgoingOwned

private theorem s6Step180HeadGv_distinct : (s6Step180HeadGvRow.sign::s6Step180HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step180HeadGv_owned : (s6Step180HeadGvRow.sign::s6Step180HeadGvRow.payload).toFinset⊆s6Step180HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step180HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step180HeadGv_reserved : s6Step180HeadGvBefore.reserve s6Step180HeadGvFresh.toFinset=some s6Step180HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step180HeadGvFresh,arenaWires]
  · norm_num [s6Step180HeadGvBefore,s6Step180HeadFAfter,s6Step180HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step180HeadGvAfter,s6Step180HeadGvBefore,s6Step180HeadFAfter,s6Step180HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step180HeadGv_checked : planRowResizeLog s6Step180HeadGvBefore s6Step180HeadGvRow 105 s6Step180HeadGvFresh=
    some (s6Step180HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 830],775⟩,growRow 775 s6Step180HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step180HeadGvBefore s6Step180HeadGvAfter s6Step180HeadGvRow 105 s6Step180HeadGvFresh
    s6Step180HeadGv_distinct s6Step180HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step180HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step180HeadGvRow.payload++s6Step180HeadGvFresh) s6Step180HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 830],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step180HeadBank_rows : planWindowRowsLog s6Step180HeadGBefore [(s6Step180HeadGRow,181),(s6Step180HeadFRow,181),(s6Step180HeadGvRow,105),(s6Step180HeadFvRow,105)] [s6Step180HeadGFresh,s6Step180HeadFFresh,s6Step180HeadGvFresh,s6Step180HeadFvFresh]=
    some (s6Step180HeadFvAfter,[s6Step180HeadGOut,s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut],(growRow 777 s6Step180HeadGFresh ++ (growRow 795 s6Step180HeadFFresh ++ (growRow 775 s6Step180HeadGvFresh ++ (growRow 776 s6Step180HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step180HeadFvAfter [] []=some (s6Step180HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step180HeadFvBefore s6Step180HeadFvAfter s6Step180HeadFvAfter
    s6Step180HeadFvRow s6Step180HeadFvOut 105 s6Step180HeadFvFresh [] [] []
    (growRow 776 s6Step180HeadFvFresh) ([]) s6Step180HeadFv_Incoming s6Step180HeadFv_checked h4 s6Step180HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step180HeadGvBefore s6Step180HeadGvAfter s6Step180HeadFvAfter
    s6Step180HeadGvRow s6Step180HeadGvOut 105 s6Step180HeadGvFresh [(s6Step180HeadFvRow,105)] [s6Step180HeadFvFresh] [s6Step180HeadFvOut]
    (growRow 775 s6Step180HeadGvFresh) ((growRow 776 s6Step180HeadFvFresh ++ [])) s6Step180HeadGv_Incoming s6Step180HeadGv_checked h3 s6Step180HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step180HeadFBefore s6Step180HeadFAfter s6Step180HeadFvAfter
    s6Step180HeadFRow s6Step180HeadFOut 181 s6Step180HeadFFresh [(s6Step180HeadGvRow,105),(s6Step180HeadFvRow,105)] [s6Step180HeadGvFresh,s6Step180HeadFvFresh] [s6Step180HeadGvOut,s6Step180HeadFvOut]
    (growRow 795 s6Step180HeadFFresh) ((growRow 775 s6Step180HeadGvFresh ++ (growRow 776 s6Step180HeadFvFresh ++ []))) s6Step180HeadF_Incoming s6Step180HeadF_checked h2 s6Step180HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step180HeadGBefore s6Step180HeadGAfter s6Step180HeadFvAfter
    s6Step180HeadGRow s6Step180HeadGOut 181 s6Step180HeadGFresh [(s6Step180HeadFRow,181),(s6Step180HeadGvRow,105),(s6Step180HeadFvRow,105)] [s6Step180HeadFFresh,s6Step180HeadGvFresh,s6Step180HeadFvFresh] [s6Step180HeadFOut,s6Step180HeadGvOut,s6Step180HeadFvOut]
    (growRow 777 s6Step180HeadGFresh) ((growRow 795 s6Step180HeadFFresh ++ (growRow 775 s6Step180HeadGvFresh ++ (growRow 776 s6Step180HeadFvFresh ++ [])))) s6Step180HeadG_Incoming s6Step180HeadG_checked h1 s6Step180HeadG_Outgoing
  exact h0

private theorem s6Step180HeadBank_checked : compileHmrBankResizeLog .headroom s6Step180HeadGBefore ⟨s6Step180HeadFRow,s6Step180HeadGRow,s6Step180HeadFvRow,s6Step180HeadGvRow⟩ ⟨181,181,105,105⟩ [s6Step180HeadGFresh,s6Step180HeadFFresh,s6Step180HeadGvFresh,s6Step180HeadFvFresh]=
    some (s6Step180HeadFvAfter,⟨s6Step180HeadFOut,s6Step180HeadGOut,s6Step180HeadFvOut,s6Step180HeadGvOut⟩,(growRow 777 s6Step180HeadGFresh ++ (growRow 795 s6Step180HeadFFresh ++ (growRow 775 s6Step180HeadGvFresh ++ (growRow 776 s6Step180HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step180HeadBank_rows]
  rfl

private theorem s6Step180Front_checked : compileHmrSourceFrontLog s6Step180EntryFBefore s6Step180FrontBank 180 104 ⟨179,179,104,104⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step180FrontLog=some s6Step180FrontPlan := by
  have pairEq : s6Step180FrontPair=⟨s6Step180HeadFRow,s6Step180HeadGRow,s6Step180HeadFvRow,s6Step180HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step180FrontHead=⟨s6Step180ExitFRow,s6Step180ExitGRow,s6Step180ExitFvRow,s6Step180ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step180Add0A=s6Step180FrontHead.f.wires := by decide +kernel
  have gEq : s6Step180Add0B=s6Step180FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step180Add1A=s6Step180FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step180Add1B=s6Step180FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step180EntryFBefore s6Step180FrontBank 180 104 ⟨179,179,104,104⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step180FrontLog s6Step180FrontPlan
  · exact s6Step180Front_entry
  · exact s6Step180EntryBank_checked
  · exact s6Step180Front_sigma
  · rfl
  · exact s6Step180Front_branch
  · rfl
  · simpa only [s6Step180FrontPlan,pairEq] using s6Step180HeadBank_checked
  · simpa only [s6Step180FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step180F4_checked
  · exact s6Step180Counter_checked
  · rfl
  · simpa only [s6Step180FrontPlan,headEq] using s6Step180ExitBank_checked

private theorem s6Step180Complete_explicit_checked : compileHmrEarlyStepLog s6Step180EntryFBefore s6Step180FrontBank 180 104 ⟨179,179,104,104⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 43 s6Step180CompleteLog=some s6Step180CompletePlan := by
  let Q := s6Step180EarlyControlPlan
  have hq := s6Step180EarlyControl_plan_checked
  have fv1 : s6Step180CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step180CompleteOut.fv.payload[2]?.getD s6Step180CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step180CompleteOut.fv.payload[3]?.getD s6Step180CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step180CompleteOut.fv.payload[4]?.getD s6Step180CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step180EntryFBefore s6Step180EarlyControlArena s6Step180FrontBank 180 104 ⟨179,179,104,104⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 43 s6Step180CompleteLog s6Step180FrontPlan Q
    s6Step180Front_checked s6Step180Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step180Complete_owned s6Step180Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step180EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step180CompleteOut.fv.second (s6Step180CompleteOut.fv.payload[2]?.getD s6Step180CompleteOut.fv.sign) (s6Step180CompleteOut.fv.payload[3]?.getD s6Step180CompleteOut.fv.sign) (s6Step180CompleteOut.fv.payload[4]?.getD s6Step180CompleteOut.fv.sign) 848 43 s6Step180EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep180Arena : Arena := s6Step180EntryFBefore
def s6PrivateStep180Bank : WindowBank := s6Step180FrontBank
def s6PrivateStep180Spec : HmrSourceWalkStepLog := ⟨180,104,⟨179,179,104,104⟩,43,.early s6Step180CompleteLog⟩
def s6PrivateStep180Plan : HmrSourceStepPlan := .early s6Step180CompletePlan
theorem s6PrivateStep180_source : s6PrivateStep180Spec=s6ObservedLogs176[4] := rfl
theorem s6PrivateStep180_checked : compileHmrSourceStepLog s6PrivateStep180Arena s6PrivateStep180Bank
    s6PrivateStep180Spec.fgWidth s6PrivateStep180Spec.vWidth s6PrivateStep180Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 180 s6PrivateStep180Spec.need none s6PrivateStep180Spec.log=some s6PrivateStep180Plan := by
  change compileHmrSourceStepLog s6Step180EntryFBefore s6Step180FrontBank 180 104 ⟨179,179,104,104⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 180 43 none (.early s6Step180CompleteLog)=some (.early s6Step180CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 180<498)]
  rw [s6Step180Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
