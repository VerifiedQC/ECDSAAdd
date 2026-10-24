import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep157
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

private def s6Step159CompleteMoves : List (Wire × Wire) := [(828,445)]

private def s6Step159EarlyControlLog : HmrEarlyControlLog := ⟨[828, 908, 879, 875, 857],[856],[922],[887, 891, 903, 791, 825, 810],[]⟩

private def s6Step159FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [879], [], []],[[875], [908], [845], [784]],[[], [], [], []]⟩,[768],[863],[857],[856],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 856, 922, 887]⟩

private def s6Step159CompleteLog : HmrEarlyStepLog := ⟨s6Step159FrontLog,s6Step159CompleteMoves,s6Step159EarlyControlLog⟩

private def s6Step159ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step159ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩

private def s6Step159ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step159ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private def s6Step159FrontOut : WindowBank := ⟨s6Step159ExitFOut,s6Step159ExitGOut,s6Step159ExitFvOut,s6Step159ExitGvOut⟩

private def s6Step159CompleteOut : WindowBank := s6Step159FrontOut.repacked s6Step159CompleteMoves

private def s6Step159EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step159EarlyControlPositiveArena,[856],s6Step159EarlyControlEqualityArena,[922],⟨⟨768,false⟩,[⟨⟨856,false⟩,922⟩]⟩⟩

private def s6Step159EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,828⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,879⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,857⟩]⟩

private def s6Step159EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step159EarlyControlZeroArena,s6Step159EarlyControlZeroPlan,s6Step159EarlyControlClassPlan,s6Step159EarlyControlFlagArena,s6Step159EarlyControlFittedArena,s6Step159EarlyControlHistoryArena,s6Step159EarlyControlSigmaArena,s6Step159EarlyControlOutputArena,s6Step159EarlyControlLog⟩

private def s6Step159CounterWork : List Wire := [857, 856, 922, 887]

private theorem s6Step159Counter_bounded : s6Step159CounterWork.toFinset⊆arenaWires := by norm_num [s6Step159CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step159HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159CounterDuring : Arena := ⟨s6Step159HeadFvAfter.live∪s6Step159CounterWork.toFinset,Finset.union_subset s6Step159HeadFvAfter.bounded s6Step159Counter_bounded⟩

private def s6Step159EntryFFresh : List Wire := []

private def s6Step159EntryFvFresh : List Wire := []

private def s6Step159EntryGFresh : List Wire := [879]

private def s6Step159EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159EntryGvAfter : Arena := s6Step159EntryGAfter

private def s6Step159EntryGvFresh : List Wire := []

private def s6Step159ExitFExtra : List Wire := [445, 908]

private def s6Step159ExitGExtra : List Wire := [879, 875]

private def s6Step159ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159ExitGvAfter : Arena := s6Step159ExitFAfter

private def s6Step159Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159Add0Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step159Add0_bounded : s6Step159Add0Work.toFinset⊆arenaWires := by
  have h : s6Step159Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step159Add0During : Arena := ⟨s6Step159Add0Arena.live∪s6Step159Add0Work.toFinset,Finset.union_subset s6Step159Add0Arena.bounded s6Step159Add0_bounded⟩

private def s6Step159Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step159Add1Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step159Add1_bounded : s6Step159Add1Work.toFinset⊆arenaWires := by
  have h : s6Step159Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step159Add1During : Arena := ⟨s6Step159Add1Arena.live∪s6Step159Add1Work.toFinset,Finset.union_subset s6Step159Add1Arena.bounded s6Step159Add1_bounded⟩

private def s6Step159F4FlagArena : Arena := ⟨s6Step159HeadFvAfter.live∪{857},Finset.union_subset s6Step159HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step159F4Plan : HmrHybridF4Plan := ⟨s6Step159F4FlagArena,[857],s6Step159Add0Arena,[856],s6Step159Add0During,s6Step159Add0Work,s6Step159Add1During,s6Step159Add1Work⟩

private def s6Step159HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 908],795⟩

private def s6Step159HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩

private def s6Step159HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879, 875],777⟩

private def s6Step159HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private def s6Step159FrontHead : WindowBank := ⟨s6Step159HeadFOut,s6Step159HeadGOut,s6Step159HeadFvOut,s6Step159HeadGvOut⟩

private def s6Step159EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step159EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step159EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879],777⟩

private def s6Step159EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step159FrontPair : WindowBank := ⟨s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut⟩

private def s6Step159FrontSigmaArena : Arena := ⟨s6Step159EntryGvAfter.live∪{768},Finset.union_subset s6Step159EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step159HeadFFresh : List Wire := [908]

private def s6Step159HeadFvFresh : List Wire := [784]

private def s6Step159HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159HeadGFresh : List Wire := [875]

private def s6Step159HeadGvFresh : List Wire := [845]

private def s6Step159FrontPlan : HmrSourceFront := ⟨s6Step159EntryGvAfter,s6Step159FrontPair,(growRow 795 s6Step159EntryFFresh ++ (growRow 777 s6Step159EntryGFresh ++ (growRow 776 s6Step159EntryFvFresh ++ (growRow 775 s6Step159EntryGvFresh ++ [])))),s6Step159FrontSigmaArena,[768],s6Step159HeadGBefore,[863],
  s6Step159HeadFvAfter,s6Step159FrontHead,(growRow 777 s6Step159HeadGFresh ++ (growRow 795 s6Step159HeadFFresh ++ (growRow 775 s6Step159HeadGvFresh ++ (growRow 776 s6Step159HeadFvFresh ++ [])))),s6Step159F4Plan,s6Step159CounterDuring,s6Step159CounterWork,s6Step159ExitGvAfter,s6Step159FrontOut,(shrinkRow 777 s6Step159ExitGExtra ++ (shrinkRow 795 s6Step159ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))⟩

private def s6Step159CompletePlan : HmrEarlyStepPlan := ⟨s6Step159FrontPlan,s6Step159EarlyControlArena,s6Step159EarlyControlPlan,s6Step159CompleteMoves⟩

private theorem s6Step159Complete_apart : List.Disjoint (s6Step159CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step159CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step159Complete_owned : (s6Step159CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step159CompleteRelocationMove0Borrowed : Arena := ⟨s6Step159ExitGvAfter.live∪{445},Finset.union_subset s6Step159ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step159CompleteRelocation_move0_owned : 828∈s6Step159ExitGvAfter.live := by norm_num [s6Step159ExitGvAfter,s6Step159ExitFAfter,arenaWires]

private theorem s6Step159CompleteRelocation_move0_reserve : s6Step159ExitGvAfter.reserve {445}=some s6Step159CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step159ExitGvAfter,s6Step159ExitFAfter,arenaWires]
  · rfl

private theorem s6Step159CompleteRelocation_move0_retire : s6Step159CompleteRelocationMove0Borrowed.retireSet {828}=s6Step159EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step159CompleteRelocationMove0Borrowed s6Step159EarlyControlArena {828}
  change s6Step159EarlyControlArena.live=(s6Step159ExitGvAfter.live∪{445})\{828}
  apply hmrArena_update_of_filter_check s6Step159ExitGvAfter s6Step159EarlyControlArena (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [445] [828] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step159CompleteRelocation_checked : s6Step159ExitGvAfter.checkRepack [(828,445)]=some s6Step159EarlyControlArena := by
  have tail1 : s6Step159EarlyControlArena.checkRepack []=some s6Step159EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step159ExitGvAfter s6Step159CompleteRelocationMove0Borrowed s6Step159EarlyControlArena s6Step159EarlyControlArena 828 445 []
    s6Step159CompleteRelocation_move0_owned s6Step159CompleteRelocation_move0_reserve s6Step159CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step159Complete_repack : s6Step159ExitGvAfter.checkRepack s6Step159CompleteMoves=some s6Step159EarlyControlArena := by
  simpa only [s6Step159CompleteMoves] using s6Step159CompleteRelocation_checked

private theorem s6Step159EarlyControl_branchOwned : ([863] : List Wire).toFinset⊆s6Step159EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EarlyControl_branch : compileHmrBranchRetirement s6Step159EarlyControlSigmaArena 863=some s6Step159EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step159EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step159EarlyControlSigmaArena s6Step159EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel

private theorem s6Step159EarlyControl_classEqualityBorrow : s6Step159EarlyControlPositiveArena.checkBorrow (([768, 856] : List Wire).length-1) s6Step159EarlyControlLog.classWork=some s6Step159EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step159EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step159EarlyControlEqualityArena,s6Step159EarlyControlPositiveArena,s6Step159EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step159EarlyControl_classEqualityOwned : ([768, 856] : List Wire).toFinset⊆s6Step159EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159EarlyControl_classEquality : compileHmrEqualityLog s6Step159EarlyControlPositiveArena [768, 856] 0 s6Step159EarlyControlLog.classWork=some (s6Step159EarlyControlEqualityArena,s6Step159EarlyControlLog.classWork,s6Step159EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step159EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step159EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step159EarlyControl_classOwned : ([769, 857, 768] : List Wire).toFinset⊆s6Step159EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159EarlyControl_positiveBorrow : s6Step159EarlyControlZeroArena.checkBorrow (1) s6Step159EarlyControlLog.positiveWork=some s6Step159EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step159EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step159EarlyControlPositiveArena,s6Step159EarlyControlZeroArena,s6Step159EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step159EarlyControl_class : compileHmrSourceClassLog s6Step159EarlyControlZeroArena false 769 s6Step159EarlyControlZeroPlan.top 0 768 s6Step159EarlyControlLog.positiveWork s6Step159EarlyControlLog.classWork=some s6Step159EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step159EarlyControlClassPlan s6Step159EarlyControlZeroArena false 769 s6Step159EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step159EarlyControl_classOwned
  · exact s6Step159EarlyControl_positiveBorrow
  · exact s6Step159EarlyControl_classEquality

private theorem s6Step159EarlyControl_entryRecordOwned : ([863, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EarlyControl_fitBorrow : s6Step159EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step159EarlyControlLog.recordFresh=some s6Step159EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step159EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step159EarlyControlFittedArena,s6Step159EarlyControlFlagArena,s6Step159EarlyControlLog,arenaWires]

private theorem s6Step159EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step159EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159EarlyControl_fit : compileHmrRecordGrowLog s6Step159EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step159EarlyControlLog.recordFresh=some s6Step159EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step159EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step159EarlyControl_fitBorrow

private theorem s6Step159EarlyControl_flagsBorrow : s6Step159EarlyControlEqualityArena.checkBorrow (6) s6Step159EarlyControlLog.flagWork=some s6Step159EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step159EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step159EarlyControlFlagArena,s6Step159EarlyControlEqualityArena,s6Step159EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step159EarlyControl_flagsOwned : ([922, 253, 252, 251] : List Wire).toFinset⊆s6Step159EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159EarlyControl_flags : compileHmrFlagsLog s6Step159EarlyControlClassPlan.equalityArena s6Step159EarlyControlClassPlan.equality.top 253 252 251 s6Step159EarlyControlLog.flagWork=some s6Step159EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step159EarlyControl_flagsOwned⟩
  · exact s6Step159EarlyControl_flagsBorrow

private theorem s6Step159EarlyControl_historyBorrow : s6Step159EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step159EarlyControlLog.recordFresh=some s6Step159EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step159EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step159EarlyControlArena s6Step159EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step159EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step159EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EarlyControl_history : compileHmrRecordGrowLog s6Step159EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step159EarlyControlLog.recordFresh=some s6Step159EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step159EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step159EarlyControl_historyBorrow

private theorem s6Step159EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step159EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step159EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EarlyControl_sigmaRelease : s6Step159EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step159EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step159EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step159EarlyControlHistoryArena s6Step159EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step159EarlyControl_sigma : compileHmrSigmaDropLog s6Step159EarlyControlHistoryArena false 0 0 254 768 []=some s6Step159EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step159EarlyControl_sigmaOwned⟩
  · exact s6Step159EarlyControl_sigmaRelease

private theorem s6Step159EarlyControl_zeroBorrow : s6Step159EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step159EarlyControlLog.zeroWork=some s6Step159EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step159EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step159EarlyControlArena s6Step159EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step159EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step159EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step159EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EarlyControl_zero : compileHmrEqualityLog s6Step159EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step159EarlyControlLog.zeroWork=some (s6Step159EarlyControlZeroArena,s6Step159EarlyControlLog.zeroWork,s6Step159EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step159EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step159EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step159EarlyControl_logged : s6Step159EarlyControlPlan.Logged s6Step159EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 863 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step159EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step159EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step159EarlyControl_zero
  · exact s6Step159EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step159EarlyControl_flags
  · exact s6Step159EarlyControl_fit
  · exact s6Step159EarlyControl_history
  · exact s6Step159EarlyControl_sigma
  · exact s6Step159EarlyControl_branch

private theorem s6Step159EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step159EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 863 42 s6Step159EarlyControlLog=some s6Step159EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step159EarlyControlPlan s6Step159EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 863 42 s6Step159EarlyControl_logged

private def s6Step159EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step159EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step159EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step159EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step159FrontBank : WindowBank := ⟨s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow⟩

private def s6Step159Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 908, 795]

private def s6Step159Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879, 875, 777]

private def s6Step159Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 776]

private def s6Step159Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 775]

private theorem s6Step159Counter_apart : Disjoint s6Step159HeadFvAfter.live s6Step159CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step159HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159Counter_borrowed : s6Step159HeadFvAfter.checkBorrow 4 s6Step159CounterWork=some s6Step159CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step159HeadFvAfter s6Step159CounterDuring s6Step159CounterWork.toFinset s6Step159Counter_bounded s6Step159Counter_apart rfl

private theorem s6Step159Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step159HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step159HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159Counter_checked : compileHmrCounterStepLog s6Step159HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step159CounterWork=some s6Step159CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step159HeadFvAfter.live := fun q hq => s6Step159Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step159Counter_borrowed

private def s6Step159EntryFAfter : Arena := s6Step159EntryFBefore

private theorem s6Step159EntryBank_incomingDistinct : ([s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159EntryF_Incoming : rowsOwned s6Step159EntryFBefore [s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow] 0 s6Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159EntryFBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159EntryBank_outgoingOwned : rowsOwned s6Step159EntryGvAfter [s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step159EntryGvAfter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159EntryF_Outgoing : rowsOwned s6Step159EntryGvAfter [s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut] :=
  hmrRows_owned_drop s6Step159EntryGvAfter [s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut] 0 s6Step159EntryBank_outgoingOwned

private theorem s6Step159EntryF_distinct : (s6Step159EntryFRow.sign::s6Step159EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159EntryF_owned : (s6Step159EntryFRow.sign::s6Step159EntryFRow.payload).toFinset⊆s6Step159EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159EntryFBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EntryF_reserved : s6Step159EntryFBefore.reserve s6Step159EntryFFresh.toFinset=some s6Step159EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159EntryFFresh,arenaWires]
  · norm_num [s6Step159EntryFBefore,s6Step159EntryFFresh,arenaWires]
  · simp only [s6Step159EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step159EntryF_checked : planRowResizeLog s6Step159EntryFBefore s6Step159EntryFRow 190 s6Step159EntryFFresh=
    some (s6Step159EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩,growRow 795 s6Step159EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step159EntryFBefore s6Step159EntryFAfter s6Step159EntryFRow 190 s6Step159EntryFFresh
    s6Step159EntryF_distinct s6Step159EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159EntryF_reserved
  have rowEq : WindowRow.mk (s6Step159EntryFRow.payload++s6Step159EntryFFresh) s6Step159EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step159EntryFvAfter : Arena := s6Step159EntryGAfter

private def s6Step159EntryFvBefore : Arena := s6Step159EntryGAfter

private theorem s6Step159EntryFv_Incoming : rowsOwned s6Step159EntryFvBefore [s6Step159EntryFvRow,s6Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow] 2 s6Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159EntryFvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159EntryFv_Outgoing : rowsOwned s6Step159EntryGvAfter [s6Step159EntryFvOut,s6Step159EntryGvOut] :=
  hmrRows_owned_drop s6Step159EntryGvAfter [s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut] 2 s6Step159EntryBank_outgoingOwned

private theorem s6Step159EntryFv_distinct : (s6Step159EntryFvRow.sign::s6Step159EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159EntryFv_owned : (s6Step159EntryFvRow.sign::s6Step159EntryFvRow.payload).toFinset⊆s6Step159EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159EntryFvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EntryFv_reserved : s6Step159EntryFvBefore.reserve s6Step159EntryFvFresh.toFinset=some s6Step159EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159EntryFvFresh,arenaWires]
  · norm_num [s6Step159EntryFvBefore,s6Step159EntryGAfter,s6Step159EntryFvFresh,arenaWires]
  · simp only [s6Step159EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step159EntryFv_checked : planRowResizeLog s6Step159EntryFvBefore s6Step159EntryFvRow 93 s6Step159EntryFvFresh=
    some (s6Step159EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩,growRow 776 s6Step159EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step159EntryFvBefore s6Step159EntryFvAfter s6Step159EntryFvRow 93 s6Step159EntryFvFresh
    s6Step159EntryFv_distinct s6Step159EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step159EntryFvRow.payload++s6Step159EntryFvFresh) s6Step159EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step159EntryGBefore : Arena := s6Step159EntryFBefore

private theorem s6Step159EntryG_Incoming : rowsOwned s6Step159EntryGBefore [s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow] 1 s6Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159EntryGBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159EntryG_Outgoing : rowsOwned s6Step159EntryGvAfter [s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut] :=
  hmrRows_owned_drop s6Step159EntryGvAfter [s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut] 1 s6Step159EntryBank_outgoingOwned

private theorem s6Step159EntryG_distinct : (s6Step159EntryGRow.sign::s6Step159EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159EntryG_owned : (s6Step159EntryGRow.sign::s6Step159EntryGRow.payload).toFinset⊆s6Step159EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159EntryGBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EntryG_reserved : s6Step159EntryGBefore.reserve s6Step159EntryGFresh.toFinset=some s6Step159EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159EntryGFresh,arenaWires]
  · norm_num [s6Step159EntryGBefore,s6Step159EntryFBefore,s6Step159EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step159EntryGBefore s6Step159EntryGAfter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step159EntryGFresh rfl rfl
    · norm_num [s6Step159EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step159EntryG_checked : planRowResizeLog s6Step159EntryGBefore s6Step159EntryGRow 190 s6Step159EntryGFresh=
    some (s6Step159EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879],777⟩,growRow 777 s6Step159EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step159EntryGBefore s6Step159EntryGAfter s6Step159EntryGRow 190 s6Step159EntryGFresh
    s6Step159EntryG_distinct s6Step159EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159EntryG_reserved
  have rowEq : WindowRow.mk (s6Step159EntryGRow.payload++s6Step159EntryGFresh) s6Step159EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step159EntryGvBefore : Arena := s6Step159EntryGAfter

private theorem s6Step159EntryGv_Incoming : rowsOwned s6Step159EntryGvBefore [s6Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow] 3 s6Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159EntryGvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159EntryGv_Outgoing : rowsOwned s6Step159EntryGvAfter [s6Step159EntryGvOut] :=
  hmrRows_owned_drop s6Step159EntryGvAfter [s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut] 3 s6Step159EntryBank_outgoingOwned

private theorem s6Step159EntryGv_distinct : (s6Step159EntryGvRow.sign::s6Step159EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159EntryGv_owned : (s6Step159EntryGvRow.sign::s6Step159EntryGvRow.payload).toFinset⊆s6Step159EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159EntryGvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159EntryGv_reserved : s6Step159EntryGvBefore.reserve s6Step159EntryGvFresh.toFinset=some s6Step159EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159EntryGvFresh,arenaWires]
  · norm_num [s6Step159EntryGvBefore,s6Step159EntryGAfter,s6Step159EntryGvFresh,arenaWires]
  · simp only [s6Step159EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step159EntryGv_checked : planRowResizeLog s6Step159EntryGvBefore s6Step159EntryGvRow 93 s6Step159EntryGvFresh=
    some (s6Step159EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩,growRow 775 s6Step159EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step159EntryGvBefore s6Step159EntryGvAfter s6Step159EntryGvRow 93 s6Step159EntryGvFresh
    s6Step159EntryGv_distinct s6Step159EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step159EntryGvRow.payload++s6Step159EntryGvFresh) s6Step159EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step159EntryBank_rows : planWindowRowsLog s6Step159EntryFBefore [(s6Step159EntryFRow,190),(s6Step159EntryGRow,190),(s6Step159EntryFvRow,93),(s6Step159EntryGvRow,93)] [s6Step159EntryFFresh,s6Step159EntryGFresh,s6Step159EntryFvFresh,s6Step159EntryGvFresh]=
    some (s6Step159EntryGvAfter,[s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut],(growRow 795 s6Step159EntryFFresh ++ (growRow 777 s6Step159EntryGFresh ++ (growRow 776 s6Step159EntryFvFresh ++ (growRow 775 s6Step159EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step159EntryGvAfter [] []=some (s6Step159EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step159EntryGvBefore s6Step159EntryGvAfter s6Step159EntryGvAfter
    s6Step159EntryGvRow s6Step159EntryGvOut 93 s6Step159EntryGvFresh [] [] []
    (growRow 775 s6Step159EntryGvFresh) ([]) s6Step159EntryGv_Incoming s6Step159EntryGv_checked h4 s6Step159EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step159EntryFvBefore s6Step159EntryFvAfter s6Step159EntryGvAfter
    s6Step159EntryFvRow s6Step159EntryFvOut 93 s6Step159EntryFvFresh [(s6Step159EntryGvRow,93)] [s6Step159EntryGvFresh] [s6Step159EntryGvOut]
    (growRow 776 s6Step159EntryFvFresh) ((growRow 775 s6Step159EntryGvFresh ++ [])) s6Step159EntryFv_Incoming s6Step159EntryFv_checked h3 s6Step159EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step159EntryGBefore s6Step159EntryGAfter s6Step159EntryGvAfter
    s6Step159EntryGRow s6Step159EntryGOut 190 s6Step159EntryGFresh [(s6Step159EntryFvRow,93),(s6Step159EntryGvRow,93)] [s6Step159EntryFvFresh,s6Step159EntryGvFresh] [s6Step159EntryFvOut,s6Step159EntryGvOut]
    (growRow 777 s6Step159EntryGFresh) ((growRow 776 s6Step159EntryFvFresh ++ (growRow 775 s6Step159EntryGvFresh ++ []))) s6Step159EntryG_Incoming s6Step159EntryG_checked h2 s6Step159EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step159EntryFBefore s6Step159EntryFAfter s6Step159EntryGvAfter
    s6Step159EntryFRow s6Step159EntryFOut 190 s6Step159EntryFFresh [(s6Step159EntryGRow,190),(s6Step159EntryFvRow,93),(s6Step159EntryGvRow,93)] [s6Step159EntryGFresh,s6Step159EntryFvFresh,s6Step159EntryGvFresh] [s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut]
    (growRow 795 s6Step159EntryFFresh) ((growRow 777 s6Step159EntryGFresh ++ (growRow 776 s6Step159EntryFvFresh ++ (growRow 775 s6Step159EntryGvFresh ++ [])))) s6Step159EntryF_Incoming s6Step159EntryF_checked h1 s6Step159EntryF_Outgoing
  exact h0

private theorem s6Step159EntryBank_checked : compileHmrBankResizeLog .entry s6Step159EntryFBefore ⟨s6Step159EntryFRow,s6Step159EntryGRow,s6Step159EntryFvRow,s6Step159EntryGvRow⟩ ⟨190,190,93,93⟩ [s6Step159EntryFFresh,s6Step159EntryGFresh,s6Step159EntryFvFresh,s6Step159EntryGvFresh]=
    some (s6Step159EntryGvAfter,⟨s6Step159EntryFOut,s6Step159EntryGOut,s6Step159EntryFvOut,s6Step159EntryGvOut⟩,(growRow 795 s6Step159EntryFFresh ++ (growRow 777 s6Step159EntryGFresh ++ (growRow 776 s6Step159EntryFvFresh ++ (growRow 775 s6Step159EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step159EntryBank_rows]
  rfl

private def s6Step159ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159ExitFBefore : Arena := s6Step159ExitGAfter

private def s6Step159ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 908],795⟩

private def s6Step159ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩

private def s6Step159ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879, 875],777⟩

private def s6Step159ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private theorem s6Step159ExitBank_incomingDistinct : ([s6Step159ExitGRow,s6Step159ExitFRow,s6Step159ExitFvRow,s6Step159ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159ExitF_Incoming : rowsOwned s6Step159ExitFBefore [s6Step159ExitFRow,s6Step159ExitFvRow,s6Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159ExitGRow,s6Step159ExitFRow,s6Step159ExitFvRow,s6Step159ExitGvRow] 1 s6Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159ExitBank_outgoingOwned : rowsOwned s6Step159ExitGvAfter [s6Step159ExitGOut,s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step159ExitGvAfter (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159ExitF_Outgoing : rowsOwned s6Step159ExitGvAfter [s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut] :=
  hmrRows_owned_drop s6Step159ExitGvAfter [s6Step159ExitGOut,s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut] 1 s6Step159ExitBank_outgoingOwned

private theorem s6Step159ExitF_distinct : (s6Step159ExitFRow.sign::s6Step159ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159ExitF_owned : (s6Step159ExitFRow.sign::s6Step159ExitFRow.payload).toFinset⊆s6Step159ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159ExitF_retired : s6Step159ExitFBefore.retireSet s6Step159ExitFExtra.toFinset=s6Step159ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step159ExitFBefore s6Step159ExitFAfter s6Step159ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step159ExitFBefore s6Step159ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step159ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step159ExitF_checked : planRowResizeLog s6Step159ExitFBefore s6Step159ExitFRow 189 []=
    some (s6Step159ExitFAfter,s6Step159ExitFOut,shrinkRow 795 s6Step159ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step159ExitFBefore s6Step159ExitFRow 189 s6Step159ExitF_distinct s6Step159ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step159ExitFRow.payload.take 189) s6Step159ExitFRow.sign=s6Step159ExitFOut := by decide +kernel
  have hi : s6Step159ExitFRow.payload.drop 189=s6Step159ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step159ExitF_retired] at result
  exact result

private def s6Step159ExitFvAfter : Arena := s6Step159ExitFAfter

private def s6Step159ExitFvBefore : Arena := s6Step159ExitFAfter

private theorem s6Step159ExitFv_Incoming : rowsOwned s6Step159ExitFvBefore [s6Step159ExitFvRow,s6Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159ExitGRow,s6Step159ExitFRow,s6Step159ExitFvRow,s6Step159ExitGvRow] 2 s6Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159ExitFvBefore (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159ExitFv_Outgoing : rowsOwned s6Step159ExitGvAfter [s6Step159ExitFvOut,s6Step159ExitGvOut] :=
  hmrRows_owned_drop s6Step159ExitGvAfter [s6Step159ExitGOut,s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut] 2 s6Step159ExitBank_outgoingOwned

private theorem s6Step159ExitFv_distinct : (s6Step159ExitFvRow.sign::s6Step159ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159ExitFv_owned : (s6Step159ExitFvRow.sign::s6Step159ExitFvRow.payload).toFinset⊆s6Step159ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159ExitFvBefore (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159ExitFv_reserved : s6Step159ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step159ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step159ExitFv_checked : planRowResizeLog s6Step159ExitFvBefore s6Step159ExitFvRow 94 []=
    some (s6Step159ExitFvAfter,s6Step159ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step159ExitFvBefore s6Step159ExitFvAfter s6Step159ExitFvRow 94 []
    s6Step159ExitFv_distinct s6Step159ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step159ExitFvRow.payload++[]) s6Step159ExitFvRow.sign=s6Step159ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step159ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step159ExitG_Incoming : rowsOwned s6Step159ExitGBefore [s6Step159ExitGRow,s6Step159ExitFRow,s6Step159ExitFvRow,s6Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159ExitGRow,s6Step159ExitFRow,s6Step159ExitFvRow,s6Step159ExitGvRow] 0 s6Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step159ExitG_Outgoing : rowsOwned s6Step159ExitGvAfter [s6Step159ExitGOut,s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut] :=
  hmrRows_owned_drop s6Step159ExitGvAfter [s6Step159ExitGOut,s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut] 0 s6Step159ExitBank_outgoingOwned

private theorem s6Step159ExitG_distinct : (s6Step159ExitGRow.sign::s6Step159ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159ExitG_owned : (s6Step159ExitGRow.sign::s6Step159ExitGRow.payload).toFinset⊆s6Step159ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159ExitG_retired : s6Step159ExitGBefore.retireSet s6Step159ExitGExtra.toFinset=s6Step159ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step159ExitGBefore s6Step159ExitGAfter s6Step159ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step159ExitGBefore s6Step159ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step159ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step159ExitG_checked : planRowResizeLog s6Step159ExitGBefore s6Step159ExitGRow 189 []=
    some (s6Step159ExitGAfter,s6Step159ExitGOut,shrinkRow 777 s6Step159ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step159ExitGBefore s6Step159ExitGRow 189 s6Step159ExitG_distinct s6Step159ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step159ExitGRow.payload.take 189) s6Step159ExitGRow.sign=s6Step159ExitGOut := by decide +kernel
  have hi : s6Step159ExitGRow.payload.drop 189=s6Step159ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step159ExitG_retired] at result
  exact result

private def s6Step159ExitGvBefore : Arena := s6Step159ExitFAfter

private theorem s6Step159ExitGv_Incoming : rowsOwned s6Step159ExitGvBefore [s6Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159ExitGRow,s6Step159ExitFRow,s6Step159ExitFvRow,s6Step159ExitGvRow] 3 s6Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159ExitGvBefore (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159ExitGv_Outgoing : rowsOwned s6Step159ExitGvAfter [s6Step159ExitGvOut] :=
  hmrRows_owned_drop s6Step159ExitGvAfter [s6Step159ExitGOut,s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut] 3 s6Step159ExitBank_outgoingOwned

private theorem s6Step159ExitGv_distinct : (s6Step159ExitGvRow.sign::s6Step159ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159ExitGv_owned : (s6Step159ExitGvRow.sign::s6Step159ExitGvRow.payload).toFinset⊆s6Step159ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159ExitGvBefore (fun q => ([(0,445),(446,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159ExitGv_reserved : s6Step159ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step159ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step159ExitGv_checked : planRowResizeLog s6Step159ExitGvBefore s6Step159ExitGvRow 94 []=
    some (s6Step159ExitGvAfter,s6Step159ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step159ExitGvBefore s6Step159ExitGvAfter s6Step159ExitGvRow 94 []
    s6Step159ExitGv_distinct s6Step159ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step159ExitGvRow.payload++[]) s6Step159ExitGvRow.sign=s6Step159ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step159ExitBank_rows : planWindowRowsLog s6Step159ExitGBefore [(s6Step159ExitGRow,189),(s6Step159ExitFRow,189),(s6Step159ExitFvRow,94),(s6Step159ExitGvRow,94)] [[],[],[],[]]=
    some (s6Step159ExitGvAfter,[s6Step159ExitGOut,s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut],(shrinkRow 777 s6Step159ExitGExtra ++ (shrinkRow 795 s6Step159ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step159ExitGvAfter [] []=some (s6Step159ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step159ExitGvBefore s6Step159ExitGvAfter s6Step159ExitGvAfter
    s6Step159ExitGvRow s6Step159ExitGvOut 94 [] [] [] []
    (growRow 775 []) ([]) s6Step159ExitGv_Incoming s6Step159ExitGv_checked h4 s6Step159ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step159ExitFvBefore s6Step159ExitFvAfter s6Step159ExitGvAfter
    s6Step159ExitFvRow s6Step159ExitFvOut 94 [] [(s6Step159ExitGvRow,94)] [[]] [s6Step159ExitGvOut]
    (growRow 776 []) ((growRow 775 [] ++ [])) s6Step159ExitFv_Incoming s6Step159ExitFv_checked h3 s6Step159ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step159ExitFBefore s6Step159ExitFAfter s6Step159ExitGvAfter
    s6Step159ExitFRow s6Step159ExitFOut 189 [] [(s6Step159ExitFvRow,94),(s6Step159ExitGvRow,94)] [[],[]] [s6Step159ExitFvOut,s6Step159ExitGvOut]
    (shrinkRow 795 s6Step159ExitFExtra) ((growRow 776 [] ++ (growRow 775 [] ++ []))) s6Step159ExitF_Incoming s6Step159ExitF_checked h2 s6Step159ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step159ExitGBefore s6Step159ExitGAfter s6Step159ExitGvAfter
    s6Step159ExitGRow s6Step159ExitGOut 189 [] [(s6Step159ExitFRow,189),(s6Step159ExitFvRow,94),(s6Step159ExitGvRow,94)] [[],[],[]] [s6Step159ExitFOut,s6Step159ExitFvOut,s6Step159ExitGvOut]
    (shrinkRow 777 s6Step159ExitGExtra) ((shrinkRow 795 s6Step159ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ [])))) s6Step159ExitG_Incoming s6Step159ExitG_checked h1 s6Step159ExitG_Outgoing
  exact h0

private theorem s6Step159ExitBank_checked : compileHmrBankResizeLog .exit s6Step159ExitGBefore ⟨s6Step159ExitFRow,s6Step159ExitGRow,s6Step159ExitFvRow,s6Step159ExitGvRow⟩ ⟨189,189,94,94⟩ [[],[],[],[]]=
    some (s6Step159ExitGvAfter,⟨s6Step159ExitFOut,s6Step159ExitGOut,s6Step159ExitFvOut,s6Step159ExitGvOut⟩,(shrinkRow 777 s6Step159ExitGExtra ++ (shrinkRow 795 s6Step159ExitFExtra ++ (growRow 776 [] ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step159ExitBank_rows]
  rfl

private theorem s6Step159Add0_apart : Disjoint s6Step159Add0Arena.live s6Step159Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step159Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159Add0_card : s6Step159Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step159Add0_borrowed : s6Step159Add0Arena.checkBorrow (hmrHybridCount s6Step159Add0Arena s6Step159Add0B.length) s6Step159Add0Work=some s6Step159Add0During := by
  have len : s6Step159Add0Work.length=hmrHybridCount s6Step159Add0Arena s6Step159Add0B.length := by
    rw [hmrHybridCount,s6Step159Add0_card]
    decide +kernel
  have nd : s6Step159Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step159Add0Arena s6Step159Add0During s6Step159Add0Work.toFinset s6Step159Add0_bounded s6Step159Add0_apart rfl

private theorem s6Step159Add0_distinct : (857::863::856::(s6Step159Add0A++s6Step159Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159Add0_owned : (857::863::856::(s6Step159Add0A++s6Step159Add0B)).toFinset⊆s6Step159Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step159Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159Add0_checked : compileHmrHybridCinLog s6Step159Add0Arena 863 857 856 s6Step159Add0A s6Step159Add0B s6Step159Add0Work=some s6Step159Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step159Add0Arena s6Step159Add0During 863 857 856 s6Step159Add0A s6Step159Add0B s6Step159Add0Work
    (by decide +kernel) (by decide +kernel) s6Step159Add0_distinct
    (fun q hq => s6Step159Add0_owned (List.mem_toFinset.mpr hq)) s6Step159Add0_borrowed

private theorem s6Step159Add1_apart : Disjoint s6Step159Add1Arena.live s6Step159Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step159Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159Add1_card : s6Step159Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step159Add1_borrowed : s6Step159Add1Arena.checkBorrow (hmrHybridCount s6Step159Add1Arena s6Step159Add1B.length) s6Step159Add1Work=some s6Step159Add1During := by
  have len : s6Step159Add1Work.length=hmrHybridCount s6Step159Add1Arena s6Step159Add1B.length := by
    rw [hmrHybridCount,s6Step159Add1_card]
    decide +kernel
  have nd : s6Step159Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step159Add1Arena s6Step159Add1During s6Step159Add1Work.toFinset s6Step159Add1_bounded s6Step159Add1_apart rfl

private theorem s6Step159Add1_distinct : (857::863::856::(s6Step159Add1A++s6Step159Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159Add1_owned : (857::863::856::(s6Step159Add1A++s6Step159Add1B)).toFinset⊆s6Step159Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step159Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159Add1_checked : compileHmrHybridCinLog s6Step159Add1Arena 863 857 856 s6Step159Add1A s6Step159Add1B s6Step159Add1Work=some s6Step159Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step159Add1Arena s6Step159Add1During 863 857 856 s6Step159Add1A s6Step159Add1B s6Step159Add1Work
    (by decide +kernel) (by decide +kernel) s6Step159Add1_distinct
    (fun q hq => s6Step159Add1_owned (List.mem_toFinset.mpr hq)) s6Step159Add1_borrowed

private theorem s6Step159F4_apart : Disjoint (s6Step159Add0A++s6Step159Add0B).toFinset (s6Step159Add1A++s6Step159Add1B).toFinset := by
  have nd : ((s6Step159Add0A++s6Step159Add0B)++(s6Step159Add1A++s6Step159Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step159F4_carry : s6Step159F4FlagArena.checkBorrow 1 [856]=some s6Step159Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step159F4FlagArena,s6Step159HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step159F4FlagArena,s6Step159HeadFvAfter,s6Step159Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step159F4_distinct : (768::863::857::856::((s6Step159Add0A++s6Step159Add1A)++(s6Step159Add0B++s6Step159Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159F4_flag : s6Step159HeadFvAfter.checkBorrow 1 [857]=some s6Step159F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step159HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step159F4_owned : (768::863::((s6Step159Add0A++s6Step159Add1A)++(s6Step159Add0B++s6Step159Add1B))).toFinset⊆s6Step159HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step159HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step159F4_checked : compileHmrHybridF4Log s6Step159HeadFvAfter 768 863 s6Step159Add0A s6Step159Add0B s6Step159Add1A s6Step159Add1B [857] [856] s6Step159Add0Work s6Step159Add1Work=some s6Step159F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step159HeadFvAfter s6Step159F4FlagArena s6Step159Add0Arena s6Step159Add0During s6Step159Add1During 768 863
    s6Step159Add0A s6Step159Add0B s6Step159Add1A s6Step159Add1B [857] [856] s6Step159Add0Work s6Step159Add1Work
    (fun q hq => s6Step159F4_owned (List.mem_toFinset.mpr hq)) s6Step159F4_flag s6Step159F4_carry
    s6Step159F4_distinct s6Step159F4_apart s6Step159Add0_checked s6Step159Add1_checked

private theorem s6Step159Front_branch : s6Step159FrontSigmaArena.checkBorrow 1 [863]=some s6Step159HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step159FrontSigmaArena,s6Step159EntryGvAfter,s6Step159EntryGAfter,arenaWires]
  · change s6Step159HeadGBefore.live=(s6Step159EntryGvAfter.live∪{768})∪{863}
    apply hmrArena_union_pair_of_filter_check s6Step159EntryGvAfter s6Step159HeadGBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 863 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step159Front_entry : HmrFrontEntryValid s6Step159EntryFBefore s6Step159FrontBank 190 93 ⟨189,189,94,94⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step159FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step159EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step159EntryFBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step159FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step159Front_sigma : s6Step159EntryGvAfter.checkBorrow 1 [768]=some s6Step159FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step159EntryGvAfter,s6Step159EntryGAfter,arenaWires]
  · rfl

private def s6Step159HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159HeadFBefore : Arena := s6Step159HeadGAfter

private def s6Step159HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step159HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step159HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879],777⟩

private def s6Step159HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private theorem s6Step159HeadBank_incomingDistinct : ([s6Step159HeadGRow,s6Step159HeadFRow,s6Step159HeadGvRow,s6Step159HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159HeadF_Incoming : rowsOwned s6Step159HeadFBefore [s6Step159HeadFRow,s6Step159HeadGvRow,s6Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159HeadGRow,s6Step159HeadFRow,s6Step159HeadGvRow,s6Step159HeadFvRow] 1 s6Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159HeadBank_outgoingOwned : rowsOwned s6Step159HeadFvAfter [s6Step159HeadGOut,s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step159HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step159HeadF_Outgoing : rowsOwned s6Step159HeadFvAfter [s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut] :=
  hmrRows_owned_drop s6Step159HeadFvAfter [s6Step159HeadGOut,s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut] 1 s6Step159HeadBank_outgoingOwned

private theorem s6Step159HeadF_distinct : (s6Step159HeadFRow.sign::s6Step159HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159HeadF_owned : (s6Step159HeadFRow.sign::s6Step159HeadFRow.payload).toFinset⊆s6Step159HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159HeadFBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159HeadF_reserved : s6Step159HeadFBefore.reserve s6Step159HeadFFresh.toFinset=some s6Step159HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159HeadFFresh,arenaWires]
  · norm_num [s6Step159HeadFBefore,s6Step159HeadGAfter,s6Step159HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step159HeadFBefore s6Step159HeadFAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step159HeadFFresh rfl rfl
    · norm_num [s6Step159HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step159HeadF_checked : planRowResizeLog s6Step159HeadFBefore s6Step159HeadFRow 191 s6Step159HeadFFresh=
    some (s6Step159HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 908],795⟩,growRow 795 s6Step159HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step159HeadFBefore s6Step159HeadFAfter s6Step159HeadFRow 191 s6Step159HeadFFresh
    s6Step159HeadF_distinct s6Step159HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159HeadF_reserved
  have rowEq : WindowRow.mk (s6Step159HeadFRow.payload++s6Step159HeadFFresh) s6Step159HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step159HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step159HeadFvBefore : Arena := s6Step159HeadGvAfter

private theorem s6Step159HeadFv_Incoming : rowsOwned s6Step159HeadFvBefore [s6Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159HeadGRow,s6Step159HeadFRow,s6Step159HeadGvRow,s6Step159HeadFvRow] 3 s6Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159HeadFv_Outgoing : rowsOwned s6Step159HeadFvAfter [s6Step159HeadFvOut] :=
  hmrRows_owned_drop s6Step159HeadFvAfter [s6Step159HeadGOut,s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut] 3 s6Step159HeadBank_outgoingOwned

private theorem s6Step159HeadFv_distinct : (s6Step159HeadFvRow.sign::s6Step159HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159HeadFv_owned : (s6Step159HeadFvRow.sign::s6Step159HeadFvRow.payload).toFinset⊆s6Step159HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159HeadFvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159HeadFv_reserved : s6Step159HeadFvBefore.reserve s6Step159HeadFvFresh.toFinset=some s6Step159HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159HeadFvFresh,arenaWires]
  · norm_num [s6Step159HeadFvBefore,s6Step159HeadGvAfter,s6Step159HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step159HeadFvBefore s6Step159HeadFvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step159HeadFvFresh rfl rfl
    · norm_num [s6Step159HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step159HeadFv_checked : planRowResizeLog s6Step159HeadFvBefore s6Step159HeadFvRow 94 s6Step159HeadFvFresh=
    some (s6Step159HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩,growRow 776 s6Step159HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step159HeadFvBefore s6Step159HeadFvAfter s6Step159HeadFvRow 94 s6Step159HeadFvFresh
    s6Step159HeadFv_distinct s6Step159HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step159HeadFvRow.payload++s6Step159HeadFvFresh) s6Step159HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step159HeadG_Incoming : rowsOwned s6Step159HeadGBefore [s6Step159HeadGRow,s6Step159HeadFRow,s6Step159HeadGvRow,s6Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159HeadGRow,s6Step159HeadFRow,s6Step159HeadGvRow,s6Step159HeadFvRow] 0 s6Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159HeadG_Outgoing : rowsOwned s6Step159HeadFvAfter [s6Step159HeadGOut,s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut] :=
  hmrRows_owned_drop s6Step159HeadFvAfter [s6Step159HeadGOut,s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut] 0 s6Step159HeadBank_outgoingOwned

private theorem s6Step159HeadG_distinct : (s6Step159HeadGRow.sign::s6Step159HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159HeadG_owned : (s6Step159HeadGRow.sign::s6Step159HeadGRow.payload).toFinset⊆s6Step159HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159HeadG_reserved : s6Step159HeadGBefore.reserve s6Step159HeadGFresh.toFinset=some s6Step159HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159HeadGFresh,arenaWires]
  · norm_num [s6Step159HeadGBefore,s6Step159HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step159HeadGBefore s6Step159HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step159HeadGFresh rfl rfl
    · norm_num [s6Step159HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step159HeadG_checked : planRowResizeLog s6Step159HeadGBefore s6Step159HeadGRow 191 s6Step159HeadGFresh=
    some (s6Step159HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879, 875],777⟩,growRow 777 s6Step159HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step159HeadGBefore s6Step159HeadGAfter s6Step159HeadGRow 191 s6Step159HeadGFresh
    s6Step159HeadG_distinct s6Step159HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159HeadG_reserved
  have rowEq : WindowRow.mk (s6Step159HeadGRow.payload++s6Step159HeadGFresh) s6Step159HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 879, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step159HeadGvBefore : Arena := s6Step159HeadFAfter

private theorem s6Step159HeadGv_Incoming : rowsOwned s6Step159HeadGvBefore [s6Step159HeadGvRow,s6Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step159HeadGRow,s6Step159HeadFRow,s6Step159HeadGvRow,s6Step159HeadFvRow] 2 s6Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step159HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step159HeadGv_Outgoing : rowsOwned s6Step159HeadFvAfter [s6Step159HeadGvOut,s6Step159HeadFvOut] :=
  hmrRows_owned_drop s6Step159HeadFvAfter [s6Step159HeadGOut,s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut] 2 s6Step159HeadBank_outgoingOwned

private theorem s6Step159HeadGv_distinct : (s6Step159HeadGvRow.sign::s6Step159HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step159HeadGv_owned : (s6Step159HeadGvRow.sign::s6Step159HeadGvRow.payload).toFinset⊆s6Step159HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step159HeadGvBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step159HeadGv_reserved : s6Step159HeadGvBefore.reserve s6Step159HeadGvFresh.toFinset=some s6Step159HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step159HeadGvFresh,arenaWires]
  · norm_num [s6Step159HeadGvBefore,s6Step159HeadFAfter,s6Step159HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step159HeadGvBefore s6Step159HeadGvAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step159HeadGvFresh rfl rfl
    · norm_num [s6Step159HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step159HeadGv_checked : planRowResizeLog s6Step159HeadGvBefore s6Step159HeadGvRow 94 s6Step159HeadGvFresh=
    some (s6Step159HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩,growRow 775 s6Step159HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step159HeadGvBefore s6Step159HeadGvAfter s6Step159HeadGvRow 94 s6Step159HeadGvFresh
    s6Step159HeadGv_distinct s6Step159HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step159HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step159HeadGvRow.payload++s6Step159HeadGvFresh) s6Step159HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step159HeadBank_rows : planWindowRowsLog s6Step159HeadGBefore [(s6Step159HeadGRow,191),(s6Step159HeadFRow,191),(s6Step159HeadGvRow,94),(s6Step159HeadFvRow,94)] [s6Step159HeadGFresh,s6Step159HeadFFresh,s6Step159HeadGvFresh,s6Step159HeadFvFresh]=
    some (s6Step159HeadFvAfter,[s6Step159HeadGOut,s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut],(growRow 777 s6Step159HeadGFresh ++ (growRow 795 s6Step159HeadFFresh ++ (growRow 775 s6Step159HeadGvFresh ++ (growRow 776 s6Step159HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step159HeadFvAfter [] []=some (s6Step159HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step159HeadFvBefore s6Step159HeadFvAfter s6Step159HeadFvAfter
    s6Step159HeadFvRow s6Step159HeadFvOut 94 s6Step159HeadFvFresh [] [] []
    (growRow 776 s6Step159HeadFvFresh) ([]) s6Step159HeadFv_Incoming s6Step159HeadFv_checked h4 s6Step159HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step159HeadGvBefore s6Step159HeadGvAfter s6Step159HeadFvAfter
    s6Step159HeadGvRow s6Step159HeadGvOut 94 s6Step159HeadGvFresh [(s6Step159HeadFvRow,94)] [s6Step159HeadFvFresh] [s6Step159HeadFvOut]
    (growRow 775 s6Step159HeadGvFresh) ((growRow 776 s6Step159HeadFvFresh ++ [])) s6Step159HeadGv_Incoming s6Step159HeadGv_checked h3 s6Step159HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step159HeadFBefore s6Step159HeadFAfter s6Step159HeadFvAfter
    s6Step159HeadFRow s6Step159HeadFOut 191 s6Step159HeadFFresh [(s6Step159HeadGvRow,94),(s6Step159HeadFvRow,94)] [s6Step159HeadGvFresh,s6Step159HeadFvFresh] [s6Step159HeadGvOut,s6Step159HeadFvOut]
    (growRow 795 s6Step159HeadFFresh) ((growRow 775 s6Step159HeadGvFresh ++ (growRow 776 s6Step159HeadFvFresh ++ []))) s6Step159HeadF_Incoming s6Step159HeadF_checked h2 s6Step159HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step159HeadGBefore s6Step159HeadGAfter s6Step159HeadFvAfter
    s6Step159HeadGRow s6Step159HeadGOut 191 s6Step159HeadGFresh [(s6Step159HeadFRow,191),(s6Step159HeadGvRow,94),(s6Step159HeadFvRow,94)] [s6Step159HeadFFresh,s6Step159HeadGvFresh,s6Step159HeadFvFresh] [s6Step159HeadFOut,s6Step159HeadGvOut,s6Step159HeadFvOut]
    (growRow 777 s6Step159HeadGFresh) ((growRow 795 s6Step159HeadFFresh ++ (growRow 775 s6Step159HeadGvFresh ++ (growRow 776 s6Step159HeadFvFresh ++ [])))) s6Step159HeadG_Incoming s6Step159HeadG_checked h1 s6Step159HeadG_Outgoing
  exact h0

private theorem s6Step159HeadBank_checked : compileHmrBankResizeLog .headroom s6Step159HeadGBefore ⟨s6Step159HeadFRow,s6Step159HeadGRow,s6Step159HeadFvRow,s6Step159HeadGvRow⟩ ⟨191,191,94,94⟩ [s6Step159HeadGFresh,s6Step159HeadFFresh,s6Step159HeadGvFresh,s6Step159HeadFvFresh]=
    some (s6Step159HeadFvAfter,⟨s6Step159HeadFOut,s6Step159HeadGOut,s6Step159HeadFvOut,s6Step159HeadGvOut⟩,(growRow 777 s6Step159HeadGFresh ++ (growRow 795 s6Step159HeadFFresh ++ (growRow 775 s6Step159HeadGvFresh ++ (growRow 776 s6Step159HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step159HeadBank_rows]
  rfl

private theorem s6Step159Front_checked : compileHmrSourceFrontLog s6Step159EntryFBefore s6Step159FrontBank 190 93 ⟨189,189,94,94⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step159FrontLog=some s6Step159FrontPlan := by
  have pairEq : s6Step159FrontPair=⟨s6Step159HeadFRow,s6Step159HeadGRow,s6Step159HeadFvRow,s6Step159HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step159FrontHead=⟨s6Step159ExitFRow,s6Step159ExitGRow,s6Step159ExitFvRow,s6Step159ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step159Add0A=s6Step159FrontHead.f.wires := by decide +kernel
  have gEq : s6Step159Add0B=s6Step159FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step159Add1A=s6Step159FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step159Add1B=s6Step159FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step159EntryFBefore s6Step159FrontBank 190 93 ⟨189,189,94,94⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step159FrontLog s6Step159FrontPlan
  · exact s6Step159Front_entry
  · exact s6Step159EntryBank_checked
  · exact s6Step159Front_sigma
  · rfl
  · exact s6Step159Front_branch
  · rfl
  · simpa only [s6Step159FrontPlan,pairEq] using s6Step159HeadBank_checked
  · simpa only [s6Step159FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step159F4_checked
  · exact s6Step159Counter_checked
  · rfl
  · simpa only [s6Step159FrontPlan,headEq] using s6Step159ExitBank_checked

private theorem s6Step159Complete_explicit_checked : compileHmrEarlyStepLog s6Step159EntryFBefore s6Step159FrontBank 190 93 ⟨189,189,94,94⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step159CompleteLog=some s6Step159CompletePlan := by
  let Q := s6Step159EarlyControlPlan
  have hq := s6Step159EarlyControl_plan_checked
  have fv1 : s6Step159CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step159CompleteOut.fv.payload[2]?.getD s6Step159CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step159CompleteOut.fv.payload[3]?.getD s6Step159CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step159CompleteOut.fv.payload[4]?.getD s6Step159CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step159EntryFBefore s6Step159EarlyControlArena s6Step159FrontBank 190 93 ⟨189,189,94,94⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step159CompleteLog s6Step159FrontPlan Q
    s6Step159Front_checked s6Step159Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step159Complete_owned s6Step159Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step159EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 s6Step159CompleteOut.fv.second (s6Step159CompleteOut.fv.payload[2]?.getD s6Step159CompleteOut.fv.sign) (s6Step159CompleteOut.fv.payload[3]?.getD s6Step159CompleteOut.fv.sign) (s6Step159CompleteOut.fv.payload[4]?.getD s6Step159CompleteOut.fv.sign) 863 42 s6Step159EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep159Arena : Arena := s6Step159EntryFBefore
def s6PrivateStep159Bank : WindowBank := s6Step159FrontBank
def s6PrivateStep159Spec : HmrSourceWalkStepLog := ⟨190,93,⟨189,189,94,94⟩,42,.early s6Step159CompleteLog⟩
def s6PrivateStep159Plan : HmrSourceStepPlan := .early s6Step159CompletePlan
theorem s6PrivateStep159_source : s6PrivateStep159Spec=s6ObservedLogs144[15] := rfl
theorem s6PrivateStep159_checked : compileHmrSourceStepLog s6PrivateStep159Arena s6PrivateStep159Bank
    s6PrivateStep159Spec.fgWidth s6PrivateStep159Spec.vWidth s6PrivateStep159Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 159 s6PrivateStep159Spec.need none s6PrivateStep159Spec.log=some s6PrivateStep159Plan := by
  change compileHmrSourceStepLog s6Step159EntryFBefore s6Step159FrontBank 190 93 ⟨189,189,94,94⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 159 42 none (.early s6Step159CompleteLog)=some (.early s6Step159CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 159<498)]
  rw [s6Step159Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
