import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep159
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

private def s6Step161CompleteMoves : List (Wire × Wire) := [(876,188),(890,444)]

private def s6Step161EarlyControlLog : HmrEarlyControlLog := ⟨[890, 876, 857, 856, 828],[908],[922],[887, 891, 903, 791, 825, 810],[]⟩

private def s6Step161FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [768]],[[908], [828], [857], [856]],[[], [], [], []]⟩,[863],[879],[922],[887],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[922, 887, 891, 903]⟩

private def s6Step161CompleteLog : HmrEarlyStepLog := ⟨s6Step161FrontLog,s6Step161CompleteMoves,s6Step161EarlyControlLog⟩

private def s6Step161ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step161ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step161ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],777⟩

private def s6Step161ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step161FrontOut : WindowBank := ⟨s6Step161ExitFOut,s6Step161ExitGOut,s6Step161ExitFvOut,s6Step161ExitGvOut⟩

private def s6Step161CompleteOut : WindowBank := s6Step161FrontOut.repacked s6Step161CompleteMoves

private def s6Step161EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step161EarlyControlPositiveArena,[908],s6Step161EarlyControlEqualityArena,[922],⟨⟨863,false⟩,[⟨⟨908,false⟩,922⟩]⟩⟩

private def s6Step161EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,890⟩,⟨⟨772,false⟩,876⟩,⟨⟨771,false⟩,857⟩,⟨⟨770,false⟩,856⟩,⟨⟨769,false⟩,828⟩]⟩

private def s6Step161EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step161EarlyControlZeroArena,s6Step161EarlyControlZeroPlan,s6Step161EarlyControlClassPlan,s6Step161EarlyControlFlagArena,s6Step161EarlyControlFittedArena,s6Step161EarlyControlHistoryArena,s6Step161EarlyControlSigmaArena,s6Step161EarlyControlOutputArena,s6Step161EarlyControlLog⟩

private def s6Step161CounterWork : List Wire := [922, 887, 891, 903]

private theorem s6Step161Counter_bounded : s6Step161CounterWork.toFinset⊆arenaWires := by norm_num [s6Step161CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step161HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161CounterDuring : Arena := ⟨s6Step161HeadFvAfter.live∪s6Step161CounterWork.toFinset,Finset.union_subset s6Step161HeadFvAfter.bounded s6Step161Counter_bounded⟩

private def s6Step161EntryFFresh : List Wire := []

private def s6Step161EntryFvFresh : List Wire := []

private def s6Step161EntryGFresh : List Wire := []

private def s6Step161EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161EntryGvFresh : List Wire := [768]

private def s6Step161ExitFExtra : List Wire := [444, 828]

private def s6Step161ExitFvExtra : List Wire := [856]

private def s6Step161ExitGExtra : List Wire := [188, 908]

private def s6Step161ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161ExitGvExtra : List Wire := [857]

private def s6Step161Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step161Add0_bounded : s6Step161Add0Work.toFinset⊆arenaWires := by
  have h : s6Step161Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step161Add0During : Arena := ⟨s6Step161Add0Arena.live∪s6Step161Add0Work.toFinset,Finset.union_subset s6Step161Add0Arena.bounded s6Step161Add0_bounded⟩

private def s6Step161Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step161Add1_bounded : s6Step161Add1Work.toFinset⊆arenaWires := by
  have h : s6Step161Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step161Add1During : Arena := ⟨s6Step161Add1Arena.live∪s6Step161Add1Work.toFinset,Finset.union_subset s6Step161Add1Arena.bounded s6Step161Add1_bounded⟩

private def s6Step161F4FlagArena : Arena := ⟨s6Step161HeadFvAfter.live∪{922},Finset.union_subset s6Step161HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step161F4Plan : HmrHybridF4Plan := ⟨s6Step161F4FlagArena,[922],s6Step161Add0Arena,[887],s6Step161Add0During,s6Step161Add0Work,s6Step161Add1During,s6Step161Add1Work⟩

private def s6Step161HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 828],795⟩

private def s6Step161HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step161HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 908],777⟩

private def s6Step161HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩

private def s6Step161FrontHead : WindowBank := ⟨s6Step161HeadFOut,s6Step161HeadGOut,s6Step161HeadFvOut,s6Step161HeadGvOut⟩

private def s6Step161EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step161EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step161EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step161EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step161FrontPair : WindowBank := ⟨s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut⟩

private def s6Step161FrontSigmaArena : Arena := ⟨s6Step161EntryGvAfter.live∪{863},Finset.union_subset s6Step161EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step161HeadFFresh : List Wire := [828]

private def s6Step161HeadFvFresh : List Wire := [856]

private def s6Step161HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161HeadGFresh : List Wire := [908]

private def s6Step161HeadGvFresh : List Wire := [857]

private def s6Step161FrontPlan : HmrSourceFront := ⟨s6Step161EntryGvAfter,s6Step161FrontPair,(growRow 795 s6Step161EntryFFresh ++ (growRow 777 s6Step161EntryGFresh ++ (growRow 776 s6Step161EntryFvFresh ++ (growRow 775 s6Step161EntryGvFresh ++ [])))),s6Step161FrontSigmaArena,[863],s6Step161HeadGBefore,[879],
  s6Step161HeadFvAfter,s6Step161FrontHead,(growRow 777 s6Step161HeadGFresh ++ (growRow 795 s6Step161HeadFFresh ++ (growRow 775 s6Step161HeadGvFresh ++ (growRow 776 s6Step161HeadFvFresh ++ [])))),s6Step161F4Plan,s6Step161CounterDuring,s6Step161CounterWork,s6Step161ExitGvAfter,s6Step161FrontOut,(shrinkRow 777 s6Step161ExitGExtra ++ (shrinkRow 795 s6Step161ExitFExtra ++ (shrinkRow 776 s6Step161ExitFvExtra ++ (shrinkRow 775 s6Step161ExitGvExtra ++ []))))⟩

private def s6Step161CompletePlan : HmrEarlyStepPlan := ⟨s6Step161FrontPlan,s6Step161EarlyControlArena,s6Step161EarlyControlPlan,s6Step161CompleteMoves⟩

private theorem s6Step161Complete_apart : List.Disjoint (s6Step161CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [863, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step161CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[863, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step161Complete_owned : (s6Step161CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step161CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161CompleteRelocationMove0Borrowed : Arena := ⟨s6Step161ExitGvAfter.live∪{188},Finset.union_subset s6Step161ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step161CompleteRelocationMove1Borrowed : Arena := ⟨s6Step161CompleteRelocationMove0After.live∪{444},Finset.union_subset s6Step161CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step161CompleteRelocation_move0_owned : 876∈s6Step161ExitGvAfter.live := by norm_num [s6Step161ExitGvAfter,arenaWires]

private theorem s6Step161CompleteRelocation_move0_reserve : s6Step161ExitGvAfter.reserve {188}=some s6Step161CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step161ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step161CompleteRelocation_move0_retire : s6Step161CompleteRelocationMove0Borrowed.retireSet {876}=s6Step161CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step161CompleteRelocationMove0Borrowed s6Step161CompleteRelocationMove0After {876}
  change s6Step161CompleteRelocationMove0After.live=(s6Step161ExitGvAfter.live∪{188})\{876}
  apply hmrArena_update_of_filter_check s6Step161ExitGvAfter s6Step161CompleteRelocationMove0After (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [188] [876] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step161CompleteRelocation_move1_owned : 890∈s6Step161CompleteRelocationMove0After.live := by norm_num [s6Step161CompleteRelocationMove0After,arenaWires]

private theorem s6Step161CompleteRelocation_move1_reserve : s6Step161CompleteRelocationMove0After.reserve {444}=some s6Step161CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step161CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step161CompleteRelocation_move1_retire : s6Step161CompleteRelocationMove1Borrowed.retireSet {890}=s6Step161EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step161CompleteRelocationMove1Borrowed s6Step161EarlyControlArena {890}
  change s6Step161EarlyControlArena.live=(s6Step161CompleteRelocationMove0After.live∪{444})\{890}
  apply hmrArena_update_of_filter_check s6Step161CompleteRelocationMove0After s6Step161EarlyControlArena (fun q => ([(0,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [444] [890] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step161CompleteRelocation_checked : s6Step161ExitGvAfter.checkRepack [(876,188),(890,444)]=some s6Step161EarlyControlArena := by
  have tail2 : s6Step161EarlyControlArena.checkRepack []=some s6Step161EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step161CompleteRelocationMove0After s6Step161CompleteRelocationMove1Borrowed s6Step161EarlyControlArena s6Step161EarlyControlArena 890 444 []
    s6Step161CompleteRelocation_move1_owned s6Step161CompleteRelocation_move1_reserve s6Step161CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step161ExitGvAfter s6Step161CompleteRelocationMove0Borrowed s6Step161CompleteRelocationMove0After s6Step161EarlyControlArena 876 188 [(890,444)]
    s6Step161CompleteRelocation_move0_owned s6Step161CompleteRelocation_move0_reserve s6Step161CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step161Complete_repack : s6Step161ExitGvAfter.checkRepack s6Step161CompleteMoves=some s6Step161EarlyControlArena := by
  simpa only [s6Step161CompleteMoves] using s6Step161CompleteRelocation_checked

private theorem s6Step161EarlyControl_branchOwned : ([879] : List Wire).toFinset⊆s6Step161EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EarlyControl_branch : compileHmrBranchRetirement s6Step161EarlyControlSigmaArena 879=some s6Step161EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step161EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step161EarlyControlSigmaArena s6Step161EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [879] rfl rfl
    decide +kernel

private theorem s6Step161EarlyControl_classEqualityBorrow : s6Step161EarlyControlPositiveArena.checkBorrow (([863, 908] : List Wire).length-1) s6Step161EarlyControlLog.classWork=some s6Step161EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step161EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step161EarlyControlEqualityArena,s6Step161EarlyControlPositiveArena,s6Step161EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step161EarlyControl_classEqualityOwned : ([863, 908] : List Wire).toFinset⊆s6Step161EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161EarlyControl_classEquality : compileHmrEqualityLog s6Step161EarlyControlPositiveArena [863, 908] 0 s6Step161EarlyControlLog.classWork=some (s6Step161EarlyControlEqualityArena,s6Step161EarlyControlLog.classWork,s6Step161EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step161EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step161EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step161EarlyControl_classOwned : ([769, 828, 863] : List Wire).toFinset⊆s6Step161EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161EarlyControl_positiveBorrow : s6Step161EarlyControlZeroArena.checkBorrow (1) s6Step161EarlyControlLog.positiveWork=some s6Step161EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step161EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step161EarlyControlPositiveArena,s6Step161EarlyControlZeroArena,s6Step161EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step161EarlyControl_class : compileHmrSourceClassLog s6Step161EarlyControlZeroArena false 769 s6Step161EarlyControlZeroPlan.top 0 863 s6Step161EarlyControlLog.positiveWork s6Step161EarlyControlLog.classWork=some s6Step161EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step161EarlyControlClassPlan s6Step161EarlyControlZeroArena false 769 s6Step161EarlyControlZeroPlan.top 0 863
  constructor
  · decide +kernel
  · exact s6Step161EarlyControl_classOwned
  · exact s6Step161EarlyControl_positiveBorrow
  · exact s6Step161EarlyControl_classEquality

private theorem s6Step161EarlyControl_entryRecordOwned : ([879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EarlyControl_entrySigmaOwned : ([863, 254] : List Wire).toFinset⊆s6Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EarlyControl_fitBorrow : s6Step161EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step161EarlyControlLog.recordFresh=some s6Step161EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step161EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step161EarlyControlFittedArena,s6Step161EarlyControlFlagArena,s6Step161EarlyControlLog,arenaWires]

private theorem s6Step161EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step161EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161EarlyControl_fit : compileHmrRecordGrowLog s6Step161EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step161EarlyControlLog.recordFresh=some s6Step161EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step161EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step161EarlyControl_fitBorrow

private theorem s6Step161EarlyControl_flagsBorrow : s6Step161EarlyControlEqualityArena.checkBorrow (6) s6Step161EarlyControlLog.flagWork=some s6Step161EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step161EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step161EarlyControlFlagArena,s6Step161EarlyControlEqualityArena,s6Step161EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step161EarlyControl_flagsOwned : ([922, 253, 252, 251] : List Wire).toFinset⊆s6Step161EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161EarlyControl_flags : compileHmrFlagsLog s6Step161EarlyControlClassPlan.equalityArena s6Step161EarlyControlClassPlan.equality.top 253 252 251 s6Step161EarlyControlLog.flagWork=some s6Step161EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step161EarlyControl_flagsOwned⟩
  · exact s6Step161EarlyControl_flagsBorrow

private theorem s6Step161EarlyControl_historyBorrow : s6Step161EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step161EarlyControlLog.recordFresh=some s6Step161EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step161EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step161EarlyControlArena s6Step161EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step161EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step161EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EarlyControl_history : compileHmrRecordGrowLog s6Step161EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step161EarlyControlLog.recordFresh=some s6Step161EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step161EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step161EarlyControl_historyBorrow

private theorem s6Step161EarlyControl_sigmaOwned : ([254, 863] : List Wire).toFinset⊆s6Step161EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EarlyControl_sigmaReleaseOwned : ([863] : List Wire).toFinset⊆s6Step161EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EarlyControl_sigmaRelease : s6Step161EarlyControlHistoryArena.release {863} (fun _ => false)=some s6Step161EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step161EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step161EarlyControlHistoryArena s6Step161EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel

private theorem s6Step161EarlyControl_sigma : compileHmrSigmaDropLog s6Step161EarlyControlHistoryArena false 0 0 254 863 []=some s6Step161EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step161EarlyControl_sigmaOwned⟩
  · exact s6Step161EarlyControl_sigmaRelease

private theorem s6Step161EarlyControl_zeroBorrow : s6Step161EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step161EarlyControlLog.zeroWork=some s6Step161EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step161EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step161EarlyControlArena s6Step161EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step161EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step161EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step161EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EarlyControl_zero : compileHmrEqualityLog s6Step161EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step161EarlyControlLog.zeroWork=some (s6Step161EarlyControlZeroArena,s6Step161EarlyControlLog.zeroWork,s6Step161EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step161EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step161EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step161EarlyControl_logged : s6Step161EarlyControlPlan.Logged s6Step161EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 254 253 252 251 879 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step161EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step161EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step161EarlyControl_zero
  · exact s6Step161EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step161EarlyControl_flags
  · exact s6Step161EarlyControl_fit
  · exact s6Step161EarlyControl_history
  · exact s6Step161EarlyControl_sigma
  · exact s6Step161EarlyControl_branch

private theorem s6Step161EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step161EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 254 253 252 251 879 42 s6Step161EarlyControlLog=some s6Step161EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step161EarlyControlPlan s6Step161EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 254 253 252 251 879 42 s6Step161EarlyControl_logged

private def s6Step161EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step161EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step161EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step161EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private def s6Step161FrontBank : WindowBank := ⟨s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow⟩

private def s6Step161Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 828, 795]

private def s6Step161Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 908, 777]

private def s6Step161Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 776]

private def s6Step161Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857, 775]

private theorem s6Step161Counter_apart : Disjoint s6Step161HeadFvAfter.live s6Step161CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step161HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161Counter_borrowed : s6Step161HeadFvAfter.checkBorrow 4 s6Step161CounterWork=some s6Step161CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step161HeadFvAfter s6Step161CounterDuring s6Step161CounterWork.toFinset s6Step161Counter_bounded s6Step161Counter_apart rfl

private theorem s6Step161Counter_owned : (863::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step161HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step161HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161Counter_checked : compileHmrCounterStepLog s6Step161HeadFvAfter true 863 [774, 773, 772, 771, 770, 769] s6Step161CounterWork=some s6Step161CounterDuring := by
  have owned : ∀q∈863::[774, 773, 772, 771, 770, 769],q∈s6Step161HeadFvAfter.live := fun q hq => s6Step161Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step161Counter_borrowed

private def s6Step161EntryFAfter : Arena := s6Step161EntryFBefore

private theorem s6Step161EntryBank_incomingDistinct : ([s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161EntryF_Incoming : rowsOwned s6Step161EntryFBefore [s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow] 0 s6Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161EntryBank_outgoingOwned : rowsOwned s6Step161EntryGvAfter [s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step161EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161EntryF_Outgoing : rowsOwned s6Step161EntryGvAfter [s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut] :=
  hmrRows_owned_drop s6Step161EntryGvAfter [s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut] 0 s6Step161EntryBank_outgoingOwned

private theorem s6Step161EntryF_distinct : (s6Step161EntryFRow.sign::s6Step161EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161EntryF_owned : (s6Step161EntryFRow.sign::s6Step161EntryFRow.payload).toFinset⊆s6Step161EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EntryF_reserved : s6Step161EntryFBefore.reserve s6Step161EntryFFresh.toFinset=some s6Step161EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161EntryFFresh,arenaWires]
  · norm_num [s6Step161EntryFBefore,s6Step161EntryFFresh,arenaWires]
  · simp only [s6Step161EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step161EntryF_checked : planRowResizeLog s6Step161EntryFBefore s6Step161EntryFRow 189 s6Step161EntryFFresh=
    some (s6Step161EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩,growRow 795 s6Step161EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step161EntryFBefore s6Step161EntryFAfter s6Step161EntryFRow 189 s6Step161EntryFFresh
    s6Step161EntryF_distinct s6Step161EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161EntryF_reserved
  have rowEq : WindowRow.mk (s6Step161EntryFRow.payload++s6Step161EntryFFresh) s6Step161EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step161EntryFvAfter : Arena := s6Step161EntryFBefore

private def s6Step161EntryFvBefore : Arena := s6Step161EntryFBefore

private theorem s6Step161EntryFv_Incoming : rowsOwned s6Step161EntryFvBefore [s6Step161EntryFvRow,s6Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow] 2 s6Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161EntryFv_Outgoing : rowsOwned s6Step161EntryGvAfter [s6Step161EntryFvOut,s6Step161EntryGvOut] :=
  hmrRows_owned_drop s6Step161EntryGvAfter [s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut] 2 s6Step161EntryBank_outgoingOwned

private theorem s6Step161EntryFv_distinct : (s6Step161EntryFvRow.sign::s6Step161EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161EntryFv_owned : (s6Step161EntryFvRow.sign::s6Step161EntryFvRow.payload).toFinset⊆s6Step161EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EntryFv_reserved : s6Step161EntryFvBefore.reserve s6Step161EntryFvFresh.toFinset=some s6Step161EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161EntryFvFresh,arenaWires]
  · norm_num [s6Step161EntryFvBefore,s6Step161EntryFBefore,s6Step161EntryFvFresh,arenaWires]
  · simp only [s6Step161EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step161EntryFv_checked : planRowResizeLog s6Step161EntryFvBefore s6Step161EntryFvRow 95 s6Step161EntryFvFresh=
    some (s6Step161EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩,growRow 776 s6Step161EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step161EntryFvBefore s6Step161EntryFvAfter s6Step161EntryFvRow 95 s6Step161EntryFvFresh
    s6Step161EntryFv_distinct s6Step161EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step161EntryFvRow.payload++s6Step161EntryFvFresh) s6Step161EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step161EntryGAfter : Arena := s6Step161EntryFBefore

private def s6Step161EntryGBefore : Arena := s6Step161EntryFBefore

private theorem s6Step161EntryG_Incoming : rowsOwned s6Step161EntryGBefore [s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow] 1 s6Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161EntryG_Outgoing : rowsOwned s6Step161EntryGvAfter [s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut] :=
  hmrRows_owned_drop s6Step161EntryGvAfter [s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut] 1 s6Step161EntryBank_outgoingOwned

private theorem s6Step161EntryG_distinct : (s6Step161EntryGRow.sign::s6Step161EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161EntryG_owned : (s6Step161EntryGRow.sign::s6Step161EntryGRow.payload).toFinset⊆s6Step161EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EntryG_reserved : s6Step161EntryGBefore.reserve s6Step161EntryGFresh.toFinset=some s6Step161EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161EntryGFresh,arenaWires]
  · norm_num [s6Step161EntryGBefore,s6Step161EntryFBefore,s6Step161EntryGFresh,arenaWires]
  · simp only [s6Step161EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step161EntryG_checked : planRowResizeLog s6Step161EntryGBefore s6Step161EntryGRow 189 s6Step161EntryGFresh=
    some (s6Step161EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩,growRow 777 s6Step161EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step161EntryGBefore s6Step161EntryGAfter s6Step161EntryGRow 189 s6Step161EntryGFresh
    s6Step161EntryG_distinct s6Step161EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161EntryG_reserved
  have rowEq : WindowRow.mk (s6Step161EntryGRow.payload++s6Step161EntryGFresh) s6Step161EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step161EntryGvBefore : Arena := s6Step161EntryFBefore

private theorem s6Step161EntryGv_Incoming : rowsOwned s6Step161EntryGvBefore [s6Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow] 3 s6Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161EntryGv_Outgoing : rowsOwned s6Step161EntryGvAfter [s6Step161EntryGvOut] :=
  hmrRows_owned_drop s6Step161EntryGvAfter [s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut] 3 s6Step161EntryBank_outgoingOwned

private theorem s6Step161EntryGv_distinct : (s6Step161EntryGvRow.sign::s6Step161EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161EntryGv_owned : (s6Step161EntryGvRow.sign::s6Step161EntryGvRow.payload).toFinset⊆s6Step161EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161EntryGv_reserved : s6Step161EntryGvBefore.reserve s6Step161EntryGvFresh.toFinset=some s6Step161EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161EntryGvFresh,arenaWires]
  · norm_num [s6Step161EntryGvBefore,s6Step161EntryFBefore,s6Step161EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step161EntryGvBefore s6Step161EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step161EntryGvFresh rfl rfl
    · norm_num [s6Step161EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step161EntryGv_checked : planRowResizeLog s6Step161EntryGvBefore s6Step161EntryGvRow 95 s6Step161EntryGvFresh=
    some (s6Step161EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩,growRow 775 s6Step161EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step161EntryGvBefore s6Step161EntryGvAfter s6Step161EntryGvRow 95 s6Step161EntryGvFresh
    s6Step161EntryGv_distinct s6Step161EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step161EntryGvRow.payload++s6Step161EntryGvFresh) s6Step161EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step161EntryBank_rows : planWindowRowsLog s6Step161EntryFBefore [(s6Step161EntryFRow,189),(s6Step161EntryGRow,189),(s6Step161EntryFvRow,95),(s6Step161EntryGvRow,95)] [s6Step161EntryFFresh,s6Step161EntryGFresh,s6Step161EntryFvFresh,s6Step161EntryGvFresh]=
    some (s6Step161EntryGvAfter,[s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut],(growRow 795 s6Step161EntryFFresh ++ (growRow 777 s6Step161EntryGFresh ++ (growRow 776 s6Step161EntryFvFresh ++ (growRow 775 s6Step161EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step161EntryGvAfter [] []=some (s6Step161EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step161EntryGvBefore s6Step161EntryGvAfter s6Step161EntryGvAfter
    s6Step161EntryGvRow s6Step161EntryGvOut 95 s6Step161EntryGvFresh [] [] []
    (growRow 775 s6Step161EntryGvFresh) ([]) s6Step161EntryGv_Incoming s6Step161EntryGv_checked h4 s6Step161EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step161EntryFvBefore s6Step161EntryFvAfter s6Step161EntryGvAfter
    s6Step161EntryFvRow s6Step161EntryFvOut 95 s6Step161EntryFvFresh [(s6Step161EntryGvRow,95)] [s6Step161EntryGvFresh] [s6Step161EntryGvOut]
    (growRow 776 s6Step161EntryFvFresh) ((growRow 775 s6Step161EntryGvFresh ++ [])) s6Step161EntryFv_Incoming s6Step161EntryFv_checked h3 s6Step161EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step161EntryGBefore s6Step161EntryGAfter s6Step161EntryGvAfter
    s6Step161EntryGRow s6Step161EntryGOut 189 s6Step161EntryGFresh [(s6Step161EntryFvRow,95),(s6Step161EntryGvRow,95)] [s6Step161EntryFvFresh,s6Step161EntryGvFresh] [s6Step161EntryFvOut,s6Step161EntryGvOut]
    (growRow 777 s6Step161EntryGFresh) ((growRow 776 s6Step161EntryFvFresh ++ (growRow 775 s6Step161EntryGvFresh ++ []))) s6Step161EntryG_Incoming s6Step161EntryG_checked h2 s6Step161EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step161EntryFBefore s6Step161EntryFAfter s6Step161EntryGvAfter
    s6Step161EntryFRow s6Step161EntryFOut 189 s6Step161EntryFFresh [(s6Step161EntryGRow,189),(s6Step161EntryFvRow,95),(s6Step161EntryGvRow,95)] [s6Step161EntryGFresh,s6Step161EntryFvFresh,s6Step161EntryGvFresh] [s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut]
    (growRow 795 s6Step161EntryFFresh) ((growRow 777 s6Step161EntryGFresh ++ (growRow 776 s6Step161EntryFvFresh ++ (growRow 775 s6Step161EntryGvFresh ++ [])))) s6Step161EntryF_Incoming s6Step161EntryF_checked h1 s6Step161EntryF_Outgoing
  exact h0

private theorem s6Step161EntryBank_checked : compileHmrBankResizeLog .entry s6Step161EntryFBefore ⟨s6Step161EntryFRow,s6Step161EntryGRow,s6Step161EntryFvRow,s6Step161EntryGvRow⟩ ⟨189,189,95,95⟩ [s6Step161EntryFFresh,s6Step161EntryGFresh,s6Step161EntryFvFresh,s6Step161EntryGvFresh]=
    some (s6Step161EntryGvAfter,⟨s6Step161EntryFOut,s6Step161EntryGOut,s6Step161EntryFvOut,s6Step161EntryGvOut⟩,(growRow 795 s6Step161EntryFFresh ++ (growRow 777 s6Step161EntryGFresh ++ (growRow 776 s6Step161EntryFvFresh ++ (growRow 775 s6Step161EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step161EntryBank_rows]
  rfl

private def s6Step161ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161ExitFBefore : Arena := s6Step161ExitGAfter

private def s6Step161ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 828],795⟩

private def s6Step161ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step161ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 908],777⟩

private def s6Step161ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩

private theorem s6Step161ExitBank_incomingDistinct : ([s6Step161ExitGRow,s6Step161ExitFRow,s6Step161ExitFvRow,s6Step161ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161ExitF_Incoming : rowsOwned s6Step161ExitFBefore [s6Step161ExitFRow,s6Step161ExitFvRow,s6Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161ExitGRow,s6Step161ExitFRow,s6Step161ExitFvRow,s6Step161ExitGvRow] 1 s6Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161ExitFBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step161ExitBank_outgoingOwned : rowsOwned s6Step161ExitGvAfter [s6Step161ExitGOut,s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step161ExitGvAfter (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161ExitF_Outgoing : rowsOwned s6Step161ExitGvAfter [s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut] :=
  hmrRows_owned_drop s6Step161ExitGvAfter [s6Step161ExitGOut,s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut] 1 s6Step161ExitBank_outgoingOwned

private theorem s6Step161ExitF_distinct : (s6Step161ExitFRow.sign::s6Step161ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161ExitF_owned : (s6Step161ExitFRow.sign::s6Step161ExitFRow.payload).toFinset⊆s6Step161ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161ExitFBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161ExitF_retired : s6Step161ExitFBefore.retireSet s6Step161ExitFExtra.toFinset=s6Step161ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step161ExitFBefore s6Step161ExitFAfter s6Step161ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step161ExitFBefore s6Step161ExitFAfter (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step161ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step161ExitF_checked : planRowResizeLog s6Step161ExitFBefore s6Step161ExitFRow 188 []=
    some (s6Step161ExitFAfter,s6Step161ExitFOut,shrinkRow 795 s6Step161ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step161ExitFBefore s6Step161ExitFRow 188 s6Step161ExitF_distinct s6Step161ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step161ExitFRow.payload.take 188) s6Step161ExitFRow.sign=s6Step161ExitFOut := by decide +kernel
  have hi : s6Step161ExitFRow.payload.drop 188=s6Step161ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step161ExitF_retired] at result
  exact result

private def s6Step161ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161ExitFvBefore : Arena := s6Step161ExitFAfter

private theorem s6Step161ExitFv_Incoming : rowsOwned s6Step161ExitFvBefore [s6Step161ExitFvRow,s6Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161ExitGRow,s6Step161ExitFRow,s6Step161ExitFvRow,s6Step161ExitGvRow] 2 s6Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161ExitFvBefore (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161ExitFv_Outgoing : rowsOwned s6Step161ExitGvAfter [s6Step161ExitFvOut,s6Step161ExitGvOut] :=
  hmrRows_owned_drop s6Step161ExitGvAfter [s6Step161ExitGOut,s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut] 2 s6Step161ExitBank_outgoingOwned

private theorem s6Step161ExitFv_distinct : (s6Step161ExitFvRow.sign::s6Step161ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161ExitFv_owned : (s6Step161ExitFvRow.sign::s6Step161ExitFvRow.payload).toFinset⊆s6Step161ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161ExitFvBefore (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161ExitFv_retired : s6Step161ExitFvBefore.retireSet s6Step161ExitFvExtra.toFinset=s6Step161ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step161ExitFvBefore s6Step161ExitFvAfter s6Step161ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step161ExitFvBefore s6Step161ExitFvAfter (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step161ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step161ExitFv_checked : planRowResizeLog s6Step161ExitFvBefore s6Step161ExitFvRow 95 []=
    some (s6Step161ExitFvAfter,s6Step161ExitFvOut,shrinkRow 776 s6Step161ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step161ExitFvBefore s6Step161ExitFvRow 95 s6Step161ExitFv_distinct s6Step161ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step161ExitFvRow.payload.take 95) s6Step161ExitFvRow.sign=s6Step161ExitFvOut := by decide +kernel
  have hi : s6Step161ExitFvRow.payload.drop 95=s6Step161ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step161ExitFv_retired] at result
  exact result

private def s6Step161ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step161ExitG_Incoming : rowsOwned s6Step161ExitGBefore [s6Step161ExitGRow,s6Step161ExitFRow,s6Step161ExitFvRow,s6Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161ExitGRow,s6Step161ExitFRow,s6Step161ExitFvRow,s6Step161ExitGvRow] 0 s6Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step161ExitG_Outgoing : rowsOwned s6Step161ExitGvAfter [s6Step161ExitGOut,s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut] :=
  hmrRows_owned_drop s6Step161ExitGvAfter [s6Step161ExitGOut,s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut] 0 s6Step161ExitBank_outgoingOwned

private theorem s6Step161ExitG_distinct : (s6Step161ExitGRow.sign::s6Step161ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161ExitG_owned : (s6Step161ExitGRow.sign::s6Step161ExitGRow.payload).toFinset⊆s6Step161ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161ExitG_retired : s6Step161ExitGBefore.retireSet s6Step161ExitGExtra.toFinset=s6Step161ExitGAfter := by
  unfold Arena.retireSet s6Step161ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step161ExitGBefore,s6Step161ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step161ExitG_checked : planRowResizeLog s6Step161ExitGBefore s6Step161ExitGRow 188 []=
    some (s6Step161ExitGAfter,s6Step161ExitGOut,shrinkRow 777 s6Step161ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step161ExitGBefore s6Step161ExitGRow 188 s6Step161ExitG_distinct s6Step161ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step161ExitGRow.payload.take 188) s6Step161ExitGRow.sign=s6Step161ExitGOut := by decide +kernel
  have hi : s6Step161ExitGRow.payload.drop 188=s6Step161ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step161ExitG_retired] at result
  exact result

private def s6Step161ExitGvBefore : Arena := s6Step161ExitFvAfter

private theorem s6Step161ExitGv_Incoming : rowsOwned s6Step161ExitGvBefore [s6Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161ExitGRow,s6Step161ExitFRow,s6Step161ExitFvRow,s6Step161ExitGvRow] 3 s6Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161ExitGvBefore (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161ExitGv_Outgoing : rowsOwned s6Step161ExitGvAfter [s6Step161ExitGvOut] :=
  hmrRows_owned_drop s6Step161ExitGvAfter [s6Step161ExitGOut,s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut] 3 s6Step161ExitBank_outgoingOwned

private theorem s6Step161ExitGv_distinct : (s6Step161ExitGvRow.sign::s6Step161ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161ExitGv_owned : (s6Step161ExitGvRow.sign::s6Step161ExitGvRow.payload).toFinset⊆s6Step161ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161ExitGvBefore (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161ExitGv_retired : s6Step161ExitGvBefore.retireSet s6Step161ExitGvExtra.toFinset=s6Step161ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step161ExitGvBefore s6Step161ExitGvAfter s6Step161ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step161ExitGvBefore s6Step161ExitGvAfter (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,188),(189,444),(445,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step161ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step161ExitGv_checked : planRowResizeLog s6Step161ExitGvBefore s6Step161ExitGvRow 95 []=
    some (s6Step161ExitGvAfter,s6Step161ExitGvOut,shrinkRow 775 s6Step161ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step161ExitGvBefore s6Step161ExitGvRow 95 s6Step161ExitGv_distinct s6Step161ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step161ExitGvRow.payload.take 95) s6Step161ExitGvRow.sign=s6Step161ExitGvOut := by decide +kernel
  have hi : s6Step161ExitGvRow.payload.drop 95=s6Step161ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step161ExitGv_retired] at result
  exact result

private theorem s6Step161ExitBank_rows : planWindowRowsLog s6Step161ExitGBefore [(s6Step161ExitGRow,188),(s6Step161ExitFRow,188),(s6Step161ExitFvRow,95),(s6Step161ExitGvRow,95)] [[],[],[],[]]=
    some (s6Step161ExitGvAfter,[s6Step161ExitGOut,s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut],(shrinkRow 777 s6Step161ExitGExtra ++ (shrinkRow 795 s6Step161ExitFExtra ++ (shrinkRow 776 s6Step161ExitFvExtra ++ (shrinkRow 775 s6Step161ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step161ExitGvAfter [] []=some (s6Step161ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step161ExitGvBefore s6Step161ExitGvAfter s6Step161ExitGvAfter
    s6Step161ExitGvRow s6Step161ExitGvOut 95 [] [] [] []
    (shrinkRow 775 s6Step161ExitGvExtra) ([]) s6Step161ExitGv_Incoming s6Step161ExitGv_checked h4 s6Step161ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step161ExitFvBefore s6Step161ExitFvAfter s6Step161ExitGvAfter
    s6Step161ExitFvRow s6Step161ExitFvOut 95 [] [(s6Step161ExitGvRow,95)] [[]] [s6Step161ExitGvOut]
    (shrinkRow 776 s6Step161ExitFvExtra) ((shrinkRow 775 s6Step161ExitGvExtra ++ [])) s6Step161ExitFv_Incoming s6Step161ExitFv_checked h3 s6Step161ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step161ExitFBefore s6Step161ExitFAfter s6Step161ExitGvAfter
    s6Step161ExitFRow s6Step161ExitFOut 188 [] [(s6Step161ExitFvRow,95),(s6Step161ExitGvRow,95)] [[],[]] [s6Step161ExitFvOut,s6Step161ExitGvOut]
    (shrinkRow 795 s6Step161ExitFExtra) ((shrinkRow 776 s6Step161ExitFvExtra ++ (shrinkRow 775 s6Step161ExitGvExtra ++ []))) s6Step161ExitF_Incoming s6Step161ExitF_checked h2 s6Step161ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step161ExitGBefore s6Step161ExitGAfter s6Step161ExitGvAfter
    s6Step161ExitGRow s6Step161ExitGOut 188 [] [(s6Step161ExitFRow,188),(s6Step161ExitFvRow,95),(s6Step161ExitGvRow,95)] [[],[],[]] [s6Step161ExitFOut,s6Step161ExitFvOut,s6Step161ExitGvOut]
    (shrinkRow 777 s6Step161ExitGExtra) ((shrinkRow 795 s6Step161ExitFExtra ++ (shrinkRow 776 s6Step161ExitFvExtra ++ (shrinkRow 775 s6Step161ExitGvExtra ++ [])))) s6Step161ExitG_Incoming s6Step161ExitG_checked h1 s6Step161ExitG_Outgoing
  exact h0

private theorem s6Step161ExitBank_checked : compileHmrBankResizeLog .exit s6Step161ExitGBefore ⟨s6Step161ExitFRow,s6Step161ExitGRow,s6Step161ExitFvRow,s6Step161ExitGvRow⟩ ⟨188,188,95,95⟩ [[],[],[],[]]=
    some (s6Step161ExitGvAfter,⟨s6Step161ExitFOut,s6Step161ExitGOut,s6Step161ExitFvOut,s6Step161ExitGvOut⟩,(shrinkRow 777 s6Step161ExitGExtra ++ (shrinkRow 795 s6Step161ExitFExtra ++ (shrinkRow 776 s6Step161ExitFvExtra ++ (shrinkRow 775 s6Step161ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step161ExitBank_rows]
  rfl

private theorem s6Step161Add0_apart : Disjoint s6Step161Add0Arena.live s6Step161Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step161Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161Add0_card : s6Step161Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step161Add0_borrowed : s6Step161Add0Arena.checkBorrow (hmrHybridCount s6Step161Add0Arena s6Step161Add0B.length) s6Step161Add0Work=some s6Step161Add0During := by
  have len : s6Step161Add0Work.length=hmrHybridCount s6Step161Add0Arena s6Step161Add0B.length := by
    rw [hmrHybridCount,s6Step161Add0_card]
    decide +kernel
  have nd : s6Step161Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step161Add0Arena s6Step161Add0During s6Step161Add0Work.toFinset s6Step161Add0_bounded s6Step161Add0_apart rfl

private theorem s6Step161Add0_distinct : (922::879::887::(s6Step161Add0A++s6Step161Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161Add0_owned : (922::879::887::(s6Step161Add0A++s6Step161Add0B)).toFinset⊆s6Step161Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step161Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161Add0_checked : compileHmrHybridCinLog s6Step161Add0Arena 879 922 887 s6Step161Add0A s6Step161Add0B s6Step161Add0Work=some s6Step161Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step161Add0Arena s6Step161Add0During 879 922 887 s6Step161Add0A s6Step161Add0B s6Step161Add0Work
    (by decide +kernel) (by decide +kernel) s6Step161Add0_distinct
    (fun q hq => s6Step161Add0_owned (List.mem_toFinset.mpr hq)) s6Step161Add0_borrowed

private theorem s6Step161Add1_apart : Disjoint s6Step161Add1Arena.live s6Step161Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step161Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161Add1_card : s6Step161Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step161Add1_borrowed : s6Step161Add1Arena.checkBorrow (hmrHybridCount s6Step161Add1Arena s6Step161Add1B.length) s6Step161Add1Work=some s6Step161Add1During := by
  have len : s6Step161Add1Work.length=hmrHybridCount s6Step161Add1Arena s6Step161Add1B.length := by
    rw [hmrHybridCount,s6Step161Add1_card]
    decide +kernel
  have nd : s6Step161Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step161Add1Arena s6Step161Add1During s6Step161Add1Work.toFinset s6Step161Add1_bounded s6Step161Add1_apart rfl

private theorem s6Step161Add1_distinct : (922::879::887::(s6Step161Add1A++s6Step161Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161Add1_owned : (922::879::887::(s6Step161Add1A++s6Step161Add1B)).toFinset⊆s6Step161Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step161Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161Add1_checked : compileHmrHybridCinLog s6Step161Add1Arena 879 922 887 s6Step161Add1A s6Step161Add1B s6Step161Add1Work=some s6Step161Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step161Add1Arena s6Step161Add1During 879 922 887 s6Step161Add1A s6Step161Add1B s6Step161Add1Work
    (by decide +kernel) (by decide +kernel) s6Step161Add1_distinct
    (fun q hq => s6Step161Add1_owned (List.mem_toFinset.mpr hq)) s6Step161Add1_borrowed

private theorem s6Step161F4_apart : Disjoint (s6Step161Add0A++s6Step161Add0B).toFinset (s6Step161Add1A++s6Step161Add1B).toFinset := by
  have nd : ((s6Step161Add0A++s6Step161Add0B)++(s6Step161Add1A++s6Step161Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step161F4_carry : s6Step161F4FlagArena.checkBorrow 1 [887]=some s6Step161Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step161F4FlagArena,s6Step161HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step161F4FlagArena,s6Step161HeadFvAfter,s6Step161Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step161F4_distinct : (863::879::922::887::((s6Step161Add0A++s6Step161Add1A)++(s6Step161Add0B++s6Step161Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161F4_flag : s6Step161HeadFvAfter.checkBorrow 1 [922]=some s6Step161F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step161HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step161F4_owned : (863::879::((s6Step161Add0A++s6Step161Add1A)++(s6Step161Add0B++s6Step161Add1B))).toFinset⊆s6Step161HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step161HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161F4_checked : compileHmrHybridF4Log s6Step161HeadFvAfter 863 879 s6Step161Add0A s6Step161Add0B s6Step161Add1A s6Step161Add1B [922] [887] s6Step161Add0Work s6Step161Add1Work=some s6Step161F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step161HeadFvAfter s6Step161F4FlagArena s6Step161Add0Arena s6Step161Add0During s6Step161Add1During 863 879
    s6Step161Add0A s6Step161Add0B s6Step161Add1A s6Step161Add1B [922] [887] s6Step161Add0Work s6Step161Add1Work
    (fun q hq => s6Step161F4_owned (List.mem_toFinset.mpr hq)) s6Step161F4_flag s6Step161F4_carry
    s6Step161F4_distinct s6Step161F4_apart s6Step161Add0_checked s6Step161Add1_checked

private theorem s6Step161Front_branch : s6Step161FrontSigmaArena.checkBorrow 1 [879]=some s6Step161HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step161FrontSigmaArena,s6Step161EntryGvAfter,arenaWires]
  · change s6Step161HeadGBefore.live=(s6Step161EntryGvAfter.live∪{863})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step161EntryGvAfter s6Step161HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 863 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step161Front_entry : HmrFrontEntryValid s6Step161EntryFBefore s6Step161FrontBank 189 95 ⟨188,188,95,95⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step161FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step161EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step161EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step161FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step161Front_sigma : s6Step161EntryGvAfter.checkBorrow 1 [863]=some s6Step161FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step161EntryGvAfter,arenaWires]
  · rfl

private def s6Step161HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step161HeadFBefore : Arena := s6Step161HeadGAfter

private def s6Step161HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step161HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step161HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step161HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private theorem s6Step161HeadBank_incomingDistinct : ([s6Step161HeadGRow,s6Step161HeadFRow,s6Step161HeadGvRow,s6Step161HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161HeadF_Incoming : rowsOwned s6Step161HeadFBefore [s6Step161HeadFRow,s6Step161HeadGvRow,s6Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161HeadGRow,s6Step161HeadFRow,s6Step161HeadGvRow,s6Step161HeadFvRow] 1 s6Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161HeadBank_outgoingOwned : rowsOwned s6Step161HeadFvAfter [s6Step161HeadGOut,s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step161HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step161HeadF_Outgoing : rowsOwned s6Step161HeadFvAfter [s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut] :=
  hmrRows_owned_drop s6Step161HeadFvAfter [s6Step161HeadGOut,s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut] 1 s6Step161HeadBank_outgoingOwned

private theorem s6Step161HeadF_distinct : (s6Step161HeadFRow.sign::s6Step161HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161HeadF_owned : (s6Step161HeadFRow.sign::s6Step161HeadFRow.payload).toFinset⊆s6Step161HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161HeadF_reserved : s6Step161HeadFBefore.reserve s6Step161HeadFFresh.toFinset=some s6Step161HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161HeadFFresh,arenaWires]
  · norm_num [s6Step161HeadFBefore,s6Step161HeadGAfter,s6Step161HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step161HeadFBefore s6Step161HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step161HeadFFresh rfl rfl
    · norm_num [s6Step161HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step161HeadF_checked : planRowResizeLog s6Step161HeadFBefore s6Step161HeadFRow 190 s6Step161HeadFFresh=
    some (s6Step161HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 828],795⟩,growRow 795 s6Step161HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step161HeadFBefore s6Step161HeadFAfter s6Step161HeadFRow 190 s6Step161HeadFFresh
    s6Step161HeadF_distinct s6Step161HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161HeadF_reserved
  have rowEq : WindowRow.mk (s6Step161HeadFRow.payload++s6Step161HeadFFresh) s6Step161HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 828],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step161HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step161HeadFvBefore : Arena := s6Step161HeadGvAfter

private theorem s6Step161HeadFv_Incoming : rowsOwned s6Step161HeadFvBefore [s6Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161HeadGRow,s6Step161HeadFRow,s6Step161HeadGvRow,s6Step161HeadFvRow] 3 s6Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step161HeadFv_Outgoing : rowsOwned s6Step161HeadFvAfter [s6Step161HeadFvOut] :=
  hmrRows_owned_drop s6Step161HeadFvAfter [s6Step161HeadGOut,s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut] 3 s6Step161HeadBank_outgoingOwned

private theorem s6Step161HeadFv_distinct : (s6Step161HeadFvRow.sign::s6Step161HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161HeadFv_owned : (s6Step161HeadFvRow.sign::s6Step161HeadFvRow.payload).toFinset⊆s6Step161HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161HeadFv_reserved : s6Step161HeadFvBefore.reserve s6Step161HeadFvFresh.toFinset=some s6Step161HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161HeadFvFresh,arenaWires]
  · norm_num [s6Step161HeadFvBefore,s6Step161HeadGvAfter,s6Step161HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step161HeadFvAfter,s6Step161HeadFvBefore,s6Step161HeadGvAfter,s6Step161HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step161HeadFv_checked : planRowResizeLog s6Step161HeadFvBefore s6Step161HeadFvRow 96 s6Step161HeadFvFresh=
    some (s6Step161HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩,growRow 776 s6Step161HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step161HeadFvBefore s6Step161HeadFvAfter s6Step161HeadFvRow 96 s6Step161HeadFvFresh
    s6Step161HeadFv_distinct s6Step161HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step161HeadFvRow.payload++s6Step161HeadFvFresh) s6Step161HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step161HeadG_Incoming : rowsOwned s6Step161HeadGBefore [s6Step161HeadGRow,s6Step161HeadFRow,s6Step161HeadGvRow,s6Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161HeadGRow,s6Step161HeadFRow,s6Step161HeadGvRow,s6Step161HeadFvRow] 0 s6Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step161HeadG_Outgoing : rowsOwned s6Step161HeadFvAfter [s6Step161HeadGOut,s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut] :=
  hmrRows_owned_drop s6Step161HeadFvAfter [s6Step161HeadGOut,s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut] 0 s6Step161HeadBank_outgoingOwned

private theorem s6Step161HeadG_distinct : (s6Step161HeadGRow.sign::s6Step161HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161HeadG_owned : (s6Step161HeadGRow.sign::s6Step161HeadGRow.payload).toFinset⊆s6Step161HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step161HeadG_reserved : s6Step161HeadGBefore.reserve s6Step161HeadGFresh.toFinset=some s6Step161HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161HeadGFresh,arenaWires]
  · norm_num [s6Step161HeadGBefore,s6Step161HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step161HeadGBefore s6Step161HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step161HeadGFresh rfl rfl
    · norm_num [s6Step161HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step161HeadG_checked : planRowResizeLog s6Step161HeadGBefore s6Step161HeadGRow 190 s6Step161HeadGFresh=
    some (s6Step161HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 908],777⟩,growRow 777 s6Step161HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step161HeadGBefore s6Step161HeadGAfter s6Step161HeadGRow 190 s6Step161HeadGFresh
    s6Step161HeadG_distinct s6Step161HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161HeadG_reserved
  have rowEq : WindowRow.mk (s6Step161HeadGRow.payload++s6Step161HeadGFresh) s6Step161HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step161HeadGvBefore : Arena := s6Step161HeadFAfter

private theorem s6Step161HeadGv_Incoming : rowsOwned s6Step161HeadGvBefore [s6Step161HeadGvRow,s6Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step161HeadGRow,s6Step161HeadFRow,s6Step161HeadGvRow,s6Step161HeadFvRow] 2 s6Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step161HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step161HeadGv_Outgoing : rowsOwned s6Step161HeadFvAfter [s6Step161HeadGvOut,s6Step161HeadFvOut] :=
  hmrRows_owned_drop s6Step161HeadFvAfter [s6Step161HeadGOut,s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut] 2 s6Step161HeadBank_outgoingOwned

private theorem s6Step161HeadGv_distinct : (s6Step161HeadGvRow.sign::s6Step161HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step161HeadGv_owned : (s6Step161HeadGvRow.sign::s6Step161HeadGvRow.payload).toFinset⊆s6Step161HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step161HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step161HeadGv_reserved : s6Step161HeadGvBefore.reserve s6Step161HeadGvFresh.toFinset=some s6Step161HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step161HeadGvFresh,arenaWires]
  · norm_num [s6Step161HeadGvBefore,s6Step161HeadFAfter,s6Step161HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step161HeadGvAfter,s6Step161HeadGvBefore,s6Step161HeadFAfter,s6Step161HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step161HeadGv_checked : planRowResizeLog s6Step161HeadGvBefore s6Step161HeadGvRow 96 s6Step161HeadGvFresh=
    some (s6Step161HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩,growRow 775 s6Step161HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step161HeadGvBefore s6Step161HeadGvAfter s6Step161HeadGvRow 96 s6Step161HeadGvFresh
    s6Step161HeadGv_distinct s6Step161HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step161HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step161HeadGvRow.payload++s6Step161HeadGvFresh) s6Step161HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step161HeadBank_rows : planWindowRowsLog s6Step161HeadGBefore [(s6Step161HeadGRow,190),(s6Step161HeadFRow,190),(s6Step161HeadGvRow,96),(s6Step161HeadFvRow,96)] [s6Step161HeadGFresh,s6Step161HeadFFresh,s6Step161HeadGvFresh,s6Step161HeadFvFresh]=
    some (s6Step161HeadFvAfter,[s6Step161HeadGOut,s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut],(growRow 777 s6Step161HeadGFresh ++ (growRow 795 s6Step161HeadFFresh ++ (growRow 775 s6Step161HeadGvFresh ++ (growRow 776 s6Step161HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step161HeadFvAfter [] []=some (s6Step161HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step161HeadFvBefore s6Step161HeadFvAfter s6Step161HeadFvAfter
    s6Step161HeadFvRow s6Step161HeadFvOut 96 s6Step161HeadFvFresh [] [] []
    (growRow 776 s6Step161HeadFvFresh) ([]) s6Step161HeadFv_Incoming s6Step161HeadFv_checked h4 s6Step161HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step161HeadGvBefore s6Step161HeadGvAfter s6Step161HeadFvAfter
    s6Step161HeadGvRow s6Step161HeadGvOut 96 s6Step161HeadGvFresh [(s6Step161HeadFvRow,96)] [s6Step161HeadFvFresh] [s6Step161HeadFvOut]
    (growRow 775 s6Step161HeadGvFresh) ((growRow 776 s6Step161HeadFvFresh ++ [])) s6Step161HeadGv_Incoming s6Step161HeadGv_checked h3 s6Step161HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step161HeadFBefore s6Step161HeadFAfter s6Step161HeadFvAfter
    s6Step161HeadFRow s6Step161HeadFOut 190 s6Step161HeadFFresh [(s6Step161HeadGvRow,96),(s6Step161HeadFvRow,96)] [s6Step161HeadGvFresh,s6Step161HeadFvFresh] [s6Step161HeadGvOut,s6Step161HeadFvOut]
    (growRow 795 s6Step161HeadFFresh) ((growRow 775 s6Step161HeadGvFresh ++ (growRow 776 s6Step161HeadFvFresh ++ []))) s6Step161HeadF_Incoming s6Step161HeadF_checked h2 s6Step161HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step161HeadGBefore s6Step161HeadGAfter s6Step161HeadFvAfter
    s6Step161HeadGRow s6Step161HeadGOut 190 s6Step161HeadGFresh [(s6Step161HeadFRow,190),(s6Step161HeadGvRow,96),(s6Step161HeadFvRow,96)] [s6Step161HeadFFresh,s6Step161HeadGvFresh,s6Step161HeadFvFresh] [s6Step161HeadFOut,s6Step161HeadGvOut,s6Step161HeadFvOut]
    (growRow 777 s6Step161HeadGFresh) ((growRow 795 s6Step161HeadFFresh ++ (growRow 775 s6Step161HeadGvFresh ++ (growRow 776 s6Step161HeadFvFresh ++ [])))) s6Step161HeadG_Incoming s6Step161HeadG_checked h1 s6Step161HeadG_Outgoing
  exact h0

private theorem s6Step161HeadBank_checked : compileHmrBankResizeLog .headroom s6Step161HeadGBefore ⟨s6Step161HeadFRow,s6Step161HeadGRow,s6Step161HeadFvRow,s6Step161HeadGvRow⟩ ⟨190,190,96,96⟩ [s6Step161HeadGFresh,s6Step161HeadFFresh,s6Step161HeadGvFresh,s6Step161HeadFvFresh]=
    some (s6Step161HeadFvAfter,⟨s6Step161HeadFOut,s6Step161HeadGOut,s6Step161HeadFvOut,s6Step161HeadGvOut⟩,(growRow 777 s6Step161HeadGFresh ++ (growRow 795 s6Step161HeadFFresh ++ (growRow 775 s6Step161HeadGvFresh ++ (growRow 776 s6Step161HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step161HeadBank_rows]
  rfl

private theorem s6Step161Front_checked : compileHmrSourceFrontLog s6Step161EntryFBefore s6Step161FrontBank 189 95 ⟨188,188,95,95⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step161FrontLog=some s6Step161FrontPlan := by
  have pairEq : s6Step161FrontPair=⟨s6Step161HeadFRow,s6Step161HeadGRow,s6Step161HeadFvRow,s6Step161HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step161FrontHead=⟨s6Step161ExitFRow,s6Step161ExitGRow,s6Step161ExitFvRow,s6Step161ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step161Add0A=s6Step161FrontHead.f.wires := by decide +kernel
  have gEq : s6Step161Add0B=s6Step161FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step161Add1A=s6Step161FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step161Add1B=s6Step161FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step161EntryFBefore s6Step161FrontBank 189 95 ⟨188,188,95,95⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step161FrontLog s6Step161FrontPlan
  · exact s6Step161Front_entry
  · exact s6Step161EntryBank_checked
  · exact s6Step161Front_sigma
  · rfl
  · exact s6Step161Front_branch
  · rfl
  · simpa only [s6Step161FrontPlan,pairEq] using s6Step161HeadBank_checked
  · simpa only [s6Step161FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step161F4_checked
  · exact s6Step161Counter_checked
  · rfl
  · simpa only [s6Step161FrontPlan,headEq] using s6Step161ExitBank_checked

private theorem s6Step161Complete_explicit_checked : compileHmrEarlyStepLog s6Step161EntryFBefore s6Step161FrontBank 189 95 ⟨188,188,95,95⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step161CompleteLog=some s6Step161CompletePlan := by
  let Q := s6Step161EarlyControlPlan
  have hq := s6Step161EarlyControl_plan_checked
  have fv1 : s6Step161CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step161CompleteOut.fv.payload[2]?.getD s6Step161CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step161CompleteOut.fv.payload[3]?.getD s6Step161CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step161CompleteOut.fv.payload[4]?.getD s6Step161CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step161EntryFBefore s6Step161EarlyControlArena s6Step161FrontBank 189 95 ⟨188,188,95,95⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step161CompleteLog s6Step161FrontPlan Q
    s6Step161Front_checked s6Step161Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step161Complete_owned s6Step161Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step161EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 s6Step161CompleteOut.fv.second (s6Step161CompleteOut.fv.payload[2]?.getD s6Step161CompleteOut.fv.sign) (s6Step161CompleteOut.fv.payload[3]?.getD s6Step161CompleteOut.fv.sign) (s6Step161CompleteOut.fv.payload[4]?.getD s6Step161CompleteOut.fv.sign) 879 42 s6Step161EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep161Arena : Arena := s6Step161EntryFBefore
def s6PrivateStep161Bank : WindowBank := s6Step161FrontBank
def s6PrivateStep161Spec : HmrSourceWalkStepLog := ⟨189,95,⟨188,188,95,95⟩,42,.early s6Step161CompleteLog⟩
def s6PrivateStep161Plan : HmrSourceStepPlan := .early s6Step161CompletePlan
theorem s6PrivateStep161_source : s6PrivateStep161Spec=s6ObservedLogs160[1] := rfl
theorem s6PrivateStep161_checked : compileHmrSourceStepLog s6PrivateStep161Arena s6PrivateStep161Bank
    s6PrivateStep161Spec.fgWidth s6PrivateStep161Spec.vWidth s6PrivateStep161Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 161 s6PrivateStep161Spec.need none s6PrivateStep161Spec.log=some s6PrivateStep161Plan := by
  change compileHmrSourceStepLog s6Step161EntryFBefore s6Step161FrontBank 189 95 ⟨188,188,95,95⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 161 42 none (.early s6Step161CompleteLog)=some (.early s6Step161CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 161<498)]
  rw [s6Step161Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
