import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep186
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

private def s6Step188CompleteMoves : List (Wire × Wire) := [(860,431)]

private def s6Step188EarlyControlLog : HmrEarlyControlLog := ⟨[860, 890, 863, 880, 838],[853],[907],[891, 903, 791, 825, 810, 923],[]⟩

private def s6Step188FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [880], [], []],[[838], [863], [890], [814]],[[], [], [], []]⟩,[821],[839],[853],[907],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903]⟩

private def s6Step188CompleteLog : HmrEarlyStepLog := ⟨s6Step188FrontLog,s6Step188CompleteMoves,s6Step188EarlyControlLog⟩

private def s6Step188ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step188ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step188ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩

private def s6Step188ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private def s6Step188FrontOut : WindowBank := ⟨s6Step188ExitFOut,s6Step188ExitGOut,s6Step188ExitFvOut,s6Step188ExitGvOut⟩

private def s6Step188CompleteOut : WindowBank := s6Step188FrontOut.repacked s6Step188CompleteMoves

private def s6Step188EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step188EarlyControlPositiveArena,[853],s6Step188EarlyControlEqualityArena,[907],⟨⟨821,false⟩,[⟨⟨853,false⟩,907⟩]⟩⟩

private def s6Step188EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,860⟩,⟨⟨772,false⟩,890⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,880⟩,⟨⟨769,false⟩,838⟩]⟩

private def s6Step188EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step188EarlyControlZeroArena,s6Step188EarlyControlZeroPlan,s6Step188EarlyControlClassPlan,s6Step188EarlyControlFlagArena,s6Step188EarlyControlFittedArena,s6Step188EarlyControlHistoryArena,s6Step188EarlyControlSigmaArena,s6Step188EarlyControlOutputArena,s6Step188EarlyControlLog⟩

private def s6Step188CounterWork : List Wire := [853, 907, 891, 903]

private theorem s6Step188Counter_bounded : s6Step188CounterWork.toFinset⊆arenaWires := by norm_num [s6Step188CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step188HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188CounterDuring : Arena := ⟨s6Step188HeadFvAfter.live∪s6Step188CounterWork.toFinset,Finset.union_subset s6Step188HeadFvAfter.bounded s6Step188Counter_bounded⟩

private def s6Step188EntryFFresh : List Wire := []

private def s6Step188EntryFvFresh : List Wire := []

private def s6Step188EntryGFresh : List Wire := [880]

private def s6Step188EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188EntryGvAfter : Arena := s6Step188EntryGAfter

private def s6Step188EntryGvFresh : List Wire := []

private def s6Step188ExitFExtra : List Wire := [431, 863]

private def s6Step188ExitGExtra : List Wire := [880, 838]

private def s6Step188ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step188ExitGvExtra : List Wire := [890]

private def s6Step188Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step188Add0_bounded : s6Step188Add0Work.toFinset⊆arenaWires := by
  have h : s6Step188Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step188Add0During : Arena := ⟨s6Step188Add0Arena.live∪s6Step188Add0Work.toFinset,Finset.union_subset s6Step188Add0Arena.bounded s6Step188Add0_bounded⟩

private def s6Step188Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step188Add1_bounded : s6Step188Add1Work.toFinset⊆arenaWires := by
  have h : s6Step188Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step188Add1During : Arena := ⟨s6Step188Add1Arena.live∪s6Step188Add1Work.toFinset,Finset.union_subset s6Step188Add1Arena.bounded s6Step188Add1_bounded⟩

private def s6Step188F4FlagArena : Arena := ⟨s6Step188HeadFvAfter.live∪{853},Finset.union_subset s6Step188HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step188F4Plan : HmrHybridF4Plan := ⟨s6Step188F4FlagArena,[853],s6Step188Add0Arena,[907],s6Step188Add0During,s6Step188Add0Work,s6Step188Add1During,s6Step188Add1Work⟩

private def s6Step188HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 863],795⟩

private def s6Step188HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step188HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880, 838],777⟩

private def s6Step188HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 890],775⟩

private def s6Step188FrontHead : WindowBank := ⟨s6Step188HeadFOut,s6Step188HeadGOut,s6Step188HeadFvOut,s6Step188HeadGvOut⟩

private def s6Step188EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431],795⟩

private def s6Step188EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩

private def s6Step188EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880],777⟩

private def s6Step188EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private def s6Step188FrontPair : WindowBank := ⟨s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut⟩

private def s6Step188FrontSigmaArena : Arena := ⟨s6Step188EntryGvAfter.live∪{821},Finset.union_subset s6Step188EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step188HeadFFresh : List Wire := [863]

private def s6Step188HeadFvFresh : List Wire := [814]

private def s6Step188HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188HeadGFresh : List Wire := [838]

private def s6Step188HeadGvFresh : List Wire := [890]

private def s6Step188FrontPlan : HmrSourceFront := ⟨s6Step188EntryGvAfter,s6Step188FrontPair,(growRow 795 s6Step188EntryFFresh ++ (growRow 777 s6Step188EntryGFresh ++ (growRow 776 s6Step188EntryFvFresh ++ (growRow 775 s6Step188EntryGvFresh ++ [])))),s6Step188FrontSigmaArena,[821],s6Step188HeadGBefore,[839],
  s6Step188HeadFvAfter,s6Step188FrontHead,(growRow 777 s6Step188HeadGFresh ++ (growRow 795 s6Step188HeadFFresh ++ (growRow 775 s6Step188HeadGvFresh ++ (growRow 776 s6Step188HeadFvFresh ++ [])))),s6Step188F4Plan,s6Step188CounterDuring,s6Step188CounterWork,s6Step188ExitGvAfter,s6Step188FrontOut,(shrinkRow 777 s6Step188ExitGExtra ++ (shrinkRow 795 s6Step188ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step188ExitGvExtra ++ []))))⟩

private def s6Step188CompletePlan : HmrEarlyStepPlan := ⟨s6Step188FrontPlan,s6Step188EarlyControlArena,s6Step188EarlyControlPlan,s6Step188CompleteMoves⟩

private theorem s6Step188Complete_apart : List.Disjoint (s6Step188CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [821, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step188CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[821, 839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step188Complete_owned : (s6Step188CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step188CompleteRelocationMove0Borrowed : Arena := ⟨s6Step188ExitGvAfter.live∪{431},Finset.union_subset s6Step188ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step188CompleteRelocation_move0_owned : 860∈s6Step188ExitGvAfter.live := by norm_num [s6Step188ExitGvAfter,arenaWires]

private theorem s6Step188CompleteRelocation_move0_reserve : s6Step188ExitGvAfter.reserve {431}=some s6Step188CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step188ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step188CompleteRelocation_move0_retire : s6Step188CompleteRelocationMove0Borrowed.retireSet {860}=s6Step188EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step188CompleteRelocationMove0Borrowed s6Step188EarlyControlArena {860}
  change s6Step188EarlyControlArena.live=(s6Step188ExitGvAfter.live∪{431})\{860}
  apply hmrArena_update_of_filter_check s6Step188ExitGvAfter s6Step188EarlyControlArena (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [431] [860] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step188CompleteRelocation_checked : s6Step188ExitGvAfter.checkRepack [(860,431)]=some s6Step188EarlyControlArena := by
  have tail1 : s6Step188EarlyControlArena.checkRepack []=some s6Step188EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step188ExitGvAfter s6Step188CompleteRelocationMove0Borrowed s6Step188EarlyControlArena s6Step188EarlyControlArena 860 431 []
    s6Step188CompleteRelocation_move0_owned s6Step188CompleteRelocation_move0_reserve s6Step188CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step188Complete_repack : s6Step188ExitGvAfter.checkRepack s6Step188CompleteMoves=some s6Step188EarlyControlArena := by
  simpa only [s6Step188CompleteMoves] using s6Step188CompleteRelocation_checked

private theorem s6Step188EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s6Step188EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EarlyControl_branch : compileHmrBranchRetirement s6Step188EarlyControlSigmaArena 839=some s6Step188EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step188EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step188EarlyControlSigmaArena s6Step188EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [839] rfl rfl
    decide +kernel

private theorem s6Step188EarlyControl_classEqualityBorrow : s6Step188EarlyControlPositiveArena.checkBorrow (([821, 853] : List Wire).length-1) s6Step188EarlyControlLog.classWork=some s6Step188EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step188EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step188EarlyControlEqualityArena,s6Step188EarlyControlPositiveArena,s6Step188EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step188EarlyControl_classEqualityOwned : ([821, 853] : List Wire).toFinset⊆s6Step188EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188EarlyControl_classEquality : compileHmrEqualityLog s6Step188EarlyControlPositiveArena [821, 853] 0 s6Step188EarlyControlLog.classWork=some (s6Step188EarlyControlEqualityArena,s6Step188EarlyControlLog.classWork,s6Step188EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step188EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step188EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step188EarlyControl_classOwned : ([769, 838, 821] : List Wire).toFinset⊆s6Step188EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188EarlyControl_positiveBorrow : s6Step188EarlyControlZeroArena.checkBorrow (1) s6Step188EarlyControlLog.positiveWork=some s6Step188EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step188EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step188EarlyControlPositiveArena,s6Step188EarlyControlZeroArena,s6Step188EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step188EarlyControl_class : compileHmrSourceClassLog s6Step188EarlyControlZeroArena false 769 s6Step188EarlyControlZeroPlan.top 0 821 s6Step188EarlyControlLog.positiveWork s6Step188EarlyControlLog.classWork=some s6Step188EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step188EarlyControlClassPlan s6Step188EarlyControlZeroArena false 769 s6Step188EarlyControlZeroPlan.top 0 821
  constructor
  · decide +kernel
  · exact s6Step188EarlyControl_classOwned
  · exact s6Step188EarlyControl_positiveBorrow
  · exact s6Step188EarlyControl_classEquality

private theorem s6Step188EarlyControl_entryRecordOwned : ([839, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EarlyControl_entrySigmaOwned : ([821, 254] : List Wire).toFinset⊆s6Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EarlyControl_fitBorrow : s6Step188EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step188EarlyControlLog.recordFresh=some s6Step188EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step188EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step188EarlyControlFittedArena,s6Step188EarlyControlFlagArena,s6Step188EarlyControlLog,arenaWires]

private theorem s6Step188EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step188EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188EarlyControl_fit : compileHmrRecordGrowLog s6Step188EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step188EarlyControlLog.recordFresh=some s6Step188EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step188EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step188EarlyControl_fitBorrow

private theorem s6Step188EarlyControl_flagsBorrow : s6Step188EarlyControlEqualityArena.checkBorrow (6) s6Step188EarlyControlLog.flagWork=some s6Step188EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step188EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step188EarlyControlFlagArena,s6Step188EarlyControlEqualityArena,s6Step188EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step188EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s6Step188EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188EarlyControl_flags : compileHmrFlagsLog s6Step188EarlyControlClassPlan.equalityArena s6Step188EarlyControlClassPlan.equality.top 253 252 251 s6Step188EarlyControlLog.flagWork=some s6Step188EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step188EarlyControl_flagsOwned⟩
  · exact s6Step188EarlyControl_flagsBorrow

private theorem s6Step188EarlyControl_historyBorrow : s6Step188EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step188EarlyControlLog.recordFresh=some s6Step188EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step188EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step188EarlyControlArena s6Step188EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step188EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step188EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EarlyControl_history : compileHmrRecordGrowLog s6Step188EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step188EarlyControlLog.recordFresh=some s6Step188EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step188EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step188EarlyControl_historyBorrow

private theorem s6Step188EarlyControl_sigmaOwned : ([254, 821] : List Wire).toFinset⊆s6Step188EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EarlyControl_sigmaReleaseOwned : ([821] : List Wire).toFinset⊆s6Step188EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EarlyControl_sigmaRelease : s6Step188EarlyControlHistoryArena.release {821} (fun _ => false)=some s6Step188EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step188EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step188EarlyControlHistoryArena s6Step188EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [821] rfl rfl
    decide +kernel

private theorem s6Step188EarlyControl_sigma : compileHmrSigmaDropLog s6Step188EarlyControlHistoryArena false 0 0 254 821 []=some s6Step188EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step188EarlyControl_sigmaOwned⟩
  · exact s6Step188EarlyControl_sigmaRelease

private theorem s6Step188EarlyControl_zeroBorrow : s6Step188EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step188EarlyControlLog.zeroWork=some s6Step188EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step188EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step188EarlyControlArena s6Step188EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step188EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step188EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step188EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step188EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step188EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EarlyControl_zero : compileHmrEqualityLog s6Step188EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step188EarlyControlLog.zeroWork=some (s6Step188EarlyControlZeroArena,s6Step188EarlyControlLog.zeroWork,s6Step188EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step188EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step188EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step188EarlyControl_logged : s6Step188EarlyControlPlan.Logged s6Step188EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 839 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step188EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step188EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step188EarlyControl_zero
  · exact s6Step188EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step188EarlyControl_flags
  · exact s6Step188EarlyControl_fit
  · exact s6Step188EarlyControl_history
  · exact s6Step188EarlyControl_sigma
  · exact s6Step188EarlyControl_branch

private theorem s6Step188EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step188EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 839 43 s6Step188EarlyControlLog=some s6Step188EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step188EarlyControlPlan s6Step188EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 839 43 s6Step188EarlyControl_logged

private def s6Step188EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step188EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431],795⟩

private def s6Step188EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩

private def s6Step188EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174],777⟩

private def s6Step188EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private def s6Step188FrontBank : WindowBank := ⟨s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow⟩

private def s6Step188Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 863, 795]

private def s6Step188Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880, 838, 777]

private def s6Step188Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 776]

private def s6Step188Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 890, 775]

private theorem s6Step188Counter_apart : Disjoint s6Step188HeadFvAfter.live s6Step188CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step188HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188Counter_borrowed : s6Step188HeadFvAfter.checkBorrow 4 s6Step188CounterWork=some s6Step188CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step188HeadFvAfter s6Step188CounterDuring s6Step188CounterWork.toFinset s6Step188Counter_bounded s6Step188Counter_apart rfl

private theorem s6Step188Counter_owned : (821::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step188HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step188HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188Counter_checked : compileHmrCounterStepLog s6Step188HeadFvAfter true 821 [774, 773, 772, 771, 770, 769] s6Step188CounterWork=some s6Step188CounterDuring := by
  have owned : ∀q∈821::[774, 773, 772, 771, 770, 769],q∈s6Step188HeadFvAfter.live := fun q hq => s6Step188Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step188Counter_borrowed

private def s6Step188EntryFAfter : Arena := s6Step188EntryFBefore

private theorem s6Step188EntryBank_incomingDistinct : ([s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188EntryF_Incoming : rowsOwned s6Step188EntryFBefore [s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow] 0 s6Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step188EntryBank_outgoingOwned : rowsOwned s6Step188EntryGvAfter [s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step188EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188EntryF_Outgoing : rowsOwned s6Step188EntryGvAfter [s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut] :=
  hmrRows_owned_drop s6Step188EntryGvAfter [s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut] 0 s6Step188EntryBank_outgoingOwned

private theorem s6Step188EntryF_distinct : (s6Step188EntryFRow.sign::s6Step188EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188EntryF_owned : (s6Step188EntryFRow.sign::s6Step188EntryFRow.payload).toFinset⊆s6Step188EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EntryF_reserved : s6Step188EntryFBefore.reserve s6Step188EntryFFresh.toFinset=some s6Step188EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188EntryFFresh,arenaWires]
  · norm_num [s6Step188EntryFBefore,s6Step188EntryFFresh,arenaWires]
  · simp only [s6Step188EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step188EntryF_checked : planRowResizeLog s6Step188EntryFBefore s6Step188EntryFRow 176 s6Step188EntryFFresh=
    some (s6Step188EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431],795⟩,growRow 795 s6Step188EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step188EntryFBefore s6Step188EntryFAfter s6Step188EntryFRow 176 s6Step188EntryFFresh
    s6Step188EntryF_distinct s6Step188EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188EntryF_reserved
  have rowEq : WindowRow.mk (s6Step188EntryFRow.payload++s6Step188EntryFFresh) s6Step188EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step188EntryFvAfter : Arena := s6Step188EntryGAfter

private def s6Step188EntryFvBefore : Arena := s6Step188EntryGAfter

private theorem s6Step188EntryFv_Incoming : rowsOwned s6Step188EntryFvBefore [s6Step188EntryFvRow,s6Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow] 2 s6Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188EntryFv_Outgoing : rowsOwned s6Step188EntryGvAfter [s6Step188EntryFvOut,s6Step188EntryGvOut] :=
  hmrRows_owned_drop s6Step188EntryGvAfter [s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut] 2 s6Step188EntryBank_outgoingOwned

private theorem s6Step188EntryFv_distinct : (s6Step188EntryFvRow.sign::s6Step188EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188EntryFv_owned : (s6Step188EntryFvRow.sign::s6Step188EntryFvRow.payload).toFinset⊆s6Step188EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188EntryFv_reserved : s6Step188EntryFvBefore.reserve s6Step188EntryFvFresh.toFinset=some s6Step188EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188EntryFvFresh,arenaWires]
  · norm_num [s6Step188EntryFvBefore,s6Step188EntryGAfter,s6Step188EntryFvFresh,arenaWires]
  · simp only [s6Step188EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step188EntryFv_checked : planRowResizeLog s6Step188EntryFvBefore s6Step188EntryFvRow 108 s6Step188EntryFvFresh=
    some (s6Step188EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩,growRow 776 s6Step188EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step188EntryFvBefore s6Step188EntryFvAfter s6Step188EntryFvRow 108 s6Step188EntryFvFresh
    s6Step188EntryFv_distinct s6Step188EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step188EntryFvRow.payload++s6Step188EntryFvFresh) s6Step188EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step188EntryGBefore : Arena := s6Step188EntryFBefore

private theorem s6Step188EntryG_Incoming : rowsOwned s6Step188EntryGBefore [s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow] 1 s6Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step188EntryG_Outgoing : rowsOwned s6Step188EntryGvAfter [s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut] :=
  hmrRows_owned_drop s6Step188EntryGvAfter [s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut] 1 s6Step188EntryBank_outgoingOwned

private theorem s6Step188EntryG_distinct : (s6Step188EntryGRow.sign::s6Step188EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188EntryG_owned : (s6Step188EntryGRow.sign::s6Step188EntryGRow.payload).toFinset⊆s6Step188EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188EntryG_reserved : s6Step188EntryGBefore.reserve s6Step188EntryGFresh.toFinset=some s6Step188EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188EntryGFresh,arenaWires]
  · norm_num [s6Step188EntryGBefore,s6Step188EntryFBefore,s6Step188EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step188EntryGBefore s6Step188EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step188EntryGFresh rfl rfl
    · norm_num [s6Step188EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step188EntryG_checked : planRowResizeLog s6Step188EntryGBefore s6Step188EntryGRow 176 s6Step188EntryGFresh=
    some (s6Step188EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880],777⟩,growRow 777 s6Step188EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step188EntryGBefore s6Step188EntryGAfter s6Step188EntryGRow 176 s6Step188EntryGFresh
    s6Step188EntryG_distinct s6Step188EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188EntryG_reserved
  have rowEq : WindowRow.mk (s6Step188EntryGRow.payload++s6Step188EntryGFresh) s6Step188EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step188EntryGvBefore : Arena := s6Step188EntryGAfter

private theorem s6Step188EntryGv_Incoming : rowsOwned s6Step188EntryGvBefore [s6Step188EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow] 3 s6Step188EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188EntryGv_Outgoing : rowsOwned s6Step188EntryGvAfter [s6Step188EntryGvOut] :=
  hmrRows_owned_drop s6Step188EntryGvAfter [s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut] 3 s6Step188EntryBank_outgoingOwned

private theorem s6Step188EntryGv_distinct : (s6Step188EntryGvRow.sign::s6Step188EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188EntryGv_owned : (s6Step188EntryGvRow.sign::s6Step188EntryGvRow.payload).toFinset⊆s6Step188EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (822≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188EntryGv_reserved : s6Step188EntryGvBefore.reserve s6Step188EntryGvFresh.toFinset=some s6Step188EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188EntryGvFresh,arenaWires]
  · norm_num [s6Step188EntryGvBefore,s6Step188EntryGAfter,s6Step188EntryGvFresh,arenaWires]
  · simp only [s6Step188EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step188EntryGv_checked : planRowResizeLog s6Step188EntryGvBefore s6Step188EntryGvRow 108 s6Step188EntryGvFresh=
    some (s6Step188EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩,growRow 775 s6Step188EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step188EntryGvBefore s6Step188EntryGvAfter s6Step188EntryGvRow 108 s6Step188EntryGvFresh
    s6Step188EntryGv_distinct s6Step188EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step188EntryGvRow.payload++s6Step188EntryGvFresh) s6Step188EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step188EntryBank_rows : planWindowRowsLog s6Step188EntryFBefore [(s6Step188EntryFRow,176),(s6Step188EntryGRow,176),(s6Step188EntryFvRow,108),(s6Step188EntryGvRow,108)] [s6Step188EntryFFresh,s6Step188EntryGFresh,s6Step188EntryFvFresh,s6Step188EntryGvFresh]=
    some (s6Step188EntryGvAfter,[s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut],(growRow 795 s6Step188EntryFFresh ++ (growRow 777 s6Step188EntryGFresh ++ (growRow 776 s6Step188EntryFvFresh ++ (growRow 775 s6Step188EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step188EntryGvAfter [] []=some (s6Step188EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step188EntryGvBefore s6Step188EntryGvAfter s6Step188EntryGvAfter
    s6Step188EntryGvRow s6Step188EntryGvOut 108 s6Step188EntryGvFresh [] [] []
    (growRow 775 s6Step188EntryGvFresh) ([]) s6Step188EntryGv_Incoming s6Step188EntryGv_checked h4 s6Step188EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step188EntryFvBefore s6Step188EntryFvAfter s6Step188EntryGvAfter
    s6Step188EntryFvRow s6Step188EntryFvOut 108 s6Step188EntryFvFresh [(s6Step188EntryGvRow,108)] [s6Step188EntryGvFresh] [s6Step188EntryGvOut]
    (growRow 776 s6Step188EntryFvFresh) ((growRow 775 s6Step188EntryGvFresh ++ [])) s6Step188EntryFv_Incoming s6Step188EntryFv_checked h3 s6Step188EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step188EntryGBefore s6Step188EntryGAfter s6Step188EntryGvAfter
    s6Step188EntryGRow s6Step188EntryGOut 176 s6Step188EntryGFresh [(s6Step188EntryFvRow,108),(s6Step188EntryGvRow,108)] [s6Step188EntryFvFresh,s6Step188EntryGvFresh] [s6Step188EntryFvOut,s6Step188EntryGvOut]
    (growRow 777 s6Step188EntryGFresh) ((growRow 776 s6Step188EntryFvFresh ++ (growRow 775 s6Step188EntryGvFresh ++ []))) s6Step188EntryG_Incoming s6Step188EntryG_checked h2 s6Step188EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step188EntryFBefore s6Step188EntryFAfter s6Step188EntryGvAfter
    s6Step188EntryFRow s6Step188EntryFOut 176 s6Step188EntryFFresh [(s6Step188EntryGRow,176),(s6Step188EntryFvRow,108),(s6Step188EntryGvRow,108)] [s6Step188EntryGFresh,s6Step188EntryFvFresh,s6Step188EntryGvFresh] [s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut]
    (growRow 795 s6Step188EntryFFresh) ((growRow 777 s6Step188EntryGFresh ++ (growRow 776 s6Step188EntryFvFresh ++ (growRow 775 s6Step188EntryGvFresh ++ [])))) s6Step188EntryF_Incoming s6Step188EntryF_checked h1 s6Step188EntryF_Outgoing
  exact h0

private theorem s6Step188EntryBank_checked : compileHmrBankResizeLog .entry s6Step188EntryFBefore ⟨s6Step188EntryFRow,s6Step188EntryGRow,s6Step188EntryFvRow,s6Step188EntryGvRow⟩ ⟨176,176,108,108⟩ [s6Step188EntryFFresh,s6Step188EntryGFresh,s6Step188EntryFvFresh,s6Step188EntryGvFresh]=
    some (s6Step188EntryGvAfter,⟨s6Step188EntryFOut,s6Step188EntryGOut,s6Step188EntryFvOut,s6Step188EntryGvOut⟩,(growRow 795 s6Step188EntryFFresh ++ (growRow 777 s6Step188EntryGFresh ++ (growRow 776 s6Step188EntryFvFresh ++ (growRow 775 s6Step188EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step188EntryBank_rows]
  rfl

private def s6Step188ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step188ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188ExitFBefore : Arena := s6Step188ExitGAfter

private def s6Step188ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 863],795⟩

private def s6Step188ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step188ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880, 838],777⟩

private def s6Step188ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 890],775⟩

private theorem s6Step188ExitBank_incomingDistinct : ([s6Step188ExitGRow,s6Step188ExitFRow,s6Step188ExitFvRow,s6Step188ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188ExitF_Incoming : rowsOwned s6Step188ExitFBefore [s6Step188ExitFRow,s6Step188ExitFvRow,s6Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188ExitGRow,s6Step188ExitFRow,s6Step188ExitFvRow,s6Step188ExitGvRow] 1 s6Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188ExitBank_outgoingOwned : rowsOwned s6Step188ExitGvAfter [s6Step188ExitGOut,s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step188ExitGvAfter (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step188ExitF_Outgoing : rowsOwned s6Step188ExitGvAfter [s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut] :=
  hmrRows_owned_drop s6Step188ExitGvAfter [s6Step188ExitGOut,s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut] 1 s6Step188ExitBank_outgoingOwned

private theorem s6Step188ExitF_distinct : (s6Step188ExitFRow.sign::s6Step188ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188ExitF_owned : (s6Step188ExitFRow.sign::s6Step188ExitFRow.payload).toFinset⊆s6Step188ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188ExitF_retired : s6Step188ExitFBefore.retireSet s6Step188ExitFExtra.toFinset=s6Step188ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step188ExitFBefore s6Step188ExitFAfter s6Step188ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step188ExitFBefore s6Step188ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step188ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step188ExitF_checked : planRowResizeLog s6Step188ExitFBefore s6Step188ExitFRow 175 []=
    some (s6Step188ExitFAfter,s6Step188ExitFOut,shrinkRow 795 s6Step188ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step188ExitFBefore s6Step188ExitFRow 175 s6Step188ExitF_distinct s6Step188ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step188ExitFRow.payload.take 175) s6Step188ExitFRow.sign=s6Step188ExitFOut := by decide +kernel
  have hi : s6Step188ExitFRow.payload.drop 175=s6Step188ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step188ExitF_retired] at result
  exact result

private def s6Step188ExitFvAfter : Arena := s6Step188ExitFAfter

private def s6Step188ExitFvBefore : Arena := s6Step188ExitFAfter

private theorem s6Step188ExitFv_Incoming : rowsOwned s6Step188ExitFvBefore [s6Step188ExitFvRow,s6Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188ExitGRow,s6Step188ExitFRow,s6Step188ExitFvRow,s6Step188ExitGvRow] 2 s6Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188ExitFvBefore (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step188ExitFv_Outgoing : rowsOwned s6Step188ExitGvAfter [s6Step188ExitFvOut,s6Step188ExitGvOut] :=
  hmrRows_owned_drop s6Step188ExitGvAfter [s6Step188ExitGOut,s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut] 2 s6Step188ExitBank_outgoingOwned

private theorem s6Step188ExitFv_distinct : (s6Step188ExitFvRow.sign::s6Step188ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188ExitFv_owned : (s6Step188ExitFvRow.sign::s6Step188ExitFvRow.payload).toFinset⊆s6Step188ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188ExitFvBefore (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188ExitFv_reserved : s6Step188ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step188ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step188ExitFv_checked : planRowResizeLog s6Step188ExitFvBefore s6Step188ExitFvRow 109 []=
    some (s6Step188ExitFvAfter,s6Step188ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step188ExitFvBefore s6Step188ExitFvAfter s6Step188ExitFvRow 109 []
    s6Step188ExitFv_distinct s6Step188ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step188ExitFvRow.payload++[]) s6Step188ExitFvRow.sign=s6Step188ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step188ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step188ExitG_Incoming : rowsOwned s6Step188ExitGBefore [s6Step188ExitGRow,s6Step188ExitFRow,s6Step188ExitFvRow,s6Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188ExitGRow,s6Step188ExitFRow,s6Step188ExitFvRow,s6Step188ExitGvRow] 0 s6Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188ExitG_Outgoing : rowsOwned s6Step188ExitGvAfter [s6Step188ExitGOut,s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut] :=
  hmrRows_owned_drop s6Step188ExitGvAfter [s6Step188ExitGOut,s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut] 0 s6Step188ExitBank_outgoingOwned

private theorem s6Step188ExitG_distinct : (s6Step188ExitGRow.sign::s6Step188ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188ExitG_owned : (s6Step188ExitGRow.sign::s6Step188ExitGRow.payload).toFinset⊆s6Step188ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188ExitG_retired : s6Step188ExitGBefore.retireSet s6Step188ExitGExtra.toFinset=s6Step188ExitGAfter := by
  unfold Arena.retireSet s6Step188ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step188ExitGBefore,s6Step188ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step188ExitG_checked : planRowResizeLog s6Step188ExitGBefore s6Step188ExitGRow 175 []=
    some (s6Step188ExitGAfter,s6Step188ExitGOut,shrinkRow 777 s6Step188ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step188ExitGBefore s6Step188ExitGRow 175 s6Step188ExitG_distinct s6Step188ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step188ExitGRow.payload.take 175) s6Step188ExitGRow.sign=s6Step188ExitGOut := by decide +kernel
  have hi : s6Step188ExitGRow.payload.drop 175=s6Step188ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step188ExitG_retired] at result
  exact result

private def s6Step188ExitGvBefore : Arena := s6Step188ExitFAfter

private theorem s6Step188ExitGv_Incoming : rowsOwned s6Step188ExitGvBefore [s6Step188ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188ExitGRow,s6Step188ExitFRow,s6Step188ExitFvRow,s6Step188ExitGvRow] 3 s6Step188ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188ExitGvBefore (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step188ExitGv_Outgoing : rowsOwned s6Step188ExitGvAfter [s6Step188ExitGvOut] :=
  hmrRows_owned_drop s6Step188ExitGvAfter [s6Step188ExitGOut,s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut] 3 s6Step188ExitBank_outgoingOwned

private theorem s6Step188ExitGv_distinct : (s6Step188ExitGvRow.sign::s6Step188ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188ExitGv_owned : (s6Step188ExitGvRow.sign::s6Step188ExitGvRow.payload).toFinset⊆s6Step188ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188ExitGvBefore (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step188ExitGv_retired : s6Step188ExitGvBefore.retireSet s6Step188ExitGvExtra.toFinset=s6Step188ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step188ExitGvBefore s6Step188ExitGvAfter s6Step188ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step188ExitGvBefore s6Step188ExitGvAfter (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,431),(432,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step188ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step188ExitGv_checked : planRowResizeLog s6Step188ExitGvBefore s6Step188ExitGvRow 108 []=
    some (s6Step188ExitGvAfter,s6Step188ExitGvOut,shrinkRow 775 s6Step188ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step188ExitGvBefore s6Step188ExitGvRow 108 s6Step188ExitGv_distinct s6Step188ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step188ExitGvRow.payload.take 108) s6Step188ExitGvRow.sign=s6Step188ExitGvOut := by decide +kernel
  have hi : s6Step188ExitGvRow.payload.drop 108=s6Step188ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step188ExitGv_retired] at result
  exact result

private theorem s6Step188ExitBank_rows : planWindowRowsLog s6Step188ExitGBefore [(s6Step188ExitGRow,175),(s6Step188ExitFRow,175),(s6Step188ExitFvRow,109),(s6Step188ExitGvRow,108)] [[],[],[],[]]=
    some (s6Step188ExitGvAfter,[s6Step188ExitGOut,s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut],(shrinkRow 777 s6Step188ExitGExtra ++ (shrinkRow 795 s6Step188ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step188ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step188ExitGvAfter [] []=some (s6Step188ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step188ExitGvBefore s6Step188ExitGvAfter s6Step188ExitGvAfter
    s6Step188ExitGvRow s6Step188ExitGvOut 108 [] [] [] []
    (shrinkRow 775 s6Step188ExitGvExtra) ([]) s6Step188ExitGv_Incoming s6Step188ExitGv_checked h4 s6Step188ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step188ExitFvBefore s6Step188ExitFvAfter s6Step188ExitGvAfter
    s6Step188ExitFvRow s6Step188ExitFvOut 109 [] [(s6Step188ExitGvRow,108)] [[]] [s6Step188ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step188ExitGvExtra ++ [])) s6Step188ExitFv_Incoming s6Step188ExitFv_checked h3 s6Step188ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step188ExitFBefore s6Step188ExitFAfter s6Step188ExitGvAfter
    s6Step188ExitFRow s6Step188ExitFOut 175 [] [(s6Step188ExitFvRow,109),(s6Step188ExitGvRow,108)] [[],[]] [s6Step188ExitFvOut,s6Step188ExitGvOut]
    (shrinkRow 795 s6Step188ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step188ExitGvExtra ++ []))) s6Step188ExitF_Incoming s6Step188ExitF_checked h2 s6Step188ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step188ExitGBefore s6Step188ExitGAfter s6Step188ExitGvAfter
    s6Step188ExitGRow s6Step188ExitGOut 175 [] [(s6Step188ExitFRow,175),(s6Step188ExitFvRow,109),(s6Step188ExitGvRow,108)] [[],[],[]] [s6Step188ExitFOut,s6Step188ExitFvOut,s6Step188ExitGvOut]
    (shrinkRow 777 s6Step188ExitGExtra) ((shrinkRow 795 s6Step188ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step188ExitGvExtra ++ [])))) s6Step188ExitG_Incoming s6Step188ExitG_checked h1 s6Step188ExitG_Outgoing
  exact h0

private theorem s6Step188ExitBank_checked : compileHmrBankResizeLog .exit s6Step188ExitGBefore ⟨s6Step188ExitFRow,s6Step188ExitGRow,s6Step188ExitFvRow,s6Step188ExitGvRow⟩ ⟨175,175,109,108⟩ [[],[],[],[]]=
    some (s6Step188ExitGvAfter,⟨s6Step188ExitFOut,s6Step188ExitGOut,s6Step188ExitFvOut,s6Step188ExitGvOut⟩,(shrinkRow 777 s6Step188ExitGExtra ++ (shrinkRow 795 s6Step188ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step188ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step188ExitBank_rows]
  rfl

private theorem s6Step188Add0_apart : Disjoint s6Step188Add0Arena.live s6Step188Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step188Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188Add0_card : s6Step188Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step188Add0_borrowed : s6Step188Add0Arena.checkBorrow (hmrHybridCount s6Step188Add0Arena s6Step188Add0B.length) s6Step188Add0Work=some s6Step188Add0During := by
  have len : s6Step188Add0Work.length=hmrHybridCount s6Step188Add0Arena s6Step188Add0B.length := by
    rw [hmrHybridCount,s6Step188Add0_card]
    decide +kernel
  have nd : s6Step188Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step188Add0Arena s6Step188Add0During s6Step188Add0Work.toFinset s6Step188Add0_bounded s6Step188Add0_apart rfl

private theorem s6Step188Add0_distinct : (853::839::907::(s6Step188Add0A++s6Step188Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188Add0_owned : (853::839::907::(s6Step188Add0A++s6Step188Add0B)).toFinset⊆s6Step188Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step188Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188Add0_checked : compileHmrHybridCinLog s6Step188Add0Arena 839 853 907 s6Step188Add0A s6Step188Add0B s6Step188Add0Work=some s6Step188Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step188Add0Arena s6Step188Add0During 839 853 907 s6Step188Add0A s6Step188Add0B s6Step188Add0Work
    (by decide +kernel) (by decide +kernel) s6Step188Add0_distinct
    (fun q hq => s6Step188Add0_owned (List.mem_toFinset.mpr hq)) s6Step188Add0_borrowed

private theorem s6Step188Add1_apart : Disjoint s6Step188Add1Arena.live s6Step188Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step188Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188Add1_card : s6Step188Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step188Add1_borrowed : s6Step188Add1Arena.checkBorrow (hmrHybridCount s6Step188Add1Arena s6Step188Add1B.length) s6Step188Add1Work=some s6Step188Add1During := by
  have len : s6Step188Add1Work.length=hmrHybridCount s6Step188Add1Arena s6Step188Add1B.length := by
    rw [hmrHybridCount,s6Step188Add1_card]
    decide +kernel
  have nd : s6Step188Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step188Add1Arena s6Step188Add1During s6Step188Add1Work.toFinset s6Step188Add1_bounded s6Step188Add1_apart rfl

private theorem s6Step188Add1_distinct : (853::839::907::(s6Step188Add1A++s6Step188Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188Add1_owned : (853::839::907::(s6Step188Add1A++s6Step188Add1B)).toFinset⊆s6Step188Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step188Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188Add1_checked : compileHmrHybridCinLog s6Step188Add1Arena 839 853 907 s6Step188Add1A s6Step188Add1B s6Step188Add1Work=some s6Step188Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step188Add1Arena s6Step188Add1During 839 853 907 s6Step188Add1A s6Step188Add1B s6Step188Add1Work
    (by decide +kernel) (by decide +kernel) s6Step188Add1_distinct
    (fun q hq => s6Step188Add1_owned (List.mem_toFinset.mpr hq)) s6Step188Add1_borrowed

private theorem s6Step188F4_apart : Disjoint (s6Step188Add0A++s6Step188Add0B).toFinset (s6Step188Add1A++s6Step188Add1B).toFinset := by
  have nd : ((s6Step188Add0A++s6Step188Add0B)++(s6Step188Add1A++s6Step188Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step188F4_carry : s6Step188F4FlagArena.checkBorrow 1 [907]=some s6Step188Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step188F4FlagArena,s6Step188HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step188F4FlagArena,s6Step188HeadFvAfter,s6Step188Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step188F4_distinct : (821::839::853::907::((s6Step188Add0A++s6Step188Add1A)++(s6Step188Add0B++s6Step188Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188F4_flag : s6Step188HeadFvAfter.checkBorrow 1 [853]=some s6Step188F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step188HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step188F4_owned : (821::839::((s6Step188Add0A++s6Step188Add1A)++(s6Step188Add0B++s6Step188Add1B))).toFinset⊆s6Step188HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step188HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188F4_checked : compileHmrHybridF4Log s6Step188HeadFvAfter 821 839 s6Step188Add0A s6Step188Add0B s6Step188Add1A s6Step188Add1B [853] [907] s6Step188Add0Work s6Step188Add1Work=some s6Step188F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step188HeadFvAfter s6Step188F4FlagArena s6Step188Add0Arena s6Step188Add0During s6Step188Add1During 821 839
    s6Step188Add0A s6Step188Add0B s6Step188Add1A s6Step188Add1B [853] [907] s6Step188Add0Work s6Step188Add1Work
    (fun q hq => s6Step188F4_owned (List.mem_toFinset.mpr hq)) s6Step188F4_flag s6Step188F4_carry
    s6Step188F4_distinct s6Step188F4_apart s6Step188Add0_checked s6Step188Add1_checked

private theorem s6Step188Front_branch : s6Step188FrontSigmaArena.checkBorrow 1 [839]=some s6Step188HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step188FrontSigmaArena,s6Step188EntryGvAfter,s6Step188EntryGAfter,arenaWires]
  · ext q
    simp only [s6Step188FrontSigmaArena,s6Step188EntryGvAfter,s6Step188EntryGAfter,s6Step188HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step188Front_entry : HmrFrontEntryValid s6Step188EntryFBefore s6Step188FrontBank 176 108 ⟨175,175,109,108⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step188FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step188EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step188EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,814),(818,819),(822,825),(826,832),(833,834),(835,838),(840,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step188FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step188Front_sigma : s6Step188EntryGvAfter.checkBorrow 1 [821]=some s6Step188FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step188EntryGvAfter,s6Step188EntryGAfter,arenaWires]
  · rfl

private def s6Step188HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188HeadFBefore : Arena := s6Step188HeadGAfter

private def s6Step188HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431],795⟩

private def s6Step188HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803],776⟩

private def s6Step188HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880],777⟩

private def s6Step188HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796],775⟩

private theorem s6Step188HeadBank_incomingDistinct : ([s6Step188HeadGRow,s6Step188HeadFRow,s6Step188HeadGvRow,s6Step188HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188HeadF_Incoming : rowsOwned s6Step188HeadFBefore [s6Step188HeadFRow,s6Step188HeadGvRow,s6Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188HeadGRow,s6Step188HeadFRow,s6Step188HeadGvRow,s6Step188HeadFvRow] 1 s6Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188HeadBank_outgoingOwned : rowsOwned s6Step188HeadFvAfter [s6Step188HeadGOut,s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step188HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188HeadF_Outgoing : rowsOwned s6Step188HeadFvAfter [s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut] :=
  hmrRows_owned_drop s6Step188HeadFvAfter [s6Step188HeadGOut,s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut] 1 s6Step188HeadBank_outgoingOwned

private theorem s6Step188HeadF_distinct : (s6Step188HeadFRow.sign::s6Step188HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188HeadF_owned : (s6Step188HeadFRow.sign::s6Step188HeadFRow.payload).toFinset⊆s6Step188HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188HeadF_reserved : s6Step188HeadFBefore.reserve s6Step188HeadFFresh.toFinset=some s6Step188HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188HeadFFresh,arenaWires]
  · norm_num [s6Step188HeadFBefore,s6Step188HeadGAfter,s6Step188HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step188HeadFAfter,s6Step188HeadFBefore,s6Step188HeadGAfter,s6Step188HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step188HeadF_checked : planRowResizeLog s6Step188HeadFBefore s6Step188HeadFRow 177 s6Step188HeadFFresh=
    some (s6Step188HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 863],795⟩,growRow 795 s6Step188HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step188HeadFBefore s6Step188HeadFAfter s6Step188HeadFRow 177 s6Step188HeadFFresh
    s6Step188HeadF_distinct s6Step188HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188HeadF_reserved
  have rowEq : WindowRow.mk (s6Step188HeadFRow.payload++s6Step188HeadFFresh) s6Step188HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 863],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step188HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step188HeadFvBefore : Arena := s6Step188HeadGvAfter

private theorem s6Step188HeadFv_Incoming : rowsOwned s6Step188HeadFvBefore [s6Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188HeadGRow,s6Step188HeadFRow,s6Step188HeadGvRow,s6Step188HeadFvRow] 3 s6Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188HeadFv_Outgoing : rowsOwned s6Step188HeadFvAfter [s6Step188HeadFvOut] :=
  hmrRows_owned_drop s6Step188HeadFvAfter [s6Step188HeadGOut,s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut] 3 s6Step188HeadBank_outgoingOwned

private theorem s6Step188HeadFv_distinct : (s6Step188HeadFvRow.sign::s6Step188HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188HeadFv_owned : (s6Step188HeadFvRow.sign::s6Step188HeadFvRow.payload).toFinset⊆s6Step188HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188HeadFv_reserved : s6Step188HeadFvBefore.reserve s6Step188HeadFvFresh.toFinset=some s6Step188HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188HeadFvFresh,arenaWires]
  · norm_num [s6Step188HeadFvBefore,s6Step188HeadGvAfter,s6Step188HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step188HeadFvAfter,s6Step188HeadFvBefore,s6Step188HeadGvAfter,s6Step188HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step188HeadFv_checked : planRowResizeLog s6Step188HeadFvBefore s6Step188HeadFvRow 109 s6Step188HeadFvFresh=
    some (s6Step188HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩,growRow 776 s6Step188HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step188HeadFvBefore s6Step188HeadFvAfter s6Step188HeadFvRow 109 s6Step188HeadFvFresh
    s6Step188HeadFv_distinct s6Step188HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step188HeadFvRow.payload++s6Step188HeadFvFresh) s6Step188HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step188HeadG_Incoming : rowsOwned s6Step188HeadGBefore [s6Step188HeadGRow,s6Step188HeadFRow,s6Step188HeadGvRow,s6Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188HeadGRow,s6Step188HeadFRow,s6Step188HeadGvRow,s6Step188HeadFvRow] 0 s6Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188HeadG_Outgoing : rowsOwned s6Step188HeadFvAfter [s6Step188HeadGOut,s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut] :=
  hmrRows_owned_drop s6Step188HeadFvAfter [s6Step188HeadGOut,s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut] 0 s6Step188HeadBank_outgoingOwned

private theorem s6Step188HeadG_distinct : (s6Step188HeadGRow.sign::s6Step188HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188HeadG_owned : (s6Step188HeadGRow.sign::s6Step188HeadGRow.payload).toFinset⊆s6Step188HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188HeadG_reserved : s6Step188HeadGBefore.reserve s6Step188HeadGFresh.toFinset=some s6Step188HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188HeadGFresh,arenaWires]
  · norm_num [s6Step188HeadGBefore,s6Step188HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step188HeadGAfter,s6Step188HeadGBefore,s6Step188HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step188HeadG_checked : planRowResizeLog s6Step188HeadGBefore s6Step188HeadGRow 177 s6Step188HeadGFresh=
    some (s6Step188HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880, 838],777⟩,growRow 777 s6Step188HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step188HeadGBefore s6Step188HeadGAfter s6Step188HeadGRow 177 s6Step188HeadGFresh
    s6Step188HeadG_distinct s6Step188HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188HeadG_reserved
  have rowEq : WindowRow.mk (s6Step188HeadGRow.payload++s6Step188HeadGFresh) s6Step188HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 880, 838],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step188HeadGvBefore : Arena := s6Step188HeadFAfter

private theorem s6Step188HeadGv_Incoming : rowsOwned s6Step188HeadGvBefore [s6Step188HeadGvRow,s6Step188HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step188HeadGRow,s6Step188HeadFRow,s6Step188HeadGvRow,s6Step188HeadFvRow] 2 s6Step188HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step188HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step188HeadGv_Outgoing : rowsOwned s6Step188HeadFvAfter [s6Step188HeadGvOut,s6Step188HeadFvOut] :=
  hmrRows_owned_drop s6Step188HeadFvAfter [s6Step188HeadGOut,s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut] 2 s6Step188HeadBank_outgoingOwned

private theorem s6Step188HeadGv_distinct : (s6Step188HeadGvRow.sign::s6Step188HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step188HeadGv_owned : (s6Step188HeadGvRow.sign::s6Step188HeadGvRow.payload).toFinset⊆s6Step188HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step188HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step188HeadGv_reserved : s6Step188HeadGvBefore.reserve s6Step188HeadGvFresh.toFinset=some s6Step188HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step188HeadGvFresh,arenaWires]
  · norm_num [s6Step188HeadGvBefore,s6Step188HeadFAfter,s6Step188HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step188HeadGvAfter,s6Step188HeadGvBefore,s6Step188HeadFAfter,s6Step188HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step188HeadGv_checked : planRowResizeLog s6Step188HeadGvBefore s6Step188HeadGvRow 109 s6Step188HeadGvFresh=
    some (s6Step188HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 890],775⟩,growRow 775 s6Step188HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step188HeadGvBefore s6Step188HeadGvAfter s6Step188HeadGvRow 109 s6Step188HeadGvFresh
    s6Step188HeadGv_distinct s6Step188HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step188HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step188HeadGvRow.payload++s6Step188HeadGvFresh) s6Step188HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 890],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step188HeadBank_rows : planWindowRowsLog s6Step188HeadGBefore [(s6Step188HeadGRow,177),(s6Step188HeadFRow,177),(s6Step188HeadGvRow,109),(s6Step188HeadFvRow,109)] [s6Step188HeadGFresh,s6Step188HeadFFresh,s6Step188HeadGvFresh,s6Step188HeadFvFresh]=
    some (s6Step188HeadFvAfter,[s6Step188HeadGOut,s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut],(growRow 777 s6Step188HeadGFresh ++ (growRow 795 s6Step188HeadFFresh ++ (growRow 775 s6Step188HeadGvFresh ++ (growRow 776 s6Step188HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step188HeadFvAfter [] []=some (s6Step188HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step188HeadFvBefore s6Step188HeadFvAfter s6Step188HeadFvAfter
    s6Step188HeadFvRow s6Step188HeadFvOut 109 s6Step188HeadFvFresh [] [] []
    (growRow 776 s6Step188HeadFvFresh) ([]) s6Step188HeadFv_Incoming s6Step188HeadFv_checked h4 s6Step188HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step188HeadGvBefore s6Step188HeadGvAfter s6Step188HeadFvAfter
    s6Step188HeadGvRow s6Step188HeadGvOut 109 s6Step188HeadGvFresh [(s6Step188HeadFvRow,109)] [s6Step188HeadFvFresh] [s6Step188HeadFvOut]
    (growRow 775 s6Step188HeadGvFresh) ((growRow 776 s6Step188HeadFvFresh ++ [])) s6Step188HeadGv_Incoming s6Step188HeadGv_checked h3 s6Step188HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step188HeadFBefore s6Step188HeadFAfter s6Step188HeadFvAfter
    s6Step188HeadFRow s6Step188HeadFOut 177 s6Step188HeadFFresh [(s6Step188HeadGvRow,109),(s6Step188HeadFvRow,109)] [s6Step188HeadGvFresh,s6Step188HeadFvFresh] [s6Step188HeadGvOut,s6Step188HeadFvOut]
    (growRow 795 s6Step188HeadFFresh) ((growRow 775 s6Step188HeadGvFresh ++ (growRow 776 s6Step188HeadFvFresh ++ []))) s6Step188HeadF_Incoming s6Step188HeadF_checked h2 s6Step188HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step188HeadGBefore s6Step188HeadGAfter s6Step188HeadFvAfter
    s6Step188HeadGRow s6Step188HeadGOut 177 s6Step188HeadGFresh [(s6Step188HeadFRow,177),(s6Step188HeadGvRow,109),(s6Step188HeadFvRow,109)] [s6Step188HeadFFresh,s6Step188HeadGvFresh,s6Step188HeadFvFresh] [s6Step188HeadFOut,s6Step188HeadGvOut,s6Step188HeadFvOut]
    (growRow 777 s6Step188HeadGFresh) ((growRow 795 s6Step188HeadFFresh ++ (growRow 775 s6Step188HeadGvFresh ++ (growRow 776 s6Step188HeadFvFresh ++ [])))) s6Step188HeadG_Incoming s6Step188HeadG_checked h1 s6Step188HeadG_Outgoing
  exact h0

private theorem s6Step188HeadBank_checked : compileHmrBankResizeLog .headroom s6Step188HeadGBefore ⟨s6Step188HeadFRow,s6Step188HeadGRow,s6Step188HeadFvRow,s6Step188HeadGvRow⟩ ⟨177,177,109,109⟩ [s6Step188HeadGFresh,s6Step188HeadFFresh,s6Step188HeadGvFresh,s6Step188HeadFvFresh]=
    some (s6Step188HeadFvAfter,⟨s6Step188HeadFOut,s6Step188HeadGOut,s6Step188HeadFvOut,s6Step188HeadGvOut⟩,(growRow 777 s6Step188HeadGFresh ++ (growRow 795 s6Step188HeadFFresh ++ (growRow 775 s6Step188HeadGvFresh ++ (growRow 776 s6Step188HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step188HeadBank_rows]
  rfl

private theorem s6Step188Front_checked : compileHmrSourceFrontLog s6Step188EntryFBefore s6Step188FrontBank 176 108 ⟨175,175,109,108⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step188FrontLog=some s6Step188FrontPlan := by
  have pairEq : s6Step188FrontPair=⟨s6Step188HeadFRow,s6Step188HeadGRow,s6Step188HeadFvRow,s6Step188HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step188FrontHead=⟨s6Step188ExitFRow,s6Step188ExitGRow,s6Step188ExitFvRow,s6Step188ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step188Add0A=s6Step188FrontHead.f.wires := by decide +kernel
  have gEq : s6Step188Add0B=s6Step188FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step188Add1A=s6Step188FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step188Add1B=s6Step188FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step188EntryFBefore s6Step188FrontBank 176 108 ⟨175,175,109,108⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step188FrontLog s6Step188FrontPlan
  · exact s6Step188Front_entry
  · exact s6Step188EntryBank_checked
  · exact s6Step188Front_sigma
  · rfl
  · exact s6Step188Front_branch
  · rfl
  · simpa only [s6Step188FrontPlan,pairEq] using s6Step188HeadBank_checked
  · simpa only [s6Step188FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step188F4_checked
  · exact s6Step188Counter_checked
  · rfl
  · simpa only [s6Step188FrontPlan,headEq] using s6Step188ExitBank_checked

private theorem s6Step188Complete_explicit_checked : compileHmrEarlyStepLog s6Step188EntryFBefore s6Step188FrontBank 176 108 ⟨175,175,109,108⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step188CompleteLog=some s6Step188CompletePlan := by
  let Q := s6Step188EarlyControlPlan
  have hq := s6Step188EarlyControl_plan_checked
  have fv1 : s6Step188CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step188CompleteOut.fv.payload[2]?.getD s6Step188CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step188CompleteOut.fv.payload[3]?.getD s6Step188CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step188CompleteOut.fv.payload[4]?.getD s6Step188CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step188EntryFBefore s6Step188EarlyControlArena s6Step188FrontBank 176 108 ⟨175,175,109,108⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step188CompleteLog s6Step188FrontPlan Q
    s6Step188Front_checked s6Step188Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step188Complete_owned s6Step188Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step188EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 s6Step188CompleteOut.fv.second (s6Step188CompleteOut.fv.payload[2]?.getD s6Step188CompleteOut.fv.sign) (s6Step188CompleteOut.fv.payload[3]?.getD s6Step188CompleteOut.fv.sign) (s6Step188CompleteOut.fv.payload[4]?.getD s6Step188CompleteOut.fv.sign) 839 43 s6Step188EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep188Arena : Arena := s6Step188EntryFBefore
def s6PrivateStep188Bank : WindowBank := s6Step188FrontBank
def s6PrivateStep188Spec : HmrSourceWalkStepLog := ⟨176,108,⟨175,175,109,108⟩,43,.early s6Step188CompleteLog⟩
def s6PrivateStep188Plan : HmrSourceStepPlan := .early s6Step188CompletePlan
theorem s6PrivateStep188_source : s6PrivateStep188Spec=s6ObservedLogs176[12] := rfl
theorem s6PrivateStep188_checked : compileHmrSourceStepLog s6PrivateStep188Arena s6PrivateStep188Bank
    s6PrivateStep188Spec.fgWidth s6PrivateStep188Spec.vWidth s6PrivateStep188Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 188 s6PrivateStep188Spec.need none s6PrivateStep188Spec.log=some s6PrivateStep188Plan := by
  change compileHmrSourceStepLog s6Step188EntryFBefore s6Step188FrontBank 176 108 ⟨175,175,109,108⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 188 43 none (.early s6Step188CompleteLog)=some (.early s6Step188CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 188<498)]
  rw [s6Step188Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
