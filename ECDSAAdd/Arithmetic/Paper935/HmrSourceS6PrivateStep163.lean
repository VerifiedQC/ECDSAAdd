import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep161
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

private def s6Step163CompleteMoves : List (Wire × Wire) := [(789,186)]

private def s6Step163EarlyControlLog : HmrEarlyControlLog := ⟨[789, 879, 828, 890, 863],[876],[922],[887, 891, 903, 791, 825, 810],[]⟩

private def s6Step163FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [863], [], [879]],[[876], [890], [828], [908]],[[], [], [], []]⟩,[818],[857],[922],[887],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[922, 887, 891, 903]⟩

private def s6Step163CompleteLog : HmrEarlyStepLog := ⟨s6Step163FrontLog,s6Step163CompleteMoves,s6Step163EarlyControlLog⟩

private def s6Step163ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step163ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩

private def s6Step163ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185],777⟩

private def s6Step163ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step163FrontOut : WindowBank := ⟨s6Step163ExitFOut,s6Step163ExitGOut,s6Step163ExitFvOut,s6Step163ExitGvOut⟩

private def s6Step163CompleteOut : WindowBank := s6Step163FrontOut.repacked s6Step163CompleteMoves

private def s6Step163EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step163EarlyControlPositiveArena,[876],s6Step163EarlyControlEqualityArena,[922],⟨⟨818,false⟩,[⟨⟨876,false⟩,922⟩]⟩⟩

private def s6Step163EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,789⟩,⟨⟨772,false⟩,879⟩,⟨⟨771,false⟩,828⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,863⟩]⟩

private def s6Step163EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step163EarlyControlZeroArena,s6Step163EarlyControlZeroPlan,s6Step163EarlyControlClassPlan,s6Step163EarlyControlFlagArena,s6Step163EarlyControlFittedArena,s6Step163EarlyControlHistoryArena,s6Step163EarlyControlSigmaArena,s6Step163EarlyControlOutputArena,s6Step163EarlyControlLog⟩

private def s6Step163CounterWork : List Wire := [922, 887, 891, 903]

private theorem s6Step163Counter_bounded : s6Step163CounterWork.toFinset⊆arenaWires := by norm_num [s6Step163CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step163HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163CounterDuring : Arena := ⟨s6Step163HeadFvAfter.live∪s6Step163CounterWork.toFinset,Finset.union_subset s6Step163HeadFvAfter.bounded s6Step163Counter_bounded⟩

private def s6Step163EntryFFresh : List Wire := []

private def s6Step163EntryFvFresh : List Wire := []

private def s6Step163EntryGFresh : List Wire := [863]

private def s6Step163EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163EntryGvFresh : List Wire := [879]

private def s6Step163ExitFExtra : List Wire := [890]

private def s6Step163ExitGExtra : List Wire := [186, 863, 876]

private def s6Step163ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163ExitGvExtra : List Wire := [879, 828]

private def s6Step163Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step163Add0_bounded : s6Step163Add0Work.toFinset⊆arenaWires := by
  have h : s6Step163Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step163Add0During : Arena := ⟨s6Step163Add0Arena.live∪s6Step163Add0Work.toFinset,Finset.union_subset s6Step163Add0Arena.bounded s6Step163Add0_bounded⟩

private def s6Step163Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step163Add1_bounded : s6Step163Add1Work.toFinset⊆arenaWires := by
  have h : s6Step163Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step163Add1During : Arena := ⟨s6Step163Add1Arena.live∪s6Step163Add1Work.toFinset,Finset.union_subset s6Step163Add1Arena.bounded s6Step163Add1_bounded⟩

private def s6Step163F4FlagArena : Arena := ⟨s6Step163HeadFvAfter.live∪{922},Finset.union_subset s6Step163HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step163F4Plan : HmrHybridF4Plan := ⟨s6Step163F4FlagArena,[922],s6Step163Add0Arena,[887],s6Step163Add0During,s6Step163Add0Work,s6Step163Add1During,s6Step163Add1Work⟩

private def s6Step163HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 890],795⟩

private def s6Step163HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩

private def s6Step163HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863, 876],777⟩

private def s6Step163HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879, 828],775⟩

private def s6Step163FrontHead : WindowBank := ⟨s6Step163HeadFOut,s6Step163HeadGOut,s6Step163HeadFvOut,s6Step163HeadGvOut⟩

private def s6Step163EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step163EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step163EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863],777⟩

private def s6Step163EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879],775⟩

private def s6Step163FrontPair : WindowBank := ⟨s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut⟩

private def s6Step163FrontSigmaArena : Arena := ⟨s6Step163EntryGvAfter.live∪{818},Finset.union_subset s6Step163EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step163HeadFFresh : List Wire := [890]

private def s6Step163HeadFvFresh : List Wire := [908]

private def s6Step163HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163HeadGFresh : List Wire := [876]

private def s6Step163HeadGvFresh : List Wire := [828]

private def s6Step163FrontPlan : HmrSourceFront := ⟨s6Step163EntryGvAfter,s6Step163FrontPair,(growRow 795 s6Step163EntryFFresh ++ (growRow 777 s6Step163EntryGFresh ++ (growRow 776 s6Step163EntryFvFresh ++ (growRow 775 s6Step163EntryGvFresh ++ [])))),s6Step163FrontSigmaArena,[818],s6Step163HeadGBefore,[857],
  s6Step163HeadFvAfter,s6Step163FrontHead,(growRow 777 s6Step163HeadGFresh ++ (growRow 795 s6Step163HeadFFresh ++ (growRow 775 s6Step163HeadGvFresh ++ (growRow 776 s6Step163HeadFvFresh ++ [])))),s6Step163F4Plan,s6Step163CounterDuring,s6Step163CounterWork,s6Step163ExitGvAfter,s6Step163FrontOut,(shrinkRow 777 s6Step163ExitGExtra ++ (shrinkRow 795 s6Step163ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step163ExitGvExtra ++ []))))⟩

private def s6Step163CompletePlan : HmrEarlyStepPlan := ⟨s6Step163FrontPlan,s6Step163EarlyControlArena,s6Step163EarlyControlPlan,s6Step163CompleteMoves⟩

private theorem s6Step163Complete_apart : List.Disjoint (s6Step163CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [818, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step163CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[818, 857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step163Complete_owned : (s6Step163CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step163CompleteRelocationMove0Borrowed : Arena := ⟨s6Step163ExitGvAfter.live∪{186},Finset.union_subset s6Step163ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step163CompleteRelocation_move0_owned : 789∈s6Step163ExitGvAfter.live := by norm_num [s6Step163ExitGvAfter,arenaWires]

private theorem s6Step163CompleteRelocation_move0_reserve : s6Step163ExitGvAfter.reserve {186}=some s6Step163CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step163ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step163CompleteRelocation_move0_retire : s6Step163CompleteRelocationMove0Borrowed.retireSet {789}=s6Step163EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step163CompleteRelocationMove0Borrowed s6Step163EarlyControlArena {789}
  change s6Step163EarlyControlArena.live=(s6Step163ExitGvAfter.live∪{186})\{789}
  apply hmrArena_update_of_filter_check s6Step163ExitGvAfter s6Step163EarlyControlArena (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [186] [789] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step163CompleteRelocation_checked : s6Step163ExitGvAfter.checkRepack [(789,186)]=some s6Step163EarlyControlArena := by
  have tail1 : s6Step163EarlyControlArena.checkRepack []=some s6Step163EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step163ExitGvAfter s6Step163CompleteRelocationMove0Borrowed s6Step163EarlyControlArena s6Step163EarlyControlArena 789 186 []
    s6Step163CompleteRelocation_move0_owned s6Step163CompleteRelocation_move0_reserve s6Step163CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step163Complete_repack : s6Step163ExitGvAfter.checkRepack s6Step163CompleteMoves=some s6Step163EarlyControlArena := by
  simpa only [s6Step163CompleteMoves] using s6Step163CompleteRelocation_checked

private theorem s6Step163EarlyControl_branchOwned : ([857] : List Wire).toFinset⊆s6Step163EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EarlyControl_branch : compileHmrBranchRetirement s6Step163EarlyControlSigmaArena 857=some s6Step163EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step163EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step163EarlyControlSigmaArena s6Step163EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [857] rfl rfl
    decide +kernel

private theorem s6Step163EarlyControl_classEqualityBorrow : s6Step163EarlyControlPositiveArena.checkBorrow (([818, 876] : List Wire).length-1) s6Step163EarlyControlLog.classWork=some s6Step163EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step163EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step163EarlyControlEqualityArena,s6Step163EarlyControlPositiveArena,s6Step163EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step163EarlyControl_classEqualityOwned : ([818, 876] : List Wire).toFinset⊆s6Step163EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163EarlyControl_classEquality : compileHmrEqualityLog s6Step163EarlyControlPositiveArena [818, 876] 0 s6Step163EarlyControlLog.classWork=some (s6Step163EarlyControlEqualityArena,s6Step163EarlyControlLog.classWork,s6Step163EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step163EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step163EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step163EarlyControl_classOwned : ([769, 863, 818] : List Wire).toFinset⊆s6Step163EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163EarlyControl_positiveBorrow : s6Step163EarlyControlZeroArena.checkBorrow (1) s6Step163EarlyControlLog.positiveWork=some s6Step163EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step163EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step163EarlyControlPositiveArena,s6Step163EarlyControlZeroArena,s6Step163EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step163EarlyControl_class : compileHmrSourceClassLog s6Step163EarlyControlZeroArena false 769 s6Step163EarlyControlZeroPlan.top 0 818 s6Step163EarlyControlLog.positiveWork s6Step163EarlyControlLog.classWork=some s6Step163EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step163EarlyControlClassPlan s6Step163EarlyControlZeroArena false 769 s6Step163EarlyControlZeroPlan.top 0 818
  constructor
  · decide +kernel
  · exact s6Step163EarlyControl_classOwned
  · exact s6Step163EarlyControl_positiveBorrow
  · exact s6Step163EarlyControl_classEquality

private theorem s6Step163EarlyControl_entryRecordOwned : ([857, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EarlyControl_entrySigmaOwned : ([818, 254] : List Wire).toFinset⊆s6Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EarlyControl_fitBorrow : s6Step163EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step163EarlyControlLog.recordFresh=some s6Step163EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step163EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step163EarlyControlFittedArena,s6Step163EarlyControlFlagArena,s6Step163EarlyControlLog,arenaWires]

private theorem s6Step163EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step163EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163EarlyControl_fit : compileHmrRecordGrowLog s6Step163EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step163EarlyControlLog.recordFresh=some s6Step163EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step163EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step163EarlyControl_fitBorrow

private theorem s6Step163EarlyControl_flagsBorrow : s6Step163EarlyControlEqualityArena.checkBorrow (6) s6Step163EarlyControlLog.flagWork=some s6Step163EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step163EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step163EarlyControlFlagArena,s6Step163EarlyControlEqualityArena,s6Step163EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step163EarlyControl_flagsOwned : ([922, 253, 252, 251] : List Wire).toFinset⊆s6Step163EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163EarlyControl_flags : compileHmrFlagsLog s6Step163EarlyControlClassPlan.equalityArena s6Step163EarlyControlClassPlan.equality.top 253 252 251 s6Step163EarlyControlLog.flagWork=some s6Step163EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step163EarlyControl_flagsOwned⟩
  · exact s6Step163EarlyControl_flagsBorrow

private theorem s6Step163EarlyControl_historyBorrow : s6Step163EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step163EarlyControlLog.recordFresh=some s6Step163EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step163EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step163EarlyControlArena s6Step163EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step163EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step163EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EarlyControl_history : compileHmrRecordGrowLog s6Step163EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step163EarlyControlLog.recordFresh=some s6Step163EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step163EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step163EarlyControl_historyBorrow

private theorem s6Step163EarlyControl_sigmaOwned : ([254, 818] : List Wire).toFinset⊆s6Step163EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EarlyControl_sigmaReleaseOwned : ([818] : List Wire).toFinset⊆s6Step163EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EarlyControl_sigmaRelease : s6Step163EarlyControlHistoryArena.release {818} (fun _ => false)=some s6Step163EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step163EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step163EarlyControlHistoryArena s6Step163EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [818] rfl rfl
    decide +kernel

private theorem s6Step163EarlyControl_sigma : compileHmrSigmaDropLog s6Step163EarlyControlHistoryArena false 0 0 254 818 []=some s6Step163EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step163EarlyControl_sigmaOwned⟩
  · exact s6Step163EarlyControl_sigmaRelease

private theorem s6Step163EarlyControl_zeroBorrow : s6Step163EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step163EarlyControlLog.zeroWork=some s6Step163EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step163EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step163EarlyControlArena s6Step163EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<876) ∨ (877≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step163EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step163EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step163EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step163EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step163EarlyControlArena (fun q => ([(0,782),(783,787),(788,789),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EarlyControl_zero : compileHmrEqualityLog s6Step163EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step163EarlyControlLog.zeroWork=some (s6Step163EarlyControlZeroArena,s6Step163EarlyControlLog.zeroWork,s6Step163EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step163EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step163EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step163EarlyControl_logged : s6Step163EarlyControlPlan.Logged s6Step163EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 818 254 253 252 251 857 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step163EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step163EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step163EarlyControl_zero
  · exact s6Step163EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step163EarlyControl_flags
  · exact s6Step163EarlyControl_fit
  · exact s6Step163EarlyControl_history
  · exact s6Step163EarlyControl_sigma
  · exact s6Step163EarlyControl_branch

private theorem s6Step163EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step163EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 818 254 253 252 251 857 42 s6Step163EarlyControlLog=some s6Step163EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step163EarlyControlPlan s6Step163EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 818 254 253 252 251 857 42 s6Step163EarlyControl_logged

private def s6Step163EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step163EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step163EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186],777⟩

private def s6Step163EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step163FrontBank : WindowBank := ⟨s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow⟩

private def s6Step163Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 890, 795]

private def s6Step163Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863, 876, 777]

private def s6Step163Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908, 776]

private def s6Step163Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879, 828, 775]

private theorem s6Step163Counter_apart : Disjoint s6Step163HeadFvAfter.live s6Step163CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step163HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163Counter_borrowed : s6Step163HeadFvAfter.checkBorrow 4 s6Step163CounterWork=some s6Step163CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step163HeadFvAfter s6Step163CounterDuring s6Step163CounterWork.toFinset s6Step163Counter_bounded s6Step163Counter_apart rfl

private theorem s6Step163Counter_owned : (818::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step163HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step163HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163Counter_checked : compileHmrCounterStepLog s6Step163HeadFvAfter true 818 [774, 773, 772, 771, 770, 769] s6Step163CounterWork=some s6Step163CounterDuring := by
  have owned : ∀q∈818::[774, 773, 772, 771, 770, 769],q∈s6Step163HeadFvAfter.live := fun q hq => s6Step163Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step163Counter_borrowed

private def s6Step163EntryFAfter : Arena := s6Step163EntryFBefore

private theorem s6Step163EntryBank_incomingDistinct : ([s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163EntryF_Incoming : rowsOwned s6Step163EntryFBefore [s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow] 0 s6Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163EntryBank_outgoingOwned : rowsOwned s6Step163EntryGvAfter [s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step163EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163EntryF_Outgoing : rowsOwned s6Step163EntryGvAfter [s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut] :=
  hmrRows_owned_drop s6Step163EntryGvAfter [s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut] 0 s6Step163EntryBank_outgoingOwned

private theorem s6Step163EntryF_distinct : (s6Step163EntryFRow.sign::s6Step163EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163EntryF_owned : (s6Step163EntryFRow.sign::s6Step163EntryFRow.payload).toFinset⊆s6Step163EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EntryF_reserved : s6Step163EntryFBefore.reserve s6Step163EntryFFresh.toFinset=some s6Step163EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163EntryFFresh,arenaWires]
  · norm_num [s6Step163EntryFBefore,s6Step163EntryFFresh,arenaWires]
  · simp only [s6Step163EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step163EntryF_checked : planRowResizeLog s6Step163EntryFBefore s6Step163EntryFRow 188 s6Step163EntryFFresh=
    some (s6Step163EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩,growRow 795 s6Step163EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step163EntryFBefore s6Step163EntryFAfter s6Step163EntryFRow 188 s6Step163EntryFFresh
    s6Step163EntryF_distinct s6Step163EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163EntryF_reserved
  have rowEq : WindowRow.mk (s6Step163EntryFRow.payload++s6Step163EntryFFresh) s6Step163EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step163EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163EntryFvAfter : Arena := s6Step163EntryGAfter

private def s6Step163EntryFvBefore : Arena := s6Step163EntryGAfter

private theorem s6Step163EntryFv_Incoming : rowsOwned s6Step163EntryFvBefore [s6Step163EntryFvRow,s6Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow] 2 s6Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163EntryFv_Outgoing : rowsOwned s6Step163EntryGvAfter [s6Step163EntryFvOut,s6Step163EntryGvOut] :=
  hmrRows_owned_drop s6Step163EntryGvAfter [s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut] 2 s6Step163EntryBank_outgoingOwned

private theorem s6Step163EntryFv_distinct : (s6Step163EntryFvRow.sign::s6Step163EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163EntryFv_owned : (s6Step163EntryFvRow.sign::s6Step163EntryFvRow.payload).toFinset⊆s6Step163EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EntryFv_reserved : s6Step163EntryFvBefore.reserve s6Step163EntryFvFresh.toFinset=some s6Step163EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163EntryFvFresh,arenaWires]
  · norm_num [s6Step163EntryFvBefore,s6Step163EntryGAfter,s6Step163EntryFvFresh,arenaWires]
  · simp only [s6Step163EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step163EntryFv_checked : planRowResizeLog s6Step163EntryFvBefore s6Step163EntryFvRow 96 s6Step163EntryFvFresh=
    some (s6Step163EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩,growRow 776 s6Step163EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step163EntryFvBefore s6Step163EntryFvAfter s6Step163EntryFvRow 96 s6Step163EntryFvFresh
    s6Step163EntryFv_distinct s6Step163EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step163EntryFvRow.payload++s6Step163EntryFvFresh) s6Step163EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step163EntryGBefore : Arena := s6Step163EntryFBefore

private theorem s6Step163EntryG_Incoming : rowsOwned s6Step163EntryGBefore [s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow] 1 s6Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163EntryG_Outgoing : rowsOwned s6Step163EntryGvAfter [s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut] :=
  hmrRows_owned_drop s6Step163EntryGvAfter [s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut] 1 s6Step163EntryBank_outgoingOwned

private theorem s6Step163EntryG_distinct : (s6Step163EntryGRow.sign::s6Step163EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163EntryG_owned : (s6Step163EntryGRow.sign::s6Step163EntryGRow.payload).toFinset⊆s6Step163EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EntryG_reserved : s6Step163EntryGBefore.reserve s6Step163EntryGFresh.toFinset=some s6Step163EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163EntryGFresh,arenaWires]
  · norm_num [s6Step163EntryGBefore,s6Step163EntryFBefore,s6Step163EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step163EntryGBefore s6Step163EntryGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step163EntryGFresh rfl rfl
    · norm_num [s6Step163EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step163EntryG_checked : planRowResizeLog s6Step163EntryGBefore s6Step163EntryGRow 188 s6Step163EntryGFresh=
    some (s6Step163EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863],777⟩,growRow 777 s6Step163EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step163EntryGBefore s6Step163EntryGAfter s6Step163EntryGRow 188 s6Step163EntryGFresh
    s6Step163EntryG_distinct s6Step163EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163EntryG_reserved
  have rowEq : WindowRow.mk (s6Step163EntryGRow.payload++s6Step163EntryGFresh) s6Step163EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step163EntryGvBefore : Arena := s6Step163EntryGAfter

private theorem s6Step163EntryGv_Incoming : rowsOwned s6Step163EntryGvBefore [s6Step163EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow] 3 s6Step163EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163EntryGv_Outgoing : rowsOwned s6Step163EntryGvAfter [s6Step163EntryGvOut] :=
  hmrRows_owned_drop s6Step163EntryGvAfter [s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut] 3 s6Step163EntryBank_outgoingOwned

private theorem s6Step163EntryGv_distinct : (s6Step163EntryGvRow.sign::s6Step163EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163EntryGv_owned : (s6Step163EntryGvRow.sign::s6Step163EntryGvRow.payload).toFinset⊆s6Step163EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163EntryGv_reserved : s6Step163EntryGvBefore.reserve s6Step163EntryGvFresh.toFinset=some s6Step163EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163EntryGvFresh,arenaWires]
  · norm_num [s6Step163EntryGvBefore,s6Step163EntryGAfter,s6Step163EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step163EntryGvBefore s6Step163EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step163EntryGvFresh rfl rfl
    · norm_num [s6Step163EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step163EntryGv_checked : planRowResizeLog s6Step163EntryGvBefore s6Step163EntryGvRow 96 s6Step163EntryGvFresh=
    some (s6Step163EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879],775⟩,growRow 775 s6Step163EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step163EntryGvBefore s6Step163EntryGvAfter s6Step163EntryGvRow 96 s6Step163EntryGvFresh
    s6Step163EntryGv_distinct s6Step163EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step163EntryGvRow.payload++s6Step163EntryGvFresh) s6Step163EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step163EntryBank_rows : planWindowRowsLog s6Step163EntryFBefore [(s6Step163EntryFRow,188),(s6Step163EntryGRow,188),(s6Step163EntryFvRow,96),(s6Step163EntryGvRow,96)] [s6Step163EntryFFresh,s6Step163EntryGFresh,s6Step163EntryFvFresh,s6Step163EntryGvFresh]=
    some (s6Step163EntryGvAfter,[s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut],(growRow 795 s6Step163EntryFFresh ++ (growRow 777 s6Step163EntryGFresh ++ (growRow 776 s6Step163EntryFvFresh ++ (growRow 775 s6Step163EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step163EntryGvAfter [] []=some (s6Step163EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step163EntryGvBefore s6Step163EntryGvAfter s6Step163EntryGvAfter
    s6Step163EntryGvRow s6Step163EntryGvOut 96 s6Step163EntryGvFresh [] [] []
    (growRow 775 s6Step163EntryGvFresh) ([]) s6Step163EntryGv_Incoming s6Step163EntryGv_checked h4 s6Step163EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step163EntryFvBefore s6Step163EntryFvAfter s6Step163EntryGvAfter
    s6Step163EntryFvRow s6Step163EntryFvOut 96 s6Step163EntryFvFresh [(s6Step163EntryGvRow,96)] [s6Step163EntryGvFresh] [s6Step163EntryGvOut]
    (growRow 776 s6Step163EntryFvFresh) ((growRow 775 s6Step163EntryGvFresh ++ [])) s6Step163EntryFv_Incoming s6Step163EntryFv_checked h3 s6Step163EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step163EntryGBefore s6Step163EntryGAfter s6Step163EntryGvAfter
    s6Step163EntryGRow s6Step163EntryGOut 188 s6Step163EntryGFresh [(s6Step163EntryFvRow,96),(s6Step163EntryGvRow,96)] [s6Step163EntryFvFresh,s6Step163EntryGvFresh] [s6Step163EntryFvOut,s6Step163EntryGvOut]
    (growRow 777 s6Step163EntryGFresh) ((growRow 776 s6Step163EntryFvFresh ++ (growRow 775 s6Step163EntryGvFresh ++ []))) s6Step163EntryG_Incoming s6Step163EntryG_checked h2 s6Step163EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step163EntryFBefore s6Step163EntryFAfter s6Step163EntryGvAfter
    s6Step163EntryFRow s6Step163EntryFOut 188 s6Step163EntryFFresh [(s6Step163EntryGRow,188),(s6Step163EntryFvRow,96),(s6Step163EntryGvRow,96)] [s6Step163EntryGFresh,s6Step163EntryFvFresh,s6Step163EntryGvFresh] [s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut]
    (growRow 795 s6Step163EntryFFresh) ((growRow 777 s6Step163EntryGFresh ++ (growRow 776 s6Step163EntryFvFresh ++ (growRow 775 s6Step163EntryGvFresh ++ [])))) s6Step163EntryF_Incoming s6Step163EntryF_checked h1 s6Step163EntryF_Outgoing
  exact h0

private theorem s6Step163EntryBank_checked : compileHmrBankResizeLog .entry s6Step163EntryFBefore ⟨s6Step163EntryFRow,s6Step163EntryGRow,s6Step163EntryFvRow,s6Step163EntryGvRow⟩ ⟨188,188,96,96⟩ [s6Step163EntryFFresh,s6Step163EntryGFresh,s6Step163EntryFvFresh,s6Step163EntryGvFresh]=
    some (s6Step163EntryGvAfter,⟨s6Step163EntryFOut,s6Step163EntryGOut,s6Step163EntryFvOut,s6Step163EntryGvOut⟩,(growRow 795 s6Step163EntryFFresh ++ (growRow 777 s6Step163EntryGFresh ++ (growRow 776 s6Step163EntryFvFresh ++ (growRow 775 s6Step163EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step163EntryBank_rows]
  rfl

private def s6Step163ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step163ExitFBefore : Arena := s6Step163ExitGAfter

private def s6Step163ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 890],795⟩

private def s6Step163ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩

private def s6Step163ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863, 876],777⟩

private def s6Step163ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879, 828],775⟩

private theorem s6Step163ExitBank_incomingDistinct : ([s6Step163ExitGRow,s6Step163ExitFRow,s6Step163ExitFvRow,s6Step163ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163ExitF_Incoming : rowsOwned s6Step163ExitFBefore [s6Step163ExitFRow,s6Step163ExitFvRow,s6Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163ExitGRow,s6Step163ExitFRow,s6Step163ExitFvRow,s6Step163ExitGvRow] 1 s6Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163ExitFBefore (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163ExitBank_outgoingOwned : rowsOwned s6Step163ExitGvAfter [s6Step163ExitGOut,s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step163ExitGvAfter (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163ExitF_Outgoing : rowsOwned s6Step163ExitGvAfter [s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut] :=
  hmrRows_owned_drop s6Step163ExitGvAfter [s6Step163ExitGOut,s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut] 1 s6Step163ExitBank_outgoingOwned

private theorem s6Step163ExitF_distinct : (s6Step163ExitFRow.sign::s6Step163ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163ExitF_owned : (s6Step163ExitFRow.sign::s6Step163ExitFRow.payload).toFinset⊆s6Step163ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163ExitFBefore (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163ExitF_retired : s6Step163ExitFBefore.retireSet s6Step163ExitFExtra.toFinset=s6Step163ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step163ExitFBefore s6Step163ExitFAfter s6Step163ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step163ExitFBefore s6Step163ExitFAfter (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step163ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step163ExitF_checked : planRowResizeLog s6Step163ExitFBefore s6Step163ExitFRow 188 []=
    some (s6Step163ExitFAfter,s6Step163ExitFOut,shrinkRow 795 s6Step163ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step163ExitFBefore s6Step163ExitFRow 188 s6Step163ExitF_distinct s6Step163ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step163ExitFRow.payload.take 188) s6Step163ExitFRow.sign=s6Step163ExitFOut := by decide +kernel
  have hi : s6Step163ExitFRow.payload.drop 188=s6Step163ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step163ExitF_retired] at result
  exact result

private def s6Step163ExitFvAfter : Arena := s6Step163ExitFAfter

private def s6Step163ExitFvBefore : Arena := s6Step163ExitFAfter

private theorem s6Step163ExitFv_Incoming : rowsOwned s6Step163ExitFvBefore [s6Step163ExitFvRow,s6Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163ExitGRow,s6Step163ExitFRow,s6Step163ExitFvRow,s6Step163ExitGvRow] 2 s6Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163ExitFvBefore (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163ExitFv_Outgoing : rowsOwned s6Step163ExitGvAfter [s6Step163ExitFvOut,s6Step163ExitGvOut] :=
  hmrRows_owned_drop s6Step163ExitGvAfter [s6Step163ExitGOut,s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut] 2 s6Step163ExitBank_outgoingOwned

private theorem s6Step163ExitFv_distinct : (s6Step163ExitFvRow.sign::s6Step163ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163ExitFv_owned : (s6Step163ExitFvRow.sign::s6Step163ExitFvRow.payload).toFinset⊆s6Step163ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163ExitFvBefore (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163ExitFv_reserved : s6Step163ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step163ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step163ExitFv_checked : planRowResizeLog s6Step163ExitFvBefore s6Step163ExitFvRow 97 []=
    some (s6Step163ExitFvAfter,s6Step163ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step163ExitFvBefore s6Step163ExitFvAfter s6Step163ExitFvRow 97 []
    s6Step163ExitFv_distinct s6Step163ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step163ExitFvRow.payload++[]) s6Step163ExitFvRow.sign=s6Step163ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step163ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step163ExitG_Incoming : rowsOwned s6Step163ExitGBefore [s6Step163ExitGRow,s6Step163ExitFRow,s6Step163ExitFvRow,s6Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163ExitGRow,s6Step163ExitFRow,s6Step163ExitFvRow,s6Step163ExitGvRow] 0 s6Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step163ExitG_Outgoing : rowsOwned s6Step163ExitGvAfter [s6Step163ExitGOut,s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut] :=
  hmrRows_owned_drop s6Step163ExitGvAfter [s6Step163ExitGOut,s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut] 0 s6Step163ExitBank_outgoingOwned

private theorem s6Step163ExitG_distinct : (s6Step163ExitGRow.sign::s6Step163ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163ExitG_owned : (s6Step163ExitGRow.sign::s6Step163ExitGRow.payload).toFinset⊆s6Step163ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163ExitG_retired : s6Step163ExitGBefore.retireSet s6Step163ExitGExtra.toFinset=s6Step163ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step163ExitGBefore s6Step163ExitGAfter s6Step163ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step163ExitGBefore s6Step163ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step163ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step163ExitG_checked : planRowResizeLog s6Step163ExitGBefore s6Step163ExitGRow 186 []=
    some (s6Step163ExitGAfter,s6Step163ExitGOut,shrinkRow 777 s6Step163ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step163ExitGBefore s6Step163ExitGRow 186 s6Step163ExitG_distinct s6Step163ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step163ExitGRow.payload.take 186) s6Step163ExitGRow.sign=s6Step163ExitGOut := by decide +kernel
  have hi : s6Step163ExitGRow.payload.drop 186=s6Step163ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step163ExitG_retired] at result
  exact result

private def s6Step163ExitGvBefore : Arena := s6Step163ExitFAfter

private theorem s6Step163ExitGv_Incoming : rowsOwned s6Step163ExitGvBefore [s6Step163ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163ExitGRow,s6Step163ExitFRow,s6Step163ExitFvRow,s6Step163ExitGvRow] 3 s6Step163ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163ExitGvBefore (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163ExitGv_Outgoing : rowsOwned s6Step163ExitGvAfter [s6Step163ExitGvOut] :=
  hmrRows_owned_drop s6Step163ExitGvAfter [s6Step163ExitGOut,s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut] 3 s6Step163ExitBank_outgoingOwned

private theorem s6Step163ExitGv_distinct : (s6Step163ExitGvRow.sign::s6Step163ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163ExitGv_owned : (s6Step163ExitGvRow.sign::s6Step163ExitGvRow.payload).toFinset⊆s6Step163ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163ExitGvBefore (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163ExitGv_retired : s6Step163ExitGvBefore.retireSet s6Step163ExitGvExtra.toFinset=s6Step163ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step163ExitGvBefore s6Step163ExitGvAfter s6Step163ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step163ExitGvBefore s6Step163ExitGvAfter (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,186),(187,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step163ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step163ExitGv_checked : planRowResizeLog s6Step163ExitGvBefore s6Step163ExitGvRow 95 []=
    some (s6Step163ExitGvAfter,s6Step163ExitGvOut,shrinkRow 775 s6Step163ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step163ExitGvBefore s6Step163ExitGvRow 95 s6Step163ExitGv_distinct s6Step163ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step163ExitGvRow.payload.take 95) s6Step163ExitGvRow.sign=s6Step163ExitGvOut := by decide +kernel
  have hi : s6Step163ExitGvRow.payload.drop 95=s6Step163ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step163ExitGv_retired] at result
  exact result

private theorem s6Step163ExitBank_rows : planWindowRowsLog s6Step163ExitGBefore [(s6Step163ExitGRow,186),(s6Step163ExitFRow,188),(s6Step163ExitFvRow,97),(s6Step163ExitGvRow,95)] [[],[],[],[]]=
    some (s6Step163ExitGvAfter,[s6Step163ExitGOut,s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut],(shrinkRow 777 s6Step163ExitGExtra ++ (shrinkRow 795 s6Step163ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step163ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step163ExitGvAfter [] []=some (s6Step163ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step163ExitGvBefore s6Step163ExitGvAfter s6Step163ExitGvAfter
    s6Step163ExitGvRow s6Step163ExitGvOut 95 [] [] [] []
    (shrinkRow 775 s6Step163ExitGvExtra) ([]) s6Step163ExitGv_Incoming s6Step163ExitGv_checked h4 s6Step163ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step163ExitFvBefore s6Step163ExitFvAfter s6Step163ExitGvAfter
    s6Step163ExitFvRow s6Step163ExitFvOut 97 [] [(s6Step163ExitGvRow,95)] [[]] [s6Step163ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step163ExitGvExtra ++ [])) s6Step163ExitFv_Incoming s6Step163ExitFv_checked h3 s6Step163ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step163ExitFBefore s6Step163ExitFAfter s6Step163ExitGvAfter
    s6Step163ExitFRow s6Step163ExitFOut 188 [] [(s6Step163ExitFvRow,97),(s6Step163ExitGvRow,95)] [[],[]] [s6Step163ExitFvOut,s6Step163ExitGvOut]
    (shrinkRow 795 s6Step163ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step163ExitGvExtra ++ []))) s6Step163ExitF_Incoming s6Step163ExitF_checked h2 s6Step163ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step163ExitGBefore s6Step163ExitGAfter s6Step163ExitGvAfter
    s6Step163ExitGRow s6Step163ExitGOut 186 [] [(s6Step163ExitFRow,188),(s6Step163ExitFvRow,97),(s6Step163ExitGvRow,95)] [[],[],[]] [s6Step163ExitFOut,s6Step163ExitFvOut,s6Step163ExitGvOut]
    (shrinkRow 777 s6Step163ExitGExtra) ((shrinkRow 795 s6Step163ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step163ExitGvExtra ++ [])))) s6Step163ExitG_Incoming s6Step163ExitG_checked h1 s6Step163ExitG_Outgoing
  exact h0

private theorem s6Step163ExitBank_checked : compileHmrBankResizeLog .exit s6Step163ExitGBefore ⟨s6Step163ExitFRow,s6Step163ExitGRow,s6Step163ExitFvRow,s6Step163ExitGvRow⟩ ⟨188,186,97,95⟩ [[],[],[],[]]=
    some (s6Step163ExitGvAfter,⟨s6Step163ExitFOut,s6Step163ExitGOut,s6Step163ExitFvOut,s6Step163ExitGvOut⟩,(shrinkRow 777 s6Step163ExitGExtra ++ (shrinkRow 795 s6Step163ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step163ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step163ExitBank_rows]
  rfl

private theorem s6Step163Add0_apart : Disjoint s6Step163Add0Arena.live s6Step163Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step163Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163Add0_card : s6Step163Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step163Add0_borrowed : s6Step163Add0Arena.checkBorrow (hmrHybridCount s6Step163Add0Arena s6Step163Add0B.length) s6Step163Add0Work=some s6Step163Add0During := by
  have len : s6Step163Add0Work.length=hmrHybridCount s6Step163Add0Arena s6Step163Add0B.length := by
    rw [hmrHybridCount,s6Step163Add0_card]
    decide +kernel
  have nd : s6Step163Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step163Add0Arena s6Step163Add0During s6Step163Add0Work.toFinset s6Step163Add0_bounded s6Step163Add0_apart rfl

private theorem s6Step163Add0_distinct : (922::857::887::(s6Step163Add0A++s6Step163Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163Add0_owned : (922::857::887::(s6Step163Add0A++s6Step163Add0B)).toFinset⊆s6Step163Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step163Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163Add0_checked : compileHmrHybridCinLog s6Step163Add0Arena 857 922 887 s6Step163Add0A s6Step163Add0B s6Step163Add0Work=some s6Step163Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step163Add0Arena s6Step163Add0During 857 922 887 s6Step163Add0A s6Step163Add0B s6Step163Add0Work
    (by decide +kernel) (by decide +kernel) s6Step163Add0_distinct
    (fun q hq => s6Step163Add0_owned (List.mem_toFinset.mpr hq)) s6Step163Add0_borrowed

private theorem s6Step163Add1_apart : Disjoint s6Step163Add1Arena.live s6Step163Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step163Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163Add1_card : s6Step163Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step163Add1_borrowed : s6Step163Add1Arena.checkBorrow (hmrHybridCount s6Step163Add1Arena s6Step163Add1B.length) s6Step163Add1Work=some s6Step163Add1During := by
  have len : s6Step163Add1Work.length=hmrHybridCount s6Step163Add1Arena s6Step163Add1B.length := by
    rw [hmrHybridCount,s6Step163Add1_card]
    decide +kernel
  have nd : s6Step163Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step163Add1Arena s6Step163Add1During s6Step163Add1Work.toFinset s6Step163Add1_bounded s6Step163Add1_apart rfl

private theorem s6Step163Add1_distinct : (922::857::887::(s6Step163Add1A++s6Step163Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163Add1_owned : (922::857::887::(s6Step163Add1A++s6Step163Add1B)).toFinset⊆s6Step163Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step163Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163Add1_checked : compileHmrHybridCinLog s6Step163Add1Arena 857 922 887 s6Step163Add1A s6Step163Add1B s6Step163Add1Work=some s6Step163Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step163Add1Arena s6Step163Add1During 857 922 887 s6Step163Add1A s6Step163Add1B s6Step163Add1Work
    (by decide +kernel) (by decide +kernel) s6Step163Add1_distinct
    (fun q hq => s6Step163Add1_owned (List.mem_toFinset.mpr hq)) s6Step163Add1_borrowed

private theorem s6Step163F4_apart : Disjoint (s6Step163Add0A++s6Step163Add0B).toFinset (s6Step163Add1A++s6Step163Add1B).toFinset := by
  have nd : ((s6Step163Add0A++s6Step163Add0B)++(s6Step163Add1A++s6Step163Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step163F4_carry : s6Step163F4FlagArena.checkBorrow 1 [887]=some s6Step163Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step163F4FlagArena,s6Step163HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step163F4FlagArena,s6Step163HeadFvAfter,s6Step163Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step163F4_distinct : (818::857::922::887::((s6Step163Add0A++s6Step163Add1A)++(s6Step163Add0B++s6Step163Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163F4_flag : s6Step163HeadFvAfter.checkBorrow 1 [922]=some s6Step163F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step163HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step163F4_owned : (818::857::((s6Step163Add0A++s6Step163Add1A)++(s6Step163Add0B++s6Step163Add1B))).toFinset⊆s6Step163HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step163HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163F4_checked : compileHmrHybridF4Log s6Step163HeadFvAfter 818 857 s6Step163Add0A s6Step163Add0B s6Step163Add1A s6Step163Add1B [922] [887] s6Step163Add0Work s6Step163Add1Work=some s6Step163F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step163HeadFvAfter s6Step163F4FlagArena s6Step163Add0Arena s6Step163Add0During s6Step163Add1During 818 857
    s6Step163Add0A s6Step163Add0B s6Step163Add1A s6Step163Add1B [922] [887] s6Step163Add0Work s6Step163Add1Work
    (fun q hq => s6Step163F4_owned (List.mem_toFinset.mpr hq)) s6Step163F4_flag s6Step163F4_carry
    s6Step163F4_distinct s6Step163F4_apart s6Step163Add0_checked s6Step163Add1_checked

private theorem s6Step163Front_branch : s6Step163FrontSigmaArena.checkBorrow 1 [857]=some s6Step163HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step163FrontSigmaArena,s6Step163EntryGvAfter,arenaWires]
  · change s6Step163HeadGBefore.live=(s6Step163EntryGvAfter.live∪{818})∪{857}
    apply hmrArena_union_pair_of_filter_check s6Step163EntryGvAfter s6Step163HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 818 857 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step163Front_entry : HmrFrontEntryValid s6Step163EntryFBefore s6Step163FrontBank 188 96 ⟨188,186,97,95⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step163FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step163EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step163EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step163FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step163Front_sigma : s6Step163EntryGvAfter.checkBorrow 1 [818]=some s6Step163FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step163EntryGvAfter,arenaWires]
  · rfl

private def s6Step163HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163HeadFBefore : Arena := s6Step163HeadGAfter

private def s6Step163HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step163HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step163HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863],777⟩

private def s6Step163HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879],775⟩

private theorem s6Step163HeadBank_incomingDistinct : ([s6Step163HeadGRow,s6Step163HeadFRow,s6Step163HeadGvRow,s6Step163HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163HeadF_Incoming : rowsOwned s6Step163HeadFBefore [s6Step163HeadFRow,s6Step163HeadGvRow,s6Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163HeadGRow,s6Step163HeadFRow,s6Step163HeadGvRow,s6Step163HeadFvRow] 1 s6Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step163HeadBank_outgoingOwned : rowsOwned s6Step163HeadFvAfter [s6Step163HeadGOut,s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step163HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step163HeadF_Outgoing : rowsOwned s6Step163HeadFvAfter [s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut] :=
  hmrRows_owned_drop s6Step163HeadFvAfter [s6Step163HeadGOut,s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut] 1 s6Step163HeadBank_outgoingOwned

private theorem s6Step163HeadF_distinct : (s6Step163HeadFRow.sign::s6Step163HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163HeadF_owned : (s6Step163HeadFRow.sign::s6Step163HeadFRow.payload).toFinset⊆s6Step163HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163HeadF_reserved : s6Step163HeadFBefore.reserve s6Step163HeadFFresh.toFinset=some s6Step163HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163HeadFFresh,arenaWires]
  · norm_num [s6Step163HeadFBefore,s6Step163HeadGAfter,s6Step163HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step163HeadFAfter,s6Step163HeadFBefore,s6Step163HeadGAfter,s6Step163HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step163HeadF_checked : planRowResizeLog s6Step163HeadFBefore s6Step163HeadFRow 189 s6Step163HeadFFresh=
    some (s6Step163HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 890],795⟩,growRow 795 s6Step163HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step163HeadFBefore s6Step163HeadFAfter s6Step163HeadFRow 189 s6Step163HeadFFresh
    s6Step163HeadF_distinct s6Step163HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163HeadF_reserved
  have rowEq : WindowRow.mk (s6Step163HeadFRow.payload++s6Step163HeadFFresh) s6Step163HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 890],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step163HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step163HeadFvBefore : Arena := s6Step163HeadGvAfter

private theorem s6Step163HeadFv_Incoming : rowsOwned s6Step163HeadFvBefore [s6Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163HeadGRow,s6Step163HeadFRow,s6Step163HeadGvRow,s6Step163HeadFvRow] 3 s6Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step163HeadFv_Outgoing : rowsOwned s6Step163HeadFvAfter [s6Step163HeadFvOut] :=
  hmrRows_owned_drop s6Step163HeadFvAfter [s6Step163HeadGOut,s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut] 3 s6Step163HeadBank_outgoingOwned

private theorem s6Step163HeadFv_distinct : (s6Step163HeadFvRow.sign::s6Step163HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163HeadFv_owned : (s6Step163HeadFvRow.sign::s6Step163HeadFvRow.payload).toFinset⊆s6Step163HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163HeadFv_reserved : s6Step163HeadFvBefore.reserve s6Step163HeadFvFresh.toFinset=some s6Step163HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163HeadFvFresh,arenaWires]
  · norm_num [s6Step163HeadFvBefore,s6Step163HeadGvAfter,s6Step163HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step163HeadFvAfter,s6Step163HeadFvBefore,s6Step163HeadGvAfter,s6Step163HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step163HeadFv_checked : planRowResizeLog s6Step163HeadFvBefore s6Step163HeadFvRow 97 s6Step163HeadFvFresh=
    some (s6Step163HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩,growRow 776 s6Step163HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step163HeadFvBefore s6Step163HeadFvAfter s6Step163HeadFvRow 97 s6Step163HeadFvFresh
    s6Step163HeadFv_distinct s6Step163HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step163HeadFvRow.payload++s6Step163HeadFvFresh) s6Step163HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step163HeadG_Incoming : rowsOwned s6Step163HeadGBefore [s6Step163HeadGRow,s6Step163HeadFRow,s6Step163HeadGvRow,s6Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163HeadGRow,s6Step163HeadFRow,s6Step163HeadGvRow,s6Step163HeadFvRow] 0 s6Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step163HeadG_Outgoing : rowsOwned s6Step163HeadFvAfter [s6Step163HeadGOut,s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut] :=
  hmrRows_owned_drop s6Step163HeadFvAfter [s6Step163HeadGOut,s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut] 0 s6Step163HeadBank_outgoingOwned

private theorem s6Step163HeadG_distinct : (s6Step163HeadGRow.sign::s6Step163HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163HeadG_owned : (s6Step163HeadGRow.sign::s6Step163HeadGRow.payload).toFinset⊆s6Step163HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step163HeadG_reserved : s6Step163HeadGBefore.reserve s6Step163HeadGFresh.toFinset=some s6Step163HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163HeadGFresh,arenaWires]
  · norm_num [s6Step163HeadGBefore,s6Step163HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step163HeadGBefore s6Step163HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<890) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step163HeadGFresh rfl rfl
    · norm_num [s6Step163HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step163HeadG_checked : planRowResizeLog s6Step163HeadGBefore s6Step163HeadGRow 189 s6Step163HeadGFresh=
    some (s6Step163HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863, 876],777⟩,growRow 777 s6Step163HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step163HeadGBefore s6Step163HeadGAfter s6Step163HeadGRow 189 s6Step163HeadGFresh
    s6Step163HeadG_distinct s6Step163HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163HeadG_reserved
  have rowEq : WindowRow.mk (s6Step163HeadGRow.payload++s6Step163HeadGFresh) s6Step163HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 863, 876],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step163HeadGvBefore : Arena := s6Step163HeadFAfter

private theorem s6Step163HeadGv_Incoming : rowsOwned s6Step163HeadGvBefore [s6Step163HeadGvRow,s6Step163HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step163HeadGRow,s6Step163HeadFRow,s6Step163HeadGvRow,s6Step163HeadFvRow] 2 s6Step163HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step163HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step163HeadGv_Outgoing : rowsOwned s6Step163HeadFvAfter [s6Step163HeadGvOut,s6Step163HeadFvOut] :=
  hmrRows_owned_drop s6Step163HeadFvAfter [s6Step163HeadGOut,s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut] 2 s6Step163HeadBank_outgoingOwned

private theorem s6Step163HeadGv_distinct : (s6Step163HeadGvRow.sign::s6Step163HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step163HeadGv_owned : (s6Step163HeadGvRow.sign::s6Step163HeadGvRow.payload).toFinset⊆s6Step163HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step163HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step163HeadGv_reserved : s6Step163HeadGvBefore.reserve s6Step163HeadGvFresh.toFinset=some s6Step163HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step163HeadGvFresh,arenaWires]
  · norm_num [s6Step163HeadGvBefore,s6Step163HeadFAfter,s6Step163HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step163HeadGvAfter,s6Step163HeadGvBefore,s6Step163HeadFAfter,s6Step163HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step163HeadGv_checked : planRowResizeLog s6Step163HeadGvBefore s6Step163HeadGvRow 97 s6Step163HeadGvFresh=
    some (s6Step163HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879, 828],775⟩,growRow 775 s6Step163HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step163HeadGvBefore s6Step163HeadGvAfter s6Step163HeadGvRow 97 s6Step163HeadGvFresh
    s6Step163HeadGv_distinct s6Step163HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step163HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step163HeadGvRow.payload++s6Step163HeadGvFresh) s6Step163HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 879, 828],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step163HeadBank_rows : planWindowRowsLog s6Step163HeadGBefore [(s6Step163HeadGRow,189),(s6Step163HeadFRow,189),(s6Step163HeadGvRow,97),(s6Step163HeadFvRow,97)] [s6Step163HeadGFresh,s6Step163HeadFFresh,s6Step163HeadGvFresh,s6Step163HeadFvFresh]=
    some (s6Step163HeadFvAfter,[s6Step163HeadGOut,s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut],(growRow 777 s6Step163HeadGFresh ++ (growRow 795 s6Step163HeadFFresh ++ (growRow 775 s6Step163HeadGvFresh ++ (growRow 776 s6Step163HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step163HeadFvAfter [] []=some (s6Step163HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step163HeadFvBefore s6Step163HeadFvAfter s6Step163HeadFvAfter
    s6Step163HeadFvRow s6Step163HeadFvOut 97 s6Step163HeadFvFresh [] [] []
    (growRow 776 s6Step163HeadFvFresh) ([]) s6Step163HeadFv_Incoming s6Step163HeadFv_checked h4 s6Step163HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step163HeadGvBefore s6Step163HeadGvAfter s6Step163HeadFvAfter
    s6Step163HeadGvRow s6Step163HeadGvOut 97 s6Step163HeadGvFresh [(s6Step163HeadFvRow,97)] [s6Step163HeadFvFresh] [s6Step163HeadFvOut]
    (growRow 775 s6Step163HeadGvFresh) ((growRow 776 s6Step163HeadFvFresh ++ [])) s6Step163HeadGv_Incoming s6Step163HeadGv_checked h3 s6Step163HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step163HeadFBefore s6Step163HeadFAfter s6Step163HeadFvAfter
    s6Step163HeadFRow s6Step163HeadFOut 189 s6Step163HeadFFresh [(s6Step163HeadGvRow,97),(s6Step163HeadFvRow,97)] [s6Step163HeadGvFresh,s6Step163HeadFvFresh] [s6Step163HeadGvOut,s6Step163HeadFvOut]
    (growRow 795 s6Step163HeadFFresh) ((growRow 775 s6Step163HeadGvFresh ++ (growRow 776 s6Step163HeadFvFresh ++ []))) s6Step163HeadF_Incoming s6Step163HeadF_checked h2 s6Step163HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step163HeadGBefore s6Step163HeadGAfter s6Step163HeadFvAfter
    s6Step163HeadGRow s6Step163HeadGOut 189 s6Step163HeadGFresh [(s6Step163HeadFRow,189),(s6Step163HeadGvRow,97),(s6Step163HeadFvRow,97)] [s6Step163HeadFFresh,s6Step163HeadGvFresh,s6Step163HeadFvFresh] [s6Step163HeadFOut,s6Step163HeadGvOut,s6Step163HeadFvOut]
    (growRow 777 s6Step163HeadGFresh) ((growRow 795 s6Step163HeadFFresh ++ (growRow 775 s6Step163HeadGvFresh ++ (growRow 776 s6Step163HeadFvFresh ++ [])))) s6Step163HeadG_Incoming s6Step163HeadG_checked h1 s6Step163HeadG_Outgoing
  exact h0

private theorem s6Step163HeadBank_checked : compileHmrBankResizeLog .headroom s6Step163HeadGBefore ⟨s6Step163HeadFRow,s6Step163HeadGRow,s6Step163HeadFvRow,s6Step163HeadGvRow⟩ ⟨189,189,97,97⟩ [s6Step163HeadGFresh,s6Step163HeadFFresh,s6Step163HeadGvFresh,s6Step163HeadFvFresh]=
    some (s6Step163HeadFvAfter,⟨s6Step163HeadFOut,s6Step163HeadGOut,s6Step163HeadFvOut,s6Step163HeadGvOut⟩,(growRow 777 s6Step163HeadGFresh ++ (growRow 795 s6Step163HeadFFresh ++ (growRow 775 s6Step163HeadGvFresh ++ (growRow 776 s6Step163HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step163HeadBank_rows]
  rfl

private theorem s6Step163Front_checked : compileHmrSourceFrontLog s6Step163EntryFBefore s6Step163FrontBank 188 96 ⟨188,186,97,95⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step163FrontLog=some s6Step163FrontPlan := by
  have pairEq : s6Step163FrontPair=⟨s6Step163HeadFRow,s6Step163HeadGRow,s6Step163HeadFvRow,s6Step163HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step163FrontHead=⟨s6Step163ExitFRow,s6Step163ExitGRow,s6Step163ExitFvRow,s6Step163ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step163Add0A=s6Step163FrontHead.f.wires := by decide +kernel
  have gEq : s6Step163Add0B=s6Step163FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step163Add1A=s6Step163FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step163Add1B=s6Step163FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step163EntryFBefore s6Step163FrontBank 188 96 ⟨188,186,97,95⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step163FrontLog s6Step163FrontPlan
  · exact s6Step163Front_entry
  · exact s6Step163EntryBank_checked
  · exact s6Step163Front_sigma
  · rfl
  · exact s6Step163Front_branch
  · rfl
  · simpa only [s6Step163FrontPlan,pairEq] using s6Step163HeadBank_checked
  · simpa only [s6Step163FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step163F4_checked
  · exact s6Step163Counter_checked
  · rfl
  · simpa only [s6Step163FrontPlan,headEq] using s6Step163ExitBank_checked

private theorem s6Step163Complete_explicit_checked : compileHmrEarlyStepLog s6Step163EntryFBefore s6Step163FrontBank 188 96 ⟨188,186,97,95⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step163CompleteLog=some s6Step163CompletePlan := by
  let Q := s6Step163EarlyControlPlan
  have hq := s6Step163EarlyControl_plan_checked
  have fv1 : s6Step163CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step163CompleteOut.fv.payload[2]?.getD s6Step163CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step163CompleteOut.fv.payload[3]?.getD s6Step163CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step163CompleteOut.fv.payload[4]?.getD s6Step163CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step163EntryFBefore s6Step163EarlyControlArena s6Step163FrontBank 188 96 ⟨188,186,97,95⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step163CompleteLog s6Step163FrontPlan Q
    s6Step163Front_checked s6Step163Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step163Complete_owned s6Step163Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step163EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 818 s6Step163CompleteOut.fv.second (s6Step163CompleteOut.fv.payload[2]?.getD s6Step163CompleteOut.fv.sign) (s6Step163CompleteOut.fv.payload[3]?.getD s6Step163CompleteOut.fv.sign) (s6Step163CompleteOut.fv.payload[4]?.getD s6Step163CompleteOut.fv.sign) 857 42 s6Step163EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep163Arena : Arena := s6Step163EntryFBefore
def s6PrivateStep163Bank : WindowBank := s6Step163FrontBank
def s6PrivateStep163Spec : HmrSourceWalkStepLog := ⟨188,96,⟨188,186,97,95⟩,42,.early s6Step163CompleteLog⟩
def s6PrivateStep163Plan : HmrSourceStepPlan := .early s6Step163CompletePlan
theorem s6PrivateStep163_source : s6PrivateStep163Spec=s6ObservedLogs160[3] := rfl
theorem s6PrivateStep163_checked : compileHmrSourceStepLog s6PrivateStep163Arena s6PrivateStep163Bank
    s6PrivateStep163Spec.fgWidth s6PrivateStep163Spec.vWidth s6PrivateStep163Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 163 s6PrivateStep163Spec.need none s6PrivateStep163Spec.log=some s6PrivateStep163Plan := by
  change compileHmrSourceStepLog s6Step163EntryFBefore s6Step163FrontBank 188 96 ⟨188,186,97,95⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 163 42 none (.early s6Step163CompleteLog)=some (.early s6Step163CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 163<498)]
  rw [s6Step163Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
