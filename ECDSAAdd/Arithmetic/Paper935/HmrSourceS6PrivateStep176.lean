import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep174
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

private def s6Step176CompleteMoves : List (Wire × Wire) := [(865,437)]

private def s6Step176EarlyControlLog : HmrEarlyControlLog := ⟨[865, 876, 922, 857, 830],[907],[863],[890, 891, 903, 791, 825, 810],[]⟩

private def s6Step176FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830], [], []],[[907], [857], [876], [922]],[[], [], [], []]⟩,[803],[880],[863],[890],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903]⟩

private def s6Step176CompleteLog : HmrEarlyStepLog := ⟨s6Step176FrontLog,s6Step176CompleteMoves,s6Step176EarlyControlLog⟩

private def s6Step176ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436],795⟩

private def s6Step176ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step176ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩

private def s6Step176ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private def s6Step176FrontOut : WindowBank := ⟨s6Step176ExitFOut,s6Step176ExitGOut,s6Step176ExitFvOut,s6Step176ExitGvOut⟩

private def s6Step176CompleteOut : WindowBank := s6Step176FrontOut.repacked s6Step176CompleteMoves

private def s6Step176EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step176EarlyControlPositiveArena,[907],s6Step176EarlyControlEqualityArena,[863],⟨⟨803,false⟩,[⟨⟨907,false⟩,863⟩]⟩⟩

private def s6Step176EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,865⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,922⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,830⟩]⟩

private def s6Step176EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step176EarlyControlZeroArena,s6Step176EarlyControlZeroPlan,s6Step176EarlyControlClassPlan,s6Step176EarlyControlFlagArena,s6Step176EarlyControlFittedArena,s6Step176EarlyControlHistoryArena,s6Step176EarlyControlSigmaArena,s6Step176EarlyControlOutputArena,s6Step176EarlyControlLog⟩

private def s6Step176CounterWork : List Wire := [863, 890, 891, 903]

private theorem s6Step176Counter_bounded : s6Step176CounterWork.toFinset⊆arenaWires := by norm_num [s6Step176CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step176HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176CounterDuring : Arena := ⟨s6Step176HeadFvAfter.live∪s6Step176CounterWork.toFinset,Finset.union_subset s6Step176HeadFvAfter.bounded s6Step176Counter_bounded⟩

private def s6Step176EntryFFresh : List Wire := []

private def s6Step176EntryFvFresh : List Wire := []

private def s6Step176EntryGFresh : List Wire := [830]

private def s6Step176EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176EntryGvAfter : Arena := s6Step176EntryGAfter

private def s6Step176EntryGvFresh : List Wire := []

private def s6Step176ExitFExtra : List Wire := [437, 857]

private def s6Step176ExitFvExtra : List Wire := [922]

private def s6Step176ExitGExtra : List Wire := [830, 907]

private def s6Step176ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176ExitGvExtra : List Wire := [876]

private def s6Step176Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step176Add0_bounded : s6Step176Add0Work.toFinset⊆arenaWires := by
  have h : s6Step176Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step176Add0During : Arena := ⟨s6Step176Add0Arena.live∪s6Step176Add0Work.toFinset,Finset.union_subset s6Step176Add0Arena.bounded s6Step176Add0_bounded⟩

private def s6Step176Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step176Add1_bounded : s6Step176Add1Work.toFinset⊆arenaWires := by
  have h : s6Step176Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step176Add1During : Arena := ⟨s6Step176Add1Arena.live∪s6Step176Add1Work.toFinset,Finset.union_subset s6Step176Add1Arena.bounded s6Step176Add1_bounded⟩

private def s6Step176F4FlagArena : Arena := ⟨s6Step176HeadFvAfter.live∪{863},Finset.union_subset s6Step176HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step176F4Plan : HmrHybridF4Plan := ⟨s6Step176F4FlagArena,[863],s6Step176Add0Arena,[890],s6Step176Add0During,s6Step176Add0Work,s6Step176Add1During,s6Step176Add1Work⟩

private def s6Step176HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 857],795⟩

private def s6Step176HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 922],776⟩

private def s6Step176HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 907],777⟩

private def s6Step176HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 876],775⟩

private def s6Step176FrontHead : WindowBank := ⟨s6Step176HeadFOut,s6Step176HeadGOut,s6Step176HeadFvOut,s6Step176HeadGvOut⟩

private def s6Step176EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step176EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step176EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],777⟩

private def s6Step176EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private def s6Step176FrontPair : WindowBank := ⟨s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut⟩

private def s6Step176FrontSigmaArena : Arena := ⟨s6Step176EntryGvAfter.live∪{803},Finset.union_subset s6Step176EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step176HeadFFresh : List Wire := [857]

private def s6Step176HeadFvFresh : List Wire := [922]

private def s6Step176HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176HeadGFresh : List Wire := [907]

private def s6Step176HeadGvFresh : List Wire := [876]

private def s6Step176FrontPlan : HmrSourceFront := ⟨s6Step176EntryGvAfter,s6Step176FrontPair,(growRow 795 s6Step176EntryFFresh ++ (growRow 777 s6Step176EntryGFresh ++ (growRow 776 s6Step176EntryFvFresh ++ (growRow 775 s6Step176EntryGvFresh ++ [])))),s6Step176FrontSigmaArena,[803],s6Step176HeadGBefore,[880],
  s6Step176HeadFvAfter,s6Step176FrontHead,(growRow 777 s6Step176HeadGFresh ++ (growRow 795 s6Step176HeadFFresh ++ (growRow 775 s6Step176HeadGvFresh ++ (growRow 776 s6Step176HeadFvFresh ++ [])))),s6Step176F4Plan,s6Step176CounterDuring,s6Step176CounterWork,s6Step176ExitGvAfter,s6Step176FrontOut,(shrinkRow 777 s6Step176ExitGExtra ++ (shrinkRow 795 s6Step176ExitFExtra ++ (shrinkRow 776 s6Step176ExitFvExtra ++ (shrinkRow 775 s6Step176ExitGvExtra ++ []))))⟩

private def s6Step176CompletePlan : HmrEarlyStepPlan := ⟨s6Step176FrontPlan,s6Step176EarlyControlArena,s6Step176EarlyControlPlan,s6Step176CompleteMoves⟩

private theorem s6Step176Complete_apart : List.Disjoint (s6Step176CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step176CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step176Complete_owned : (s6Step176CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step176CompleteRelocationMove0Borrowed : Arena := ⟨s6Step176ExitGvAfter.live∪{437},Finset.union_subset s6Step176ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step176CompleteRelocation_move0_owned : 865∈s6Step176ExitGvAfter.live := by norm_num [s6Step176ExitGvAfter,arenaWires]

private theorem s6Step176CompleteRelocation_move0_reserve : s6Step176ExitGvAfter.reserve {437}=some s6Step176CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step176ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step176CompleteRelocation_move0_retire : s6Step176CompleteRelocationMove0Borrowed.retireSet {865}=s6Step176EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step176CompleteRelocationMove0Borrowed s6Step176EarlyControlArena {865}
  change s6Step176EarlyControlArena.live=(s6Step176ExitGvAfter.live∪{437})\{865}
  apply hmrArena_update_of_filter_check s6Step176ExitGvAfter s6Step176EarlyControlArena (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [437] [865] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step176CompleteRelocation_checked : s6Step176ExitGvAfter.checkRepack [(865,437)]=some s6Step176EarlyControlArena := by
  have tail1 : s6Step176EarlyControlArena.checkRepack []=some s6Step176EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step176ExitGvAfter s6Step176CompleteRelocationMove0Borrowed s6Step176EarlyControlArena s6Step176EarlyControlArena 865 437 []
    s6Step176CompleteRelocation_move0_owned s6Step176CompleteRelocation_move0_reserve s6Step176CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step176Complete_repack : s6Step176ExitGvAfter.checkRepack s6Step176CompleteMoves=some s6Step176EarlyControlArena := by
  simpa only [s6Step176CompleteMoves] using s6Step176CompleteRelocation_checked

private theorem s6Step176EarlyControl_branchOwned : ([880] : List Wire).toFinset⊆s6Step176EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EarlyControl_branch : compileHmrBranchRetirement s6Step176EarlyControlSigmaArena 880=some s6Step176EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step176EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step176EarlyControlSigmaArena s6Step176EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [880] rfl rfl
    decide +kernel

private theorem s6Step176EarlyControl_classEqualityBorrow : s6Step176EarlyControlPositiveArena.checkBorrow (([803, 907] : List Wire).length-1) s6Step176EarlyControlLog.classWork=some s6Step176EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step176EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step176EarlyControlEqualityArena,s6Step176EarlyControlPositiveArena,s6Step176EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step176EarlyControl_classEqualityOwned : ([803, 907] : List Wire).toFinset⊆s6Step176EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176EarlyControl_classEquality : compileHmrEqualityLog s6Step176EarlyControlPositiveArena [803, 907] 0 s6Step176EarlyControlLog.classWork=some (s6Step176EarlyControlEqualityArena,s6Step176EarlyControlLog.classWork,s6Step176EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step176EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step176EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step176EarlyControl_classOwned : ([769, 830, 803] : List Wire).toFinset⊆s6Step176EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176EarlyControl_positiveBorrow : s6Step176EarlyControlZeroArena.checkBorrow (1) s6Step176EarlyControlLog.positiveWork=some s6Step176EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step176EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step176EarlyControlPositiveArena,s6Step176EarlyControlZeroArena,s6Step176EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step176EarlyControl_class : compileHmrSourceClassLog s6Step176EarlyControlZeroArena false 769 s6Step176EarlyControlZeroPlan.top 0 803 s6Step176EarlyControlLog.positiveWork s6Step176EarlyControlLog.classWork=some s6Step176EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step176EarlyControlClassPlan s6Step176EarlyControlZeroArena false 769 s6Step176EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step176EarlyControl_classOwned
  · exact s6Step176EarlyControl_positiveBorrow
  · exact s6Step176EarlyControl_classEquality

private theorem s6Step176EarlyControl_entryRecordOwned : ([880, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EarlyControl_fitBorrow : s6Step176EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step176EarlyControlLog.recordFresh=some s6Step176EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step176EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step176EarlyControlFittedArena,s6Step176EarlyControlFlagArena,s6Step176EarlyControlLog,arenaWires]

private theorem s6Step176EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step176EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176EarlyControl_fit : compileHmrRecordGrowLog s6Step176EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step176EarlyControlLog.recordFresh=some s6Step176EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step176EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step176EarlyControl_fitBorrow

private theorem s6Step176EarlyControl_flagsBorrow : s6Step176EarlyControlEqualityArena.checkBorrow (6) s6Step176EarlyControlLog.flagWork=some s6Step176EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step176EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step176EarlyControlFlagArena,s6Step176EarlyControlEqualityArena,s6Step176EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step176EarlyControl_flagsOwned : ([863, 253, 252, 251] : List Wire).toFinset⊆s6Step176EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176EarlyControl_flags : compileHmrFlagsLog s6Step176EarlyControlClassPlan.equalityArena s6Step176EarlyControlClassPlan.equality.top 253 252 251 s6Step176EarlyControlLog.flagWork=some s6Step176EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step176EarlyControl_flagsOwned⟩
  · exact s6Step176EarlyControl_flagsBorrow

private theorem s6Step176EarlyControl_historyBorrow : s6Step176EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step176EarlyControlLog.recordFresh=some s6Step176EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step176EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step176EarlyControlArena s6Step176EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step176EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step176EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EarlyControl_history : compileHmrRecordGrowLog s6Step176EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step176EarlyControlLog.recordFresh=some s6Step176EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step176EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step176EarlyControl_historyBorrow

private theorem s6Step176EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step176EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step176EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EarlyControl_sigmaRelease : s6Step176EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step176EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step176EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step176EarlyControlHistoryArena s6Step176EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step176EarlyControl_sigma : compileHmrSigmaDropLog s6Step176EarlyControlHistoryArena false 0 0 254 803 []=some s6Step176EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step176EarlyControl_sigmaOwned⟩
  · exact s6Step176EarlyControl_sigmaRelease

private theorem s6Step176EarlyControl_zeroBorrow : s6Step176EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step176EarlyControlLog.zeroWork=some s6Step176EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step176EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step176EarlyControlArena s6Step176EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step176EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step176EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step176EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step176EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step176EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EarlyControl_zero : compileHmrEqualityLog s6Step176EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step176EarlyControlLog.zeroWork=some (s6Step176EarlyControlZeroArena,s6Step176EarlyControlLog.zeroWork,s6Step176EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step176EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step176EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step176EarlyControl_logged : s6Step176EarlyControlPlan.Logged s6Step176EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 880 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step176EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step176EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step176EarlyControl_zero
  · exact s6Step176EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step176EarlyControl_flags
  · exact s6Step176EarlyControl_fit
  · exact s6Step176EarlyControl_history
  · exact s6Step176EarlyControl_sigma
  · exact s6Step176EarlyControl_branch

private theorem s6Step176EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step176EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 880 42 s6Step176EarlyControlLog=some s6Step176EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step176EarlyControlPlan s6Step176EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 880 42 s6Step176EarlyControl_logged

private def s6Step176EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step176EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step176EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180],777⟩

private def s6Step176EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private def s6Step176FrontBank : WindowBank := ⟨s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow⟩

private def s6Step176Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 857, 795]

private def s6Step176Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 907, 777]

private def s6Step176Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 922, 776]

private def s6Step176Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 876, 775]

private theorem s6Step176Counter_apart : Disjoint s6Step176HeadFvAfter.live s6Step176CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step176HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176Counter_borrowed : s6Step176HeadFvAfter.checkBorrow 4 s6Step176CounterWork=some s6Step176CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step176HeadFvAfter s6Step176CounterDuring s6Step176CounterWork.toFinset s6Step176Counter_bounded s6Step176Counter_apart rfl

private theorem s6Step176Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step176HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step176HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176Counter_checked : compileHmrCounterStepLog s6Step176HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step176CounterWork=some s6Step176CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step176HeadFvAfter.live := fun q hq => s6Step176Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step176Counter_borrowed

private def s6Step176EntryFAfter : Arena := s6Step176EntryFBefore

private theorem s6Step176EntryBank_incomingDistinct : ([s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176EntryF_Incoming : rowsOwned s6Step176EntryFBefore [s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow] 0 s6Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176EntryBank_outgoingOwned : rowsOwned s6Step176EntryGvAfter [s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step176EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176EntryF_Outgoing : rowsOwned s6Step176EntryGvAfter [s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut] :=
  hmrRows_owned_drop s6Step176EntryGvAfter [s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut] 0 s6Step176EntryBank_outgoingOwned

private theorem s6Step176EntryF_distinct : (s6Step176EntryFRow.sign::s6Step176EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176EntryF_owned : (s6Step176EntryFRow.sign::s6Step176EntryFRow.payload).toFinset⊆s6Step176EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EntryF_reserved : s6Step176EntryFBefore.reserve s6Step176EntryFFresh.toFinset=some s6Step176EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176EntryFFresh,arenaWires]
  · norm_num [s6Step176EntryFBefore,s6Step176EntryFFresh,arenaWires]
  · simp only [s6Step176EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step176EntryF_checked : planRowResizeLog s6Step176EntryFBefore s6Step176EntryFRow 182 s6Step176EntryFFresh=
    some (s6Step176EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩,growRow 795 s6Step176EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step176EntryFBefore s6Step176EntryFAfter s6Step176EntryFRow 182 s6Step176EntryFFresh
    s6Step176EntryF_distinct s6Step176EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176EntryF_reserved
  have rowEq : WindowRow.mk (s6Step176EntryFRow.payload++s6Step176EntryFFresh) s6Step176EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step176EntryFvAfter : Arena := s6Step176EntryGAfter

private def s6Step176EntryFvBefore : Arena := s6Step176EntryGAfter

private theorem s6Step176EntryFv_Incoming : rowsOwned s6Step176EntryFvBefore [s6Step176EntryFvRow,s6Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow] 2 s6Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176EntryFv_Outgoing : rowsOwned s6Step176EntryGvAfter [s6Step176EntryFvOut,s6Step176EntryGvOut] :=
  hmrRows_owned_drop s6Step176EntryGvAfter [s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut] 2 s6Step176EntryBank_outgoingOwned

private theorem s6Step176EntryFv_distinct : (s6Step176EntryFvRow.sign::s6Step176EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176EntryFv_owned : (s6Step176EntryFvRow.sign::s6Step176EntryFvRow.payload).toFinset⊆s6Step176EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EntryFv_reserved : s6Step176EntryFvBefore.reserve s6Step176EntryFvFresh.toFinset=some s6Step176EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176EntryFvFresh,arenaWires]
  · norm_num [s6Step176EntryFvBefore,s6Step176EntryGAfter,s6Step176EntryFvFresh,arenaWires]
  · simp only [s6Step176EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step176EntryFv_checked : planRowResizeLog s6Step176EntryFvBefore s6Step176EntryFvRow 102 s6Step176EntryFvFresh=
    some (s6Step176EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩,growRow 776 s6Step176EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step176EntryFvBefore s6Step176EntryFvAfter s6Step176EntryFvRow 102 s6Step176EntryFvFresh
    s6Step176EntryFv_distinct s6Step176EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step176EntryFvRow.payload++s6Step176EntryFvFresh) s6Step176EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step176EntryGBefore : Arena := s6Step176EntryFBefore

private theorem s6Step176EntryG_Incoming : rowsOwned s6Step176EntryGBefore [s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow] 1 s6Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176EntryG_Outgoing : rowsOwned s6Step176EntryGvAfter [s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut] :=
  hmrRows_owned_drop s6Step176EntryGvAfter [s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut] 1 s6Step176EntryBank_outgoingOwned

private theorem s6Step176EntryG_distinct : (s6Step176EntryGRow.sign::s6Step176EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176EntryG_owned : (s6Step176EntryGRow.sign::s6Step176EntryGRow.payload).toFinset⊆s6Step176EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EntryG_reserved : s6Step176EntryGBefore.reserve s6Step176EntryGFresh.toFinset=some s6Step176EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176EntryGFresh,arenaWires]
  · norm_num [s6Step176EntryGBefore,s6Step176EntryFBefore,s6Step176EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step176EntryGBefore s6Step176EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step176EntryGFresh rfl rfl
    · norm_num [s6Step176EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step176EntryG_checked : planRowResizeLog s6Step176EntryGBefore s6Step176EntryGRow 182 s6Step176EntryGFresh=
    some (s6Step176EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],777⟩,growRow 777 s6Step176EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step176EntryGBefore s6Step176EntryGAfter s6Step176EntryGRow 182 s6Step176EntryGFresh
    s6Step176EntryG_distinct s6Step176EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176EntryG_reserved
  have rowEq : WindowRow.mk (s6Step176EntryGRow.payload++s6Step176EntryGFresh) s6Step176EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step176EntryGvBefore : Arena := s6Step176EntryGAfter

private theorem s6Step176EntryGv_Incoming : rowsOwned s6Step176EntryGvBefore [s6Step176EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow] 3 s6Step176EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176EntryGv_Outgoing : rowsOwned s6Step176EntryGvAfter [s6Step176EntryGvOut] :=
  hmrRows_owned_drop s6Step176EntryGvAfter [s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut] 3 s6Step176EntryBank_outgoingOwned

private theorem s6Step176EntryGv_distinct : (s6Step176EntryGvRow.sign::s6Step176EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176EntryGv_owned : (s6Step176EntryGvRow.sign::s6Step176EntryGvRow.payload).toFinset⊆s6Step176EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176EntryGv_reserved : s6Step176EntryGvBefore.reserve s6Step176EntryGvFresh.toFinset=some s6Step176EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176EntryGvFresh,arenaWires]
  · norm_num [s6Step176EntryGvBefore,s6Step176EntryGAfter,s6Step176EntryGvFresh,arenaWires]
  · simp only [s6Step176EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step176EntryGv_checked : planRowResizeLog s6Step176EntryGvBefore s6Step176EntryGvRow 102 s6Step176EntryGvFresh=
    some (s6Step176EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩,growRow 775 s6Step176EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step176EntryGvBefore s6Step176EntryGvAfter s6Step176EntryGvRow 102 s6Step176EntryGvFresh
    s6Step176EntryGv_distinct s6Step176EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step176EntryGvRow.payload++s6Step176EntryGvFresh) s6Step176EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step176EntryBank_rows : planWindowRowsLog s6Step176EntryFBefore [(s6Step176EntryFRow,182),(s6Step176EntryGRow,182),(s6Step176EntryFvRow,102),(s6Step176EntryGvRow,102)] [s6Step176EntryFFresh,s6Step176EntryGFresh,s6Step176EntryFvFresh,s6Step176EntryGvFresh]=
    some (s6Step176EntryGvAfter,[s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut],(growRow 795 s6Step176EntryFFresh ++ (growRow 777 s6Step176EntryGFresh ++ (growRow 776 s6Step176EntryFvFresh ++ (growRow 775 s6Step176EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step176EntryGvAfter [] []=some (s6Step176EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step176EntryGvBefore s6Step176EntryGvAfter s6Step176EntryGvAfter
    s6Step176EntryGvRow s6Step176EntryGvOut 102 s6Step176EntryGvFresh [] [] []
    (growRow 775 s6Step176EntryGvFresh) ([]) s6Step176EntryGv_Incoming s6Step176EntryGv_checked h4 s6Step176EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step176EntryFvBefore s6Step176EntryFvAfter s6Step176EntryGvAfter
    s6Step176EntryFvRow s6Step176EntryFvOut 102 s6Step176EntryFvFresh [(s6Step176EntryGvRow,102)] [s6Step176EntryGvFresh] [s6Step176EntryGvOut]
    (growRow 776 s6Step176EntryFvFresh) ((growRow 775 s6Step176EntryGvFresh ++ [])) s6Step176EntryFv_Incoming s6Step176EntryFv_checked h3 s6Step176EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step176EntryGBefore s6Step176EntryGAfter s6Step176EntryGvAfter
    s6Step176EntryGRow s6Step176EntryGOut 182 s6Step176EntryGFresh [(s6Step176EntryFvRow,102),(s6Step176EntryGvRow,102)] [s6Step176EntryFvFresh,s6Step176EntryGvFresh] [s6Step176EntryFvOut,s6Step176EntryGvOut]
    (growRow 777 s6Step176EntryGFresh) ((growRow 776 s6Step176EntryFvFresh ++ (growRow 775 s6Step176EntryGvFresh ++ []))) s6Step176EntryG_Incoming s6Step176EntryG_checked h2 s6Step176EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step176EntryFBefore s6Step176EntryFAfter s6Step176EntryGvAfter
    s6Step176EntryFRow s6Step176EntryFOut 182 s6Step176EntryFFresh [(s6Step176EntryGRow,182),(s6Step176EntryFvRow,102),(s6Step176EntryGvRow,102)] [s6Step176EntryGFresh,s6Step176EntryFvFresh,s6Step176EntryGvFresh] [s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut]
    (growRow 795 s6Step176EntryFFresh) ((growRow 777 s6Step176EntryGFresh ++ (growRow 776 s6Step176EntryFvFresh ++ (growRow 775 s6Step176EntryGvFresh ++ [])))) s6Step176EntryF_Incoming s6Step176EntryF_checked h1 s6Step176EntryF_Outgoing
  exact h0

private theorem s6Step176EntryBank_checked : compileHmrBankResizeLog .entry s6Step176EntryFBefore ⟨s6Step176EntryFRow,s6Step176EntryGRow,s6Step176EntryFvRow,s6Step176EntryGvRow⟩ ⟨182,182,102,102⟩ [s6Step176EntryFFresh,s6Step176EntryGFresh,s6Step176EntryFvFresh,s6Step176EntryGvFresh]=
    some (s6Step176EntryGvAfter,⟨s6Step176EntryFOut,s6Step176EntryGOut,s6Step176EntryFvOut,s6Step176EntryGvOut⟩,(growRow 795 s6Step176EntryFFresh ++ (growRow 777 s6Step176EntryGFresh ++ (growRow 776 s6Step176EntryFvFresh ++ (growRow 775 s6Step176EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step176EntryBank_rows]
  rfl

private def s6Step176ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176ExitFBefore : Arena := s6Step176ExitGAfter

private def s6Step176ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 857],795⟩

private def s6Step176ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 922],776⟩

private def s6Step176ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 907],777⟩

private def s6Step176ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 876],775⟩

private theorem s6Step176ExitBank_incomingDistinct : ([s6Step176ExitGRow,s6Step176ExitFRow,s6Step176ExitFvRow,s6Step176ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176ExitF_Incoming : rowsOwned s6Step176ExitFBefore [s6Step176ExitFRow,s6Step176ExitFvRow,s6Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176ExitGRow,s6Step176ExitFRow,s6Step176ExitFvRow,s6Step176ExitGvRow] 1 s6Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step176ExitBank_outgoingOwned : rowsOwned s6Step176ExitGvAfter [s6Step176ExitGOut,s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step176ExitGvAfter (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176ExitF_Outgoing : rowsOwned s6Step176ExitGvAfter [s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut] :=
  hmrRows_owned_drop s6Step176ExitGvAfter [s6Step176ExitGOut,s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut] 1 s6Step176ExitBank_outgoingOwned

private theorem s6Step176ExitF_distinct : (s6Step176ExitFRow.sign::s6Step176ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176ExitF_owned : (s6Step176ExitFRow.sign::s6Step176ExitFRow.payload).toFinset⊆s6Step176ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176ExitF_retired : s6Step176ExitFBefore.retireSet s6Step176ExitFExtra.toFinset=s6Step176ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step176ExitFBefore s6Step176ExitFAfter s6Step176ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step176ExitFBefore s6Step176ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step176ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step176ExitF_checked : planRowResizeLog s6Step176ExitFBefore s6Step176ExitFRow 181 []=
    some (s6Step176ExitFAfter,s6Step176ExitFOut,shrinkRow 795 s6Step176ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step176ExitFBefore s6Step176ExitFRow 181 s6Step176ExitF_distinct s6Step176ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step176ExitFRow.payload.take 181) s6Step176ExitFRow.sign=s6Step176ExitFOut := by decide +kernel
  have hi : s6Step176ExitFRow.payload.drop 181=s6Step176ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step176ExitF_retired] at result
  exact result

private def s6Step176ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176ExitFvBefore : Arena := s6Step176ExitFAfter

private theorem s6Step176ExitFv_Incoming : rowsOwned s6Step176ExitFvBefore [s6Step176ExitFvRow,s6Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176ExitGRow,s6Step176ExitFRow,s6Step176ExitFvRow,s6Step176ExitGvRow] 2 s6Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176ExitFvBefore (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176ExitFv_Outgoing : rowsOwned s6Step176ExitGvAfter [s6Step176ExitFvOut,s6Step176ExitGvOut] :=
  hmrRows_owned_drop s6Step176ExitGvAfter [s6Step176ExitGOut,s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut] 2 s6Step176ExitBank_outgoingOwned

private theorem s6Step176ExitFv_distinct : (s6Step176ExitFvRow.sign::s6Step176ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176ExitFv_owned : (s6Step176ExitFvRow.sign::s6Step176ExitFvRow.payload).toFinset⊆s6Step176ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176ExitFvBefore (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176ExitFv_retired : s6Step176ExitFvBefore.retireSet s6Step176ExitFvExtra.toFinset=s6Step176ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step176ExitFvBefore s6Step176ExitFvAfter s6Step176ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step176ExitFvBefore s6Step176ExitFvAfter (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step176ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step176ExitFv_checked : planRowResizeLog s6Step176ExitFvBefore s6Step176ExitFvRow 102 []=
    some (s6Step176ExitFvAfter,s6Step176ExitFvOut,shrinkRow 776 s6Step176ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step176ExitFvBefore s6Step176ExitFvRow 102 s6Step176ExitFv_distinct s6Step176ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step176ExitFvRow.payload.take 102) s6Step176ExitFvRow.sign=s6Step176ExitFvOut := by decide +kernel
  have hi : s6Step176ExitFvRow.payload.drop 102=s6Step176ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step176ExitFv_retired] at result
  exact result

private def s6Step176ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step176ExitG_Incoming : rowsOwned s6Step176ExitGBefore [s6Step176ExitGRow,s6Step176ExitFRow,s6Step176ExitFvRow,s6Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176ExitGRow,s6Step176ExitFRow,s6Step176ExitFvRow,s6Step176ExitGvRow] 0 s6Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step176ExitG_Outgoing : rowsOwned s6Step176ExitGvAfter [s6Step176ExitGOut,s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut] :=
  hmrRows_owned_drop s6Step176ExitGvAfter [s6Step176ExitGOut,s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut] 0 s6Step176ExitBank_outgoingOwned

private theorem s6Step176ExitG_distinct : (s6Step176ExitGRow.sign::s6Step176ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176ExitG_owned : (s6Step176ExitGRow.sign::s6Step176ExitGRow.payload).toFinset⊆s6Step176ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176ExitG_retired : s6Step176ExitGBefore.retireSet s6Step176ExitGExtra.toFinset=s6Step176ExitGAfter := by
  unfold Arena.retireSet s6Step176ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step176ExitGBefore,s6Step176ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step176ExitG_checked : planRowResizeLog s6Step176ExitGBefore s6Step176ExitGRow 181 []=
    some (s6Step176ExitGAfter,s6Step176ExitGOut,shrinkRow 777 s6Step176ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step176ExitGBefore s6Step176ExitGRow 181 s6Step176ExitG_distinct s6Step176ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step176ExitGRow.payload.take 181) s6Step176ExitGRow.sign=s6Step176ExitGOut := by decide +kernel
  have hi : s6Step176ExitGRow.payload.drop 181=s6Step176ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step176ExitG_retired] at result
  exact result

private def s6Step176ExitGvBefore : Arena := s6Step176ExitFvAfter

private theorem s6Step176ExitGv_Incoming : rowsOwned s6Step176ExitGvBefore [s6Step176ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176ExitGRow,s6Step176ExitFRow,s6Step176ExitFvRow,s6Step176ExitGvRow] 3 s6Step176ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176ExitGvBefore (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176ExitGv_Outgoing : rowsOwned s6Step176ExitGvAfter [s6Step176ExitGvOut] :=
  hmrRows_owned_drop s6Step176ExitGvAfter [s6Step176ExitGOut,s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut] 3 s6Step176ExitBank_outgoingOwned

private theorem s6Step176ExitGv_distinct : (s6Step176ExitGvRow.sign::s6Step176ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176ExitGv_owned : (s6Step176ExitGvRow.sign::s6Step176ExitGvRow.payload).toFinset⊆s6Step176ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176ExitGvBefore (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176ExitGv_retired : s6Step176ExitGvBefore.retireSet s6Step176ExitGvExtra.toFinset=s6Step176ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step176ExitGvBefore s6Step176ExitGvAfter s6Step176ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step176ExitGvBefore s6Step176ExitGvAfter (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,437),(438,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step176ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step176ExitGv_checked : planRowResizeLog s6Step176ExitGvBefore s6Step176ExitGvRow 102 []=
    some (s6Step176ExitGvAfter,s6Step176ExitGvOut,shrinkRow 775 s6Step176ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step176ExitGvBefore s6Step176ExitGvRow 102 s6Step176ExitGv_distinct s6Step176ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step176ExitGvRow.payload.take 102) s6Step176ExitGvRow.sign=s6Step176ExitGvOut := by decide +kernel
  have hi : s6Step176ExitGvRow.payload.drop 102=s6Step176ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step176ExitGv_retired] at result
  exact result

private theorem s6Step176ExitBank_rows : planWindowRowsLog s6Step176ExitGBefore [(s6Step176ExitGRow,181),(s6Step176ExitFRow,181),(s6Step176ExitFvRow,102),(s6Step176ExitGvRow,102)] [[],[],[],[]]=
    some (s6Step176ExitGvAfter,[s6Step176ExitGOut,s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut],(shrinkRow 777 s6Step176ExitGExtra ++ (shrinkRow 795 s6Step176ExitFExtra ++ (shrinkRow 776 s6Step176ExitFvExtra ++ (shrinkRow 775 s6Step176ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step176ExitGvAfter [] []=some (s6Step176ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step176ExitGvBefore s6Step176ExitGvAfter s6Step176ExitGvAfter
    s6Step176ExitGvRow s6Step176ExitGvOut 102 [] [] [] []
    (shrinkRow 775 s6Step176ExitGvExtra) ([]) s6Step176ExitGv_Incoming s6Step176ExitGv_checked h4 s6Step176ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step176ExitFvBefore s6Step176ExitFvAfter s6Step176ExitGvAfter
    s6Step176ExitFvRow s6Step176ExitFvOut 102 [] [(s6Step176ExitGvRow,102)] [[]] [s6Step176ExitGvOut]
    (shrinkRow 776 s6Step176ExitFvExtra) ((shrinkRow 775 s6Step176ExitGvExtra ++ [])) s6Step176ExitFv_Incoming s6Step176ExitFv_checked h3 s6Step176ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step176ExitFBefore s6Step176ExitFAfter s6Step176ExitGvAfter
    s6Step176ExitFRow s6Step176ExitFOut 181 [] [(s6Step176ExitFvRow,102),(s6Step176ExitGvRow,102)] [[],[]] [s6Step176ExitFvOut,s6Step176ExitGvOut]
    (shrinkRow 795 s6Step176ExitFExtra) ((shrinkRow 776 s6Step176ExitFvExtra ++ (shrinkRow 775 s6Step176ExitGvExtra ++ []))) s6Step176ExitF_Incoming s6Step176ExitF_checked h2 s6Step176ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step176ExitGBefore s6Step176ExitGAfter s6Step176ExitGvAfter
    s6Step176ExitGRow s6Step176ExitGOut 181 [] [(s6Step176ExitFRow,181),(s6Step176ExitFvRow,102),(s6Step176ExitGvRow,102)] [[],[],[]] [s6Step176ExitFOut,s6Step176ExitFvOut,s6Step176ExitGvOut]
    (shrinkRow 777 s6Step176ExitGExtra) ((shrinkRow 795 s6Step176ExitFExtra ++ (shrinkRow 776 s6Step176ExitFvExtra ++ (shrinkRow 775 s6Step176ExitGvExtra ++ [])))) s6Step176ExitG_Incoming s6Step176ExitG_checked h1 s6Step176ExitG_Outgoing
  exact h0

private theorem s6Step176ExitBank_checked : compileHmrBankResizeLog .exit s6Step176ExitGBefore ⟨s6Step176ExitFRow,s6Step176ExitGRow,s6Step176ExitFvRow,s6Step176ExitGvRow⟩ ⟨181,181,102,102⟩ [[],[],[],[]]=
    some (s6Step176ExitGvAfter,⟨s6Step176ExitFOut,s6Step176ExitGOut,s6Step176ExitFvOut,s6Step176ExitGvOut⟩,(shrinkRow 777 s6Step176ExitGExtra ++ (shrinkRow 795 s6Step176ExitFExtra ++ (shrinkRow 776 s6Step176ExitFvExtra ++ (shrinkRow 775 s6Step176ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step176ExitBank_rows]
  rfl

private theorem s6Step176Add0_apart : Disjoint s6Step176Add0Arena.live s6Step176Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step176Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176Add0_card : s6Step176Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step176Add0_borrowed : s6Step176Add0Arena.checkBorrow (hmrHybridCount s6Step176Add0Arena s6Step176Add0B.length) s6Step176Add0Work=some s6Step176Add0During := by
  have len : s6Step176Add0Work.length=hmrHybridCount s6Step176Add0Arena s6Step176Add0B.length := by
    rw [hmrHybridCount,s6Step176Add0_card]
    decide +kernel
  have nd : s6Step176Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step176Add0Arena s6Step176Add0During s6Step176Add0Work.toFinset s6Step176Add0_bounded s6Step176Add0_apart rfl

private theorem s6Step176Add0_distinct : (863::880::890::(s6Step176Add0A++s6Step176Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176Add0_owned : (863::880::890::(s6Step176Add0A++s6Step176Add0B)).toFinset⊆s6Step176Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step176Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176Add0_checked : compileHmrHybridCinLog s6Step176Add0Arena 880 863 890 s6Step176Add0A s6Step176Add0B s6Step176Add0Work=some s6Step176Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step176Add0Arena s6Step176Add0During 880 863 890 s6Step176Add0A s6Step176Add0B s6Step176Add0Work
    (by decide +kernel) (by decide +kernel) s6Step176Add0_distinct
    (fun q hq => s6Step176Add0_owned (List.mem_toFinset.mpr hq)) s6Step176Add0_borrowed

private theorem s6Step176Add1_apart : Disjoint s6Step176Add1Arena.live s6Step176Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step176Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176Add1_card : s6Step176Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step176Add1_borrowed : s6Step176Add1Arena.checkBorrow (hmrHybridCount s6Step176Add1Arena s6Step176Add1B.length) s6Step176Add1Work=some s6Step176Add1During := by
  have len : s6Step176Add1Work.length=hmrHybridCount s6Step176Add1Arena s6Step176Add1B.length := by
    rw [hmrHybridCount,s6Step176Add1_card]
    decide +kernel
  have nd : s6Step176Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step176Add1Arena s6Step176Add1During s6Step176Add1Work.toFinset s6Step176Add1_bounded s6Step176Add1_apart rfl

private theorem s6Step176Add1_distinct : (863::880::890::(s6Step176Add1A++s6Step176Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176Add1_owned : (863::880::890::(s6Step176Add1A++s6Step176Add1B)).toFinset⊆s6Step176Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step176Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176Add1_checked : compileHmrHybridCinLog s6Step176Add1Arena 880 863 890 s6Step176Add1A s6Step176Add1B s6Step176Add1Work=some s6Step176Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step176Add1Arena s6Step176Add1During 880 863 890 s6Step176Add1A s6Step176Add1B s6Step176Add1Work
    (by decide +kernel) (by decide +kernel) s6Step176Add1_distinct
    (fun q hq => s6Step176Add1_owned (List.mem_toFinset.mpr hq)) s6Step176Add1_borrowed

private theorem s6Step176F4_apart : Disjoint (s6Step176Add0A++s6Step176Add0B).toFinset (s6Step176Add1A++s6Step176Add1B).toFinset := by
  have nd : ((s6Step176Add0A++s6Step176Add0B)++(s6Step176Add1A++s6Step176Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step176F4_carry : s6Step176F4FlagArena.checkBorrow 1 [890]=some s6Step176Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step176F4FlagArena,s6Step176HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step176F4FlagArena,s6Step176HeadFvAfter,s6Step176Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step176F4_distinct : (803::880::863::890::((s6Step176Add0A++s6Step176Add1A)++(s6Step176Add0B++s6Step176Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176F4_flag : s6Step176HeadFvAfter.checkBorrow 1 [863]=some s6Step176F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step176HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step176F4_owned : (803::880::((s6Step176Add0A++s6Step176Add1A)++(s6Step176Add0B++s6Step176Add1B))).toFinset⊆s6Step176HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step176HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176F4_checked : compileHmrHybridF4Log s6Step176HeadFvAfter 803 880 s6Step176Add0A s6Step176Add0B s6Step176Add1A s6Step176Add1B [863] [890] s6Step176Add0Work s6Step176Add1Work=some s6Step176F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step176HeadFvAfter s6Step176F4FlagArena s6Step176Add0Arena s6Step176Add0During s6Step176Add1During 803 880
    s6Step176Add0A s6Step176Add0B s6Step176Add1A s6Step176Add1B [863] [890] s6Step176Add0Work s6Step176Add1Work
    (fun q hq => s6Step176F4_owned (List.mem_toFinset.mpr hq)) s6Step176F4_flag s6Step176F4_carry
    s6Step176F4_distinct s6Step176F4_apart s6Step176Add0_checked s6Step176Add1_checked

private theorem s6Step176Front_branch : s6Step176FrontSigmaArena.checkBorrow 1 [880]=some s6Step176HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step176FrontSigmaArena,s6Step176EntryGvAfter,s6Step176EntryGAfter,arenaWires]
  · change s6Step176HeadGBefore.live=(s6Step176EntryGvAfter.live∪{803})∪{880}
    apply hmrArena_union_pair_of_filter_check s6Step176EntryGvAfter s6Step176HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 880 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step176Front_entry : HmrFrontEntryValid s6Step176EntryFBefore s6Step176FrontBank 182 102 ⟨181,181,102,102⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step176FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step176EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step176EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,880),(881,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step176FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step176Front_sigma : s6Step176EntryGvAfter.checkBorrow 1 [803]=some s6Step176FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step176EntryGvAfter,s6Step176EntryGAfter,arenaWires]
  · rfl

private def s6Step176HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step176HeadFBefore : Arena := s6Step176HeadGAfter

private def s6Step176HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437],795⟩

private def s6Step176HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793],776⟩

private def s6Step176HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830],777⟩

private def s6Step176HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778],775⟩

private theorem s6Step176HeadBank_incomingDistinct : ([s6Step176HeadGRow,s6Step176HeadFRow,s6Step176HeadGvRow,s6Step176HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176HeadF_Incoming : rowsOwned s6Step176HeadFBefore [s6Step176HeadFRow,s6Step176HeadGvRow,s6Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176HeadGRow,s6Step176HeadFRow,s6Step176HeadGvRow,s6Step176HeadFvRow] 1 s6Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176HeadBank_outgoingOwned : rowsOwned s6Step176HeadFvAfter [s6Step176HeadGOut,s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step176HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step176HeadF_Outgoing : rowsOwned s6Step176HeadFvAfter [s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut] :=
  hmrRows_owned_drop s6Step176HeadFvAfter [s6Step176HeadGOut,s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut] 1 s6Step176HeadBank_outgoingOwned

private theorem s6Step176HeadF_distinct : (s6Step176HeadFRow.sign::s6Step176HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176HeadF_owned : (s6Step176HeadFRow.sign::s6Step176HeadFRow.payload).toFinset⊆s6Step176HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176HeadF_reserved : s6Step176HeadFBefore.reserve s6Step176HeadFFresh.toFinset=some s6Step176HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176HeadFFresh,arenaWires]
  · norm_num [s6Step176HeadFBefore,s6Step176HeadGAfter,s6Step176HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step176HeadFBefore s6Step176HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step176HeadFFresh rfl rfl
    · norm_num [s6Step176HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step176HeadF_checked : planRowResizeLog s6Step176HeadFBefore s6Step176HeadFRow 183 s6Step176HeadFFresh=
    some (s6Step176HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 857],795⟩,growRow 795 s6Step176HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step176HeadFBefore s6Step176HeadFAfter s6Step176HeadFRow 183 s6Step176HeadFFresh
    s6Step176HeadF_distinct s6Step176HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176HeadF_reserved
  have rowEq : WindowRow.mk (s6Step176HeadFRow.payload++s6Step176HeadFFresh) s6Step176HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 857],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step176HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step176HeadFvBefore : Arena := s6Step176HeadGvAfter

private theorem s6Step176HeadFv_Incoming : rowsOwned s6Step176HeadFvBefore [s6Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176HeadGRow,s6Step176HeadFRow,s6Step176HeadGvRow,s6Step176HeadFvRow] 3 s6Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step176HeadFv_Outgoing : rowsOwned s6Step176HeadFvAfter [s6Step176HeadFvOut] :=
  hmrRows_owned_drop s6Step176HeadFvAfter [s6Step176HeadGOut,s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut] 3 s6Step176HeadBank_outgoingOwned

private theorem s6Step176HeadFv_distinct : (s6Step176HeadFvRow.sign::s6Step176HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176HeadFv_owned : (s6Step176HeadFvRow.sign::s6Step176HeadFvRow.payload).toFinset⊆s6Step176HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176HeadFv_reserved : s6Step176HeadFvBefore.reserve s6Step176HeadFvFresh.toFinset=some s6Step176HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176HeadFvFresh,arenaWires]
  · norm_num [s6Step176HeadFvBefore,s6Step176HeadGvAfter,s6Step176HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step176HeadFvAfter,s6Step176HeadFvBefore,s6Step176HeadGvAfter,s6Step176HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step176HeadFv_checked : planRowResizeLog s6Step176HeadFvBefore s6Step176HeadFvRow 103 s6Step176HeadFvFresh=
    some (s6Step176HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 922],776⟩,growRow 776 s6Step176HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step176HeadFvBefore s6Step176HeadFvAfter s6Step176HeadFvRow 103 s6Step176HeadFvFresh
    s6Step176HeadFv_distinct s6Step176HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step176HeadFvRow.payload++s6Step176HeadFvFresh) s6Step176HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 922],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step176HeadG_Incoming : rowsOwned s6Step176HeadGBefore [s6Step176HeadGRow,s6Step176HeadFRow,s6Step176HeadGvRow,s6Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176HeadGRow,s6Step176HeadFRow,s6Step176HeadGvRow,s6Step176HeadFvRow] 0 s6Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step176HeadG_Outgoing : rowsOwned s6Step176HeadFvAfter [s6Step176HeadGOut,s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut] :=
  hmrRows_owned_drop s6Step176HeadFvAfter [s6Step176HeadGOut,s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut] 0 s6Step176HeadBank_outgoingOwned

private theorem s6Step176HeadG_distinct : (s6Step176HeadGRow.sign::s6Step176HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176HeadG_owned : (s6Step176HeadGRow.sign::s6Step176HeadGRow.payload).toFinset⊆s6Step176HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step176HeadG_reserved : s6Step176HeadGBefore.reserve s6Step176HeadGFresh.toFinset=some s6Step176HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176HeadGFresh,arenaWires]
  · norm_num [s6Step176HeadGBefore,s6Step176HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step176HeadGBefore s6Step176HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step176HeadGFresh rfl rfl
    · norm_num [s6Step176HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step176HeadG_checked : planRowResizeLog s6Step176HeadGBefore s6Step176HeadGRow 183 s6Step176HeadGFresh=
    some (s6Step176HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 907],777⟩,growRow 777 s6Step176HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step176HeadGBefore s6Step176HeadGAfter s6Step176HeadGRow 183 s6Step176HeadGFresh
    s6Step176HeadG_distinct s6Step176HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176HeadG_reserved
  have rowEq : WindowRow.mk (s6Step176HeadGRow.payload++s6Step176HeadGFresh) s6Step176HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 830, 907],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step176HeadGvBefore : Arena := s6Step176HeadFAfter

private theorem s6Step176HeadGv_Incoming : rowsOwned s6Step176HeadGvBefore [s6Step176HeadGvRow,s6Step176HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step176HeadGRow,s6Step176HeadFRow,s6Step176HeadGvRow,s6Step176HeadFvRow] 2 s6Step176HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step176HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step176HeadGv_Outgoing : rowsOwned s6Step176HeadFvAfter [s6Step176HeadGvOut,s6Step176HeadFvOut] :=
  hmrRows_owned_drop s6Step176HeadFvAfter [s6Step176HeadGOut,s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut] 2 s6Step176HeadBank_outgoingOwned

private theorem s6Step176HeadGv_distinct : (s6Step176HeadGvRow.sign::s6Step176HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step176HeadGv_owned : (s6Step176HeadGvRow.sign::s6Step176HeadGvRow.payload).toFinset⊆s6Step176HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step176HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<876) ∨ (877≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step176HeadGv_reserved : s6Step176HeadGvBefore.reserve s6Step176HeadGvFresh.toFinset=some s6Step176HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step176HeadGvFresh,arenaWires]
  · norm_num [s6Step176HeadGvBefore,s6Step176HeadFAfter,s6Step176HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step176HeadGvAfter,s6Step176HeadGvBefore,s6Step176HeadFAfter,s6Step176HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step176HeadGv_checked : planRowResizeLog s6Step176HeadGvBefore s6Step176HeadGvRow 103 s6Step176HeadGvFresh=
    some (s6Step176HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 876],775⟩,growRow 775 s6Step176HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step176HeadGvBefore s6Step176HeadGvAfter s6Step176HeadGvRow 103 s6Step176HeadGvFresh
    s6Step176HeadGv_distinct s6Step176HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step176HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step176HeadGvRow.payload++s6Step176HeadGvFresh) s6Step176HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 876],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step176HeadBank_rows : planWindowRowsLog s6Step176HeadGBefore [(s6Step176HeadGRow,183),(s6Step176HeadFRow,183),(s6Step176HeadGvRow,103),(s6Step176HeadFvRow,103)] [s6Step176HeadGFresh,s6Step176HeadFFresh,s6Step176HeadGvFresh,s6Step176HeadFvFresh]=
    some (s6Step176HeadFvAfter,[s6Step176HeadGOut,s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut],(growRow 777 s6Step176HeadGFresh ++ (growRow 795 s6Step176HeadFFresh ++ (growRow 775 s6Step176HeadGvFresh ++ (growRow 776 s6Step176HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step176HeadFvAfter [] []=some (s6Step176HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step176HeadFvBefore s6Step176HeadFvAfter s6Step176HeadFvAfter
    s6Step176HeadFvRow s6Step176HeadFvOut 103 s6Step176HeadFvFresh [] [] []
    (growRow 776 s6Step176HeadFvFresh) ([]) s6Step176HeadFv_Incoming s6Step176HeadFv_checked h4 s6Step176HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step176HeadGvBefore s6Step176HeadGvAfter s6Step176HeadFvAfter
    s6Step176HeadGvRow s6Step176HeadGvOut 103 s6Step176HeadGvFresh [(s6Step176HeadFvRow,103)] [s6Step176HeadFvFresh] [s6Step176HeadFvOut]
    (growRow 775 s6Step176HeadGvFresh) ((growRow 776 s6Step176HeadFvFresh ++ [])) s6Step176HeadGv_Incoming s6Step176HeadGv_checked h3 s6Step176HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step176HeadFBefore s6Step176HeadFAfter s6Step176HeadFvAfter
    s6Step176HeadFRow s6Step176HeadFOut 183 s6Step176HeadFFresh [(s6Step176HeadGvRow,103),(s6Step176HeadFvRow,103)] [s6Step176HeadGvFresh,s6Step176HeadFvFresh] [s6Step176HeadGvOut,s6Step176HeadFvOut]
    (growRow 795 s6Step176HeadFFresh) ((growRow 775 s6Step176HeadGvFresh ++ (growRow 776 s6Step176HeadFvFresh ++ []))) s6Step176HeadF_Incoming s6Step176HeadF_checked h2 s6Step176HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step176HeadGBefore s6Step176HeadGAfter s6Step176HeadFvAfter
    s6Step176HeadGRow s6Step176HeadGOut 183 s6Step176HeadGFresh [(s6Step176HeadFRow,183),(s6Step176HeadGvRow,103),(s6Step176HeadFvRow,103)] [s6Step176HeadFFresh,s6Step176HeadGvFresh,s6Step176HeadFvFresh] [s6Step176HeadFOut,s6Step176HeadGvOut,s6Step176HeadFvOut]
    (growRow 777 s6Step176HeadGFresh) ((growRow 795 s6Step176HeadFFresh ++ (growRow 775 s6Step176HeadGvFresh ++ (growRow 776 s6Step176HeadFvFresh ++ [])))) s6Step176HeadG_Incoming s6Step176HeadG_checked h1 s6Step176HeadG_Outgoing
  exact h0

private theorem s6Step176HeadBank_checked : compileHmrBankResizeLog .headroom s6Step176HeadGBefore ⟨s6Step176HeadFRow,s6Step176HeadGRow,s6Step176HeadFvRow,s6Step176HeadGvRow⟩ ⟨183,183,103,103⟩ [s6Step176HeadGFresh,s6Step176HeadFFresh,s6Step176HeadGvFresh,s6Step176HeadFvFresh]=
    some (s6Step176HeadFvAfter,⟨s6Step176HeadFOut,s6Step176HeadGOut,s6Step176HeadFvOut,s6Step176HeadGvOut⟩,(growRow 777 s6Step176HeadGFresh ++ (growRow 795 s6Step176HeadFFresh ++ (growRow 775 s6Step176HeadGvFresh ++ (growRow 776 s6Step176HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step176HeadBank_rows]
  rfl

private theorem s6Step176Front_checked : compileHmrSourceFrontLog s6Step176EntryFBefore s6Step176FrontBank 182 102 ⟨181,181,102,102⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step176FrontLog=some s6Step176FrontPlan := by
  have pairEq : s6Step176FrontPair=⟨s6Step176HeadFRow,s6Step176HeadGRow,s6Step176HeadFvRow,s6Step176HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step176FrontHead=⟨s6Step176ExitFRow,s6Step176ExitGRow,s6Step176ExitFvRow,s6Step176ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step176Add0A=s6Step176FrontHead.f.wires := by decide +kernel
  have gEq : s6Step176Add0B=s6Step176FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step176Add1A=s6Step176FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step176Add1B=s6Step176FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step176EntryFBefore s6Step176FrontBank 182 102 ⟨181,181,102,102⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step176FrontLog s6Step176FrontPlan
  · exact s6Step176Front_entry
  · exact s6Step176EntryBank_checked
  · exact s6Step176Front_sigma
  · rfl
  · exact s6Step176Front_branch
  · rfl
  · simpa only [s6Step176FrontPlan,pairEq] using s6Step176HeadBank_checked
  · simpa only [s6Step176FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step176F4_checked
  · exact s6Step176Counter_checked
  · rfl
  · simpa only [s6Step176FrontPlan,headEq] using s6Step176ExitBank_checked

private theorem s6Step176Complete_explicit_checked : compileHmrEarlyStepLog s6Step176EntryFBefore s6Step176FrontBank 182 102 ⟨181,181,102,102⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step176CompleteLog=some s6Step176CompletePlan := by
  let Q := s6Step176EarlyControlPlan
  have hq := s6Step176EarlyControl_plan_checked
  have fv1 : s6Step176CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step176CompleteOut.fv.payload[2]?.getD s6Step176CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step176CompleteOut.fv.payload[3]?.getD s6Step176CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step176CompleteOut.fv.payload[4]?.getD s6Step176CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step176EntryFBefore s6Step176EarlyControlArena s6Step176FrontBank 182 102 ⟨181,181,102,102⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step176CompleteLog s6Step176FrontPlan Q
    s6Step176Front_checked s6Step176Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step176Complete_owned s6Step176Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step176EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step176CompleteOut.fv.second (s6Step176CompleteOut.fv.payload[2]?.getD s6Step176CompleteOut.fv.sign) (s6Step176CompleteOut.fv.payload[3]?.getD s6Step176CompleteOut.fv.sign) (s6Step176CompleteOut.fv.payload[4]?.getD s6Step176CompleteOut.fv.sign) 880 42 s6Step176EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep176Arena : Arena := s6Step176EntryFBefore
def s6PrivateStep176Bank : WindowBank := s6Step176FrontBank
def s6PrivateStep176Spec : HmrSourceWalkStepLog := ⟨182,102,⟨181,181,102,102⟩,42,.early s6Step176CompleteLog⟩
def s6PrivateStep176Plan : HmrSourceStepPlan := .early s6Step176CompletePlan
theorem s6PrivateStep176_source : s6PrivateStep176Spec=s6ObservedLogs176[0] := rfl
theorem s6PrivateStep176_checked : compileHmrSourceStepLog s6PrivateStep176Arena s6PrivateStep176Bank
    s6PrivateStep176Spec.fgWidth s6PrivateStep176Spec.vWidth s6PrivateStep176Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 176 s6PrivateStep176Spec.need none s6PrivateStep176Spec.log=some s6PrivateStep176Plan := by
  change compileHmrSourceStepLog s6Step176EntryFBefore s6Step176FrontBank 182 102 ⟨181,181,102,102⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 176 42 none (.early s6Step176CompleteLog)=some (.early s6Step176CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 176<498)]
  rw [s6Step176Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
