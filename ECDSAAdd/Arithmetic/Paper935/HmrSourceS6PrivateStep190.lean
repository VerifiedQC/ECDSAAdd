import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep188
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

private def s6Step190CompleteMoves : List (Wire × Wire) := [(843,173),(833,430)]

private def s6Step190EarlyControlLog : HmrEarlyControlLog := ⟨[833, 843, 863, 838, 860],[880],[853],[907, 891, 903, 791, 825, 810],[]⟩

private def s6Step190FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [860], [], []],[[880], [838], [863], [890]],[[], [], [], []]⟩,[821],[854],[853],[907],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[853, 907, 891, 903]⟩

private def s6Step190CompleteLog : HmrEarlyStepLog := ⟨s6Step190FrontLog,s6Step190CompleteMoves,s6Step190EarlyControlLog⟩

private def s6Step190ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429],795⟩

private def s6Step190ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step190ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172],777⟩

private def s6Step190ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private def s6Step190FrontOut : WindowBank := ⟨s6Step190ExitFOut,s6Step190ExitGOut,s6Step190ExitFvOut,s6Step190ExitGvOut⟩

private def s6Step190CompleteOut : WindowBank := s6Step190FrontOut.repacked s6Step190CompleteMoves

private def s6Step190EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step190EarlyControlPositiveArena,[880],s6Step190EarlyControlEqualityArena,[853],⟨⟨821,false⟩,[⟨⟨880,false⟩,853⟩]⟩⟩

private def s6Step190EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,833⟩,⟨⟨772,false⟩,843⟩,⟨⟨771,false⟩,863⟩,⟨⟨770,false⟩,838⟩,⟨⟨769,false⟩,860⟩]⟩

private def s6Step190EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step190EarlyControlZeroArena,s6Step190EarlyControlZeroPlan,s6Step190EarlyControlClassPlan,s6Step190EarlyControlFlagArena,s6Step190EarlyControlFittedArena,s6Step190EarlyControlHistoryArena,s6Step190EarlyControlSigmaArena,s6Step190EarlyControlOutputArena,s6Step190EarlyControlLog⟩

private def s6Step190CounterWork : List Wire := [853, 907, 891, 903]

private theorem s6Step190Counter_bounded : s6Step190CounterWork.toFinset⊆arenaWires := by norm_num [s6Step190CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step190HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190CounterDuring : Arena := ⟨s6Step190HeadFvAfter.live∪s6Step190CounterWork.toFinset,Finset.union_subset s6Step190HeadFvAfter.bounded s6Step190Counter_bounded⟩

private def s6Step190EntryFFresh : List Wire := []

private def s6Step190EntryFvFresh : List Wire := []

private def s6Step190EntryGFresh : List Wire := [860]

private def s6Step190EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190EntryGvAfter : Arena := s6Step190EntryGAfter

private def s6Step190EntryGvFresh : List Wire := []

private def s6Step190ExitFExtra : List Wire := [430, 838]

private def s6Step190ExitGExtra : List Wire := [173, 860, 880]

private def s6Step190ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190ExitGvExtra : List Wire := [863]

private def s6Step190Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190Add0Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step190Add0_bounded : s6Step190Add0Work.toFinset⊆arenaWires := by
  have h : s6Step190Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step190Add0During : Arena := ⟨s6Step190Add0Arena.live∪s6Step190Add0Work.toFinset,Finset.union_subset s6Step190Add0Arena.bounded s6Step190Add0_bounded⟩

private def s6Step190Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190Add1Work : List Wire := [891, 903, 791, 825, 810, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step190Add1_bounded : s6Step190Add1Work.toFinset⊆arenaWires := by
  have h : s6Step190Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step190Add1During : Arena := ⟨s6Step190Add1Arena.live∪s6Step190Add1Work.toFinset,Finset.union_subset s6Step190Add1Arena.bounded s6Step190Add1_bounded⟩

private def s6Step190F4FlagArena : Arena := ⟨s6Step190HeadFvAfter.live∪{853},Finset.union_subset s6Step190HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step190F4Plan : HmrHybridF4Plan := ⟨s6Step190F4FlagArena,[853],s6Step190Add0Arena,[907],s6Step190Add0During,s6Step190Add0Work,s6Step190Add1During,s6Step190Add1Work⟩

private def s6Step190HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 838],795⟩

private def s6Step190HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step190HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860, 880],777⟩

private def s6Step190HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 863],775⟩

private def s6Step190FrontHead : WindowBank := ⟨s6Step190HeadFOut,s6Step190HeadGOut,s6Step190HeadFvOut,s6Step190HeadGvOut⟩

private def s6Step190EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step190EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step190EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860],777⟩

private def s6Step190EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private def s6Step190FrontPair : WindowBank := ⟨s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut⟩

private def s6Step190FrontSigmaArena : Arena := ⟨s6Step190EntryGvAfter.live∪{821},Finset.union_subset s6Step190EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step190HeadFFresh : List Wire := [838]

private def s6Step190HeadFvFresh : List Wire := [890]

private def s6Step190HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190HeadGFresh : List Wire := [880]

private def s6Step190HeadGvFresh : List Wire := [863]

private def s6Step190FrontPlan : HmrSourceFront := ⟨s6Step190EntryGvAfter,s6Step190FrontPair,(growRow 795 s6Step190EntryFFresh ++ (growRow 777 s6Step190EntryGFresh ++ (growRow 776 s6Step190EntryFvFresh ++ (growRow 775 s6Step190EntryGvFresh ++ [])))),s6Step190FrontSigmaArena,[821],s6Step190HeadGBefore,[854],
  s6Step190HeadFvAfter,s6Step190FrontHead,(growRow 777 s6Step190HeadGFresh ++ (growRow 795 s6Step190HeadFFresh ++ (growRow 775 s6Step190HeadGvFresh ++ (growRow 776 s6Step190HeadFvFresh ++ [])))),s6Step190F4Plan,s6Step190CounterDuring,s6Step190CounterWork,s6Step190ExitGvAfter,s6Step190FrontOut,(shrinkRow 777 s6Step190ExitGExtra ++ (shrinkRow 795 s6Step190ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step190ExitGvExtra ++ []))))⟩

private def s6Step190CompletePlan : HmrEarlyStepPlan := ⟨s6Step190FrontPlan,s6Step190EarlyControlArena,s6Step190EarlyControlPlan,s6Step190CompleteMoves⟩

private theorem s6Step190Complete_apart : List.Disjoint (s6Step190CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [821, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] := by
  have nd : ((s6Step190CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[821, 854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step190Complete_owned : (s6Step190CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step190CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190CompleteRelocationMove0Borrowed : Arena := ⟨s6Step190ExitGvAfter.live∪{173},Finset.union_subset s6Step190ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step190CompleteRelocationMove1Borrowed : Arena := ⟨s6Step190CompleteRelocationMove0After.live∪{430},Finset.union_subset s6Step190CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step190CompleteRelocation_move0_owned : 843∈s6Step190ExitGvAfter.live := by norm_num [s6Step190ExitGvAfter,arenaWires]

private theorem s6Step190CompleteRelocation_move0_reserve : s6Step190ExitGvAfter.reserve {173}=some s6Step190CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step190ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step190CompleteRelocation_move0_retire : s6Step190CompleteRelocationMove0Borrowed.retireSet {843}=s6Step190CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step190CompleteRelocationMove0Borrowed s6Step190CompleteRelocationMove0After {843}
  change s6Step190CompleteRelocationMove0After.live=(s6Step190ExitGvAfter.live∪{173})\{843}
  apply hmrArena_update_of_filter_check s6Step190ExitGvAfter s6Step190CompleteRelocationMove0After (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [173] [843] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step190CompleteRelocation_move1_owned : 833∈s6Step190CompleteRelocationMove0After.live := by norm_num [s6Step190CompleteRelocationMove0After,arenaWires]

private theorem s6Step190CompleteRelocation_move1_reserve : s6Step190CompleteRelocationMove0After.reserve {430}=some s6Step190CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step190CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step190CompleteRelocation_move1_retire : s6Step190CompleteRelocationMove1Borrowed.retireSet {833}=s6Step190EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step190CompleteRelocationMove1Borrowed s6Step190EarlyControlArena {833}
  change s6Step190EarlyControlArena.live=(s6Step190CompleteRelocationMove0After.live∪{430})\{833}
  apply hmrArena_update_of_filter_check s6Step190CompleteRelocationMove0After s6Step190EarlyControlArena (fun q => ([(0,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [430] [833] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step190CompleteRelocation_checked : s6Step190ExitGvAfter.checkRepack [(843,173),(833,430)]=some s6Step190EarlyControlArena := by
  have tail2 : s6Step190EarlyControlArena.checkRepack []=some s6Step190EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step190CompleteRelocationMove0After s6Step190CompleteRelocationMove1Borrowed s6Step190EarlyControlArena s6Step190EarlyControlArena 833 430 []
    s6Step190CompleteRelocation_move1_owned s6Step190CompleteRelocation_move1_reserve s6Step190CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step190ExitGvAfter s6Step190CompleteRelocationMove0Borrowed s6Step190CompleteRelocationMove0After s6Step190EarlyControlArena 843 173 [(833,430)]
    s6Step190CompleteRelocation_move0_owned s6Step190CompleteRelocation_move0_reserve s6Step190CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step190Complete_repack : s6Step190ExitGvAfter.checkRepack s6Step190CompleteMoves=some s6Step190EarlyControlArena := by
  simpa only [s6Step190CompleteMoves] using s6Step190CompleteRelocation_checked

private theorem s6Step190EarlyControl_branchOwned : ([854] : List Wire).toFinset⊆s6Step190EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EarlyControl_branch : compileHmrBranchRetirement s6Step190EarlyControlSigmaArena 854=some s6Step190EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step190EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step190EarlyControlSigmaArena s6Step190EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(855,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [854] rfl rfl
    decide +kernel

private theorem s6Step190EarlyControl_classEqualityBorrow : s6Step190EarlyControlPositiveArena.checkBorrow (([821, 880] : List Wire).length-1) s6Step190EarlyControlLog.classWork=some s6Step190EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step190EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step190EarlyControlEqualityArena,s6Step190EarlyControlPositiveArena,s6Step190EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step190EarlyControl_classEqualityOwned : ([821, 880] : List Wire).toFinset⊆s6Step190EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190EarlyControl_classEquality : compileHmrEqualityLog s6Step190EarlyControlPositiveArena [821, 880] 0 s6Step190EarlyControlLog.classWork=some (s6Step190EarlyControlEqualityArena,s6Step190EarlyControlLog.classWork,s6Step190EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step190EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step190EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step190EarlyControl_classOwned : ([769, 860, 821] : List Wire).toFinset⊆s6Step190EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190EarlyControl_positiveBorrow : s6Step190EarlyControlZeroArena.checkBorrow (1) s6Step190EarlyControlLog.positiveWork=some s6Step190EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step190EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step190EarlyControlPositiveArena,s6Step190EarlyControlZeroArena,s6Step190EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step190EarlyControl_class : compileHmrSourceClassLog s6Step190EarlyControlZeroArena false 769 s6Step190EarlyControlZeroPlan.top 0 821 s6Step190EarlyControlLog.positiveWork s6Step190EarlyControlLog.classWork=some s6Step190EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step190EarlyControlClassPlan s6Step190EarlyControlZeroArena false 769 s6Step190EarlyControlZeroPlan.top 0 821
  constructor
  · decide +kernel
  · exact s6Step190EarlyControl_classOwned
  · exact s6Step190EarlyControl_positiveBorrow
  · exact s6Step190EarlyControl_classEquality

private theorem s6Step190EarlyControl_entryRecordOwned : ([854, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EarlyControl_entrySigmaOwned : ([821, 254] : List Wire).toFinset⊆s6Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EarlyControl_fitBorrow : s6Step190EarlyControlFlagArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step190EarlyControlLog.recordFresh=some s6Step190EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step190EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step190EarlyControlFittedArena,s6Step190EarlyControlFlagArena,s6Step190EarlyControlLog,arenaWires]

private theorem s6Step190EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step190EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190EarlyControl_fit : compileHmrRecordGrowLog s6Step190EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step190EarlyControlLog.recordFresh=some s6Step190EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step190EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step190EarlyControl_fitBorrow

private theorem s6Step190EarlyControl_flagsBorrow : s6Step190EarlyControlEqualityArena.checkBorrow (6) s6Step190EarlyControlLog.flagWork=some s6Step190EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step190EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step190EarlyControlFlagArena,s6Step190EarlyControlEqualityArena,s6Step190EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step190EarlyControl_flagsOwned : ([853, 253, 252, 251] : List Wire).toFinset⊆s6Step190EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190EarlyControl_flags : compileHmrFlagsLog s6Step190EarlyControlClassPlan.equalityArena s6Step190EarlyControlClassPlan.equality.top 253 252 251 s6Step190EarlyControlLog.flagWork=some s6Step190EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step190EarlyControl_flagsOwned⟩
  · exact s6Step190EarlyControl_flagsBorrow

private theorem s6Step190EarlyControl_historyBorrow : s6Step190EarlyControlArena.checkBorrow ((43-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).length)) s6Step190EarlyControlLog.recordFresh=some s6Step190EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step190EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step190EarlyControlArena s6Step190EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step190EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step190EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] : List Wire).toFinset⊆s6Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EarlyControl_history : compileHmrRecordGrowLog s6Step190EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step190EarlyControlLog.recordFresh=some s6Step190EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step190EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step190EarlyControl_historyBorrow

private theorem s6Step190EarlyControl_sigmaOwned : ([254, 821] : List Wire).toFinset⊆s6Step190EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EarlyControl_sigmaReleaseOwned : ([821] : List Wire).toFinset⊆s6Step190EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EarlyControl_sigmaRelease : s6Step190EarlyControlHistoryArena.release {821} (fun _ => false)=some s6Step190EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step190EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step190EarlyControlHistoryArena s6Step190EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [821] rfl rfl
    decide +kernel

private theorem s6Step190EarlyControl_sigma : compileHmrSigmaDropLog s6Step190EarlyControlHistoryArena false 0 0 254 821 []=some s6Step190EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step190EarlyControl_sigmaOwned⟩
  · exact s6Step190EarlyControl_sigmaRelease

private theorem s6Step190EarlyControl_zeroBorrow : s6Step190EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step190EarlyControlLog.zeroWork=some s6Step190EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step190EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step190EarlyControlArena s6Step190EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<880) ∨ (881≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step190EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step190EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step190EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step190EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step190EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(835,838),(839,842),(844,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EarlyControl_zero : compileHmrEqualityLog s6Step190EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step190EarlyControlLog.zeroWork=some (s6Step190EarlyControlZeroArena,s6Step190EarlyControlLog.zeroWork,s6Step190EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step190EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step190EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step190EarlyControl_logged : s6Step190EarlyControlPlan.Logged s6Step190EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 854 43 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step190EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step190EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step190EarlyControl_zero
  · exact s6Step190EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step190EarlyControl_flags
  · exact s6Step190EarlyControl_fit
  · exact s6Step190EarlyControl_history
  · exact s6Step190EarlyControl_sigma
  · exact s6Step190EarlyControl_branch

private theorem s6Step190EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step190EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 854 43 s6Step190EarlyControlLog=some s6Step190EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step190EarlyControlPlan s6Step190EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 254 253 252 251 854 43 s6Step190EarlyControl_logged

private def s6Step190EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step190EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step190EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173],777⟩

private def s6Step190EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private def s6Step190FrontBank : WindowBank := ⟨s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow⟩

private def s6Step190Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 838, 795]

private def s6Step190Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860, 880, 777]

private def s6Step190Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890, 776]

private def s6Step190Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 863, 775]

private theorem s6Step190Counter_apart : Disjoint s6Step190HeadFvAfter.live s6Step190CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step190HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190Counter_borrowed : s6Step190HeadFvAfter.checkBorrow 4 s6Step190CounterWork=some s6Step190CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step190HeadFvAfter s6Step190CounterDuring s6Step190CounterWork.toFinset s6Step190Counter_bounded s6Step190Counter_apart rfl

private theorem s6Step190Counter_owned : (821::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step190HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step190HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190Counter_checked : compileHmrCounterStepLog s6Step190HeadFvAfter true 821 [774, 773, 772, 771, 770, 769] s6Step190CounterWork=some s6Step190CounterDuring := by
  have owned : ∀q∈821::[774, 773, 772, 771, 770, 769],q∈s6Step190HeadFvAfter.live := fun q hq => s6Step190Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step190Counter_borrowed

private def s6Step190EntryFAfter : Arena := s6Step190EntryFBefore

private theorem s6Step190EntryBank_incomingDistinct : ([s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190EntryF_Incoming : rowsOwned s6Step190EntryFBefore [s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow] 0 s6Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190EntryBank_outgoingOwned : rowsOwned s6Step190EntryGvAfter [s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step190EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190EntryF_Outgoing : rowsOwned s6Step190EntryGvAfter [s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut] :=
  hmrRows_owned_drop s6Step190EntryGvAfter [s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut] 0 s6Step190EntryBank_outgoingOwned

private theorem s6Step190EntryF_distinct : (s6Step190EntryFRow.sign::s6Step190EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190EntryF_owned : (s6Step190EntryFRow.sign::s6Step190EntryFRow.payload).toFinset⊆s6Step190EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EntryF_reserved : s6Step190EntryFBefore.reserve s6Step190EntryFFresh.toFinset=some s6Step190EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190EntryFFresh,arenaWires]
  · norm_num [s6Step190EntryFBefore,s6Step190EntryFFresh,arenaWires]
  · simp only [s6Step190EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step190EntryF_checked : planRowResizeLog s6Step190EntryFBefore s6Step190EntryFRow 175 s6Step190EntryFFresh=
    some (s6Step190EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩,growRow 795 s6Step190EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step190EntryFBefore s6Step190EntryFAfter s6Step190EntryFRow 175 s6Step190EntryFFresh
    s6Step190EntryF_distinct s6Step190EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190EntryF_reserved
  have rowEq : WindowRow.mk (s6Step190EntryFRow.payload++s6Step190EntryFFresh) s6Step190EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step190EntryFvAfter : Arena := s6Step190EntryGAfter

private def s6Step190EntryFvBefore : Arena := s6Step190EntryGAfter

private theorem s6Step190EntryFv_Incoming : rowsOwned s6Step190EntryFvBefore [s6Step190EntryFvRow,s6Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow] 2 s6Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190EntryFv_Outgoing : rowsOwned s6Step190EntryGvAfter [s6Step190EntryFvOut,s6Step190EntryGvOut] :=
  hmrRows_owned_drop s6Step190EntryGvAfter [s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut] 2 s6Step190EntryBank_outgoingOwned

private theorem s6Step190EntryFv_distinct : (s6Step190EntryFvRow.sign::s6Step190EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190EntryFv_owned : (s6Step190EntryFvRow.sign::s6Step190EntryFvRow.payload).toFinset⊆s6Step190EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EntryFv_reserved : s6Step190EntryFvBefore.reserve s6Step190EntryFvFresh.toFinset=some s6Step190EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190EntryFvFresh,arenaWires]
  · norm_num [s6Step190EntryFvBefore,s6Step190EntryGAfter,s6Step190EntryFvFresh,arenaWires]
  · simp only [s6Step190EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step190EntryFv_checked : planRowResizeLog s6Step190EntryFvBefore s6Step190EntryFvRow 109 s6Step190EntryFvFresh=
    some (s6Step190EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩,growRow 776 s6Step190EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step190EntryFvBefore s6Step190EntryFvAfter s6Step190EntryFvRow 109 s6Step190EntryFvFresh
    s6Step190EntryFv_distinct s6Step190EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step190EntryFvRow.payload++s6Step190EntryFvFresh) s6Step190EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step190EntryGBefore : Arena := s6Step190EntryFBefore

private theorem s6Step190EntryG_Incoming : rowsOwned s6Step190EntryGBefore [s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow] 1 s6Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190EntryG_Outgoing : rowsOwned s6Step190EntryGvAfter [s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut] :=
  hmrRows_owned_drop s6Step190EntryGvAfter [s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut] 1 s6Step190EntryBank_outgoingOwned

private theorem s6Step190EntryG_distinct : (s6Step190EntryGRow.sign::s6Step190EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190EntryG_owned : (s6Step190EntryGRow.sign::s6Step190EntryGRow.payload).toFinset⊆s6Step190EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EntryG_reserved : s6Step190EntryGBefore.reserve s6Step190EntryGFresh.toFinset=some s6Step190EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190EntryGFresh,arenaWires]
  · norm_num [s6Step190EntryGBefore,s6Step190EntryFBefore,s6Step190EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step190EntryGBefore s6Step190EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step190EntryGFresh rfl rfl
    · norm_num [s6Step190EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step190EntryG_checked : planRowResizeLog s6Step190EntryGBefore s6Step190EntryGRow 175 s6Step190EntryGFresh=
    some (s6Step190EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860],777⟩,growRow 777 s6Step190EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step190EntryGBefore s6Step190EntryGAfter s6Step190EntryGRow 175 s6Step190EntryGFresh
    s6Step190EntryG_distinct s6Step190EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190EntryG_reserved
  have rowEq : WindowRow.mk (s6Step190EntryGRow.payload++s6Step190EntryGFresh) s6Step190EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step190EntryGvBefore : Arena := s6Step190EntryGAfter

private theorem s6Step190EntryGv_Incoming : rowsOwned s6Step190EntryGvBefore [s6Step190EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow] 3 s6Step190EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190EntryGv_Outgoing : rowsOwned s6Step190EntryGvAfter [s6Step190EntryGvOut] :=
  hmrRows_owned_drop s6Step190EntryGvAfter [s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut] 3 s6Step190EntryBank_outgoingOwned

private theorem s6Step190EntryGv_distinct : (s6Step190EntryGvRow.sign::s6Step190EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190EntryGv_owned : (s6Step190EntryGvRow.sign::s6Step190EntryGvRow.payload).toFinset⊆s6Step190EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190EntryGv_reserved : s6Step190EntryGvBefore.reserve s6Step190EntryGvFresh.toFinset=some s6Step190EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190EntryGvFresh,arenaWires]
  · norm_num [s6Step190EntryGvBefore,s6Step190EntryGAfter,s6Step190EntryGvFresh,arenaWires]
  · simp only [s6Step190EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step190EntryGv_checked : planRowResizeLog s6Step190EntryGvBefore s6Step190EntryGvRow 109 s6Step190EntryGvFresh=
    some (s6Step190EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩,growRow 775 s6Step190EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step190EntryGvBefore s6Step190EntryGvAfter s6Step190EntryGvRow 109 s6Step190EntryGvFresh
    s6Step190EntryGv_distinct s6Step190EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step190EntryGvRow.payload++s6Step190EntryGvFresh) s6Step190EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step190EntryBank_rows : planWindowRowsLog s6Step190EntryFBefore [(s6Step190EntryFRow,175),(s6Step190EntryGRow,175),(s6Step190EntryFvRow,109),(s6Step190EntryGvRow,109)] [s6Step190EntryFFresh,s6Step190EntryGFresh,s6Step190EntryFvFresh,s6Step190EntryGvFresh]=
    some (s6Step190EntryGvAfter,[s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut],(growRow 795 s6Step190EntryFFresh ++ (growRow 777 s6Step190EntryGFresh ++ (growRow 776 s6Step190EntryFvFresh ++ (growRow 775 s6Step190EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step190EntryGvAfter [] []=some (s6Step190EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step190EntryGvBefore s6Step190EntryGvAfter s6Step190EntryGvAfter
    s6Step190EntryGvRow s6Step190EntryGvOut 109 s6Step190EntryGvFresh [] [] []
    (growRow 775 s6Step190EntryGvFresh) ([]) s6Step190EntryGv_Incoming s6Step190EntryGv_checked h4 s6Step190EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step190EntryFvBefore s6Step190EntryFvAfter s6Step190EntryGvAfter
    s6Step190EntryFvRow s6Step190EntryFvOut 109 s6Step190EntryFvFresh [(s6Step190EntryGvRow,109)] [s6Step190EntryGvFresh] [s6Step190EntryGvOut]
    (growRow 776 s6Step190EntryFvFresh) ((growRow 775 s6Step190EntryGvFresh ++ [])) s6Step190EntryFv_Incoming s6Step190EntryFv_checked h3 s6Step190EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step190EntryGBefore s6Step190EntryGAfter s6Step190EntryGvAfter
    s6Step190EntryGRow s6Step190EntryGOut 175 s6Step190EntryGFresh [(s6Step190EntryFvRow,109),(s6Step190EntryGvRow,109)] [s6Step190EntryFvFresh,s6Step190EntryGvFresh] [s6Step190EntryFvOut,s6Step190EntryGvOut]
    (growRow 777 s6Step190EntryGFresh) ((growRow 776 s6Step190EntryFvFresh ++ (growRow 775 s6Step190EntryGvFresh ++ []))) s6Step190EntryG_Incoming s6Step190EntryG_checked h2 s6Step190EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step190EntryFBefore s6Step190EntryFAfter s6Step190EntryGvAfter
    s6Step190EntryFRow s6Step190EntryFOut 175 s6Step190EntryFFresh [(s6Step190EntryGRow,175),(s6Step190EntryFvRow,109),(s6Step190EntryGvRow,109)] [s6Step190EntryGFresh,s6Step190EntryFvFresh,s6Step190EntryGvFresh] [s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut]
    (growRow 795 s6Step190EntryFFresh) ((growRow 777 s6Step190EntryGFresh ++ (growRow 776 s6Step190EntryFvFresh ++ (growRow 775 s6Step190EntryGvFresh ++ [])))) s6Step190EntryF_Incoming s6Step190EntryF_checked h1 s6Step190EntryF_Outgoing
  exact h0

private theorem s6Step190EntryBank_checked : compileHmrBankResizeLog .entry s6Step190EntryFBefore ⟨s6Step190EntryFRow,s6Step190EntryGRow,s6Step190EntryFvRow,s6Step190EntryGvRow⟩ ⟨175,175,109,109⟩ [s6Step190EntryFFresh,s6Step190EntryGFresh,s6Step190EntryFvFresh,s6Step190EntryGvFresh]=
    some (s6Step190EntryGvAfter,⟨s6Step190EntryFOut,s6Step190EntryGOut,s6Step190EntryFvOut,s6Step190EntryGvOut⟩,(growRow 795 s6Step190EntryFFresh ++ (growRow 777 s6Step190EntryGFresh ++ (growRow 776 s6Step190EntryFvFresh ++ (growRow 775 s6Step190EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step190EntryBank_rows]
  rfl

private def s6Step190ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,173),(174,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step190ExitFBefore : Arena := s6Step190ExitGAfter

private def s6Step190ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 838],795⟩

private def s6Step190ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩

private def s6Step190ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860, 880],777⟩

private def s6Step190ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 863],775⟩

private theorem s6Step190ExitBank_incomingDistinct : ([s6Step190ExitGRow,s6Step190ExitFRow,s6Step190ExitFvRow,s6Step190ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190ExitF_Incoming : rowsOwned s6Step190ExitFBefore [s6Step190ExitFRow,s6Step190ExitFvRow,s6Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190ExitGRow,s6Step190ExitFRow,s6Step190ExitFvRow,s6Step190ExitGvRow] 1 s6Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190ExitFBefore (fun q => ([(0,173),(174,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190ExitBank_outgoingOwned : rowsOwned s6Step190ExitGvAfter [s6Step190ExitGOut,s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step190ExitGvAfter (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190ExitF_Outgoing : rowsOwned s6Step190ExitGvAfter [s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut] :=
  hmrRows_owned_drop s6Step190ExitGvAfter [s6Step190ExitGOut,s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut] 1 s6Step190ExitBank_outgoingOwned

private theorem s6Step190ExitF_distinct : (s6Step190ExitFRow.sign::s6Step190ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190ExitF_owned : (s6Step190ExitFRow.sign::s6Step190ExitFRow.payload).toFinset⊆s6Step190ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190ExitFBefore (fun q => ([(0,173),(174,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190ExitF_retired : s6Step190ExitFBefore.retireSet s6Step190ExitFExtra.toFinset=s6Step190ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step190ExitFBefore s6Step190ExitFAfter s6Step190ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step190ExitFBefore s6Step190ExitFAfter (fun q => ([(0,173),(174,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step190ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step190ExitF_checked : planRowResizeLog s6Step190ExitFBefore s6Step190ExitFRow 174 []=
    some (s6Step190ExitFAfter,s6Step190ExitFOut,shrinkRow 795 s6Step190ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step190ExitFBefore s6Step190ExitFRow 174 s6Step190ExitF_distinct s6Step190ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step190ExitFRow.payload.take 174) s6Step190ExitFRow.sign=s6Step190ExitFOut := by decide +kernel
  have hi : s6Step190ExitFRow.payload.drop 174=s6Step190ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step190ExitF_retired] at result
  exact result

private def s6Step190ExitFvAfter : Arena := s6Step190ExitFAfter

private def s6Step190ExitFvBefore : Arena := s6Step190ExitFAfter

private theorem s6Step190ExitFv_Incoming : rowsOwned s6Step190ExitFvBefore [s6Step190ExitFvRow,s6Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190ExitGRow,s6Step190ExitFRow,s6Step190ExitFvRow,s6Step190ExitGvRow] 2 s6Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190ExitFvBefore (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190ExitFv_Outgoing : rowsOwned s6Step190ExitGvAfter [s6Step190ExitFvOut,s6Step190ExitGvOut] :=
  hmrRows_owned_drop s6Step190ExitGvAfter [s6Step190ExitGOut,s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut] 2 s6Step190ExitBank_outgoingOwned

private theorem s6Step190ExitFv_distinct : (s6Step190ExitFvRow.sign::s6Step190ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190ExitFv_owned : (s6Step190ExitFvRow.sign::s6Step190ExitFvRow.payload).toFinset⊆s6Step190ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190ExitFvBefore (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190ExitFv_reserved : s6Step190ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step190ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step190ExitFv_checked : planRowResizeLog s6Step190ExitFvBefore s6Step190ExitFvRow 110 []=
    some (s6Step190ExitFvAfter,s6Step190ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step190ExitFvBefore s6Step190ExitFvAfter s6Step190ExitFvRow 110 []
    s6Step190ExitFv_distinct s6Step190ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step190ExitFvRow.payload++[]) s6Step190ExitFvRow.sign=s6Step190ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step190ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step190ExitG_Incoming : rowsOwned s6Step190ExitGBefore [s6Step190ExitGRow,s6Step190ExitFRow,s6Step190ExitFvRow,s6Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190ExitGRow,s6Step190ExitFRow,s6Step190ExitFvRow,s6Step190ExitGvRow] 0 s6Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step190ExitG_Outgoing : rowsOwned s6Step190ExitGvAfter [s6Step190ExitGOut,s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut] :=
  hmrRows_owned_drop s6Step190ExitGvAfter [s6Step190ExitGOut,s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut] 0 s6Step190ExitBank_outgoingOwned

private theorem s6Step190ExitG_distinct : (s6Step190ExitGRow.sign::s6Step190ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190ExitG_owned : (s6Step190ExitGRow.sign::s6Step190ExitGRow.payload).toFinset⊆s6Step190ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190ExitG_retired : s6Step190ExitGBefore.retireSet s6Step190ExitGExtra.toFinset=s6Step190ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step190ExitGBefore s6Step190ExitGAfter s6Step190ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step190ExitGBefore s6Step190ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,173),(174,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step190ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step190ExitG_checked : planRowResizeLog s6Step190ExitGBefore s6Step190ExitGRow 173 []=
    some (s6Step190ExitGAfter,s6Step190ExitGOut,shrinkRow 777 s6Step190ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step190ExitGBefore s6Step190ExitGRow 173 s6Step190ExitG_distinct s6Step190ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step190ExitGRow.payload.take 173) s6Step190ExitGRow.sign=s6Step190ExitGOut := by decide +kernel
  have hi : s6Step190ExitGRow.payload.drop 173=s6Step190ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step190ExitG_retired] at result
  exact result

private def s6Step190ExitGvBefore : Arena := s6Step190ExitFAfter

private theorem s6Step190ExitGv_Incoming : rowsOwned s6Step190ExitGvBefore [s6Step190ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190ExitGRow,s6Step190ExitFRow,s6Step190ExitFvRow,s6Step190ExitGvRow] 3 s6Step190ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190ExitGvBefore (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190ExitGv_Outgoing : rowsOwned s6Step190ExitGvAfter [s6Step190ExitGvOut] :=
  hmrRows_owned_drop s6Step190ExitGvAfter [s6Step190ExitGOut,s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut] 3 s6Step190ExitBank_outgoingOwned

private theorem s6Step190ExitGv_distinct : (s6Step190ExitGvRow.sign::s6Step190ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190ExitGv_owned : (s6Step190ExitGvRow.sign::s6Step190ExitGvRow.payload).toFinset⊆s6Step190ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190ExitGvBefore (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190ExitGv_retired : s6Step190ExitGvBefore.retireSet s6Step190ExitGvExtra.toFinset=s6Step190ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step190ExitGvBefore s6Step190ExitGvAfter s6Step190ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step190ExitGvBefore s6Step190ExitGvAfter (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,173),(174,430),(431,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,860),(861,863),(864,880),(881,891),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step190ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step190ExitGv_checked : planRowResizeLog s6Step190ExitGvBefore s6Step190ExitGvRow 109 []=
    some (s6Step190ExitGvAfter,s6Step190ExitGvOut,shrinkRow 775 s6Step190ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step190ExitGvBefore s6Step190ExitGvRow 109 s6Step190ExitGv_distinct s6Step190ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step190ExitGvRow.payload.take 109) s6Step190ExitGvRow.sign=s6Step190ExitGvOut := by decide +kernel
  have hi : s6Step190ExitGvRow.payload.drop 109=s6Step190ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step190ExitGv_retired] at result
  exact result

private theorem s6Step190ExitBank_rows : planWindowRowsLog s6Step190ExitGBefore [(s6Step190ExitGRow,173),(s6Step190ExitFRow,174),(s6Step190ExitFvRow,110),(s6Step190ExitGvRow,109)] [[],[],[],[]]=
    some (s6Step190ExitGvAfter,[s6Step190ExitGOut,s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut],(shrinkRow 777 s6Step190ExitGExtra ++ (shrinkRow 795 s6Step190ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step190ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step190ExitGvAfter [] []=some (s6Step190ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step190ExitGvBefore s6Step190ExitGvAfter s6Step190ExitGvAfter
    s6Step190ExitGvRow s6Step190ExitGvOut 109 [] [] [] []
    (shrinkRow 775 s6Step190ExitGvExtra) ([]) s6Step190ExitGv_Incoming s6Step190ExitGv_checked h4 s6Step190ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step190ExitFvBefore s6Step190ExitFvAfter s6Step190ExitGvAfter
    s6Step190ExitFvRow s6Step190ExitFvOut 110 [] [(s6Step190ExitGvRow,109)] [[]] [s6Step190ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step190ExitGvExtra ++ [])) s6Step190ExitFv_Incoming s6Step190ExitFv_checked h3 s6Step190ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step190ExitFBefore s6Step190ExitFAfter s6Step190ExitGvAfter
    s6Step190ExitFRow s6Step190ExitFOut 174 [] [(s6Step190ExitFvRow,110),(s6Step190ExitGvRow,109)] [[],[]] [s6Step190ExitFvOut,s6Step190ExitGvOut]
    (shrinkRow 795 s6Step190ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step190ExitGvExtra ++ []))) s6Step190ExitF_Incoming s6Step190ExitF_checked h2 s6Step190ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step190ExitGBefore s6Step190ExitGAfter s6Step190ExitGvAfter
    s6Step190ExitGRow s6Step190ExitGOut 173 [] [(s6Step190ExitFRow,174),(s6Step190ExitFvRow,110),(s6Step190ExitGvRow,109)] [[],[],[]] [s6Step190ExitFOut,s6Step190ExitFvOut,s6Step190ExitGvOut]
    (shrinkRow 777 s6Step190ExitGExtra) ((shrinkRow 795 s6Step190ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step190ExitGvExtra ++ [])))) s6Step190ExitG_Incoming s6Step190ExitG_checked h1 s6Step190ExitG_Outgoing
  exact h0

private theorem s6Step190ExitBank_checked : compileHmrBankResizeLog .exit s6Step190ExitGBefore ⟨s6Step190ExitFRow,s6Step190ExitGRow,s6Step190ExitFvRow,s6Step190ExitGvRow⟩ ⟨174,173,110,109⟩ [[],[],[],[]]=
    some (s6Step190ExitGvAfter,⟨s6Step190ExitFOut,s6Step190ExitGOut,s6Step190ExitFvOut,s6Step190ExitGvOut⟩,(shrinkRow 777 s6Step190ExitGExtra ++ (shrinkRow 795 s6Step190ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step190ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step190ExitBank_rows]
  rfl

private theorem s6Step190Add0_apart : Disjoint s6Step190Add0Arena.live s6Step190Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step190Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190Add0_card : s6Step190Add0Arena.live.card=885 := by
  decide +kernel

private theorem s6Step190Add0_borrowed : s6Step190Add0Arena.checkBorrow (hmrHybridCount s6Step190Add0Arena s6Step190Add0B.length) s6Step190Add0Work=some s6Step190Add0During := by
  have len : s6Step190Add0Work.length=hmrHybridCount s6Step190Add0Arena s6Step190Add0B.length := by
    rw [hmrHybridCount,s6Step190Add0_card]
    decide +kernel
  have nd : s6Step190Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step190Add0Arena s6Step190Add0During s6Step190Add0Work.toFinset s6Step190Add0_bounded s6Step190Add0_apart rfl

private theorem s6Step190Add0_distinct : (853::854::907::(s6Step190Add0A++s6Step190Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190Add0_owned : (853::854::907::(s6Step190Add0A++s6Step190Add0B)).toFinset⊆s6Step190Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step190Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190Add0_checked : compileHmrHybridCinLog s6Step190Add0Arena 854 853 907 s6Step190Add0A s6Step190Add0B s6Step190Add0Work=some s6Step190Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step190Add0Arena s6Step190Add0During 854 853 907 s6Step190Add0A s6Step190Add0B s6Step190Add0Work
    (by decide +kernel) (by decide +kernel) s6Step190Add0_distinct
    (fun q hq => s6Step190Add0_owned (List.mem_toFinset.mpr hq)) s6Step190Add0_borrowed

private theorem s6Step190Add1_apart : Disjoint s6Step190Add1Arena.live s6Step190Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step190Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190Add1_card : s6Step190Add1Arena.live.card=885 := by
  decide +kernel

private theorem s6Step190Add1_borrowed : s6Step190Add1Arena.checkBorrow (hmrHybridCount s6Step190Add1Arena s6Step190Add1B.length) s6Step190Add1Work=some s6Step190Add1During := by
  have len : s6Step190Add1Work.length=hmrHybridCount s6Step190Add1Arena s6Step190Add1B.length := by
    rw [hmrHybridCount,s6Step190Add1_card]
    decide +kernel
  have nd : s6Step190Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step190Add1Arena s6Step190Add1During s6Step190Add1Work.toFinset s6Step190Add1_bounded s6Step190Add1_apart rfl

private theorem s6Step190Add1_distinct : (853::854::907::(s6Step190Add1A++s6Step190Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190Add1_owned : (853::854::907::(s6Step190Add1A++s6Step190Add1B)).toFinset⊆s6Step190Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step190Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190Add1_checked : compileHmrHybridCinLog s6Step190Add1Arena 854 853 907 s6Step190Add1A s6Step190Add1B s6Step190Add1Work=some s6Step190Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step190Add1Arena s6Step190Add1During 854 853 907 s6Step190Add1A s6Step190Add1B s6Step190Add1Work
    (by decide +kernel) (by decide +kernel) s6Step190Add1_distinct
    (fun q hq => s6Step190Add1_owned (List.mem_toFinset.mpr hq)) s6Step190Add1_borrowed

private theorem s6Step190F4_apart : Disjoint (s6Step190Add0A++s6Step190Add0B).toFinset (s6Step190Add1A++s6Step190Add1B).toFinset := by
  have nd : ((s6Step190Add0A++s6Step190Add0B)++(s6Step190Add1A++s6Step190Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step190F4_carry : s6Step190F4FlagArena.checkBorrow 1 [907]=some s6Step190Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step190F4FlagArena,s6Step190HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step190F4FlagArena,s6Step190HeadFvAfter,s6Step190Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step190F4_distinct : (821::854::853::907::((s6Step190Add0A++s6Step190Add1A)++(s6Step190Add0B++s6Step190Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190F4_flag : s6Step190HeadFvAfter.checkBorrow 1 [853]=some s6Step190F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step190HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step190F4_owned : (821::854::((s6Step190Add0A++s6Step190Add1A)++(s6Step190Add0B++s6Step190Add1B))).toFinset⊆s6Step190HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step190HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190F4_checked : compileHmrHybridF4Log s6Step190HeadFvAfter 821 854 s6Step190Add0A s6Step190Add0B s6Step190Add1A s6Step190Add1B [853] [907] s6Step190Add0Work s6Step190Add1Work=some s6Step190F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step190HeadFvAfter s6Step190F4FlagArena s6Step190Add0Arena s6Step190Add0During s6Step190Add1During 821 854
    s6Step190Add0A s6Step190Add0B s6Step190Add1A s6Step190Add1B [853] [907] s6Step190Add0Work s6Step190Add1Work
    (fun q hq => s6Step190F4_owned (List.mem_toFinset.mpr hq)) s6Step190F4_flag s6Step190F4_carry
    s6Step190F4_distinct s6Step190F4_apart s6Step190Add0_checked s6Step190Add1_checked

private theorem s6Step190Front_branch : s6Step190FrontSigmaArena.checkBorrow 1 [854]=some s6Step190HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step190FrontSigmaArena,s6Step190EntryGvAfter,s6Step190EntryGAfter,arenaWires]
  · change s6Step190HeadGBefore.live=(s6Step190EntryGvAfter.live∪{821})∪{854}
    apply hmrArena_union_pair_of_filter_check s6Step190EntryGvAfter s6Step190HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 821 854 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step190Front_entry : HmrFrontEntryValid s6Step190EntryFBefore s6Step190FrontBank 175 109 ⟨174,173,110,109⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step190FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step190EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step190EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(822,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(855,860),(861,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step190FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step190Front_sigma : s6Step190EntryGvAfter.checkBorrow 1 [821]=some s6Step190FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step190EntryGvAfter,s6Step190EntryGAfter,arenaWires]
  · rfl

private def s6Step190HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190HeadFBefore : Arena := s6Step190HeadGAfter

private def s6Step190HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430],795⟩

private def s6Step190HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814],776⟩

private def s6Step190HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860],777⟩

private def s6Step190HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839],775⟩

private theorem s6Step190HeadBank_incomingDistinct : ([s6Step190HeadGRow,s6Step190HeadFRow,s6Step190HeadGvRow,s6Step190HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190HeadF_Incoming : rowsOwned s6Step190HeadFBefore [s6Step190HeadFRow,s6Step190HeadGvRow,s6Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190HeadGRow,s6Step190HeadFRow,s6Step190HeadGvRow,s6Step190HeadFvRow] 1 s6Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step190HeadBank_outgoingOwned : rowsOwned s6Step190HeadFvAfter [s6Step190HeadGOut,s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step190HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<891) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step190HeadF_Outgoing : rowsOwned s6Step190HeadFvAfter [s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut] :=
  hmrRows_owned_drop s6Step190HeadFvAfter [s6Step190HeadGOut,s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut] 1 s6Step190HeadBank_outgoingOwned

private theorem s6Step190HeadF_distinct : (s6Step190HeadFRow.sign::s6Step190HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190HeadF_owned : (s6Step190HeadFRow.sign::s6Step190HeadFRow.payload).toFinset⊆s6Step190HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190HeadF_reserved : s6Step190HeadFBefore.reserve s6Step190HeadFFresh.toFinset=some s6Step190HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190HeadFFresh,arenaWires]
  · norm_num [s6Step190HeadFBefore,s6Step190HeadGAfter,s6Step190HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step190HeadFAfter,s6Step190HeadFBefore,s6Step190HeadGAfter,s6Step190HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step190HeadF_checked : planRowResizeLog s6Step190HeadFBefore s6Step190HeadFRow 176 s6Step190HeadFFresh=
    some (s6Step190HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 838],795⟩,growRow 795 s6Step190HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step190HeadFBefore s6Step190HeadFAfter s6Step190HeadFRow 176 s6Step190HeadFFresh
    s6Step190HeadF_distinct s6Step190HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190HeadF_reserved
  have rowEq : WindowRow.mk (s6Step190HeadFRow.payload++s6Step190HeadFFresh) s6Step190HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 838],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step190HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step190HeadFvBefore : Arena := s6Step190HeadGvAfter

private theorem s6Step190HeadFv_Incoming : rowsOwned s6Step190HeadFvBefore [s6Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190HeadGRow,s6Step190HeadFRow,s6Step190HeadGvRow,s6Step190HeadFvRow] 3 s6Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step190HeadFv_Outgoing : rowsOwned s6Step190HeadFvAfter [s6Step190HeadFvOut] :=
  hmrRows_owned_drop s6Step190HeadFvAfter [s6Step190HeadGOut,s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut] 3 s6Step190HeadBank_outgoingOwned

private theorem s6Step190HeadFv_distinct : (s6Step190HeadFvRow.sign::s6Step190HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190HeadFv_owned : (s6Step190HeadFvRow.sign::s6Step190HeadFvRow.payload).toFinset⊆s6Step190HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190HeadFv_reserved : s6Step190HeadFvBefore.reserve s6Step190HeadFvFresh.toFinset=some s6Step190HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190HeadFvFresh,arenaWires]
  · norm_num [s6Step190HeadFvBefore,s6Step190HeadGvAfter,s6Step190HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step190HeadFvAfter,s6Step190HeadFvBefore,s6Step190HeadGvAfter,s6Step190HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step190HeadFv_checked : planRowResizeLog s6Step190HeadFvBefore s6Step190HeadFvRow 110 s6Step190HeadFvFresh=
    some (s6Step190HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩,growRow 776 s6Step190HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step190HeadFvBefore s6Step190HeadFvAfter s6Step190HeadFvRow 110 s6Step190HeadFvFresh
    s6Step190HeadFv_distinct s6Step190HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step190HeadFvRow.payload++s6Step190HeadFvFresh) s6Step190HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 887, 892, 818, 886, 793, 857, 888, 876, 865, 830, 803, 814, 890],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step190HeadG_Incoming : rowsOwned s6Step190HeadGBefore [s6Step190HeadGRow,s6Step190HeadFRow,s6Step190HeadGvRow,s6Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190HeadGRow,s6Step190HeadFRow,s6Step190HeadGvRow,s6Step190HeadFvRow] 0 s6Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step190HeadG_Outgoing : rowsOwned s6Step190HeadFvAfter [s6Step190HeadGOut,s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut] :=
  hmrRows_owned_drop s6Step190HeadFvAfter [s6Step190HeadGOut,s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut] 0 s6Step190HeadBank_outgoingOwned

private theorem s6Step190HeadG_distinct : (s6Step190HeadGRow.sign::s6Step190HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190HeadG_owned : (s6Step190HeadGRow.sign::s6Step190HeadGRow.payload).toFinset⊆s6Step190HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step190HeadG_reserved : s6Step190HeadGBefore.reserve s6Step190HeadGFresh.toFinset=some s6Step190HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190HeadGFresh,arenaWires]
  · norm_num [s6Step190HeadGBefore,s6Step190HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step190HeadGBefore s6Step190HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,838),(839,842),(843,849),(850,853),(854,863),(864,880),(881,890),(892,896),(898,899),(901,903),(904,905),(908,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<838) ∨ (839≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step190HeadGFresh rfl rfl
    · norm_num [s6Step190HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step190HeadG_checked : planRowResizeLog s6Step190HeadGBefore s6Step190HeadGRow 176 s6Step190HeadGFresh=
    some (s6Step190HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860, 880],777⟩,growRow 777 s6Step190HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step190HeadGBefore s6Step190HeadGAfter s6Step190HeadGRow 176 s6Step190HeadGFresh
    s6Step190HeadG_distinct s6Step190HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190HeadG_reserved
  have rowEq : WindowRow.mk (s6Step190HeadGRow.payload++s6Step190HeadGFresh) s6Step190HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 860, 880],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step190HeadGvBefore : Arena := s6Step190HeadFAfter

private theorem s6Step190HeadGv_Incoming : rowsOwned s6Step190HeadGvBefore [s6Step190HeadGvRow,s6Step190HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step190HeadGRow,s6Step190HeadFRow,s6Step190HeadGvRow,s6Step190HeadFvRow] 2 s6Step190HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step190HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step190HeadGv_Outgoing : rowsOwned s6Step190HeadFvAfter [s6Step190HeadGvOut,s6Step190HeadFvOut] :=
  hmrRows_owned_drop s6Step190HeadFvAfter [s6Step190HeadGOut,s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut] 2 s6Step190HeadBank_outgoingOwned

private theorem s6Step190HeadGv_distinct : (s6Step190HeadGvRow.sign::s6Step190HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step190HeadGv_owned : (s6Step190HeadGvRow.sign::s6Step190HeadGvRow.payload).toFinset⊆s6Step190HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step190HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<853) ∨ (854≤q ∧ q<863) ∨ (864≤q ∧ q<890) ∨ (892≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (908≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step190HeadGv_reserved : s6Step190HeadGvBefore.reserve s6Step190HeadGvFresh.toFinset=some s6Step190HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step190HeadGvFresh,arenaWires]
  · norm_num [s6Step190HeadGvBefore,s6Step190HeadFAfter,s6Step190HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step190HeadGvAfter,s6Step190HeadGvBefore,s6Step190HeadFAfter,s6Step190HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step190HeadGv_checked : planRowResizeLog s6Step190HeadGvBefore s6Step190HeadGvRow 110 s6Step190HeadGvFresh=
    some (s6Step190HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 863],775⟩,growRow 775 s6Step190HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step190HeadGvBefore s6Step190HeadGvAfter s6Step190HeadGvRow 110 s6Step190HeadGvFresh
    s6Step190HeadGv_distinct s6Step190HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step190HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step190HeadGvRow.payload++s6Step190HeadGvFresh) s6Step190HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 789, 828, 879, 805, 864, 823, 778, 922, 868, 848, 841, 898, 796, 839, 863],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step190HeadBank_rows : planWindowRowsLog s6Step190HeadGBefore [(s6Step190HeadGRow,176),(s6Step190HeadFRow,176),(s6Step190HeadGvRow,110),(s6Step190HeadFvRow,110)] [s6Step190HeadGFresh,s6Step190HeadFFresh,s6Step190HeadGvFresh,s6Step190HeadFvFresh]=
    some (s6Step190HeadFvAfter,[s6Step190HeadGOut,s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut],(growRow 777 s6Step190HeadGFresh ++ (growRow 795 s6Step190HeadFFresh ++ (growRow 775 s6Step190HeadGvFresh ++ (growRow 776 s6Step190HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step190HeadFvAfter [] []=some (s6Step190HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step190HeadFvBefore s6Step190HeadFvAfter s6Step190HeadFvAfter
    s6Step190HeadFvRow s6Step190HeadFvOut 110 s6Step190HeadFvFresh [] [] []
    (growRow 776 s6Step190HeadFvFresh) ([]) s6Step190HeadFv_Incoming s6Step190HeadFv_checked h4 s6Step190HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step190HeadGvBefore s6Step190HeadGvAfter s6Step190HeadFvAfter
    s6Step190HeadGvRow s6Step190HeadGvOut 110 s6Step190HeadGvFresh [(s6Step190HeadFvRow,110)] [s6Step190HeadFvFresh] [s6Step190HeadFvOut]
    (growRow 775 s6Step190HeadGvFresh) ((growRow 776 s6Step190HeadFvFresh ++ [])) s6Step190HeadGv_Incoming s6Step190HeadGv_checked h3 s6Step190HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step190HeadFBefore s6Step190HeadFAfter s6Step190HeadFvAfter
    s6Step190HeadFRow s6Step190HeadFOut 176 s6Step190HeadFFresh [(s6Step190HeadGvRow,110),(s6Step190HeadFvRow,110)] [s6Step190HeadGvFresh,s6Step190HeadFvFresh] [s6Step190HeadGvOut,s6Step190HeadFvOut]
    (growRow 795 s6Step190HeadFFresh) ((growRow 775 s6Step190HeadGvFresh ++ (growRow 776 s6Step190HeadFvFresh ++ []))) s6Step190HeadF_Incoming s6Step190HeadF_checked h2 s6Step190HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step190HeadGBefore s6Step190HeadGAfter s6Step190HeadFvAfter
    s6Step190HeadGRow s6Step190HeadGOut 176 s6Step190HeadGFresh [(s6Step190HeadFRow,176),(s6Step190HeadGvRow,110),(s6Step190HeadFvRow,110)] [s6Step190HeadFFresh,s6Step190HeadGvFresh,s6Step190HeadFvFresh] [s6Step190HeadFOut,s6Step190HeadGvOut,s6Step190HeadFvOut]
    (growRow 777 s6Step190HeadGFresh) ((growRow 795 s6Step190HeadFFresh ++ (growRow 775 s6Step190HeadGvFresh ++ (growRow 776 s6Step190HeadFvFresh ++ [])))) s6Step190HeadG_Incoming s6Step190HeadG_checked h1 s6Step190HeadG_Outgoing
  exact h0

private theorem s6Step190HeadBank_checked : compileHmrBankResizeLog .headroom s6Step190HeadGBefore ⟨s6Step190HeadFRow,s6Step190HeadGRow,s6Step190HeadFvRow,s6Step190HeadGvRow⟩ ⟨176,176,110,110⟩ [s6Step190HeadGFresh,s6Step190HeadFFresh,s6Step190HeadGvFresh,s6Step190HeadFvFresh]=
    some (s6Step190HeadFvAfter,⟨s6Step190HeadFOut,s6Step190HeadGOut,s6Step190HeadFvOut,s6Step190HeadGvOut⟩,(growRow 777 s6Step190HeadGFresh ++ (growRow 795 s6Step190HeadFFresh ++ (growRow 775 s6Step190HeadGvFresh ++ (growRow 776 s6Step190HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step190HeadBank_rows]
  rfl

private theorem s6Step190Front_checked : compileHmrSourceFrontLog s6Step190EntryFBefore s6Step190FrontBank 175 109 ⟨174,173,110,109⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step190FrontLog=some s6Step190FrontPlan := by
  have pairEq : s6Step190FrontPair=⟨s6Step190HeadFRow,s6Step190HeadGRow,s6Step190HeadFvRow,s6Step190HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step190FrontHead=⟨s6Step190ExitFRow,s6Step190ExitGRow,s6Step190ExitFvRow,s6Step190ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step190Add0A=s6Step190FrontHead.f.wires := by decide +kernel
  have gEq : s6Step190Add0B=s6Step190FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step190Add1A=s6Step190FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step190Add1B=s6Step190FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step190EntryFBefore s6Step190FrontBank 175 109 ⟨174,173,110,109⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step190FrontLog s6Step190FrontPlan
  · exact s6Step190Front_entry
  · exact s6Step190EntryBank_checked
  · exact s6Step190Front_sigma
  · rfl
  · exact s6Step190Front_branch
  · rfl
  · simpa only [s6Step190FrontPlan,pairEq] using s6Step190HeadBank_checked
  · simpa only [s6Step190FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step190F4_checked
  · exact s6Step190Counter_checked
  · rfl
  · simpa only [s6Step190FrontPlan,headEq] using s6Step190ExitBank_checked

private theorem s6Step190Complete_explicit_checked : compileHmrEarlyStepLog s6Step190EntryFBefore s6Step190FrontBank 175 109 ⟨174,173,110,109⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step190CompleteLog=some s6Step190CompletePlan := by
  let Q := s6Step190EarlyControlPlan
  have hq := s6Step190EarlyControl_plan_checked
  have fv1 : s6Step190CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step190CompleteOut.fv.payload[2]?.getD s6Step190CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step190CompleteOut.fv.payload[3]?.getD s6Step190CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step190CompleteOut.fv.payload[4]?.getD s6Step190CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step190EntryFBefore s6Step190EarlyControlArena s6Step190FrontBank 175 109 ⟨174,173,110,109⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 43 s6Step190CompleteLog s6Step190FrontPlan Q
    s6Step190Front_checked s6Step190Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step190Complete_owned s6Step190Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step190EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 769 821 s6Step190CompleteOut.fv.second (s6Step190CompleteOut.fv.payload[2]?.getD s6Step190CompleteOut.fv.sign) (s6Step190CompleteOut.fv.payload[3]?.getD s6Step190CompleteOut.fv.sign) (s6Step190CompleteOut.fv.payload[4]?.getD s6Step190CompleteOut.fv.sign) 854 43 s6Step190EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep190Arena : Arena := s6Step190EntryFBefore
def s6PrivateStep190Bank : WindowBank := s6Step190FrontBank
def s6PrivateStep190Spec : HmrSourceWalkStepLog := ⟨175,109,⟨174,173,110,109⟩,43,.early s6Step190CompleteLog⟩
def s6PrivateStep190Plan : HmrSourceStepPlan := .early s6Step190CompletePlan
theorem s6PrivateStep190_source : s6PrivateStep190Spec=s6ObservedLogs176[14] := rfl
theorem s6PrivateStep190_checked : compileHmrSourceStepLog s6PrivateStep190Arena s6PrivateStep190Bank
    s6PrivateStep190Spec.fgWidth s6PrivateStep190Spec.vWidth s6PrivateStep190Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894]
    6 498 190 s6PrivateStep190Spec.need none s6PrivateStep190Spec.log=some s6PrivateStep190Plan := by
  change compileHmrSourceStepLog s6Step190EntryFBefore s6Step190FrontBank 175 109 ⟨174,173,110,109⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894] 6 498 190 43 none (.early s6Step190CompleteLog)=some (.early s6Step190CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 190<498)]
  rw [s6Step190Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
