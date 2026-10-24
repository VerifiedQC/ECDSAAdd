import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep156
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

private def s6Step158CompleteMoves : List (Wire × Wire) := [(863,189)]

private def s6Step158EarlyControlLog : HmrEarlyControlLog := ⟨[863, 875, 908, 845, 784],[857],[856],[922, 887, 891, 903, 791, 825],[]⟩

private def s6Step158FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[784], [845], [875], [908]],[[], [], [], []]⟩,[768],[879],[857],[856],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[857, 856, 922, 887]⟩

private def s6Step158CompleteLog : HmrEarlyStepLog := ⟨s6Step158FrontLog,s6Step158CompleteMoves,s6Step158EarlyControlLog⟩

private def s6Step158ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step158ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step158ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],777⟩

private def s6Step158ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step158FrontOut : WindowBank := ⟨s6Step158ExitFOut,s6Step158ExitGOut,s6Step158ExitFvOut,s6Step158ExitGvOut⟩

private def s6Step158CompleteOut : WindowBank := s6Step158FrontOut.repacked s6Step158CompleteMoves

private def s6Step158EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step158EarlyControlPositiveArena,[857],s6Step158EarlyControlEqualityArena,[856],⟨⟨768,false⟩,[⟨⟨857,false⟩,856⟩]⟩⟩

private def s6Step158EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,863⟩,⟨⟨772,false⟩,875⟩,⟨⟨771,false⟩,908⟩,⟨⟨770,false⟩,845⟩,⟨⟨769,false⟩,784⟩]⟩

private def s6Step158EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step158EarlyControlZeroArena,s6Step158EarlyControlZeroPlan,s6Step158EarlyControlClassPlan,s6Step158EarlyControlFlagArena,s6Step158EarlyControlFittedArena,s6Step158EarlyControlHistoryArena,s6Step158EarlyControlSigmaArena,s6Step158EarlyControlOutputArena,s6Step158EarlyControlLog⟩

private def s6Step158CounterWork : List Wire := [857, 856, 922, 887]

private theorem s6Step158Counter_bounded : s6Step158CounterWork.toFinset⊆arenaWires := by norm_num [s6Step158CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step158HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158CounterDuring : Arena := ⟨s6Step158HeadFvAfter.live∪s6Step158CounterWork.toFinset,Finset.union_subset s6Step158HeadFvAfter.bounded s6Step158Counter_bounded⟩

private def s6Step158EntryFFresh : List Wire := []

private def s6Step158EntryFvFresh : List Wire := []

private def s6Step158EntryGFresh : List Wire := []

private def s6Step158EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158EntryGvAfter : Arena := s6Step158EntryFBefore

private def s6Step158EntryGvFresh : List Wire := []

private def s6Step158ExitFExtra : List Wire := [845]

private def s6Step158ExitFvExtra : List Wire := [908]

private def s6Step158ExitGExtra : List Wire := [189, 784]

private def s6Step158ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158ExitGvExtra : List Wire := [875]

private def s6Step158Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158Add0Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step158Add0_bounded : s6Step158Add0Work.toFinset⊆arenaWires := by
  have h : s6Step158Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step158Add0During : Arena := ⟨s6Step158Add0Arena.live∪s6Step158Add0Work.toFinset,Finset.union_subset s6Step158Add0Arena.bounded s6Step158Add0_bounded⟩

private def s6Step158Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158Add1Work : List Wire := [922, 887, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step158Add1_bounded : s6Step158Add1Work.toFinset⊆arenaWires := by
  have h : s6Step158Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step158Add1During : Arena := ⟨s6Step158Add1Arena.live∪s6Step158Add1Work.toFinset,Finset.union_subset s6Step158Add1Arena.bounded s6Step158Add1_bounded⟩

private def s6Step158F4FlagArena : Arena := ⟨s6Step158HeadFvAfter.live∪{857},Finset.union_subset s6Step158HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step158F4Plan : HmrHybridF4Plan := ⟨s6Step158F4FlagArena,[857],s6Step158Add0Arena,[856],s6Step158Add0During,s6Step158Add0Work,s6Step158Add1During,s6Step158Add1Work⟩

private def s6Step158HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 845],795⟩

private def s6Step158HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩

private def s6Step158HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 784],777⟩

private def s6Step158HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩

private def s6Step158FrontHead : WindowBank := ⟨s6Step158HeadFOut,s6Step158HeadGOut,s6Step158HeadFvOut,s6Step158HeadGvOut⟩

private def s6Step158EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step158EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step158EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],777⟩

private def s6Step158EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step158FrontPair : WindowBank := ⟨s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut⟩

private def s6Step158FrontSigmaArena : Arena := ⟨s6Step158EntryGvAfter.live∪{768},Finset.union_subset s6Step158EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step158HeadFFresh : List Wire := [845]

private def s6Step158HeadFvFresh : List Wire := [908]

private def s6Step158HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158HeadGFresh : List Wire := [784]

private def s6Step158HeadGvFresh : List Wire := [875]

private def s6Step158FrontPlan : HmrSourceFront := ⟨s6Step158EntryGvAfter,s6Step158FrontPair,(growRow 795 s6Step158EntryFFresh ++ (growRow 777 s6Step158EntryGFresh ++ (growRow 776 s6Step158EntryFvFresh ++ (growRow 775 s6Step158EntryGvFresh ++ [])))),s6Step158FrontSigmaArena,[768],s6Step158HeadGBefore,[879],
  s6Step158HeadFvAfter,s6Step158FrontHead,(growRow 777 s6Step158HeadGFresh ++ (growRow 795 s6Step158HeadFFresh ++ (growRow 775 s6Step158HeadGvFresh ++ (growRow 776 s6Step158HeadFvFresh ++ [])))),s6Step158F4Plan,s6Step158CounterDuring,s6Step158CounterWork,s6Step158ExitGvAfter,s6Step158FrontOut,(shrinkRow 777 s6Step158ExitGExtra ++ (shrinkRow 795 s6Step158ExitFExtra ++ (shrinkRow 776 s6Step158ExitFvExtra ++ (shrinkRow 775 s6Step158ExitGvExtra ++ []))))⟩

private def s6Step158CompletePlan : HmrEarlyStepPlan := ⟨s6Step158FrontPlan,s6Step158EarlyControlArena,s6Step158EarlyControlPlan,s6Step158CompleteMoves⟩

private theorem s6Step158Complete_apart : List.Disjoint (s6Step158CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step158CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step158Complete_owned : (s6Step158CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step158CompleteRelocationMove0Borrowed : Arena := ⟨s6Step158ExitGvAfter.live∪{189},Finset.union_subset s6Step158ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step158CompleteRelocation_move0_owned : 863∈s6Step158ExitGvAfter.live := by norm_num [s6Step158ExitGvAfter,arenaWires]

private theorem s6Step158CompleteRelocation_move0_reserve : s6Step158ExitGvAfter.reserve {189}=some s6Step158CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step158ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step158CompleteRelocation_move0_retire : s6Step158CompleteRelocationMove0Borrowed.retireSet {863}=s6Step158EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step158CompleteRelocationMove0Borrowed s6Step158EarlyControlArena {863}
  change s6Step158EarlyControlArena.live=(s6Step158ExitGvAfter.live∪{189})\{863}
  apply hmrArena_update_of_filter_check s6Step158ExitGvAfter s6Step158EarlyControlArena (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [189] [863] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step158CompleteRelocation_checked : s6Step158ExitGvAfter.checkRepack [(863,189)]=some s6Step158EarlyControlArena := by
  have tail1 : s6Step158EarlyControlArena.checkRepack []=some s6Step158EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step158ExitGvAfter s6Step158CompleteRelocationMove0Borrowed s6Step158EarlyControlArena s6Step158EarlyControlArena 863 189 []
    s6Step158CompleteRelocation_move0_owned s6Step158CompleteRelocation_move0_reserve s6Step158CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step158Complete_repack : s6Step158ExitGvAfter.checkRepack s6Step158CompleteMoves=some s6Step158EarlyControlArena := by
  simpa only [s6Step158CompleteMoves] using s6Step158CompleteRelocation_checked

private theorem s6Step158EarlyControl_branchOwned : ([879] : List Wire).toFinset⊆s6Step158EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EarlyControl_branch : compileHmrBranchRetirement s6Step158EarlyControlSigmaArena 879=some s6Step158EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step158EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step158EarlyControlSigmaArena s6Step158EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [879] rfl rfl
    decide +kernel

private theorem s6Step158EarlyControl_classEqualityBorrow : s6Step158EarlyControlPositiveArena.checkBorrow (([768, 857] : List Wire).length-1) s6Step158EarlyControlLog.classWork=some s6Step158EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step158EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step158EarlyControlEqualityArena,s6Step158EarlyControlPositiveArena,s6Step158EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step158EarlyControl_classEqualityOwned : ([768, 857] : List Wire).toFinset⊆s6Step158EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (857≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158EarlyControl_classEquality : compileHmrEqualityLog s6Step158EarlyControlPositiveArena [768, 857] 0 s6Step158EarlyControlLog.classWork=some (s6Step158EarlyControlEqualityArena,s6Step158EarlyControlLog.classWork,s6Step158EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step158EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step158EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step158EarlyControl_classOwned : ([769, 784, 768] : List Wire).toFinset⊆s6Step158EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158EarlyControl_positiveBorrow : s6Step158EarlyControlZeroArena.checkBorrow (1) s6Step158EarlyControlLog.positiveWork=some s6Step158EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step158EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step158EarlyControlPositiveArena,s6Step158EarlyControlZeroArena,s6Step158EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step158EarlyControl_class : compileHmrSourceClassLog s6Step158EarlyControlZeroArena false 769 s6Step158EarlyControlZeroPlan.top 0 768 s6Step158EarlyControlLog.positiveWork s6Step158EarlyControlLog.classWork=some s6Step158EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step158EarlyControlClassPlan s6Step158EarlyControlZeroArena false 769 s6Step158EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step158EarlyControl_classOwned
  · exact s6Step158EarlyControl_positiveBorrow
  · exact s6Step158EarlyControl_classEquality

private theorem s6Step158EarlyControl_entryRecordOwned : ([879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EarlyControl_fitBorrow : s6Step158EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step158EarlyControlLog.recordFresh=some s6Step158EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step158EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step158EarlyControlFittedArena,s6Step158EarlyControlFlagArena,s6Step158EarlyControlLog,arenaWires]

private theorem s6Step158EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step158EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158EarlyControl_fit : compileHmrRecordGrowLog s6Step158EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step158EarlyControlLog.recordFresh=some s6Step158EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step158EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step158EarlyControl_fitBorrow

private theorem s6Step158EarlyControl_flagsBorrow : s6Step158EarlyControlEqualityArena.checkBorrow (6) s6Step158EarlyControlLog.flagWork=some s6Step158EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step158EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step158EarlyControlFlagArena,s6Step158EarlyControlEqualityArena,s6Step158EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step158EarlyControl_flagsOwned : ([856, 253, 252, 251] : List Wire).toFinset⊆s6Step158EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158EarlyControl_flags : compileHmrFlagsLog s6Step158EarlyControlClassPlan.equalityArena s6Step158EarlyControlClassPlan.equality.top 253 252 251 s6Step158EarlyControlLog.flagWork=some s6Step158EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step158EarlyControl_flagsOwned⟩
  · exact s6Step158EarlyControl_flagsBorrow

private theorem s6Step158EarlyControl_historyBorrow : s6Step158EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step158EarlyControlLog.recordFresh=some s6Step158EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step158EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step158EarlyControlArena s6Step158EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step158EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step158EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EarlyControl_history : compileHmrRecordGrowLog s6Step158EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step158EarlyControlLog.recordFresh=some s6Step158EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step158EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step158EarlyControl_historyBorrow

private theorem s6Step158EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step158EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step158EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlHistoryArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EarlyControl_sigmaRelease : s6Step158EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step158EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step158EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step158EarlyControlHistoryArena s6Step158EarlyControlSigmaArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step158EarlyControl_sigma : compileHmrSigmaDropLog s6Step158EarlyControlHistoryArena false 0 0 254 768 []=some s6Step158EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step158EarlyControl_sigmaOwned⟩
  · exact s6Step158EarlyControl_sigmaRelease

private theorem s6Step158EarlyControl_zeroBorrow : s6Step158EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step158EarlyControlLog.zeroWork=some s6Step158EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step158EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step158EarlyControlArena s6Step158EarlyControlZeroArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step158EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step158EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step158EarlyControlArena (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,863),(864,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EarlyControl_zero : compileHmrEqualityLog s6Step158EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step158EarlyControlLog.zeroWork=some (s6Step158EarlyControlZeroArena,s6Step158EarlyControlLog.zeroWork,s6Step158EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step158EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step158EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step158EarlyControl_logged : s6Step158EarlyControlPlan.Logged s6Step158EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 879 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step158EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step158EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step158EarlyControl_zero
  · exact s6Step158EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step158EarlyControl_flags
  · exact s6Step158EarlyControl_fit
  · exact s6Step158EarlyControl_history
  · exact s6Step158EarlyControl_sigma
  · exact s6Step158EarlyControl_branch

private theorem s6Step158EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step158EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 879 42 s6Step158EarlyControlLog=some s6Step158EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step158EarlyControlPlan s6Step158EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 879 42 s6Step158EarlyControl_logged

private def s6Step158EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step158EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step158EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],777⟩

private def s6Step158EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step158FrontBank : WindowBank := ⟨s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow⟩

private def s6Step158Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 845, 795]

private def s6Step158Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 784, 777]

private def s6Step158Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908, 776]

private def s6Step158Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875, 775]

private theorem s6Step158Counter_apart : Disjoint s6Step158HeadFvAfter.live s6Step158CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step158HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158Counter_borrowed : s6Step158HeadFvAfter.checkBorrow 4 s6Step158CounterWork=some s6Step158CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step158HeadFvAfter s6Step158CounterDuring s6Step158CounterWork.toFinset s6Step158Counter_bounded s6Step158Counter_apart rfl

private theorem s6Step158Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step158HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step158HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158Counter_checked : compileHmrCounterStepLog s6Step158HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step158CounterWork=some s6Step158CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step158HeadFvAfter.live := fun q hq => s6Step158Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step158Counter_borrowed

private def s6Step158EntryFAfter : Arena := s6Step158EntryFBefore

private theorem s6Step158EntryBank_incomingDistinct : ([s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158EntryF_Incoming : rowsOwned s6Step158EntryFBefore [s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow] 0 s6Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158EntryFBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158EntryBank_outgoingOwned : rowsOwned s6Step158EntryGvAfter [s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step158EntryGvAfter (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158EntryF_Outgoing : rowsOwned s6Step158EntryGvAfter [s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut] :=
  hmrRows_owned_drop s6Step158EntryGvAfter [s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut] 0 s6Step158EntryBank_outgoingOwned

private theorem s6Step158EntryF_distinct : (s6Step158EntryFRow.sign::s6Step158EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158EntryF_owned : (s6Step158EntryFRow.sign::s6Step158EntryFRow.payload).toFinset⊆s6Step158EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158EntryFBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EntryF_reserved : s6Step158EntryFBefore.reserve s6Step158EntryFFresh.toFinset=some s6Step158EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158EntryFFresh,arenaWires]
  · norm_num [s6Step158EntryFBefore,s6Step158EntryFFresh,arenaWires]
  · simp only [s6Step158EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step158EntryF_checked : planRowResizeLog s6Step158EntryFBefore s6Step158EntryFRow 190 s6Step158EntryFFresh=
    some (s6Step158EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩,growRow 795 s6Step158EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step158EntryFBefore s6Step158EntryFAfter s6Step158EntryFRow 190 s6Step158EntryFFresh
    s6Step158EntryF_distinct s6Step158EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158EntryF_reserved
  have rowEq : WindowRow.mk (s6Step158EntryFRow.payload++s6Step158EntryFFresh) s6Step158EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step158EntryFvAfter : Arena := s6Step158EntryFBefore

private def s6Step158EntryFvBefore : Arena := s6Step158EntryFBefore

private theorem s6Step158EntryFv_Incoming : rowsOwned s6Step158EntryFvBefore [s6Step158EntryFvRow,s6Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow] 2 s6Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158EntryFvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158EntryFv_Outgoing : rowsOwned s6Step158EntryGvAfter [s6Step158EntryFvOut,s6Step158EntryGvOut] :=
  hmrRows_owned_drop s6Step158EntryGvAfter [s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut] 2 s6Step158EntryBank_outgoingOwned

private theorem s6Step158EntryFv_distinct : (s6Step158EntryFvRow.sign::s6Step158EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158EntryFv_owned : (s6Step158EntryFvRow.sign::s6Step158EntryFvRow.payload).toFinset⊆s6Step158EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158EntryFvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EntryFv_reserved : s6Step158EntryFvBefore.reserve s6Step158EntryFvFresh.toFinset=some s6Step158EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158EntryFvFresh,arenaWires]
  · norm_num [s6Step158EntryFvBefore,s6Step158EntryFBefore,s6Step158EntryFvFresh,arenaWires]
  · simp only [s6Step158EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step158EntryFv_checked : planRowResizeLog s6Step158EntryFvBefore s6Step158EntryFvRow 93 s6Step158EntryFvFresh=
    some (s6Step158EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩,growRow 776 s6Step158EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step158EntryFvBefore s6Step158EntryFvAfter s6Step158EntryFvRow 93 s6Step158EntryFvFresh
    s6Step158EntryFv_distinct s6Step158EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step158EntryFvRow.payload++s6Step158EntryFvFresh) s6Step158EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step158EntryGAfter : Arena := s6Step158EntryFBefore

private def s6Step158EntryGBefore : Arena := s6Step158EntryFBefore

private theorem s6Step158EntryG_Incoming : rowsOwned s6Step158EntryGBefore [s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow] 1 s6Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158EntryGBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158EntryG_Outgoing : rowsOwned s6Step158EntryGvAfter [s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut] :=
  hmrRows_owned_drop s6Step158EntryGvAfter [s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut] 1 s6Step158EntryBank_outgoingOwned

private theorem s6Step158EntryG_distinct : (s6Step158EntryGRow.sign::s6Step158EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158EntryG_owned : (s6Step158EntryGRow.sign::s6Step158EntryGRow.payload).toFinset⊆s6Step158EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158EntryGBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EntryG_reserved : s6Step158EntryGBefore.reserve s6Step158EntryGFresh.toFinset=some s6Step158EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158EntryGFresh,arenaWires]
  · norm_num [s6Step158EntryGBefore,s6Step158EntryFBefore,s6Step158EntryGFresh,arenaWires]
  · simp only [s6Step158EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step158EntryG_checked : planRowResizeLog s6Step158EntryGBefore s6Step158EntryGRow 190 s6Step158EntryGFresh=
    some (s6Step158EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],777⟩,growRow 777 s6Step158EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step158EntryGBefore s6Step158EntryGAfter s6Step158EntryGRow 190 s6Step158EntryGFresh
    s6Step158EntryG_distinct s6Step158EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158EntryG_reserved
  have rowEq : WindowRow.mk (s6Step158EntryGRow.payload++s6Step158EntryGFresh) s6Step158EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step158EntryGvBefore : Arena := s6Step158EntryFBefore

private theorem s6Step158EntryGv_Incoming : rowsOwned s6Step158EntryGvBefore [s6Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow] 3 s6Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158EntryGvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158EntryGv_Outgoing : rowsOwned s6Step158EntryGvAfter [s6Step158EntryGvOut] :=
  hmrRows_owned_drop s6Step158EntryGvAfter [s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut] 3 s6Step158EntryBank_outgoingOwned

private theorem s6Step158EntryGv_distinct : (s6Step158EntryGvRow.sign::s6Step158EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158EntryGv_owned : (s6Step158EntryGvRow.sign::s6Step158EntryGvRow.payload).toFinset⊆s6Step158EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158EntryGvBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158EntryGv_reserved : s6Step158EntryGvBefore.reserve s6Step158EntryGvFresh.toFinset=some s6Step158EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158EntryGvFresh,arenaWires]
  · norm_num [s6Step158EntryGvBefore,s6Step158EntryFBefore,s6Step158EntryGvFresh,arenaWires]
  · simp only [s6Step158EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step158EntryGv_checked : planRowResizeLog s6Step158EntryGvBefore s6Step158EntryGvRow 93 s6Step158EntryGvFresh=
    some (s6Step158EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩,growRow 775 s6Step158EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step158EntryGvBefore s6Step158EntryGvAfter s6Step158EntryGvRow 93 s6Step158EntryGvFresh
    s6Step158EntryGv_distinct s6Step158EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step158EntryGvRow.payload++s6Step158EntryGvFresh) s6Step158EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step158EntryBank_rows : planWindowRowsLog s6Step158EntryFBefore [(s6Step158EntryFRow,190),(s6Step158EntryGRow,190),(s6Step158EntryFvRow,93),(s6Step158EntryGvRow,93)] [s6Step158EntryFFresh,s6Step158EntryGFresh,s6Step158EntryFvFresh,s6Step158EntryGvFresh]=
    some (s6Step158EntryGvAfter,[s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut],(growRow 795 s6Step158EntryFFresh ++ (growRow 777 s6Step158EntryGFresh ++ (growRow 776 s6Step158EntryFvFresh ++ (growRow 775 s6Step158EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step158EntryGvAfter [] []=some (s6Step158EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step158EntryGvBefore s6Step158EntryGvAfter s6Step158EntryGvAfter
    s6Step158EntryGvRow s6Step158EntryGvOut 93 s6Step158EntryGvFresh [] [] []
    (growRow 775 s6Step158EntryGvFresh) ([]) s6Step158EntryGv_Incoming s6Step158EntryGv_checked h4 s6Step158EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step158EntryFvBefore s6Step158EntryFvAfter s6Step158EntryGvAfter
    s6Step158EntryFvRow s6Step158EntryFvOut 93 s6Step158EntryFvFresh [(s6Step158EntryGvRow,93)] [s6Step158EntryGvFresh] [s6Step158EntryGvOut]
    (growRow 776 s6Step158EntryFvFresh) ((growRow 775 s6Step158EntryGvFresh ++ [])) s6Step158EntryFv_Incoming s6Step158EntryFv_checked h3 s6Step158EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step158EntryGBefore s6Step158EntryGAfter s6Step158EntryGvAfter
    s6Step158EntryGRow s6Step158EntryGOut 190 s6Step158EntryGFresh [(s6Step158EntryFvRow,93),(s6Step158EntryGvRow,93)] [s6Step158EntryFvFresh,s6Step158EntryGvFresh] [s6Step158EntryFvOut,s6Step158EntryGvOut]
    (growRow 777 s6Step158EntryGFresh) ((growRow 776 s6Step158EntryFvFresh ++ (growRow 775 s6Step158EntryGvFresh ++ []))) s6Step158EntryG_Incoming s6Step158EntryG_checked h2 s6Step158EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step158EntryFBefore s6Step158EntryFAfter s6Step158EntryGvAfter
    s6Step158EntryFRow s6Step158EntryFOut 190 s6Step158EntryFFresh [(s6Step158EntryGRow,190),(s6Step158EntryFvRow,93),(s6Step158EntryGvRow,93)] [s6Step158EntryGFresh,s6Step158EntryFvFresh,s6Step158EntryGvFresh] [s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut]
    (growRow 795 s6Step158EntryFFresh) ((growRow 777 s6Step158EntryGFresh ++ (growRow 776 s6Step158EntryFvFresh ++ (growRow 775 s6Step158EntryGvFresh ++ [])))) s6Step158EntryF_Incoming s6Step158EntryF_checked h1 s6Step158EntryF_Outgoing
  exact h0

private theorem s6Step158EntryBank_checked : compileHmrBankResizeLog .entry s6Step158EntryFBefore ⟨s6Step158EntryFRow,s6Step158EntryGRow,s6Step158EntryFvRow,s6Step158EntryGvRow⟩ ⟨190,190,93,93⟩ [s6Step158EntryFFresh,s6Step158EntryGFresh,s6Step158EntryFvFresh,s6Step158EntryGvFresh]=
    some (s6Step158EntryGvAfter,⟨s6Step158EntryFOut,s6Step158EntryGOut,s6Step158EntryFvOut,s6Step158EntryGvOut⟩,(growRow 795 s6Step158EntryFFresh ++ (growRow 777 s6Step158EntryGFresh ++ (growRow 776 s6Step158EntryFvFresh ++ (growRow 775 s6Step158EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step158EntryBank_rows]
  rfl

private def s6Step158ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158ExitFBefore : Arena := s6Step158ExitGAfter

private def s6Step158ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 845],795⟩

private def s6Step158ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩

private def s6Step158ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 784],777⟩

private def s6Step158ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩

private theorem s6Step158ExitBank_incomingDistinct : ([s6Step158ExitGRow,s6Step158ExitFRow,s6Step158ExitFvRow,s6Step158ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158ExitF_Incoming : rowsOwned s6Step158ExitFBefore [s6Step158ExitFRow,s6Step158ExitFvRow,s6Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158ExitGRow,s6Step158ExitFRow,s6Step158ExitFvRow,s6Step158ExitGvRow] 1 s6Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158ExitFBefore (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158ExitBank_outgoingOwned : rowsOwned s6Step158ExitGvAfter [s6Step158ExitGOut,s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step158ExitGvAfter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158ExitF_Outgoing : rowsOwned s6Step158ExitGvAfter [s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut] :=
  hmrRows_owned_drop s6Step158ExitGvAfter [s6Step158ExitGOut,s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut] 1 s6Step158ExitBank_outgoingOwned

private theorem s6Step158ExitF_distinct : (s6Step158ExitFRow.sign::s6Step158ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158ExitF_owned : (s6Step158ExitFRow.sign::s6Step158ExitFRow.payload).toFinset⊆s6Step158ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158ExitFBefore (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158ExitF_retired : s6Step158ExitFBefore.retireSet s6Step158ExitFExtra.toFinset=s6Step158ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step158ExitFBefore s6Step158ExitFAfter s6Step158ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step158ExitFBefore s6Step158ExitFAfter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step158ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step158ExitF_checked : planRowResizeLog s6Step158ExitFBefore s6Step158ExitFRow 190 []=
    some (s6Step158ExitFAfter,s6Step158ExitFOut,shrinkRow 795 s6Step158ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step158ExitFBefore s6Step158ExitFRow 190 s6Step158ExitF_distinct s6Step158ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step158ExitFRow.payload.take 190) s6Step158ExitFRow.sign=s6Step158ExitFOut := by decide +kernel
  have hi : s6Step158ExitFRow.payload.drop 190=s6Step158ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step158ExitF_retired] at result
  exact result

private def s6Step158ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158ExitFvBefore : Arena := s6Step158ExitFAfter

private theorem s6Step158ExitFv_Incoming : rowsOwned s6Step158ExitFvBefore [s6Step158ExitFvRow,s6Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158ExitGRow,s6Step158ExitFRow,s6Step158ExitFvRow,s6Step158ExitGvRow] 2 s6Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158ExitFvBefore (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158ExitFv_Outgoing : rowsOwned s6Step158ExitGvAfter [s6Step158ExitFvOut,s6Step158ExitGvOut] :=
  hmrRows_owned_drop s6Step158ExitGvAfter [s6Step158ExitGOut,s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut] 2 s6Step158ExitBank_outgoingOwned

private theorem s6Step158ExitFv_distinct : (s6Step158ExitFvRow.sign::s6Step158ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158ExitFv_owned : (s6Step158ExitFvRow.sign::s6Step158ExitFvRow.payload).toFinset⊆s6Step158ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158ExitFvBefore (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158ExitFv_retired : s6Step158ExitFvBefore.retireSet s6Step158ExitFvExtra.toFinset=s6Step158ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step158ExitFvBefore s6Step158ExitFvAfter s6Step158ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step158ExitFvBefore s6Step158ExitFvAfter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step158ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step158ExitFv_checked : planRowResizeLog s6Step158ExitFvBefore s6Step158ExitFvRow 93 []=
    some (s6Step158ExitFvAfter,s6Step158ExitFvOut,shrinkRow 776 s6Step158ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step158ExitFvBefore s6Step158ExitFvRow 93 s6Step158ExitFv_distinct s6Step158ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step158ExitFvRow.payload.take 93) s6Step158ExitFvRow.sign=s6Step158ExitFvOut := by decide +kernel
  have hi : s6Step158ExitFvRow.payload.drop 93=s6Step158ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step158ExitFv_retired] at result
  exact result

private def s6Step158ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step158ExitG_Incoming : rowsOwned s6Step158ExitGBefore [s6Step158ExitGRow,s6Step158ExitFRow,s6Step158ExitFvRow,s6Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158ExitGRow,s6Step158ExitFRow,s6Step158ExitFvRow,s6Step158ExitGvRow] 0 s6Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step158ExitG_Outgoing : rowsOwned s6Step158ExitGvAfter [s6Step158ExitGOut,s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut] :=
  hmrRows_owned_drop s6Step158ExitGvAfter [s6Step158ExitGOut,s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut] 0 s6Step158ExitBank_outgoingOwned

private theorem s6Step158ExitG_distinct : (s6Step158ExitGRow.sign::s6Step158ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158ExitG_owned : (s6Step158ExitGRow.sign::s6Step158ExitGRow.payload).toFinset⊆s6Step158ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158ExitG_retired : s6Step158ExitGBefore.retireSet s6Step158ExitGExtra.toFinset=s6Step158ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step158ExitGBefore s6Step158ExitGAfter s6Step158ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step158ExitGBefore s6Step158ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step158ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step158ExitG_checked : planRowResizeLog s6Step158ExitGBefore s6Step158ExitGRow 189 []=
    some (s6Step158ExitGAfter,s6Step158ExitGOut,shrinkRow 777 s6Step158ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step158ExitGBefore s6Step158ExitGRow 189 s6Step158ExitG_distinct s6Step158ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step158ExitGRow.payload.take 189) s6Step158ExitGRow.sign=s6Step158ExitGOut := by decide +kernel
  have hi : s6Step158ExitGRow.payload.drop 189=s6Step158ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step158ExitG_retired] at result
  exact result

private def s6Step158ExitGvBefore : Arena := s6Step158ExitFvAfter

private theorem s6Step158ExitGv_Incoming : rowsOwned s6Step158ExitGvBefore [s6Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158ExitGRow,s6Step158ExitFRow,s6Step158ExitFvRow,s6Step158ExitGvRow] 3 s6Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158ExitGvBefore (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158ExitGv_Outgoing : rowsOwned s6Step158ExitGvAfter [s6Step158ExitGvOut] :=
  hmrRows_owned_drop s6Step158ExitGvAfter [s6Step158ExitGOut,s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut] 3 s6Step158ExitBank_outgoingOwned

private theorem s6Step158ExitGv_distinct : (s6Step158ExitGvRow.sign::s6Step158ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158ExitGv_owned : (s6Step158ExitGvRow.sign::s6Step158ExitGvRow.payload).toFinset⊆s6Step158ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158ExitGvBefore (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158ExitGv_retired : s6Step158ExitGvBefore.retireSet s6Step158ExitGvExtra.toFinset=s6Step158ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step158ExitGvBefore s6Step158ExitGvAfter s6Step158ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step158ExitGvBefore s6Step158ExitGvAfter (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,189),(190,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step158ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step158ExitGv_checked : planRowResizeLog s6Step158ExitGvBefore s6Step158ExitGvRow 93 []=
    some (s6Step158ExitGvAfter,s6Step158ExitGvOut,shrinkRow 775 s6Step158ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step158ExitGvBefore s6Step158ExitGvRow 93 s6Step158ExitGv_distinct s6Step158ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step158ExitGvRow.payload.take 93) s6Step158ExitGvRow.sign=s6Step158ExitGvOut := by decide +kernel
  have hi : s6Step158ExitGvRow.payload.drop 93=s6Step158ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step158ExitGv_retired] at result
  exact result

private theorem s6Step158ExitBank_rows : planWindowRowsLog s6Step158ExitGBefore [(s6Step158ExitGRow,189),(s6Step158ExitFRow,190),(s6Step158ExitFvRow,93),(s6Step158ExitGvRow,93)] [[],[],[],[]]=
    some (s6Step158ExitGvAfter,[s6Step158ExitGOut,s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut],(shrinkRow 777 s6Step158ExitGExtra ++ (shrinkRow 795 s6Step158ExitFExtra ++ (shrinkRow 776 s6Step158ExitFvExtra ++ (shrinkRow 775 s6Step158ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step158ExitGvAfter [] []=some (s6Step158ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step158ExitGvBefore s6Step158ExitGvAfter s6Step158ExitGvAfter
    s6Step158ExitGvRow s6Step158ExitGvOut 93 [] [] [] []
    (shrinkRow 775 s6Step158ExitGvExtra) ([]) s6Step158ExitGv_Incoming s6Step158ExitGv_checked h4 s6Step158ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step158ExitFvBefore s6Step158ExitFvAfter s6Step158ExitGvAfter
    s6Step158ExitFvRow s6Step158ExitFvOut 93 [] [(s6Step158ExitGvRow,93)] [[]] [s6Step158ExitGvOut]
    (shrinkRow 776 s6Step158ExitFvExtra) ((shrinkRow 775 s6Step158ExitGvExtra ++ [])) s6Step158ExitFv_Incoming s6Step158ExitFv_checked h3 s6Step158ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step158ExitFBefore s6Step158ExitFAfter s6Step158ExitGvAfter
    s6Step158ExitFRow s6Step158ExitFOut 190 [] [(s6Step158ExitFvRow,93),(s6Step158ExitGvRow,93)] [[],[]] [s6Step158ExitFvOut,s6Step158ExitGvOut]
    (shrinkRow 795 s6Step158ExitFExtra) ((shrinkRow 776 s6Step158ExitFvExtra ++ (shrinkRow 775 s6Step158ExitGvExtra ++ []))) s6Step158ExitF_Incoming s6Step158ExitF_checked h2 s6Step158ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step158ExitGBefore s6Step158ExitGAfter s6Step158ExitGvAfter
    s6Step158ExitGRow s6Step158ExitGOut 189 [] [(s6Step158ExitFRow,190),(s6Step158ExitFvRow,93),(s6Step158ExitGvRow,93)] [[],[],[]] [s6Step158ExitFOut,s6Step158ExitFvOut,s6Step158ExitGvOut]
    (shrinkRow 777 s6Step158ExitGExtra) ((shrinkRow 795 s6Step158ExitFExtra ++ (shrinkRow 776 s6Step158ExitFvExtra ++ (shrinkRow 775 s6Step158ExitGvExtra ++ [])))) s6Step158ExitG_Incoming s6Step158ExitG_checked h1 s6Step158ExitG_Outgoing
  exact h0

private theorem s6Step158ExitBank_checked : compileHmrBankResizeLog .exit s6Step158ExitGBefore ⟨s6Step158ExitFRow,s6Step158ExitGRow,s6Step158ExitFvRow,s6Step158ExitGvRow⟩ ⟨190,189,93,93⟩ [[],[],[],[]]=
    some (s6Step158ExitGvAfter,⟨s6Step158ExitFOut,s6Step158ExitGOut,s6Step158ExitFvOut,s6Step158ExitGvOut⟩,(shrinkRow 777 s6Step158ExitGExtra ++ (shrinkRow 795 s6Step158ExitFExtra ++ (shrinkRow 776 s6Step158ExitFvExtra ++ (shrinkRow 775 s6Step158ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step158ExitBank_rows]
  rfl

private theorem s6Step158Add0_apart : Disjoint s6Step158Add0Arena.live s6Step158Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step158Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158Add0_card : s6Step158Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step158Add0_borrowed : s6Step158Add0Arena.checkBorrow (hmrHybridCount s6Step158Add0Arena s6Step158Add0B.length) s6Step158Add0Work=some s6Step158Add0During := by
  have len : s6Step158Add0Work.length=hmrHybridCount s6Step158Add0Arena s6Step158Add0B.length := by
    rw [hmrHybridCount,s6Step158Add0_card]
    decide +kernel
  have nd : s6Step158Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step158Add0Arena s6Step158Add0During s6Step158Add0Work.toFinset s6Step158Add0_bounded s6Step158Add0_apart rfl

private theorem s6Step158Add0_distinct : (857::879::856::(s6Step158Add0A++s6Step158Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158Add0_owned : (857::879::856::(s6Step158Add0A++s6Step158Add0B)).toFinset⊆s6Step158Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step158Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158Add0_checked : compileHmrHybridCinLog s6Step158Add0Arena 879 857 856 s6Step158Add0A s6Step158Add0B s6Step158Add0Work=some s6Step158Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step158Add0Arena s6Step158Add0During 879 857 856 s6Step158Add0A s6Step158Add0B s6Step158Add0Work
    (by decide +kernel) (by decide +kernel) s6Step158Add0_distinct
    (fun q hq => s6Step158Add0_owned (List.mem_toFinset.mpr hq)) s6Step158Add0_borrowed

private theorem s6Step158Add1_apart : Disjoint s6Step158Add1Arena.live s6Step158Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step158Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158Add1_card : s6Step158Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step158Add1_borrowed : s6Step158Add1Arena.checkBorrow (hmrHybridCount s6Step158Add1Arena s6Step158Add1B.length) s6Step158Add1Work=some s6Step158Add1During := by
  have len : s6Step158Add1Work.length=hmrHybridCount s6Step158Add1Arena s6Step158Add1B.length := by
    rw [hmrHybridCount,s6Step158Add1_card]
    decide +kernel
  have nd : s6Step158Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step158Add1Arena s6Step158Add1During s6Step158Add1Work.toFinset s6Step158Add1_bounded s6Step158Add1_apart rfl

private theorem s6Step158Add1_distinct : (857::879::856::(s6Step158Add1A++s6Step158Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158Add1_owned : (857::879::856::(s6Step158Add1A++s6Step158Add1B)).toFinset⊆s6Step158Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step158Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158Add1_checked : compileHmrHybridCinLog s6Step158Add1Arena 879 857 856 s6Step158Add1A s6Step158Add1B s6Step158Add1Work=some s6Step158Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step158Add1Arena s6Step158Add1During 879 857 856 s6Step158Add1A s6Step158Add1B s6Step158Add1Work
    (by decide +kernel) (by decide +kernel) s6Step158Add1_distinct
    (fun q hq => s6Step158Add1_owned (List.mem_toFinset.mpr hq)) s6Step158Add1_borrowed

private theorem s6Step158F4_apart : Disjoint (s6Step158Add0A++s6Step158Add0B).toFinset (s6Step158Add1A++s6Step158Add1B).toFinset := by
  have nd : ((s6Step158Add0A++s6Step158Add0B)++(s6Step158Add1A++s6Step158Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step158F4_carry : s6Step158F4FlagArena.checkBorrow 1 [856]=some s6Step158Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step158F4FlagArena,s6Step158HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step158F4FlagArena,s6Step158HeadFvAfter,s6Step158Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step158F4_distinct : (768::879::857::856::((s6Step158Add0A++s6Step158Add1A)++(s6Step158Add0B++s6Step158Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158F4_flag : s6Step158HeadFvAfter.checkBorrow 1 [857]=some s6Step158F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step158HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step158F4_owned : (768::879::((s6Step158Add0A++s6Step158Add1A)++(s6Step158Add0B++s6Step158Add1B))).toFinset⊆s6Step158HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step158HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158F4_checked : compileHmrHybridF4Log s6Step158HeadFvAfter 768 879 s6Step158Add0A s6Step158Add0B s6Step158Add1A s6Step158Add1B [857] [856] s6Step158Add0Work s6Step158Add1Work=some s6Step158F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step158HeadFvAfter s6Step158F4FlagArena s6Step158Add0Arena s6Step158Add0During s6Step158Add1During 768 879
    s6Step158Add0A s6Step158Add0B s6Step158Add1A s6Step158Add1B [857] [856] s6Step158Add0Work s6Step158Add1Work
    (fun q hq => s6Step158F4_owned (List.mem_toFinset.mpr hq)) s6Step158F4_flag s6Step158F4_carry
    s6Step158F4_distinct s6Step158F4_apart s6Step158Add0_checked s6Step158Add1_checked

private theorem s6Step158Front_branch : s6Step158FrontSigmaArena.checkBorrow 1 [879]=some s6Step158HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step158FrontSigmaArena,s6Step158EntryGvAfter,s6Step158EntryFBefore,arenaWires]
  · change s6Step158HeadGBefore.live=(s6Step158EntryGvAfter.live∪{768})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step158EntryGvAfter s6Step158HeadGBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step158Front_entry : HmrFrontEntryValid s6Step158EntryFBefore s6Step158FrontBank 190 93 ⟨190,189,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step158FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step158EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step158EntryFBefore (fun q => ([(0,768),(769,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step158FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step158Front_sigma : s6Step158EntryGvAfter.checkBorrow 1 [768]=some s6Step158FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step158EntryGvAfter,s6Step158EntryFBefore,arenaWires]
  · rfl

private def s6Step158HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step158HeadFBefore : Arena := s6Step158HeadGAfter

private def s6Step158HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445],795⟩

private def s6Step158HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step158HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],777⟩

private def s6Step158HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private theorem s6Step158HeadBank_incomingDistinct : ([s6Step158HeadGRow,s6Step158HeadFRow,s6Step158HeadGvRow,s6Step158HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158HeadF_Incoming : rowsOwned s6Step158HeadFBefore [s6Step158HeadFRow,s6Step158HeadGvRow,s6Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158HeadGRow,s6Step158HeadFRow,s6Step158HeadGvRow,s6Step158HeadFvRow] 1 s6Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158HeadBank_outgoingOwned : rowsOwned s6Step158HeadFvAfter [s6Step158HeadGOut,s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step158HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step158HeadF_Outgoing : rowsOwned s6Step158HeadFvAfter [s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut] :=
  hmrRows_owned_drop s6Step158HeadFvAfter [s6Step158HeadGOut,s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut] 1 s6Step158HeadBank_outgoingOwned

private theorem s6Step158HeadF_distinct : (s6Step158HeadFRow.sign::s6Step158HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158HeadF_owned : (s6Step158HeadFRow.sign::s6Step158HeadFRow.payload).toFinset⊆s6Step158HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158HeadF_reserved : s6Step158HeadFBefore.reserve s6Step158HeadFFresh.toFinset=some s6Step158HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158HeadFFresh,arenaWires]
  · norm_num [s6Step158HeadFBefore,s6Step158HeadGAfter,s6Step158HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step158HeadFBefore s6Step158HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step158HeadFFresh rfl rfl
    · norm_num [s6Step158HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step158HeadF_checked : planRowResizeLog s6Step158HeadFBefore s6Step158HeadFRow 191 s6Step158HeadFFresh=
    some (s6Step158HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 845],795⟩,growRow 795 s6Step158HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step158HeadFBefore s6Step158HeadFAfter s6Step158HeadFRow 191 s6Step158HeadFFresh
    s6Step158HeadF_distinct s6Step158HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158HeadF_reserved
  have rowEq : WindowRow.mk (s6Step158HeadFRow.payload++s6Step158HeadFFresh) s6Step158HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 845],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step158HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step158HeadFvBefore : Arena := s6Step158HeadGvAfter

private theorem s6Step158HeadFv_Incoming : rowsOwned s6Step158HeadFvBefore [s6Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158HeadGRow,s6Step158HeadFRow,s6Step158HeadGvRow,s6Step158HeadFvRow] 3 s6Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step158HeadFv_Outgoing : rowsOwned s6Step158HeadFvAfter [s6Step158HeadFvOut] :=
  hmrRows_owned_drop s6Step158HeadFvAfter [s6Step158HeadGOut,s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut] 3 s6Step158HeadBank_outgoingOwned

private theorem s6Step158HeadFv_distinct : (s6Step158HeadFvRow.sign::s6Step158HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158HeadFv_owned : (s6Step158HeadFvRow.sign::s6Step158HeadFvRow.payload).toFinset⊆s6Step158HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step158HeadFv_reserved : s6Step158HeadFvBefore.reserve s6Step158HeadFvFresh.toFinset=some s6Step158HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158HeadFvFresh,arenaWires]
  · norm_num [s6Step158HeadFvBefore,s6Step158HeadGvAfter,s6Step158HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step158HeadFvAfter,s6Step158HeadFvBefore,s6Step158HeadGvAfter,s6Step158HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step158HeadFv_checked : planRowResizeLog s6Step158HeadFvBefore s6Step158HeadFvRow 94 s6Step158HeadFvFresh=
    some (s6Step158HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩,growRow 776 s6Step158HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step158HeadFvBefore s6Step158HeadFvAfter s6Step158HeadFvRow 94 s6Step158HeadFvFresh
    s6Step158HeadFv_distinct s6Step158HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step158HeadFvRow.payload++s6Step158HeadFvFresh) s6Step158HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step158HeadG_Incoming : rowsOwned s6Step158HeadGBefore [s6Step158HeadGRow,s6Step158HeadFRow,s6Step158HeadGvRow,s6Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158HeadGRow,s6Step158HeadFRow,s6Step158HeadGvRow,s6Step158HeadFvRow] 0 s6Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158HeadG_Outgoing : rowsOwned s6Step158HeadFvAfter [s6Step158HeadGOut,s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut] :=
  hmrRows_owned_drop s6Step158HeadFvAfter [s6Step158HeadGOut,s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut] 0 s6Step158HeadBank_outgoingOwned

private theorem s6Step158HeadG_distinct : (s6Step158HeadGRow.sign::s6Step158HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158HeadG_owned : (s6Step158HeadGRow.sign::s6Step158HeadGRow.payload).toFinset⊆s6Step158HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158HeadGBefore (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158HeadG_reserved : s6Step158HeadGBefore.reserve s6Step158HeadGFresh.toFinset=some s6Step158HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158HeadGFresh,arenaWires]
  · norm_num [s6Step158HeadGBefore,s6Step158HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step158HeadGBefore s6Step158HeadGAfter (fun q => ([(0,782),(783,784),(785,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,845),(846,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step158HeadGFresh rfl rfl
    · norm_num [s6Step158HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step158HeadG_checked : planRowResizeLog s6Step158HeadGBefore s6Step158HeadGRow 191 s6Step158HeadGFresh=
    some (s6Step158HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 784],777⟩,growRow 777 s6Step158HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step158HeadGBefore s6Step158HeadGAfter s6Step158HeadGRow 191 s6Step158HeadGFresh
    s6Step158HeadG_distinct s6Step158HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158HeadG_reserved
  have rowEq : WindowRow.mk (s6Step158HeadGRow.payload++s6Step158HeadGFresh) s6Step158HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 784],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step158HeadGvBefore : Arena := s6Step158HeadFAfter

private theorem s6Step158HeadGv_Incoming : rowsOwned s6Step158HeadGvBefore [s6Step158HeadGvRow,s6Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step158HeadGRow,s6Step158HeadFRow,s6Step158HeadGvRow,s6Step158HeadFvRow] 2 s6Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step158HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step158HeadGv_Outgoing : rowsOwned s6Step158HeadFvAfter [s6Step158HeadGvOut,s6Step158HeadFvOut] :=
  hmrRows_owned_drop s6Step158HeadFvAfter [s6Step158HeadGOut,s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut] 2 s6Step158HeadBank_outgoingOwned

private theorem s6Step158HeadGv_distinct : (s6Step158HeadGvRow.sign::s6Step158HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step158HeadGv_owned : (s6Step158HeadGvRow.sign::s6Step158HeadGvRow.payload).toFinset⊆s6Step158HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step158HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step158HeadGv_reserved : s6Step158HeadGvBefore.reserve s6Step158HeadGvFresh.toFinset=some s6Step158HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step158HeadGvFresh,arenaWires]
  · norm_num [s6Step158HeadGvBefore,s6Step158HeadFAfter,s6Step158HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step158HeadGvBefore s6Step158HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<856) ∨ (858≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step158HeadGvFresh rfl rfl
    · norm_num [s6Step158HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step158HeadGv_checked : planRowResizeLog s6Step158HeadGvBefore s6Step158HeadGvRow 94 s6Step158HeadGvFresh=
    some (s6Step158HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩,growRow 775 s6Step158HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step158HeadGvBefore s6Step158HeadGvAfter s6Step158HeadGvRow 94 s6Step158HeadGvFresh
    s6Step158HeadGv_distinct s6Step158HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step158HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step158HeadGvRow.payload++s6Step158HeadGvFresh) s6Step158HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step158HeadBank_rows : planWindowRowsLog s6Step158HeadGBefore [(s6Step158HeadGRow,191),(s6Step158HeadFRow,191),(s6Step158HeadGvRow,94),(s6Step158HeadFvRow,94)] [s6Step158HeadGFresh,s6Step158HeadFFresh,s6Step158HeadGvFresh,s6Step158HeadFvFresh]=
    some (s6Step158HeadFvAfter,[s6Step158HeadGOut,s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut],(growRow 777 s6Step158HeadGFresh ++ (growRow 795 s6Step158HeadFFresh ++ (growRow 775 s6Step158HeadGvFresh ++ (growRow 776 s6Step158HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step158HeadFvAfter [] []=some (s6Step158HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step158HeadFvBefore s6Step158HeadFvAfter s6Step158HeadFvAfter
    s6Step158HeadFvRow s6Step158HeadFvOut 94 s6Step158HeadFvFresh [] [] []
    (growRow 776 s6Step158HeadFvFresh) ([]) s6Step158HeadFv_Incoming s6Step158HeadFv_checked h4 s6Step158HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step158HeadGvBefore s6Step158HeadGvAfter s6Step158HeadFvAfter
    s6Step158HeadGvRow s6Step158HeadGvOut 94 s6Step158HeadGvFresh [(s6Step158HeadFvRow,94)] [s6Step158HeadFvFresh] [s6Step158HeadFvOut]
    (growRow 775 s6Step158HeadGvFresh) ((growRow 776 s6Step158HeadFvFresh ++ [])) s6Step158HeadGv_Incoming s6Step158HeadGv_checked h3 s6Step158HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step158HeadFBefore s6Step158HeadFAfter s6Step158HeadFvAfter
    s6Step158HeadFRow s6Step158HeadFOut 191 s6Step158HeadFFresh [(s6Step158HeadGvRow,94),(s6Step158HeadFvRow,94)] [s6Step158HeadGvFresh,s6Step158HeadFvFresh] [s6Step158HeadGvOut,s6Step158HeadFvOut]
    (growRow 795 s6Step158HeadFFresh) ((growRow 775 s6Step158HeadGvFresh ++ (growRow 776 s6Step158HeadFvFresh ++ []))) s6Step158HeadF_Incoming s6Step158HeadF_checked h2 s6Step158HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step158HeadGBefore s6Step158HeadGAfter s6Step158HeadFvAfter
    s6Step158HeadGRow s6Step158HeadGOut 191 s6Step158HeadGFresh [(s6Step158HeadFRow,191),(s6Step158HeadGvRow,94),(s6Step158HeadFvRow,94)] [s6Step158HeadFFresh,s6Step158HeadGvFresh,s6Step158HeadFvFresh] [s6Step158HeadFOut,s6Step158HeadGvOut,s6Step158HeadFvOut]
    (growRow 777 s6Step158HeadGFresh) ((growRow 795 s6Step158HeadFFresh ++ (growRow 775 s6Step158HeadGvFresh ++ (growRow 776 s6Step158HeadFvFresh ++ [])))) s6Step158HeadG_Incoming s6Step158HeadG_checked h1 s6Step158HeadG_Outgoing
  exact h0

private theorem s6Step158HeadBank_checked : compileHmrBankResizeLog .headroom s6Step158HeadGBefore ⟨s6Step158HeadFRow,s6Step158HeadGRow,s6Step158HeadFvRow,s6Step158HeadGvRow⟩ ⟨191,191,94,94⟩ [s6Step158HeadGFresh,s6Step158HeadFFresh,s6Step158HeadGvFresh,s6Step158HeadFvFresh]=
    some (s6Step158HeadFvAfter,⟨s6Step158HeadFOut,s6Step158HeadGOut,s6Step158HeadFvOut,s6Step158HeadGvOut⟩,(growRow 777 s6Step158HeadGFresh ++ (growRow 795 s6Step158HeadFFresh ++ (growRow 775 s6Step158HeadGvFresh ++ (growRow 776 s6Step158HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step158HeadBank_rows]
  rfl

private theorem s6Step158Front_checked : compileHmrSourceFrontLog s6Step158EntryFBefore s6Step158FrontBank 190 93 ⟨190,189,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step158FrontLog=some s6Step158FrontPlan := by
  have pairEq : s6Step158FrontPair=⟨s6Step158HeadFRow,s6Step158HeadGRow,s6Step158HeadFvRow,s6Step158HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step158FrontHead=⟨s6Step158ExitFRow,s6Step158ExitGRow,s6Step158ExitFvRow,s6Step158ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step158Add0A=s6Step158FrontHead.f.wires := by decide +kernel
  have gEq : s6Step158Add0B=s6Step158FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step158Add1A=s6Step158FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step158Add1B=s6Step158FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step158EntryFBefore s6Step158FrontBank 190 93 ⟨190,189,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step158FrontLog s6Step158FrontPlan
  · exact s6Step158Front_entry
  · exact s6Step158EntryBank_checked
  · exact s6Step158Front_sigma
  · rfl
  · exact s6Step158Front_branch
  · rfl
  · simpa only [s6Step158FrontPlan,pairEq] using s6Step158HeadBank_checked
  · simpa only [s6Step158FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step158F4_checked
  · exact s6Step158Counter_checked
  · rfl
  · simpa only [s6Step158FrontPlan,headEq] using s6Step158ExitBank_checked

private theorem s6Step158Complete_explicit_checked : compileHmrEarlyStepLog s6Step158EntryFBefore s6Step158FrontBank 190 93 ⟨190,189,93,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step158CompleteLog=some s6Step158CompletePlan := by
  let Q := s6Step158EarlyControlPlan
  have hq := s6Step158EarlyControl_plan_checked
  have fv1 : s6Step158CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step158CompleteOut.fv.payload[2]?.getD s6Step158CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step158CompleteOut.fv.payload[3]?.getD s6Step158CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step158CompleteOut.fv.payload[4]?.getD s6Step158CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step158EntryFBefore s6Step158EarlyControlArena s6Step158FrontBank 190 93 ⟨190,189,93,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step158CompleteLog s6Step158FrontPlan Q
    s6Step158Front_checked s6Step158Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step158Complete_owned s6Step158Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step158EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 s6Step158CompleteOut.fv.second (s6Step158CompleteOut.fv.payload[2]?.getD s6Step158CompleteOut.fv.sign) (s6Step158CompleteOut.fv.payload[3]?.getD s6Step158CompleteOut.fv.sign) (s6Step158CompleteOut.fv.payload[4]?.getD s6Step158CompleteOut.fv.sign) 879 42 s6Step158EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep158Arena : Arena := s6Step158EntryFBefore
def s6PrivateStep158Bank : WindowBank := s6Step158FrontBank
def s6PrivateStep158Spec : HmrSourceWalkStepLog := ⟨190,93,⟨190,189,93,93⟩,42,.early s6Step158CompleteLog⟩
def s6PrivateStep158Plan : HmrSourceStepPlan := .early s6Step158CompletePlan
theorem s6PrivateStep158_source : s6PrivateStep158Spec=s6ObservedLogs144[14] := rfl
theorem s6PrivateStep158_checked : compileHmrSourceStepLog s6PrivateStep158Arena s6PrivateStep158Bank
    s6PrivateStep158Spec.fgWidth s6PrivateStep158Spec.vWidth s6PrivateStep158Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 158 s6PrivateStep158Spec.need none s6PrivateStep158Spec.log=some s6PrivateStep158Plan := by
  change compileHmrSourceStepLog s6Step158EntryFBefore s6Step158FrontBank 190 93 ⟨190,189,93,93⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 158 42 none (.early s6Step158CompleteLog)=some (.early s6Step158CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 158<498)]
  rw [s6Step158Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
