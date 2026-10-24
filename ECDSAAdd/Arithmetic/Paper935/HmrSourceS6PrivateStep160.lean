import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep158
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

private def s6Step160CompleteMoves : List (Wire × Wire) := []

private def s6Step160EarlyControlLog : HmrEarlyControlLog := ⟨[879, 908, 828, 857, 856],[922],[887],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step160FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[828], [908], [879], [875]],[[], [], [], []]⟩,[863],[768],[857],[856],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 856, 922, 887]⟩

private def s6Step160CompleteLog : HmrEarlyStepLog := ⟨s6Step160FrontLog,s6Step160CompleteMoves,s6Step160EarlyControlLog⟩

private def s6Step160ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step160ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step160ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step160ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private def s6Step160FrontOut : WindowBank := ⟨s6Step160ExitFOut,s6Step160ExitGOut,s6Step160ExitFvOut,s6Step160ExitGvOut⟩

private def s6Step160CompleteOut : WindowBank := s6Step160FrontOut.repacked s6Step160CompleteMoves

private def s6Step160EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step160EarlyControlPositiveArena,[922],s6Step160EarlyControlEqualityArena,[887],⟨⟨863,false⟩,[⟨⟨922,false⟩,887⟩]⟩⟩

private def s6Step160EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,879⟩,⟨⟨772,false⟩,908⟩,⟨⟨771,false⟩,828⟩,⟨⟨770,false⟩,857⟩,⟨⟨769,false⟩,856⟩]⟩

private def s6Step160EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step160EarlyControlZeroArena,s6Step160EarlyControlZeroPlan,s6Step160EarlyControlClassPlan,s6Step160EarlyControlFlagArena,s6Step160EarlyControlFittedArena,s6Step160EarlyControlHistoryArena,s6Step160EarlyControlSigmaArena,s6Step160EarlyControlOutputArena,s6Step160EarlyControlLog⟩

private def s6Step160CounterWork : List Wire := [857, 856, 922, 887]

private theorem s6Step160Counter_bounded : s6Step160CounterWork.toFinset⊆arenaWires := by norm_num [s6Step160CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step160HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160CounterDuring : Arena := ⟨s6Step160HeadFvAfter.live∪s6Step160CounterWork.toFinset,Finset.union_subset s6Step160HeadFvAfter.bounded s6Step160Counter_bounded⟩

private def s6Step160EntryFFresh : List Wire := []

private def s6Step160EntryFvFresh : List Wire := []

private def s6Step160EntryGFresh : List Wire := []

private def s6Step160EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160EntryGvAfter : Arena := s6Step160EntryFBefore

private def s6Step160EntryGvFresh : List Wire := []

private def s6Step160ExitFExtra : List Wire := [908]

private def s6Step160ExitGExtra : List Wire := [828]

private def s6Step160ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160ExitGvExtra : List Wire := [879]

private def s6Step160Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160Add0Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step160Add0_bounded : s6Step160Add0Work.toFinset⊆arenaWires := by
  have h : s6Step160Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step160Add0During : Arena := ⟨s6Step160Add0Arena.live∪s6Step160Add0Work.toFinset,Finset.union_subset s6Step160Add0Arena.bounded s6Step160Add0_bounded⟩

private def s6Step160Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step160Add1Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step160Add1_bounded : s6Step160Add1Work.toFinset⊆arenaWires := by
  have h : s6Step160Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step160Add1During : Arena := ⟨s6Step160Add1Arena.live∪s6Step160Add1Work.toFinset,Finset.union_subset s6Step160Add1Arena.bounded s6Step160Add1_bounded⟩

private def s6Step160F4FlagArena : Arena := ⟨s6Step160HeadFvAfter.live∪{857},Finset.union_subset s6Step160HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step160F4Plan : HmrHybridF4Plan := ⟨s6Step160F4FlagArena,[857],s6Step160Add0Arena,[856],s6Step160Add0During,s6Step160Add0Work,s6Step160Add1During,s6Step160Add1Work⟩

private def s6Step160HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 908],795⟩

private def s6Step160HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step160HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 828],777⟩

private def s6Step160HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 879],775⟩

private def s6Step160FrontHead : WindowBank := ⟨s6Step160HeadFOut,s6Step160HeadGOut,s6Step160HeadFvOut,s6Step160HeadGvOut⟩

private def s6Step160EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step160EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩

private def s6Step160EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step160EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private def s6Step160FrontPair : WindowBank := ⟨s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut⟩

private def s6Step160FrontSigmaArena : Arena := ⟨s6Step160EntryGvAfter.live∪{863},Finset.union_subset s6Step160EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step160HeadFFresh : List Wire := [908]

private def s6Step160HeadFvFresh : List Wire := [875]

private def s6Step160HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160HeadGFresh : List Wire := [828]

private def s6Step160HeadGvFresh : List Wire := [879]

private def s6Step160FrontPlan : HmrSourceFront := ⟨s6Step160EntryGvAfter,s6Step160FrontPair,(growRow 795 s6Step160EntryFFresh ++ (growRow 777 s6Step160EntryGFresh ++ (growRow 776 s6Step160EntryFvFresh ++ (growRow 775 s6Step160EntryGvFresh ++ [])))),s6Step160FrontSigmaArena,[863],s6Step160HeadGBefore,[768],
  s6Step160HeadFvAfter,s6Step160FrontHead,(growRow 777 s6Step160HeadGFresh ++ (growRow 795 s6Step160HeadFFresh ++ (growRow 775 s6Step160HeadGvFresh ++ (growRow 776 s6Step160HeadFvFresh ++ [])))),s6Step160F4Plan,s6Step160CounterDuring,s6Step160CounterWork,s6Step160ExitGvAfter,s6Step160FrontOut,(shrinkRow 777 s6Step160ExitGExtra ++ (shrinkRow 795 s6Step160ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step160ExitGvExtra ++ []))))⟩

private def s6Step160CompletePlan : HmrEarlyStepPlan := ⟨s6Step160FrontPlan,s6Step160EarlyControlArena,s6Step160EarlyControlPlan,s6Step160CompleteMoves⟩

private theorem s6Step160Complete_apart : List.Disjoint (s6Step160CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [863, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step160CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[863, 768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step160Complete_owned : (s6Step160CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160Complete_repack : s6Step160ExitGvAfter.checkRepack s6Step160CompleteMoves=some s6Step160EarlyControlArena := by rfl

private theorem s6Step160EarlyControl_branchOwned : ([768] : List Wire).toFinset⊆s6Step160EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EarlyControl_branch : compileHmrBranchRetirement s6Step160EarlyControlSigmaArena 768=some s6Step160EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step160EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step160EarlyControlSigmaArena s6Step160EarlyControlOutputArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step160EarlyControl_classEqualityBorrow : s6Step160EarlyControlPositiveArena.checkBorrow (([863, 922] : List Wire).length-1) s6Step160EarlyControlLog.classWork=some s6Step160EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step160EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step160EarlyControlEqualityArena,s6Step160EarlyControlPositiveArena,s6Step160EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step160EarlyControl_classEqualityOwned : ([863, 922] : List Wire).toFinset⊆s6Step160EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160EarlyControl_classEquality : compileHmrEqualityLog s6Step160EarlyControlPositiveArena [863, 922] 0 s6Step160EarlyControlLog.classWork=some (s6Step160EarlyControlEqualityArena,s6Step160EarlyControlLog.classWork,s6Step160EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step160EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step160EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step160EarlyControl_classOwned : ([769, 856, 863] : List Wire).toFinset⊆s6Step160EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160EarlyControl_positiveBorrow : s6Step160EarlyControlZeroArena.checkBorrow (1) s6Step160EarlyControlLog.positiveWork=some s6Step160EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step160EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step160EarlyControlPositiveArena,s6Step160EarlyControlZeroArena,s6Step160EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step160EarlyControl_class : compileHmrSourceClassLog s6Step160EarlyControlZeroArena false 769 s6Step160EarlyControlZeroPlan.top 0 863 s6Step160EarlyControlLog.positiveWork s6Step160EarlyControlLog.classWork=some s6Step160EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step160EarlyControlClassPlan s6Step160EarlyControlZeroArena false 769 s6Step160EarlyControlZeroPlan.top 0 863
  constructor
  · decide +kernel
  · exact s6Step160EarlyControl_classOwned
  · exact s6Step160EarlyControl_positiveBorrow
  · exact s6Step160EarlyControl_classEquality

private theorem s6Step160EarlyControl_entryRecordOwned : ([768, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EarlyControl_entrySigmaOwned : ([863, 254] : List Wire).toFinset⊆s6Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EarlyControl_fitBorrow : s6Step160EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step160EarlyControlLog.recordFresh=some s6Step160EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step160EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step160EarlyControlFittedArena,s6Step160EarlyControlFlagArena,s6Step160EarlyControlLog,arenaWires]

private theorem s6Step160EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step160EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160EarlyControl_fit : compileHmrRecordGrowLog s6Step160EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step160EarlyControlLog.recordFresh=some s6Step160EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step160EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step160EarlyControl_fitBorrow

private theorem s6Step160EarlyControl_flagsBorrow : s6Step160EarlyControlEqualityArena.checkBorrow (6) s6Step160EarlyControlLog.flagWork=some s6Step160EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step160EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step160EarlyControlFlagArena,s6Step160EarlyControlEqualityArena,s6Step160EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step160EarlyControl_flagsOwned : ([887, 253, 252, 251] : List Wire).toFinset⊆s6Step160EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160EarlyControl_flags : compileHmrFlagsLog s6Step160EarlyControlClassPlan.equalityArena s6Step160EarlyControlClassPlan.equality.top 253 252 251 s6Step160EarlyControlLog.flagWork=some s6Step160EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step160EarlyControl_flagsOwned⟩
  · exact s6Step160EarlyControl_flagsBorrow

private theorem s6Step160EarlyControl_historyBorrow : s6Step160EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step160EarlyControlLog.recordFresh=some s6Step160EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step160EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step160EarlyControlArena s6Step160EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step160EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step160EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EarlyControl_history : compileHmrRecordGrowLog s6Step160EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step160EarlyControlLog.recordFresh=some s6Step160EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step160EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step160EarlyControl_historyBorrow

private theorem s6Step160EarlyControl_sigmaOwned : ([254, 863] : List Wire).toFinset⊆s6Step160EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EarlyControl_sigmaReleaseOwned : ([863] : List Wire).toFinset⊆s6Step160EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EarlyControl_sigmaRelease : s6Step160EarlyControlHistoryArena.release {863} (fun _ => false)=some s6Step160EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step160EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step160EarlyControlHistoryArena s6Step160EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [863] rfl rfl
    decide +kernel

private theorem s6Step160EarlyControl_sigma : compileHmrSigmaDropLog s6Step160EarlyControlHistoryArena false 0 0 254 863 []=some s6Step160EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step160EarlyControl_sigmaOwned⟩
  · exact s6Step160EarlyControl_sigmaRelease

private theorem s6Step160EarlyControl_zeroBorrow : s6Step160EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step160EarlyControlLog.zeroWork=some s6Step160EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step160EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step160EarlyControlArena s6Step160EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step160EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step160EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step160EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EarlyControl_zero : compileHmrEqualityLog s6Step160EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step160EarlyControlLog.zeroWork=some (s6Step160EarlyControlZeroArena,s6Step160EarlyControlLog.zeroWork,s6Step160EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step160EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step160EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step160EarlyControl_logged : s6Step160EarlyControlPlan.Logged s6Step160EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 254 253 252 251 768 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step160EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step160EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step160EarlyControl_zero
  · exact s6Step160EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step160EarlyControl_flags
  · exact s6Step160EarlyControl_fit
  · exact s6Step160EarlyControl_history
  · exact s6Step160EarlyControl_sigma
  · exact s6Step160EarlyControl_branch

private theorem s6Step160EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step160EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 254 253 252 251 768 42 s6Step160EarlyControlLog=some s6Step160EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step160EarlyControlPlan s6Step160EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 254 253 252 251 768 42 s6Step160EarlyControl_logged

private def s6Step160EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step160EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩

private def s6Step160EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step160EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private def s6Step160FrontBank : WindowBank := ⟨s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow⟩

private def s6Step160Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 908, 795]

private def s6Step160Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 828, 777]

private def s6Step160Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875, 776]

private def s6Step160Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 879, 775]

private theorem s6Step160Counter_apart : Disjoint s6Step160HeadFvAfter.live s6Step160CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step160HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160Counter_borrowed : s6Step160HeadFvAfter.checkBorrow 4 s6Step160CounterWork=some s6Step160CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step160HeadFvAfter s6Step160CounterDuring s6Step160CounterWork.toFinset s6Step160Counter_bounded s6Step160Counter_apart rfl

private theorem s6Step160Counter_owned : (863::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step160HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step160HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160Counter_checked : compileHmrCounterStepLog s6Step160HeadFvAfter true 863 [774, 773, 772, 771, 770, 769] s6Step160CounterWork=some s6Step160CounterDuring := by
  have owned : ∀q∈863::[774, 773, 772, 771, 770, 769],q∈s6Step160HeadFvAfter.live := fun q hq => s6Step160Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step160Counter_borrowed

private def s6Step160EntryFAfter : Arena := s6Step160EntryFBefore

private theorem s6Step160EntryBank_incomingDistinct : ([s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160EntryF_Incoming : rowsOwned s6Step160EntryFBefore [s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow] 0 s6Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160EntryBank_outgoingOwned : rowsOwned s6Step160EntryGvAfter [s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step160EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160EntryF_Outgoing : rowsOwned s6Step160EntryGvAfter [s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut] :=
  hmrRows_owned_drop s6Step160EntryGvAfter [s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut] 0 s6Step160EntryBank_outgoingOwned

private theorem s6Step160EntryF_distinct : (s6Step160EntryFRow.sign::s6Step160EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160EntryF_owned : (s6Step160EntryFRow.sign::s6Step160EntryFRow.payload).toFinset⊆s6Step160EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EntryF_reserved : s6Step160EntryFBefore.reserve s6Step160EntryFFresh.toFinset=some s6Step160EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160EntryFFresh,arenaWires]
  · norm_num [s6Step160EntryFBefore,s6Step160EntryFFresh,arenaWires]
  · simp only [s6Step160EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step160EntryF_checked : planRowResizeLog s6Step160EntryFBefore s6Step160EntryFRow 189 s6Step160EntryFFresh=
    some (s6Step160EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩,growRow 795 s6Step160EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step160EntryFBefore s6Step160EntryFAfter s6Step160EntryFRow 189 s6Step160EntryFFresh
    s6Step160EntryF_distinct s6Step160EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160EntryF_reserved
  have rowEq : WindowRow.mk (s6Step160EntryFRow.payload++s6Step160EntryFFresh) s6Step160EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step160EntryFvAfter : Arena := s6Step160EntryFBefore

private def s6Step160EntryFvBefore : Arena := s6Step160EntryFBefore

private theorem s6Step160EntryFv_Incoming : rowsOwned s6Step160EntryFvBefore [s6Step160EntryFvRow,s6Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow] 2 s6Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160EntryFv_Outgoing : rowsOwned s6Step160EntryGvAfter [s6Step160EntryFvOut,s6Step160EntryGvOut] :=
  hmrRows_owned_drop s6Step160EntryGvAfter [s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut] 2 s6Step160EntryBank_outgoingOwned

private theorem s6Step160EntryFv_distinct : (s6Step160EntryFvRow.sign::s6Step160EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160EntryFv_owned : (s6Step160EntryFvRow.sign::s6Step160EntryFvRow.payload).toFinset⊆s6Step160EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EntryFv_reserved : s6Step160EntryFvBefore.reserve s6Step160EntryFvFresh.toFinset=some s6Step160EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160EntryFvFresh,arenaWires]
  · norm_num [s6Step160EntryFvBefore,s6Step160EntryFBefore,s6Step160EntryFvFresh,arenaWires]
  · simp only [s6Step160EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step160EntryFv_checked : planRowResizeLog s6Step160EntryFvBefore s6Step160EntryFvRow 94 s6Step160EntryFvFresh=
    some (s6Step160EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩,growRow 776 s6Step160EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step160EntryFvBefore s6Step160EntryFvAfter s6Step160EntryFvRow 94 s6Step160EntryFvFresh
    s6Step160EntryFv_distinct s6Step160EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step160EntryFvRow.payload++s6Step160EntryFvFresh) s6Step160EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step160EntryGAfter : Arena := s6Step160EntryFBefore

private def s6Step160EntryGBefore : Arena := s6Step160EntryFBefore

private theorem s6Step160EntryG_Incoming : rowsOwned s6Step160EntryGBefore [s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow] 1 s6Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160EntryG_Outgoing : rowsOwned s6Step160EntryGvAfter [s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut] :=
  hmrRows_owned_drop s6Step160EntryGvAfter [s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut] 1 s6Step160EntryBank_outgoingOwned

private theorem s6Step160EntryG_distinct : (s6Step160EntryGRow.sign::s6Step160EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160EntryG_owned : (s6Step160EntryGRow.sign::s6Step160EntryGRow.payload).toFinset⊆s6Step160EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EntryG_reserved : s6Step160EntryGBefore.reserve s6Step160EntryGFresh.toFinset=some s6Step160EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160EntryGFresh,arenaWires]
  · norm_num [s6Step160EntryGBefore,s6Step160EntryFBefore,s6Step160EntryGFresh,arenaWires]
  · simp only [s6Step160EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step160EntryG_checked : planRowResizeLog s6Step160EntryGBefore s6Step160EntryGRow 189 s6Step160EntryGFresh=
    some (s6Step160EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩,growRow 777 s6Step160EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step160EntryGBefore s6Step160EntryGAfter s6Step160EntryGRow 189 s6Step160EntryGFresh
    s6Step160EntryG_distinct s6Step160EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160EntryG_reserved
  have rowEq : WindowRow.mk (s6Step160EntryGRow.payload++s6Step160EntryGFresh) s6Step160EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step160EntryGvBefore : Arena := s6Step160EntryFBefore

private theorem s6Step160EntryGv_Incoming : rowsOwned s6Step160EntryGvBefore [s6Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow] 3 s6Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160EntryGv_Outgoing : rowsOwned s6Step160EntryGvAfter [s6Step160EntryGvOut] :=
  hmrRows_owned_drop s6Step160EntryGvAfter [s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut] 3 s6Step160EntryBank_outgoingOwned

private theorem s6Step160EntryGv_distinct : (s6Step160EntryGvRow.sign::s6Step160EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160EntryGv_owned : (s6Step160EntryGvRow.sign::s6Step160EntryGvRow.payload).toFinset⊆s6Step160EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160EntryGv_reserved : s6Step160EntryGvBefore.reserve s6Step160EntryGvFresh.toFinset=some s6Step160EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160EntryGvFresh,arenaWires]
  · norm_num [s6Step160EntryGvBefore,s6Step160EntryFBefore,s6Step160EntryGvFresh,arenaWires]
  · simp only [s6Step160EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step160EntryGv_checked : planRowResizeLog s6Step160EntryGvBefore s6Step160EntryGvRow 94 s6Step160EntryGvFresh=
    some (s6Step160EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩,growRow 775 s6Step160EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step160EntryGvBefore s6Step160EntryGvAfter s6Step160EntryGvRow 94 s6Step160EntryGvFresh
    s6Step160EntryGv_distinct s6Step160EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step160EntryGvRow.payload++s6Step160EntryGvFresh) s6Step160EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step160EntryBank_rows : planWindowRowsLog s6Step160EntryFBefore [(s6Step160EntryFRow,189),(s6Step160EntryGRow,189),(s6Step160EntryFvRow,94),(s6Step160EntryGvRow,94)] [s6Step160EntryFFresh,s6Step160EntryGFresh,s6Step160EntryFvFresh,s6Step160EntryGvFresh]=
    some (s6Step160EntryGvAfter,[s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut],(growRow 795 s6Step160EntryFFresh ++ (growRow 777 s6Step160EntryGFresh ++ (growRow 776 s6Step160EntryFvFresh ++ (growRow 775 s6Step160EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step160EntryGvAfter [] []=some (s6Step160EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step160EntryGvBefore s6Step160EntryGvAfter s6Step160EntryGvAfter
    s6Step160EntryGvRow s6Step160EntryGvOut 94 s6Step160EntryGvFresh [] [] []
    (growRow 775 s6Step160EntryGvFresh) ([]) s6Step160EntryGv_Incoming s6Step160EntryGv_checked h4 s6Step160EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step160EntryFvBefore s6Step160EntryFvAfter s6Step160EntryGvAfter
    s6Step160EntryFvRow s6Step160EntryFvOut 94 s6Step160EntryFvFresh [(s6Step160EntryGvRow,94)] [s6Step160EntryGvFresh] [s6Step160EntryGvOut]
    (growRow 776 s6Step160EntryFvFresh) ((growRow 775 s6Step160EntryGvFresh ++ [])) s6Step160EntryFv_Incoming s6Step160EntryFv_checked h3 s6Step160EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step160EntryGBefore s6Step160EntryGAfter s6Step160EntryGvAfter
    s6Step160EntryGRow s6Step160EntryGOut 189 s6Step160EntryGFresh [(s6Step160EntryFvRow,94),(s6Step160EntryGvRow,94)] [s6Step160EntryFvFresh,s6Step160EntryGvFresh] [s6Step160EntryFvOut,s6Step160EntryGvOut]
    (growRow 777 s6Step160EntryGFresh) ((growRow 776 s6Step160EntryFvFresh ++ (growRow 775 s6Step160EntryGvFresh ++ []))) s6Step160EntryG_Incoming s6Step160EntryG_checked h2 s6Step160EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step160EntryFBefore s6Step160EntryFAfter s6Step160EntryGvAfter
    s6Step160EntryFRow s6Step160EntryFOut 189 s6Step160EntryFFresh [(s6Step160EntryGRow,189),(s6Step160EntryFvRow,94),(s6Step160EntryGvRow,94)] [s6Step160EntryGFresh,s6Step160EntryFvFresh,s6Step160EntryGvFresh] [s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut]
    (growRow 795 s6Step160EntryFFresh) ((growRow 777 s6Step160EntryGFresh ++ (growRow 776 s6Step160EntryFvFresh ++ (growRow 775 s6Step160EntryGvFresh ++ [])))) s6Step160EntryF_Incoming s6Step160EntryF_checked h1 s6Step160EntryF_Outgoing
  exact h0

private theorem s6Step160EntryBank_checked : compileHmrBankResizeLog .entry s6Step160EntryFBefore ⟨s6Step160EntryFRow,s6Step160EntryGRow,s6Step160EntryFvRow,s6Step160EntryGvRow⟩ ⟨189,189,94,94⟩ [s6Step160EntryFFresh,s6Step160EntryGFresh,s6Step160EntryFvFresh,s6Step160EntryGvFresh]=
    some (s6Step160EntryGvAfter,⟨s6Step160EntryFOut,s6Step160EntryGOut,s6Step160EntryFvOut,s6Step160EntryGvOut⟩,(growRow 795 s6Step160EntryFFresh ++ (growRow 777 s6Step160EntryGFresh ++ (growRow 776 s6Step160EntryFvFresh ++ (growRow 775 s6Step160EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step160EntryBank_rows]
  rfl

private def s6Step160ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160ExitFBefore : Arena := s6Step160ExitGAfter

private def s6Step160ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 908],795⟩

private def s6Step160ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩

private def s6Step160ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 828],777⟩

private def s6Step160ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 879],775⟩

private theorem s6Step160ExitBank_incomingDistinct : ([s6Step160ExitGRow,s6Step160ExitFRow,s6Step160ExitFvRow,s6Step160ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160ExitF_Incoming : rowsOwned s6Step160ExitFBefore [s6Step160ExitFRow,s6Step160ExitFvRow,s6Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160ExitGRow,s6Step160ExitFRow,s6Step160ExitFvRow,s6Step160ExitGvRow] 1 s6Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160ExitBank_outgoingOwned : rowsOwned s6Step160ExitGvAfter [s6Step160ExitGOut,s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step160ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160ExitF_Outgoing : rowsOwned s6Step160ExitGvAfter [s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut] :=
  hmrRows_owned_drop s6Step160ExitGvAfter [s6Step160ExitGOut,s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut] 1 s6Step160ExitBank_outgoingOwned

private theorem s6Step160ExitF_distinct : (s6Step160ExitFRow.sign::s6Step160ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160ExitF_owned : (s6Step160ExitFRow.sign::s6Step160ExitFRow.payload).toFinset⊆s6Step160ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160ExitFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160ExitF_retired : s6Step160ExitFBefore.retireSet s6Step160ExitFExtra.toFinset=s6Step160ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step160ExitFBefore s6Step160ExitFAfter s6Step160ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step160ExitFBefore s6Step160ExitFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step160ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step160ExitF_checked : planRowResizeLog s6Step160ExitFBefore s6Step160ExitFRow 189 []=
    some (s6Step160ExitFAfter,s6Step160ExitFOut,shrinkRow 795 s6Step160ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step160ExitFBefore s6Step160ExitFRow 189 s6Step160ExitF_distinct s6Step160ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step160ExitFRow.payload.take 189) s6Step160ExitFRow.sign=s6Step160ExitFOut := by decide +kernel
  have hi : s6Step160ExitFRow.payload.drop 189=s6Step160ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step160ExitF_retired] at result
  exact result

private def s6Step160ExitFvAfter : Arena := s6Step160ExitFAfter

private def s6Step160ExitFvBefore : Arena := s6Step160ExitFAfter

private theorem s6Step160ExitFv_Incoming : rowsOwned s6Step160ExitFvBefore [s6Step160ExitFvRow,s6Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160ExitGRow,s6Step160ExitFRow,s6Step160ExitFvRow,s6Step160ExitGvRow] 2 s6Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160ExitFv_Outgoing : rowsOwned s6Step160ExitGvAfter [s6Step160ExitFvOut,s6Step160ExitGvOut] :=
  hmrRows_owned_drop s6Step160ExitGvAfter [s6Step160ExitGOut,s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut] 2 s6Step160ExitBank_outgoingOwned

private theorem s6Step160ExitFv_distinct : (s6Step160ExitFvRow.sign::s6Step160ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160ExitFv_owned : (s6Step160ExitFvRow.sign::s6Step160ExitFvRow.payload).toFinset⊆s6Step160ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160ExitFv_reserved : s6Step160ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step160ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step160ExitFv_checked : planRowResizeLog s6Step160ExitFvBefore s6Step160ExitFvRow 95 []=
    some (s6Step160ExitFvAfter,s6Step160ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step160ExitFvBefore s6Step160ExitFvAfter s6Step160ExitFvRow 95 []
    s6Step160ExitFv_distinct s6Step160ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step160ExitFvRow.payload++[]) s6Step160ExitFvRow.sign=s6Step160ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step160ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step160ExitG_Incoming : rowsOwned s6Step160ExitGBefore [s6Step160ExitGRow,s6Step160ExitFRow,s6Step160ExitFvRow,s6Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160ExitGRow,s6Step160ExitFRow,s6Step160ExitFvRow,s6Step160ExitGvRow] 0 s6Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step160ExitG_Outgoing : rowsOwned s6Step160ExitGvAfter [s6Step160ExitGOut,s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut] :=
  hmrRows_owned_drop s6Step160ExitGvAfter [s6Step160ExitGOut,s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut] 0 s6Step160ExitBank_outgoingOwned

private theorem s6Step160ExitG_distinct : (s6Step160ExitGRow.sign::s6Step160ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160ExitG_owned : (s6Step160ExitGRow.sign::s6Step160ExitGRow.payload).toFinset⊆s6Step160ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160ExitG_retired : s6Step160ExitGBefore.retireSet s6Step160ExitGExtra.toFinset=s6Step160ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step160ExitGBefore s6Step160ExitGAfter s6Step160ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step160ExitGBefore s6Step160ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step160ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step160ExitG_checked : planRowResizeLog s6Step160ExitGBefore s6Step160ExitGRow 189 []=
    some (s6Step160ExitGAfter,s6Step160ExitGOut,shrinkRow 777 s6Step160ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step160ExitGBefore s6Step160ExitGRow 189 s6Step160ExitG_distinct s6Step160ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step160ExitGRow.payload.take 189) s6Step160ExitGRow.sign=s6Step160ExitGOut := by decide +kernel
  have hi : s6Step160ExitGRow.payload.drop 189=s6Step160ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step160ExitG_retired] at result
  exact result

private def s6Step160ExitGvBefore : Arena := s6Step160ExitFAfter

private theorem s6Step160ExitGv_Incoming : rowsOwned s6Step160ExitGvBefore [s6Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160ExitGRow,s6Step160ExitFRow,s6Step160ExitFvRow,s6Step160ExitGvRow] 3 s6Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160ExitGv_Outgoing : rowsOwned s6Step160ExitGvAfter [s6Step160ExitGvOut] :=
  hmrRows_owned_drop s6Step160ExitGvAfter [s6Step160ExitGOut,s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut] 3 s6Step160ExitBank_outgoingOwned

private theorem s6Step160ExitGv_distinct : (s6Step160ExitGvRow.sign::s6Step160ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160ExitGv_owned : (s6Step160ExitGvRow.sign::s6Step160ExitGvRow.payload).toFinset⊆s6Step160ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160ExitGv_retired : s6Step160ExitGvBefore.retireSet s6Step160ExitGvExtra.toFinset=s6Step160ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step160ExitGvBefore s6Step160ExitGvAfter s6Step160ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step160ExitGvBefore s6Step160ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step160ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step160ExitGv_checked : planRowResizeLog s6Step160ExitGvBefore s6Step160ExitGvRow 94 []=
    some (s6Step160ExitGvAfter,s6Step160ExitGvOut,shrinkRow 775 s6Step160ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step160ExitGvBefore s6Step160ExitGvRow 94 s6Step160ExitGv_distinct s6Step160ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step160ExitGvRow.payload.take 94) s6Step160ExitGvRow.sign=s6Step160ExitGvOut := by decide +kernel
  have hi : s6Step160ExitGvRow.payload.drop 94=s6Step160ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step160ExitGv_retired] at result
  exact result

private theorem s6Step160ExitBank_rows : planWindowRowsLog s6Step160ExitGBefore [(s6Step160ExitGRow,189),(s6Step160ExitFRow,189),(s6Step160ExitFvRow,95),(s6Step160ExitGvRow,94)] [[],[],[],[]]=
    some (s6Step160ExitGvAfter,[s6Step160ExitGOut,s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut],(shrinkRow 777 s6Step160ExitGExtra ++ (shrinkRow 795 s6Step160ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step160ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step160ExitGvAfter [] []=some (s6Step160ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step160ExitGvBefore s6Step160ExitGvAfter s6Step160ExitGvAfter
    s6Step160ExitGvRow s6Step160ExitGvOut 94 [] [] [] []
    (shrinkRow 775 s6Step160ExitGvExtra) ([]) s6Step160ExitGv_Incoming s6Step160ExitGv_checked h4 s6Step160ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step160ExitFvBefore s6Step160ExitFvAfter s6Step160ExitGvAfter
    s6Step160ExitFvRow s6Step160ExitFvOut 95 [] [(s6Step160ExitGvRow,94)] [[]] [s6Step160ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step160ExitGvExtra ++ [])) s6Step160ExitFv_Incoming s6Step160ExitFv_checked h3 s6Step160ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step160ExitFBefore s6Step160ExitFAfter s6Step160ExitGvAfter
    s6Step160ExitFRow s6Step160ExitFOut 189 [] [(s6Step160ExitFvRow,95),(s6Step160ExitGvRow,94)] [[],[]] [s6Step160ExitFvOut,s6Step160ExitGvOut]
    (shrinkRow 795 s6Step160ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step160ExitGvExtra ++ []))) s6Step160ExitF_Incoming s6Step160ExitF_checked h2 s6Step160ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step160ExitGBefore s6Step160ExitGAfter s6Step160ExitGvAfter
    s6Step160ExitGRow s6Step160ExitGOut 189 [] [(s6Step160ExitFRow,189),(s6Step160ExitFvRow,95),(s6Step160ExitGvRow,94)] [[],[],[]] [s6Step160ExitFOut,s6Step160ExitFvOut,s6Step160ExitGvOut]
    (shrinkRow 777 s6Step160ExitGExtra) ((shrinkRow 795 s6Step160ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step160ExitGvExtra ++ [])))) s6Step160ExitG_Incoming s6Step160ExitG_checked h1 s6Step160ExitG_Outgoing
  exact h0

private theorem s6Step160ExitBank_checked : compileHmrBankResizeLog .exit s6Step160ExitGBefore ⟨s6Step160ExitFRow,s6Step160ExitGRow,s6Step160ExitFvRow,s6Step160ExitGvRow⟩ ⟨189,189,95,94⟩ [[],[],[],[]]=
    some (s6Step160ExitGvAfter,⟨s6Step160ExitFOut,s6Step160ExitGOut,s6Step160ExitFvOut,s6Step160ExitGvOut⟩,(shrinkRow 777 s6Step160ExitGExtra ++ (shrinkRow 795 s6Step160ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step160ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step160ExitBank_rows]
  rfl

private theorem s6Step160Add0_apart : Disjoint s6Step160Add0Arena.live s6Step160Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step160Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160Add0_card : s6Step160Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step160Add0_borrowed : s6Step160Add0Arena.checkBorrow (hmrHybridCount s6Step160Add0Arena s6Step160Add0B.length) s6Step160Add0Work=some s6Step160Add0During := by
  have len : s6Step160Add0Work.length=hmrHybridCount s6Step160Add0Arena s6Step160Add0B.length := by
    rw [hmrHybridCount,s6Step160Add0_card]
    decide +kernel
  have nd : s6Step160Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step160Add0Arena s6Step160Add0During s6Step160Add0Work.toFinset s6Step160Add0_bounded s6Step160Add0_apart rfl

private theorem s6Step160Add0_distinct : (857::768::856::(s6Step160Add0A++s6Step160Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160Add0_owned : (857::768::856::(s6Step160Add0A++s6Step160Add0B)).toFinset⊆s6Step160Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step160Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160Add0_checked : compileHmrHybridCinLog s6Step160Add0Arena 768 857 856 s6Step160Add0A s6Step160Add0B s6Step160Add0Work=some s6Step160Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step160Add0Arena s6Step160Add0During 768 857 856 s6Step160Add0A s6Step160Add0B s6Step160Add0Work
    (by decide +kernel) (by decide +kernel) s6Step160Add0_distinct
    (fun q hq => s6Step160Add0_owned (List.mem_toFinset.mpr hq)) s6Step160Add0_borrowed

private theorem s6Step160Add1_apart : Disjoint s6Step160Add1Arena.live s6Step160Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step160Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160Add1_card : s6Step160Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step160Add1_borrowed : s6Step160Add1Arena.checkBorrow (hmrHybridCount s6Step160Add1Arena s6Step160Add1B.length) s6Step160Add1Work=some s6Step160Add1During := by
  have len : s6Step160Add1Work.length=hmrHybridCount s6Step160Add1Arena s6Step160Add1B.length := by
    rw [hmrHybridCount,s6Step160Add1_card]
    decide +kernel
  have nd : s6Step160Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step160Add1Arena s6Step160Add1During s6Step160Add1Work.toFinset s6Step160Add1_bounded s6Step160Add1_apart rfl

private theorem s6Step160Add1_distinct : (857::768::856::(s6Step160Add1A++s6Step160Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160Add1_owned : (857::768::856::(s6Step160Add1A++s6Step160Add1B)).toFinset⊆s6Step160Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step160Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160Add1_checked : compileHmrHybridCinLog s6Step160Add1Arena 768 857 856 s6Step160Add1A s6Step160Add1B s6Step160Add1Work=some s6Step160Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step160Add1Arena s6Step160Add1During 768 857 856 s6Step160Add1A s6Step160Add1B s6Step160Add1Work
    (by decide +kernel) (by decide +kernel) s6Step160Add1_distinct
    (fun q hq => s6Step160Add1_owned (List.mem_toFinset.mpr hq)) s6Step160Add1_borrowed

private theorem s6Step160F4_apart : Disjoint (s6Step160Add0A++s6Step160Add0B).toFinset (s6Step160Add1A++s6Step160Add1B).toFinset := by
  have nd : ((s6Step160Add0A++s6Step160Add0B)++(s6Step160Add1A++s6Step160Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step160F4_carry : s6Step160F4FlagArena.checkBorrow 1 [856]=some s6Step160Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step160F4FlagArena,s6Step160HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step160F4FlagArena,s6Step160HeadFvAfter,s6Step160Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step160F4_distinct : (863::768::857::856::((s6Step160Add0A++s6Step160Add1A)++(s6Step160Add0B++s6Step160Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160F4_flag : s6Step160HeadFvAfter.checkBorrow 1 [857]=some s6Step160F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step160HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step160F4_owned : (863::768::((s6Step160Add0A++s6Step160Add1A)++(s6Step160Add0B++s6Step160Add1B))).toFinset⊆s6Step160HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step160HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step160F4_checked : compileHmrHybridF4Log s6Step160HeadFvAfter 863 768 s6Step160Add0A s6Step160Add0B s6Step160Add1A s6Step160Add1B [857] [856] s6Step160Add0Work s6Step160Add1Work=some s6Step160F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step160HeadFvAfter s6Step160F4FlagArena s6Step160Add0Arena s6Step160Add0During s6Step160Add1During 863 768
    s6Step160Add0A s6Step160Add0B s6Step160Add1A s6Step160Add1B [857] [856] s6Step160Add0Work s6Step160Add1Work
    (fun q hq => s6Step160F4_owned (List.mem_toFinset.mpr hq)) s6Step160F4_flag s6Step160F4_carry
    s6Step160F4_distinct s6Step160F4_apart s6Step160Add0_checked s6Step160Add1_checked

private theorem s6Step160Front_branch : s6Step160FrontSigmaArena.checkBorrow 1 [768]=some s6Step160HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step160FrontSigmaArena,s6Step160EntryGvAfter,s6Step160EntryFBefore,arenaWires]
  · change s6Step160HeadGBefore.live=(s6Step160EntryGvAfter.live∪{863})∪{768}
    apply hmrArena_union_pair_of_filter_check s6Step160EntryGvAfter s6Step160HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 863 768 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step160Front_entry : HmrFrontEntryValid s6Step160EntryFBefore s6Step160FrontBank 189 94 ⟨189,189,95,94⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step160FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step160EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step160EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step160FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step160Front_sigma : s6Step160EntryGvAfter.checkBorrow 1 [863]=some s6Step160FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step160EntryGvAfter,s6Step160EntryFBefore,arenaWires]
  · rfl

private def s6Step160HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160HeadFBefore : Arena := s6Step160HeadGAfter

private def s6Step160HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444],795⟩

private def s6Step160HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784],776⟩

private def s6Step160HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step160HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845],775⟩

private theorem s6Step160HeadBank_incomingDistinct : ([s6Step160HeadGRow,s6Step160HeadFRow,s6Step160HeadGvRow,s6Step160HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160HeadF_Incoming : rowsOwned s6Step160HeadFBefore [s6Step160HeadFRow,s6Step160HeadGvRow,s6Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160HeadGRow,s6Step160HeadFRow,s6Step160HeadGvRow,s6Step160HeadFvRow] 1 s6Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160HeadBank_outgoingOwned : rowsOwned s6Step160HeadFvAfter [s6Step160HeadGOut,s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step160HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step160HeadF_Outgoing : rowsOwned s6Step160HeadFvAfter [s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut] :=
  hmrRows_owned_drop s6Step160HeadFvAfter [s6Step160HeadGOut,s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut] 1 s6Step160HeadBank_outgoingOwned

private theorem s6Step160HeadF_distinct : (s6Step160HeadFRow.sign::s6Step160HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160HeadF_owned : (s6Step160HeadFRow.sign::s6Step160HeadFRow.payload).toFinset⊆s6Step160HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160HeadF_reserved : s6Step160HeadFBefore.reserve s6Step160HeadFFresh.toFinset=some s6Step160HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160HeadFFresh,arenaWires]
  · norm_num [s6Step160HeadFBefore,s6Step160HeadGAfter,s6Step160HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step160HeadFBefore s6Step160HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step160HeadFFresh rfl rfl
    · norm_num [s6Step160HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step160HeadF_checked : planRowResizeLog s6Step160HeadFBefore s6Step160HeadFRow 190 s6Step160HeadFFresh=
    some (s6Step160HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 908],795⟩,growRow 795 s6Step160HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step160HeadFBefore s6Step160HeadFAfter s6Step160HeadFRow 190 s6Step160HeadFFresh
    s6Step160HeadF_distinct s6Step160HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160HeadF_reserved
  have rowEq : WindowRow.mk (s6Step160HeadFRow.payload++s6Step160HeadFFresh) s6Step160HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 908],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step160HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step160HeadFvBefore : Arena := s6Step160HeadGvAfter

private theorem s6Step160HeadFv_Incoming : rowsOwned s6Step160HeadFvBefore [s6Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160HeadGRow,s6Step160HeadFRow,s6Step160HeadGvRow,s6Step160HeadFvRow] 3 s6Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160HeadFv_Outgoing : rowsOwned s6Step160HeadFvAfter [s6Step160HeadFvOut] :=
  hmrRows_owned_drop s6Step160HeadFvAfter [s6Step160HeadGOut,s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut] 3 s6Step160HeadBank_outgoingOwned

private theorem s6Step160HeadFv_distinct : (s6Step160HeadFvRow.sign::s6Step160HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160HeadFv_owned : (s6Step160HeadFvRow.sign::s6Step160HeadFvRow.payload).toFinset⊆s6Step160HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160HeadFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160HeadFv_reserved : s6Step160HeadFvBefore.reserve s6Step160HeadFvFresh.toFinset=some s6Step160HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160HeadFvFresh,arenaWires]
  · norm_num [s6Step160HeadFvBefore,s6Step160HeadGvAfter,s6Step160HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step160HeadFvBefore s6Step160HeadFvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step160HeadFvFresh rfl rfl
    · norm_num [s6Step160HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step160HeadFv_checked : planRowResizeLog s6Step160HeadFvBefore s6Step160HeadFvRow 95 s6Step160HeadFvFresh=
    some (s6Step160HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩,growRow 776 s6Step160HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step160HeadFvBefore s6Step160HeadFvAfter s6Step160HeadFvRow 95 s6Step160HeadFvFresh
    s6Step160HeadFv_distinct s6Step160HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step160HeadFvRow.payload++s6Step160HeadFvFresh) s6Step160HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 784, 875],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step160HeadG_Incoming : rowsOwned s6Step160HeadGBefore [s6Step160HeadGRow,s6Step160HeadFRow,s6Step160HeadGvRow,s6Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160HeadGRow,s6Step160HeadFRow,s6Step160HeadGvRow,s6Step160HeadFvRow] 0 s6Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160HeadG_Outgoing : rowsOwned s6Step160HeadFvAfter [s6Step160HeadGOut,s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut] :=
  hmrRows_owned_drop s6Step160HeadFvAfter [s6Step160HeadGOut,s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut] 0 s6Step160HeadBank_outgoingOwned

private theorem s6Step160HeadG_distinct : (s6Step160HeadGRow.sign::s6Step160HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160HeadG_owned : (s6Step160HeadGRow.sign::s6Step160HeadGRow.payload).toFinset⊆s6Step160HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160HeadG_reserved : s6Step160HeadGBefore.reserve s6Step160HeadGFresh.toFinset=some s6Step160HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160HeadGFresh,arenaWires]
  · norm_num [s6Step160HeadGBefore,s6Step160HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step160HeadGBefore s6Step160HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,828),(829,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step160HeadGFresh rfl rfl
    · norm_num [s6Step160HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step160HeadG_checked : planRowResizeLog s6Step160HeadGBefore s6Step160HeadGRow 190 s6Step160HeadGFresh=
    some (s6Step160HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 828],777⟩,growRow 777 s6Step160HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step160HeadGBefore s6Step160HeadGAfter s6Step160HeadGRow 190 s6Step160HeadGFresh
    s6Step160HeadG_distinct s6Step160HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160HeadG_reserved
  have rowEq : WindowRow.mk (s6Step160HeadGRow.payload++s6Step160HeadGFresh) s6Step160HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 828],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step160HeadGvBefore : Arena := s6Step160HeadFAfter

private theorem s6Step160HeadGv_Incoming : rowsOwned s6Step160HeadGvBefore [s6Step160HeadGvRow,s6Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step160HeadGRow,s6Step160HeadFRow,s6Step160HeadGvRow,s6Step160HeadFvRow] 2 s6Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step160HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step160HeadGv_Outgoing : rowsOwned s6Step160HeadFvAfter [s6Step160HeadGvOut,s6Step160HeadFvOut] :=
  hmrRows_owned_drop s6Step160HeadFvAfter [s6Step160HeadGOut,s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut] 2 s6Step160HeadBank_outgoingOwned

private theorem s6Step160HeadGv_distinct : (s6Step160HeadGvRow.sign::s6Step160HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step160HeadGv_owned : (s6Step160HeadGvRow.sign::s6Step160HeadGvRow.payload).toFinset⊆s6Step160HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step160HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step160HeadGv_reserved : s6Step160HeadGvBefore.reserve s6Step160HeadGvFresh.toFinset=some s6Step160HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step160HeadGvFresh,arenaWires]
  · norm_num [s6Step160HeadGvBefore,s6Step160HeadFAfter,s6Step160HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step160HeadGvBefore s6Step160HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step160HeadGvFresh rfl rfl
    · norm_num [s6Step160HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step160HeadGv_checked : planRowResizeLog s6Step160HeadGvBefore s6Step160HeadGvRow 95 s6Step160HeadGvFresh=
    some (s6Step160HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 879],775⟩,growRow 775 s6Step160HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step160HeadGvBefore s6Step160HeadGvAfter s6Step160HeadGvRow 95 s6Step160HeadGvFresh
    s6Step160HeadGv_distinct s6Step160HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step160HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step160HeadGvRow.payload++s6Step160HeadGvFresh) s6Step160HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 845, 879],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step160HeadBank_rows : planWindowRowsLog s6Step160HeadGBefore [(s6Step160HeadGRow,190),(s6Step160HeadFRow,190),(s6Step160HeadGvRow,95),(s6Step160HeadFvRow,95)] [s6Step160HeadGFresh,s6Step160HeadFFresh,s6Step160HeadGvFresh,s6Step160HeadFvFresh]=
    some (s6Step160HeadFvAfter,[s6Step160HeadGOut,s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut],(growRow 777 s6Step160HeadGFresh ++ (growRow 795 s6Step160HeadFFresh ++ (growRow 775 s6Step160HeadGvFresh ++ (growRow 776 s6Step160HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step160HeadFvAfter [] []=some (s6Step160HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step160HeadFvBefore s6Step160HeadFvAfter s6Step160HeadFvAfter
    s6Step160HeadFvRow s6Step160HeadFvOut 95 s6Step160HeadFvFresh [] [] []
    (growRow 776 s6Step160HeadFvFresh) ([]) s6Step160HeadFv_Incoming s6Step160HeadFv_checked h4 s6Step160HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step160HeadGvBefore s6Step160HeadGvAfter s6Step160HeadFvAfter
    s6Step160HeadGvRow s6Step160HeadGvOut 95 s6Step160HeadGvFresh [(s6Step160HeadFvRow,95)] [s6Step160HeadFvFresh] [s6Step160HeadFvOut]
    (growRow 775 s6Step160HeadGvFresh) ((growRow 776 s6Step160HeadFvFresh ++ [])) s6Step160HeadGv_Incoming s6Step160HeadGv_checked h3 s6Step160HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step160HeadFBefore s6Step160HeadFAfter s6Step160HeadFvAfter
    s6Step160HeadFRow s6Step160HeadFOut 190 s6Step160HeadFFresh [(s6Step160HeadGvRow,95),(s6Step160HeadFvRow,95)] [s6Step160HeadGvFresh,s6Step160HeadFvFresh] [s6Step160HeadGvOut,s6Step160HeadFvOut]
    (growRow 795 s6Step160HeadFFresh) ((growRow 775 s6Step160HeadGvFresh ++ (growRow 776 s6Step160HeadFvFresh ++ []))) s6Step160HeadF_Incoming s6Step160HeadF_checked h2 s6Step160HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step160HeadGBefore s6Step160HeadGAfter s6Step160HeadFvAfter
    s6Step160HeadGRow s6Step160HeadGOut 190 s6Step160HeadGFresh [(s6Step160HeadFRow,190),(s6Step160HeadGvRow,95),(s6Step160HeadFvRow,95)] [s6Step160HeadFFresh,s6Step160HeadGvFresh,s6Step160HeadFvFresh] [s6Step160HeadFOut,s6Step160HeadGvOut,s6Step160HeadFvOut]
    (growRow 777 s6Step160HeadGFresh) ((growRow 795 s6Step160HeadFFresh ++ (growRow 775 s6Step160HeadGvFresh ++ (growRow 776 s6Step160HeadFvFresh ++ [])))) s6Step160HeadG_Incoming s6Step160HeadG_checked h1 s6Step160HeadG_Outgoing
  exact h0

private theorem s6Step160HeadBank_checked : compileHmrBankResizeLog .headroom s6Step160HeadGBefore ⟨s6Step160HeadFRow,s6Step160HeadGRow,s6Step160HeadFvRow,s6Step160HeadGvRow⟩ ⟨190,190,95,95⟩ [s6Step160HeadGFresh,s6Step160HeadFFresh,s6Step160HeadGvFresh,s6Step160HeadFvFresh]=
    some (s6Step160HeadFvAfter,⟨s6Step160HeadFOut,s6Step160HeadGOut,s6Step160HeadFvOut,s6Step160HeadGvOut⟩,(growRow 777 s6Step160HeadGFresh ++ (growRow 795 s6Step160HeadFFresh ++ (growRow 775 s6Step160HeadGvFresh ++ (growRow 776 s6Step160HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step160HeadBank_rows]
  rfl

private theorem s6Step160Front_checked : compileHmrSourceFrontLog s6Step160EntryFBefore s6Step160FrontBank 189 94 ⟨189,189,95,94⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step160FrontLog=some s6Step160FrontPlan := by
  have pairEq : s6Step160FrontPair=⟨s6Step160HeadFRow,s6Step160HeadGRow,s6Step160HeadFvRow,s6Step160HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step160FrontHead=⟨s6Step160ExitFRow,s6Step160ExitGRow,s6Step160ExitFvRow,s6Step160ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step160Add0A=s6Step160FrontHead.f.wires := by decide +kernel
  have gEq : s6Step160Add0B=s6Step160FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step160Add1A=s6Step160FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step160Add1B=s6Step160FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step160EntryFBefore s6Step160FrontBank 189 94 ⟨189,189,95,94⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step160FrontLog s6Step160FrontPlan
  · exact s6Step160Front_entry
  · exact s6Step160EntryBank_checked
  · exact s6Step160Front_sigma
  · rfl
  · exact s6Step160Front_branch
  · rfl
  · simpa only [s6Step160FrontPlan,pairEq] using s6Step160HeadBank_checked
  · simpa only [s6Step160FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step160F4_checked
  · exact s6Step160Counter_checked
  · rfl
  · simpa only [s6Step160FrontPlan,headEq] using s6Step160ExitBank_checked

private theorem s6Step160Complete_explicit_checked : compileHmrEarlyStepLog s6Step160EntryFBefore s6Step160FrontBank 189 94 ⟨189,189,95,94⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step160CompleteLog=some s6Step160CompletePlan := by
  let Q := s6Step160EarlyControlPlan
  have hq := s6Step160EarlyControl_plan_checked
  have fv1 : s6Step160CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step160CompleteOut.fv.payload[2]?.getD s6Step160CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step160CompleteOut.fv.payload[3]?.getD s6Step160CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step160CompleteOut.fv.payload[4]?.getD s6Step160CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step160EntryFBefore s6Step160EarlyControlArena s6Step160FrontBank 189 94 ⟨189,189,95,94⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step160CompleteLog s6Step160FrontPlan Q
    s6Step160Front_checked s6Step160Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step160Complete_owned s6Step160Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step160EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 863 s6Step160CompleteOut.fv.second (s6Step160CompleteOut.fv.payload[2]?.getD s6Step160CompleteOut.fv.sign) (s6Step160CompleteOut.fv.payload[3]?.getD s6Step160CompleteOut.fv.sign) (s6Step160CompleteOut.fv.payload[4]?.getD s6Step160CompleteOut.fv.sign) 768 42 s6Step160EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep160Arena : Arena := s6Step160EntryFBefore
def s6PrivateStep160Bank : WindowBank := s6Step160FrontBank
def s6PrivateStep160Spec : HmrSourceWalkStepLog := ⟨189,94,⟨189,189,95,94⟩,42,.early s6Step160CompleteLog⟩
def s6PrivateStep160Plan : HmrSourceStepPlan := .early s6Step160CompletePlan
theorem s6PrivateStep160_source : s6PrivateStep160Spec=s6ObservedLogs160[0] := rfl
theorem s6PrivateStep160_checked : compileHmrSourceStepLog s6PrivateStep160Arena s6PrivateStep160Bank
    s6PrivateStep160Spec.fgWidth s6PrivateStep160Spec.vWidth s6PrivateStep160Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 160 s6PrivateStep160Spec.need none s6PrivateStep160Spec.log=some s6PrivateStep160Plan := by
  change compileHmrSourceStepLog s6Step160EntryFBefore s6Step160FrontBank 189 94 ⟨189,189,95,94⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 160 42 none (.early s6Step160CompleteLog)=some (.early s6Step160CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 160<498)]
  rw [s6Step160Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
