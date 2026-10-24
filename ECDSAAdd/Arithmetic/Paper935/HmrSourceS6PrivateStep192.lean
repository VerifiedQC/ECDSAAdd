import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep190
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

private def s6Step192CompleteMoves : List (Wire × Wire) := []

private def s6Step192EarlyControlLog : HmrEarlyControlLog := ⟨[838, 843, 880, 854, 860],[853],[907],[891, 903, 791, 825, 810, 923],[]⟩

private def s6Step192FrontLog : HmrFrontAllocationLog := ⟨⟨[[843], [], [], []],[[860], [880], [838], [863]],[[], [], [], []]⟩,[833],[862],[853],[907],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903]⟩

private def s6Step192CompleteLog : HmrEarlyStepLog := ⟨s6Step192FrontLog,s6Step192CompleteMoves,s6Step192EarlyControlLog⟩

private def s6Step192ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩

private def s6Step192ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step192ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩

private def s6Step192ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private def s6Step192FrontOut : WindowBank := ⟨s6Step192ExitFOut,s6Step192ExitGOut,s6Step192ExitFvOut,s6Step192ExitGvOut⟩

private def s6Step192CompleteOut : WindowBank := s6Step192FrontOut.repacked s6Step192CompleteMoves

private def s6Step192EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step192EarlyControlPositiveArena,[853],s6Step192EarlyControlEqualityArena,[907],⟨⟨833,false⟩,[⟨⟨853,false⟩,907⟩]⟩⟩

private def s6Step192EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,838⟩,⟨⟨772,false⟩,843⟩,⟨⟨771,false⟩,880⟩,⟨⟨770,false⟩,854⟩,⟨⟨769,false⟩,860⟩]⟩

private def s6Step192EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step192EarlyControlZeroArena,s6Step192EarlyControlZeroPlan,s6Step192EarlyControlClassPlan,s6Step192EarlyControlFlagArena,s6Step192EarlyControlFittedArena,s6Step192EarlyControlHistoryArena,s6Step192EarlyControlSigmaArena,s6Step192EarlyControlOutputArena,s6Step192EarlyControlLog⟩

private def s6Step192CounterWork : List Wire := [853, 907, 891, 903]

private theorem s6Step192Counter_bounded : s6Step192CounterWork.toFinset⊆arenaWires := by norm_num [s6Step192CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step192HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192CounterDuring : Arena := ⟨s6Step192HeadFvAfter.live∪s6Step192CounterWork.toFinset,Finset.union_subset s6Step192HeadFvAfter.bounded s6Step192Counter_bounded⟩

private def s6Step192EntryFFresh : List Wire := [843]

private def s6Step192EntryFvFresh : List Wire := []

private def s6Step192EntryGFresh : List Wire := []

private def s6Step192EntryFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192EntryGvAfter : Arena := s6Step192EntryFAfter

private def s6Step192EntryGvFresh : List Wire := []

private def s6Step192ExitFExtra : List Wire := [843, 880]

private def s6Step192ExitGExtra : List Wire := [854, 860]

private def s6Step192ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192ExitGvExtra : List Wire := [838]

private def s6Step192Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step192Add0_bounded : s6Step192Add0Work.toFinset⊆arenaWires := by
  have h : s6Step192Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step192Add0During : Arena := ⟨s6Step192Add0Arena.live∪s6Step192Add0Work.toFinset,Finset.union_subset s6Step192Add0Arena.bounded s6Step192Add0_bounded⟩

private def s6Step192Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step192Add1_bounded : s6Step192Add1Work.toFinset⊆arenaWires := by
  have h : s6Step192Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step192Add1During : Arena := ⟨s6Step192Add1Arena.live∪s6Step192Add1Work.toFinset,Finset.union_subset s6Step192Add1Arena.bounded s6Step192Add1_bounded⟩

private def s6Step192F4FlagArena : Arena := ⟨s6Step192HeadFvAfter.live∪{853},Finset.union_subset s6Step192HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step192F4Plan : HmrHybridF4Plan := ⟨s6Step192F4FlagArena,[853],s6Step192Add0Arena,[907],s6Step192Add0During,s6Step192Add0Work,s6Step192Add1During,s6Step192Add1Work⟩

private def s6Step192HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843, 880],795⟩

private def s6Step192HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step192HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 860],777⟩

private def s6Step192HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 838],775⟩

private def s6Step192FrontHead : WindowBank := ⟨s6Step192HeadFOut,s6Step192HeadGOut,s6Step192HeadFvOut,s6Step192HeadGvOut⟩

private def s6Step192EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843],795⟩

private def s6Step192EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step192EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩

private def s6Step192EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private def s6Step192FrontPair : WindowBank := ⟨s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut⟩

private def s6Step192FrontSigmaArena : Arena := ⟨s6Step192EntryGvAfter.live∪{833},Finset.union_subset s6Step192EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step192HeadFFresh : List Wire := [880]

private def s6Step192HeadFvFresh : List Wire := [863]

private def s6Step192HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192HeadGFresh : List Wire := [860]

private def s6Step192HeadGvFresh : List Wire := [838]

private def s6Step192FrontPlan : HmrSourceFront := ⟨s6Step192EntryGvAfter,s6Step192FrontPair,(growRow 795 s6Step192EntryFFresh ++ (growRow 777 s6Step192EntryGFresh ++ (growRow 776 s6Step192EntryFvFresh ++ (growRow 775 s6Step192EntryGvFresh ++ [])))),s6Step192FrontSigmaArena,[833],s6Step192HeadGBefore,[862],
  s6Step192HeadFvAfter,s6Step192FrontHead,(growRow 777 s6Step192HeadGFresh ++ (growRow 795 s6Step192HeadFFresh ++ (growRow 775 s6Step192HeadGvFresh ++ (growRow 776 s6Step192HeadFvFresh ++ [])))),s6Step192F4Plan,s6Step192CounterDuring,s6Step192CounterWork,s6Step192ExitGvAfter,s6Step192FrontOut,(shrinkRow 777 s6Step192ExitGExtra ++ (shrinkRow 795 s6Step192ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step192ExitGvExtra ++ []))))⟩

private def s6Step192CompletePlan : HmrEarlyStepPlan := ⟨s6Step192FrontPlan,s6Step192EarlyControlArena,s6Step192EarlyControlPlan,s6Step192CompleteMoves⟩

private theorem s6Step192Complete_apart : List.Disjoint (s6Step192CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [833, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step192CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[833, 862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step192Complete_owned : (s6Step192CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192Complete_repack : s6Step192ExitGvAfter.checkRepack s6Step192CompleteMoves=some s6Step192EarlyControlArena := by rfl

private theorem s6Step192EarlyControl_branchOwned : ([862] : List Wire).toFinset⊆s6Step192EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192EarlyControl_branch : compileHmrBranchRetirement s6Step192EarlyControlSigmaArena 862=some s6Step192EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step192EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step192EarlyControlSigmaArena s6Step192EarlyControlOutputArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,862),(863,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [862] rfl rfl
    decide +kernel

private theorem s6Step192EarlyControl_classEqualityBorrow : s6Step192EarlyControlPositiveArena.checkBorrow (([833, 853] : List Wire).length-1) s6Step192EarlyControlLog.classWork=some s6Step192EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step192EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step192EarlyControlEqualityArena,s6Step192EarlyControlPositiveArena,s6Step192EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step192EarlyControl_classEqualityOwned : ([833, 853] : List Wire).toFinset⊆s6Step192EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192EarlyControl_classEquality : compileHmrEqualityLog s6Step192EarlyControlPositiveArena [833, 853] 0 s6Step192EarlyControlLog.classWork=some (s6Step192EarlyControlEqualityArena,s6Step192EarlyControlLog.classWork,s6Step192EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step192EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step192EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step192EarlyControl_classOwned : ([769, 860, 833] : List Wire).toFinset⊆s6Step192EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192EarlyControl_positiveBorrow : s6Step192EarlyControlZeroArena.checkBorrow (1) s6Step192EarlyControlLog.positiveWork=some s6Step192EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step192EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step192EarlyControlPositiveArena,s6Step192EarlyControlZeroArena,s6Step192EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step192EarlyControl_class : compileHmrSourceClassLog s6Step192EarlyControlZeroArena false 769 s6Step192EarlyControlZeroPlan.top 0 833 s6Step192EarlyControlLog.positiveWork s6Step192EarlyControlLog.classWork=some s6Step192EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step192EarlyControlClassPlan s6Step192EarlyControlZeroArena false 769 s6Step192EarlyControlZeroPlan.top 0 833
  constructor
  · decide +kernel
  · exact s6Step192EarlyControl_classOwned
  · exact s6Step192EarlyControl_positiveBorrow
  · exact s6Step192EarlyControl_classEquality

private theorem s6Step192EarlyControl_entryRecordOwned : ([862, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EarlyControl_entrySigmaOwned : ([833, 254] : List Wire).toFinset⊆s6Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EarlyControl_fitBorrow : s6Step192EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step192EarlyControlLog.recordFresh=some s6Step192EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step192EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step192EarlyControlFittedArena,s6Step192EarlyControlFlagArena,s6Step192EarlyControlLog,arenaWires]

private theorem s6Step192EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step192EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192EarlyControl_fit : compileHmrRecordGrowLog s6Step192EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step192EarlyControlLog.recordFresh=some s6Step192EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step192EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step192EarlyControl_fitBorrow

private theorem s6Step192EarlyControl_flagsBorrow : s6Step192EarlyControlEqualityArena.checkBorrow (6) s6Step192EarlyControlLog.flagWork=some s6Step192EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step192EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step192EarlyControlFlagArena,s6Step192EarlyControlEqualityArena,s6Step192EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step192EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s6Step192EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192EarlyControl_flags : compileHmrFlagsLog s6Step192EarlyControlClassPlan.equalityArena s6Step192EarlyControlClassPlan.equality.top 253 252 251 s6Step192EarlyControlLog.flagWork=some s6Step192EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step192EarlyControl_flagsOwned⟩
  · exact s6Step192EarlyControl_flagsBorrow

private theorem s6Step192EarlyControl_historyBorrow : s6Step192EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step192EarlyControlLog.recordFresh=some s6Step192EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step192EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step192EarlyControlArena s6Step192EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step192EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step192EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EarlyControl_history : compileHmrRecordGrowLog s6Step192EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step192EarlyControlLog.recordFresh=some s6Step192EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step192EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step192EarlyControl_historyBorrow

private theorem s6Step192EarlyControl_sigmaOwned : ([254, 833] : List Wire).toFinset⊆s6Step192EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EarlyControl_sigmaReleaseOwned : ([833] : List Wire).toFinset⊆s6Step192EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EarlyControl_sigmaRelease : s6Step192EarlyControlHistoryArena.release {833} (fun _ => false)=some s6Step192EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step192EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step192EarlyControlHistoryArena s6Step192EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) [833] rfl rfl
    decide +kernel

private theorem s6Step192EarlyControl_sigma : compileHmrSigmaDropLog s6Step192EarlyControlHistoryArena false 0 0 254 833 []=some s6Step192EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step192EarlyControl_sigmaOwned⟩
  · exact s6Step192EarlyControl_sigmaRelease

private theorem s6Step192EarlyControl_zeroBorrow : s6Step192EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step192EarlyControlLog.zeroWork=some s6Step192EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step192EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step192EarlyControlArena s6Step192EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step192EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step192EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step192EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step192EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step192EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EarlyControl_zero : compileHmrEqualityLog s6Step192EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step192EarlyControlLog.zeroWork=some (s6Step192EarlyControlZeroArena,s6Step192EarlyControlLog.zeroWork,s6Step192EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step192EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step192EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step192EarlyControl_logged : s6Step192EarlyControlPlan.Logged s6Step192EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 862 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step192EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step192EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step192EarlyControl_zero
  · exact s6Step192EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step192EarlyControl_flags
  · exact s6Step192EarlyControl_fit
  · exact s6Step192EarlyControl_history
  · exact s6Step192EarlyControl_sigma
  · exact s6Step192EarlyControl_branch

private theorem s6Step192EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step192EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 862 43 s6Step192EarlyControlLog=some s6Step192EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step192EarlyControlPlan s6Step192EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 862 43 s6Step192EarlyControl_logged

private def s6Step192EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩

private def s6Step192EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step192EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩

private def s6Step192EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private def s6Step192FrontBank : WindowBank := ⟨s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow⟩

private def s6Step192Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843, 880, 795]

private def s6Step192Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 860, 777]

private def s6Step192Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863, 776]

private def s6Step192Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 838, 775]

private theorem s6Step192Counter_apart : Disjoint s6Step192HeadFvAfter.live s6Step192CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step192HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192Counter_borrowed : s6Step192HeadFvAfter.checkBorrow 4 s6Step192CounterWork=some s6Step192CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step192HeadFvAfter s6Step192CounterDuring s6Step192CounterWork.toFinset s6Step192Counter_bounded s6Step192Counter_apart rfl

private theorem s6Step192Counter_owned : (833::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step192HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step192HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192Counter_checked : compileHmrCounterStepLog s6Step192HeadFvAfter true 833 [774, 773, 772, 771, 770, 769] s6Step192CounterWork=some s6Step192CounterDuring := by
  have owned : ∀q∈833::[774, 773, 772, 771, 770, 769],q∈s6Step192HeadFvAfter.live := fun q hq => s6Step192Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step192Counter_borrowed

private theorem s6Step192EntryBank_incomingDistinct : ([s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192EntryF_Incoming : rowsOwned s6Step192EntryFBefore [s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow] 0 s6Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192EntryBank_outgoingOwned : rowsOwned s6Step192EntryGvAfter [s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step192EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192EntryF_Outgoing : rowsOwned s6Step192EntryGvAfter [s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut] :=
  hmrRows_owned_drop s6Step192EntryGvAfter [s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut] 0 s6Step192EntryBank_outgoingOwned

private theorem s6Step192EntryF_distinct : (s6Step192EntryFRow.sign::s6Step192EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192EntryF_owned : (s6Step192EntryFRow.sign::s6Step192EntryFRow.payload).toFinset⊆s6Step192EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EntryF_reserved : s6Step192EntryFBefore.reserve s6Step192EntryFFresh.toFinset=some s6Step192EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192EntryFFresh,arenaWires]
  · norm_num [s6Step192EntryFBefore,s6Step192EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step192EntryFBefore s6Step192EntryFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step192EntryFFresh rfl rfl
    · norm_num [s6Step192EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step192EntryF_checked : planRowResizeLog s6Step192EntryFBefore s6Step192EntryFRow 174 s6Step192EntryFFresh=
    some (s6Step192EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843],795⟩,growRow 795 s6Step192EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step192EntryFBefore s6Step192EntryFAfter s6Step192EntryFRow 174 s6Step192EntryFFresh
    s6Step192EntryF_distinct s6Step192EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192EntryF_reserved
  have rowEq : WindowRow.mk (s6Step192EntryFRow.payload++s6Step192EntryFFresh) s6Step192EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step192EntryFvAfter : Arena := s6Step192EntryFAfter

private def s6Step192EntryFvBefore : Arena := s6Step192EntryFAfter

private theorem s6Step192EntryFv_Incoming : rowsOwned s6Step192EntryFvBefore [s6Step192EntryFvRow,s6Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow] 2 s6Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192EntryFv_Outgoing : rowsOwned s6Step192EntryGvAfter [s6Step192EntryFvOut,s6Step192EntryGvOut] :=
  hmrRows_owned_drop s6Step192EntryGvAfter [s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut] 2 s6Step192EntryBank_outgoingOwned

private theorem s6Step192EntryFv_distinct : (s6Step192EntryFvRow.sign::s6Step192EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192EntryFv_owned : (s6Step192EntryFvRow.sign::s6Step192EntryFvRow.payload).toFinset⊆s6Step192EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EntryFv_reserved : s6Step192EntryFvBefore.reserve s6Step192EntryFvFresh.toFinset=some s6Step192EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192EntryFvFresh,arenaWires]
  · norm_num [s6Step192EntryFvBefore,s6Step192EntryFAfter,s6Step192EntryFvFresh,arenaWires]
  · simp only [s6Step192EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step192EntryFv_checked : planRowResizeLog s6Step192EntryFvBefore s6Step192EntryFvRow 110 s6Step192EntryFvFresh=
    some (s6Step192EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩,growRow 776 s6Step192EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step192EntryFvBefore s6Step192EntryFvAfter s6Step192EntryFvRow 110 s6Step192EntryFvFresh
    s6Step192EntryFv_distinct s6Step192EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step192EntryFvRow.payload++s6Step192EntryFvFresh) s6Step192EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step192EntryGAfter : Arena := s6Step192EntryFAfter

private def s6Step192EntryGBefore : Arena := s6Step192EntryFAfter

private theorem s6Step192EntryG_Incoming : rowsOwned s6Step192EntryGBefore [s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow] 1 s6Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192EntryG_Outgoing : rowsOwned s6Step192EntryGvAfter [s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut] :=
  hmrRows_owned_drop s6Step192EntryGvAfter [s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut] 1 s6Step192EntryBank_outgoingOwned

private theorem s6Step192EntryG_distinct : (s6Step192EntryGRow.sign::s6Step192EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192EntryG_owned : (s6Step192EntryGRow.sign::s6Step192EntryGRow.payload).toFinset⊆s6Step192EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EntryG_reserved : s6Step192EntryGBefore.reserve s6Step192EntryGFresh.toFinset=some s6Step192EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192EntryGFresh,arenaWires]
  · norm_num [s6Step192EntryGBefore,s6Step192EntryFAfter,s6Step192EntryGFresh,arenaWires]
  · simp only [s6Step192EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step192EntryG_checked : planRowResizeLog s6Step192EntryGBefore s6Step192EntryGRow 174 s6Step192EntryGFresh=
    some (s6Step192EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩,growRow 777 s6Step192EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step192EntryGBefore s6Step192EntryGAfter s6Step192EntryGRow 174 s6Step192EntryGFresh
    s6Step192EntryG_distinct s6Step192EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192EntryG_reserved
  have rowEq : WindowRow.mk (s6Step192EntryGRow.payload++s6Step192EntryGFresh) s6Step192EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step192EntryGvBefore : Arena := s6Step192EntryFAfter

private theorem s6Step192EntryGv_Incoming : rowsOwned s6Step192EntryGvBefore [s6Step192EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow] 3 s6Step192EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192EntryGv_Outgoing : rowsOwned s6Step192EntryGvAfter [s6Step192EntryGvOut] :=
  hmrRows_owned_drop s6Step192EntryGvAfter [s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut] 3 s6Step192EntryBank_outgoingOwned

private theorem s6Step192EntryGv_distinct : (s6Step192EntryGvRow.sign::s6Step192EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192EntryGv_owned : (s6Step192EntryGvRow.sign::s6Step192EntryGvRow.payload).toFinset⊆s6Step192EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192EntryGv_reserved : s6Step192EntryGvBefore.reserve s6Step192EntryGvFresh.toFinset=some s6Step192EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192EntryGvFresh,arenaWires]
  · norm_num [s6Step192EntryGvBefore,s6Step192EntryFAfter,s6Step192EntryGvFresh,arenaWires]
  · simp only [s6Step192EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step192EntryGv_checked : planRowResizeLog s6Step192EntryGvBefore s6Step192EntryGvRow 110 s6Step192EntryGvFresh=
    some (s6Step192EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩,growRow 775 s6Step192EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step192EntryGvBefore s6Step192EntryGvAfter s6Step192EntryGvRow 110 s6Step192EntryGvFresh
    s6Step192EntryGv_distinct s6Step192EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step192EntryGvRow.payload++s6Step192EntryGvFresh) s6Step192EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step192EntryBank_rows : planWindowRowsLog s6Step192EntryFBefore [(s6Step192EntryFRow,174),(s6Step192EntryGRow,174),(s6Step192EntryFvRow,110),(s6Step192EntryGvRow,110)] [s6Step192EntryFFresh,s6Step192EntryGFresh,s6Step192EntryFvFresh,s6Step192EntryGvFresh]=
    some (s6Step192EntryGvAfter,[s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut],(growRow 795 s6Step192EntryFFresh ++ (growRow 777 s6Step192EntryGFresh ++ (growRow 776 s6Step192EntryFvFresh ++ (growRow 775 s6Step192EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step192EntryGvAfter [] []=some (s6Step192EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step192EntryGvBefore s6Step192EntryGvAfter s6Step192EntryGvAfter
    s6Step192EntryGvRow s6Step192EntryGvOut 110 s6Step192EntryGvFresh [] [] []
    (growRow 775 s6Step192EntryGvFresh) ([]) s6Step192EntryGv_Incoming s6Step192EntryGv_checked h4 s6Step192EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step192EntryFvBefore s6Step192EntryFvAfter s6Step192EntryGvAfter
    s6Step192EntryFvRow s6Step192EntryFvOut 110 s6Step192EntryFvFresh [(s6Step192EntryGvRow,110)] [s6Step192EntryGvFresh] [s6Step192EntryGvOut]
    (growRow 776 s6Step192EntryFvFresh) ((growRow 775 s6Step192EntryGvFresh ++ [])) s6Step192EntryFv_Incoming s6Step192EntryFv_checked h3 s6Step192EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step192EntryGBefore s6Step192EntryGAfter s6Step192EntryGvAfter
    s6Step192EntryGRow s6Step192EntryGOut 174 s6Step192EntryGFresh [(s6Step192EntryFvRow,110),(s6Step192EntryGvRow,110)] [s6Step192EntryFvFresh,s6Step192EntryGvFresh] [s6Step192EntryFvOut,s6Step192EntryGvOut]
    (growRow 777 s6Step192EntryGFresh) ((growRow 776 s6Step192EntryFvFresh ++ (growRow 775 s6Step192EntryGvFresh ++ []))) s6Step192EntryG_Incoming s6Step192EntryG_checked h2 s6Step192EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step192EntryFBefore s6Step192EntryFAfter s6Step192EntryGvAfter
    s6Step192EntryFRow s6Step192EntryFOut 174 s6Step192EntryFFresh [(s6Step192EntryGRow,174),(s6Step192EntryFvRow,110),(s6Step192EntryGvRow,110)] [s6Step192EntryGFresh,s6Step192EntryFvFresh,s6Step192EntryGvFresh] [s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut]
    (growRow 795 s6Step192EntryFFresh) ((growRow 777 s6Step192EntryGFresh ++ (growRow 776 s6Step192EntryFvFresh ++ (growRow 775 s6Step192EntryGvFresh ++ [])))) s6Step192EntryF_Incoming s6Step192EntryF_checked h1 s6Step192EntryF_Outgoing
  exact h0

private theorem s6Step192EntryBank_checked : compileHmrBankResizeLog .entry s6Step192EntryFBefore ⟨s6Step192EntryFRow,s6Step192EntryGRow,s6Step192EntryFvRow,s6Step192EntryGvRow⟩ ⟨174,174,110,110⟩ [s6Step192EntryFFresh,s6Step192EntryGFresh,s6Step192EntryFvFresh,s6Step192EntryGvFresh]=
    some (s6Step192EntryGvAfter,⟨s6Step192EntryFOut,s6Step192EntryGOut,s6Step192EntryFvOut,s6Step192EntryGvOut⟩,(growRow 795 s6Step192EntryFFresh ++ (growRow 777 s6Step192EntryGFresh ++ (growRow 776 s6Step192EntryFvFresh ++ (growRow 775 s6Step192EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step192EntryBank_rows]
  rfl

private def s6Step192ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192ExitFBefore : Arena := s6Step192ExitGAfter

private def s6Step192ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843, 880],795⟩

private def s6Step192ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩

private def s6Step192ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 860],777⟩

private def s6Step192ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 838],775⟩

private theorem s6Step192ExitBank_incomingDistinct : ([s6Step192ExitGRow,s6Step192ExitFRow,s6Step192ExitFvRow,s6Step192ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192ExitF_Incoming : rowsOwned s6Step192ExitFBefore [s6Step192ExitFRow,s6Step192ExitFvRow,s6Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192ExitGRow,s6Step192ExitFRow,s6Step192ExitFvRow,s6Step192ExitGvRow] 1 s6Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step192ExitBank_outgoingOwned : rowsOwned s6Step192ExitGvAfter [s6Step192ExitGOut,s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step192ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192ExitF_Outgoing : rowsOwned s6Step192ExitGvAfter [s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut] :=
  hmrRows_owned_drop s6Step192ExitGvAfter [s6Step192ExitGOut,s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut] 1 s6Step192ExitBank_outgoingOwned

private theorem s6Step192ExitF_distinct : (s6Step192ExitFRow.sign::s6Step192ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192ExitF_owned : (s6Step192ExitFRow.sign::s6Step192ExitFRow.payload).toFinset⊆s6Step192ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192ExitF_retired : s6Step192ExitFBefore.retireSet s6Step192ExitFExtra.toFinset=s6Step192ExitFAfter := by
  unfold Arena.retireSet s6Step192ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step192ExitFBefore,s6Step192ExitGAfter,s6Step192ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step192ExitF_checked : planRowResizeLog s6Step192ExitFBefore s6Step192ExitFRow 173 []=
    some (s6Step192ExitFAfter,s6Step192ExitFOut,shrinkRow 795 s6Step192ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step192ExitFBefore s6Step192ExitFRow 173 s6Step192ExitF_distinct s6Step192ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step192ExitFRow.payload.take 173) s6Step192ExitFRow.sign=s6Step192ExitFOut := by decide +kernel
  have hi : s6Step192ExitFRow.payload.drop 173=s6Step192ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step192ExitF_retired] at result
  exact result

private def s6Step192ExitFvAfter : Arena := s6Step192ExitFAfter

private def s6Step192ExitFvBefore : Arena := s6Step192ExitFAfter

private theorem s6Step192ExitFv_Incoming : rowsOwned s6Step192ExitFvBefore [s6Step192ExitFvRow,s6Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192ExitGRow,s6Step192ExitFRow,s6Step192ExitFvRow,s6Step192ExitGvRow] 2 s6Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step192ExitFv_Outgoing : rowsOwned s6Step192ExitGvAfter [s6Step192ExitFvOut,s6Step192ExitGvOut] :=
  hmrRows_owned_drop s6Step192ExitGvAfter [s6Step192ExitGOut,s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut] 2 s6Step192ExitBank_outgoingOwned

private theorem s6Step192ExitFv_distinct : (s6Step192ExitFvRow.sign::s6Step192ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192ExitFv_owned : (s6Step192ExitFvRow.sign::s6Step192ExitFvRow.payload).toFinset⊆s6Step192ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192ExitFv_reserved : s6Step192ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step192ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step192ExitFv_checked : planRowResizeLog s6Step192ExitFvBefore s6Step192ExitFvRow 111 []=
    some (s6Step192ExitFvAfter,s6Step192ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step192ExitFvBefore s6Step192ExitFvAfter s6Step192ExitFvRow 111 []
    s6Step192ExitFv_distinct s6Step192ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step192ExitFvRow.payload++[]) s6Step192ExitFvRow.sign=s6Step192ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step192ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step192ExitG_Incoming : rowsOwned s6Step192ExitGBefore [s6Step192ExitGRow,s6Step192ExitFRow,s6Step192ExitFvRow,s6Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192ExitGRow,s6Step192ExitFRow,s6Step192ExitFvRow,s6Step192ExitGvRow] 0 s6Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step192ExitG_Outgoing : rowsOwned s6Step192ExitGvAfter [s6Step192ExitGOut,s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut] :=
  hmrRows_owned_drop s6Step192ExitGvAfter [s6Step192ExitGOut,s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut] 0 s6Step192ExitBank_outgoingOwned

private theorem s6Step192ExitG_distinct : (s6Step192ExitGRow.sign::s6Step192ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192ExitG_owned : (s6Step192ExitGRow.sign::s6Step192ExitGRow.payload).toFinset⊆s6Step192ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192ExitG_retired : s6Step192ExitGBefore.retireSet s6Step192ExitGExtra.toFinset=s6Step192ExitGAfter := by
  unfold Arena.retireSet s6Step192ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step192ExitGBefore,s6Step192ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step192ExitG_checked : planRowResizeLog s6Step192ExitGBefore s6Step192ExitGRow 173 []=
    some (s6Step192ExitGAfter,s6Step192ExitGOut,shrinkRow 777 s6Step192ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step192ExitGBefore s6Step192ExitGRow 173 s6Step192ExitG_distinct s6Step192ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step192ExitGRow.payload.take 173) s6Step192ExitGRow.sign=s6Step192ExitGOut := by decide +kernel
  have hi : s6Step192ExitGRow.payload.drop 173=s6Step192ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step192ExitG_retired] at result
  exact result

private def s6Step192ExitGvBefore : Arena := s6Step192ExitFAfter

private theorem s6Step192ExitGv_Incoming : rowsOwned s6Step192ExitGvBefore [s6Step192ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192ExitGRow,s6Step192ExitFRow,s6Step192ExitFvRow,s6Step192ExitGvRow] 3 s6Step192ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step192ExitGv_Outgoing : rowsOwned s6Step192ExitGvAfter [s6Step192ExitGvOut] :=
  hmrRows_owned_drop s6Step192ExitGvAfter [s6Step192ExitGOut,s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut] 3 s6Step192ExitBank_outgoingOwned

private theorem s6Step192ExitGv_distinct : (s6Step192ExitGvRow.sign::s6Step192ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192ExitGv_owned : (s6Step192ExitGvRow.sign::s6Step192ExitGvRow.payload).toFinset⊆s6Step192ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192ExitGv_retired : s6Step192ExitGvBefore.retireSet s6Step192ExitGvExtra.toFinset=s6Step192ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step192ExitGvBefore s6Step192ExitGvAfter s6Step192ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step192ExitGvBefore s6Step192ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (844≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (855≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(855,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step192ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step192ExitGv_checked : planRowResizeLog s6Step192ExitGvBefore s6Step192ExitGvRow 110 []=
    some (s6Step192ExitGvAfter,s6Step192ExitGvOut,shrinkRow 775 s6Step192ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step192ExitGvBefore s6Step192ExitGvRow 110 s6Step192ExitGv_distinct s6Step192ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step192ExitGvRow.payload.take 110) s6Step192ExitGvRow.sign=s6Step192ExitGvOut := by decide +kernel
  have hi : s6Step192ExitGvRow.payload.drop 110=s6Step192ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step192ExitGv_retired] at result
  exact result

private theorem s6Step192ExitBank_rows : planWindowRowsLog s6Step192ExitGBefore [(s6Step192ExitGRow,173),(s6Step192ExitFRow,173),(s6Step192ExitFvRow,111),(s6Step192ExitGvRow,110)] [[],[],[],[]]=
    some (s6Step192ExitGvAfter,[s6Step192ExitGOut,s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut],(shrinkRow 777 s6Step192ExitGExtra ++ (shrinkRow 795 s6Step192ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step192ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step192ExitGvAfter [] []=some (s6Step192ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step192ExitGvBefore s6Step192ExitGvAfter s6Step192ExitGvAfter
    s6Step192ExitGvRow s6Step192ExitGvOut 110 [] [] [] []
    (shrinkRow 775 s6Step192ExitGvExtra) ([]) s6Step192ExitGv_Incoming s6Step192ExitGv_checked h4 s6Step192ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step192ExitFvBefore s6Step192ExitFvAfter s6Step192ExitGvAfter
    s6Step192ExitFvRow s6Step192ExitFvOut 111 [] [(s6Step192ExitGvRow,110)] [[]] [s6Step192ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step192ExitGvExtra ++ [])) s6Step192ExitFv_Incoming s6Step192ExitFv_checked h3 s6Step192ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step192ExitFBefore s6Step192ExitFAfter s6Step192ExitGvAfter
    s6Step192ExitFRow s6Step192ExitFOut 173 [] [(s6Step192ExitFvRow,111),(s6Step192ExitGvRow,110)] [[],[]] [s6Step192ExitFvOut,s6Step192ExitGvOut]
    (shrinkRow 795 s6Step192ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step192ExitGvExtra ++ []))) s6Step192ExitF_Incoming s6Step192ExitF_checked h2 s6Step192ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step192ExitGBefore s6Step192ExitGAfter s6Step192ExitGvAfter
    s6Step192ExitGRow s6Step192ExitGOut 173 [] [(s6Step192ExitFRow,173),(s6Step192ExitFvRow,111),(s6Step192ExitGvRow,110)] [[],[],[]] [s6Step192ExitFOut,s6Step192ExitFvOut,s6Step192ExitGvOut]
    (shrinkRow 777 s6Step192ExitGExtra) ((shrinkRow 795 s6Step192ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step192ExitGvExtra ++ [])))) s6Step192ExitG_Incoming s6Step192ExitG_checked h1 s6Step192ExitG_Outgoing
  exact h0

private theorem s6Step192ExitBank_checked : compileHmrBankResizeLog .exit s6Step192ExitGBefore ⟨s6Step192ExitFRow,s6Step192ExitGRow,s6Step192ExitFvRow,s6Step192ExitGvRow⟩ ⟨173,173,111,110⟩ [[],[],[],[]]=
    some (s6Step192ExitGvAfter,⟨s6Step192ExitFOut,s6Step192ExitGOut,s6Step192ExitFvOut,s6Step192ExitGvOut⟩,(shrinkRow 777 s6Step192ExitGExtra ++ (shrinkRow 795 s6Step192ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step192ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step192ExitBank_rows]
  rfl

private theorem s6Step192Add0_apart : Disjoint s6Step192Add0Arena.live s6Step192Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step192Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192Add0_card : s6Step192Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step192Add0_borrowed : s6Step192Add0Arena.checkBorrow (hmrHybridCount s6Step192Add0Arena s6Step192Add0B.length) s6Step192Add0Work=some s6Step192Add0During := by
  have len : s6Step192Add0Work.length=hmrHybridCount s6Step192Add0Arena s6Step192Add0B.length := by
    rw [hmrHybridCount,s6Step192Add0_card]
    decide +kernel
  have nd : s6Step192Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step192Add0Arena s6Step192Add0During s6Step192Add0Work.toFinset s6Step192Add0_bounded s6Step192Add0_apart rfl

private theorem s6Step192Add0_distinct : (853::862::907::(s6Step192Add0A++s6Step192Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192Add0_owned : (853::862::907::(s6Step192Add0A++s6Step192Add0B)).toFinset⊆s6Step192Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step192Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192Add0_checked : compileHmrHybridCinLog s6Step192Add0Arena 862 853 907 s6Step192Add0A s6Step192Add0B s6Step192Add0Work=some s6Step192Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step192Add0Arena s6Step192Add0During 862 853 907 s6Step192Add0A s6Step192Add0B s6Step192Add0Work
    (by decide +kernel) (by decide +kernel) s6Step192Add0_distinct
    (fun q hq => s6Step192Add0_owned (List.mem_toFinset.mpr hq)) s6Step192Add0_borrowed

private theorem s6Step192Add1_apart : Disjoint s6Step192Add1Arena.live s6Step192Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step192Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192Add1_card : s6Step192Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step192Add1_borrowed : s6Step192Add1Arena.checkBorrow (hmrHybridCount s6Step192Add1Arena s6Step192Add1B.length) s6Step192Add1Work=some s6Step192Add1During := by
  have len : s6Step192Add1Work.length=hmrHybridCount s6Step192Add1Arena s6Step192Add1B.length := by
    rw [hmrHybridCount,s6Step192Add1_card]
    decide +kernel
  have nd : s6Step192Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step192Add1Arena s6Step192Add1During s6Step192Add1Work.toFinset s6Step192Add1_bounded s6Step192Add1_apart rfl

private theorem s6Step192Add1_distinct : (853::862::907::(s6Step192Add1A++s6Step192Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192Add1_owned : (853::862::907::(s6Step192Add1A++s6Step192Add1B)).toFinset⊆s6Step192Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step192Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192Add1_checked : compileHmrHybridCinLog s6Step192Add1Arena 862 853 907 s6Step192Add1A s6Step192Add1B s6Step192Add1Work=some s6Step192Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step192Add1Arena s6Step192Add1During 862 853 907 s6Step192Add1A s6Step192Add1B s6Step192Add1Work
    (by decide +kernel) (by decide +kernel) s6Step192Add1_distinct
    (fun q hq => s6Step192Add1_owned (List.mem_toFinset.mpr hq)) s6Step192Add1_borrowed

private theorem s6Step192F4_apart : Disjoint (s6Step192Add0A++s6Step192Add0B).toFinset (s6Step192Add1A++s6Step192Add1B).toFinset := by
  have nd : ((s6Step192Add0A++s6Step192Add0B)++(s6Step192Add1A++s6Step192Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step192F4_carry : s6Step192F4FlagArena.checkBorrow 1 [907]=some s6Step192Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step192F4FlagArena,s6Step192HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step192F4FlagArena,s6Step192HeadFvAfter,s6Step192Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step192F4_distinct : (833::862::853::907::((s6Step192Add0A++s6Step192Add1A)++(s6Step192Add0B++s6Step192Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192F4_flag : s6Step192HeadFvAfter.checkBorrow 1 [853]=some s6Step192F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step192HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step192F4_owned : (833::862::((s6Step192Add0A++s6Step192Add1A)++(s6Step192Add0B++s6Step192Add1B))).toFinset⊆s6Step192HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step192HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192F4_checked : compileHmrHybridF4Log s6Step192HeadFvAfter 833 862 s6Step192Add0A s6Step192Add0B s6Step192Add1A s6Step192Add1B [853] [907] s6Step192Add0Work s6Step192Add1Work=some s6Step192F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step192HeadFvAfter s6Step192F4FlagArena s6Step192Add0Arena s6Step192Add0During s6Step192Add1During 833 862
    s6Step192Add0A s6Step192Add0B s6Step192Add1A s6Step192Add1B [853] [907] s6Step192Add0Work s6Step192Add1Work
    (fun q hq => s6Step192F4_owned (List.mem_toFinset.mpr hq)) s6Step192F4_flag s6Step192F4_carry
    s6Step192F4_distinct s6Step192F4_apart s6Step192Add0_checked s6Step192Add1_checked

private theorem s6Step192Front_branch : s6Step192FrontSigmaArena.checkBorrow 1 [862]=some s6Step192HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step192FrontSigmaArena,s6Step192EntryGvAfter,s6Step192EntryFAfter,arenaWires]
  · change s6Step192HeadGBefore.live=(s6Step192EntryGvAfter.live∪{833})∪{862}
    apply hmrArena_union_pair_of_filter_check s6Step192EntryGvAfter s6Step192HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 833 862 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step192Front_entry : HmrFrontEntryValid s6Step192EntryFBefore s6Step192FrontBank 174 110 ⟨173,173,111,110⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step192FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step192EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step192EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step192FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step192Front_sigma : s6Step192EntryGvAfter.checkBorrow 1 [833]=some s6Step192FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step192EntryGvAfter,s6Step192EntryFAfter,arenaWires]
  · rfl

private def s6Step192HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step192HeadFBefore : Arena := s6Step192HeadGAfter

private def s6Step192HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843],795⟩

private def s6Step192HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step192HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩

private def s6Step192HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private theorem s6Step192HeadBank_incomingDistinct : ([s6Step192HeadGRow,s6Step192HeadFRow,s6Step192HeadGvRow,s6Step192HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192HeadF_Incoming : rowsOwned s6Step192HeadFBefore [s6Step192HeadFRow,s6Step192HeadGvRow,s6Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192HeadGRow,s6Step192HeadFRow,s6Step192HeadGvRow,s6Step192HeadFvRow] 1 s6Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192HeadBank_outgoingOwned : rowsOwned s6Step192HeadFvAfter [s6Step192HeadGOut,s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step192HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step192HeadF_Outgoing : rowsOwned s6Step192HeadFvAfter [s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut] :=
  hmrRows_owned_drop s6Step192HeadFvAfter [s6Step192HeadGOut,s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut] 1 s6Step192HeadBank_outgoingOwned

private theorem s6Step192HeadF_distinct : (s6Step192HeadFRow.sign::s6Step192HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192HeadF_owned : (s6Step192HeadFRow.sign::s6Step192HeadFRow.payload).toFinset⊆s6Step192HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192HeadF_reserved : s6Step192HeadFBefore.reserve s6Step192HeadFFresh.toFinset=some s6Step192HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192HeadFFresh,arenaWires]
  · norm_num [s6Step192HeadFBefore,s6Step192HeadGAfter,s6Step192HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step192HeadFBefore s6Step192HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step192HeadFFresh rfl rfl
    · norm_num [s6Step192HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step192HeadF_checked : planRowResizeLog s6Step192HeadFBefore s6Step192HeadFRow 175 s6Step192HeadFFresh=
    some (s6Step192HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843, 880],795⟩,growRow 795 s6Step192HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step192HeadFBefore s6Step192HeadFAfter s6Step192HeadFRow 175 s6Step192HeadFFresh
    s6Step192HeadF_distinct s6Step192HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192HeadF_reserved
  have rowEq : WindowRow.mk (s6Step192HeadFRow.payload++s6Step192HeadFFresh) s6Step192HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 843, 880],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step192HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step192HeadFvBefore : Arena := s6Step192HeadGvAfter

private theorem s6Step192HeadFv_Incoming : rowsOwned s6Step192HeadFvBefore [s6Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192HeadGRow,s6Step192HeadFRow,s6Step192HeadGvRow,s6Step192HeadFvRow] 3 s6Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step192HeadFv_Outgoing : rowsOwned s6Step192HeadFvAfter [s6Step192HeadFvOut] :=
  hmrRows_owned_drop s6Step192HeadFvAfter [s6Step192HeadGOut,s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut] 3 s6Step192HeadBank_outgoingOwned

private theorem s6Step192HeadFv_distinct : (s6Step192HeadFvRow.sign::s6Step192HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192HeadFv_owned : (s6Step192HeadFvRow.sign::s6Step192HeadFvRow.payload).toFinset⊆s6Step192HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192HeadFv_reserved : s6Step192HeadFvBefore.reserve s6Step192HeadFvFresh.toFinset=some s6Step192HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192HeadFvFresh,arenaWires]
  · norm_num [s6Step192HeadFvBefore,s6Step192HeadGvAfter,s6Step192HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step192HeadFvAfter,s6Step192HeadFvBefore,s6Step192HeadGvAfter,s6Step192HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step192HeadFv_checked : planRowResizeLog s6Step192HeadFvBefore s6Step192HeadFvRow 111 s6Step192HeadFvFresh=
    some (s6Step192HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩,growRow 776 s6Step192HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step192HeadFvBefore s6Step192HeadFvAfter s6Step192HeadFvRow 111 s6Step192HeadFvFresh
    s6Step192HeadFv_distinct s6Step192HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step192HeadFvRow.payload++s6Step192HeadFvFresh) s6Step192HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 863],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step192HeadG_Incoming : rowsOwned s6Step192HeadGBefore [s6Step192HeadGRow,s6Step192HeadFRow,s6Step192HeadGvRow,s6Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192HeadGRow,s6Step192HeadFRow,s6Step192HeadGvRow,s6Step192HeadFvRow] 0 s6Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step192HeadG_Outgoing : rowsOwned s6Step192HeadFvAfter [s6Step192HeadGOut,s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut] :=
  hmrRows_owned_drop s6Step192HeadFvAfter [s6Step192HeadGOut,s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut] 0 s6Step192HeadBank_outgoingOwned

private theorem s6Step192HeadG_distinct : (s6Step192HeadGRow.sign::s6Step192HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192HeadG_owned : (s6Step192HeadGRow.sign::s6Step192HeadGRow.payload).toFinset⊆s6Step192HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step192HeadG_reserved : s6Step192HeadGBefore.reserve s6Step192HeadGFresh.toFinset=some s6Step192HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192HeadGFresh,arenaWires]
  · norm_num [s6Step192HeadGBefore,s6Step192HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step192HeadGBefore s6Step192HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step192HeadGFresh rfl rfl
    · norm_num [s6Step192HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step192HeadG_checked : planRowResizeLog s6Step192HeadGBefore s6Step192HeadGRow 175 s6Step192HeadGFresh=
    some (s6Step192HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 860],777⟩,growRow 777 s6Step192HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step192HeadGBefore s6Step192HeadGAfter s6Step192HeadGRow 175 s6Step192HeadGFresh
    s6Step192HeadG_distinct s6Step192HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192HeadG_reserved
  have rowEq : WindowRow.mk (s6Step192HeadGRow.payload++s6Step192HeadGFresh) s6Step192HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step192HeadGvBefore : Arena := s6Step192HeadFAfter

private theorem s6Step192HeadGv_Incoming : rowsOwned s6Step192HeadGvBefore [s6Step192HeadGvRow,s6Step192HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step192HeadGRow,s6Step192HeadFRow,s6Step192HeadGvRow,s6Step192HeadFvRow] 2 s6Step192HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step192HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step192HeadGv_Outgoing : rowsOwned s6Step192HeadFvAfter [s6Step192HeadGvOut,s6Step192HeadFvOut] :=
  hmrRows_owned_drop s6Step192HeadFvAfter [s6Step192HeadGOut,s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut] 2 s6Step192HeadBank_outgoingOwned

private theorem s6Step192HeadGv_distinct : (s6Step192HeadGvRow.sign::s6Step192HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step192HeadGv_owned : (s6Step192HeadGvRow.sign::s6Step192HeadGvRow.payload).toFinset⊆s6Step192HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step192HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step192HeadGv_reserved : s6Step192HeadGvBefore.reserve s6Step192HeadGvFresh.toFinset=some s6Step192HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step192HeadGvFresh,arenaWires]
  · norm_num [s6Step192HeadGvBefore,s6Step192HeadFAfter,s6Step192HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step192HeadGvAfter,s6Step192HeadGvBefore,s6Step192HeadFAfter,s6Step192HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step192HeadGv_checked : planRowResizeLog s6Step192HeadGvBefore s6Step192HeadGvRow 111 s6Step192HeadGvFresh=
    some (s6Step192HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 838],775⟩,growRow 775 s6Step192HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step192HeadGvBefore s6Step192HeadGvAfter s6Step192HeadGvRow 111 s6Step192HeadGvFresh
    s6Step192HeadGv_distinct s6Step192HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step192HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step192HeadGvRow.payload++s6Step192HeadGvFresh) s6Step192HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 838],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step192HeadBank_rows : planWindowRowsLog s6Step192HeadGBefore [(s6Step192HeadGRow,175),(s6Step192HeadFRow,175),(s6Step192HeadGvRow,111),(s6Step192HeadFvRow,111)] [s6Step192HeadGFresh,s6Step192HeadFFresh,s6Step192HeadGvFresh,s6Step192HeadFvFresh]=
    some (s6Step192HeadFvAfter,[s6Step192HeadGOut,s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut],(growRow 777 s6Step192HeadGFresh ++ (growRow 795 s6Step192HeadFFresh ++ (growRow 775 s6Step192HeadGvFresh ++ (growRow 776 s6Step192HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step192HeadFvAfter [] []=some (s6Step192HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step192HeadFvBefore s6Step192HeadFvAfter s6Step192HeadFvAfter
    s6Step192HeadFvRow s6Step192HeadFvOut 111 s6Step192HeadFvFresh [] [] []
    (growRow 776 s6Step192HeadFvFresh) ([]) s6Step192HeadFv_Incoming s6Step192HeadFv_checked h4 s6Step192HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step192HeadGvBefore s6Step192HeadGvAfter s6Step192HeadFvAfter
    s6Step192HeadGvRow s6Step192HeadGvOut 111 s6Step192HeadGvFresh [(s6Step192HeadFvRow,111)] [s6Step192HeadFvFresh] [s6Step192HeadFvOut]
    (growRow 775 s6Step192HeadGvFresh) ((growRow 776 s6Step192HeadFvFresh ++ [])) s6Step192HeadGv_Incoming s6Step192HeadGv_checked h3 s6Step192HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step192HeadFBefore s6Step192HeadFAfter s6Step192HeadFvAfter
    s6Step192HeadFRow s6Step192HeadFOut 175 s6Step192HeadFFresh [(s6Step192HeadGvRow,111),(s6Step192HeadFvRow,111)] [s6Step192HeadGvFresh,s6Step192HeadFvFresh] [s6Step192HeadGvOut,s6Step192HeadFvOut]
    (growRow 795 s6Step192HeadFFresh) ((growRow 775 s6Step192HeadGvFresh ++ (growRow 776 s6Step192HeadFvFresh ++ []))) s6Step192HeadF_Incoming s6Step192HeadF_checked h2 s6Step192HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step192HeadGBefore s6Step192HeadGAfter s6Step192HeadFvAfter
    s6Step192HeadGRow s6Step192HeadGOut 175 s6Step192HeadGFresh [(s6Step192HeadFRow,175),(s6Step192HeadGvRow,111),(s6Step192HeadFvRow,111)] [s6Step192HeadFFresh,s6Step192HeadGvFresh,s6Step192HeadFvFresh] [s6Step192HeadFOut,s6Step192HeadGvOut,s6Step192HeadFvOut]
    (growRow 777 s6Step192HeadGFresh) ((growRow 795 s6Step192HeadFFresh ++ (growRow 775 s6Step192HeadGvFresh ++ (growRow 776 s6Step192HeadFvFresh ++ [])))) s6Step192HeadG_Incoming s6Step192HeadG_checked h1 s6Step192HeadG_Outgoing
  exact h0

private theorem s6Step192HeadBank_checked : compileHmrBankResizeLog .headroom s6Step192HeadGBefore ⟨s6Step192HeadFRow,s6Step192HeadGRow,s6Step192HeadFvRow,s6Step192HeadGvRow⟩ ⟨175,175,111,111⟩ [s6Step192HeadGFresh,s6Step192HeadFFresh,s6Step192HeadGvFresh,s6Step192HeadFvFresh]=
    some (s6Step192HeadFvAfter,⟨s6Step192HeadFOut,s6Step192HeadGOut,s6Step192HeadFvOut,s6Step192HeadGvOut⟩,(growRow 777 s6Step192HeadGFresh ++ (growRow 795 s6Step192HeadFFresh ++ (growRow 775 s6Step192HeadGvFresh ++ (growRow 776 s6Step192HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step192HeadBank_rows]
  rfl

private theorem s6Step192Front_checked : compileHmrSourceFrontLog s6Step192EntryFBefore s6Step192FrontBank 174 110 ⟨173,173,111,110⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step192FrontLog=some s6Step192FrontPlan := by
  have pairEq : s6Step192FrontPair=⟨s6Step192HeadFRow,s6Step192HeadGRow,s6Step192HeadFvRow,s6Step192HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step192FrontHead=⟨s6Step192ExitFRow,s6Step192ExitGRow,s6Step192ExitFvRow,s6Step192ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step192Add0A=s6Step192FrontHead.f.wires := by decide +kernel
  have gEq : s6Step192Add0B=s6Step192FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step192Add1A=s6Step192FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step192Add1B=s6Step192FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step192EntryFBefore s6Step192FrontBank 174 110 ⟨173,173,111,110⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step192FrontLog s6Step192FrontPlan
  · exact s6Step192Front_entry
  · exact s6Step192EntryBank_checked
  · exact s6Step192Front_sigma
  · rfl
  · exact s6Step192Front_branch
  · rfl
  · simpa only [s6Step192FrontPlan,pairEq] using s6Step192HeadBank_checked
  · simpa only [s6Step192FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step192F4_checked
  · exact s6Step192Counter_checked
  · rfl
  · simpa only [s6Step192FrontPlan,headEq] using s6Step192ExitBank_checked

private theorem s6Step192Complete_explicit_checked : compileHmrEarlyStepLog s6Step192EntryFBefore s6Step192FrontBank 174 110 ⟨173,173,111,110⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step192CompleteLog=some s6Step192CompletePlan := by
  let Q := s6Step192EarlyControlPlan
  have hq := s6Step192EarlyControl_plan_checked
  have fv1 : s6Step192CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step192CompleteOut.fv.payload[2]?.getD s6Step192CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step192CompleteOut.fv.payload[3]?.getD s6Step192CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step192CompleteOut.fv.payload[4]?.getD s6Step192CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step192EntryFBefore s6Step192EarlyControlArena s6Step192FrontBank 174 110 ⟨173,173,111,110⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step192CompleteLog s6Step192FrontPlan Q
    s6Step192Front_checked s6Step192Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step192Complete_owned s6Step192Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step192EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 s6Step192CompleteOut.fv.second (s6Step192CompleteOut.fv.payload[2]?.getD s6Step192CompleteOut.fv.sign) (s6Step192CompleteOut.fv.payload[3]?.getD s6Step192CompleteOut.fv.sign) (s6Step192CompleteOut.fv.payload[4]?.getD s6Step192CompleteOut.fv.sign) 862 43 s6Step192EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep192Arena : Arena := s6Step192EntryFBefore
def s6PrivateStep192Bank : WindowBank := s6Step192FrontBank
def s6PrivateStep192Spec : HmrSourceWalkStepLog := ⟨174,110,⟨173,173,111,110⟩,43,.early s6Step192CompleteLog⟩
def s6PrivateStep192Plan : HmrSourceStepPlan := .early s6Step192CompletePlan
theorem s6PrivateStep192_source : s6PrivateStep192Spec=s6ObservedLogs192[0] := rfl
theorem s6PrivateStep192_checked : compileHmrSourceStepLog s6PrivateStep192Arena s6PrivateStep192Bank
    s6PrivateStep192Spec.fgWidth s6PrivateStep192Spec.vWidth s6PrivateStep192Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 192 s6PrivateStep192Spec.need none s6PrivateStep192Spec.log=some s6PrivateStep192Plan := by
  change compileHmrSourceStepLog s6Step192EntryFBefore s6Step192FrontBank 174 110 ⟨173,173,111,110⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 192 43 none (.early s6Step192CompleteLog)=some (.early s6Step192CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 192<498)]
  rw [s6Step192Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
