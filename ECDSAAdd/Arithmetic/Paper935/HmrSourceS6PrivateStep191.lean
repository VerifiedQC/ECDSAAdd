import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep189
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

private def s6Step191CompleteMoves : List (Wire × Wire) := [(862,429)]

private def s6Step191EarlyControlLog : HmrEarlyControlLog := ⟨[862, 860, 880, 838, 863],[853],[907],[891, 903, 791, 825, 810, 923],[]⟩

private def s6Step191FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [854], [], [821]],[[863], [838], [860], [880]],[[], [], [], []]⟩,[833],[843],[853],[907],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903]⟩

private def s6Step191CompleteLog : HmrEarlyStepLog := ⟨s6Step191FrontLog,s6Step191CompleteMoves,s6Step191EarlyControlLog⟩

private def s6Step191ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428],795⟩

private def s6Step191ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step191ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩

private def s6Step191ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private def s6Step191FrontOut : WindowBank := ⟨s6Step191ExitFOut,s6Step191ExitGOut,s6Step191ExitFvOut,s6Step191ExitGvOut⟩

private def s6Step191CompleteOut : WindowBank := s6Step191FrontOut.repacked s6Step191CompleteMoves

private def s6Step191EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step191EarlyControlPositiveArena,[853],s6Step191EarlyControlEqualityArena,[907],⟨⟨833,false⟩,[⟨⟨853,false⟩,907⟩]⟩⟩

private def s6Step191EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,862⟩,⟨⟨772,false⟩,860⟩,⟨⟨771,false⟩,880⟩,⟨⟨770,false⟩,838⟩,⟨⟨769,false⟩,863⟩]⟩

private def s6Step191EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step191EarlyControlZeroArena,s6Step191EarlyControlZeroPlan,s6Step191EarlyControlClassPlan,s6Step191EarlyControlFlagArena,s6Step191EarlyControlFittedArena,s6Step191EarlyControlHistoryArena,s6Step191EarlyControlSigmaArena,s6Step191EarlyControlOutputArena,s6Step191EarlyControlLog⟩

private def s6Step191CounterWork : List Wire := [853, 907, 891, 903]

private theorem s6Step191Counter_bounded : s6Step191CounterWork.toFinset⊆arenaWires := by norm_num [s6Step191CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step191HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191CounterDuring : Arena := ⟨s6Step191HeadFvAfter.live∪s6Step191CounterWork.toFinset,Finset.union_subset s6Step191HeadFvAfter.bounded s6Step191Counter_bounded⟩

private def s6Step191EntryFFresh : List Wire := []

private def s6Step191EntryFvFresh : List Wire := []

private def s6Step191EntryGFresh : List Wire := [854]

private def s6Step191EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191EntryGvFresh : List Wire := [821]

private def s6Step191ExitFExtra : List Wire := [429, 838]

private def s6Step191ExitFvExtra : List Wire := [880]

private def s6Step191ExitGExtra : List Wire := [863]

private def s6Step191ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191ExitGvExtra : List Wire := [860]

private def s6Step191Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step191Add0_bounded : s6Step191Add0Work.toFinset⊆arenaWires := by
  have h : s6Step191Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step191Add0During : Arena := ⟨s6Step191Add0Arena.live∪s6Step191Add0Work.toFinset,Finset.union_subset s6Step191Add0Arena.bounded s6Step191Add0_bounded⟩

private def s6Step191Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step191Add1_bounded : s6Step191Add1Work.toFinset⊆arenaWires := by
  have h : s6Step191Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step191Add1During : Arena := ⟨s6Step191Add1Arena.live∪s6Step191Add1Work.toFinset,Finset.union_subset s6Step191Add1Arena.bounded s6Step191Add1_bounded⟩

private def s6Step191F4FlagArena : Arena := ⟨s6Step191HeadFvAfter.live∪{853},Finset.union_subset s6Step191HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step191F4Plan : HmrHybridF4Plan := ⟨s6Step191F4FlagArena,[853],s6Step191Add0Arena,[907],s6Step191Add0During,s6Step191Add0Work,s6Step191Add1During,s6Step191Add1Work⟩

private def s6Step191HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 838],795⟩

private def s6Step191HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 880],776⟩

private def s6Step191HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 863],777⟩

private def s6Step191HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 860],775⟩

private def s6Step191FrontHead : WindowBank := ⟨s6Step191HeadFOut,s6Step191HeadGOut,s6Step191HeadFvOut,s6Step191HeadGvOut⟩

private def s6Step191EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429],795⟩

private def s6Step191EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step191EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩

private def s6Step191EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private def s6Step191FrontPair : WindowBank := ⟨s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut⟩

private def s6Step191FrontSigmaArena : Arena := ⟨s6Step191EntryGvAfter.live∪{833},Finset.union_subset s6Step191EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step191HeadFFresh : List Wire := [838]

private def s6Step191HeadFvFresh : List Wire := [880]

private def s6Step191HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191HeadGFresh : List Wire := [863]

private def s6Step191HeadGvFresh : List Wire := [860]

private def s6Step191FrontPlan : HmrSourceFront := ⟨s6Step191EntryGvAfter,s6Step191FrontPair,(growRow 795 s6Step191EntryFFresh ++ (growRow 777 s6Step191EntryGFresh ++ (growRow 776 s6Step191EntryFvFresh ++ (growRow 775 s6Step191EntryGvFresh ++ [])))),s6Step191FrontSigmaArena,[833],s6Step191HeadGBefore,[843],
  s6Step191HeadFvAfter,s6Step191FrontHead,(growRow 777 s6Step191HeadGFresh ++ (growRow 795 s6Step191HeadFFresh ++ (growRow 775 s6Step191HeadGvFresh ++ (growRow 776 s6Step191HeadFvFresh ++ [])))),s6Step191F4Plan,s6Step191CounterDuring,s6Step191CounterWork,s6Step191ExitGvAfter,s6Step191FrontOut,(shrinkRow 777 s6Step191ExitGExtra ++ (shrinkRow 795 s6Step191ExitFExtra ++ (shrinkRow 776 s6Step191ExitFvExtra ++ (shrinkRow 775 s6Step191ExitGvExtra ++ []))))⟩

private def s6Step191CompletePlan : HmrEarlyStepPlan := ⟨s6Step191FrontPlan,s6Step191EarlyControlArena,s6Step191EarlyControlPlan,s6Step191CompleteMoves⟩

private theorem s6Step191Complete_apart : List.Disjoint (s6Step191CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [833, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step191CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[833, 843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step191Complete_owned : (s6Step191CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step191CompleteRelocationMove0Borrowed : Arena := ⟨s6Step191ExitGvAfter.live∪{429},Finset.union_subset s6Step191ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step191CompleteRelocation_move0_owned : 862∈s6Step191ExitGvAfter.live := by norm_num [s6Step191ExitGvAfter,arenaWires]

private theorem s6Step191CompleteRelocation_move0_reserve : s6Step191ExitGvAfter.reserve {429}=some s6Step191CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step191ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step191CompleteRelocation_move0_retire : s6Step191CompleteRelocationMove0Borrowed.retireSet {862}=s6Step191EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step191CompleteRelocationMove0Borrowed s6Step191EarlyControlArena {862}
  change s6Step191EarlyControlArena.live=(s6Step191ExitGvAfter.live∪{429})\{862}
  apply hmrArena_update_of_filter_check s6Step191ExitGvAfter s6Step191EarlyControlArena (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [429] [862] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step191CompleteRelocation_checked : s6Step191ExitGvAfter.checkRepack [(862,429)]=some s6Step191EarlyControlArena := by
  have tail1 : s6Step191EarlyControlArena.checkRepack []=some s6Step191EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step191ExitGvAfter s6Step191CompleteRelocationMove0Borrowed s6Step191EarlyControlArena s6Step191EarlyControlArena 862 429 []
    s6Step191CompleteRelocation_move0_owned s6Step191CompleteRelocation_move0_reserve s6Step191CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step191Complete_repack : s6Step191ExitGvAfter.checkRepack s6Step191CompleteMoves=some s6Step191EarlyControlArena := by
  simpa only [s6Step191CompleteMoves] using s6Step191CompleteRelocation_checked

private theorem s6Step191EarlyControl_branchOwned : ([843] : List Wire).toFinset⊆s6Step191EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EarlyControl_branch : compileHmrBranchRetirement s6Step191EarlyControlSigmaArena 843=some s6Step191EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step191EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step191EarlyControlSigmaArena s6Step191EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [843] rfl rfl
    decide +kernel

private theorem s6Step191EarlyControl_classEqualityBorrow : s6Step191EarlyControlPositiveArena.checkBorrow (([833, 853] : List Wire).length-1) s6Step191EarlyControlLog.classWork=some s6Step191EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step191EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step191EarlyControlEqualityArena,s6Step191EarlyControlPositiveArena,s6Step191EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step191EarlyControl_classEqualityOwned : ([833, 853] : List Wire).toFinset⊆s6Step191EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191EarlyControl_classEquality : compileHmrEqualityLog s6Step191EarlyControlPositiveArena [833, 853] 0 s6Step191EarlyControlLog.classWork=some (s6Step191EarlyControlEqualityArena,s6Step191EarlyControlLog.classWork,s6Step191EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step191EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step191EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step191EarlyControl_classOwned : ([769, 863, 833] : List Wire).toFinset⊆s6Step191EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191EarlyControl_positiveBorrow : s6Step191EarlyControlZeroArena.checkBorrow (1) s6Step191EarlyControlLog.positiveWork=some s6Step191EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step191EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step191EarlyControlPositiveArena,s6Step191EarlyControlZeroArena,s6Step191EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step191EarlyControl_class : compileHmrSourceClassLog s6Step191EarlyControlZeroArena false 769 s6Step191EarlyControlZeroPlan.top 0 833 s6Step191EarlyControlLog.positiveWork s6Step191EarlyControlLog.classWork=some s6Step191EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step191EarlyControlClassPlan s6Step191EarlyControlZeroArena false 769 s6Step191EarlyControlZeroPlan.top 0 833
  constructor
  · decide +kernel
  · exact s6Step191EarlyControl_classOwned
  · exact s6Step191EarlyControl_positiveBorrow
  · exact s6Step191EarlyControl_classEquality

private theorem s6Step191EarlyControl_entryRecordOwned : ([843, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EarlyControl_entrySigmaOwned : ([833, 254] : List Wire).toFinset⊆s6Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EarlyControl_fitBorrow : s6Step191EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step191EarlyControlLog.recordFresh=some s6Step191EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step191EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step191EarlyControlFittedArena,s6Step191EarlyControlFlagArena,s6Step191EarlyControlLog,arenaWires]

private theorem s6Step191EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step191EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191EarlyControl_fit : compileHmrRecordGrowLog s6Step191EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step191EarlyControlLog.recordFresh=some s6Step191EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step191EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step191EarlyControl_fitBorrow

private theorem s6Step191EarlyControl_flagsBorrow : s6Step191EarlyControlEqualityArena.checkBorrow (6) s6Step191EarlyControlLog.flagWork=some s6Step191EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step191EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step191EarlyControlFlagArena,s6Step191EarlyControlEqualityArena,s6Step191EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step191EarlyControl_flagsOwned : ([907, 253, 252, 251] : List Wire).toFinset⊆s6Step191EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191EarlyControl_flags : compileHmrFlagsLog s6Step191EarlyControlClassPlan.equalityArena s6Step191EarlyControlClassPlan.equality.top 253 252 251 s6Step191EarlyControlLog.flagWork=some s6Step191EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step191EarlyControl_flagsOwned⟩
  · exact s6Step191EarlyControl_flagsBorrow

private theorem s6Step191EarlyControl_historyBorrow : s6Step191EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step191EarlyControlLog.recordFresh=some s6Step191EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step191EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step191EarlyControlArena s6Step191EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step191EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step191EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EarlyControl_history : compileHmrRecordGrowLog s6Step191EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step191EarlyControlLog.recordFresh=some s6Step191EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step191EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step191EarlyControl_historyBorrow

private theorem s6Step191EarlyControl_sigmaOwned : ([254, 833] : List Wire).toFinset⊆s6Step191EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EarlyControl_sigmaReleaseOwned : ([833] : List Wire).toFinset⊆s6Step191EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EarlyControl_sigmaRelease : s6Step191EarlyControlHistoryArena.release {833} (fun _ => false)=some s6Step191EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step191EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step191EarlyControlHistoryArena s6Step191EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [833] rfl rfl
    decide +kernel

private theorem s6Step191EarlyControl_sigma : compileHmrSigmaDropLog s6Step191EarlyControlHistoryArena false 0 0 254 833 []=some s6Step191EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step191EarlyControl_sigmaOwned⟩
  · exact s6Step191EarlyControl_sigmaRelease

private theorem s6Step191EarlyControl_zeroBorrow : s6Step191EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step191EarlyControlLog.zeroWork=some s6Step191EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step191EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step191EarlyControlArena s6Step191EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step191EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step191EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step191EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step191EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step191EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,862),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EarlyControl_zero : compileHmrEqualityLog s6Step191EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step191EarlyControlLog.zeroWork=some (s6Step191EarlyControlZeroArena,s6Step191EarlyControlLog.zeroWork,s6Step191EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step191EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step191EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step191EarlyControl_logged : s6Step191EarlyControlPlan.Logged s6Step191EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 843 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step191EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step191EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step191EarlyControl_zero
  · exact s6Step191EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step191EarlyControl_flags
  · exact s6Step191EarlyControl_fit
  · exact s6Step191EarlyControl_history
  · exact s6Step191EarlyControl_sigma
  · exact s6Step191EarlyControl_branch

private theorem s6Step191EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step191EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 843 43 s6Step191EarlyControlLog=some s6Step191EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step191EarlyControlPlan s6Step191EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 254 253 252 251 843 43 s6Step191EarlyControl_logged

private def s6Step191EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429],795⟩

private def s6Step191EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step191EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩

private def s6Step191EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private def s6Step191FrontBank : WindowBank := ⟨s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow⟩

private def s6Step191Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 838, 795]

private def s6Step191Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 863, 777]

private def s6Step191Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 880, 776]

private def s6Step191Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 860, 775]

private theorem s6Step191Counter_apart : Disjoint s6Step191HeadFvAfter.live s6Step191CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step191HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191Counter_borrowed : s6Step191HeadFvAfter.checkBorrow 4 s6Step191CounterWork=some s6Step191CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step191HeadFvAfter s6Step191CounterDuring s6Step191CounterWork.toFinset s6Step191Counter_bounded s6Step191Counter_apart rfl

private theorem s6Step191Counter_owned : (833::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step191HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step191HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191Counter_checked : compileHmrCounterStepLog s6Step191HeadFvAfter true 833 [774, 773, 772, 771, 770, 769] s6Step191CounterWork=some s6Step191CounterDuring := by
  have owned : ∀q∈833::[774, 773, 772, 771, 770, 769],q∈s6Step191HeadFvAfter.live := fun q hq => s6Step191Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step191Counter_borrowed

private def s6Step191EntryFAfter : Arena := s6Step191EntryFBefore

private theorem s6Step191EntryBank_incomingDistinct : ([s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191EntryF_Incoming : rowsOwned s6Step191EntryFBefore [s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow] 0 s6Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191EntryBank_outgoingOwned : rowsOwned s6Step191EntryGvAfter [s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step191EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191EntryF_Outgoing : rowsOwned s6Step191EntryGvAfter [s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut] :=
  hmrRows_owned_drop s6Step191EntryGvAfter [s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut] 0 s6Step191EntryBank_outgoingOwned

private theorem s6Step191EntryF_distinct : (s6Step191EntryFRow.sign::s6Step191EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191EntryF_owned : (s6Step191EntryFRow.sign::s6Step191EntryFRow.payload).toFinset⊆s6Step191EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EntryF_reserved : s6Step191EntryFBefore.reserve s6Step191EntryFFresh.toFinset=some s6Step191EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191EntryFFresh,arenaWires]
  · norm_num [s6Step191EntryFBefore,s6Step191EntryFFresh,arenaWires]
  · simp only [s6Step191EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step191EntryF_checked : planRowResizeLog s6Step191EntryFBefore s6Step191EntryFRow 174 s6Step191EntryFFresh=
    some (s6Step191EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429],795⟩,growRow 795 s6Step191EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step191EntryFBefore s6Step191EntryFAfter s6Step191EntryFRow 174 s6Step191EntryFFresh
    s6Step191EntryF_distinct s6Step191EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191EntryF_reserved
  have rowEq : WindowRow.mk (s6Step191EntryFRow.payload++s6Step191EntryFFresh) s6Step191EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step191EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191EntryFvAfter : Arena := s6Step191EntryGAfter

private def s6Step191EntryFvBefore : Arena := s6Step191EntryGAfter

private theorem s6Step191EntryFv_Incoming : rowsOwned s6Step191EntryFvBefore [s6Step191EntryFvRow,s6Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow] 2 s6Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191EntryFv_Outgoing : rowsOwned s6Step191EntryGvAfter [s6Step191EntryFvOut,s6Step191EntryGvOut] :=
  hmrRows_owned_drop s6Step191EntryGvAfter [s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut] 2 s6Step191EntryBank_outgoingOwned

private theorem s6Step191EntryFv_distinct : (s6Step191EntryFvRow.sign::s6Step191EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191EntryFv_owned : (s6Step191EntryFvRow.sign::s6Step191EntryFvRow.payload).toFinset⊆s6Step191EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EntryFv_reserved : s6Step191EntryFvBefore.reserve s6Step191EntryFvFresh.toFinset=some s6Step191EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191EntryFvFresh,arenaWires]
  · norm_num [s6Step191EntryFvBefore,s6Step191EntryGAfter,s6Step191EntryFvFresh,arenaWires]
  · simp only [s6Step191EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step191EntryFv_checked : planRowResizeLog s6Step191EntryFvBefore s6Step191EntryFvRow 110 s6Step191EntryFvFresh=
    some (s6Step191EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩,growRow 776 s6Step191EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step191EntryFvBefore s6Step191EntryFvAfter s6Step191EntryFvRow 110 s6Step191EntryFvFresh
    s6Step191EntryFv_distinct s6Step191EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step191EntryFvRow.payload++s6Step191EntryFvFresh) s6Step191EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step191EntryGBefore : Arena := s6Step191EntryFBefore

private theorem s6Step191EntryG_Incoming : rowsOwned s6Step191EntryGBefore [s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow] 1 s6Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191EntryG_Outgoing : rowsOwned s6Step191EntryGvAfter [s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut] :=
  hmrRows_owned_drop s6Step191EntryGvAfter [s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut] 1 s6Step191EntryBank_outgoingOwned

private theorem s6Step191EntryG_distinct : (s6Step191EntryGRow.sign::s6Step191EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191EntryG_owned : (s6Step191EntryGRow.sign::s6Step191EntryGRow.payload).toFinset⊆s6Step191EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EntryG_reserved : s6Step191EntryGBefore.reserve s6Step191EntryGFresh.toFinset=some s6Step191EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191EntryGFresh,arenaWires]
  · norm_num [s6Step191EntryGBefore,s6Step191EntryFBefore,s6Step191EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step191EntryGBefore s6Step191EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step191EntryGFresh rfl rfl
    · norm_num [s6Step191EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step191EntryG_checked : planRowResizeLog s6Step191EntryGBefore s6Step191EntryGRow 174 s6Step191EntryGFresh=
    some (s6Step191EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩,growRow 777 s6Step191EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step191EntryGBefore s6Step191EntryGAfter s6Step191EntryGRow 174 s6Step191EntryGFresh
    s6Step191EntryG_distinct s6Step191EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191EntryG_reserved
  have rowEq : WindowRow.mk (s6Step191EntryGRow.payload++s6Step191EntryGFresh) s6Step191EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step191EntryGvBefore : Arena := s6Step191EntryGAfter

private theorem s6Step191EntryGv_Incoming : rowsOwned s6Step191EntryGvBefore [s6Step191EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow] 3 s6Step191EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191EntryGv_Outgoing : rowsOwned s6Step191EntryGvAfter [s6Step191EntryGvOut] :=
  hmrRows_owned_drop s6Step191EntryGvAfter [s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut] 3 s6Step191EntryBank_outgoingOwned

private theorem s6Step191EntryGv_distinct : (s6Step191EntryGvRow.sign::s6Step191EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191EntryGv_owned : (s6Step191EntryGvRow.sign::s6Step191EntryGvRow.payload).toFinset⊆s6Step191EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191EntryGv_reserved : s6Step191EntryGvBefore.reserve s6Step191EntryGvFresh.toFinset=some s6Step191EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191EntryGvFresh,arenaWires]
  · norm_num [s6Step191EntryGvBefore,s6Step191EntryGAfter,s6Step191EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step191EntryGvBefore s6Step191EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step191EntryGvFresh rfl rfl
    · norm_num [s6Step191EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step191EntryGv_checked : planRowResizeLog s6Step191EntryGvBefore s6Step191EntryGvRow 110 s6Step191EntryGvFresh=
    some (s6Step191EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩,growRow 775 s6Step191EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step191EntryGvBefore s6Step191EntryGvAfter s6Step191EntryGvRow 110 s6Step191EntryGvFresh
    s6Step191EntryGv_distinct s6Step191EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step191EntryGvRow.payload++s6Step191EntryGvFresh) s6Step191EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step191EntryBank_rows : planWindowRowsLog s6Step191EntryFBefore [(s6Step191EntryFRow,174),(s6Step191EntryGRow,174),(s6Step191EntryFvRow,110),(s6Step191EntryGvRow,110)] [s6Step191EntryFFresh,s6Step191EntryGFresh,s6Step191EntryFvFresh,s6Step191EntryGvFresh]=
    some (s6Step191EntryGvAfter,[s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut],(growRow 795 s6Step191EntryFFresh ++ (growRow 777 s6Step191EntryGFresh ++ (growRow 776 s6Step191EntryFvFresh ++ (growRow 775 s6Step191EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step191EntryGvAfter [] []=some (s6Step191EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step191EntryGvBefore s6Step191EntryGvAfter s6Step191EntryGvAfter
    s6Step191EntryGvRow s6Step191EntryGvOut 110 s6Step191EntryGvFresh [] [] []
    (growRow 775 s6Step191EntryGvFresh) ([]) s6Step191EntryGv_Incoming s6Step191EntryGv_checked h4 s6Step191EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step191EntryFvBefore s6Step191EntryFvAfter s6Step191EntryGvAfter
    s6Step191EntryFvRow s6Step191EntryFvOut 110 s6Step191EntryFvFresh [(s6Step191EntryGvRow,110)] [s6Step191EntryGvFresh] [s6Step191EntryGvOut]
    (growRow 776 s6Step191EntryFvFresh) ((growRow 775 s6Step191EntryGvFresh ++ [])) s6Step191EntryFv_Incoming s6Step191EntryFv_checked h3 s6Step191EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step191EntryGBefore s6Step191EntryGAfter s6Step191EntryGvAfter
    s6Step191EntryGRow s6Step191EntryGOut 174 s6Step191EntryGFresh [(s6Step191EntryFvRow,110),(s6Step191EntryGvRow,110)] [s6Step191EntryFvFresh,s6Step191EntryGvFresh] [s6Step191EntryFvOut,s6Step191EntryGvOut]
    (growRow 777 s6Step191EntryGFresh) ((growRow 776 s6Step191EntryFvFresh ++ (growRow 775 s6Step191EntryGvFresh ++ []))) s6Step191EntryG_Incoming s6Step191EntryG_checked h2 s6Step191EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step191EntryFBefore s6Step191EntryFAfter s6Step191EntryGvAfter
    s6Step191EntryFRow s6Step191EntryFOut 174 s6Step191EntryFFresh [(s6Step191EntryGRow,174),(s6Step191EntryFvRow,110),(s6Step191EntryGvRow,110)] [s6Step191EntryGFresh,s6Step191EntryFvFresh,s6Step191EntryGvFresh] [s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut]
    (growRow 795 s6Step191EntryFFresh) ((growRow 777 s6Step191EntryGFresh ++ (growRow 776 s6Step191EntryFvFresh ++ (growRow 775 s6Step191EntryGvFresh ++ [])))) s6Step191EntryF_Incoming s6Step191EntryF_checked h1 s6Step191EntryF_Outgoing
  exact h0

private theorem s6Step191EntryBank_checked : compileHmrBankResizeLog .entry s6Step191EntryFBefore ⟨s6Step191EntryFRow,s6Step191EntryGRow,s6Step191EntryFvRow,s6Step191EntryGvRow⟩ ⟨174,174,110,110⟩ [s6Step191EntryFFresh,s6Step191EntryGFresh,s6Step191EntryFvFresh,s6Step191EntryGvFresh]=
    some (s6Step191EntryGvAfter,⟨s6Step191EntryFOut,s6Step191EntryGOut,s6Step191EntryFvOut,s6Step191EntryGvOut⟩,(growRow 795 s6Step191EntryFFresh ++ (growRow 777 s6Step191EntryGFresh ++ (growRow 776 s6Step191EntryFvFresh ++ (growRow 775 s6Step191EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step191EntryBank_rows]
  rfl

private def s6Step191ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191ExitFBefore : Arena := s6Step191ExitGAfter

private def s6Step191ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 838],795⟩

private def s6Step191ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 880],776⟩

private def s6Step191ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 863],777⟩

private def s6Step191ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 860],775⟩

private theorem s6Step191ExitBank_incomingDistinct : ([s6Step191ExitGRow,s6Step191ExitFRow,s6Step191ExitFvRow,s6Step191ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191ExitF_Incoming : rowsOwned s6Step191ExitFBefore [s6Step191ExitFRow,s6Step191ExitFvRow,s6Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191ExitGRow,s6Step191ExitFRow,s6Step191ExitFvRow,s6Step191ExitGvRow] 1 s6Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step191ExitBank_outgoingOwned : rowsOwned s6Step191ExitGvAfter [s6Step191ExitGOut,s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step191ExitGvAfter (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191ExitF_Outgoing : rowsOwned s6Step191ExitGvAfter [s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut] :=
  hmrRows_owned_drop s6Step191ExitGvAfter [s6Step191ExitGOut,s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut] 1 s6Step191ExitBank_outgoingOwned

private theorem s6Step191ExitF_distinct : (s6Step191ExitFRow.sign::s6Step191ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191ExitF_owned : (s6Step191ExitFRow.sign::s6Step191ExitFRow.payload).toFinset⊆s6Step191ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191ExitF_retired : s6Step191ExitFBefore.retireSet s6Step191ExitFExtra.toFinset=s6Step191ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step191ExitFBefore s6Step191ExitFAfter s6Step191ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step191ExitFBefore s6Step191ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step191ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step191ExitF_checked : planRowResizeLog s6Step191ExitFBefore s6Step191ExitFRow 173 []=
    some (s6Step191ExitFAfter,s6Step191ExitFOut,shrinkRow 795 s6Step191ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step191ExitFBefore s6Step191ExitFRow 173 s6Step191ExitF_distinct s6Step191ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step191ExitFRow.payload.take 173) s6Step191ExitFRow.sign=s6Step191ExitFOut := by decide +kernel
  have hi : s6Step191ExitFRow.payload.drop 173=s6Step191ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step191ExitF_retired] at result
  exact result

private def s6Step191ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191ExitFvBefore : Arena := s6Step191ExitFAfter

private theorem s6Step191ExitFv_Incoming : rowsOwned s6Step191ExitFvBefore [s6Step191ExitFvRow,s6Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191ExitGRow,s6Step191ExitFRow,s6Step191ExitFvRow,s6Step191ExitGvRow] 2 s6Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191ExitFvBefore (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191ExitFv_Outgoing : rowsOwned s6Step191ExitGvAfter [s6Step191ExitFvOut,s6Step191ExitGvOut] :=
  hmrRows_owned_drop s6Step191ExitGvAfter [s6Step191ExitGOut,s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut] 2 s6Step191ExitBank_outgoingOwned

private theorem s6Step191ExitFv_distinct : (s6Step191ExitFvRow.sign::s6Step191ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191ExitFv_owned : (s6Step191ExitFvRow.sign::s6Step191ExitFvRow.payload).toFinset⊆s6Step191ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191ExitFvBefore (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191ExitFv_retired : s6Step191ExitFvBefore.retireSet s6Step191ExitFvExtra.toFinset=s6Step191ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step191ExitFvBefore s6Step191ExitFvAfter s6Step191ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step191ExitFvBefore s6Step191ExitFvAfter (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step191ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step191ExitFv_checked : planRowResizeLog s6Step191ExitFvBefore s6Step191ExitFvRow 110 []=
    some (s6Step191ExitFvAfter,s6Step191ExitFvOut,shrinkRow 776 s6Step191ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step191ExitFvBefore s6Step191ExitFvRow 110 s6Step191ExitFv_distinct s6Step191ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step191ExitFvRow.payload.take 110) s6Step191ExitFvRow.sign=s6Step191ExitFvOut := by decide +kernel
  have hi : s6Step191ExitFvRow.payload.drop 110=s6Step191ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step191ExitFv_retired] at result
  exact result

private def s6Step191ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step191ExitG_Incoming : rowsOwned s6Step191ExitGBefore [s6Step191ExitGRow,s6Step191ExitFRow,s6Step191ExitFvRow,s6Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191ExitGRow,s6Step191ExitFRow,s6Step191ExitFvRow,s6Step191ExitGvRow] 0 s6Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step191ExitG_Outgoing : rowsOwned s6Step191ExitGvAfter [s6Step191ExitGOut,s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut] :=
  hmrRows_owned_drop s6Step191ExitGvAfter [s6Step191ExitGOut,s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut] 0 s6Step191ExitBank_outgoingOwned

private theorem s6Step191ExitG_distinct : (s6Step191ExitGRow.sign::s6Step191ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191ExitG_owned : (s6Step191ExitGRow.sign::s6Step191ExitGRow.payload).toFinset⊆s6Step191ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191ExitG_retired : s6Step191ExitGBefore.retireSet s6Step191ExitGExtra.toFinset=s6Step191ExitGAfter := by
  unfold Arena.retireSet s6Step191ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step191ExitGBefore,s6Step191ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step191ExitG_checked : planRowResizeLog s6Step191ExitGBefore s6Step191ExitGRow 174 []=
    some (s6Step191ExitGAfter,s6Step191ExitGOut,shrinkRow 777 s6Step191ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step191ExitGBefore s6Step191ExitGRow 174 s6Step191ExitG_distinct s6Step191ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step191ExitGRow.payload.take 174) s6Step191ExitGRow.sign=s6Step191ExitGOut := by decide +kernel
  have hi : s6Step191ExitGRow.payload.drop 174=s6Step191ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step191ExitG_retired] at result
  exact result

private def s6Step191ExitGvBefore : Arena := s6Step191ExitFvAfter

private theorem s6Step191ExitGv_Incoming : rowsOwned s6Step191ExitGvBefore [s6Step191ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191ExitGRow,s6Step191ExitFRow,s6Step191ExitFvRow,s6Step191ExitGvRow] 3 s6Step191ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191ExitGvBefore (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191ExitGv_Outgoing : rowsOwned s6Step191ExitGvAfter [s6Step191ExitGvOut] :=
  hmrRows_owned_drop s6Step191ExitGvAfter [s6Step191ExitGOut,s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut] 3 s6Step191ExitBank_outgoingOwned

private theorem s6Step191ExitGv_distinct : (s6Step191ExitGvRow.sign::s6Step191ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191ExitGv_owned : (s6Step191ExitGvRow.sign::s6Step191ExitGvRow.payload).toFinset⊆s6Step191ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191ExitGvBefore (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191ExitGv_retired : s6Step191ExitGvBefore.retireSet s6Step191ExitGvExtra.toFinset=s6Step191ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step191ExitGvBefore s6Step191ExitGvAfter s6Step191ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step191ExitGvBefore s6Step191ExitGvAfter (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,429),(430,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step191ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step191ExitGv_checked : planRowResizeLog s6Step191ExitGvBefore s6Step191ExitGvRow 110 []=
    some (s6Step191ExitGvAfter,s6Step191ExitGvOut,shrinkRow 775 s6Step191ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step191ExitGvBefore s6Step191ExitGvRow 110 s6Step191ExitGv_distinct s6Step191ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step191ExitGvRow.payload.take 110) s6Step191ExitGvRow.sign=s6Step191ExitGvOut := by decide +kernel
  have hi : s6Step191ExitGvRow.payload.drop 110=s6Step191ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step191ExitGv_retired] at result
  exact result

private theorem s6Step191ExitBank_rows : planWindowRowsLog s6Step191ExitGBefore [(s6Step191ExitGRow,174),(s6Step191ExitFRow,173),(s6Step191ExitFvRow,110),(s6Step191ExitGvRow,110)] [[],[],[],[]]=
    some (s6Step191ExitGvAfter,[s6Step191ExitGOut,s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut],(shrinkRow 777 s6Step191ExitGExtra ++ (shrinkRow 795 s6Step191ExitFExtra ++ (shrinkRow 776 s6Step191ExitFvExtra ++ (shrinkRow 775 s6Step191ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step191ExitGvAfter [] []=some (s6Step191ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step191ExitGvBefore s6Step191ExitGvAfter s6Step191ExitGvAfter
    s6Step191ExitGvRow s6Step191ExitGvOut 110 [] [] [] []
    (shrinkRow 775 s6Step191ExitGvExtra) ([]) s6Step191ExitGv_Incoming s6Step191ExitGv_checked h4 s6Step191ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step191ExitFvBefore s6Step191ExitFvAfter s6Step191ExitGvAfter
    s6Step191ExitFvRow s6Step191ExitFvOut 110 [] [(s6Step191ExitGvRow,110)] [[]] [s6Step191ExitGvOut]
    (shrinkRow 776 s6Step191ExitFvExtra) ((shrinkRow 775 s6Step191ExitGvExtra ++ [])) s6Step191ExitFv_Incoming s6Step191ExitFv_checked h3 s6Step191ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step191ExitFBefore s6Step191ExitFAfter s6Step191ExitGvAfter
    s6Step191ExitFRow s6Step191ExitFOut 173 [] [(s6Step191ExitFvRow,110),(s6Step191ExitGvRow,110)] [[],[]] [s6Step191ExitFvOut,s6Step191ExitGvOut]
    (shrinkRow 795 s6Step191ExitFExtra) ((shrinkRow 776 s6Step191ExitFvExtra ++ (shrinkRow 775 s6Step191ExitGvExtra ++ []))) s6Step191ExitF_Incoming s6Step191ExitF_checked h2 s6Step191ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step191ExitGBefore s6Step191ExitGAfter s6Step191ExitGvAfter
    s6Step191ExitGRow s6Step191ExitGOut 174 [] [(s6Step191ExitFRow,173),(s6Step191ExitFvRow,110),(s6Step191ExitGvRow,110)] [[],[],[]] [s6Step191ExitFOut,s6Step191ExitFvOut,s6Step191ExitGvOut]
    (shrinkRow 777 s6Step191ExitGExtra) ((shrinkRow 795 s6Step191ExitFExtra ++ (shrinkRow 776 s6Step191ExitFvExtra ++ (shrinkRow 775 s6Step191ExitGvExtra ++ [])))) s6Step191ExitG_Incoming s6Step191ExitG_checked h1 s6Step191ExitG_Outgoing
  exact h0

private theorem s6Step191ExitBank_checked : compileHmrBankResizeLog .exit s6Step191ExitGBefore ⟨s6Step191ExitFRow,s6Step191ExitGRow,s6Step191ExitFvRow,s6Step191ExitGvRow⟩ ⟨173,174,110,110⟩ [[],[],[],[]]=
    some (s6Step191ExitGvAfter,⟨s6Step191ExitFOut,s6Step191ExitGOut,s6Step191ExitFvOut,s6Step191ExitGvOut⟩,(shrinkRow 777 s6Step191ExitGExtra ++ (shrinkRow 795 s6Step191ExitFExtra ++ (shrinkRow 776 s6Step191ExitFvExtra ++ (shrinkRow 775 s6Step191ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step191ExitBank_rows]
  rfl

private theorem s6Step191Add0_apart : Disjoint s6Step191Add0Arena.live s6Step191Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step191Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191Add0_card : s6Step191Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step191Add0_borrowed : s6Step191Add0Arena.checkBorrow (hmrHybridCount s6Step191Add0Arena s6Step191Add0B.length) s6Step191Add0Work=some s6Step191Add0During := by
  have len : s6Step191Add0Work.length=hmrHybridCount s6Step191Add0Arena s6Step191Add0B.length := by
    rw [hmrHybridCount,s6Step191Add0_card]
    decide +kernel
  have nd : s6Step191Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step191Add0Arena s6Step191Add0During s6Step191Add0Work.toFinset s6Step191Add0_bounded s6Step191Add0_apart rfl

private theorem s6Step191Add0_distinct : (853::843::907::(s6Step191Add0A++s6Step191Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191Add0_owned : (853::843::907::(s6Step191Add0A++s6Step191Add0B)).toFinset⊆s6Step191Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step191Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191Add0_checked : compileHmrHybridCinLog s6Step191Add0Arena 843 853 907 s6Step191Add0A s6Step191Add0B s6Step191Add0Work=some s6Step191Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step191Add0Arena s6Step191Add0During 843 853 907 s6Step191Add0A s6Step191Add0B s6Step191Add0Work
    (by decide +kernel) (by decide +kernel) s6Step191Add0_distinct
    (fun q hq => s6Step191Add0_owned (List.mem_toFinset.mpr hq)) s6Step191Add0_borrowed

private theorem s6Step191Add1_apart : Disjoint s6Step191Add1Arena.live s6Step191Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step191Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191Add1_card : s6Step191Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step191Add1_borrowed : s6Step191Add1Arena.checkBorrow (hmrHybridCount s6Step191Add1Arena s6Step191Add1B.length) s6Step191Add1Work=some s6Step191Add1During := by
  have len : s6Step191Add1Work.length=hmrHybridCount s6Step191Add1Arena s6Step191Add1B.length := by
    rw [hmrHybridCount,s6Step191Add1_card]
    decide +kernel
  have nd : s6Step191Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step191Add1Arena s6Step191Add1During s6Step191Add1Work.toFinset s6Step191Add1_bounded s6Step191Add1_apart rfl

private theorem s6Step191Add1_distinct : (853::843::907::(s6Step191Add1A++s6Step191Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191Add1_owned : (853::843::907::(s6Step191Add1A++s6Step191Add1B)).toFinset⊆s6Step191Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step191Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191Add1_checked : compileHmrHybridCinLog s6Step191Add1Arena 843 853 907 s6Step191Add1A s6Step191Add1B s6Step191Add1Work=some s6Step191Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step191Add1Arena s6Step191Add1During 843 853 907 s6Step191Add1A s6Step191Add1B s6Step191Add1Work
    (by decide +kernel) (by decide +kernel) s6Step191Add1_distinct
    (fun q hq => s6Step191Add1_owned (List.mem_toFinset.mpr hq)) s6Step191Add1_borrowed

private theorem s6Step191F4_apart : Disjoint (s6Step191Add0A++s6Step191Add0B).toFinset (s6Step191Add1A++s6Step191Add1B).toFinset := by
  have nd : ((s6Step191Add0A++s6Step191Add0B)++(s6Step191Add1A++s6Step191Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step191F4_carry : s6Step191F4FlagArena.checkBorrow 1 [907]=some s6Step191Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step191F4FlagArena,s6Step191HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step191F4FlagArena,s6Step191HeadFvAfter,s6Step191Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step191F4_distinct : (833::843::853::907::((s6Step191Add0A++s6Step191Add1A)++(s6Step191Add0B++s6Step191Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191F4_flag : s6Step191HeadFvAfter.checkBorrow 1 [853]=some s6Step191F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step191HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step191F4_owned : (833::843::((s6Step191Add0A++s6Step191Add1A)++(s6Step191Add0B++s6Step191Add1B))).toFinset⊆s6Step191HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step191HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191F4_checked : compileHmrHybridF4Log s6Step191HeadFvAfter 833 843 s6Step191Add0A s6Step191Add0B s6Step191Add1A s6Step191Add1B [853] [907] s6Step191Add0Work s6Step191Add1Work=some s6Step191F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step191HeadFvAfter s6Step191F4FlagArena s6Step191Add0Arena s6Step191Add0During s6Step191Add1During 833 843
    s6Step191Add0A s6Step191Add0B s6Step191Add1A s6Step191Add1B [853] [907] s6Step191Add0Work s6Step191Add1Work
    (fun q hq => s6Step191F4_owned (List.mem_toFinset.mpr hq)) s6Step191F4_flag s6Step191F4_carry
    s6Step191F4_distinct s6Step191F4_apart s6Step191Add0_checked s6Step191Add1_checked

private theorem s6Step191Front_branch : s6Step191FrontSigmaArena.checkBorrow 1 [843]=some s6Step191HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step191FrontSigmaArena,s6Step191EntryGvAfter,arenaWires]
  · change s6Step191HeadGBefore.live=(s6Step191EntryGvAfter.live∪{833})∪{843}
    apply hmrArena_union_pair_of_filter_check s6Step191EntryGvAfter s6Step191HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 833 843 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step191Front_entry : HmrFrontEntryValid s6Step191EntryFBefore s6Step191FrontBank 174 110 ⟨173,174,110,110⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step191FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step191EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step191EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step191FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step191Front_sigma : s6Step191EntryGvAfter.checkBorrow 1 [833]=some s6Step191FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step191EntryGvAfter,arenaWires]
  · rfl

private def s6Step191HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step191HeadFBefore : Arena := s6Step191HeadGAfter

private def s6Step191HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429],795⟩

private def s6Step191HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step191HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854],777⟩

private def s6Step191HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821],775⟩

private theorem s6Step191HeadBank_incomingDistinct : ([s6Step191HeadGRow,s6Step191HeadFRow,s6Step191HeadGvRow,s6Step191HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191HeadF_Incoming : rowsOwned s6Step191HeadFBefore [s6Step191HeadFRow,s6Step191HeadGvRow,s6Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191HeadGRow,s6Step191HeadFRow,s6Step191HeadGvRow,s6Step191HeadFvRow] 1 s6Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191HeadBank_outgoingOwned : rowsOwned s6Step191HeadFvAfter [s6Step191HeadGOut,s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step191HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step191HeadF_Outgoing : rowsOwned s6Step191HeadFvAfter [s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut] :=
  hmrRows_owned_drop s6Step191HeadFvAfter [s6Step191HeadGOut,s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut] 1 s6Step191HeadBank_outgoingOwned

private theorem s6Step191HeadF_distinct : (s6Step191HeadFRow.sign::s6Step191HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191HeadF_owned : (s6Step191HeadFRow.sign::s6Step191HeadFRow.payload).toFinset⊆s6Step191HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191HeadF_reserved : s6Step191HeadFBefore.reserve s6Step191HeadFFresh.toFinset=some s6Step191HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191HeadFFresh,arenaWires]
  · norm_num [s6Step191HeadFBefore,s6Step191HeadGAfter,s6Step191HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step191HeadFBefore s6Step191HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step191HeadFFresh rfl rfl
    · norm_num [s6Step191HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step191HeadF_checked : planRowResizeLog s6Step191HeadFBefore s6Step191HeadFRow 175 s6Step191HeadFFresh=
    some (s6Step191HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 838],795⟩,growRow 795 s6Step191HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step191HeadFBefore s6Step191HeadFAfter s6Step191HeadFRow 175 s6Step191HeadFFresh
    s6Step191HeadF_distinct s6Step191HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191HeadF_reserved
  have rowEq : WindowRow.mk (s6Step191HeadFRow.payload++s6Step191HeadFFresh) s6Step191HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 838],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step191HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step191HeadFvBefore : Arena := s6Step191HeadGvAfter

private theorem s6Step191HeadFv_Incoming : rowsOwned s6Step191HeadFvBefore [s6Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191HeadGRow,s6Step191HeadFRow,s6Step191HeadGvRow,s6Step191HeadFvRow] 3 s6Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step191HeadFv_Outgoing : rowsOwned s6Step191HeadFvAfter [s6Step191HeadFvOut] :=
  hmrRows_owned_drop s6Step191HeadFvAfter [s6Step191HeadGOut,s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut] 3 s6Step191HeadBank_outgoingOwned

private theorem s6Step191HeadFv_distinct : (s6Step191HeadFvRow.sign::s6Step191HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191HeadFv_owned : (s6Step191HeadFvRow.sign::s6Step191HeadFvRow.payload).toFinset⊆s6Step191HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191HeadFv_reserved : s6Step191HeadFvBefore.reserve s6Step191HeadFvFresh.toFinset=some s6Step191HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191HeadFvFresh,arenaWires]
  · norm_num [s6Step191HeadFvBefore,s6Step191HeadGvAfter,s6Step191HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step191HeadFvAfter,s6Step191HeadFvBefore,s6Step191HeadGvAfter,s6Step191HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step191HeadFv_checked : planRowResizeLog s6Step191HeadFvBefore s6Step191HeadFvRow 111 s6Step191HeadFvFresh=
    some (s6Step191HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 880],776⟩,growRow 776 s6Step191HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step191HeadFvBefore s6Step191HeadFvAfter s6Step191HeadFvRow 111 s6Step191HeadFvFresh
    s6Step191HeadFv_distinct s6Step191HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step191HeadFvRow.payload++s6Step191HeadFvFresh) s6Step191HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 880],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step191HeadG_Incoming : rowsOwned s6Step191HeadGBefore [s6Step191HeadGRow,s6Step191HeadFRow,s6Step191HeadGvRow,s6Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191HeadGRow,s6Step191HeadFRow,s6Step191HeadGvRow,s6Step191HeadFvRow] 0 s6Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step191HeadG_Outgoing : rowsOwned s6Step191HeadFvAfter [s6Step191HeadGOut,s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut] :=
  hmrRows_owned_drop s6Step191HeadFvAfter [s6Step191HeadGOut,s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut] 0 s6Step191HeadBank_outgoingOwned

private theorem s6Step191HeadG_distinct : (s6Step191HeadGRow.sign::s6Step191HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191HeadG_owned : (s6Step191HeadGRow.sign::s6Step191HeadGRow.payload).toFinset⊆s6Step191HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step191HeadG_reserved : s6Step191HeadGBefore.reserve s6Step191HeadGFresh.toFinset=some s6Step191HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191HeadGFresh,arenaWires]
  · norm_num [s6Step191HeadGBefore,s6Step191HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step191HeadGBefore s6Step191HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step191HeadGFresh rfl rfl
    · norm_num [s6Step191HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step191HeadG_checked : planRowResizeLog s6Step191HeadGBefore s6Step191HeadGRow 175 s6Step191HeadGFresh=
    some (s6Step191HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 863],777⟩,growRow 777 s6Step191HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step191HeadGBefore s6Step191HeadGAfter s6Step191HeadGRow 175 s6Step191HeadGFresh
    s6Step191HeadG_distinct s6Step191HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191HeadG_reserved
  have rowEq : WindowRow.mk (s6Step191HeadGRow.payload++s6Step191HeadGFresh) s6Step191HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 854, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step191HeadGvBefore : Arena := s6Step191HeadFAfter

private theorem s6Step191HeadGv_Incoming : rowsOwned s6Step191HeadGvBefore [s6Step191HeadGvRow,s6Step191HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step191HeadGRow,s6Step191HeadFRow,s6Step191HeadGvRow,s6Step191HeadFvRow] 2 s6Step191HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step191HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step191HeadGv_Outgoing : rowsOwned s6Step191HeadFvAfter [s6Step191HeadGvOut,s6Step191HeadFvOut] :=
  hmrRows_owned_drop s6Step191HeadFvAfter [s6Step191HeadGOut,s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut] 2 s6Step191HeadBank_outgoingOwned

private theorem s6Step191HeadGv_distinct : (s6Step191HeadGvRow.sign::s6Step191HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step191HeadGv_owned : (s6Step191HeadGvRow.sign::s6Step191HeadGvRow.payload).toFinset⊆s6Step191HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step191HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<860) ∨ (861≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step191HeadGv_reserved : s6Step191HeadGvBefore.reserve s6Step191HeadGvFresh.toFinset=some s6Step191HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step191HeadGvFresh,arenaWires]
  · norm_num [s6Step191HeadGvBefore,s6Step191HeadFAfter,s6Step191HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step191HeadGvAfter,s6Step191HeadGvBefore,s6Step191HeadFAfter,s6Step191HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step191HeadGv_checked : planRowResizeLog s6Step191HeadGvBefore s6Step191HeadGvRow 111 s6Step191HeadGvFresh=
    some (s6Step191HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 860],775⟩,growRow 775 s6Step191HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step191HeadGvBefore s6Step191HeadGvAfter s6Step191HeadGvRow 111 s6Step191HeadGvFresh
    s6Step191HeadGv_distinct s6Step191HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step191HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step191HeadGvRow.payload++s6Step191HeadGvFresh) s6Step191HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 821, 860],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step191HeadBank_rows : planWindowRowsLog s6Step191HeadGBefore [(s6Step191HeadGRow,175),(s6Step191HeadFRow,175),(s6Step191HeadGvRow,111),(s6Step191HeadFvRow,111)] [s6Step191HeadGFresh,s6Step191HeadFFresh,s6Step191HeadGvFresh,s6Step191HeadFvFresh]=
    some (s6Step191HeadFvAfter,[s6Step191HeadGOut,s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut],(growRow 777 s6Step191HeadGFresh ++ (growRow 795 s6Step191HeadFFresh ++ (growRow 775 s6Step191HeadGvFresh ++ (growRow 776 s6Step191HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step191HeadFvAfter [] []=some (s6Step191HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step191HeadFvBefore s6Step191HeadFvAfter s6Step191HeadFvAfter
    s6Step191HeadFvRow s6Step191HeadFvOut 111 s6Step191HeadFvFresh [] [] []
    (growRow 776 s6Step191HeadFvFresh) ([]) s6Step191HeadFv_Incoming s6Step191HeadFv_checked h4 s6Step191HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step191HeadGvBefore s6Step191HeadGvAfter s6Step191HeadFvAfter
    s6Step191HeadGvRow s6Step191HeadGvOut 111 s6Step191HeadGvFresh [(s6Step191HeadFvRow,111)] [s6Step191HeadFvFresh] [s6Step191HeadFvOut]
    (growRow 775 s6Step191HeadGvFresh) ((growRow 776 s6Step191HeadFvFresh ++ [])) s6Step191HeadGv_Incoming s6Step191HeadGv_checked h3 s6Step191HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step191HeadFBefore s6Step191HeadFAfter s6Step191HeadFvAfter
    s6Step191HeadFRow s6Step191HeadFOut 175 s6Step191HeadFFresh [(s6Step191HeadGvRow,111),(s6Step191HeadFvRow,111)] [s6Step191HeadGvFresh,s6Step191HeadFvFresh] [s6Step191HeadGvOut,s6Step191HeadFvOut]
    (growRow 795 s6Step191HeadFFresh) ((growRow 775 s6Step191HeadGvFresh ++ (growRow 776 s6Step191HeadFvFresh ++ []))) s6Step191HeadF_Incoming s6Step191HeadF_checked h2 s6Step191HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step191HeadGBefore s6Step191HeadGAfter s6Step191HeadFvAfter
    s6Step191HeadGRow s6Step191HeadGOut 175 s6Step191HeadGFresh [(s6Step191HeadFRow,175),(s6Step191HeadGvRow,111),(s6Step191HeadFvRow,111)] [s6Step191HeadFFresh,s6Step191HeadGvFresh,s6Step191HeadFvFresh] [s6Step191HeadFOut,s6Step191HeadGvOut,s6Step191HeadFvOut]
    (growRow 777 s6Step191HeadGFresh) ((growRow 795 s6Step191HeadFFresh ++ (growRow 775 s6Step191HeadGvFresh ++ (growRow 776 s6Step191HeadFvFresh ++ [])))) s6Step191HeadG_Incoming s6Step191HeadG_checked h1 s6Step191HeadG_Outgoing
  exact h0

private theorem s6Step191HeadBank_checked : compileHmrBankResizeLog .headroom s6Step191HeadGBefore ⟨s6Step191HeadFRow,s6Step191HeadGRow,s6Step191HeadFvRow,s6Step191HeadGvRow⟩ ⟨175,175,111,111⟩ [s6Step191HeadGFresh,s6Step191HeadFFresh,s6Step191HeadGvFresh,s6Step191HeadFvFresh]=
    some (s6Step191HeadFvAfter,⟨s6Step191HeadFOut,s6Step191HeadGOut,s6Step191HeadFvOut,s6Step191HeadGvOut⟩,(growRow 777 s6Step191HeadGFresh ++ (growRow 795 s6Step191HeadFFresh ++ (growRow 775 s6Step191HeadGvFresh ++ (growRow 776 s6Step191HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step191HeadBank_rows]
  rfl

private theorem s6Step191Front_checked : compileHmrSourceFrontLog s6Step191EntryFBefore s6Step191FrontBank 174 110 ⟨173,174,110,110⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step191FrontLog=some s6Step191FrontPlan := by
  have pairEq : s6Step191FrontPair=⟨s6Step191HeadFRow,s6Step191HeadGRow,s6Step191HeadFvRow,s6Step191HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step191FrontHead=⟨s6Step191ExitFRow,s6Step191ExitGRow,s6Step191ExitFvRow,s6Step191ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step191Add0A=s6Step191FrontHead.f.wires := by decide +kernel
  have gEq : s6Step191Add0B=s6Step191FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step191Add1A=s6Step191FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step191Add1B=s6Step191FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step191EntryFBefore s6Step191FrontBank 174 110 ⟨173,174,110,110⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step191FrontLog s6Step191FrontPlan
  · exact s6Step191Front_entry
  · exact s6Step191EntryBank_checked
  · exact s6Step191Front_sigma
  · rfl
  · exact s6Step191Front_branch
  · rfl
  · simpa only [s6Step191FrontPlan,pairEq] using s6Step191HeadBank_checked
  · simpa only [s6Step191FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step191F4_checked
  · exact s6Step191Counter_checked
  · rfl
  · simpa only [s6Step191FrontPlan,headEq] using s6Step191ExitBank_checked

private theorem s6Step191Complete_explicit_checked : compileHmrEarlyStepLog s6Step191EntryFBefore s6Step191FrontBank 174 110 ⟨173,174,110,110⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step191CompleteLog=some s6Step191CompletePlan := by
  let Q := s6Step191EarlyControlPlan
  have hq := s6Step191EarlyControl_plan_checked
  have fv1 : s6Step191CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step191CompleteOut.fv.payload[2]?.getD s6Step191CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step191CompleteOut.fv.payload[3]?.getD s6Step191CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step191CompleteOut.fv.payload[4]?.getD s6Step191CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step191EntryFBefore s6Step191EarlyControlArena s6Step191FrontBank 174 110 ⟨173,174,110,110⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step191CompleteLog s6Step191FrontPlan Q
    s6Step191Front_checked s6Step191Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step191Complete_owned s6Step191Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step191EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 833 s6Step191CompleteOut.fv.second (s6Step191CompleteOut.fv.payload[2]?.getD s6Step191CompleteOut.fv.sign) (s6Step191CompleteOut.fv.payload[3]?.getD s6Step191CompleteOut.fv.sign) (s6Step191CompleteOut.fv.payload[4]?.getD s6Step191CompleteOut.fv.sign) 843 43 s6Step191EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep191Arena : Arena := s6Step191EntryFBefore
def s6PrivateStep191Bank : WindowBank := s6Step191FrontBank
def s6PrivateStep191Spec : HmrSourceWalkStepLog := ⟨174,110,⟨173,174,110,110⟩,43,.early s6Step191CompleteLog⟩
def s6PrivateStep191Plan : HmrSourceStepPlan := .early s6Step191CompletePlan
theorem s6PrivateStep191_source : s6PrivateStep191Spec=s6ObservedLogs176[15] := rfl
theorem s6PrivateStep191_checked : compileHmrSourceStepLog s6PrivateStep191Arena s6PrivateStep191Bank
    s6PrivateStep191Spec.fgWidth s6PrivateStep191Spec.vWidth s6PrivateStep191Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 191 s6PrivateStep191Spec.need none s6PrivateStep191Spec.log=some s6PrivateStep191Plan := by
  change compileHmrSourceStepLog s6Step191EntryFBefore s6Step191FrontBank 174 110 ⟨173,174,110,110⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 191 43 none (.early s6Step191CompleteLog)=some (.early s6Step191CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 191<498)]
  rw [s6Step191Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
