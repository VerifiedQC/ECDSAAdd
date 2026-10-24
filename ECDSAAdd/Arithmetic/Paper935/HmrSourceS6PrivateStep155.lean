import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep153
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

private def s6Step155CompleteMoves : List (Wire × Wire) := []

private def s6Step155EarlyControlLog : HmrEarlyControlLog := ⟨[879, 887, 922, 875, 908],[891],[903],[791, 825, 810, 894, 923, 809],[]⟩

private def s6Step155FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [779]],[[922], [887], [881], [879]],[[], [], [], []]⟩,[768],[873],[875],[908],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 908, 891, 903]⟩

private def s6Step155CompleteLog : HmrEarlyStepLog := ⟨s6Step155FrontLog,s6Step155CompleteMoves,s6Step155EarlyControlLog⟩

private def s6Step155ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step155ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step155ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step155ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step155FrontOut : WindowBank := ⟨s6Step155ExitFOut,s6Step155ExitGOut,s6Step155ExitFvOut,s6Step155ExitGvOut⟩

private def s6Step155CompleteOut : WindowBank := s6Step155FrontOut.repacked s6Step155CompleteMoves

private def s6Step155EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step155EarlyControlPositiveArena,[891],s6Step155EarlyControlEqualityArena,[903],⟨⟨768,false⟩,[⟨⟨891,false⟩,903⟩]⟩⟩

private def s6Step155EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,879⟩,⟨⟨772,false⟩,887⟩,⟨⟨771,false⟩,922⟩,⟨⟨770,false⟩,875⟩,⟨⟨769,false⟩,908⟩]⟩

private def s6Step155EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step155EarlyControlZeroArena,s6Step155EarlyControlZeroPlan,s6Step155EarlyControlClassPlan,s6Step155EarlyControlFlagArena,s6Step155EarlyControlFittedArena,s6Step155EarlyControlHistoryArena,s6Step155EarlyControlSigmaArena,s6Step155EarlyControlOutputArena,s6Step155EarlyControlLog⟩

private def s6Step155CounterWork : List Wire := [875, 908, 891, 903]

private theorem s6Step155Counter_bounded : s6Step155CounterWork.toFinset⊆arenaWires := by norm_num [s6Step155CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step155HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155CounterDuring : Arena := ⟨s6Step155HeadFvAfter.live∪s6Step155CounterWork.toFinset,Finset.union_subset s6Step155HeadFvAfter.bounded s6Step155Counter_bounded⟩

private def s6Step155EntryFFresh : List Wire := []

private def s6Step155EntryFvFresh : List Wire := []

private def s6Step155EntryGFresh : List Wire := []

private def s6Step155EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155EntryGvFresh : List Wire := [779]

private def s6Step155ExitFExtra : List Wire := [887]

private def s6Step155ExitFvExtra : List Wire := [879]

private def s6Step155ExitGExtra : List Wire := [922]

private def s6Step155ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155ExitGvAfter : Arena := s6Step155ExitFvAfter

private def s6Step155Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step155Add0_bounded : s6Step155Add0Work.toFinset⊆arenaWires := by
  have h : s6Step155Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step155Add0During : Arena := ⟨s6Step155Add0Arena.live∪s6Step155Add0Work.toFinset,Finset.union_subset s6Step155Add0Arena.bounded s6Step155Add0_bounded⟩

private def s6Step155Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step155Add1_bounded : s6Step155Add1Work.toFinset⊆arenaWires := by
  have h : s6Step155Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step155Add1During : Arena := ⟨s6Step155Add1Arena.live∪s6Step155Add1Work.toFinset,Finset.union_subset s6Step155Add1Arena.bounded s6Step155Add1_bounded⟩

private def s6Step155F4FlagArena : Arena := ⟨s6Step155HeadFvAfter.live∪{875},Finset.union_subset s6Step155HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step155F4Plan : HmrHybridF4Plan := ⟨s6Step155F4FlagArena,[875],s6Step155Add0Arena,[908],s6Step155Add0During,s6Step155Add0Work,s6Step155Add1During,s6Step155Add1Work⟩

private def s6Step155HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 887],795⟩

private def s6Step155HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩

private def s6Step155HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 922],777⟩

private def s6Step155HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step155FrontHead : WindowBank := ⟨s6Step155HeadFOut,s6Step155HeadGOut,s6Step155HeadFvOut,s6Step155HeadGvOut⟩

private def s6Step155EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step155EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step155EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step155EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779],775⟩

private def s6Step155FrontPair : WindowBank := ⟨s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut⟩

private def s6Step155FrontSigmaArena : Arena := ⟨s6Step155EntryGvAfter.live∪{768},Finset.union_subset s6Step155EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step155HeadFFresh : List Wire := [887]

private def s6Step155HeadFvFresh : List Wire := [879]

private def s6Step155HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155HeadGFresh : List Wire := [922]

private def s6Step155HeadGvFresh : List Wire := [881]

private def s6Step155FrontPlan : HmrSourceFront := ⟨s6Step155EntryGvAfter,s6Step155FrontPair,(growRow 795 s6Step155EntryFFresh ++ (growRow 777 s6Step155EntryGFresh ++ (growRow 776 s6Step155EntryFvFresh ++ (growRow 775 s6Step155EntryGvFresh ++ [])))),s6Step155FrontSigmaArena,[768],s6Step155HeadGBefore,[873],
  s6Step155HeadFvAfter,s6Step155FrontHead,(growRow 777 s6Step155HeadGFresh ++ (growRow 795 s6Step155HeadFFresh ++ (growRow 775 s6Step155HeadGvFresh ++ (growRow 776 s6Step155HeadFvFresh ++ [])))),s6Step155F4Plan,s6Step155CounterDuring,s6Step155CounterWork,s6Step155ExitGvAfter,s6Step155FrontOut,(shrinkRow 777 s6Step155ExitGExtra ++ (shrinkRow 795 s6Step155ExitFExtra ++ (shrinkRow 776 s6Step155ExitFvExtra ++ (growRow 775 [] ++ []))))⟩

private def s6Step155CompletePlan : HmrEarlyStepPlan := ⟨s6Step155FrontPlan,s6Step155EarlyControlArena,s6Step155EarlyControlPlan,s6Step155CompleteMoves⟩

private theorem s6Step155Complete_apart : List.Disjoint (s6Step155CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step155CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step155Complete_owned : (s6Step155CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155Complete_repack : s6Step155ExitGvAfter.checkRepack s6Step155CompleteMoves=some s6Step155EarlyControlArena := by rfl

private theorem s6Step155EarlyControl_branchOwned : ([873] : List Wire).toFinset⊆s6Step155EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EarlyControl_branch : compileHmrBranchRetirement s6Step155EarlyControlSigmaArena 873=some s6Step155EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step155EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step155EarlyControlSigmaArena s6Step155EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [873] rfl rfl
    decide +kernel

private theorem s6Step155EarlyControl_classEqualityBorrow : s6Step155EarlyControlPositiveArena.checkBorrow (([768, 891] : List Wire).length-1) s6Step155EarlyControlLog.classWork=some s6Step155EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step155EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step155EarlyControlEqualityArena,s6Step155EarlyControlPositiveArena,s6Step155EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step155EarlyControl_classEqualityOwned : ([768, 891] : List Wire).toFinset⊆s6Step155EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155EarlyControl_classEquality : compileHmrEqualityLog s6Step155EarlyControlPositiveArena [768, 891] 0 s6Step155EarlyControlLog.classWork=some (s6Step155EarlyControlEqualityArena,s6Step155EarlyControlLog.classWork,s6Step155EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step155EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step155EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step155EarlyControl_classOwned : ([769, 908, 768] : List Wire).toFinset⊆s6Step155EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155EarlyControl_positiveBorrow : s6Step155EarlyControlZeroArena.checkBorrow (1) s6Step155EarlyControlLog.positiveWork=some s6Step155EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step155EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step155EarlyControlPositiveArena,s6Step155EarlyControlZeroArena,s6Step155EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step155EarlyControl_class : compileHmrSourceClassLog s6Step155EarlyControlZeroArena false 769 s6Step155EarlyControlZeroPlan.top 0 768 s6Step155EarlyControlLog.positiveWork s6Step155EarlyControlLog.classWork=some s6Step155EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step155EarlyControlClassPlan s6Step155EarlyControlZeroArena false 769 s6Step155EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step155EarlyControl_classOwned
  · exact s6Step155EarlyControl_positiveBorrow
  · exact s6Step155EarlyControl_classEquality

private theorem s6Step155EarlyControl_entryRecordOwned : ([873, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EarlyControl_fitBorrow : s6Step155EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step155EarlyControlLog.recordFresh=some s6Step155EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step155EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step155EarlyControlFittedArena,s6Step155EarlyControlFlagArena,s6Step155EarlyControlLog,arenaWires]

private theorem s6Step155EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step155EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155EarlyControl_fit : compileHmrRecordGrowLog s6Step155EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step155EarlyControlLog.recordFresh=some s6Step155EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step155EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step155EarlyControl_fitBorrow

private theorem s6Step155EarlyControl_flagsBorrow : s6Step155EarlyControlEqualityArena.checkBorrow (6) s6Step155EarlyControlLog.flagWork=some s6Step155EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step155EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step155EarlyControlFlagArena,s6Step155EarlyControlEqualityArena,s6Step155EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step155EarlyControl_flagsOwned : ([903, 253, 252, 251] : List Wire).toFinset⊆s6Step155EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155EarlyControl_flags : compileHmrFlagsLog s6Step155EarlyControlClassPlan.equalityArena s6Step155EarlyControlClassPlan.equality.top 253 252 251 s6Step155EarlyControlLog.flagWork=some s6Step155EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step155EarlyControl_flagsOwned⟩
  · exact s6Step155EarlyControl_flagsBorrow

private theorem s6Step155EarlyControl_historyBorrow : s6Step155EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step155EarlyControlLog.recordFresh=some s6Step155EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step155EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step155EarlyControlArena s6Step155EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step155EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step155EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EarlyControl_history : compileHmrRecordGrowLog s6Step155EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step155EarlyControlLog.recordFresh=some s6Step155EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step155EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step155EarlyControl_historyBorrow

private theorem s6Step155EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step155EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step155EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EarlyControl_sigmaRelease : s6Step155EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step155EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step155EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step155EarlyControlHistoryArena s6Step155EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step155EarlyControl_sigma : compileHmrSigmaDropLog s6Step155EarlyControlHistoryArena false 0 0 254 768 []=some s6Step155EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step155EarlyControl_sigmaOwned⟩
  · exact s6Step155EarlyControl_sigmaRelease

private theorem s6Step155EarlyControl_zeroBorrow : s6Step155EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step155EarlyControlLog.zeroWork=some s6Step155EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step155EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step155EarlyControlArena s6Step155EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step155EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step155EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step155EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step155EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step155EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EarlyControl_zero : compileHmrEqualityLog s6Step155EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step155EarlyControlLog.zeroWork=some (s6Step155EarlyControlZeroArena,s6Step155EarlyControlLog.zeroWork,s6Step155EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step155EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step155EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step155EarlyControl_logged : s6Step155EarlyControlPlan.Logged s6Step155EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 873 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step155EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step155EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step155EarlyControl_zero
  · exact s6Step155EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step155EarlyControl_flags
  · exact s6Step155EarlyControl_fit
  · exact s6Step155EarlyControl_history
  · exact s6Step155EarlyControl_sigma
  · exact s6Step155EarlyControl_branch

private theorem s6Step155EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step155EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 873 42 s6Step155EarlyControlLog=some s6Step155EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step155EarlyControlPlan s6Step155EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 873 42 s6Step155EarlyControl_logged

private def s6Step155EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step155EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step155EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step155EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874],775⟩

private def s6Step155FrontBank : WindowBank := ⟨s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow⟩

private def s6Step155Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 887, 795]

private def s6Step155Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 922, 777]

private def s6Step155Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879, 776]

private def s6Step155Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 775]

private theorem s6Step155Counter_apart : Disjoint s6Step155HeadFvAfter.live s6Step155CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step155HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155Counter_borrowed : s6Step155HeadFvAfter.checkBorrow 4 s6Step155CounterWork=some s6Step155CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step155HeadFvAfter s6Step155CounterDuring s6Step155CounterWork.toFinset s6Step155Counter_bounded s6Step155Counter_apart rfl

private theorem s6Step155Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step155HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step155HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155Counter_checked : compileHmrCounterStepLog s6Step155HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step155CounterWork=some s6Step155CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step155HeadFvAfter.live := fun q hq => s6Step155Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step155Counter_borrowed

private def s6Step155EntryFAfter : Arena := s6Step155EntryFBefore

private theorem s6Step155EntryBank_incomingDistinct : ([s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155EntryF_Incoming : rowsOwned s6Step155EntryFBefore [s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow] 0 s6Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155EntryBank_outgoingOwned : rowsOwned s6Step155EntryGvAfter [s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step155EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155EntryF_Outgoing : rowsOwned s6Step155EntryGvAfter [s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut] :=
  hmrRows_owned_drop s6Step155EntryGvAfter [s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut] 0 s6Step155EntryBank_outgoingOwned

private theorem s6Step155EntryF_distinct : (s6Step155EntryFRow.sign::s6Step155EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155EntryF_owned : (s6Step155EntryFRow.sign::s6Step155EntryFRow.payload).toFinset⊆s6Step155EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EntryF_reserved : s6Step155EntryFBefore.reserve s6Step155EntryFFresh.toFinset=some s6Step155EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155EntryFFresh,arenaWires]
  · norm_num [s6Step155EntryFBefore,s6Step155EntryFFresh,arenaWires]
  · simp only [s6Step155EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step155EntryF_checked : planRowResizeLog s6Step155EntryFBefore s6Step155EntryFRow 192 s6Step155EntryFFresh=
    some (s6Step155EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩,growRow 795 s6Step155EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step155EntryFBefore s6Step155EntryFAfter s6Step155EntryFRow 192 s6Step155EntryFFresh
    s6Step155EntryF_distinct s6Step155EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155EntryF_reserved
  have rowEq : WindowRow.mk (s6Step155EntryFRow.payload++s6Step155EntryFFresh) s6Step155EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step155EntryFvAfter : Arena := s6Step155EntryFBefore

private def s6Step155EntryFvBefore : Arena := s6Step155EntryFBefore

private theorem s6Step155EntryFv_Incoming : rowsOwned s6Step155EntryFvBefore [s6Step155EntryFvRow,s6Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow] 2 s6Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155EntryFv_Outgoing : rowsOwned s6Step155EntryGvAfter [s6Step155EntryFvOut,s6Step155EntryGvOut] :=
  hmrRows_owned_drop s6Step155EntryGvAfter [s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut] 2 s6Step155EntryBank_outgoingOwned

private theorem s6Step155EntryFv_distinct : (s6Step155EntryFvRow.sign::s6Step155EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155EntryFv_owned : (s6Step155EntryFvRow.sign::s6Step155EntryFvRow.payload).toFinset⊆s6Step155EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EntryFv_reserved : s6Step155EntryFvBefore.reserve s6Step155EntryFvFresh.toFinset=some s6Step155EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155EntryFvFresh,arenaWires]
  · norm_num [s6Step155EntryFvBefore,s6Step155EntryFBefore,s6Step155EntryFvFresh,arenaWires]
  · simp only [s6Step155EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step155EntryFv_checked : planRowResizeLog s6Step155EntryFvBefore s6Step155EntryFvRow 92 s6Step155EntryFvFresh=
    some (s6Step155EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩,growRow 776 s6Step155EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step155EntryFvBefore s6Step155EntryFvAfter s6Step155EntryFvRow 92 s6Step155EntryFvFresh
    s6Step155EntryFv_distinct s6Step155EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step155EntryFvRow.payload++s6Step155EntryFvFresh) s6Step155EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step155EntryGAfter : Arena := s6Step155EntryFBefore

private def s6Step155EntryGBefore : Arena := s6Step155EntryFBefore

private theorem s6Step155EntryG_Incoming : rowsOwned s6Step155EntryGBefore [s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow] 1 s6Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155EntryG_Outgoing : rowsOwned s6Step155EntryGvAfter [s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut] :=
  hmrRows_owned_drop s6Step155EntryGvAfter [s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut] 1 s6Step155EntryBank_outgoingOwned

private theorem s6Step155EntryG_distinct : (s6Step155EntryGRow.sign::s6Step155EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155EntryG_owned : (s6Step155EntryGRow.sign::s6Step155EntryGRow.payload).toFinset⊆s6Step155EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EntryG_reserved : s6Step155EntryGBefore.reserve s6Step155EntryGFresh.toFinset=some s6Step155EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155EntryGFresh,arenaWires]
  · norm_num [s6Step155EntryGBefore,s6Step155EntryFBefore,s6Step155EntryGFresh,arenaWires]
  · simp only [s6Step155EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step155EntryG_checked : planRowResizeLog s6Step155EntryGBefore s6Step155EntryGRow 192 s6Step155EntryGFresh=
    some (s6Step155EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩,growRow 777 s6Step155EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step155EntryGBefore s6Step155EntryGAfter s6Step155EntryGRow 192 s6Step155EntryGFresh
    s6Step155EntryG_distinct s6Step155EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155EntryG_reserved
  have rowEq : WindowRow.mk (s6Step155EntryGRow.payload++s6Step155EntryGFresh) s6Step155EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step155EntryGvBefore : Arena := s6Step155EntryFBefore

private theorem s6Step155EntryGv_Incoming : rowsOwned s6Step155EntryGvBefore [s6Step155EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow] 3 s6Step155EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155EntryGv_Outgoing : rowsOwned s6Step155EntryGvAfter [s6Step155EntryGvOut] :=
  hmrRows_owned_drop s6Step155EntryGvAfter [s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut] 3 s6Step155EntryBank_outgoingOwned

private theorem s6Step155EntryGv_distinct : (s6Step155EntryGvRow.sign::s6Step155EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155EntryGv_owned : (s6Step155EntryGvRow.sign::s6Step155EntryGvRow.payload).toFinset⊆s6Step155EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155EntryGv_reserved : s6Step155EntryGvBefore.reserve s6Step155EntryGvFresh.toFinset=some s6Step155EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155EntryGvFresh,arenaWires]
  · norm_num [s6Step155EntryGvBefore,s6Step155EntryFBefore,s6Step155EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step155EntryGvBefore s6Step155EntryGvAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step155EntryGvFresh rfl rfl
    · norm_num [s6Step155EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step155EntryGv_checked : planRowResizeLog s6Step155EntryGvBefore s6Step155EntryGvRow 92 s6Step155EntryGvFresh=
    some (s6Step155EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779],775⟩,growRow 775 s6Step155EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step155EntryGvBefore s6Step155EntryGvAfter s6Step155EntryGvRow 92 s6Step155EntryGvFresh
    s6Step155EntryGv_distinct s6Step155EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step155EntryGvRow.payload++s6Step155EntryGvFresh) s6Step155EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step155EntryBank_rows : planWindowRowsLog s6Step155EntryFBefore [(s6Step155EntryFRow,192),(s6Step155EntryGRow,192),(s6Step155EntryFvRow,92),(s6Step155EntryGvRow,92)] [s6Step155EntryFFresh,s6Step155EntryGFresh,s6Step155EntryFvFresh,s6Step155EntryGvFresh]=
    some (s6Step155EntryGvAfter,[s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut],(growRow 795 s6Step155EntryFFresh ++ (growRow 777 s6Step155EntryGFresh ++ (growRow 776 s6Step155EntryFvFresh ++ (growRow 775 s6Step155EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step155EntryGvAfter [] []=some (s6Step155EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step155EntryGvBefore s6Step155EntryGvAfter s6Step155EntryGvAfter
    s6Step155EntryGvRow s6Step155EntryGvOut 92 s6Step155EntryGvFresh [] [] []
    (growRow 775 s6Step155EntryGvFresh) ([]) s6Step155EntryGv_Incoming s6Step155EntryGv_checked h4 s6Step155EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step155EntryFvBefore s6Step155EntryFvAfter s6Step155EntryGvAfter
    s6Step155EntryFvRow s6Step155EntryFvOut 92 s6Step155EntryFvFresh [(s6Step155EntryGvRow,92)] [s6Step155EntryGvFresh] [s6Step155EntryGvOut]
    (growRow 776 s6Step155EntryFvFresh) ((growRow 775 s6Step155EntryGvFresh ++ [])) s6Step155EntryFv_Incoming s6Step155EntryFv_checked h3 s6Step155EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step155EntryGBefore s6Step155EntryGAfter s6Step155EntryGvAfter
    s6Step155EntryGRow s6Step155EntryGOut 192 s6Step155EntryGFresh [(s6Step155EntryFvRow,92),(s6Step155EntryGvRow,92)] [s6Step155EntryFvFresh,s6Step155EntryGvFresh] [s6Step155EntryFvOut,s6Step155EntryGvOut]
    (growRow 777 s6Step155EntryGFresh) ((growRow 776 s6Step155EntryFvFresh ++ (growRow 775 s6Step155EntryGvFresh ++ []))) s6Step155EntryG_Incoming s6Step155EntryG_checked h2 s6Step155EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step155EntryFBefore s6Step155EntryFAfter s6Step155EntryGvAfter
    s6Step155EntryFRow s6Step155EntryFOut 192 s6Step155EntryFFresh [(s6Step155EntryGRow,192),(s6Step155EntryFvRow,92),(s6Step155EntryGvRow,92)] [s6Step155EntryGFresh,s6Step155EntryFvFresh,s6Step155EntryGvFresh] [s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut]
    (growRow 795 s6Step155EntryFFresh) ((growRow 777 s6Step155EntryGFresh ++ (growRow 776 s6Step155EntryFvFresh ++ (growRow 775 s6Step155EntryGvFresh ++ [])))) s6Step155EntryF_Incoming s6Step155EntryF_checked h1 s6Step155EntryF_Outgoing
  exact h0

private theorem s6Step155EntryBank_checked : compileHmrBankResizeLog .entry s6Step155EntryFBefore ⟨s6Step155EntryFRow,s6Step155EntryGRow,s6Step155EntryFvRow,s6Step155EntryGvRow⟩ ⟨192,192,92,92⟩ [s6Step155EntryFFresh,s6Step155EntryGFresh,s6Step155EntryFvFresh,s6Step155EntryGvFresh]=
    some (s6Step155EntryGvAfter,⟨s6Step155EntryFOut,s6Step155EntryGOut,s6Step155EntryFvOut,s6Step155EntryGvOut⟩,(growRow 795 s6Step155EntryFFresh ++ (growRow 777 s6Step155EntryGFresh ++ (growRow 776 s6Step155EntryFvFresh ++ (growRow 775 s6Step155EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step155EntryBank_rows]
  rfl

private def s6Step155ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155ExitFBefore : Arena := s6Step155ExitGAfter

private def s6Step155ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 887],795⟩

private def s6Step155ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩

private def s6Step155ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 922],777⟩

private def s6Step155ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private theorem s6Step155ExitBank_incomingDistinct : ([s6Step155ExitGRow,s6Step155ExitFRow,s6Step155ExitFvRow,s6Step155ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155ExitF_Incoming : rowsOwned s6Step155ExitFBefore [s6Step155ExitFRow,s6Step155ExitFvRow,s6Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155ExitGRow,s6Step155ExitFRow,s6Step155ExitFvRow,s6Step155ExitGvRow] 1 s6Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step155ExitBank_outgoingOwned : rowsOwned s6Step155ExitGvAfter [s6Step155ExitGOut,s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step155ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155ExitF_Outgoing : rowsOwned s6Step155ExitGvAfter [s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut] :=
  hmrRows_owned_drop s6Step155ExitGvAfter [s6Step155ExitGOut,s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut] 1 s6Step155ExitBank_outgoingOwned

private theorem s6Step155ExitF_distinct : (s6Step155ExitFRow.sign::s6Step155ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155ExitF_owned : (s6Step155ExitFRow.sign::s6Step155ExitFRow.payload).toFinset⊆s6Step155ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155ExitF_retired : s6Step155ExitFBefore.retireSet s6Step155ExitFExtra.toFinset=s6Step155ExitFAfter := by
  unfold Arena.retireSet s6Step155ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step155ExitFBefore,s6Step155ExitGAfter,s6Step155ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step155ExitF_checked : planRowResizeLog s6Step155ExitFBefore s6Step155ExitFRow 192 []=
    some (s6Step155ExitFAfter,s6Step155ExitFOut,shrinkRow 795 s6Step155ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step155ExitFBefore s6Step155ExitFRow 192 s6Step155ExitF_distinct s6Step155ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step155ExitFRow.payload.take 192) s6Step155ExitFRow.sign=s6Step155ExitFOut := by decide +kernel
  have hi : s6Step155ExitFRow.payload.drop 192=s6Step155ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step155ExitF_retired] at result
  exact result

private def s6Step155ExitFvBefore : Arena := s6Step155ExitFAfter

private theorem s6Step155ExitFv_Incoming : rowsOwned s6Step155ExitFvBefore [s6Step155ExitFvRow,s6Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155ExitGRow,s6Step155ExitFRow,s6Step155ExitFvRow,s6Step155ExitGvRow] 2 s6Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step155ExitFv_Outgoing : rowsOwned s6Step155ExitGvAfter [s6Step155ExitFvOut,s6Step155ExitGvOut] :=
  hmrRows_owned_drop s6Step155ExitGvAfter [s6Step155ExitGOut,s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut] 2 s6Step155ExitBank_outgoingOwned

private theorem s6Step155ExitFv_distinct : (s6Step155ExitFvRow.sign::s6Step155ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155ExitFv_owned : (s6Step155ExitFvRow.sign::s6Step155ExitFvRow.payload).toFinset⊆s6Step155ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155ExitFv_retired : s6Step155ExitFvBefore.retireSet s6Step155ExitFvExtra.toFinset=s6Step155ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step155ExitFvBefore s6Step155ExitFvAfter s6Step155ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step155ExitFvBefore s6Step155ExitFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step155ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step155ExitFv_checked : planRowResizeLog s6Step155ExitFvBefore s6Step155ExitFvRow 92 []=
    some (s6Step155ExitFvAfter,s6Step155ExitFvOut,shrinkRow 776 s6Step155ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step155ExitFvBefore s6Step155ExitFvRow 92 s6Step155ExitFv_distinct s6Step155ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step155ExitFvRow.payload.take 92) s6Step155ExitFvRow.sign=s6Step155ExitFvOut := by decide +kernel
  have hi : s6Step155ExitFvRow.payload.drop 92=s6Step155ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step155ExitFv_retired] at result
  exact result

private def s6Step155ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step155ExitG_Incoming : rowsOwned s6Step155ExitGBefore [s6Step155ExitGRow,s6Step155ExitFRow,s6Step155ExitFvRow,s6Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155ExitGRow,s6Step155ExitFRow,s6Step155ExitFvRow,s6Step155ExitGvRow] 0 s6Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step155ExitG_Outgoing : rowsOwned s6Step155ExitGvAfter [s6Step155ExitGOut,s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut] :=
  hmrRows_owned_drop s6Step155ExitGvAfter [s6Step155ExitGOut,s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut] 0 s6Step155ExitBank_outgoingOwned

private theorem s6Step155ExitG_distinct : (s6Step155ExitGRow.sign::s6Step155ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155ExitG_owned : (s6Step155ExitGRow.sign::s6Step155ExitGRow.payload).toFinset⊆s6Step155ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155ExitG_retired : s6Step155ExitGBefore.retireSet s6Step155ExitGExtra.toFinset=s6Step155ExitGAfter := by
  unfold Arena.retireSet s6Step155ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step155ExitGBefore,s6Step155ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step155ExitG_checked : planRowResizeLog s6Step155ExitGBefore s6Step155ExitGRow 192 []=
    some (s6Step155ExitGAfter,s6Step155ExitGOut,shrinkRow 777 s6Step155ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step155ExitGBefore s6Step155ExitGRow 192 s6Step155ExitG_distinct s6Step155ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step155ExitGRow.payload.take 192) s6Step155ExitGRow.sign=s6Step155ExitGOut := by decide +kernel
  have hi : s6Step155ExitGRow.payload.drop 192=s6Step155ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step155ExitG_retired] at result
  exact result

private def s6Step155ExitGvBefore : Arena := s6Step155ExitFvAfter

private theorem s6Step155ExitGv_Incoming : rowsOwned s6Step155ExitGvBefore [s6Step155ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155ExitGRow,s6Step155ExitFRow,s6Step155ExitFvRow,s6Step155ExitGvRow] 3 s6Step155ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155ExitGv_Outgoing : rowsOwned s6Step155ExitGvAfter [s6Step155ExitGvOut] :=
  hmrRows_owned_drop s6Step155ExitGvAfter [s6Step155ExitGOut,s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut] 3 s6Step155ExitBank_outgoingOwned

private theorem s6Step155ExitGv_distinct : (s6Step155ExitGvRow.sign::s6Step155ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155ExitGv_owned : (s6Step155ExitGvRow.sign::s6Step155ExitGvRow.payload).toFinset⊆s6Step155ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155ExitGv_reserved : s6Step155ExitGvBefore.reserve (∅ : Finset Wire)=some s6Step155ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step155ExitGv_checked : planRowResizeLog s6Step155ExitGvBefore s6Step155ExitGvRow 93 []=
    some (s6Step155ExitGvAfter,s6Step155ExitGvOut,growRow 775 []) := by
  have result := planRowResizeLog_of_growth s6Step155ExitGvBefore s6Step155ExitGvAfter s6Step155ExitGvRow 93 []
    s6Step155ExitGv_distinct s6Step155ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155ExitGv_reserved
  have rowEq : WindowRow.mk (s6Step155ExitGvRow.payload++[]) s6Step155ExitGvRow.sign=s6Step155ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step155ExitBank_rows : planWindowRowsLog s6Step155ExitGBefore [(s6Step155ExitGRow,192),(s6Step155ExitFRow,192),(s6Step155ExitFvRow,92),(s6Step155ExitGvRow,93)] [[],[],[],[]]=
    some (s6Step155ExitGvAfter,[s6Step155ExitGOut,s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut],(shrinkRow 777 s6Step155ExitGExtra ++ (shrinkRow 795 s6Step155ExitFExtra ++ (shrinkRow 776 s6Step155ExitFvExtra ++ (growRow 775 [] ++ []))))) := by
  have h4 : planWindowRowsLog s6Step155ExitGvAfter [] []=some (s6Step155ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step155ExitGvBefore s6Step155ExitGvAfter s6Step155ExitGvAfter
    s6Step155ExitGvRow s6Step155ExitGvOut 93 [] [] [] []
    (growRow 775 []) ([]) s6Step155ExitGv_Incoming s6Step155ExitGv_checked h4 s6Step155ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step155ExitFvBefore s6Step155ExitFvAfter s6Step155ExitGvAfter
    s6Step155ExitFvRow s6Step155ExitFvOut 92 [] [(s6Step155ExitGvRow,93)] [[]] [s6Step155ExitGvOut]
    (shrinkRow 776 s6Step155ExitFvExtra) ((growRow 775 [] ++ [])) s6Step155ExitFv_Incoming s6Step155ExitFv_checked h3 s6Step155ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step155ExitFBefore s6Step155ExitFAfter s6Step155ExitGvAfter
    s6Step155ExitFRow s6Step155ExitFOut 192 [] [(s6Step155ExitFvRow,92),(s6Step155ExitGvRow,93)] [[],[]] [s6Step155ExitFvOut,s6Step155ExitGvOut]
    (shrinkRow 795 s6Step155ExitFExtra) ((shrinkRow 776 s6Step155ExitFvExtra ++ (growRow 775 [] ++ []))) s6Step155ExitF_Incoming s6Step155ExitF_checked h2 s6Step155ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step155ExitGBefore s6Step155ExitGAfter s6Step155ExitGvAfter
    s6Step155ExitGRow s6Step155ExitGOut 192 [] [(s6Step155ExitFRow,192),(s6Step155ExitFvRow,92),(s6Step155ExitGvRow,93)] [[],[],[]] [s6Step155ExitFOut,s6Step155ExitFvOut,s6Step155ExitGvOut]
    (shrinkRow 777 s6Step155ExitGExtra) ((shrinkRow 795 s6Step155ExitFExtra ++ (shrinkRow 776 s6Step155ExitFvExtra ++ (growRow 775 [] ++ [])))) s6Step155ExitG_Incoming s6Step155ExitG_checked h1 s6Step155ExitG_Outgoing
  exact h0

private theorem s6Step155ExitBank_checked : compileHmrBankResizeLog .exit s6Step155ExitGBefore ⟨s6Step155ExitFRow,s6Step155ExitGRow,s6Step155ExitFvRow,s6Step155ExitGvRow⟩ ⟨192,192,92,93⟩ [[],[],[],[]]=
    some (s6Step155ExitGvAfter,⟨s6Step155ExitFOut,s6Step155ExitGOut,s6Step155ExitFvOut,s6Step155ExitGvOut⟩,(shrinkRow 777 s6Step155ExitGExtra ++ (shrinkRow 795 s6Step155ExitFExtra ++ (shrinkRow 776 s6Step155ExitFvExtra ++ (growRow 775 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step155ExitBank_rows]
  rfl

private theorem s6Step155Add0_apart : Disjoint s6Step155Add0Arena.live s6Step155Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step155Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155Add0_card : s6Step155Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step155Add0_borrowed : s6Step155Add0Arena.checkBorrow (hmrHybridCount s6Step155Add0Arena s6Step155Add0B.length) s6Step155Add0Work=some s6Step155Add0During := by
  have len : s6Step155Add0Work.length=hmrHybridCount s6Step155Add0Arena s6Step155Add0B.length := by
    rw [hmrHybridCount,s6Step155Add0_card]
    decide +kernel
  have nd : s6Step155Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step155Add0Arena s6Step155Add0During s6Step155Add0Work.toFinset s6Step155Add0_bounded s6Step155Add0_apart rfl

private theorem s6Step155Add0_distinct : (875::873::908::(s6Step155Add0A++s6Step155Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155Add0_owned : (875::873::908::(s6Step155Add0A++s6Step155Add0B)).toFinset⊆s6Step155Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step155Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155Add0_checked : compileHmrHybridCinLog s6Step155Add0Arena 873 875 908 s6Step155Add0A s6Step155Add0B s6Step155Add0Work=some s6Step155Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step155Add0Arena s6Step155Add0During 873 875 908 s6Step155Add0A s6Step155Add0B s6Step155Add0Work
    (by decide +kernel) (by decide +kernel) s6Step155Add0_distinct
    (fun q hq => s6Step155Add0_owned (List.mem_toFinset.mpr hq)) s6Step155Add0_borrowed

private theorem s6Step155Add1_apart : Disjoint s6Step155Add1Arena.live s6Step155Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step155Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155Add1_card : s6Step155Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step155Add1_borrowed : s6Step155Add1Arena.checkBorrow (hmrHybridCount s6Step155Add1Arena s6Step155Add1B.length) s6Step155Add1Work=some s6Step155Add1During := by
  have len : s6Step155Add1Work.length=hmrHybridCount s6Step155Add1Arena s6Step155Add1B.length := by
    rw [hmrHybridCount,s6Step155Add1_card]
    decide +kernel
  have nd : s6Step155Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step155Add1Arena s6Step155Add1During s6Step155Add1Work.toFinset s6Step155Add1_bounded s6Step155Add1_apart rfl

private theorem s6Step155Add1_distinct : (875::873::908::(s6Step155Add1A++s6Step155Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155Add1_owned : (875::873::908::(s6Step155Add1A++s6Step155Add1B)).toFinset⊆s6Step155Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step155Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155Add1_checked : compileHmrHybridCinLog s6Step155Add1Arena 873 875 908 s6Step155Add1A s6Step155Add1B s6Step155Add1Work=some s6Step155Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step155Add1Arena s6Step155Add1During 873 875 908 s6Step155Add1A s6Step155Add1B s6Step155Add1Work
    (by decide +kernel) (by decide +kernel) s6Step155Add1_distinct
    (fun q hq => s6Step155Add1_owned (List.mem_toFinset.mpr hq)) s6Step155Add1_borrowed

private theorem s6Step155F4_apart : Disjoint (s6Step155Add0A++s6Step155Add0B).toFinset (s6Step155Add1A++s6Step155Add1B).toFinset := by
  have nd : ((s6Step155Add0A++s6Step155Add0B)++(s6Step155Add1A++s6Step155Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step155F4_carry : s6Step155F4FlagArena.checkBorrow 1 [908]=some s6Step155Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step155F4FlagArena,s6Step155HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step155F4FlagArena,s6Step155HeadFvAfter,s6Step155Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step155F4_distinct : (768::873::875::908::((s6Step155Add0A++s6Step155Add1A)++(s6Step155Add0B++s6Step155Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155F4_flag : s6Step155HeadFvAfter.checkBorrow 1 [875]=some s6Step155F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step155HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step155F4_owned : (768::873::((s6Step155Add0A++s6Step155Add1A)++(s6Step155Add0B++s6Step155Add1B))).toFinset⊆s6Step155HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step155HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155F4_checked : compileHmrHybridF4Log s6Step155HeadFvAfter 768 873 s6Step155Add0A s6Step155Add0B s6Step155Add1A s6Step155Add1B [875] [908] s6Step155Add0Work s6Step155Add1Work=some s6Step155F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step155HeadFvAfter s6Step155F4FlagArena s6Step155Add0Arena s6Step155Add0During s6Step155Add1During 768 873
    s6Step155Add0A s6Step155Add0B s6Step155Add1A s6Step155Add1B [875] [908] s6Step155Add0Work s6Step155Add1Work
    (fun q hq => s6Step155F4_owned (List.mem_toFinset.mpr hq)) s6Step155F4_flag s6Step155F4_carry
    s6Step155F4_distinct s6Step155F4_apart s6Step155Add0_checked s6Step155Add1_checked

private theorem s6Step155Front_branch : s6Step155FrontSigmaArena.checkBorrow 1 [873]=some s6Step155HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step155FrontSigmaArena,s6Step155EntryGvAfter,arenaWires]
  · change s6Step155HeadGBefore.live=(s6Step155EntryGvAfter.live∪{768})∪{873}
    apply hmrArena_union_pair_of_filter_check s6Step155EntryGvAfter s6Step155HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 873 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step155Front_entry : HmrFrontEntryValid s6Step155EntryFBefore s6Step155FrontBank 192 92 ⟨192,192,92,93⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step155FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step155EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step155EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step155FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step155Front_sigma : s6Step155EntryGvAfter.checkBorrow 1 [768]=some s6Step155FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step155EntryGvAfter,arenaWires]
  · rfl

private def s6Step155HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step155HeadFBefore : Arena := s6Step155HeadGAfter

private def s6Step155HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step155HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step155HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step155HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779],775⟩

private theorem s6Step155HeadBank_incomingDistinct : ([s6Step155HeadGRow,s6Step155HeadFRow,s6Step155HeadGvRow,s6Step155HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155HeadF_Incoming : rowsOwned s6Step155HeadFBefore [s6Step155HeadFRow,s6Step155HeadGvRow,s6Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155HeadGRow,s6Step155HeadFRow,s6Step155HeadGvRow,s6Step155HeadFvRow] 1 s6Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155HeadBank_outgoingOwned : rowsOwned s6Step155HeadFvAfter [s6Step155HeadGOut,s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step155HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step155HeadF_Outgoing : rowsOwned s6Step155HeadFvAfter [s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut] :=
  hmrRows_owned_drop s6Step155HeadFvAfter [s6Step155HeadGOut,s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut] 1 s6Step155HeadBank_outgoingOwned

private theorem s6Step155HeadF_distinct : (s6Step155HeadFRow.sign::s6Step155HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155HeadF_owned : (s6Step155HeadFRow.sign::s6Step155HeadFRow.payload).toFinset⊆s6Step155HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155HeadF_reserved : s6Step155HeadFBefore.reserve s6Step155HeadFFresh.toFinset=some s6Step155HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155HeadFFresh,arenaWires]
  · norm_num [s6Step155HeadFBefore,s6Step155HeadGAfter,s6Step155HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step155HeadFBefore s6Step155HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step155HeadFFresh rfl rfl
    · norm_num [s6Step155HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step155HeadF_checked : planRowResizeLog s6Step155HeadFBefore s6Step155HeadFRow 193 s6Step155HeadFFresh=
    some (s6Step155HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 887],795⟩,growRow 795 s6Step155HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step155HeadFBefore s6Step155HeadFAfter s6Step155HeadFRow 193 s6Step155HeadFFresh
    s6Step155HeadF_distinct s6Step155HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155HeadF_reserved
  have rowEq : WindowRow.mk (s6Step155HeadFRow.payload++s6Step155HeadFFresh) s6Step155HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 887],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step155HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step155HeadFvBefore : Arena := s6Step155HeadGvAfter

private theorem s6Step155HeadFv_Incoming : rowsOwned s6Step155HeadFvBefore [s6Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155HeadGRow,s6Step155HeadFRow,s6Step155HeadGvRow,s6Step155HeadFvRow] 3 s6Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step155HeadFv_Outgoing : rowsOwned s6Step155HeadFvAfter [s6Step155HeadFvOut] :=
  hmrRows_owned_drop s6Step155HeadFvAfter [s6Step155HeadGOut,s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut] 3 s6Step155HeadBank_outgoingOwned

private theorem s6Step155HeadFv_distinct : (s6Step155HeadFvRow.sign::s6Step155HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155HeadFv_owned : (s6Step155HeadFvRow.sign::s6Step155HeadFvRow.payload).toFinset⊆s6Step155HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step155HeadFv_reserved : s6Step155HeadFvBefore.reserve s6Step155HeadFvFresh.toFinset=some s6Step155HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155HeadFvFresh,arenaWires]
  · norm_num [s6Step155HeadFvBefore,s6Step155HeadGvAfter,s6Step155HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step155HeadFvAfter,s6Step155HeadFvBefore,s6Step155HeadGvAfter,s6Step155HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step155HeadFv_checked : planRowResizeLog s6Step155HeadFvBefore s6Step155HeadFvRow 93 s6Step155HeadFvFresh=
    some (s6Step155HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩,growRow 776 s6Step155HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step155HeadFvBefore s6Step155HeadFvAfter s6Step155HeadFvRow 93 s6Step155HeadFvFresh
    s6Step155HeadFv_distinct s6Step155HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step155HeadFvRow.payload++s6Step155HeadFvFresh) s6Step155HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 879],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step155HeadG_Incoming : rowsOwned s6Step155HeadGBefore [s6Step155HeadGRow,s6Step155HeadFRow,s6Step155HeadGvRow,s6Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155HeadGRow,s6Step155HeadFRow,s6Step155HeadGvRow,s6Step155HeadFvRow] 0 s6Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155HeadG_Outgoing : rowsOwned s6Step155HeadFvAfter [s6Step155HeadGOut,s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut] :=
  hmrRows_owned_drop s6Step155HeadFvAfter [s6Step155HeadGOut,s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut] 0 s6Step155HeadBank_outgoingOwned

private theorem s6Step155HeadG_distinct : (s6Step155HeadGRow.sign::s6Step155HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155HeadG_owned : (s6Step155HeadGRow.sign::s6Step155HeadGRow.payload).toFinset⊆s6Step155HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155HeadG_reserved : s6Step155HeadGBefore.reserve s6Step155HeadGFresh.toFinset=some s6Step155HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155HeadGFresh,arenaWires]
  · norm_num [s6Step155HeadGBefore,s6Step155HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step155HeadGBefore s6Step155HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step155HeadGFresh rfl rfl
    · norm_num [s6Step155HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step155HeadG_checked : planRowResizeLog s6Step155HeadGBefore s6Step155HeadGRow 193 s6Step155HeadGFresh=
    some (s6Step155HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 922],777⟩,growRow 777 s6Step155HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step155HeadGBefore s6Step155HeadGAfter s6Step155HeadGRow 193 s6Step155HeadGFresh
    s6Step155HeadG_distinct s6Step155HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155HeadG_reserved
  have rowEq : WindowRow.mk (s6Step155HeadGRow.payload++s6Step155HeadGFresh) s6Step155HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 922],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step155HeadGvBefore : Arena := s6Step155HeadFAfter

private theorem s6Step155HeadGv_Incoming : rowsOwned s6Step155HeadGvBefore [s6Step155HeadGvRow,s6Step155HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step155HeadGRow,s6Step155HeadFRow,s6Step155HeadGvRow,s6Step155HeadFvRow] 2 s6Step155HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step155HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step155HeadGv_Outgoing : rowsOwned s6Step155HeadFvAfter [s6Step155HeadGvOut,s6Step155HeadFvOut] :=
  hmrRows_owned_drop s6Step155HeadFvAfter [s6Step155HeadGOut,s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut] 2 s6Step155HeadBank_outgoingOwned

private theorem s6Step155HeadGv_distinct : (s6Step155HeadGvRow.sign::s6Step155HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step155HeadGv_owned : (s6Step155HeadGvRow.sign::s6Step155HeadGvRow.payload).toFinset⊆s6Step155HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step155HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step155HeadGv_reserved : s6Step155HeadGvBefore.reserve s6Step155HeadGvFresh.toFinset=some s6Step155HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step155HeadGvFresh,arenaWires]
  · norm_num [s6Step155HeadGvBefore,s6Step155HeadFAfter,s6Step155HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step155HeadGvBefore s6Step155HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step155HeadGvFresh rfl rfl
    · norm_num [s6Step155HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step155HeadGv_checked : planRowResizeLog s6Step155HeadGvBefore s6Step155HeadGvRow 93 s6Step155HeadGvFresh=
    some (s6Step155HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩,growRow 775 s6Step155HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step155HeadGvBefore s6Step155HeadGvAfter s6Step155HeadGvRow 93 s6Step155HeadGvFresh
    s6Step155HeadGv_distinct s6Step155HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step155HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step155HeadGvRow.payload++s6Step155HeadGvFresh) s6Step155HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step155HeadBank_rows : planWindowRowsLog s6Step155HeadGBefore [(s6Step155HeadGRow,193),(s6Step155HeadFRow,193),(s6Step155HeadGvRow,93),(s6Step155HeadFvRow,93)] [s6Step155HeadGFresh,s6Step155HeadFFresh,s6Step155HeadGvFresh,s6Step155HeadFvFresh]=
    some (s6Step155HeadFvAfter,[s6Step155HeadGOut,s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut],(growRow 777 s6Step155HeadGFresh ++ (growRow 795 s6Step155HeadFFresh ++ (growRow 775 s6Step155HeadGvFresh ++ (growRow 776 s6Step155HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step155HeadFvAfter [] []=some (s6Step155HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step155HeadFvBefore s6Step155HeadFvAfter s6Step155HeadFvAfter
    s6Step155HeadFvRow s6Step155HeadFvOut 93 s6Step155HeadFvFresh [] [] []
    (growRow 776 s6Step155HeadFvFresh) ([]) s6Step155HeadFv_Incoming s6Step155HeadFv_checked h4 s6Step155HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step155HeadGvBefore s6Step155HeadGvAfter s6Step155HeadFvAfter
    s6Step155HeadGvRow s6Step155HeadGvOut 93 s6Step155HeadGvFresh [(s6Step155HeadFvRow,93)] [s6Step155HeadFvFresh] [s6Step155HeadFvOut]
    (growRow 775 s6Step155HeadGvFresh) ((growRow 776 s6Step155HeadFvFresh ++ [])) s6Step155HeadGv_Incoming s6Step155HeadGv_checked h3 s6Step155HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step155HeadFBefore s6Step155HeadFAfter s6Step155HeadFvAfter
    s6Step155HeadFRow s6Step155HeadFOut 193 s6Step155HeadFFresh [(s6Step155HeadGvRow,93),(s6Step155HeadFvRow,93)] [s6Step155HeadGvFresh,s6Step155HeadFvFresh] [s6Step155HeadGvOut,s6Step155HeadFvOut]
    (growRow 795 s6Step155HeadFFresh) ((growRow 775 s6Step155HeadGvFresh ++ (growRow 776 s6Step155HeadFvFresh ++ []))) s6Step155HeadF_Incoming s6Step155HeadF_checked h2 s6Step155HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step155HeadGBefore s6Step155HeadGAfter s6Step155HeadFvAfter
    s6Step155HeadGRow s6Step155HeadGOut 193 s6Step155HeadGFresh [(s6Step155HeadFRow,193),(s6Step155HeadGvRow,93),(s6Step155HeadFvRow,93)] [s6Step155HeadFFresh,s6Step155HeadGvFresh,s6Step155HeadFvFresh] [s6Step155HeadFOut,s6Step155HeadGvOut,s6Step155HeadFvOut]
    (growRow 777 s6Step155HeadGFresh) ((growRow 795 s6Step155HeadFFresh ++ (growRow 775 s6Step155HeadGvFresh ++ (growRow 776 s6Step155HeadFvFresh ++ [])))) s6Step155HeadG_Incoming s6Step155HeadG_checked h1 s6Step155HeadG_Outgoing
  exact h0

private theorem s6Step155HeadBank_checked : compileHmrBankResizeLog .headroom s6Step155HeadGBefore ⟨s6Step155HeadFRow,s6Step155HeadGRow,s6Step155HeadFvRow,s6Step155HeadGvRow⟩ ⟨193,193,93,93⟩ [s6Step155HeadGFresh,s6Step155HeadFFresh,s6Step155HeadGvFresh,s6Step155HeadFvFresh]=
    some (s6Step155HeadFvAfter,⟨s6Step155HeadFOut,s6Step155HeadGOut,s6Step155HeadFvOut,s6Step155HeadGvOut⟩,(growRow 777 s6Step155HeadGFresh ++ (growRow 795 s6Step155HeadFFresh ++ (growRow 775 s6Step155HeadGvFresh ++ (growRow 776 s6Step155HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step155HeadBank_rows]
  rfl

private theorem s6Step155Front_checked : compileHmrSourceFrontLog s6Step155EntryFBefore s6Step155FrontBank 192 92 ⟨192,192,92,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step155FrontLog=some s6Step155FrontPlan := by
  have pairEq : s6Step155FrontPair=⟨s6Step155HeadFRow,s6Step155HeadGRow,s6Step155HeadFvRow,s6Step155HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step155FrontHead=⟨s6Step155ExitFRow,s6Step155ExitGRow,s6Step155ExitFvRow,s6Step155ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step155Add0A=s6Step155FrontHead.f.wires := by decide +kernel
  have gEq : s6Step155Add0B=s6Step155FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step155Add1A=s6Step155FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step155Add1B=s6Step155FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step155EntryFBefore s6Step155FrontBank 192 92 ⟨192,192,92,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step155FrontLog s6Step155FrontPlan
  · exact s6Step155Front_entry
  · exact s6Step155EntryBank_checked
  · exact s6Step155Front_sigma
  · rfl
  · exact s6Step155Front_branch
  · rfl
  · simpa only [s6Step155FrontPlan,pairEq] using s6Step155HeadBank_checked
  · simpa only [s6Step155FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step155F4_checked
  · exact s6Step155Counter_checked
  · rfl
  · simpa only [s6Step155FrontPlan,headEq] using s6Step155ExitBank_checked

private theorem s6Step155Complete_explicit_checked : compileHmrEarlyStepLog s6Step155EntryFBefore s6Step155FrontBank 192 92 ⟨192,192,92,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step155CompleteLog=some s6Step155CompletePlan := by
  let Q := s6Step155EarlyControlPlan
  have hq := s6Step155EarlyControl_plan_checked
  have fv1 : s6Step155CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step155CompleteOut.fv.payload[2]?.getD s6Step155CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step155CompleteOut.fv.payload[3]?.getD s6Step155CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step155CompleteOut.fv.payload[4]?.getD s6Step155CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step155EntryFBefore s6Step155EarlyControlArena s6Step155FrontBank 192 92 ⟨192,192,92,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step155CompleteLog s6Step155FrontPlan Q
    s6Step155Front_checked s6Step155Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step155Complete_owned s6Step155Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step155EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 s6Step155CompleteOut.fv.second (s6Step155CompleteOut.fv.payload[2]?.getD s6Step155CompleteOut.fv.sign) (s6Step155CompleteOut.fv.payload[3]?.getD s6Step155CompleteOut.fv.sign) (s6Step155CompleteOut.fv.payload[4]?.getD s6Step155CompleteOut.fv.sign) 873 42 s6Step155EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep155Arena : Arena := s6Step155EntryFBefore
def s6PrivateStep155Bank : WindowBank := s6Step155FrontBank
def s6PrivateStep155Spec : HmrSourceWalkStepLog := ⟨192,92,⟨192,192,92,93⟩,42,.early s6Step155CompleteLog⟩
def s6PrivateStep155Plan : HmrSourceStepPlan := .early s6Step155CompletePlan
theorem s6PrivateStep155_source : s6PrivateStep155Spec=s6ObservedLogs144[11] := rfl
theorem s6PrivateStep155_checked : compileHmrSourceStepLog s6PrivateStep155Arena s6PrivateStep155Bank
    s6PrivateStep155Spec.fgWidth s6PrivateStep155Spec.vWidth s6PrivateStep155Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 155 s6PrivateStep155Spec.need none s6PrivateStep155Spec.log=some s6PrivateStep155Plan := by
  change compileHmrSourceStepLog s6Step155EntryFBefore s6Step155FrontBank 192 92 ⟨192,192,92,93⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 155 42 none (.early s6Step155CompleteLog)=some (.early s6Step155CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 155<498)]
  rw [s6Step155Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
