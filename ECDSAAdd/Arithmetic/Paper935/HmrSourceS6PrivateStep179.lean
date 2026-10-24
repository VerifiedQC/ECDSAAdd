import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep177
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

private def s6Step179CompleteMoves : List (Wire × Wire) := [(848,435)]

private def s6Step179EarlyControlLog : HmrEarlyControlLog := ⟨[848, 865, 876, 830, 907],[863],[890],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step179FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [880], [], []],[[876], [865], [868], [888]],[[], [], [], []]⟩,[803],[814],[830],[907],[863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[830, 907, 863, 890]⟩

private def s6Step179CompleteLog : HmrEarlyStepLog := ⟨s6Step179FrontLog,s6Step179CompleteMoves,s6Step179EarlyControlLog⟩

private def s6Step179ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434],795⟩

private def s6Step179ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step179ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩

private def s6Step179ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step179FrontOut : WindowBank := ⟨s6Step179ExitFOut,s6Step179ExitGOut,s6Step179ExitFvOut,s6Step179ExitGvOut⟩

private def s6Step179CompleteOut : WindowBank := s6Step179FrontOut.repacked s6Step179CompleteMoves

private def s6Step179EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step179EarlyControlPositiveArena,[863],s6Step179EarlyControlEqualityArena,[890],⟨⟨803,false⟩,[⟨⟨863,false⟩,890⟩]⟩⟩

private def s6Step179EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,848⟩,⟨⟨772,false⟩,865⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,830⟩,⟨⟨769,false⟩,907⟩]⟩

private def s6Step179EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step179EarlyControlZeroArena,s6Step179EarlyControlZeroPlan,s6Step179EarlyControlClassPlan,s6Step179EarlyControlFlagArena,s6Step179EarlyControlFittedArena,s6Step179EarlyControlHistoryArena,s6Step179EarlyControlSigmaArena,s6Step179EarlyControlOutputArena,s6Step179EarlyControlLog⟩

private def s6Step179CounterWork : List Wire := [830, 907, 863, 890]

private theorem s6Step179Counter_bounded : s6Step179CounterWork.toFinset⊆arenaWires := by norm_num [s6Step179CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step179HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179CounterDuring : Arena := ⟨s6Step179HeadFvAfter.live∪s6Step179CounterWork.toFinset,Finset.union_subset s6Step179HeadFvAfter.bounded s6Step179Counter_bounded⟩

private def s6Step179EntryFFresh : List Wire := []

private def s6Step179EntryFvFresh : List Wire := []

private def s6Step179EntryGFresh : List Wire := [880]

private def s6Step179EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179EntryGvAfter : Arena := s6Step179EntryGAfter

private def s6Step179EntryGvFresh : List Wire := []

private def s6Step179ExitFExtra : List Wire := [435, 865]

private def s6Step179ExitGExtra : List Wire := [876]

private def s6Step179ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179ExitGvAfter : Arena := s6Step179ExitFAfter

private def s6Step179Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179Add0Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step179Add0_bounded : s6Step179Add0Work.toFinset⊆arenaWires := by
  have h : s6Step179Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step179Add0During : Arena := ⟨s6Step179Add0Arena.live∪s6Step179Add0Work.toFinset,Finset.union_subset s6Step179Add0Arena.bounded s6Step179Add0_bounded⟩

private def s6Step179Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step179Add1Work : List Wire := [863, 890, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step179Add1_bounded : s6Step179Add1Work.toFinset⊆arenaWires := by
  have h : s6Step179Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step179Add1During : Arena := ⟨s6Step179Add1Arena.live∪s6Step179Add1Work.toFinset,Finset.union_subset s6Step179Add1Arena.bounded s6Step179Add1_bounded⟩

private def s6Step179F4FlagArena : Arena := ⟨s6Step179HeadFvAfter.live∪{830},Finset.union_subset s6Step179HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step179F4Plan : HmrHybridF4Plan := ⟨s6Step179F4FlagArena,[830],s6Step179Add0Arena,[907],s6Step179Add0During,s6Step179Add0Work,s6Step179Add1During,s6Step179Add1Work⟩

private def s6Step179HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 865],795⟩

private def s6Step179HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step179HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 876],777⟩

private def s6Step179HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private def s6Step179FrontHead : WindowBank := ⟨s6Step179HeadFOut,s6Step179HeadGOut,s6Step179HeadFvOut,s6Step179HeadGvOut⟩

private def s6Step179EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step179EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step179EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩

private def s6Step179EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private def s6Step179FrontPair : WindowBank := ⟨s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut⟩

private def s6Step179FrontSigmaArena : Arena := ⟨s6Step179EntryGvAfter.live∪{803},Finset.union_subset s6Step179EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step179HeadFFresh : List Wire := [865]

private def s6Step179HeadFvFresh : List Wire := [888]

private def s6Step179HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179HeadGFresh : List Wire := [876]

private def s6Step179HeadGvFresh : List Wire := [868]

private def s6Step179FrontPlan : HmrSourceFront := ⟨s6Step179EntryGvAfter,s6Step179FrontPair,(growRow 795 s6Step179EntryFFresh ++ (growRow 777 s6Step179EntryGFresh ++ (growRow 776 s6Step179EntryFvFresh ++ (growRow 775 s6Step179EntryGvFresh ++ [])))),s6Step179FrontSigmaArena,[803],s6Step179HeadGBefore,[814],
  s6Step179HeadFvAfter,s6Step179FrontHead,(growRow 777 s6Step179HeadGFresh ++ (growRow 795 s6Step179HeadFFresh ++ (growRow 775 s6Step179HeadGvFresh ++ (growRow 776 s6Step179HeadFvFresh ++ [])))),s6Step179F4Plan,s6Step179CounterDuring,s6Step179CounterWork,s6Step179ExitGvAfter,s6Step179FrontOut,(shrinkRow 777 s6Step179ExitGExtra ++ (shrinkRow 795 s6Step179ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step179CompletePlan : HmrEarlyStepPlan := ⟨s6Step179FrontPlan,s6Step179EarlyControlArena,s6Step179EarlyControlPlan,s6Step179CompleteMoves⟩

private theorem s6Step179Complete_apart : List.Disjoint (s6Step179CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [803, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step179CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[803, 814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step179Complete_owned : (s6Step179CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step179CompleteRelocationMove0Borrowed : Arena := ⟨s6Step179ExitGvAfter.live∪{435},Finset.union_subset s6Step179ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step179CompleteRelocation_move0_owned : 848∈s6Step179ExitGvAfter.live := by norm_num [s6Step179ExitGvAfter,s6Step179ExitFAfter,arenaWires]

private theorem s6Step179CompleteRelocation_move0_reserve : s6Step179ExitGvAfter.reserve {435}=some s6Step179CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step179ExitGvAfter,s6Step179ExitFAfter,arenaWires]
  · rfl

private theorem s6Step179CompleteRelocation_move0_retire : s6Step179CompleteRelocationMove0Borrowed.retireSet {848}=s6Step179EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step179CompleteRelocationMove0Borrowed s6Step179EarlyControlArena {848}
  change s6Step179EarlyControlArena.live=(s6Step179ExitGvAfter.live∪{435})\{848}
  apply hmrArena_update_of_filter_check s6Step179ExitGvAfter s6Step179EarlyControlArena (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [435] [848] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step179CompleteRelocation_checked : s6Step179ExitGvAfter.checkRepack [(848,435)]=some s6Step179EarlyControlArena := by
  have tail1 : s6Step179EarlyControlArena.checkRepack []=some s6Step179EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step179ExitGvAfter s6Step179CompleteRelocationMove0Borrowed s6Step179EarlyControlArena s6Step179EarlyControlArena 848 435 []
    s6Step179CompleteRelocation_move0_owned s6Step179CompleteRelocation_move0_reserve s6Step179CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step179Complete_repack : s6Step179ExitGvAfter.checkRepack s6Step179CompleteMoves=some s6Step179EarlyControlArena := by
  simpa only [s6Step179CompleteMoves] using s6Step179CompleteRelocation_checked

private theorem s6Step179EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s6Step179EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EarlyControl_branch : compileHmrBranchRetirement s6Step179EarlyControlSigmaArena 814=some s6Step179EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step179EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step179EarlyControlSigmaArena s6Step179EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [814] rfl rfl
    decide +kernel

private theorem s6Step179EarlyControl_classEqualityBorrow : s6Step179EarlyControlPositiveArena.checkBorrow (([803, 863] : List Wire).length-1) s6Step179EarlyControlLog.classWork=some s6Step179EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step179EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step179EarlyControlEqualityArena,s6Step179EarlyControlPositiveArena,s6Step179EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step179EarlyControl_classEqualityOwned : ([803, 863] : List Wire).toFinset⊆s6Step179EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179EarlyControl_classEquality : compileHmrEqualityLog s6Step179EarlyControlPositiveArena [803, 863] 0 s6Step179EarlyControlLog.classWork=some (s6Step179EarlyControlEqualityArena,s6Step179EarlyControlLog.classWork,s6Step179EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step179EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step179EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step179EarlyControl_classOwned : ([769, 907, 803] : List Wire).toFinset⊆s6Step179EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179EarlyControl_positiveBorrow : s6Step179EarlyControlZeroArena.checkBorrow (1) s6Step179EarlyControlLog.positiveWork=some s6Step179EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step179EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step179EarlyControlPositiveArena,s6Step179EarlyControlZeroArena,s6Step179EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step179EarlyControl_class : compileHmrSourceClassLog s6Step179EarlyControlZeroArena false 769 s6Step179EarlyControlZeroPlan.top 0 803 s6Step179EarlyControlLog.positiveWork s6Step179EarlyControlLog.classWork=some s6Step179EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step179EarlyControlClassPlan s6Step179EarlyControlZeroArena false 769 s6Step179EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s6Step179EarlyControl_classOwned
  · exact s6Step179EarlyControl_positiveBorrow
  · exact s6Step179EarlyControl_classEquality

private theorem s6Step179EarlyControl_entryRecordOwned : ([814, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s6Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EarlyControl_fitBorrow : s6Step179EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step179EarlyControlLog.recordFresh=some s6Step179EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step179EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step179EarlyControlFittedArena,s6Step179EarlyControlFlagArena,s6Step179EarlyControlLog,arenaWires]

private theorem s6Step179EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step179EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179EarlyControl_fit : compileHmrRecordGrowLog s6Step179EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step179EarlyControlLog.recordFresh=some s6Step179EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step179EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step179EarlyControl_fitBorrow

private theorem s6Step179EarlyControl_flagsBorrow : s6Step179EarlyControlEqualityArena.checkBorrow (6) s6Step179EarlyControlLog.flagWork=some s6Step179EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step179EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step179EarlyControlFlagArena,s6Step179EarlyControlEqualityArena,s6Step179EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step179EarlyControl_flagsOwned : ([890, 253, 252, 251] : List Wire).toFinset⊆s6Step179EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179EarlyControl_flags : compileHmrFlagsLog s6Step179EarlyControlClassPlan.equalityArena s6Step179EarlyControlClassPlan.equality.top 253 252 251 s6Step179EarlyControlLog.flagWork=some s6Step179EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step179EarlyControl_flagsOwned⟩
  · exact s6Step179EarlyControl_flagsBorrow

private theorem s6Step179EarlyControl_historyBorrow : s6Step179EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step179EarlyControlLog.recordFresh=some s6Step179EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step179EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step179EarlyControlArena s6Step179EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step179EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step179EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EarlyControl_history : compileHmrRecordGrowLog s6Step179EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step179EarlyControlLog.recordFresh=some s6Step179EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step179EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step179EarlyControl_historyBorrow

private theorem s6Step179EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s6Step179EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s6Step179EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EarlyControl_sigmaRelease : s6Step179EarlyControlHistoryArena.release {803} (fun _ => false)=some s6Step179EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step179EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step179EarlyControlHistoryArena s6Step179EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [803] rfl rfl
    decide +kernel

private theorem s6Step179EarlyControl_sigma : compileHmrSigmaDropLog s6Step179EarlyControlHistoryArena false 0 0 254 803 []=some s6Step179EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step179EarlyControl_sigmaOwned⟩
  · exact s6Step179EarlyControl_sigmaRelease

private theorem s6Step179EarlyControl_zeroBorrow : s6Step179EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step179EarlyControlLog.zeroWork=some s6Step179EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step179EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step179EarlyControlArena s6Step179EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step179EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step179EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step179EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step179EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step179EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,848),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EarlyControl_zero : compileHmrEqualityLog s6Step179EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step179EarlyControlLog.zeroWork=some (s6Step179EarlyControlZeroArena,s6Step179EarlyControlLog.zeroWork,s6Step179EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step179EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step179EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step179EarlyControl_logged : s6Step179EarlyControlPlan.Logged s6Step179EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 814 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step179EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step179EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step179EarlyControl_zero
  · exact s6Step179EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step179EarlyControl_flags
  · exact s6Step179EarlyControl_fit
  · exact s6Step179EarlyControl_history
  · exact s6Step179EarlyControl_sigma
  · exact s6Step179EarlyControl_branch

private theorem s6Step179EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step179EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 814 42 s6Step179EarlyControlLog=some s6Step179EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step179EarlyControlPlan s6Step179EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 254 253 252 251 814 42 s6Step179EarlyControl_logged

private def s6Step179EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step179EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step179EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178],777⟩

private def s6Step179EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private def s6Step179FrontBank : WindowBank := ⟨s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow⟩

private def s6Step179Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 865, 795]

private def s6Step179Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 876, 777]

private def s6Step179Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 776]

private def s6Step179Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 775]

private theorem s6Step179Counter_apart : Disjoint s6Step179HeadFvAfter.live s6Step179CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step179HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179Counter_borrowed : s6Step179HeadFvAfter.checkBorrow 4 s6Step179CounterWork=some s6Step179CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step179HeadFvAfter s6Step179CounterDuring s6Step179CounterWork.toFinset s6Step179Counter_bounded s6Step179Counter_apart rfl

private theorem s6Step179Counter_owned : (803::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step179HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step179HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179Counter_checked : compileHmrCounterStepLog s6Step179HeadFvAfter true 803 [774, 773, 772, 771, 770, 769] s6Step179CounterWork=some s6Step179CounterDuring := by
  have owned : ∀q∈803::[774, 773, 772, 771, 770, 769],q∈s6Step179HeadFvAfter.live := fun q hq => s6Step179Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step179Counter_borrowed

private def s6Step179EntryFAfter : Arena := s6Step179EntryFBefore

private theorem s6Step179EntryBank_incomingDistinct : ([s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179EntryF_Incoming : rowsOwned s6Step179EntryFBefore [s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow] 0 s6Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179EntryBank_outgoingOwned : rowsOwned s6Step179EntryGvAfter [s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step179EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179EntryF_Outgoing : rowsOwned s6Step179EntryGvAfter [s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut] :=
  hmrRows_owned_drop s6Step179EntryGvAfter [s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut] 0 s6Step179EntryBank_outgoingOwned

private theorem s6Step179EntryF_distinct : (s6Step179EntryFRow.sign::s6Step179EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179EntryF_owned : (s6Step179EntryFRow.sign::s6Step179EntryFRow.payload).toFinset⊆s6Step179EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EntryF_reserved : s6Step179EntryFBefore.reserve s6Step179EntryFFresh.toFinset=some s6Step179EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179EntryFFresh,arenaWires]
  · norm_num [s6Step179EntryFBefore,s6Step179EntryFFresh,arenaWires]
  · simp only [s6Step179EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step179EntryF_checked : planRowResizeLog s6Step179EntryFBefore s6Step179EntryFRow 180 s6Step179EntryFFresh=
    some (s6Step179EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩,growRow 795 s6Step179EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step179EntryFBefore s6Step179EntryFAfter s6Step179EntryFRow 180 s6Step179EntryFFresh
    s6Step179EntryF_distinct s6Step179EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179EntryF_reserved
  have rowEq : WindowRow.mk (s6Step179EntryFRow.payload++s6Step179EntryFFresh) s6Step179EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step179EntryFvAfter : Arena := s6Step179EntryGAfter

private def s6Step179EntryFvBefore : Arena := s6Step179EntryGAfter

private theorem s6Step179EntryFv_Incoming : rowsOwned s6Step179EntryFvBefore [s6Step179EntryFvRow,s6Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow] 2 s6Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179EntryFv_Outgoing : rowsOwned s6Step179EntryGvAfter [s6Step179EntryFvOut,s6Step179EntryGvOut] :=
  hmrRows_owned_drop s6Step179EntryGvAfter [s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut] 2 s6Step179EntryBank_outgoingOwned

private theorem s6Step179EntryFv_distinct : (s6Step179EntryFvRow.sign::s6Step179EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179EntryFv_owned : (s6Step179EntryFvRow.sign::s6Step179EntryFvRow.payload).toFinset⊆s6Step179EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EntryFv_reserved : s6Step179EntryFvBefore.reserve s6Step179EntryFvFresh.toFinset=some s6Step179EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179EntryFvFresh,arenaWires]
  · norm_num [s6Step179EntryFvBefore,s6Step179EntryGAfter,s6Step179EntryFvFresh,arenaWires]
  · simp only [s6Step179EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step179EntryFv_checked : planRowResizeLog s6Step179EntryFvBefore s6Step179EntryFvRow 103 s6Step179EntryFvFresh=
    some (s6Step179EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩,growRow 776 s6Step179EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step179EntryFvBefore s6Step179EntryFvAfter s6Step179EntryFvRow 103 s6Step179EntryFvFresh
    s6Step179EntryFv_distinct s6Step179EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step179EntryFvRow.payload++s6Step179EntryFvFresh) s6Step179EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step179EntryGBefore : Arena := s6Step179EntryFBefore

private theorem s6Step179EntryG_Incoming : rowsOwned s6Step179EntryGBefore [s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow] 1 s6Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179EntryG_Outgoing : rowsOwned s6Step179EntryGvAfter [s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut] :=
  hmrRows_owned_drop s6Step179EntryGvAfter [s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut] 1 s6Step179EntryBank_outgoingOwned

private theorem s6Step179EntryG_distinct : (s6Step179EntryGRow.sign::s6Step179EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179EntryG_owned : (s6Step179EntryGRow.sign::s6Step179EntryGRow.payload).toFinset⊆s6Step179EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EntryG_reserved : s6Step179EntryGBefore.reserve s6Step179EntryGFresh.toFinset=some s6Step179EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179EntryGFresh,arenaWires]
  · norm_num [s6Step179EntryGBefore,s6Step179EntryFBefore,s6Step179EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step179EntryGBefore s6Step179EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step179EntryGFresh rfl rfl
    · norm_num [s6Step179EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step179EntryG_checked : planRowResizeLog s6Step179EntryGBefore s6Step179EntryGRow 180 s6Step179EntryGFresh=
    some (s6Step179EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩,growRow 777 s6Step179EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step179EntryGBefore s6Step179EntryGAfter s6Step179EntryGRow 180 s6Step179EntryGFresh
    s6Step179EntryG_distinct s6Step179EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179EntryG_reserved
  have rowEq : WindowRow.mk (s6Step179EntryGRow.payload++s6Step179EntryGFresh) s6Step179EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step179EntryGvBefore : Arena := s6Step179EntryGAfter

private theorem s6Step179EntryGv_Incoming : rowsOwned s6Step179EntryGvBefore [s6Step179EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow] 3 s6Step179EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179EntryGv_Outgoing : rowsOwned s6Step179EntryGvAfter [s6Step179EntryGvOut] :=
  hmrRows_owned_drop s6Step179EntryGvAfter [s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut] 3 s6Step179EntryBank_outgoingOwned

private theorem s6Step179EntryGv_distinct : (s6Step179EntryGvRow.sign::s6Step179EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179EntryGv_owned : (s6Step179EntryGvRow.sign::s6Step179EntryGvRow.payload).toFinset⊆s6Step179EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179EntryGv_reserved : s6Step179EntryGvBefore.reserve s6Step179EntryGvFresh.toFinset=some s6Step179EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179EntryGvFresh,arenaWires]
  · norm_num [s6Step179EntryGvBefore,s6Step179EntryGAfter,s6Step179EntryGvFresh,arenaWires]
  · simp only [s6Step179EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step179EntryGv_checked : planRowResizeLog s6Step179EntryGvBefore s6Step179EntryGvRow 103 s6Step179EntryGvFresh=
    some (s6Step179EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩,growRow 775 s6Step179EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step179EntryGvBefore s6Step179EntryGvAfter s6Step179EntryGvRow 103 s6Step179EntryGvFresh
    s6Step179EntryGv_distinct s6Step179EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step179EntryGvRow.payload++s6Step179EntryGvFresh) s6Step179EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step179EntryBank_rows : planWindowRowsLog s6Step179EntryFBefore [(s6Step179EntryFRow,180),(s6Step179EntryGRow,180),(s6Step179EntryFvRow,103),(s6Step179EntryGvRow,103)] [s6Step179EntryFFresh,s6Step179EntryGFresh,s6Step179EntryFvFresh,s6Step179EntryGvFresh]=
    some (s6Step179EntryGvAfter,[s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut],(growRow 795 s6Step179EntryFFresh ++ (growRow 777 s6Step179EntryGFresh ++ (growRow 776 s6Step179EntryFvFresh ++ (growRow 775 s6Step179EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step179EntryGvAfter [] []=some (s6Step179EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step179EntryGvBefore s6Step179EntryGvAfter s6Step179EntryGvAfter
    s6Step179EntryGvRow s6Step179EntryGvOut 103 s6Step179EntryGvFresh [] [] []
    (growRow 775 s6Step179EntryGvFresh) ([]) s6Step179EntryGv_Incoming s6Step179EntryGv_checked h4 s6Step179EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step179EntryFvBefore s6Step179EntryFvAfter s6Step179EntryGvAfter
    s6Step179EntryFvRow s6Step179EntryFvOut 103 s6Step179EntryFvFresh [(s6Step179EntryGvRow,103)] [s6Step179EntryGvFresh] [s6Step179EntryGvOut]
    (growRow 776 s6Step179EntryFvFresh) ((growRow 775 s6Step179EntryGvFresh ++ [])) s6Step179EntryFv_Incoming s6Step179EntryFv_checked h3 s6Step179EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step179EntryGBefore s6Step179EntryGAfter s6Step179EntryGvAfter
    s6Step179EntryGRow s6Step179EntryGOut 180 s6Step179EntryGFresh [(s6Step179EntryFvRow,103),(s6Step179EntryGvRow,103)] [s6Step179EntryFvFresh,s6Step179EntryGvFresh] [s6Step179EntryFvOut,s6Step179EntryGvOut]
    (growRow 777 s6Step179EntryGFresh) ((growRow 776 s6Step179EntryFvFresh ++ (growRow 775 s6Step179EntryGvFresh ++ []))) s6Step179EntryG_Incoming s6Step179EntryG_checked h2 s6Step179EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step179EntryFBefore s6Step179EntryFAfter s6Step179EntryGvAfter
    s6Step179EntryFRow s6Step179EntryFOut 180 s6Step179EntryFFresh [(s6Step179EntryGRow,180),(s6Step179EntryFvRow,103),(s6Step179EntryGvRow,103)] [s6Step179EntryGFresh,s6Step179EntryFvFresh,s6Step179EntryGvFresh] [s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut]
    (growRow 795 s6Step179EntryFFresh) ((growRow 777 s6Step179EntryGFresh ++ (growRow 776 s6Step179EntryFvFresh ++ (growRow 775 s6Step179EntryGvFresh ++ [])))) s6Step179EntryF_Incoming s6Step179EntryF_checked h1 s6Step179EntryF_Outgoing
  exact h0

private theorem s6Step179EntryBank_checked : compileHmrBankResizeLog .entry s6Step179EntryFBefore ⟨s6Step179EntryFRow,s6Step179EntryGRow,s6Step179EntryFvRow,s6Step179EntryGvRow⟩ ⟨180,180,103,103⟩ [s6Step179EntryFFresh,s6Step179EntryGFresh,s6Step179EntryFvFresh,s6Step179EntryGvFresh]=
    some (s6Step179EntryGvAfter,⟨s6Step179EntryFOut,s6Step179EntryGOut,s6Step179EntryFvOut,s6Step179EntryGvOut⟩,(growRow 795 s6Step179EntryFFresh ++ (growRow 777 s6Step179EntryGFresh ++ (growRow 776 s6Step179EntryFvFresh ++ (growRow 775 s6Step179EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step179EntryBank_rows]
  rfl

private def s6Step179ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179ExitFBefore : Arena := s6Step179ExitGAfter

private def s6Step179ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 865],795⟩

private def s6Step179ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩

private def s6Step179ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 876],777⟩

private def s6Step179ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩

private theorem s6Step179ExitBank_incomingDistinct : ([s6Step179ExitGRow,s6Step179ExitFRow,s6Step179ExitFvRow,s6Step179ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179ExitF_Incoming : rowsOwned s6Step179ExitFBefore [s6Step179ExitFRow,s6Step179ExitFvRow,s6Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179ExitGRow,s6Step179ExitFRow,s6Step179ExitFvRow,s6Step179ExitGvRow] 1 s6Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179ExitBank_outgoingOwned : rowsOwned s6Step179ExitGvAfter [s6Step179ExitGOut,s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step179ExitGvAfter (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179ExitF_Outgoing : rowsOwned s6Step179ExitGvAfter [s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut] :=
  hmrRows_owned_drop s6Step179ExitGvAfter [s6Step179ExitGOut,s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut] 1 s6Step179ExitBank_outgoingOwned

private theorem s6Step179ExitF_distinct : (s6Step179ExitFRow.sign::s6Step179ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179ExitF_owned : (s6Step179ExitFRow.sign::s6Step179ExitFRow.payload).toFinset⊆s6Step179ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179ExitF_retired : s6Step179ExitFBefore.retireSet s6Step179ExitFExtra.toFinset=s6Step179ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step179ExitFBefore s6Step179ExitFAfter s6Step179ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step179ExitFBefore s6Step179ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step179ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step179ExitF_checked : planRowResizeLog s6Step179ExitFBefore s6Step179ExitFRow 179 []=
    some (s6Step179ExitFAfter,s6Step179ExitFOut,shrinkRow 795 s6Step179ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step179ExitFBefore s6Step179ExitFRow 179 s6Step179ExitF_distinct s6Step179ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step179ExitFRow.payload.take 179) s6Step179ExitFRow.sign=s6Step179ExitFOut := by decide +kernel
  have hi : s6Step179ExitFRow.payload.drop 179=s6Step179ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step179ExitF_retired] at result
  exact result

private def s6Step179ExitFvAfter : Arena := s6Step179ExitFAfter

private def s6Step179ExitFvBefore : Arena := s6Step179ExitFAfter

private theorem s6Step179ExitFv_Incoming : rowsOwned s6Step179ExitFvBefore [s6Step179ExitFvRow,s6Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179ExitGRow,s6Step179ExitFRow,s6Step179ExitFvRow,s6Step179ExitGvRow] 2 s6Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179ExitFvBefore (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179ExitFv_Outgoing : rowsOwned s6Step179ExitGvAfter [s6Step179ExitFvOut,s6Step179ExitGvOut] :=
  hmrRows_owned_drop s6Step179ExitGvAfter [s6Step179ExitGOut,s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut] 2 s6Step179ExitBank_outgoingOwned

private theorem s6Step179ExitFv_distinct : (s6Step179ExitFvRow.sign::s6Step179ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179ExitFv_owned : (s6Step179ExitFvRow.sign::s6Step179ExitFvRow.payload).toFinset⊆s6Step179ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179ExitFvBefore (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179ExitFv_reserved : s6Step179ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step179ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step179ExitFv_checked : planRowResizeLog s6Step179ExitFvBefore s6Step179ExitFvRow 104 []=
    some (s6Step179ExitFvAfter,s6Step179ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step179ExitFvBefore s6Step179ExitFvAfter s6Step179ExitFvRow 104 []
    s6Step179ExitFv_distinct s6Step179ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step179ExitFvRow.payload++[]) s6Step179ExitFvRow.sign=s6Step179ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step179ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step179ExitG_Incoming : rowsOwned s6Step179ExitGBefore [s6Step179ExitGRow,s6Step179ExitFRow,s6Step179ExitFvRow,s6Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179ExitGRow,s6Step179ExitFRow,s6Step179ExitFvRow,s6Step179ExitGvRow] 0 s6Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step179ExitG_Outgoing : rowsOwned s6Step179ExitGvAfter [s6Step179ExitGOut,s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut] :=
  hmrRows_owned_drop s6Step179ExitGvAfter [s6Step179ExitGOut,s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut] 0 s6Step179ExitBank_outgoingOwned

private theorem s6Step179ExitG_distinct : (s6Step179ExitGRow.sign::s6Step179ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179ExitG_owned : (s6Step179ExitGRow.sign::s6Step179ExitGRow.payload).toFinset⊆s6Step179ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179ExitG_retired : s6Step179ExitGBefore.retireSet s6Step179ExitGExtra.toFinset=s6Step179ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step179ExitGBefore s6Step179ExitGAfter s6Step179ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step179ExitGBefore s6Step179ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step179ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step179ExitG_checked : planRowResizeLog s6Step179ExitGBefore s6Step179ExitGRow 180 []=
    some (s6Step179ExitGAfter,s6Step179ExitGOut,shrinkRow 777 s6Step179ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step179ExitGBefore s6Step179ExitGRow 180 s6Step179ExitG_distinct s6Step179ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step179ExitGRow.payload.take 180) s6Step179ExitGRow.sign=s6Step179ExitGOut := by decide +kernel
  have hi : s6Step179ExitGRow.payload.drop 180=s6Step179ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step179ExitG_retired] at result
  exact result

private def s6Step179ExitGvBefore : Arena := s6Step179ExitFAfter

private theorem s6Step179ExitGv_Incoming : rowsOwned s6Step179ExitGvBefore [s6Step179ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179ExitGRow,s6Step179ExitFRow,s6Step179ExitFvRow,s6Step179ExitGvRow] 3 s6Step179ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179ExitGvBefore (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179ExitGv_Outgoing : rowsOwned s6Step179ExitGvAfter [s6Step179ExitGvOut] :=
  hmrRows_owned_drop s6Step179ExitGvAfter [s6Step179ExitGOut,s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut] 3 s6Step179ExitBank_outgoingOwned

private theorem s6Step179ExitGv_distinct : (s6Step179ExitGvRow.sign::s6Step179ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179ExitGv_owned : (s6Step179ExitGvRow.sign::s6Step179ExitGvRow.payload).toFinset⊆s6Step179ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179ExitGvBefore (fun q => ([(0,435),(436,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,876),(877,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179ExitGv_reserved : s6Step179ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step179ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step179ExitGv_checked : planRowResizeLog s6Step179ExitGvBefore s6Step179ExitGvRow 104 []=
    some (s6Step179ExitGvAfter,s6Step179ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step179ExitGvBefore s6Step179ExitGvAfter s6Step179ExitGvRow 104 []
    s6Step179ExitGv_distinct s6Step179ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step179ExitGvRow.payload++[]) s6Step179ExitGvRow.sign=s6Step179ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step179ExitBank_rows : planWindowRowsLog s6Step179ExitGBefore [(s6Step179ExitGRow,180),(s6Step179ExitFRow,179),(s6Step179ExitFvRow,104),(s6Step179ExitGvRow,104)] [[],[],[],[]]=
    some (s6Step179ExitGvAfter,[s6Step179ExitGOut,s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut],(shrinkRow 777 s6Step179ExitGExtra ++ (shrinkRow 795 s6Step179ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step179ExitGvAfter [] []=some (s6Step179ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step179ExitGvBefore s6Step179ExitGvAfter s6Step179ExitGvAfter
    s6Step179ExitGvRow s6Step179ExitGvOut 104 [] [] [] []
    (growRow 775 []) ([]) s6Step179ExitGv_Incoming s6Step179ExitGv_checked h4 s6Step179ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step179ExitFvBefore s6Step179ExitFvAfter s6Step179ExitGvAfter
    s6Step179ExitFvRow s6Step179ExitFvOut 104 [] [(s6Step179ExitGvRow,104)] [[]] [s6Step179ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step179ExitFv_Incoming s6Step179ExitFv_checked h3 s6Step179ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step179ExitFBefore s6Step179ExitFAfter s6Step179ExitGvAfter
    s6Step179ExitFRow s6Step179ExitFOut 179 [] [(s6Step179ExitFvRow,104),(s6Step179ExitGvRow,104)] [[],[]] [s6Step179ExitFvOut,s6Step179ExitGvOut]
    (shrinkRow 795 s6Step179ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step179ExitF_Incoming s6Step179ExitF_checked h2 s6Step179ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step179ExitGBefore s6Step179ExitGAfter s6Step179ExitGvAfter
    s6Step179ExitGRow s6Step179ExitGOut 180 [] [(s6Step179ExitFRow,179),(s6Step179ExitFvRow,104),(s6Step179ExitGvRow,104)] [[],[],[]] [s6Step179ExitFOut,s6Step179ExitFvOut,s6Step179ExitGvOut]
    (shrinkRow 777 s6Step179ExitGExtra) ((shrinkRow 795 s6Step179ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step179ExitG_Incoming s6Step179ExitG_checked h1 s6Step179ExitG_Outgoing
  exact h0

private theorem s6Step179ExitBank_checked : compileHmrBankResizeLog .exit s6Step179ExitGBefore ⟨s6Step179ExitFRow,s6Step179ExitGRow,s6Step179ExitFvRow,s6Step179ExitGvRow⟩ ⟨179,180,104,104⟩ [[],[],[],[]]=
    some (s6Step179ExitGvAfter,⟨s6Step179ExitFOut,s6Step179ExitGOut,s6Step179ExitFvOut,s6Step179ExitGvOut⟩,(shrinkRow 777 s6Step179ExitGExtra ++ (shrinkRow 795 s6Step179ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step179ExitBank_rows]
  rfl

private theorem s6Step179Add0_apart : Disjoint s6Step179Add0Arena.live s6Step179Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step179Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179Add0_card : s6Step179Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step179Add0_borrowed : s6Step179Add0Arena.checkBorrow (hmrHybridCount s6Step179Add0Arena s6Step179Add0B.length) s6Step179Add0Work=some s6Step179Add0During := by
  have len : s6Step179Add0Work.length=hmrHybridCount s6Step179Add0Arena s6Step179Add0B.length := by
    rw [hmrHybridCount,s6Step179Add0_card]
    decide +kernel
  have nd : s6Step179Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step179Add0Arena s6Step179Add0During s6Step179Add0Work.toFinset s6Step179Add0_bounded s6Step179Add0_apart rfl

private theorem s6Step179Add0_distinct : (830::814::907::(s6Step179Add0A++s6Step179Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179Add0_owned : (830::814::907::(s6Step179Add0A++s6Step179Add0B)).toFinset⊆s6Step179Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step179Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179Add0_checked : compileHmrHybridCinLog s6Step179Add0Arena 814 830 907 s6Step179Add0A s6Step179Add0B s6Step179Add0Work=some s6Step179Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step179Add0Arena s6Step179Add0During 814 830 907 s6Step179Add0A s6Step179Add0B s6Step179Add0Work
    (by decide +kernel) (by decide +kernel) s6Step179Add0_distinct
    (fun q hq => s6Step179Add0_owned (List.mem_toFinset.mpr hq)) s6Step179Add0_borrowed

private theorem s6Step179Add1_apart : Disjoint s6Step179Add1Arena.live s6Step179Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step179Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179Add1_card : s6Step179Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step179Add1_borrowed : s6Step179Add1Arena.checkBorrow (hmrHybridCount s6Step179Add1Arena s6Step179Add1B.length) s6Step179Add1Work=some s6Step179Add1During := by
  have len : s6Step179Add1Work.length=hmrHybridCount s6Step179Add1Arena s6Step179Add1B.length := by
    rw [hmrHybridCount,s6Step179Add1_card]
    decide +kernel
  have nd : s6Step179Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step179Add1Arena s6Step179Add1During s6Step179Add1Work.toFinset s6Step179Add1_bounded s6Step179Add1_apart rfl

private theorem s6Step179Add1_distinct : (830::814::907::(s6Step179Add1A++s6Step179Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179Add1_owned : (830::814::907::(s6Step179Add1A++s6Step179Add1B)).toFinset⊆s6Step179Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step179Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179Add1_checked : compileHmrHybridCinLog s6Step179Add1Arena 814 830 907 s6Step179Add1A s6Step179Add1B s6Step179Add1Work=some s6Step179Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step179Add1Arena s6Step179Add1During 814 830 907 s6Step179Add1A s6Step179Add1B s6Step179Add1Work
    (by decide +kernel) (by decide +kernel) s6Step179Add1_distinct
    (fun q hq => s6Step179Add1_owned (List.mem_toFinset.mpr hq)) s6Step179Add1_borrowed

private theorem s6Step179F4_apart : Disjoint (s6Step179Add0A++s6Step179Add0B).toFinset (s6Step179Add1A++s6Step179Add1B).toFinset := by
  have nd : ((s6Step179Add0A++s6Step179Add0B)++(s6Step179Add1A++s6Step179Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step179F4_carry : s6Step179F4FlagArena.checkBorrow 1 [907]=some s6Step179Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step179F4FlagArena,s6Step179HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step179F4FlagArena,s6Step179HeadFvAfter,s6Step179Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step179F4_distinct : (803::814::830::907::((s6Step179Add0A++s6Step179Add1A)++(s6Step179Add0B++s6Step179Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179F4_flag : s6Step179HeadFvAfter.checkBorrow 1 [830]=some s6Step179F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step179HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step179F4_owned : (803::814::((s6Step179Add0A++s6Step179Add1A)++(s6Step179Add0B++s6Step179Add1B))).toFinset⊆s6Step179HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step179HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step179F4_checked : compileHmrHybridF4Log s6Step179HeadFvAfter 803 814 s6Step179Add0A s6Step179Add0B s6Step179Add1A s6Step179Add1B [830] [907] s6Step179Add0Work s6Step179Add1Work=some s6Step179F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step179HeadFvAfter s6Step179F4FlagArena s6Step179Add0Arena s6Step179Add0During s6Step179Add1During 803 814
    s6Step179Add0A s6Step179Add0B s6Step179Add1A s6Step179Add1B [830] [907] s6Step179Add0Work s6Step179Add1Work
    (fun q hq => s6Step179F4_owned (List.mem_toFinset.mpr hq)) s6Step179F4_flag s6Step179F4_carry
    s6Step179F4_distinct s6Step179F4_apart s6Step179Add0_checked s6Step179Add1_checked

private theorem s6Step179Front_branch : s6Step179FrontSigmaArena.checkBorrow 1 [814]=some s6Step179HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step179FrontSigmaArena,s6Step179EntryGvAfter,s6Step179EntryGAfter,arenaWires]
  · change s6Step179HeadGBefore.live=(s6Step179EntryGvAfter.live∪{803})∪{814}
    apply hmrArena_union_pair_of_filter_check s6Step179EntryGvAfter s6Step179HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 803 814 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step179Front_entry : HmrFrontEntryValid s6Step179EntryFBefore s6Step179FrontBank 180 103 ⟨179,180,104,104⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step179FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step179EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step179EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,803),(805,808),(813,814),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,880),(881,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step179FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step179Front_sigma : s6Step179EntryGvAfter.checkBorrow 1 [803]=some s6Step179FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step179EntryGvAfter,s6Step179EntryGAfter,arenaWires]
  · rfl

private def s6Step179HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179HeadFBefore : Arena := s6Step179HeadGAfter

private def s6Step179HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435],795⟩

private def s6Step179HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857],776⟩

private def s6Step179HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880],777⟩

private def s6Step179HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922],775⟩

private theorem s6Step179HeadBank_incomingDistinct : ([s6Step179HeadGRow,s6Step179HeadFRow,s6Step179HeadGvRow,s6Step179HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179HeadF_Incoming : rowsOwned s6Step179HeadFBefore [s6Step179HeadFRow,s6Step179HeadGvRow,s6Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179HeadGRow,s6Step179HeadFRow,s6Step179HeadGvRow,s6Step179HeadFvRow] 1 s6Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179HeadBank_outgoingOwned : rowsOwned s6Step179HeadFvAfter [s6Step179HeadGOut,s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step179HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step179HeadF_Outgoing : rowsOwned s6Step179HeadFvAfter [s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut] :=
  hmrRows_owned_drop s6Step179HeadFvAfter [s6Step179HeadGOut,s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut] 1 s6Step179HeadBank_outgoingOwned

private theorem s6Step179HeadF_distinct : (s6Step179HeadFRow.sign::s6Step179HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179HeadF_owned : (s6Step179HeadFRow.sign::s6Step179HeadFRow.payload).toFinset⊆s6Step179HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179HeadF_reserved : s6Step179HeadFBefore.reserve s6Step179HeadFFresh.toFinset=some s6Step179HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179HeadFFresh,arenaWires]
  · norm_num [s6Step179HeadFBefore,s6Step179HeadGAfter,s6Step179HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step179HeadFBefore s6Step179HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step179HeadFFresh rfl rfl
    · norm_num [s6Step179HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step179HeadF_checked : planRowResizeLog s6Step179HeadFBefore s6Step179HeadFRow 181 s6Step179HeadFFresh=
    some (s6Step179HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 865],795⟩,growRow 795 s6Step179HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step179HeadFBefore s6Step179HeadFAfter s6Step179HeadFRow 181 s6Step179HeadFFresh
    s6Step179HeadF_distinct s6Step179HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179HeadF_reserved
  have rowEq : WindowRow.mk (s6Step179HeadFRow.payload++s6Step179HeadFFresh) s6Step179HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 865],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step179HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step179HeadFvBefore : Arena := s6Step179HeadGvAfter

private theorem s6Step179HeadFv_Incoming : rowsOwned s6Step179HeadFvBefore [s6Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179HeadGRow,s6Step179HeadFRow,s6Step179HeadGvRow,s6Step179HeadFvRow] 3 s6Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179HeadFv_Outgoing : rowsOwned s6Step179HeadFvAfter [s6Step179HeadFvOut] :=
  hmrRows_owned_drop s6Step179HeadFvAfter [s6Step179HeadGOut,s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut] 3 s6Step179HeadBank_outgoingOwned

private theorem s6Step179HeadFv_distinct : (s6Step179HeadFvRow.sign::s6Step179HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179HeadFv_owned : (s6Step179HeadFvRow.sign::s6Step179HeadFvRow.payload).toFinset⊆s6Step179HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179HeadFv_reserved : s6Step179HeadFvBefore.reserve s6Step179HeadFvFresh.toFinset=some s6Step179HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179HeadFvFresh,arenaWires]
  · norm_num [s6Step179HeadFvBefore,s6Step179HeadGvAfter,s6Step179HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step179HeadFvBefore s6Step179HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step179HeadFvFresh rfl rfl
    · norm_num [s6Step179HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step179HeadFv_checked : planRowResizeLog s6Step179HeadFvBefore s6Step179HeadFvRow 104 s6Step179HeadFvFresh=
    some (s6Step179HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩,growRow 776 s6Step179HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step179HeadFvBefore s6Step179HeadFvAfter s6Step179HeadFvRow 104 s6Step179HeadFvFresh
    s6Step179HeadFv_distinct s6Step179HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step179HeadFvRow.payload++s6Step179HeadFvFresh) s6Step179HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step179HeadG_Incoming : rowsOwned s6Step179HeadGBefore [s6Step179HeadGRow,s6Step179HeadFRow,s6Step179HeadGvRow,s6Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179HeadGRow,s6Step179HeadFRow,s6Step179HeadGvRow,s6Step179HeadFvRow] 0 s6Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179HeadG_Outgoing : rowsOwned s6Step179HeadFvAfter [s6Step179HeadGOut,s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut] :=
  hmrRows_owned_drop s6Step179HeadFvAfter [s6Step179HeadGOut,s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut] 0 s6Step179HeadBank_outgoingOwned

private theorem s6Step179HeadG_distinct : (s6Step179HeadGRow.sign::s6Step179HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179HeadG_owned : (s6Step179HeadGRow.sign::s6Step179HeadGRow.payload).toFinset⊆s6Step179HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179HeadG_reserved : s6Step179HeadGBefore.reserve s6Step179HeadGFresh.toFinset=some s6Step179HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179HeadGFresh,arenaWires]
  · norm_num [s6Step179HeadGBefore,s6Step179HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step179HeadGBefore s6Step179HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,876),(877,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,865),(866,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step179HeadGFresh rfl rfl
    · norm_num [s6Step179HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step179HeadG_checked : planRowResizeLog s6Step179HeadGBefore s6Step179HeadGRow 181 s6Step179HeadGFresh=
    some (s6Step179HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 876],777⟩,growRow 777 s6Step179HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step179HeadGBefore s6Step179HeadGAfter s6Step179HeadGRow 181 s6Step179HeadGFresh
    s6Step179HeadG_distinct s6Step179HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179HeadG_reserved
  have rowEq : WindowRow.mk (s6Step179HeadGRow.payload++s6Step179HeadGFresh) s6Step179HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 880, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step179HeadGvBefore : Arena := s6Step179HeadFAfter

private theorem s6Step179HeadGv_Incoming : rowsOwned s6Step179HeadGvBefore [s6Step179HeadGvRow,s6Step179HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step179HeadGRow,s6Step179HeadFRow,s6Step179HeadGvRow,s6Step179HeadFvRow] 2 s6Step179HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step179HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step179HeadGv_Outgoing : rowsOwned s6Step179HeadFvAfter [s6Step179HeadGvOut,s6Step179HeadFvOut] :=
  hmrRows_owned_drop s6Step179HeadFvAfter [s6Step179HeadGOut,s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut] 2 s6Step179HeadBank_outgoingOwned

private theorem s6Step179HeadGv_distinct : (s6Step179HeadGvRow.sign::s6Step179HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step179HeadGv_owned : (s6Step179HeadGvRow.sign::s6Step179HeadGvRow.payload).toFinset⊆s6Step179HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step179HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step179HeadGv_reserved : s6Step179HeadGvBefore.reserve s6Step179HeadGvFresh.toFinset=some s6Step179HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step179HeadGvFresh,arenaWires]
  · norm_num [s6Step179HeadGvBefore,s6Step179HeadFAfter,s6Step179HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step179HeadGvBefore s6Step179HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,868),(869,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,830),(831,832),(833,834),(835,842),(843,849),(850,863),(864,888),(889,890),(892,894),(895,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step179HeadGvFresh rfl rfl
    · norm_num [s6Step179HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step179HeadGv_checked : planRowResizeLog s6Step179HeadGvBefore s6Step179HeadGvRow 104 s6Step179HeadGvFresh=
    some (s6Step179HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩,growRow 775 s6Step179HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step179HeadGvBefore s6Step179HeadGvAfter s6Step179HeadGvRow 104 s6Step179HeadGvFresh
    s6Step179HeadGv_distinct s6Step179HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step179HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step179HeadGvRow.payload++s6Step179HeadGvFresh) s6Step179HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step179HeadBank_rows : planWindowRowsLog s6Step179HeadGBefore [(s6Step179HeadGRow,181),(s6Step179HeadFRow,181),(s6Step179HeadGvRow,104),(s6Step179HeadFvRow,104)] [s6Step179HeadGFresh,s6Step179HeadFFresh,s6Step179HeadGvFresh,s6Step179HeadFvFresh]=
    some (s6Step179HeadFvAfter,[s6Step179HeadGOut,s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut],(growRow 777 s6Step179HeadGFresh ++ (growRow 795 s6Step179HeadFFresh ++ (growRow 775 s6Step179HeadGvFresh ++ (growRow 776 s6Step179HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step179HeadFvAfter [] []=some (s6Step179HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step179HeadFvBefore s6Step179HeadFvAfter s6Step179HeadFvAfter
    s6Step179HeadFvRow s6Step179HeadFvOut 104 s6Step179HeadFvFresh [] [] []
    (growRow 776 s6Step179HeadFvFresh) ([]) s6Step179HeadFv_Incoming s6Step179HeadFv_checked h4 s6Step179HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step179HeadGvBefore s6Step179HeadGvAfter s6Step179HeadFvAfter
    s6Step179HeadGvRow s6Step179HeadGvOut 104 s6Step179HeadGvFresh [(s6Step179HeadFvRow,104)] [s6Step179HeadFvFresh] [s6Step179HeadFvOut]
    (growRow 775 s6Step179HeadGvFresh) ((growRow 776 s6Step179HeadFvFresh ++ [])) s6Step179HeadGv_Incoming s6Step179HeadGv_checked h3 s6Step179HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step179HeadFBefore s6Step179HeadFAfter s6Step179HeadFvAfter
    s6Step179HeadFRow s6Step179HeadFOut 181 s6Step179HeadFFresh [(s6Step179HeadGvRow,104),(s6Step179HeadFvRow,104)] [s6Step179HeadGvFresh,s6Step179HeadFvFresh] [s6Step179HeadGvOut,s6Step179HeadFvOut]
    (growRow 795 s6Step179HeadFFresh) ((growRow 775 s6Step179HeadGvFresh ++ (growRow 776 s6Step179HeadFvFresh ++ []))) s6Step179HeadF_Incoming s6Step179HeadF_checked h2 s6Step179HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step179HeadGBefore s6Step179HeadGAfter s6Step179HeadFvAfter
    s6Step179HeadGRow s6Step179HeadGOut 181 s6Step179HeadGFresh [(s6Step179HeadFRow,181),(s6Step179HeadGvRow,104),(s6Step179HeadFvRow,104)] [s6Step179HeadFFresh,s6Step179HeadGvFresh,s6Step179HeadFvFresh] [s6Step179HeadFOut,s6Step179HeadGvOut,s6Step179HeadFvOut]
    (growRow 777 s6Step179HeadGFresh) ((growRow 795 s6Step179HeadFFresh ++ (growRow 775 s6Step179HeadGvFresh ++ (growRow 776 s6Step179HeadFvFresh ++ [])))) s6Step179HeadG_Incoming s6Step179HeadG_checked h1 s6Step179HeadG_Outgoing
  exact h0

private theorem s6Step179HeadBank_checked : compileHmrBankResizeLog .headroom s6Step179HeadGBefore ⟨s6Step179HeadFRow,s6Step179HeadGRow,s6Step179HeadFvRow,s6Step179HeadGvRow⟩ ⟨181,181,104,104⟩ [s6Step179HeadGFresh,s6Step179HeadFFresh,s6Step179HeadGvFresh,s6Step179HeadFvFresh]=
    some (s6Step179HeadFvAfter,⟨s6Step179HeadFOut,s6Step179HeadGOut,s6Step179HeadFvOut,s6Step179HeadGvOut⟩,(growRow 777 s6Step179HeadGFresh ++ (growRow 795 s6Step179HeadFFresh ++ (growRow 775 s6Step179HeadGvFresh ++ (growRow 776 s6Step179HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step179HeadBank_rows]
  rfl

private theorem s6Step179Front_checked : compileHmrSourceFrontLog s6Step179EntryFBefore s6Step179FrontBank 180 103 ⟨179,180,104,104⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step179FrontLog=some s6Step179FrontPlan := by
  have pairEq : s6Step179FrontPair=⟨s6Step179HeadFRow,s6Step179HeadGRow,s6Step179HeadFvRow,s6Step179HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step179FrontHead=⟨s6Step179ExitFRow,s6Step179ExitGRow,s6Step179ExitFvRow,s6Step179ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step179Add0A=s6Step179FrontHead.f.wires := by decide +kernel
  have gEq : s6Step179Add0B=s6Step179FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step179Add1A=s6Step179FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step179Add1B=s6Step179FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step179EntryFBefore s6Step179FrontBank 180 103 ⟨179,180,104,104⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step179FrontLog s6Step179FrontPlan
  · exact s6Step179Front_entry
  · exact s6Step179EntryBank_checked
  · exact s6Step179Front_sigma
  · rfl
  · exact s6Step179Front_branch
  · rfl
  · simpa only [s6Step179FrontPlan,pairEq] using s6Step179HeadBank_checked
  · simpa only [s6Step179FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step179F4_checked
  · exact s6Step179Counter_checked
  · rfl
  · simpa only [s6Step179FrontPlan,headEq] using s6Step179ExitBank_checked

private theorem s6Step179Complete_explicit_checked : compileHmrEarlyStepLog s6Step179EntryFBefore s6Step179FrontBank 180 103 ⟨179,180,104,104⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step179CompleteLog=some s6Step179CompletePlan := by
  let Q := s6Step179EarlyControlPlan
  have hq := s6Step179EarlyControl_plan_checked
  have fv1 : s6Step179CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step179CompleteOut.fv.payload[2]?.getD s6Step179CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step179CompleteOut.fv.payload[3]?.getD s6Step179CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step179CompleteOut.fv.payload[4]?.getD s6Step179CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step179EntryFBefore s6Step179EarlyControlArena s6Step179FrontBank 180 103 ⟨179,180,104,104⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step179CompleteLog s6Step179FrontPlan Q
    s6Step179Front_checked s6Step179Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step179Complete_owned s6Step179Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step179EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 803 s6Step179CompleteOut.fv.second (s6Step179CompleteOut.fv.payload[2]?.getD s6Step179CompleteOut.fv.sign) (s6Step179CompleteOut.fv.payload[3]?.getD s6Step179CompleteOut.fv.sign) (s6Step179CompleteOut.fv.payload[4]?.getD s6Step179CompleteOut.fv.sign) 814 42 s6Step179EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep179Arena : Arena := s6Step179EntryFBefore
def s6PrivateStep179Bank : WindowBank := s6Step179FrontBank
def s6PrivateStep179Spec : HmrSourceWalkStepLog := ⟨180,103,⟨179,180,104,104⟩,42,.early s6Step179CompleteLog⟩
def s6PrivateStep179Plan : HmrSourceStepPlan := .early s6Step179CompletePlan
theorem s6PrivateStep179_source : s6PrivateStep179Spec=s6ObservedLogs176[3] := rfl
theorem s6PrivateStep179_checked : compileHmrSourceStepLog s6PrivateStep179Arena s6PrivateStep179Bank
    s6PrivateStep179Spec.fgWidth s6PrivateStep179Spec.vWidth s6PrivateStep179Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 179 s6PrivateStep179Spec.need none s6PrivateStep179Spec.log=some s6PrivateStep179Plan := by
  change compileHmrSourceStepLog s6Step179EntryFBefore s6Step179FrontBank 180 103 ⟨179,180,104,104⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 179 42 none (.early s6Step179CompleteLog)=some (.early s6Step179CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 179<498)]
  rw [s6Step179Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
