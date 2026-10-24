import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep187
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

private def s6Step189CompleteMoves : List (Wire × Wire) := [(854,174)]

private def s6Step189EarlyControlLog : HmrEarlyControlLog := ⟨[854, 880, 838, 863, 890],[853],[907],[891, 903, 791, 825, 810, 923],[]⟩

private def s6Step189FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [839]],[[890], [863], [880], [838]],[[], [], [], []]⟩,[821],[860],[853],[907],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903]⟩

private def s6Step189CompleteLog : HmrEarlyStepLog := ⟨s6Step189FrontLog,s6Step189CompleteMoves,s6Step189EarlyControlLog⟩

private def s6Step189ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step189ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step189ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173],777⟩

private def s6Step189ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private def s6Step189FrontOut : WindowBank := ⟨s6Step189ExitFOut,s6Step189ExitGOut,s6Step189ExitFvOut,s6Step189ExitGvOut⟩

private def s6Step189CompleteOut : WindowBank := s6Step189FrontOut.repacked s6Step189CompleteMoves

private def s6Step189EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step189EarlyControlPositiveArena,[853],s6Step189EarlyControlEqualityArena,[907],⟨⟨821,false⟩,[⟨⟨853,false⟩,907⟩]⟩⟩

private def s6Step189EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,854⟩,⟨⟨772,false⟩,880⟩,⟨⟨771,false⟩,838⟩,⟨⟨770,false⟩,863⟩,⟨⟨769,false⟩,890⟩]⟩

private def s6Step189EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step189EarlyControlZeroArena,s6Step189EarlyControlZeroPlan,s6Step189EarlyControlClassPlan,s6Step189EarlyControlFlagArena,s6Step189EarlyControlFittedArena,s6Step189EarlyControlHistoryArena,s6Step189EarlyControlSigmaArena,s6Step189EarlyControlOutputArena,s6Step189EarlyControlLog⟩

private def s6Step189CounterWork : List Wire := [853, 907, 891, 903]

private theorem s6Step189Counter_bounded : s6Step189CounterWork.toFinset⊆arenaWires := by norm_num [s6Step189CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step189HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189CounterDuring : Arena := ⟨s6Step189HeadFvAfter.live∪s6Step189CounterWork.toFinset,Finset.union_subset s6Step189HeadFvAfter.bounded s6Step189Counter_bounded⟩

private def s6Step189EntryFFresh : List Wire := []

private def s6Step189EntryFvFresh : List Wire := []

private def s6Step189EntryGFresh : List Wire := []

private def s6Step189EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189EntryGvFresh : List Wire := [839]

private def s6Step189ExitFExtra : List Wire := [863]

private def s6Step189ExitFvExtra : List Wire := [838]

private def s6Step189ExitGExtra : List Wire := [174, 890]

private def s6Step189ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189ExitGvExtra : List Wire := [880]

private def s6Step189Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step189Add0_bounded : s6Step189Add0Work.toFinset⊆arenaWires := by
  have h : s6Step189Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step189Add0During : Arena := ⟨s6Step189Add0Arena.live∪s6Step189Add0Work.toFinset,Finset.union_subset s6Step189Add0Arena.bounded s6Step189Add0_bounded⟩

private def s6Step189Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step189Add1_bounded : s6Step189Add1Work.toFinset⊆arenaWires := by
  have h : s6Step189Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step189Add1During : Arena := ⟨s6Step189Add1Arena.live∪s6Step189Add1Work.toFinset,Finset.union_subset s6Step189Add1Arena.bounded s6Step189Add1_bounded⟩

private def s6Step189F4FlagArena : Arena := ⟨s6Step189HeadFvAfter.live∪{853},Finset.union_subset s6Step189HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step189F4Plan : HmrHybridF4Plan := ⟨s6Step189F4FlagArena,[853],s6Step189Add0Arena,[907],s6Step189Add0During,s6Step189Add0Work,s6Step189Add1During,s6Step189Add1Work⟩

private def s6Step189HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 863],795⟩

private def s6Step189HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 838],776⟩

private def s6Step189HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 890],777⟩

private def s6Step189HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 880],775⟩

private def s6Step189FrontHead : WindowBank := ⟨s6Step189HeadFOut,s6Step189HeadGOut,s6Step189HeadFvOut,s6Step189HeadGvOut⟩

private def s6Step189EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step189EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step189EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩

private def s6Step189EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private def s6Step189FrontPair : WindowBank := ⟨s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut⟩

private def s6Step189FrontSigmaArena : Arena := ⟨s6Step189EntryGvAfter.live∪{821},Finset.union_subset s6Step189EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step189HeadFFresh : List Wire := [863]

private def s6Step189HeadFvFresh : List Wire := [838]

private def s6Step189HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189HeadGFresh : List Wire := [890]

private def s6Step189HeadGvFresh : List Wire := [880]

private def s6Step189FrontPlan : HmrSourceFront := ⟨s6Step189EntryGvAfter,s6Step189FrontPair,(growRow 795 s6Step189EntryFFresh ++ (growRow 777 s6Step189EntryGFresh ++ (growRow 776 s6Step189EntryFvFresh ++ (growRow 775 s6Step189EntryGvFresh ++ [])))),s6Step189FrontSigmaArena,[821],s6Step189HeadGBefore,[860],
  s6Step189HeadFvAfter,s6Step189FrontHead,(growRow 777 s6Step189HeadGFresh ++ (growRow 795 s6Step189HeadFFresh ++ (growRow 775 s6Step189HeadGvFresh ++ (growRow 776 s6Step189HeadFvFresh ++ [])))),s6Step189F4Plan,s6Step189CounterDuring,s6Step189CounterWork,s6Step189ExitGvAfter,s6Step189FrontOut,(shrinkRow 777 s6Step189ExitGExtra ++ (shrinkRow 795 s6Step189ExitFExtra ++ (shrinkRow 776 s6Step189ExitFvExtra ++ (shrinkRow 775 s6Step189ExitGvExtra ++ []))))⟩

private def s6Step189CompletePlan : HmrEarlyStepPlan := ⟨s6Step189FrontPlan,s6Step189EarlyControlArena,s6Step189EarlyControlPlan,s6Step189CompleteMoves⟩

private theorem s6Step189Complete_apart : List.Disjoint (s6Step189CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [821, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step189CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[821, 860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step189Complete_owned : (s6Step189CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step189CompleteRelocationMove0Borrowed : Arena := ⟨s6Step189ExitGvAfter.live∪{174},Finset.union_subset s6Step189ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step189CompleteRelocation_move0_owned : 854∈s6Step189ExitGvAfter.live := by norm_num [s6Step189ExitGvAfter,arenaWires]

private theorem s6Step189CompleteRelocation_move0_reserve : s6Step189ExitGvAfter.reserve {174}=some s6Step189CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step189ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step189CompleteRelocation_move0_retire : s6Step189CompleteRelocationMove0Borrowed.retireSet {854}=s6Step189EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step189CompleteRelocationMove0Borrowed s6Step189EarlyControlArena {854}
  change s6Step189EarlyControlArena.live=(s6Step189ExitGvAfter.live∪{174})\{854}
  apply hmrArena_update_of_filter_check s6Step189ExitGvAfter s6Step189EarlyControlArena (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [174] [854] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step189CompleteRelocation_checked : s6Step189ExitGvAfter.checkRepack [(854,174)]=some s6Step189EarlyControlArena := by
  have tail1 : s6Step189EarlyControlArena.checkRepack []=some s6Step189EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step189ExitGvAfter s6Step189CompleteRelocationMove0Borrowed s6Step189EarlyControlArena s6Step189EarlyControlArena 854 174 []
    s6Step189CompleteRelocation_move0_owned s6Step189CompleteRelocation_move0_reserve s6Step189CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step189Complete_repack : s6Step189ExitGvAfter.checkRepack s6Step189CompleteMoves=some s6Step189EarlyControlArena := by
  simpa only [s6Step189CompleteMoves] using s6Step189CompleteRelocation_checked

private theorem s6Step189EarlyControl_branchOwned : ([860] : List Wire).toFinset⊆s6Step189EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EarlyControl_branch : compileHmrBranchRetirement s6Step189EarlyControlSigmaArena 860=some s6Step189EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step189EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step189EarlyControlSigmaArena s6Step189EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [860] rfl rfl
    decide +kernel

private theorem s6Step189EarlyControl_classEqualityBorrow : s6Step189EarlyControlPositiveArena.checkBorrow (([821, 853] : List Wire).length-1) s6Step189EarlyControlLog.classWork=some s6Step189EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step189EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step189EarlyControlEqualityArena,s6Step189EarlyControlPositiveArena,s6Step189EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step189EarlyControl_classEqualityOwned : ([821, 853] : List Wire).toFinset⊆s6Step189EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189EarlyControl_classEquality : compileHmrEqualityLog s6Step189EarlyControlPositiveArena [821, 853] 0 s6Step189EarlyControlLog.classWork=some (s6Step189EarlyControlEqualityArena,s6Step189EarlyControlLog.classWork,s6Step189EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step189EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step189EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step189EarlyControl_classOwned : ([769, 890, 821] : List Wire).toFinset⊆s6Step189EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189EarlyControl_positiveBorrow : s6Step189EarlyControlZeroArena.checkBorrow (1) s6Step189EarlyControlLog.positiveWork=some s6Step189EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step189EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step189EarlyControlPositiveArena,s6Step189EarlyControlZeroArena,s6Step189EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step189EarlyControl_class : compileHmrSourceClassLog s6Step189EarlyControlZeroArena false 769 s6Step189EarlyControlZeroPlan.top 0 821 s6Step189EarlyControlLog.positiveWork s6Step189EarlyControlLog.classWork=some s6Step189EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step189EarlyControlClassPlan s6Step189EarlyControlZeroArena false 769 s6Step189EarlyControlZeroPlan.top 0 821
  constructor
  · decide +kernel
  · exact s6Step189EarlyControl_classOwned
  · exact s6Step189EarlyControl_positiveBorrow
  · exact s6Step189EarlyControl_classEquality

private theorem s6Step189EarlyControl_entryRecordOwned : ([860, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EarlyControl_entrySigmaOwned : ([821, 254] : List Wire).toFinset⊆s6Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EarlyControl_fitBorrow : s6Step189EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step189EarlyControlLog.recordFresh=some s6Step189EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step189EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step189EarlyControlFittedArena,s6Step189EarlyControlFlagArena,s6Step189EarlyControlLog,arenaWires]

private theorem s6Step189EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step189EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189EarlyControl_fit : compileHmrRecordGrowLog s6Step189EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step189EarlyControlLog.recordFresh=some s6Step189EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step189EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step189EarlyControl_fitBorrow

private theorem s6Step189EarlyControl_flagsBorrow : s6Step189EarlyControlEqualityArena.checkBorrow (6) s6Step189EarlyControlLog.flagWork=some s6Step189EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step189EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step189EarlyControlFlagArena,s6Step189EarlyControlEqualityArena,s6Step189EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step189EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s6Step189EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189EarlyControl_flags : compileHmrFlagsLog s6Step189EarlyControlClassPlan.equalityArena s6Step189EarlyControlClassPlan.equality.top 253 252 251 s6Step189EarlyControlLog.flagWork=some s6Step189EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step189EarlyControl_flagsOwned⟩
  · exact s6Step189EarlyControl_flagsBorrow

private theorem s6Step189EarlyControl_historyBorrow : s6Step189EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step189EarlyControlLog.recordFresh=some s6Step189EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step189EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step189EarlyControlArena s6Step189EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step189EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step189EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EarlyControl_history : compileHmrRecordGrowLog s6Step189EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step189EarlyControlLog.recordFresh=some s6Step189EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step189EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step189EarlyControl_historyBorrow

private theorem s6Step189EarlyControl_sigmaOwned : ([254, 821] : List Wire).toFinset⊆s6Step189EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EarlyControl_sigmaReleaseOwned : ([821] : List Wire).toFinset⊆s6Step189EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EarlyControl_sigmaRelease : s6Step189EarlyControlHistoryArena.release {821} (fun _ => false)=some s6Step189EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step189EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step189EarlyControlHistoryArena s6Step189EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [821] rfl rfl
    decide +kernel

private theorem s6Step189EarlyControl_sigma : compileHmrSigmaDropLog s6Step189EarlyControlHistoryArena false 0 0 254 821 []=some s6Step189EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step189EarlyControl_sigmaOwned⟩
  · exact s6Step189EarlyControl_sigmaRelease

private theorem s6Step189EarlyControl_zeroBorrow : s6Step189EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step189EarlyControlLog.zeroWork=some s6Step189EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step189EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step189EarlyControlArena s6Step189EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step189EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step189EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step189EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step189EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step189EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EarlyControl_zero : compileHmrEqualityLog s6Step189EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step189EarlyControlLog.zeroWork=some (s6Step189EarlyControlZeroArena,s6Step189EarlyControlLog.zeroWork,s6Step189EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step189EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step189EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step189EarlyControl_logged : s6Step189EarlyControlPlan.Logged s6Step189EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 860 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step189EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step189EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step189EarlyControl_zero
  · exact s6Step189EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step189EarlyControl_flags
  · exact s6Step189EarlyControl_fit
  · exact s6Step189EarlyControl_history
  · exact s6Step189EarlyControl_sigma
  · exact s6Step189EarlyControl_branch

private theorem s6Step189EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step189EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 860 43 s6Step189EarlyControlLog=some s6Step189EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step189EarlyControlPlan s6Step189EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 860 43 s6Step189EarlyControl_logged

private def s6Step189EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step189EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step189EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩

private def s6Step189EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private def s6Step189FrontBank : WindowBank := ⟨s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow⟩

private def s6Step189Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 863, 795]

private def s6Step189Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 890, 777]

private def s6Step189Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 838, 776]

private def s6Step189Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 880, 775]

private theorem s6Step189Counter_apart : Disjoint s6Step189HeadFvAfter.live s6Step189CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step189HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189Counter_borrowed : s6Step189HeadFvAfter.checkBorrow 4 s6Step189CounterWork=some s6Step189CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step189HeadFvAfter s6Step189CounterDuring s6Step189CounterWork.toFinset s6Step189Counter_bounded s6Step189Counter_apart rfl

private theorem s6Step189Counter_owned : (821::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step189HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step189HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189Counter_checked : compileHmrCounterStepLog s6Step189HeadFvAfter true 821 [774, 773, 772, 771, 770, 769] s6Step189CounterWork=some s6Step189CounterDuring := by
  have owned : ∀q∈821::[774, 773, 772, 771, 770, 769],q∈s6Step189HeadFvAfter.live := fun q hq => s6Step189Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step189Counter_borrowed

private def s6Step189EntryFAfter : Arena := s6Step189EntryFBefore

private theorem s6Step189EntryBank_incomingDistinct : ([s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189EntryF_Incoming : rowsOwned s6Step189EntryFBefore [s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow] 0 s6Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189EntryBank_outgoingOwned : rowsOwned s6Step189EntryGvAfter [s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step189EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189EntryF_Outgoing : rowsOwned s6Step189EntryGvAfter [s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut] :=
  hmrRows_owned_drop s6Step189EntryGvAfter [s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut] 0 s6Step189EntryBank_outgoingOwned

private theorem s6Step189EntryF_distinct : (s6Step189EntryFRow.sign::s6Step189EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189EntryF_owned : (s6Step189EntryFRow.sign::s6Step189EntryFRow.payload).toFinset⊆s6Step189EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EntryF_reserved : s6Step189EntryFBefore.reserve s6Step189EntryFFresh.toFinset=some s6Step189EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189EntryFFresh,arenaWires]
  · norm_num [s6Step189EntryFBefore,s6Step189EntryFFresh,arenaWires]
  · simp only [s6Step189EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step189EntryF_checked : planRowResizeLog s6Step189EntryFBefore s6Step189EntryFRow 175 s6Step189EntryFFresh=
    some (s6Step189EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩,growRow 795 s6Step189EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step189EntryFBefore s6Step189EntryFAfter s6Step189EntryFRow 175 s6Step189EntryFFresh
    s6Step189EntryF_distinct s6Step189EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189EntryF_reserved
  have rowEq : WindowRow.mk (s6Step189EntryFRow.payload++s6Step189EntryFFresh) s6Step189EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step189EntryFvAfter : Arena := s6Step189EntryFBefore

private def s6Step189EntryFvBefore : Arena := s6Step189EntryFBefore

private theorem s6Step189EntryFv_Incoming : rowsOwned s6Step189EntryFvBefore [s6Step189EntryFvRow,s6Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow] 2 s6Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189EntryFv_Outgoing : rowsOwned s6Step189EntryGvAfter [s6Step189EntryFvOut,s6Step189EntryGvOut] :=
  hmrRows_owned_drop s6Step189EntryGvAfter [s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut] 2 s6Step189EntryBank_outgoingOwned

private theorem s6Step189EntryFv_distinct : (s6Step189EntryFvRow.sign::s6Step189EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189EntryFv_owned : (s6Step189EntryFvRow.sign::s6Step189EntryFvRow.payload).toFinset⊆s6Step189EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EntryFv_reserved : s6Step189EntryFvBefore.reserve s6Step189EntryFvFresh.toFinset=some s6Step189EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189EntryFvFresh,arenaWires]
  · norm_num [s6Step189EntryFvBefore,s6Step189EntryFBefore,s6Step189EntryFvFresh,arenaWires]
  · simp only [s6Step189EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step189EntryFv_checked : planRowResizeLog s6Step189EntryFvBefore s6Step189EntryFvRow 109 s6Step189EntryFvFresh=
    some (s6Step189EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩,growRow 776 s6Step189EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step189EntryFvBefore s6Step189EntryFvAfter s6Step189EntryFvRow 109 s6Step189EntryFvFresh
    s6Step189EntryFv_distinct s6Step189EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step189EntryFvRow.payload++s6Step189EntryFvFresh) s6Step189EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step189EntryGAfter : Arena := s6Step189EntryFBefore

private def s6Step189EntryGBefore : Arena := s6Step189EntryFBefore

private theorem s6Step189EntryG_Incoming : rowsOwned s6Step189EntryGBefore [s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow] 1 s6Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189EntryG_Outgoing : rowsOwned s6Step189EntryGvAfter [s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut] :=
  hmrRows_owned_drop s6Step189EntryGvAfter [s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut] 1 s6Step189EntryBank_outgoingOwned

private theorem s6Step189EntryG_distinct : (s6Step189EntryGRow.sign::s6Step189EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189EntryG_owned : (s6Step189EntryGRow.sign::s6Step189EntryGRow.payload).toFinset⊆s6Step189EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EntryG_reserved : s6Step189EntryGBefore.reserve s6Step189EntryGFresh.toFinset=some s6Step189EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189EntryGFresh,arenaWires]
  · norm_num [s6Step189EntryGBefore,s6Step189EntryFBefore,s6Step189EntryGFresh,arenaWires]
  · simp only [s6Step189EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step189EntryG_checked : planRowResizeLog s6Step189EntryGBefore s6Step189EntryGRow 175 s6Step189EntryGFresh=
    some (s6Step189EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩,growRow 777 s6Step189EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step189EntryGBefore s6Step189EntryGAfter s6Step189EntryGRow 175 s6Step189EntryGFresh
    s6Step189EntryG_distinct s6Step189EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189EntryG_reserved
  have rowEq : WindowRow.mk (s6Step189EntryGRow.payload++s6Step189EntryGFresh) s6Step189EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step189EntryGvBefore : Arena := s6Step189EntryFBefore

private theorem s6Step189EntryGv_Incoming : rowsOwned s6Step189EntryGvBefore [s6Step189EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow] 3 s6Step189EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189EntryGv_Outgoing : rowsOwned s6Step189EntryGvAfter [s6Step189EntryGvOut] :=
  hmrRows_owned_drop s6Step189EntryGvAfter [s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut] 3 s6Step189EntryBank_outgoingOwned

private theorem s6Step189EntryGv_distinct : (s6Step189EntryGvRow.sign::s6Step189EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189EntryGv_owned : (s6Step189EntryGvRow.sign::s6Step189EntryGvRow.payload).toFinset⊆s6Step189EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189EntryGv_reserved : s6Step189EntryGvBefore.reserve s6Step189EntryGvFresh.toFinset=some s6Step189EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189EntryGvFresh,arenaWires]
  · norm_num [s6Step189EntryGvBefore,s6Step189EntryFBefore,s6Step189EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step189EntryGvBefore s6Step189EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step189EntryGvFresh rfl rfl
    · norm_num [s6Step189EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step189EntryGv_checked : planRowResizeLog s6Step189EntryGvBefore s6Step189EntryGvRow 109 s6Step189EntryGvFresh=
    some (s6Step189EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩,growRow 775 s6Step189EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step189EntryGvBefore s6Step189EntryGvAfter s6Step189EntryGvRow 109 s6Step189EntryGvFresh
    s6Step189EntryGv_distinct s6Step189EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step189EntryGvRow.payload++s6Step189EntryGvFresh) s6Step189EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step189EntryBank_rows : planWindowRowsLog s6Step189EntryFBefore [(s6Step189EntryFRow,175),(s6Step189EntryGRow,175),(s6Step189EntryFvRow,109),(s6Step189EntryGvRow,109)] [s6Step189EntryFFresh,s6Step189EntryGFresh,s6Step189EntryFvFresh,s6Step189EntryGvFresh]=
    some (s6Step189EntryGvAfter,[s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut],(growRow 795 s6Step189EntryFFresh ++ (growRow 777 s6Step189EntryGFresh ++ (growRow 776 s6Step189EntryFvFresh ++ (growRow 775 s6Step189EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step189EntryGvAfter [] []=some (s6Step189EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step189EntryGvBefore s6Step189EntryGvAfter s6Step189EntryGvAfter
    s6Step189EntryGvRow s6Step189EntryGvOut 109 s6Step189EntryGvFresh [] [] []
    (growRow 775 s6Step189EntryGvFresh) ([]) s6Step189EntryGv_Incoming s6Step189EntryGv_checked h4 s6Step189EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step189EntryFvBefore s6Step189EntryFvAfter s6Step189EntryGvAfter
    s6Step189EntryFvRow s6Step189EntryFvOut 109 s6Step189EntryFvFresh [(s6Step189EntryGvRow,109)] [s6Step189EntryGvFresh] [s6Step189EntryGvOut]
    (growRow 776 s6Step189EntryFvFresh) ((growRow 775 s6Step189EntryGvFresh ++ [])) s6Step189EntryFv_Incoming s6Step189EntryFv_checked h3 s6Step189EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step189EntryGBefore s6Step189EntryGAfter s6Step189EntryGvAfter
    s6Step189EntryGRow s6Step189EntryGOut 175 s6Step189EntryGFresh [(s6Step189EntryFvRow,109),(s6Step189EntryGvRow,109)] [s6Step189EntryFvFresh,s6Step189EntryGvFresh] [s6Step189EntryFvOut,s6Step189EntryGvOut]
    (growRow 777 s6Step189EntryGFresh) ((growRow 776 s6Step189EntryFvFresh ++ (growRow 775 s6Step189EntryGvFresh ++ []))) s6Step189EntryG_Incoming s6Step189EntryG_checked h2 s6Step189EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step189EntryFBefore s6Step189EntryFAfter s6Step189EntryGvAfter
    s6Step189EntryFRow s6Step189EntryFOut 175 s6Step189EntryFFresh [(s6Step189EntryGRow,175),(s6Step189EntryFvRow,109),(s6Step189EntryGvRow,109)] [s6Step189EntryGFresh,s6Step189EntryFvFresh,s6Step189EntryGvFresh] [s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut]
    (growRow 795 s6Step189EntryFFresh) ((growRow 777 s6Step189EntryGFresh ++ (growRow 776 s6Step189EntryFvFresh ++ (growRow 775 s6Step189EntryGvFresh ++ [])))) s6Step189EntryF_Incoming s6Step189EntryF_checked h1 s6Step189EntryF_Outgoing
  exact h0

private theorem s6Step189EntryBank_checked : compileHmrBankResizeLog .entry s6Step189EntryFBefore ⟨s6Step189EntryFRow,s6Step189EntryGRow,s6Step189EntryFvRow,s6Step189EntryGvRow⟩ ⟨175,175,109,109⟩ [s6Step189EntryFFresh,s6Step189EntryGFresh,s6Step189EntryFvFresh,s6Step189EntryGvFresh]=
    some (s6Step189EntryGvAfter,⟨s6Step189EntryFOut,s6Step189EntryGOut,s6Step189EntryFvOut,s6Step189EntryGvOut⟩,(growRow 795 s6Step189EntryFFresh ++ (growRow 777 s6Step189EntryGFresh ++ (growRow 776 s6Step189EntryFvFresh ++ (growRow 775 s6Step189EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step189EntryBank_rows]
  rfl

private def s6Step189ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189ExitFBefore : Arena := s6Step189ExitGAfter

private def s6Step189ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 863],795⟩

private def s6Step189ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 838],776⟩

private def s6Step189ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 890],777⟩

private def s6Step189ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 880],775⟩

private theorem s6Step189ExitBank_incomingDistinct : ([s6Step189ExitGRow,s6Step189ExitFRow,s6Step189ExitFvRow,s6Step189ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189ExitF_Incoming : rowsOwned s6Step189ExitFBefore [s6Step189ExitFRow,s6Step189ExitFvRow,s6Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189ExitGRow,s6Step189ExitFRow,s6Step189ExitFvRow,s6Step189ExitGvRow] 1 s6Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189ExitFBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step189ExitBank_outgoingOwned : rowsOwned s6Step189ExitGvAfter [s6Step189ExitGOut,s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step189ExitGvAfter (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189ExitF_Outgoing : rowsOwned s6Step189ExitGvAfter [s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut] :=
  hmrRows_owned_drop s6Step189ExitGvAfter [s6Step189ExitGOut,s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut] 1 s6Step189ExitBank_outgoingOwned

private theorem s6Step189ExitF_distinct : (s6Step189ExitFRow.sign::s6Step189ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189ExitF_owned : (s6Step189ExitFRow.sign::s6Step189ExitFRow.payload).toFinset⊆s6Step189ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189ExitFBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189ExitF_retired : s6Step189ExitFBefore.retireSet s6Step189ExitFExtra.toFinset=s6Step189ExitFAfter := by
  unfold Arena.retireSet s6Step189ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step189ExitFBefore,s6Step189ExitGAfter,s6Step189ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step189ExitF_checked : planRowResizeLog s6Step189ExitFBefore s6Step189ExitFRow 175 []=
    some (s6Step189ExitFAfter,s6Step189ExitFOut,shrinkRow 795 s6Step189ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step189ExitFBefore s6Step189ExitFRow 175 s6Step189ExitF_distinct s6Step189ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step189ExitFRow.payload.take 175) s6Step189ExitFRow.sign=s6Step189ExitFOut := by decide +kernel
  have hi : s6Step189ExitFRow.payload.drop 175=s6Step189ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step189ExitF_retired] at result
  exact result

private def s6Step189ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189ExitFvBefore : Arena := s6Step189ExitFAfter

private theorem s6Step189ExitFv_Incoming : rowsOwned s6Step189ExitFvBefore [s6Step189ExitFvRow,s6Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189ExitGRow,s6Step189ExitFRow,s6Step189ExitFvRow,s6Step189ExitGvRow] 2 s6Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189ExitFvBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step189ExitFv_Outgoing : rowsOwned s6Step189ExitGvAfter [s6Step189ExitFvOut,s6Step189ExitGvOut] :=
  hmrRows_owned_drop s6Step189ExitGvAfter [s6Step189ExitGOut,s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut] 2 s6Step189ExitBank_outgoingOwned

private theorem s6Step189ExitFv_distinct : (s6Step189ExitFvRow.sign::s6Step189ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189ExitFv_owned : (s6Step189ExitFvRow.sign::s6Step189ExitFvRow.payload).toFinset⊆s6Step189ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189ExitFvBefore (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189ExitFv_retired : s6Step189ExitFvBefore.retireSet s6Step189ExitFvExtra.toFinset=s6Step189ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step189ExitFvBefore s6Step189ExitFvAfter s6Step189ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step189ExitFvBefore s6Step189ExitFvAfter (fun q => (0≤q ∧ q<174) ∨ (175≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step189ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step189ExitFv_checked : planRowResizeLog s6Step189ExitFvBefore s6Step189ExitFvRow 109 []=
    some (s6Step189ExitFvAfter,s6Step189ExitFvOut,shrinkRow 776 s6Step189ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step189ExitFvBefore s6Step189ExitFvRow 109 s6Step189ExitFv_distinct s6Step189ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step189ExitFvRow.payload.take 109) s6Step189ExitFvRow.sign=s6Step189ExitFvOut := by decide +kernel
  have hi : s6Step189ExitFvRow.payload.drop 109=s6Step189ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step189ExitFv_retired] at result
  exact result

private def s6Step189ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step189ExitG_Incoming : rowsOwned s6Step189ExitGBefore [s6Step189ExitGRow,s6Step189ExitFRow,s6Step189ExitFvRow,s6Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189ExitGRow,s6Step189ExitFRow,s6Step189ExitFvRow,s6Step189ExitGvRow] 0 s6Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step189ExitG_Outgoing : rowsOwned s6Step189ExitGvAfter [s6Step189ExitGOut,s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut] :=
  hmrRows_owned_drop s6Step189ExitGvAfter [s6Step189ExitGOut,s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut] 0 s6Step189ExitBank_outgoingOwned

private theorem s6Step189ExitG_distinct : (s6Step189ExitGRow.sign::s6Step189ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189ExitG_owned : (s6Step189ExitGRow.sign::s6Step189ExitGRow.payload).toFinset⊆s6Step189ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189ExitG_retired : s6Step189ExitGBefore.retireSet s6Step189ExitGExtra.toFinset=s6Step189ExitGAfter := by
  unfold Arena.retireSet s6Step189ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step189ExitGBefore,s6Step189ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step189ExitG_checked : planRowResizeLog s6Step189ExitGBefore s6Step189ExitGRow 174 []=
    some (s6Step189ExitGAfter,s6Step189ExitGOut,shrinkRow 777 s6Step189ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step189ExitGBefore s6Step189ExitGRow 174 s6Step189ExitG_distinct s6Step189ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step189ExitGRow.payload.take 174) s6Step189ExitGRow.sign=s6Step189ExitGOut := by decide +kernel
  have hi : s6Step189ExitGRow.payload.drop 174=s6Step189ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step189ExitG_retired] at result
  exact result

private def s6Step189ExitGvBefore : Arena := s6Step189ExitFvAfter

private theorem s6Step189ExitGv_Incoming : rowsOwned s6Step189ExitGvBefore [s6Step189ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189ExitGRow,s6Step189ExitFRow,s6Step189ExitFvRow,s6Step189ExitGvRow] 3 s6Step189ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189ExitGvBefore (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189ExitGv_Outgoing : rowsOwned s6Step189ExitGvAfter [s6Step189ExitGvOut] :=
  hmrRows_owned_drop s6Step189ExitGvAfter [s6Step189ExitGOut,s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut] 3 s6Step189ExitBank_outgoingOwned

private theorem s6Step189ExitGv_distinct : (s6Step189ExitGvRow.sign::s6Step189ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189ExitGv_owned : (s6Step189ExitGvRow.sign::s6Step189ExitGvRow.payload).toFinset⊆s6Step189ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189ExitGvBefore (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189ExitGv_retired : s6Step189ExitGvBefore.retireSet s6Step189ExitGvExtra.toFinset=s6Step189ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step189ExitGvBefore s6Step189ExitGvAfter s6Step189ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step189ExitGvBefore s6Step189ExitGvAfter (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,174),(175,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step189ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step189ExitGv_checked : planRowResizeLog s6Step189ExitGvBefore s6Step189ExitGvRow 109 []=
    some (s6Step189ExitGvAfter,s6Step189ExitGvOut,shrinkRow 775 s6Step189ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step189ExitGvBefore s6Step189ExitGvRow 109 s6Step189ExitGv_distinct s6Step189ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step189ExitGvRow.payload.take 109) s6Step189ExitGvRow.sign=s6Step189ExitGvOut := by decide +kernel
  have hi : s6Step189ExitGvRow.payload.drop 109=s6Step189ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step189ExitGv_retired] at result
  exact result

private theorem s6Step189ExitBank_rows : planWindowRowsLog s6Step189ExitGBefore [(s6Step189ExitGRow,174),(s6Step189ExitFRow,175),(s6Step189ExitFvRow,109),(s6Step189ExitGvRow,109)] [[],[],[],[]]=
    some (s6Step189ExitGvAfter,[s6Step189ExitGOut,s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut],(shrinkRow 777 s6Step189ExitGExtra ++ (shrinkRow 795 s6Step189ExitFExtra ++ (shrinkRow 776 s6Step189ExitFvExtra ++ (shrinkRow 775 s6Step189ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step189ExitGvAfter [] []=some (s6Step189ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step189ExitGvBefore s6Step189ExitGvAfter s6Step189ExitGvAfter
    s6Step189ExitGvRow s6Step189ExitGvOut 109 [] [] [] []
    (shrinkRow 775 s6Step189ExitGvExtra) ([]) s6Step189ExitGv_Incoming s6Step189ExitGv_checked h4 s6Step189ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step189ExitFvBefore s6Step189ExitFvAfter s6Step189ExitGvAfter
    s6Step189ExitFvRow s6Step189ExitFvOut 109 [] [(s6Step189ExitGvRow,109)] [[]] [s6Step189ExitGvOut]
    (shrinkRow 776 s6Step189ExitFvExtra) ((shrinkRow 775 s6Step189ExitGvExtra ++ [])) s6Step189ExitFv_Incoming s6Step189ExitFv_checked h3 s6Step189ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step189ExitFBefore s6Step189ExitFAfter s6Step189ExitGvAfter
    s6Step189ExitFRow s6Step189ExitFOut 175 [] [(s6Step189ExitFvRow,109),(s6Step189ExitGvRow,109)] [[],[]] [s6Step189ExitFvOut,s6Step189ExitGvOut]
    (shrinkRow 795 s6Step189ExitFExtra) ((shrinkRow 776 s6Step189ExitFvExtra ++ (shrinkRow 775 s6Step189ExitGvExtra ++ []))) s6Step189ExitF_Incoming s6Step189ExitF_checked h2 s6Step189ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step189ExitGBefore s6Step189ExitGAfter s6Step189ExitGvAfter
    s6Step189ExitGRow s6Step189ExitGOut 174 [] [(s6Step189ExitFRow,175),(s6Step189ExitFvRow,109),(s6Step189ExitGvRow,109)] [[],[],[]] [s6Step189ExitFOut,s6Step189ExitFvOut,s6Step189ExitGvOut]
    (shrinkRow 777 s6Step189ExitGExtra) ((shrinkRow 795 s6Step189ExitFExtra ++ (shrinkRow 776 s6Step189ExitFvExtra ++ (shrinkRow 775 s6Step189ExitGvExtra ++ [])))) s6Step189ExitG_Incoming s6Step189ExitG_checked h1 s6Step189ExitG_Outgoing
  exact h0

private theorem s6Step189ExitBank_checked : compileHmrBankResizeLog .exit s6Step189ExitGBefore ⟨s6Step189ExitFRow,s6Step189ExitGRow,s6Step189ExitFvRow,s6Step189ExitGvRow⟩ ⟨175,174,109,109⟩ [[],[],[],[]]=
    some (s6Step189ExitGvAfter,⟨s6Step189ExitFOut,s6Step189ExitGOut,s6Step189ExitFvOut,s6Step189ExitGvOut⟩,(shrinkRow 777 s6Step189ExitGExtra ++ (shrinkRow 795 s6Step189ExitFExtra ++ (shrinkRow 776 s6Step189ExitFvExtra ++ (shrinkRow 775 s6Step189ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step189ExitBank_rows]
  rfl

private theorem s6Step189Add0_apart : Disjoint s6Step189Add0Arena.live s6Step189Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step189Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189Add0_card : s6Step189Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step189Add0_borrowed : s6Step189Add0Arena.checkBorrow (hmrHybridCount s6Step189Add0Arena s6Step189Add0B.length) s6Step189Add0Work=some s6Step189Add0During := by
  have len : s6Step189Add0Work.length=hmrHybridCount s6Step189Add0Arena s6Step189Add0B.length := by
    rw [hmrHybridCount,s6Step189Add0_card]
    decide +kernel
  have nd : s6Step189Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step189Add0Arena s6Step189Add0During s6Step189Add0Work.toFinset s6Step189Add0_bounded s6Step189Add0_apart rfl

private theorem s6Step189Add0_distinct : (853::860::907::(s6Step189Add0A++s6Step189Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189Add0_owned : (853::860::907::(s6Step189Add0A++s6Step189Add0B)).toFinset⊆s6Step189Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step189Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189Add0_checked : compileHmrHybridCinLog s6Step189Add0Arena 860 853 907 s6Step189Add0A s6Step189Add0B s6Step189Add0Work=some s6Step189Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step189Add0Arena s6Step189Add0During 860 853 907 s6Step189Add0A s6Step189Add0B s6Step189Add0Work
    (by decide +kernel) (by decide +kernel) s6Step189Add0_distinct
    (fun q hq => s6Step189Add0_owned (List.mem_toFinset.mpr hq)) s6Step189Add0_borrowed

private theorem s6Step189Add1_apart : Disjoint s6Step189Add1Arena.live s6Step189Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step189Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189Add1_card : s6Step189Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step189Add1_borrowed : s6Step189Add1Arena.checkBorrow (hmrHybridCount s6Step189Add1Arena s6Step189Add1B.length) s6Step189Add1Work=some s6Step189Add1During := by
  have len : s6Step189Add1Work.length=hmrHybridCount s6Step189Add1Arena s6Step189Add1B.length := by
    rw [hmrHybridCount,s6Step189Add1_card]
    decide +kernel
  have nd : s6Step189Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step189Add1Arena s6Step189Add1During s6Step189Add1Work.toFinset s6Step189Add1_bounded s6Step189Add1_apart rfl

private theorem s6Step189Add1_distinct : (853::860::907::(s6Step189Add1A++s6Step189Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189Add1_owned : (853::860::907::(s6Step189Add1A++s6Step189Add1B)).toFinset⊆s6Step189Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step189Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189Add1_checked : compileHmrHybridCinLog s6Step189Add1Arena 860 853 907 s6Step189Add1A s6Step189Add1B s6Step189Add1Work=some s6Step189Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step189Add1Arena s6Step189Add1During 860 853 907 s6Step189Add1A s6Step189Add1B s6Step189Add1Work
    (by decide +kernel) (by decide +kernel) s6Step189Add1_distinct
    (fun q hq => s6Step189Add1_owned (List.mem_toFinset.mpr hq)) s6Step189Add1_borrowed

private theorem s6Step189F4_apart : Disjoint (s6Step189Add0A++s6Step189Add0B).toFinset (s6Step189Add1A++s6Step189Add1B).toFinset := by
  have nd : ((s6Step189Add0A++s6Step189Add0B)++(s6Step189Add1A++s6Step189Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step189F4_carry : s6Step189F4FlagArena.checkBorrow 1 [907]=some s6Step189Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step189F4FlagArena,s6Step189HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step189F4FlagArena,s6Step189HeadFvAfter,s6Step189Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step189F4_distinct : (821::860::853::907::((s6Step189Add0A++s6Step189Add1A)++(s6Step189Add0B++s6Step189Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189F4_flag : s6Step189HeadFvAfter.checkBorrow 1 [853]=some s6Step189F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step189HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step189F4_owned : (821::860::((s6Step189Add0A++s6Step189Add1A)++(s6Step189Add0B++s6Step189Add1B))).toFinset⊆s6Step189HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step189HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189F4_checked : compileHmrHybridF4Log s6Step189HeadFvAfter 821 860 s6Step189Add0A s6Step189Add0B s6Step189Add1A s6Step189Add1B [853] [907] s6Step189Add0Work s6Step189Add1Work=some s6Step189F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step189HeadFvAfter s6Step189F4FlagArena s6Step189Add0Arena s6Step189Add0During s6Step189Add1During 821 860
    s6Step189Add0A s6Step189Add0B s6Step189Add1A s6Step189Add1B [853] [907] s6Step189Add0Work s6Step189Add1Work
    (fun q hq => s6Step189F4_owned (List.mem_toFinset.mpr hq)) s6Step189F4_flag s6Step189F4_carry
    s6Step189F4_distinct s6Step189F4_apart s6Step189Add0_checked s6Step189Add1_checked

private theorem s6Step189Front_branch : s6Step189FrontSigmaArena.checkBorrow 1 [860]=some s6Step189HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step189FrontSigmaArena,s6Step189EntryGvAfter,arenaWires]
  · change s6Step189HeadGBefore.live=(s6Step189EntryGvAfter.live∪{821})∪{860}
    apply hmrArena_union_pair_of_filter_check s6Step189EntryGvAfter s6Step189HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 821 860 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step189Front_entry : HmrFrontEntryValid s6Step189EntryFBefore s6Step189FrontBank 175 109 ⟨175,174,109,109⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step189FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step189EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step189EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step189FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step189Front_sigma : s6Step189EntryGvAfter.checkBorrow 1 [821]=some s6Step189FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step189EntryGvAfter,arenaWires]
  · rfl

private def s6Step189HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step189HeadFBefore : Arena := s6Step189HeadGAfter

private def s6Step189HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step189HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step189HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩

private def s6Step189HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private theorem s6Step189HeadBank_incomingDistinct : ([s6Step189HeadGRow,s6Step189HeadFRow,s6Step189HeadGvRow,s6Step189HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189HeadF_Incoming : rowsOwned s6Step189HeadFBefore [s6Step189HeadFRow,s6Step189HeadGvRow,s6Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189HeadGRow,s6Step189HeadFRow,s6Step189HeadGvRow,s6Step189HeadFvRow] 1 s6Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189HeadBank_outgoingOwned : rowsOwned s6Step189HeadFvAfter [s6Step189HeadGOut,s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step189HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step189HeadF_Outgoing : rowsOwned s6Step189HeadFvAfter [s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut] :=
  hmrRows_owned_drop s6Step189HeadFvAfter [s6Step189HeadGOut,s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut] 1 s6Step189HeadBank_outgoingOwned

private theorem s6Step189HeadF_distinct : (s6Step189HeadFRow.sign::s6Step189HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189HeadF_owned : (s6Step189HeadFRow.sign::s6Step189HeadFRow.payload).toFinset⊆s6Step189HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189HeadF_reserved : s6Step189HeadFBefore.reserve s6Step189HeadFFresh.toFinset=some s6Step189HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189HeadFFresh,arenaWires]
  · norm_num [s6Step189HeadFBefore,s6Step189HeadGAfter,s6Step189HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step189HeadFBefore s6Step189HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step189HeadFFresh rfl rfl
    · norm_num [s6Step189HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step189HeadF_checked : planRowResizeLog s6Step189HeadFBefore s6Step189HeadFRow 176 s6Step189HeadFFresh=
    some (s6Step189HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 863],795⟩,growRow 795 s6Step189HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step189HeadFBefore s6Step189HeadFAfter s6Step189HeadFRow 176 s6Step189HeadFFresh
    s6Step189HeadF_distinct s6Step189HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189HeadF_reserved
  have rowEq : WindowRow.mk (s6Step189HeadFRow.payload++s6Step189HeadFFresh) s6Step189HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 863],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step189HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step189HeadFvBefore : Arena := s6Step189HeadGvAfter

private theorem s6Step189HeadFv_Incoming : rowsOwned s6Step189HeadFvBefore [s6Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189HeadGRow,s6Step189HeadFRow,s6Step189HeadGvRow,s6Step189HeadFvRow] 3 s6Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step189HeadFv_Outgoing : rowsOwned s6Step189HeadFvAfter [s6Step189HeadFvOut] :=
  hmrRows_owned_drop s6Step189HeadFvAfter [s6Step189HeadGOut,s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut] 3 s6Step189HeadBank_outgoingOwned

private theorem s6Step189HeadFv_distinct : (s6Step189HeadFvRow.sign::s6Step189HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189HeadFv_owned : (s6Step189HeadFvRow.sign::s6Step189HeadFvRow.payload).toFinset⊆s6Step189HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189HeadFv_reserved : s6Step189HeadFvBefore.reserve s6Step189HeadFvFresh.toFinset=some s6Step189HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189HeadFvFresh,arenaWires]
  · norm_num [s6Step189HeadFvBefore,s6Step189HeadGvAfter,s6Step189HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step189HeadFvAfter,s6Step189HeadFvBefore,s6Step189HeadGvAfter,s6Step189HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step189HeadFv_checked : planRowResizeLog s6Step189HeadFvBefore s6Step189HeadFvRow 110 s6Step189HeadFvFresh=
    some (s6Step189HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 838],776⟩,growRow 776 s6Step189HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step189HeadFvBefore s6Step189HeadFvAfter s6Step189HeadFvRow 110 s6Step189HeadFvFresh
    s6Step189HeadFv_distinct s6Step189HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step189HeadFvRow.payload++s6Step189HeadFvFresh) s6Step189HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 838],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step189HeadG_Incoming : rowsOwned s6Step189HeadGBefore [s6Step189HeadGRow,s6Step189HeadFRow,s6Step189HeadGvRow,s6Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189HeadGRow,s6Step189HeadFRow,s6Step189HeadGvRow,s6Step189HeadFvRow] 0 s6Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step189HeadG_Outgoing : rowsOwned s6Step189HeadFvAfter [s6Step189HeadGOut,s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut] :=
  hmrRows_owned_drop s6Step189HeadFvAfter [s6Step189HeadGOut,s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut] 0 s6Step189HeadBank_outgoingOwned

private theorem s6Step189HeadG_distinct : (s6Step189HeadGRow.sign::s6Step189HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189HeadG_owned : (s6Step189HeadGRow.sign::s6Step189HeadGRow.payload).toFinset⊆s6Step189HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step189HeadG_reserved : s6Step189HeadGBefore.reserve s6Step189HeadGFresh.toFinset=some s6Step189HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189HeadGFresh,arenaWires]
  · norm_num [s6Step189HeadGBefore,s6Step189HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step189HeadGBefore s6Step189HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step189HeadGFresh rfl rfl
    · norm_num [s6Step189HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step189HeadG_checked : planRowResizeLog s6Step189HeadGBefore s6Step189HeadGRow 176 s6Step189HeadGFresh=
    some (s6Step189HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 890],777⟩,growRow 777 s6Step189HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step189HeadGBefore s6Step189HeadGAfter s6Step189HeadGRow 176 s6Step189HeadGFresh
    s6Step189HeadG_distinct s6Step189HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189HeadG_reserved
  have rowEq : WindowRow.mk (s6Step189HeadGRow.payload++s6Step189HeadGFresh) s6Step189HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step189HeadGvBefore : Arena := s6Step189HeadFAfter

private theorem s6Step189HeadGv_Incoming : rowsOwned s6Step189HeadGvBefore [s6Step189HeadGvRow,s6Step189HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step189HeadGRow,s6Step189HeadFRow,s6Step189HeadGvRow,s6Step189HeadFvRow] 2 s6Step189HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step189HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step189HeadGv_Outgoing : rowsOwned s6Step189HeadFvAfter [s6Step189HeadGvOut,s6Step189HeadFvOut] :=
  hmrRows_owned_drop s6Step189HeadFvAfter [s6Step189HeadGOut,s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut] 2 s6Step189HeadBank_outgoingOwned

private theorem s6Step189HeadGv_distinct : (s6Step189HeadGvRow.sign::s6Step189HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step189HeadGv_owned : (s6Step189HeadGvRow.sign::s6Step189HeadGvRow.payload).toFinset⊆s6Step189HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step189HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step189HeadGv_reserved : s6Step189HeadGvBefore.reserve s6Step189HeadGvFresh.toFinset=some s6Step189HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step189HeadGvFresh,arenaWires]
  · norm_num [s6Step189HeadGvBefore,s6Step189HeadFAfter,s6Step189HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step189HeadGvAfter,s6Step189HeadGvBefore,s6Step189HeadFAfter,s6Step189HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step189HeadGv_checked : planRowResizeLog s6Step189HeadGvBefore s6Step189HeadGvRow 110 s6Step189HeadGvFresh=
    some (s6Step189HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 880],775⟩,growRow 775 s6Step189HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step189HeadGvBefore s6Step189HeadGvAfter s6Step189HeadGvRow 110 s6Step189HeadGvFresh
    s6Step189HeadGv_distinct s6Step189HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step189HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step189HeadGvRow.payload++s6Step189HeadGvFresh) s6Step189HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 880],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step189HeadBank_rows : planWindowRowsLog s6Step189HeadGBefore [(s6Step189HeadGRow,176),(s6Step189HeadFRow,176),(s6Step189HeadGvRow,110),(s6Step189HeadFvRow,110)] [s6Step189HeadGFresh,s6Step189HeadFFresh,s6Step189HeadGvFresh,s6Step189HeadFvFresh]=
    some (s6Step189HeadFvAfter,[s6Step189HeadGOut,s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut],(growRow 777 s6Step189HeadGFresh ++ (growRow 795 s6Step189HeadFFresh ++ (growRow 775 s6Step189HeadGvFresh ++ (growRow 776 s6Step189HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step189HeadFvAfter [] []=some (s6Step189HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step189HeadFvBefore s6Step189HeadFvAfter s6Step189HeadFvAfter
    s6Step189HeadFvRow s6Step189HeadFvOut 110 s6Step189HeadFvFresh [] [] []
    (growRow 776 s6Step189HeadFvFresh) ([]) s6Step189HeadFv_Incoming s6Step189HeadFv_checked h4 s6Step189HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step189HeadGvBefore s6Step189HeadGvAfter s6Step189HeadFvAfter
    s6Step189HeadGvRow s6Step189HeadGvOut 110 s6Step189HeadGvFresh [(s6Step189HeadFvRow,110)] [s6Step189HeadFvFresh] [s6Step189HeadFvOut]
    (growRow 775 s6Step189HeadGvFresh) ((growRow 776 s6Step189HeadFvFresh ++ [])) s6Step189HeadGv_Incoming s6Step189HeadGv_checked h3 s6Step189HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step189HeadFBefore s6Step189HeadFAfter s6Step189HeadFvAfter
    s6Step189HeadFRow s6Step189HeadFOut 176 s6Step189HeadFFresh [(s6Step189HeadGvRow,110),(s6Step189HeadFvRow,110)] [s6Step189HeadGvFresh,s6Step189HeadFvFresh] [s6Step189HeadGvOut,s6Step189HeadFvOut]
    (growRow 795 s6Step189HeadFFresh) ((growRow 775 s6Step189HeadGvFresh ++ (growRow 776 s6Step189HeadFvFresh ++ []))) s6Step189HeadF_Incoming s6Step189HeadF_checked h2 s6Step189HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step189HeadGBefore s6Step189HeadGAfter s6Step189HeadFvAfter
    s6Step189HeadGRow s6Step189HeadGOut 176 s6Step189HeadGFresh [(s6Step189HeadFRow,176),(s6Step189HeadGvRow,110),(s6Step189HeadFvRow,110)] [s6Step189HeadFFresh,s6Step189HeadGvFresh,s6Step189HeadFvFresh] [s6Step189HeadFOut,s6Step189HeadGvOut,s6Step189HeadFvOut]
    (growRow 777 s6Step189HeadGFresh) ((growRow 795 s6Step189HeadFFresh ++ (growRow 775 s6Step189HeadGvFresh ++ (growRow 776 s6Step189HeadFvFresh ++ [])))) s6Step189HeadG_Incoming s6Step189HeadG_checked h1 s6Step189HeadG_Outgoing
  exact h0

private theorem s6Step189HeadBank_checked : compileHmrBankResizeLog .headroom s6Step189HeadGBefore ⟨s6Step189HeadFRow,s6Step189HeadGRow,s6Step189HeadFvRow,s6Step189HeadGvRow⟩ ⟨176,176,110,110⟩ [s6Step189HeadGFresh,s6Step189HeadFFresh,s6Step189HeadGvFresh,s6Step189HeadFvFresh]=
    some (s6Step189HeadFvAfter,⟨s6Step189HeadFOut,s6Step189HeadGOut,s6Step189HeadFvOut,s6Step189HeadGvOut⟩,(growRow 777 s6Step189HeadGFresh ++ (growRow 795 s6Step189HeadFFresh ++ (growRow 775 s6Step189HeadGvFresh ++ (growRow 776 s6Step189HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step189HeadBank_rows]
  rfl

private theorem s6Step189Front_checked : compileHmrSourceFrontLog s6Step189EntryFBefore s6Step189FrontBank 175 109 ⟨175,174,109,109⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step189FrontLog=some s6Step189FrontPlan := by
  have pairEq : s6Step189FrontPair=⟨s6Step189HeadFRow,s6Step189HeadGRow,s6Step189HeadFvRow,s6Step189HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step189FrontHead=⟨s6Step189ExitFRow,s6Step189ExitGRow,s6Step189ExitFvRow,s6Step189ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step189Add0A=s6Step189FrontHead.f.wires := by decide +kernel
  have gEq : s6Step189Add0B=s6Step189FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step189Add1A=s6Step189FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step189Add1B=s6Step189FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step189EntryFBefore s6Step189FrontBank 175 109 ⟨175,174,109,109⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step189FrontLog s6Step189FrontPlan
  · exact s6Step189Front_entry
  · exact s6Step189EntryBank_checked
  · exact s6Step189Front_sigma
  · rfl
  · exact s6Step189Front_branch
  · rfl
  · simpa only [s6Step189FrontPlan,pairEq] using s6Step189HeadBank_checked
  · simpa only [s6Step189FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step189F4_checked
  · exact s6Step189Counter_checked
  · rfl
  · simpa only [s6Step189FrontPlan,headEq] using s6Step189ExitBank_checked

private theorem s6Step189Complete_explicit_checked : compileHmrEarlyStepLog s6Step189EntryFBefore s6Step189FrontBank 175 109 ⟨175,174,109,109⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step189CompleteLog=some s6Step189CompletePlan := by
  let Q := s6Step189EarlyControlPlan
  have hq := s6Step189EarlyControl_plan_checked
  have fv1 : s6Step189CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step189CompleteOut.fv.payload[2]?.getD s6Step189CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step189CompleteOut.fv.payload[3]?.getD s6Step189CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step189CompleteOut.fv.payload[4]?.getD s6Step189CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step189EntryFBefore s6Step189EarlyControlArena s6Step189FrontBank 175 109 ⟨175,174,109,109⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step189CompleteLog s6Step189FrontPlan Q
    s6Step189Front_checked s6Step189Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step189Complete_owned s6Step189Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step189EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 s6Step189CompleteOut.fv.second (s6Step189CompleteOut.fv.payload[2]?.getD s6Step189CompleteOut.fv.sign) (s6Step189CompleteOut.fv.payload[3]?.getD s6Step189CompleteOut.fv.sign) (s6Step189CompleteOut.fv.payload[4]?.getD s6Step189CompleteOut.fv.sign) 860 43 s6Step189EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep189Arena : Arena := s6Step189EntryFBefore
def s6PrivateStep189Bank : WindowBank := s6Step189FrontBank
def s6PrivateStep189Spec : HmrSourceWalkStepLog := ⟨175,109,⟨175,174,109,109⟩,43,.early s6Step189CompleteLog⟩
def s6PrivateStep189Plan : HmrSourceStepPlan := .early s6Step189CompletePlan
theorem s6PrivateStep189_source : s6PrivateStep189Spec=s6ObservedLogs176[13] := rfl
theorem s6PrivateStep189_checked : compileHmrSourceStepLog s6PrivateStep189Arena s6PrivateStep189Bank
    s6PrivateStep189Spec.fgWidth s6PrivateStep189Spec.vWidth s6PrivateStep189Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 189 s6PrivateStep189Spec.need none s6PrivateStep189Spec.log=some s6PrivateStep189Plan := by
  change compileHmrSourceStepLog s6Step189EntryFBefore s6Step189FrontBank 175 109 ⟨175,174,109,109⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 189 43 none (.early s6Step189CompleteLog)=some (.early s6Step189CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 189<498)]
  rw [s6Step189Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
