import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep160
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

private def s6Step162CompleteMoves : List (Wire × Wire) := [(818,187)]

private def s6Step162EarlyControlLog : HmrEarlyControlLog := ⟨[818, 857, 876, 890, 828],[908],[922],[887, 891, 903, 791, 825, 810],[]⟩

private def s6Step162FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[890], [876], [857], [856]],[[], [], [], []]⟩,[879],[863],[828],[908],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[828, 908, 922, 887]⟩

private def s6Step162CompleteLog : HmrEarlyStepLog := ⟨s6Step162FrontLog,s6Step162CompleteMoves,s6Step162EarlyControlLog⟩

private def s6Step162ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step162ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step162ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186],777⟩

private def s6Step162ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step162FrontOut : WindowBank := ⟨s6Step162ExitFOut,s6Step162ExitGOut,s6Step162ExitFvOut,s6Step162ExitGvOut⟩

private def s6Step162CompleteOut : WindowBank := s6Step162FrontOut.repacked s6Step162CompleteMoves

private def s6Step162EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step162EarlyControlPositiveArena,[908],s6Step162EarlyControlEqualityArena,[922],⟨⟨879,false⟩,[⟨⟨908,false⟩,922⟩]⟩⟩

private def s6Step162EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,818⟩,⟨⟨772,false⟩,857⟩,⟨⟨771,false⟩,876⟩,⟨⟨770,false⟩,890⟩,⟨⟨769,false⟩,828⟩]⟩

private def s6Step162EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step162EarlyControlZeroArena,s6Step162EarlyControlZeroPlan,s6Step162EarlyControlClassPlan,s6Step162EarlyControlFlagArena,s6Step162EarlyControlFittedArena,s6Step162EarlyControlHistoryArena,s6Step162EarlyControlSigmaArena,s6Step162EarlyControlOutputArena,s6Step162EarlyControlLog⟩

private def s6Step162CounterWork : List Wire := [828, 908, 922, 887]

private theorem s6Step162Counter_bounded : s6Step162CounterWork.toFinset⊆arenaWires := by norm_num [s6Step162CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step162HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162CounterDuring : Arena := ⟨s6Step162HeadFvAfter.live∪s6Step162CounterWork.toFinset,Finset.union_subset s6Step162HeadFvAfter.bounded s6Step162Counter_bounded⟩

private def s6Step162EntryFFresh : List Wire := []

private def s6Step162EntryFvFresh : List Wire := []

private def s6Step162EntryGFresh : List Wire := []

private def s6Step162EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162EntryGvAfter : Arena := s6Step162EntryFBefore

private def s6Step162EntryGvFresh : List Wire := []

private def s6Step162ExitFExtra : List Wire := [876]

private def s6Step162ExitGExtra : List Wire := [187, 890]

private def s6Step162ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162ExitGvExtra : List Wire := [857]

private def s6Step162Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162Add0Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step162Add0_bounded : s6Step162Add0Work.toFinset⊆arenaWires := by
  have h : s6Step162Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step162Add0During : Arena := ⟨s6Step162Add0Arena.live∪s6Step162Add0Work.toFinset,Finset.union_subset s6Step162Add0Arena.bounded s6Step162Add0_bounded⟩

private def s6Step162Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step162Add1Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step162Add1_bounded : s6Step162Add1Work.toFinset⊆arenaWires := by
  have h : s6Step162Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step162Add1During : Arena := ⟨s6Step162Add1Arena.live∪s6Step162Add1Work.toFinset,Finset.union_subset s6Step162Add1Arena.bounded s6Step162Add1_bounded⟩

private def s6Step162F4FlagArena : Arena := ⟨s6Step162HeadFvAfter.live∪{828},Finset.union_subset s6Step162HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step162F4Plan : HmrHybridF4Plan := ⟨s6Step162F4FlagArena,[828],s6Step162Add0Arena,[908],s6Step162Add0During,s6Step162Add0Work,s6Step162Add1During,s6Step162Add1Work⟩

private def s6Step162HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩

private def s6Step162HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step162HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 890],777⟩

private def s6Step162HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩

private def s6Step162FrontHead : WindowBank := ⟨s6Step162HeadFOut,s6Step162HeadGOut,s6Step162HeadFvOut,s6Step162HeadGvOut⟩

private def s6Step162EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step162EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step162EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],777⟩

private def s6Step162EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step162FrontPair : WindowBank := ⟨s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut⟩

private def s6Step162FrontSigmaArena : Arena := ⟨s6Step162EntryGvAfter.live∪{879},Finset.union_subset s6Step162EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step162HeadFFresh : List Wire := [876]

private def s6Step162HeadFvFresh : List Wire := [856]

private def s6Step162HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162HeadGFresh : List Wire := [890]

private def s6Step162HeadGvFresh : List Wire := [857]

private def s6Step162FrontPlan : HmrSourceFront := ⟨s6Step162EntryGvAfter,s6Step162FrontPair,(growRow 795 s6Step162EntryFFresh ++ (growRow 777 s6Step162EntryGFresh ++ (growRow 776 s6Step162EntryFvFresh ++ (growRow 775 s6Step162EntryGvFresh ++ [])))),s6Step162FrontSigmaArena,[879],s6Step162HeadGBefore,[863],
  s6Step162HeadFvAfter,s6Step162FrontHead,(growRow 777 s6Step162HeadGFresh ++ (growRow 795 s6Step162HeadFFresh ++ (growRow 775 s6Step162HeadGvFresh ++ (growRow 776 s6Step162HeadFvFresh ++ [])))),s6Step162F4Plan,s6Step162CounterDuring,s6Step162CounterWork,s6Step162ExitGvAfter,s6Step162FrontOut,(shrinkRow 777 s6Step162ExitGExtra ++ (shrinkRow 795 s6Step162ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step162ExitGvExtra ++ []))))⟩

private def s6Step162CompletePlan : HmrEarlyStepPlan := ⟨s6Step162FrontPlan,s6Step162EarlyControlArena,s6Step162EarlyControlPlan,s6Step162CompleteMoves⟩

private theorem s6Step162Complete_apart : List.Disjoint (s6Step162CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [879, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step162CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[879, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step162Complete_owned : (s6Step162CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step162CompleteRelocationMove0Borrowed : Arena := ⟨s6Step162ExitGvAfter.live∪{187},Finset.union_subset s6Step162ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step162CompleteRelocation_move0_owned : 818∈s6Step162ExitGvAfter.live := by norm_num [s6Step162ExitGvAfter,arenaWires]

private theorem s6Step162CompleteRelocation_move0_reserve : s6Step162ExitGvAfter.reserve {187}=some s6Step162CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step162ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step162CompleteRelocation_move0_retire : s6Step162CompleteRelocationMove0Borrowed.retireSet {818}=s6Step162EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step162CompleteRelocationMove0Borrowed s6Step162EarlyControlArena {818}
  change s6Step162EarlyControlArena.live=(s6Step162ExitGvAfter.live∪{187})\{818}
  apply hmrArena_update_of_filter_check s6Step162ExitGvAfter s6Step162EarlyControlArena (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [187] [818] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step162CompleteRelocation_checked : s6Step162ExitGvAfter.checkRepack [(818,187)]=some s6Step162EarlyControlArena := by
  have tail1 : s6Step162EarlyControlArena.checkRepack []=some s6Step162EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step162ExitGvAfter s6Step162CompleteRelocationMove0Borrowed s6Step162EarlyControlArena s6Step162EarlyControlArena 818 187 []
    s6Step162CompleteRelocation_move0_owned s6Step162CompleteRelocation_move0_reserve s6Step162CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step162Complete_repack : s6Step162ExitGvAfter.checkRepack s6Step162CompleteMoves=some s6Step162EarlyControlArena := by
  simpa only [s6Step162CompleteMoves] using s6Step162CompleteRelocation_checked

private theorem s6Step162EarlyControl_branchOwned : ([863] : List Wire).toFinset⊆s6Step162EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EarlyControl_branch : compileHmrBranchRetirement s6Step162EarlyControlSigmaArena 863=some s6Step162EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step162EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step162EarlyControlSigmaArena s6Step162EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel

private theorem s6Step162EarlyControl_classEqualityBorrow : s6Step162EarlyControlPositiveArena.checkBorrow (([879, 908] : List Wire).length-1) s6Step162EarlyControlLog.classWork=some s6Step162EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step162EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step162EarlyControlEqualityArena,s6Step162EarlyControlPositiveArena,s6Step162EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step162EarlyControl_classEqualityOwned : ([879, 908] : List Wire).toFinset⊆s6Step162EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162EarlyControl_classEquality : compileHmrEqualityLog s6Step162EarlyControlPositiveArena [879, 908] 0 s6Step162EarlyControlLog.classWork=some (s6Step162EarlyControlEqualityArena,s6Step162EarlyControlLog.classWork,s6Step162EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step162EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step162EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step162EarlyControl_classOwned : ([769, 828, 879] : List Wire).toFinset⊆s6Step162EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162EarlyControl_positiveBorrow : s6Step162EarlyControlZeroArena.checkBorrow (1) s6Step162EarlyControlLog.positiveWork=some s6Step162EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step162EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step162EarlyControlPositiveArena,s6Step162EarlyControlZeroArena,s6Step162EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step162EarlyControl_class : compileHmrSourceClassLog s6Step162EarlyControlZeroArena false 769 s6Step162EarlyControlZeroPlan.top 0 879 s6Step162EarlyControlLog.positiveWork s6Step162EarlyControlLog.classWork=some s6Step162EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step162EarlyControlClassPlan s6Step162EarlyControlZeroArena false 769 s6Step162EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s6Step162EarlyControl_classOwned
  · exact s6Step162EarlyControl_positiveBorrow
  · exact s6Step162EarlyControl_classEquality

private theorem s6Step162EarlyControl_entryRecordOwned : ([863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s6Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EarlyControl_fitBorrow : s6Step162EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step162EarlyControlLog.recordFresh=some s6Step162EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step162EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step162EarlyControlFittedArena,s6Step162EarlyControlFlagArena,s6Step162EarlyControlLog,arenaWires]

private theorem s6Step162EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step162EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162EarlyControl_fit : compileHmrRecordGrowLog s6Step162EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step162EarlyControlLog.recordFresh=some s6Step162EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step162EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step162EarlyControl_fitBorrow

private theorem s6Step162EarlyControl_flagsBorrow : s6Step162EarlyControlEqualityArena.checkBorrow (6) s6Step162EarlyControlLog.flagWork=some s6Step162EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step162EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step162EarlyControlFlagArena,s6Step162EarlyControlEqualityArena,s6Step162EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step162EarlyControl_flagsOwned : ([922, 253, 252, 251] : List Wire).toFinset⊆s6Step162EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162EarlyControl_flags : compileHmrFlagsLog s6Step162EarlyControlClassPlan.equalityArena s6Step162EarlyControlClassPlan.equality.top 253 252 251 s6Step162EarlyControlLog.flagWork=some s6Step162EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step162EarlyControl_flagsOwned⟩
  · exact s6Step162EarlyControl_flagsBorrow

private theorem s6Step162EarlyControl_historyBorrow : s6Step162EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step162EarlyControlLog.recordFresh=some s6Step162EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step162EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step162EarlyControlArena s6Step162EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step162EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step162EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EarlyControl_history : compileHmrRecordGrowLog s6Step162EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step162EarlyControlLog.recordFresh=some s6Step162EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step162EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step162EarlyControl_historyBorrow

private theorem s6Step162EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s6Step162EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s6Step162EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EarlyControl_sigmaRelease : s6Step162EarlyControlHistoryArena.release {879} (fun _ => false)=some s6Step162EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step162EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step162EarlyControlHistoryArena s6Step162EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [879] rfl rfl
    decide +kernel

private theorem s6Step162EarlyControl_sigma : compileHmrSigmaDropLog s6Step162EarlyControlHistoryArena false 0 0 254 879 []=some s6Step162EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step162EarlyControl_sigmaOwned⟩
  · exact s6Step162EarlyControl_sigmaRelease

private theorem s6Step162EarlyControl_zeroBorrow : s6Step162EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step162EarlyControlLog.zeroWork=some s6Step162EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step162EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step162EarlyControlArena s6Step162EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step162EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step162EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step162EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EarlyControl_zero : compileHmrEqualityLog s6Step162EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step162EarlyControlLog.zeroWork=some (s6Step162EarlyControlZeroArena,s6Step162EarlyControlLog.zeroWork,s6Step162EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step162EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step162EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step162EarlyControl_logged : s6Step162EarlyControlPlan.Logged s6Step162EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 863 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step162EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step162EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step162EarlyControl_zero
  · exact s6Step162EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step162EarlyControl_flags
  · exact s6Step162EarlyControl_fit
  · exact s6Step162EarlyControl_history
  · exact s6Step162EarlyControl_sigma
  · exact s6Step162EarlyControl_branch

private theorem s6Step162EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step162EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 863 42 s6Step162EarlyControlLog=some s6Step162EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step162EarlyControlPlan s6Step162EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 254 253 252 251 863 42 s6Step162EarlyControl_logged

private def s6Step162EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step162EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step162EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],777⟩

private def s6Step162EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private def s6Step162FrontBank : WindowBank := ⟨s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow⟩

private def s6Step162Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876, 795]

private def s6Step162Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 890, 777]

private def s6Step162Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856, 776]

private def s6Step162Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857, 775]

private theorem s6Step162Counter_apart : Disjoint s6Step162HeadFvAfter.live s6Step162CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step162HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162Counter_borrowed : s6Step162HeadFvAfter.checkBorrow 4 s6Step162CounterWork=some s6Step162CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step162HeadFvAfter s6Step162CounterDuring s6Step162CounterWork.toFinset s6Step162Counter_bounded s6Step162Counter_apart rfl

private theorem s6Step162Counter_owned : (879::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step162HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step162HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162Counter_checked : compileHmrCounterStepLog s6Step162HeadFvAfter true 879 [774, 773, 772, 771, 770, 769] s6Step162CounterWork=some s6Step162CounterDuring := by
  have owned : ∀q∈879::[774, 773, 772, 771, 770, 769],q∈s6Step162HeadFvAfter.live := fun q hq => s6Step162Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step162Counter_borrowed

private def s6Step162EntryFAfter : Arena := s6Step162EntryFBefore

private theorem s6Step162EntryBank_incomingDistinct : ([s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162EntryF_Incoming : rowsOwned s6Step162EntryFBefore [s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow] 0 s6Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162EntryBank_outgoingOwned : rowsOwned s6Step162EntryGvAfter [s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step162EntryGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162EntryF_Outgoing : rowsOwned s6Step162EntryGvAfter [s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut] :=
  hmrRows_owned_drop s6Step162EntryGvAfter [s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut] 0 s6Step162EntryBank_outgoingOwned

private theorem s6Step162EntryF_distinct : (s6Step162EntryFRow.sign::s6Step162EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162EntryF_owned : (s6Step162EntryFRow.sign::s6Step162EntryFRow.payload).toFinset⊆s6Step162EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EntryF_reserved : s6Step162EntryFBefore.reserve s6Step162EntryFFresh.toFinset=some s6Step162EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162EntryFFresh,arenaWires]
  · norm_num [s6Step162EntryFBefore,s6Step162EntryFFresh,arenaWires]
  · simp only [s6Step162EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step162EntryF_checked : planRowResizeLog s6Step162EntryFBefore s6Step162EntryFRow 188 s6Step162EntryFFresh=
    some (s6Step162EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩,growRow 795 s6Step162EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step162EntryFBefore s6Step162EntryFAfter s6Step162EntryFRow 188 s6Step162EntryFFresh
    s6Step162EntryF_distinct s6Step162EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162EntryF_reserved
  have rowEq : WindowRow.mk (s6Step162EntryFRow.payload++s6Step162EntryFFresh) s6Step162EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step162EntryFvAfter : Arena := s6Step162EntryFBefore

private def s6Step162EntryFvBefore : Arena := s6Step162EntryFBefore

private theorem s6Step162EntryFv_Incoming : rowsOwned s6Step162EntryFvBefore [s6Step162EntryFvRow,s6Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow] 2 s6Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162EntryFv_Outgoing : rowsOwned s6Step162EntryGvAfter [s6Step162EntryFvOut,s6Step162EntryGvOut] :=
  hmrRows_owned_drop s6Step162EntryGvAfter [s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut] 2 s6Step162EntryBank_outgoingOwned

private theorem s6Step162EntryFv_distinct : (s6Step162EntryFvRow.sign::s6Step162EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162EntryFv_owned : (s6Step162EntryFvRow.sign::s6Step162EntryFvRow.payload).toFinset⊆s6Step162EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162EntryFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EntryFv_reserved : s6Step162EntryFvBefore.reserve s6Step162EntryFvFresh.toFinset=some s6Step162EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162EntryFvFresh,arenaWires]
  · norm_num [s6Step162EntryFvBefore,s6Step162EntryFBefore,s6Step162EntryFvFresh,arenaWires]
  · simp only [s6Step162EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step162EntryFv_checked : planRowResizeLog s6Step162EntryFvBefore s6Step162EntryFvRow 95 s6Step162EntryFvFresh=
    some (s6Step162EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩,growRow 776 s6Step162EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step162EntryFvBefore s6Step162EntryFvAfter s6Step162EntryFvRow 95 s6Step162EntryFvFresh
    s6Step162EntryFv_distinct s6Step162EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step162EntryFvRow.payload++s6Step162EntryFvFresh) s6Step162EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step162EntryGAfter : Arena := s6Step162EntryFBefore

private def s6Step162EntryGBefore : Arena := s6Step162EntryFBefore

private theorem s6Step162EntryG_Incoming : rowsOwned s6Step162EntryGBefore [s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow] 1 s6Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162EntryG_Outgoing : rowsOwned s6Step162EntryGvAfter [s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut] :=
  hmrRows_owned_drop s6Step162EntryGvAfter [s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut] 1 s6Step162EntryBank_outgoingOwned

private theorem s6Step162EntryG_distinct : (s6Step162EntryGRow.sign::s6Step162EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162EntryG_owned : (s6Step162EntryGRow.sign::s6Step162EntryGRow.payload).toFinset⊆s6Step162EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162EntryGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EntryG_reserved : s6Step162EntryGBefore.reserve s6Step162EntryGFresh.toFinset=some s6Step162EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162EntryGFresh,arenaWires]
  · norm_num [s6Step162EntryGBefore,s6Step162EntryFBefore,s6Step162EntryGFresh,arenaWires]
  · simp only [s6Step162EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step162EntryG_checked : planRowResizeLog s6Step162EntryGBefore s6Step162EntryGRow 188 s6Step162EntryGFresh=
    some (s6Step162EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],777⟩,growRow 777 s6Step162EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step162EntryGBefore s6Step162EntryGAfter s6Step162EntryGRow 188 s6Step162EntryGFresh
    s6Step162EntryG_distinct s6Step162EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162EntryG_reserved
  have rowEq : WindowRow.mk (s6Step162EntryGRow.payload++s6Step162EntryGFresh) s6Step162EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step162EntryGvBefore : Arena := s6Step162EntryFBefore

private theorem s6Step162EntryGv_Incoming : rowsOwned s6Step162EntryGvBefore [s6Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow] 3 s6Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162EntryGv_Outgoing : rowsOwned s6Step162EntryGvAfter [s6Step162EntryGvOut] :=
  hmrRows_owned_drop s6Step162EntryGvAfter [s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut] 3 s6Step162EntryBank_outgoingOwned

private theorem s6Step162EntryGv_distinct : (s6Step162EntryGvRow.sign::s6Step162EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162EntryGv_owned : (s6Step162EntryGvRow.sign::s6Step162EntryGvRow.payload).toFinset⊆s6Step162EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162EntryGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162EntryGv_reserved : s6Step162EntryGvBefore.reserve s6Step162EntryGvFresh.toFinset=some s6Step162EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162EntryGvFresh,arenaWires]
  · norm_num [s6Step162EntryGvBefore,s6Step162EntryFBefore,s6Step162EntryGvFresh,arenaWires]
  · simp only [s6Step162EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step162EntryGv_checked : planRowResizeLog s6Step162EntryGvBefore s6Step162EntryGvRow 95 s6Step162EntryGvFresh=
    some (s6Step162EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩,growRow 775 s6Step162EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step162EntryGvBefore s6Step162EntryGvAfter s6Step162EntryGvRow 95 s6Step162EntryGvFresh
    s6Step162EntryGv_distinct s6Step162EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step162EntryGvRow.payload++s6Step162EntryGvFresh) s6Step162EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step162EntryBank_rows : planWindowRowsLog s6Step162EntryFBefore [(s6Step162EntryFRow,188),(s6Step162EntryGRow,188),(s6Step162EntryFvRow,95),(s6Step162EntryGvRow,95)] [s6Step162EntryFFresh,s6Step162EntryGFresh,s6Step162EntryFvFresh,s6Step162EntryGvFresh]=
    some (s6Step162EntryGvAfter,[s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut],(growRow 795 s6Step162EntryFFresh ++ (growRow 777 s6Step162EntryGFresh ++ (growRow 776 s6Step162EntryFvFresh ++ (growRow 775 s6Step162EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step162EntryGvAfter [] []=some (s6Step162EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step162EntryGvBefore s6Step162EntryGvAfter s6Step162EntryGvAfter
    s6Step162EntryGvRow s6Step162EntryGvOut 95 s6Step162EntryGvFresh [] [] []
    (growRow 775 s6Step162EntryGvFresh) ([]) s6Step162EntryGv_Incoming s6Step162EntryGv_checked h4 s6Step162EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step162EntryFvBefore s6Step162EntryFvAfter s6Step162EntryGvAfter
    s6Step162EntryFvRow s6Step162EntryFvOut 95 s6Step162EntryFvFresh [(s6Step162EntryGvRow,95)] [s6Step162EntryGvFresh] [s6Step162EntryGvOut]
    (growRow 776 s6Step162EntryFvFresh) ((growRow 775 s6Step162EntryGvFresh ++ [])) s6Step162EntryFv_Incoming s6Step162EntryFv_checked h3 s6Step162EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step162EntryGBefore s6Step162EntryGAfter s6Step162EntryGvAfter
    s6Step162EntryGRow s6Step162EntryGOut 188 s6Step162EntryGFresh [(s6Step162EntryFvRow,95),(s6Step162EntryGvRow,95)] [s6Step162EntryFvFresh,s6Step162EntryGvFresh] [s6Step162EntryFvOut,s6Step162EntryGvOut]
    (growRow 777 s6Step162EntryGFresh) ((growRow 776 s6Step162EntryFvFresh ++ (growRow 775 s6Step162EntryGvFresh ++ []))) s6Step162EntryG_Incoming s6Step162EntryG_checked h2 s6Step162EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step162EntryFBefore s6Step162EntryFAfter s6Step162EntryGvAfter
    s6Step162EntryFRow s6Step162EntryFOut 188 s6Step162EntryFFresh [(s6Step162EntryGRow,188),(s6Step162EntryFvRow,95),(s6Step162EntryGvRow,95)] [s6Step162EntryGFresh,s6Step162EntryFvFresh,s6Step162EntryGvFresh] [s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut]
    (growRow 795 s6Step162EntryFFresh) ((growRow 777 s6Step162EntryGFresh ++ (growRow 776 s6Step162EntryFvFresh ++ (growRow 775 s6Step162EntryGvFresh ++ [])))) s6Step162EntryF_Incoming s6Step162EntryF_checked h1 s6Step162EntryF_Outgoing
  exact h0

private theorem s6Step162EntryBank_checked : compileHmrBankResizeLog .entry s6Step162EntryFBefore ⟨s6Step162EntryFRow,s6Step162EntryGRow,s6Step162EntryFvRow,s6Step162EntryGvRow⟩ ⟨188,188,95,95⟩ [s6Step162EntryFFresh,s6Step162EntryGFresh,s6Step162EntryFvFresh,s6Step162EntryGvFresh]=
    some (s6Step162EntryGvAfter,⟨s6Step162EntryFOut,s6Step162EntryGOut,s6Step162EntryFvOut,s6Step162EntryGvOut⟩,(growRow 795 s6Step162EntryFFresh ++ (growRow 777 s6Step162EntryGFresh ++ (growRow 776 s6Step162EntryFvFresh ++ (growRow 775 s6Step162EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step162EntryBank_rows]
  rfl

private def s6Step162ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162ExitFBefore : Arena := s6Step162ExitGAfter

private def s6Step162ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩

private def s6Step162ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩

private def s6Step162ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 890],777⟩

private def s6Step162ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩

private theorem s6Step162ExitBank_incomingDistinct : ([s6Step162ExitGRow,s6Step162ExitFRow,s6Step162ExitFvRow,s6Step162ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162ExitF_Incoming : rowsOwned s6Step162ExitFBefore [s6Step162ExitFRow,s6Step162ExitFvRow,s6Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162ExitGRow,s6Step162ExitFRow,s6Step162ExitFvRow,s6Step162ExitGvRow] 1 s6Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162ExitFBefore (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162ExitBank_outgoingOwned : rowsOwned s6Step162ExitGvAfter [s6Step162ExitGOut,s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step162ExitGvAfter (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162ExitF_Outgoing : rowsOwned s6Step162ExitGvAfter [s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut] :=
  hmrRows_owned_drop s6Step162ExitGvAfter [s6Step162ExitGOut,s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut] 1 s6Step162ExitBank_outgoingOwned

private theorem s6Step162ExitF_distinct : (s6Step162ExitFRow.sign::s6Step162ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162ExitF_owned : (s6Step162ExitFRow.sign::s6Step162ExitFRow.payload).toFinset⊆s6Step162ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162ExitFBefore (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162ExitF_retired : s6Step162ExitFBefore.retireSet s6Step162ExitFExtra.toFinset=s6Step162ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step162ExitFBefore s6Step162ExitFAfter s6Step162ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step162ExitFBefore s6Step162ExitFAfter (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step162ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step162ExitF_checked : planRowResizeLog s6Step162ExitFBefore s6Step162ExitFRow 188 []=
    some (s6Step162ExitFAfter,s6Step162ExitFOut,shrinkRow 795 s6Step162ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step162ExitFBefore s6Step162ExitFRow 188 s6Step162ExitF_distinct s6Step162ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step162ExitFRow.payload.take 188) s6Step162ExitFRow.sign=s6Step162ExitFOut := by decide +kernel
  have hi : s6Step162ExitFRow.payload.drop 188=s6Step162ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step162ExitF_retired] at result
  exact result

private def s6Step162ExitFvAfter : Arena := s6Step162ExitFAfter

private def s6Step162ExitFvBefore : Arena := s6Step162ExitFAfter

private theorem s6Step162ExitFv_Incoming : rowsOwned s6Step162ExitFvBefore [s6Step162ExitFvRow,s6Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162ExitGRow,s6Step162ExitFRow,s6Step162ExitFvRow,s6Step162ExitGvRow] 2 s6Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162ExitFvBefore (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162ExitFv_Outgoing : rowsOwned s6Step162ExitGvAfter [s6Step162ExitFvOut,s6Step162ExitGvOut] :=
  hmrRows_owned_drop s6Step162ExitGvAfter [s6Step162ExitGOut,s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut] 2 s6Step162ExitBank_outgoingOwned

private theorem s6Step162ExitFv_distinct : (s6Step162ExitFvRow.sign::s6Step162ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162ExitFv_owned : (s6Step162ExitFvRow.sign::s6Step162ExitFvRow.payload).toFinset⊆s6Step162ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162ExitFvBefore (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162ExitFv_reserved : s6Step162ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step162ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step162ExitFv_checked : planRowResizeLog s6Step162ExitFvBefore s6Step162ExitFvRow 96 []=
    some (s6Step162ExitFvAfter,s6Step162ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step162ExitFvBefore s6Step162ExitFvAfter s6Step162ExitFvRow 96 []
    s6Step162ExitFv_distinct s6Step162ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step162ExitFvRow.payload++[]) s6Step162ExitFvRow.sign=s6Step162ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step162ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step162ExitG_Incoming : rowsOwned s6Step162ExitGBefore [s6Step162ExitGRow,s6Step162ExitFRow,s6Step162ExitFvRow,s6Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162ExitGRow,s6Step162ExitFRow,s6Step162ExitFvRow,s6Step162ExitGvRow] 0 s6Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step162ExitG_Outgoing : rowsOwned s6Step162ExitGvAfter [s6Step162ExitGOut,s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut] :=
  hmrRows_owned_drop s6Step162ExitGvAfter [s6Step162ExitGOut,s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut] 0 s6Step162ExitBank_outgoingOwned

private theorem s6Step162ExitG_distinct : (s6Step162ExitGRow.sign::s6Step162ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162ExitG_owned : (s6Step162ExitGRow.sign::s6Step162ExitGRow.payload).toFinset⊆s6Step162ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162ExitG_retired : s6Step162ExitGBefore.retireSet s6Step162ExitGExtra.toFinset=s6Step162ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step162ExitGBefore s6Step162ExitGAfter s6Step162ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step162ExitGBefore s6Step162ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step162ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step162ExitG_checked : planRowResizeLog s6Step162ExitGBefore s6Step162ExitGRow 187 []=
    some (s6Step162ExitGAfter,s6Step162ExitGOut,shrinkRow 777 s6Step162ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step162ExitGBefore s6Step162ExitGRow 187 s6Step162ExitG_distinct s6Step162ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step162ExitGRow.payload.take 187) s6Step162ExitGRow.sign=s6Step162ExitGOut := by decide +kernel
  have hi : s6Step162ExitGRow.payload.drop 187=s6Step162ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step162ExitG_retired] at result
  exact result

private def s6Step162ExitGvBefore : Arena := s6Step162ExitFAfter

private theorem s6Step162ExitGv_Incoming : rowsOwned s6Step162ExitGvBefore [s6Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162ExitGRow,s6Step162ExitFRow,s6Step162ExitFvRow,s6Step162ExitGvRow] 3 s6Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162ExitGvBefore (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162ExitGv_Outgoing : rowsOwned s6Step162ExitGvAfter [s6Step162ExitGvOut] :=
  hmrRows_owned_drop s6Step162ExitGvAfter [s6Step162ExitGOut,s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut] 3 s6Step162ExitBank_outgoingOwned

private theorem s6Step162ExitGv_distinct : (s6Step162ExitGvRow.sign::s6Step162ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162ExitGv_owned : (s6Step162ExitGvRow.sign::s6Step162ExitGvRow.payload).toFinset⊆s6Step162ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162ExitGvBefore (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162ExitGv_retired : s6Step162ExitGvBefore.retireSet s6Step162ExitGvExtra.toFinset=s6Step162ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step162ExitGvBefore s6Step162ExitGvAfter s6Step162ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step162ExitGvBefore s6Step162ExitGvAfter (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,187),(188,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,857),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step162ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step162ExitGv_checked : planRowResizeLog s6Step162ExitGvBefore s6Step162ExitGvRow 95 []=
    some (s6Step162ExitGvAfter,s6Step162ExitGvOut,shrinkRow 775 s6Step162ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step162ExitGvBefore s6Step162ExitGvRow 95 s6Step162ExitGv_distinct s6Step162ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step162ExitGvRow.payload.take 95) s6Step162ExitGvRow.sign=s6Step162ExitGvOut := by decide +kernel
  have hi : s6Step162ExitGvRow.payload.drop 95=s6Step162ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step162ExitGv_retired] at result
  exact result

private theorem s6Step162ExitBank_rows : planWindowRowsLog s6Step162ExitGBefore [(s6Step162ExitGRow,187),(s6Step162ExitFRow,188),(s6Step162ExitFvRow,96),(s6Step162ExitGvRow,95)] [[],[],[],[]]=
    some (s6Step162ExitGvAfter,[s6Step162ExitGOut,s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut],(shrinkRow 777 s6Step162ExitGExtra ++ (shrinkRow 795 s6Step162ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step162ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step162ExitGvAfter [] []=some (s6Step162ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step162ExitGvBefore s6Step162ExitGvAfter s6Step162ExitGvAfter
    s6Step162ExitGvRow s6Step162ExitGvOut 95 [] [] [] []
    (shrinkRow 775 s6Step162ExitGvExtra) ([]) s6Step162ExitGv_Incoming s6Step162ExitGv_checked h4 s6Step162ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step162ExitFvBefore s6Step162ExitFvAfter s6Step162ExitGvAfter
    s6Step162ExitFvRow s6Step162ExitFvOut 96 [] [(s6Step162ExitGvRow,95)] [[]] [s6Step162ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step162ExitGvExtra ++ [])) s6Step162ExitFv_Incoming s6Step162ExitFv_checked h3 s6Step162ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step162ExitFBefore s6Step162ExitFAfter s6Step162ExitGvAfter
    s6Step162ExitFRow s6Step162ExitFOut 188 [] [(s6Step162ExitFvRow,96),(s6Step162ExitGvRow,95)] [[],[]] [s6Step162ExitFvOut,s6Step162ExitGvOut]
    (shrinkRow 795 s6Step162ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step162ExitGvExtra ++ []))) s6Step162ExitF_Incoming s6Step162ExitF_checked h2 s6Step162ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step162ExitGBefore s6Step162ExitGAfter s6Step162ExitGvAfter
    s6Step162ExitGRow s6Step162ExitGOut 187 [] [(s6Step162ExitFRow,188),(s6Step162ExitFvRow,96),(s6Step162ExitGvRow,95)] [[],[],[]] [s6Step162ExitFOut,s6Step162ExitFvOut,s6Step162ExitGvOut]
    (shrinkRow 777 s6Step162ExitGExtra) ((shrinkRow 795 s6Step162ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step162ExitGvExtra ++ [])))) s6Step162ExitG_Incoming s6Step162ExitG_checked h1 s6Step162ExitG_Outgoing
  exact h0

private theorem s6Step162ExitBank_checked : compileHmrBankResizeLog .exit s6Step162ExitGBefore ⟨s6Step162ExitFRow,s6Step162ExitGRow,s6Step162ExitFvRow,s6Step162ExitGvRow⟩ ⟨188,187,96,95⟩ [[],[],[],[]]=
    some (s6Step162ExitGvAfter,⟨s6Step162ExitFOut,s6Step162ExitGOut,s6Step162ExitFvOut,s6Step162ExitGvOut⟩,(shrinkRow 777 s6Step162ExitGExtra ++ (shrinkRow 795 s6Step162ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step162ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step162ExitBank_rows]
  rfl

private theorem s6Step162Add0_apart : Disjoint s6Step162Add0Arena.live s6Step162Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step162Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162Add0_card : s6Step162Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step162Add0_borrowed : s6Step162Add0Arena.checkBorrow (hmrHybridCount s6Step162Add0Arena s6Step162Add0B.length) s6Step162Add0Work=some s6Step162Add0During := by
  have len : s6Step162Add0Work.length=hmrHybridCount s6Step162Add0Arena s6Step162Add0B.length := by
    rw [hmrHybridCount,s6Step162Add0_card]
    decide +kernel
  have nd : s6Step162Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step162Add0Arena s6Step162Add0During s6Step162Add0Work.toFinset s6Step162Add0_bounded s6Step162Add0_apart rfl

private theorem s6Step162Add0_distinct : (828::863::908::(s6Step162Add0A++s6Step162Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162Add0_owned : (828::863::908::(s6Step162Add0A++s6Step162Add0B)).toFinset⊆s6Step162Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step162Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162Add0_checked : compileHmrHybridCinLog s6Step162Add0Arena 863 828 908 s6Step162Add0A s6Step162Add0B s6Step162Add0Work=some s6Step162Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step162Add0Arena s6Step162Add0During 863 828 908 s6Step162Add0A s6Step162Add0B s6Step162Add0Work
    (by decide +kernel) (by decide +kernel) s6Step162Add0_distinct
    (fun q hq => s6Step162Add0_owned (List.mem_toFinset.mpr hq)) s6Step162Add0_borrowed

private theorem s6Step162Add1_apart : Disjoint s6Step162Add1Arena.live s6Step162Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step162Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162Add1_card : s6Step162Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step162Add1_borrowed : s6Step162Add1Arena.checkBorrow (hmrHybridCount s6Step162Add1Arena s6Step162Add1B.length) s6Step162Add1Work=some s6Step162Add1During := by
  have len : s6Step162Add1Work.length=hmrHybridCount s6Step162Add1Arena s6Step162Add1B.length := by
    rw [hmrHybridCount,s6Step162Add1_card]
    decide +kernel
  have nd : s6Step162Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step162Add1Arena s6Step162Add1During s6Step162Add1Work.toFinset s6Step162Add1_bounded s6Step162Add1_apart rfl

private theorem s6Step162Add1_distinct : (828::863::908::(s6Step162Add1A++s6Step162Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162Add1_owned : (828::863::908::(s6Step162Add1A++s6Step162Add1B)).toFinset⊆s6Step162Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step162Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162Add1_checked : compileHmrHybridCinLog s6Step162Add1Arena 863 828 908 s6Step162Add1A s6Step162Add1B s6Step162Add1Work=some s6Step162Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step162Add1Arena s6Step162Add1During 863 828 908 s6Step162Add1A s6Step162Add1B s6Step162Add1Work
    (by decide +kernel) (by decide +kernel) s6Step162Add1_distinct
    (fun q hq => s6Step162Add1_owned (List.mem_toFinset.mpr hq)) s6Step162Add1_borrowed

private theorem s6Step162F4_apart : Disjoint (s6Step162Add0A++s6Step162Add0B).toFinset (s6Step162Add1A++s6Step162Add1B).toFinset := by
  have nd : ((s6Step162Add0A++s6Step162Add0B)++(s6Step162Add1A++s6Step162Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step162F4_carry : s6Step162F4FlagArena.checkBorrow 1 [908]=some s6Step162Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step162F4FlagArena,s6Step162HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step162F4FlagArena,s6Step162HeadFvAfter,s6Step162Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step162F4_distinct : (879::863::828::908::((s6Step162Add0A++s6Step162Add1A)++(s6Step162Add0B++s6Step162Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162F4_flag : s6Step162HeadFvAfter.checkBorrow 1 [828]=some s6Step162F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step162HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step162F4_owned : (879::863::((s6Step162Add0A++s6Step162Add1A)++(s6Step162Add0B++s6Step162Add1B))).toFinset⊆s6Step162HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step162HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step162F4_checked : compileHmrHybridF4Log s6Step162HeadFvAfter 879 863 s6Step162Add0A s6Step162Add0B s6Step162Add1A s6Step162Add1B [828] [908] s6Step162Add0Work s6Step162Add1Work=some s6Step162F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step162HeadFvAfter s6Step162F4FlagArena s6Step162Add0Arena s6Step162Add0During s6Step162Add1During 879 863
    s6Step162Add0A s6Step162Add0B s6Step162Add1A s6Step162Add1B [828] [908] s6Step162Add0Work s6Step162Add1Work
    (fun q hq => s6Step162F4_owned (List.mem_toFinset.mpr hq)) s6Step162F4_flag s6Step162F4_carry
    s6Step162F4_distinct s6Step162F4_apart s6Step162Add0_checked s6Step162Add1_checked

private theorem s6Step162Front_branch : s6Step162FrontSigmaArena.checkBorrow 1 [863]=some s6Step162HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step162FrontSigmaArena,s6Step162EntryGvAfter,s6Step162EntryFBefore,arenaWires]
  · change s6Step162HeadGBefore.live=(s6Step162EntryGvAfter.live∪{879})∪{863}
    apply hmrArena_union_pair_of_filter_check s6Step162EntryGvAfter s6Step162HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 879 863 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step162Front_entry : HmrFrontEntryValid s6Step162EntryFBefore s6Step162FrontBank 188 95 ⟨188,187,96,95⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step162FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step162EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step162EntryFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,876),(877,879),(880,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step162FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step162Front_sigma : s6Step162EntryGvAfter.checkBorrow 1 [879]=some s6Step162FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step162EntryGvAfter,s6Step162EntryFBefore,arenaWires]
  · rfl

private def s6Step162HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162HeadFBefore : Arena := s6Step162HeadGAfter

private def s6Step162HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443],795⟩

private def s6Step162HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step162HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],777⟩

private def s6Step162HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768],775⟩

private theorem s6Step162HeadBank_incomingDistinct : ([s6Step162HeadGRow,s6Step162HeadFRow,s6Step162HeadGvRow,s6Step162HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162HeadF_Incoming : rowsOwned s6Step162HeadFBefore [s6Step162HeadFRow,s6Step162HeadGvRow,s6Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162HeadGRow,s6Step162HeadFRow,s6Step162HeadGvRow,s6Step162HeadFvRow] 1 s6Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162HeadBank_outgoingOwned : rowsOwned s6Step162HeadFvAfter [s6Step162HeadGOut,s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step162HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step162HeadF_Outgoing : rowsOwned s6Step162HeadFvAfter [s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut] :=
  hmrRows_owned_drop s6Step162HeadFvAfter [s6Step162HeadGOut,s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut] 1 s6Step162HeadBank_outgoingOwned

private theorem s6Step162HeadF_distinct : (s6Step162HeadFRow.sign::s6Step162HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162HeadF_owned : (s6Step162HeadFRow.sign::s6Step162HeadFRow.payload).toFinset⊆s6Step162HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162HeadF_reserved : s6Step162HeadFBefore.reserve s6Step162HeadFFresh.toFinset=some s6Step162HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162HeadFFresh,arenaWires]
  · norm_num [s6Step162HeadFBefore,s6Step162HeadGAfter,s6Step162HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step162HeadFBefore s6Step162HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step162HeadFFresh rfl rfl
    · norm_num [s6Step162HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step162HeadF_checked : planRowResizeLog s6Step162HeadFBefore s6Step162HeadFRow 189 s6Step162HeadFFresh=
    some (s6Step162HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩,growRow 795 s6Step162HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step162HeadFBefore s6Step162HeadFAfter s6Step162HeadFRow 189 s6Step162HeadFFresh
    s6Step162HeadF_distinct s6Step162HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162HeadF_reserved
  have rowEq : WindowRow.mk (s6Step162HeadFRow.payload++s6Step162HeadFFresh) s6Step162HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 876],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step162HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step162HeadFvBefore : Arena := s6Step162HeadGvAfter

private theorem s6Step162HeadFv_Incoming : rowsOwned s6Step162HeadFvBefore [s6Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162HeadGRow,s6Step162HeadFRow,s6Step162HeadGvRow,s6Step162HeadFvRow] 3 s6Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162HeadFv_Outgoing : rowsOwned s6Step162HeadFvAfter [s6Step162HeadFvOut] :=
  hmrRows_owned_drop s6Step162HeadFvAfter [s6Step162HeadGOut,s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut] 3 s6Step162HeadBank_outgoingOwned

private theorem s6Step162HeadFv_distinct : (s6Step162HeadFvRow.sign::s6Step162HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162HeadFv_owned : (s6Step162HeadFvRow.sign::s6Step162HeadFvRow.payload).toFinset⊆s6Step162HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162HeadFv_reserved : s6Step162HeadFvBefore.reserve s6Step162HeadFvFresh.toFinset=some s6Step162HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162HeadFvFresh,arenaWires]
  · norm_num [s6Step162HeadFvBefore,s6Step162HeadGvAfter,s6Step162HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step162HeadFvBefore s6Step162HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<828) ∨ (829≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step162HeadFvFresh rfl rfl
    · norm_num [s6Step162HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step162HeadFv_checked : planRowResizeLog s6Step162HeadFvBefore s6Step162HeadFvRow 96 s6Step162HeadFvFresh=
    some (s6Step162HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩,growRow 776 s6Step162HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step162HeadFvBefore s6Step162HeadFvAfter s6Step162HeadFvRow 96 s6Step162HeadFvFresh
    s6Step162HeadFv_distinct s6Step162HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step162HeadFvRow.payload++s6Step162HeadFvFresh) s6Step162HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 856],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step162HeadG_Incoming : rowsOwned s6Step162HeadGBefore [s6Step162HeadGRow,s6Step162HeadFRow,s6Step162HeadGvRow,s6Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162HeadGRow,s6Step162HeadFRow,s6Step162HeadGvRow,s6Step162HeadFvRow] 0 s6Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162HeadG_Outgoing : rowsOwned s6Step162HeadFvAfter [s6Step162HeadGOut,s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut] :=
  hmrRows_owned_drop s6Step162HeadFvAfter [s6Step162HeadGOut,s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut] 0 s6Step162HeadBank_outgoingOwned

private theorem s6Step162HeadG_distinct : (s6Step162HeadGRow.sign::s6Step162HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162HeadG_owned : (s6Step162HeadGRow.sign::s6Step162HeadGRow.payload).toFinset⊆s6Step162HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162HeadG_reserved : s6Step162HeadGBefore.reserve s6Step162HeadGFresh.toFinset=some s6Step162HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162HeadGFresh,arenaWires]
  · norm_num [s6Step162HeadGBefore,s6Step162HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step162HeadGBefore s6Step162HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,890),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,876),(877,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step162HeadGFresh rfl rfl
    · norm_num [s6Step162HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step162HeadG_checked : planRowResizeLog s6Step162HeadGBefore s6Step162HeadGRow 189 s6Step162HeadGFresh=
    some (s6Step162HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 890],777⟩,growRow 777 s6Step162HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step162HeadGBefore s6Step162HeadGAfter s6Step162HeadGRow 189 s6Step162HeadGFresh
    s6Step162HeadG_distinct s6Step162HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162HeadG_reserved
  have rowEq : WindowRow.mk (s6Step162HeadGRow.payload++s6Step162HeadGFresh) s6Step162HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 890],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step162HeadGvBefore : Arena := s6Step162HeadFAfter

private theorem s6Step162HeadGv_Incoming : rowsOwned s6Step162HeadGvBefore [s6Step162HeadGvRow,s6Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step162HeadGRow,s6Step162HeadFRow,s6Step162HeadGvRow,s6Step162HeadFvRow] 2 s6Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step162HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step162HeadGv_Outgoing : rowsOwned s6Step162HeadFvAfter [s6Step162HeadGvOut,s6Step162HeadFvOut] :=
  hmrRows_owned_drop s6Step162HeadFvAfter [s6Step162HeadGOut,s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut] 2 s6Step162HeadBank_outgoingOwned

private theorem s6Step162HeadGv_distinct : (s6Step162HeadGvRow.sign::s6Step162HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step162HeadGv_owned : (s6Step162HeadGvRow.sign::s6Step162HeadGvRow.payload).toFinset⊆s6Step162HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step162HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step162HeadGv_reserved : s6Step162HeadGvBefore.reserve s6Step162HeadGvFresh.toFinset=some s6Step162HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step162HeadGvFresh,arenaWires]
  · norm_num [s6Step162HeadGvBefore,s6Step162HeadFAfter,s6Step162HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step162HeadGvBefore s6Step162HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(857,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step162HeadGvFresh rfl rfl
    · norm_num [s6Step162HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step162HeadGv_checked : planRowResizeLog s6Step162HeadGvBefore s6Step162HeadGvRow 96 s6Step162HeadGvFresh=
    some (s6Step162HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩,growRow 775 s6Step162HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step162HeadGvBefore s6Step162HeadGvAfter s6Step162HeadGvRow 96 s6Step162HeadGvFresh
    s6Step162HeadGv_distinct s6Step162HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step162HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step162HeadGvRow.payload++s6Step162HeadGvFresh) s6Step162HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 768, 857],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step162HeadBank_rows : planWindowRowsLog s6Step162HeadGBefore [(s6Step162HeadGRow,189),(s6Step162HeadFRow,189),(s6Step162HeadGvRow,96),(s6Step162HeadFvRow,96)] [s6Step162HeadGFresh,s6Step162HeadFFresh,s6Step162HeadGvFresh,s6Step162HeadFvFresh]=
    some (s6Step162HeadFvAfter,[s6Step162HeadGOut,s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut],(growRow 777 s6Step162HeadGFresh ++ (growRow 795 s6Step162HeadFFresh ++ (growRow 775 s6Step162HeadGvFresh ++ (growRow 776 s6Step162HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step162HeadFvAfter [] []=some (s6Step162HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step162HeadFvBefore s6Step162HeadFvAfter s6Step162HeadFvAfter
    s6Step162HeadFvRow s6Step162HeadFvOut 96 s6Step162HeadFvFresh [] [] []
    (growRow 776 s6Step162HeadFvFresh) ([]) s6Step162HeadFv_Incoming s6Step162HeadFv_checked h4 s6Step162HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step162HeadGvBefore s6Step162HeadGvAfter s6Step162HeadFvAfter
    s6Step162HeadGvRow s6Step162HeadGvOut 96 s6Step162HeadGvFresh [(s6Step162HeadFvRow,96)] [s6Step162HeadFvFresh] [s6Step162HeadFvOut]
    (growRow 775 s6Step162HeadGvFresh) ((growRow 776 s6Step162HeadFvFresh ++ [])) s6Step162HeadGv_Incoming s6Step162HeadGv_checked h3 s6Step162HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step162HeadFBefore s6Step162HeadFAfter s6Step162HeadFvAfter
    s6Step162HeadFRow s6Step162HeadFOut 189 s6Step162HeadFFresh [(s6Step162HeadGvRow,96),(s6Step162HeadFvRow,96)] [s6Step162HeadGvFresh,s6Step162HeadFvFresh] [s6Step162HeadGvOut,s6Step162HeadFvOut]
    (growRow 795 s6Step162HeadFFresh) ((growRow 775 s6Step162HeadGvFresh ++ (growRow 776 s6Step162HeadFvFresh ++ []))) s6Step162HeadF_Incoming s6Step162HeadF_checked h2 s6Step162HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step162HeadGBefore s6Step162HeadGAfter s6Step162HeadFvAfter
    s6Step162HeadGRow s6Step162HeadGOut 189 s6Step162HeadGFresh [(s6Step162HeadFRow,189),(s6Step162HeadGvRow,96),(s6Step162HeadFvRow,96)] [s6Step162HeadFFresh,s6Step162HeadGvFresh,s6Step162HeadFvFresh] [s6Step162HeadFOut,s6Step162HeadGvOut,s6Step162HeadFvOut]
    (growRow 777 s6Step162HeadGFresh) ((growRow 795 s6Step162HeadFFresh ++ (growRow 775 s6Step162HeadGvFresh ++ (growRow 776 s6Step162HeadFvFresh ++ [])))) s6Step162HeadG_Incoming s6Step162HeadG_checked h1 s6Step162HeadG_Outgoing
  exact h0

private theorem s6Step162HeadBank_checked : compileHmrBankResizeLog .headroom s6Step162HeadGBefore ⟨s6Step162HeadFRow,s6Step162HeadGRow,s6Step162HeadFvRow,s6Step162HeadGvRow⟩ ⟨189,189,96,96⟩ [s6Step162HeadGFresh,s6Step162HeadFFresh,s6Step162HeadGvFresh,s6Step162HeadFvFresh]=
    some (s6Step162HeadFvAfter,⟨s6Step162HeadFOut,s6Step162HeadGOut,s6Step162HeadFvOut,s6Step162HeadGvOut⟩,(growRow 777 s6Step162HeadGFresh ++ (growRow 795 s6Step162HeadFFresh ++ (growRow 775 s6Step162HeadGvFresh ++ (growRow 776 s6Step162HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step162HeadBank_rows]
  rfl

private theorem s6Step162Front_checked : compileHmrSourceFrontLog s6Step162EntryFBefore s6Step162FrontBank 188 95 ⟨188,187,96,95⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step162FrontLog=some s6Step162FrontPlan := by
  have pairEq : s6Step162FrontPair=⟨s6Step162HeadFRow,s6Step162HeadGRow,s6Step162HeadFvRow,s6Step162HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step162FrontHead=⟨s6Step162ExitFRow,s6Step162ExitGRow,s6Step162ExitFvRow,s6Step162ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step162Add0A=s6Step162FrontHead.f.wires := by decide +kernel
  have gEq : s6Step162Add0B=s6Step162FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step162Add1A=s6Step162FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step162Add1B=s6Step162FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step162EntryFBefore s6Step162FrontBank 188 95 ⟨188,187,96,95⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step162FrontLog s6Step162FrontPlan
  · exact s6Step162Front_entry
  · exact s6Step162EntryBank_checked
  · exact s6Step162Front_sigma
  · rfl
  · exact s6Step162Front_branch
  · rfl
  · simpa only [s6Step162FrontPlan,pairEq] using s6Step162HeadBank_checked
  · simpa only [s6Step162FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step162F4_checked
  · exact s6Step162Counter_checked
  · rfl
  · simpa only [s6Step162FrontPlan,headEq] using s6Step162ExitBank_checked

private theorem s6Step162Complete_explicit_checked : compileHmrEarlyStepLog s6Step162EntryFBefore s6Step162FrontBank 188 95 ⟨188,187,96,95⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step162CompleteLog=some s6Step162CompletePlan := by
  let Q := s6Step162EarlyControlPlan
  have hq := s6Step162EarlyControl_plan_checked
  have fv1 : s6Step162CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step162CompleteOut.fv.payload[2]?.getD s6Step162CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step162CompleteOut.fv.payload[3]?.getD s6Step162CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step162CompleteOut.fv.payload[4]?.getD s6Step162CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step162EntryFBefore s6Step162EarlyControlArena s6Step162FrontBank 188 95 ⟨188,187,96,95⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step162CompleteLog s6Step162FrontPlan Q
    s6Step162Front_checked s6Step162Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step162Complete_owned s6Step162Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step162EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 879 s6Step162CompleteOut.fv.second (s6Step162CompleteOut.fv.payload[2]?.getD s6Step162CompleteOut.fv.sign) (s6Step162CompleteOut.fv.payload[3]?.getD s6Step162CompleteOut.fv.sign) (s6Step162CompleteOut.fv.payload[4]?.getD s6Step162CompleteOut.fv.sign) 863 42 s6Step162EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep162Arena : Arena := s6Step162EntryFBefore
def s6PrivateStep162Bank : WindowBank := s6Step162FrontBank
def s6PrivateStep162Spec : HmrSourceWalkStepLog := ⟨188,95,⟨188,187,96,95⟩,42,.early s6Step162CompleteLog⟩
def s6PrivateStep162Plan : HmrSourceStepPlan := .early s6Step162CompletePlan
theorem s6PrivateStep162_source : s6PrivateStep162Spec=s6ObservedLogs160[2] := rfl
theorem s6PrivateStep162_checked : compileHmrSourceStepLog s6PrivateStep162Arena s6PrivateStep162Bank
    s6PrivateStep162Spec.fgWidth s6PrivateStep162Spec.vWidth s6PrivateStep162Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 162 s6PrivateStep162Spec.need none s6PrivateStep162Spec.log=some s6PrivateStep162Plan := by
  change compileHmrSourceStepLog s6Step162EntryFBefore s6Step162FrontBank 188 95 ⟨188,187,96,95⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 162 42 none (.early s6Step162CompleteLog)=some (.early s6Step162CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 162<498)]
  rw [s6Step162Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
