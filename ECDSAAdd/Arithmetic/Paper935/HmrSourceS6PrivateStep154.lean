import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep152
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

private def s6Step154CompleteMoves : List (Wire × Wire) := [(873,448)]

private def s6Step154EarlyControlLog : HmrEarlyControlLog := ⟨[873, 922, 887, 881, 879],[875],[908],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step154FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [875], [], [874, 922]],[[908], [879], [887], [881]],[[], [], [], []]⟩,[768],[779],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step154CompleteLog : HmrEarlyStepLog := ⟨s6Step154FrontLog,s6Step154CompleteMoves,s6Step154EarlyControlLog⟩

private def s6Step154ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step154ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step154ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step154ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874],775⟩

private def s6Step154FrontOut : WindowBank := ⟨s6Step154ExitFOut,s6Step154ExitGOut,s6Step154ExitFvOut,s6Step154ExitGvOut⟩

private def s6Step154CompleteOut : WindowBank := s6Step154FrontOut.repacked s6Step154CompleteMoves

private def s6Step154EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step154EarlyControlPositiveArena,[875],s6Step154EarlyControlEqualityArena,[908],⟨⟨768,false⟩,[⟨⟨875,false⟩,908⟩]⟩⟩

private def s6Step154EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,873⟩,⟨⟨772,false⟩,922⟩,⟨⟨771,false⟩,887⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,879⟩]⟩

private def s6Step154EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step154EarlyControlZeroArena,s6Step154EarlyControlZeroPlan,s6Step154EarlyControlClassPlan,s6Step154EarlyControlFlagArena,s6Step154EarlyControlFittedArena,s6Step154EarlyControlHistoryArena,s6Step154EarlyControlSigmaArena,s6Step154EarlyControlOutputArena,s6Step154EarlyControlLog⟩

private def s6Step154CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step154Counter_bounded : s6Step154CounterWork.toFinset⊆arenaWires := by norm_num [s6Step154CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step154HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154CounterDuring : Arena := ⟨s6Step154HeadFvAfter.live∪s6Step154CounterWork.toFinset,Finset.union_subset s6Step154HeadFvAfter.bounded s6Step154Counter_bounded⟩

private def s6Step154EntryFFresh : List Wire := []

private def s6Step154EntryFvFresh : List Wire := []

private def s6Step154EntryGFresh : List Wire := [875]

private def s6Step154EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154EntryGvFresh : List Wire := [874, 922]

private def s6Step154ExitFExtra : List Wire := [448, 879]

private def s6Step154ExitFvExtra : List Wire := [881]

private def s6Step154ExitGExtra : List Wire := [875, 908]

private def s6Step154ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154ExitGvExtra : List Wire := [922, 887]

private def s6Step154Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step154Add0_bounded : s6Step154Add0Work.toFinset⊆arenaWires := by
  have h : s6Step154Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step154Add0During : Arena := ⟨s6Step154Add0Arena.live∪s6Step154Add0Work.toFinset,Finset.union_subset s6Step154Add0Arena.bounded s6Step154Add0_bounded⟩

private def s6Step154Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step154Add1_bounded : s6Step154Add1Work.toFinset⊆arenaWires := by
  have h : s6Step154Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step154Add1During : Arena := ⟨s6Step154Add1Arena.live∪s6Step154Add1Work.toFinset,Finset.union_subset s6Step154Add1Arena.bounded s6Step154Add1_bounded⟩

private def s6Step154F4FlagArena : Arena := ⟨s6Step154HeadFvAfter.live∪{891},Finset.union_subset s6Step154HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step154F4Plan : HmrHybridF4Plan := ⟨s6Step154F4FlagArena,[891],s6Step154Add0Arena,[903],s6Step154Add0During,s6Step154Add0Work,s6Step154Add1During,s6Step154Add1Work⟩

private def s6Step154HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 879],795⟩

private def s6Step154HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 881],776⟩

private def s6Step154HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875, 908],777⟩

private def s6Step154HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922, 887],775⟩

private def s6Step154FrontHead : WindowBank := ⟨s6Step154HeadFOut,s6Step154HeadGOut,s6Step154HeadFvOut,s6Step154HeadGvOut⟩

private def s6Step154EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step154EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step154EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875],777⟩

private def s6Step154EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922],775⟩

private def s6Step154FrontPair : WindowBank := ⟨s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut⟩

private def s6Step154FrontSigmaArena : Arena := ⟨s6Step154EntryGvAfter.live∪{768},Finset.union_subset s6Step154EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step154HeadFFresh : List Wire := [879]

private def s6Step154HeadFvFresh : List Wire := [881]

private def s6Step154HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154HeadGFresh : List Wire := [908]

private def s6Step154HeadGvFresh : List Wire := [887]

private def s6Step154FrontPlan : HmrSourceFront := ⟨s6Step154EntryGvAfter,s6Step154FrontPair,(growRow 795 s6Step154EntryFFresh ++ (growRow 777 s6Step154EntryGFresh ++ (growRow 776 s6Step154EntryFvFresh ++ (growRow 775 s6Step154EntryGvFresh ++ [])))),s6Step154FrontSigmaArena,[768],s6Step154HeadGBefore,[779],
  s6Step154HeadFvAfter,s6Step154FrontHead,(growRow 777 s6Step154HeadGFresh ++ (growRow 795 s6Step154HeadFFresh ++ (growRow 775 s6Step154HeadGvFresh ++ (growRow 776 s6Step154HeadFvFresh ++ [])))),s6Step154F4Plan,s6Step154CounterDuring,s6Step154CounterWork,s6Step154ExitGvAfter,s6Step154FrontOut,(shrinkRow 777 s6Step154ExitGExtra ++ (shrinkRow 795 s6Step154ExitFExtra ++ (shrinkRow 776 s6Step154ExitFvExtra ++ (shrinkRow 775 s6Step154ExitGvExtra ++ []))))⟩

private def s6Step154CompletePlan : HmrEarlyStepPlan := ⟨s6Step154FrontPlan,s6Step154EarlyControlArena,s6Step154EarlyControlPlan,s6Step154CompleteMoves⟩

private theorem s6Step154Complete_apart : List.Disjoint (s6Step154CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step154CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step154Complete_owned : (s6Step154CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step154CompleteRelocationMove0Borrowed : Arena := ⟨s6Step154ExitGvAfter.live∪{448},Finset.union_subset s6Step154ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step154CompleteRelocation_move0_owned : 873∈s6Step154ExitGvAfter.live := by norm_num [s6Step154ExitGvAfter,arenaWires]

private theorem s6Step154CompleteRelocation_move0_reserve : s6Step154ExitGvAfter.reserve {448}=some s6Step154CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step154ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step154CompleteRelocation_move0_retire : s6Step154CompleteRelocationMove0Borrowed.retireSet {873}=s6Step154EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step154CompleteRelocationMove0Borrowed s6Step154EarlyControlArena {873}
  change s6Step154EarlyControlArena.live=(s6Step154ExitGvAfter.live∪{448})\{873}
  apply hmrArena_update_of_filter_check s6Step154ExitGvAfter s6Step154EarlyControlArena (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [448] [873] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step154CompleteRelocation_checked : s6Step154ExitGvAfter.checkRepack [(873,448)]=some s6Step154EarlyControlArena := by
  have tail1 : s6Step154EarlyControlArena.checkRepack []=some s6Step154EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step154ExitGvAfter s6Step154CompleteRelocationMove0Borrowed s6Step154EarlyControlArena s6Step154EarlyControlArena 873 448 []
    s6Step154CompleteRelocation_move0_owned s6Step154CompleteRelocation_move0_reserve s6Step154CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step154Complete_repack : s6Step154ExitGvAfter.checkRepack s6Step154CompleteMoves=some s6Step154EarlyControlArena := by
  simpa only [s6Step154CompleteMoves] using s6Step154CompleteRelocation_checked

private theorem s6Step154EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s6Step154EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EarlyControl_branch : compileHmrBranchRetirement s6Step154EarlyControlSigmaArena 779=some s6Step154EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step154EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step154EarlyControlSigmaArena s6Step154EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [779] rfl rfl
    decide +kernel

private theorem s6Step154EarlyControl_classEqualityBorrow : s6Step154EarlyControlPositiveArena.checkBorrow (([768, 875] : List Wire).length-1) s6Step154EarlyControlLog.classWork=some s6Step154EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step154EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step154EarlyControlEqualityArena,s6Step154EarlyControlPositiveArena,s6Step154EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step154EarlyControl_classEqualityOwned : ([768, 875] : List Wire).toFinset⊆s6Step154EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154EarlyControl_classEquality : compileHmrEqualityLog s6Step154EarlyControlPositiveArena [768, 875] 0 s6Step154EarlyControlLog.classWork=some (s6Step154EarlyControlEqualityArena,s6Step154EarlyControlLog.classWork,s6Step154EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step154EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step154EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step154EarlyControl_classOwned : ([769, 879, 768] : List Wire).toFinset⊆s6Step154EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154EarlyControl_positiveBorrow : s6Step154EarlyControlZeroArena.checkBorrow (1) s6Step154EarlyControlLog.positiveWork=some s6Step154EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step154EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step154EarlyControlPositiveArena,s6Step154EarlyControlZeroArena,s6Step154EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step154EarlyControl_class : compileHmrSourceClassLog s6Step154EarlyControlZeroArena false 769 s6Step154EarlyControlZeroPlan.top 0 768 s6Step154EarlyControlLog.positiveWork s6Step154EarlyControlLog.classWork=some s6Step154EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step154EarlyControlClassPlan s6Step154EarlyControlZeroArena false 769 s6Step154EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step154EarlyControl_classOwned
  · exact s6Step154EarlyControl_positiveBorrow
  · exact s6Step154EarlyControl_classEquality

private theorem s6Step154EarlyControl_entryRecordOwned : ([779, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EarlyControl_fitBorrow : s6Step154EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step154EarlyControlLog.recordFresh=some s6Step154EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step154EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step154EarlyControlFittedArena,s6Step154EarlyControlFlagArena,s6Step154EarlyControlLog,arenaWires]

private theorem s6Step154EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step154EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154EarlyControl_fit : compileHmrRecordGrowLog s6Step154EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step154EarlyControlLog.recordFresh=some s6Step154EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step154EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step154EarlyControl_fitBorrow

private theorem s6Step154EarlyControl_flagsBorrow : s6Step154EarlyControlEqualityArena.checkBorrow (6) s6Step154EarlyControlLog.flagWork=some s6Step154EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step154EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step154EarlyControlFlagArena,s6Step154EarlyControlEqualityArena,s6Step154EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step154EarlyControl_flagsOwned : ([908, 253, 252, 251] : List Wire).toFinset⊆s6Step154EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154EarlyControl_flags : compileHmrFlagsLog s6Step154EarlyControlClassPlan.equalityArena s6Step154EarlyControlClassPlan.equality.top 253 252 251 s6Step154EarlyControlLog.flagWork=some s6Step154EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step154EarlyControl_flagsOwned⟩
  · exact s6Step154EarlyControl_flagsBorrow

private theorem s6Step154EarlyControl_historyBorrow : s6Step154EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step154EarlyControlLog.recordFresh=some s6Step154EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step154EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step154EarlyControlArena s6Step154EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step154EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step154EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EarlyControl_history : compileHmrRecordGrowLog s6Step154EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step154EarlyControlLog.recordFresh=some s6Step154EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step154EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step154EarlyControl_historyBorrow

private theorem s6Step154EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step154EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step154EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EarlyControl_sigmaRelease : s6Step154EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step154EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step154EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step154EarlyControlHistoryArena s6Step154EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step154EarlyControl_sigma : compileHmrSigmaDropLog s6Step154EarlyControlHistoryArena false 0 0 254 768 []=some s6Step154EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step154EarlyControl_sigmaOwned⟩
  · exact s6Step154EarlyControl_sigmaRelease

private theorem s6Step154EarlyControl_zeroBorrow : s6Step154EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step154EarlyControlLog.zeroWork=some s6Step154EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step154EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step154EarlyControlArena s6Step154EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step154EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step154EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step154EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step154EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step154EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EarlyControl_zero : compileHmrEqualityLog s6Step154EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step154EarlyControlLog.zeroWork=some (s6Step154EarlyControlZeroArena,s6Step154EarlyControlLog.zeroWork,s6Step154EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step154EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step154EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step154EarlyControl_logged : s6Step154EarlyControlPlan.Logged s6Step154EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 779 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step154EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step154EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step154EarlyControl_zero
  · exact s6Step154EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step154EarlyControl_flags
  · exact s6Step154EarlyControl_fit
  · exact s6Step154EarlyControl_history
  · exact s6Step154EarlyControl_sigma
  · exact s6Step154EarlyControl_branch

private theorem s6Step154EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step154EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 779 42 s6Step154EarlyControlLog=some s6Step154EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step154EarlyControlPlan s6Step154EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 779 42 s6Step154EarlyControl_logged

private def s6Step154EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step154EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step154EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step154EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859],775⟩

private def s6Step154FrontBank : WindowBank := ⟨s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow⟩

private def s6Step154Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 879, 795]

private def s6Step154Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875, 908, 777]

private def s6Step154Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 881, 776]

private def s6Step154Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922, 887, 775]

private theorem s6Step154Counter_apart : Disjoint s6Step154HeadFvAfter.live s6Step154CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step154HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154Counter_borrowed : s6Step154HeadFvAfter.checkBorrow 4 s6Step154CounterWork=some s6Step154CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step154HeadFvAfter s6Step154CounterDuring s6Step154CounterWork.toFinset s6Step154Counter_bounded s6Step154Counter_apart rfl

private theorem s6Step154Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step154HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step154HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154Counter_checked : compileHmrCounterStepLog s6Step154HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step154CounterWork=some s6Step154CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step154HeadFvAfter.live := fun q hq => s6Step154Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step154Counter_borrowed

private def s6Step154EntryFAfter : Arena := s6Step154EntryFBefore

private theorem s6Step154EntryBank_incomingDistinct : ([s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154EntryF_Incoming : rowsOwned s6Step154EntryFBefore [s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow] 0 s6Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154EntryBank_outgoingOwned : rowsOwned s6Step154EntryGvAfter [s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step154EntryGvAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154EntryF_Outgoing : rowsOwned s6Step154EntryGvAfter [s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut] :=
  hmrRows_owned_drop s6Step154EntryGvAfter [s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut] 0 s6Step154EntryBank_outgoingOwned

private theorem s6Step154EntryF_distinct : (s6Step154EntryFRow.sign::s6Step154EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154EntryF_owned : (s6Step154EntryFRow.sign::s6Step154EntryFRow.payload).toFinset⊆s6Step154EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EntryF_reserved : s6Step154EntryFBefore.reserve s6Step154EntryFFresh.toFinset=some s6Step154EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154EntryFFresh,arenaWires]
  · norm_num [s6Step154EntryFBefore,s6Step154EntryFFresh,arenaWires]
  · simp only [s6Step154EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step154EntryF_checked : planRowResizeLog s6Step154EntryFBefore s6Step154EntryFRow 193 s6Step154EntryFFresh=
    some (s6Step154EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩,growRow 795 s6Step154EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step154EntryFBefore s6Step154EntryFAfter s6Step154EntryFRow 193 s6Step154EntryFFresh
    s6Step154EntryF_distinct s6Step154EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154EntryF_reserved
  have rowEq : WindowRow.mk (s6Step154EntryFRow.payload++s6Step154EntryFFresh) s6Step154EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step154EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154EntryFvAfter : Arena := s6Step154EntryGAfter

private def s6Step154EntryFvBefore : Arena := s6Step154EntryGAfter

private theorem s6Step154EntryFv_Incoming : rowsOwned s6Step154EntryFvBefore [s6Step154EntryFvRow,s6Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow] 2 s6Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154EntryFv_Outgoing : rowsOwned s6Step154EntryGvAfter [s6Step154EntryFvOut,s6Step154EntryGvOut] :=
  hmrRows_owned_drop s6Step154EntryGvAfter [s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut] 2 s6Step154EntryBank_outgoingOwned

private theorem s6Step154EntryFv_distinct : (s6Step154EntryFvRow.sign::s6Step154EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154EntryFv_owned : (s6Step154EntryFvRow.sign::s6Step154EntryFvRow.payload).toFinset⊆s6Step154EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EntryFv_reserved : s6Step154EntryFvBefore.reserve s6Step154EntryFvFresh.toFinset=some s6Step154EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154EntryFvFresh,arenaWires]
  · norm_num [s6Step154EntryFvBefore,s6Step154EntryGAfter,s6Step154EntryFvFresh,arenaWires]
  · simp only [s6Step154EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step154EntryFv_checked : planRowResizeLog s6Step154EntryFvBefore s6Step154EntryFvRow 92 s6Step154EntryFvFresh=
    some (s6Step154EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩,growRow 776 s6Step154EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step154EntryFvBefore s6Step154EntryFvAfter s6Step154EntryFvRow 92 s6Step154EntryFvFresh
    s6Step154EntryFv_distinct s6Step154EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step154EntryFvRow.payload++s6Step154EntryFvFresh) s6Step154EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step154EntryGBefore : Arena := s6Step154EntryFBefore

private theorem s6Step154EntryG_Incoming : rowsOwned s6Step154EntryGBefore [s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow] 1 s6Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154EntryG_Outgoing : rowsOwned s6Step154EntryGvAfter [s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut] :=
  hmrRows_owned_drop s6Step154EntryGvAfter [s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut] 1 s6Step154EntryBank_outgoingOwned

private theorem s6Step154EntryG_distinct : (s6Step154EntryGRow.sign::s6Step154EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154EntryG_owned : (s6Step154EntryGRow.sign::s6Step154EntryGRow.payload).toFinset⊆s6Step154EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EntryG_reserved : s6Step154EntryGBefore.reserve s6Step154EntryGFresh.toFinset=some s6Step154EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154EntryGFresh,arenaWires]
  · norm_num [s6Step154EntryGBefore,s6Step154EntryFBefore,s6Step154EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step154EntryGBefore s6Step154EntryGAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step154EntryGFresh rfl rfl
    · norm_num [s6Step154EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step154EntryG_checked : planRowResizeLog s6Step154EntryGBefore s6Step154EntryGRow 193 s6Step154EntryGFresh=
    some (s6Step154EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875],777⟩,growRow 777 s6Step154EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step154EntryGBefore s6Step154EntryGAfter s6Step154EntryGRow 193 s6Step154EntryGFresh
    s6Step154EntryG_distinct s6Step154EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154EntryG_reserved
  have rowEq : WindowRow.mk (s6Step154EntryGRow.payload++s6Step154EntryGFresh) s6Step154EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step154EntryGvBefore : Arena := s6Step154EntryGAfter

private theorem s6Step154EntryGv_Incoming : rowsOwned s6Step154EntryGvBefore [s6Step154EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow] 3 s6Step154EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154EntryGv_Outgoing : rowsOwned s6Step154EntryGvAfter [s6Step154EntryGvOut] :=
  hmrRows_owned_drop s6Step154EntryGvAfter [s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut] 3 s6Step154EntryBank_outgoingOwned

private theorem s6Step154EntryGv_distinct : (s6Step154EntryGvRow.sign::s6Step154EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154EntryGv_owned : (s6Step154EntryGvRow.sign::s6Step154EntryGvRow.payload).toFinset⊆s6Step154EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154EntryGv_reserved : s6Step154EntryGvBefore.reserve s6Step154EntryGvFresh.toFinset=some s6Step154EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step154EntryGvBefore,s6Step154EntryGAfter,s6Step154EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step154EntryGvBefore s6Step154EntryGvAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(875,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step154EntryGvFresh rfl rfl
    · norm_num [s6Step154EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step154EntryGv_checked : planRowResizeLog s6Step154EntryGvBefore s6Step154EntryGvRow 92 s6Step154EntryGvFresh=
    some (s6Step154EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922],775⟩,growRow 775 s6Step154EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step154EntryGvBefore s6Step154EntryGvAfter s6Step154EntryGvRow 92 s6Step154EntryGvFresh
    s6Step154EntryGv_distinct s6Step154EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step154EntryGvRow.payload++s6Step154EntryGvFresh) s6Step154EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step154EntryBank_rows : planWindowRowsLog s6Step154EntryFBefore [(s6Step154EntryFRow,193),(s6Step154EntryGRow,193),(s6Step154EntryFvRow,92),(s6Step154EntryGvRow,92)] [s6Step154EntryFFresh,s6Step154EntryGFresh,s6Step154EntryFvFresh,s6Step154EntryGvFresh]=
    some (s6Step154EntryGvAfter,[s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut],(growRow 795 s6Step154EntryFFresh ++ (growRow 777 s6Step154EntryGFresh ++ (growRow 776 s6Step154EntryFvFresh ++ (growRow 775 s6Step154EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step154EntryGvAfter [] []=some (s6Step154EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step154EntryGvBefore s6Step154EntryGvAfter s6Step154EntryGvAfter
    s6Step154EntryGvRow s6Step154EntryGvOut 92 s6Step154EntryGvFresh [] [] []
    (growRow 775 s6Step154EntryGvFresh) ([]) s6Step154EntryGv_Incoming s6Step154EntryGv_checked h4 s6Step154EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step154EntryFvBefore s6Step154EntryFvAfter s6Step154EntryGvAfter
    s6Step154EntryFvRow s6Step154EntryFvOut 92 s6Step154EntryFvFresh [(s6Step154EntryGvRow,92)] [s6Step154EntryGvFresh] [s6Step154EntryGvOut]
    (growRow 776 s6Step154EntryFvFresh) ((growRow 775 s6Step154EntryGvFresh ++ [])) s6Step154EntryFv_Incoming s6Step154EntryFv_checked h3 s6Step154EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step154EntryGBefore s6Step154EntryGAfter s6Step154EntryGvAfter
    s6Step154EntryGRow s6Step154EntryGOut 193 s6Step154EntryGFresh [(s6Step154EntryFvRow,92),(s6Step154EntryGvRow,92)] [s6Step154EntryFvFresh,s6Step154EntryGvFresh] [s6Step154EntryFvOut,s6Step154EntryGvOut]
    (growRow 777 s6Step154EntryGFresh) ((growRow 776 s6Step154EntryFvFresh ++ (growRow 775 s6Step154EntryGvFresh ++ []))) s6Step154EntryG_Incoming s6Step154EntryG_checked h2 s6Step154EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step154EntryFBefore s6Step154EntryFAfter s6Step154EntryGvAfter
    s6Step154EntryFRow s6Step154EntryFOut 193 s6Step154EntryFFresh [(s6Step154EntryGRow,193),(s6Step154EntryFvRow,92),(s6Step154EntryGvRow,92)] [s6Step154EntryGFresh,s6Step154EntryFvFresh,s6Step154EntryGvFresh] [s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut]
    (growRow 795 s6Step154EntryFFresh) ((growRow 777 s6Step154EntryGFresh ++ (growRow 776 s6Step154EntryFvFresh ++ (growRow 775 s6Step154EntryGvFresh ++ [])))) s6Step154EntryF_Incoming s6Step154EntryF_checked h1 s6Step154EntryF_Outgoing
  exact h0

private theorem s6Step154EntryBank_checked : compileHmrBankResizeLog .entry s6Step154EntryFBefore ⟨s6Step154EntryFRow,s6Step154EntryGRow,s6Step154EntryFvRow,s6Step154EntryGvRow⟩ ⟨193,193,92,92⟩ [s6Step154EntryFFresh,s6Step154EntryGFresh,s6Step154EntryFvFresh,s6Step154EntryGvFresh]=
    some (s6Step154EntryGvAfter,⟨s6Step154EntryFOut,s6Step154EntryGOut,s6Step154EntryFvOut,s6Step154EntryGvOut⟩,(growRow 795 s6Step154EntryFFresh ++ (growRow 777 s6Step154EntryGFresh ++ (growRow 776 s6Step154EntryFvFresh ++ (growRow 775 s6Step154EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step154EntryBank_rows]
  rfl

private def s6Step154ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154ExitFBefore : Arena := s6Step154ExitGAfter

private def s6Step154ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 879],795⟩

private def s6Step154ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 881],776⟩

private def s6Step154ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875, 908],777⟩

private def s6Step154ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922, 887],775⟩

private theorem s6Step154ExitBank_incomingDistinct : ([s6Step154ExitGRow,s6Step154ExitFRow,s6Step154ExitFvRow,s6Step154ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154ExitF_Incoming : rowsOwned s6Step154ExitFBefore [s6Step154ExitFRow,s6Step154ExitFvRow,s6Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154ExitGRow,s6Step154ExitFRow,s6Step154ExitFvRow,s6Step154ExitGvRow] 1 s6Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step154ExitBank_outgoingOwned : rowsOwned s6Step154ExitGvAfter [s6Step154ExitGOut,s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step154ExitGvAfter (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154ExitF_Outgoing : rowsOwned s6Step154ExitGvAfter [s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut] :=
  hmrRows_owned_drop s6Step154ExitGvAfter [s6Step154ExitGOut,s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut] 1 s6Step154ExitBank_outgoingOwned

private theorem s6Step154ExitF_distinct : (s6Step154ExitFRow.sign::s6Step154ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154ExitF_owned : (s6Step154ExitFRow.sign::s6Step154ExitFRow.payload).toFinset⊆s6Step154ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154ExitF_retired : s6Step154ExitFBefore.retireSet s6Step154ExitFExtra.toFinset=s6Step154ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step154ExitFBefore s6Step154ExitFAfter s6Step154ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step154ExitFBefore s6Step154ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step154ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step154ExitF_checked : planRowResizeLog s6Step154ExitFBefore s6Step154ExitFRow 192 []=
    some (s6Step154ExitFAfter,s6Step154ExitFOut,shrinkRow 795 s6Step154ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step154ExitFBefore s6Step154ExitFRow 192 s6Step154ExitF_distinct s6Step154ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step154ExitFRow.payload.take 192) s6Step154ExitFRow.sign=s6Step154ExitFOut := by decide +kernel
  have hi : s6Step154ExitFRow.payload.drop 192=s6Step154ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step154ExitF_retired] at result
  exact result

private def s6Step154ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154ExitFvBefore : Arena := s6Step154ExitFAfter

private theorem s6Step154ExitFv_Incoming : rowsOwned s6Step154ExitFvBefore [s6Step154ExitFvRow,s6Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154ExitGRow,s6Step154ExitFRow,s6Step154ExitFvRow,s6Step154ExitGvRow] 2 s6Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154ExitFvBefore (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154ExitFv_Outgoing : rowsOwned s6Step154ExitGvAfter [s6Step154ExitFvOut,s6Step154ExitGvOut] :=
  hmrRows_owned_drop s6Step154ExitGvAfter [s6Step154ExitGOut,s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut] 2 s6Step154ExitBank_outgoingOwned

private theorem s6Step154ExitFv_distinct : (s6Step154ExitFvRow.sign::s6Step154ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154ExitFv_owned : (s6Step154ExitFvRow.sign::s6Step154ExitFvRow.payload).toFinset⊆s6Step154ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154ExitFvBefore (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154ExitFv_retired : s6Step154ExitFvBefore.retireSet s6Step154ExitFvExtra.toFinset=s6Step154ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step154ExitFvBefore s6Step154ExitFvAfter s6Step154ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step154ExitFvBefore s6Step154ExitFvAfter (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step154ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step154ExitFv_checked : planRowResizeLog s6Step154ExitFvBefore s6Step154ExitFvRow 92 []=
    some (s6Step154ExitFvAfter,s6Step154ExitFvOut,shrinkRow 776 s6Step154ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step154ExitFvBefore s6Step154ExitFvRow 92 s6Step154ExitFv_distinct s6Step154ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step154ExitFvRow.payload.take 92) s6Step154ExitFvRow.sign=s6Step154ExitFvOut := by decide +kernel
  have hi : s6Step154ExitFvRow.payload.drop 92=s6Step154ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step154ExitFv_retired] at result
  exact result

private def s6Step154ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step154ExitG_Incoming : rowsOwned s6Step154ExitGBefore [s6Step154ExitGRow,s6Step154ExitFRow,s6Step154ExitFvRow,s6Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154ExitGRow,s6Step154ExitFRow,s6Step154ExitFvRow,s6Step154ExitGvRow] 0 s6Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step154ExitG_Outgoing : rowsOwned s6Step154ExitGvAfter [s6Step154ExitGOut,s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut] :=
  hmrRows_owned_drop s6Step154ExitGvAfter [s6Step154ExitGOut,s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut] 0 s6Step154ExitBank_outgoingOwned

private theorem s6Step154ExitG_distinct : (s6Step154ExitGRow.sign::s6Step154ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154ExitG_owned : (s6Step154ExitGRow.sign::s6Step154ExitGRow.payload).toFinset⊆s6Step154ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154ExitG_retired : s6Step154ExitGBefore.retireSet s6Step154ExitGExtra.toFinset=s6Step154ExitGAfter := by
  unfold Arena.retireSet s6Step154ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step154ExitGBefore,s6Step154ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step154ExitG_checked : planRowResizeLog s6Step154ExitGBefore s6Step154ExitGRow 192 []=
    some (s6Step154ExitGAfter,s6Step154ExitGOut,shrinkRow 777 s6Step154ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step154ExitGBefore s6Step154ExitGRow 192 s6Step154ExitG_distinct s6Step154ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step154ExitGRow.payload.take 192) s6Step154ExitGRow.sign=s6Step154ExitGOut := by decide +kernel
  have hi : s6Step154ExitGRow.payload.drop 192=s6Step154ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step154ExitG_retired] at result
  exact result

private def s6Step154ExitGvBefore : Arena := s6Step154ExitFvAfter

private theorem s6Step154ExitGv_Incoming : rowsOwned s6Step154ExitGvBefore [s6Step154ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154ExitGRow,s6Step154ExitFRow,s6Step154ExitFvRow,s6Step154ExitGvRow] 3 s6Step154ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154ExitGvBefore (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154ExitGv_Outgoing : rowsOwned s6Step154ExitGvAfter [s6Step154ExitGvOut] :=
  hmrRows_owned_drop s6Step154ExitGvAfter [s6Step154ExitGOut,s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut] 3 s6Step154ExitBank_outgoingOwned

private theorem s6Step154ExitGv_distinct : (s6Step154ExitGvRow.sign::s6Step154ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154ExitGv_owned : (s6Step154ExitGvRow.sign::s6Step154ExitGvRow.payload).toFinset⊆s6Step154ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154ExitGvBefore (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154ExitGv_retired : s6Step154ExitGvBefore.retireSet s6Step154ExitGvExtra.toFinset=s6Step154ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step154ExitGvBefore s6Step154ExitGvAfter s6Step154ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step154ExitGvBefore s6Step154ExitGvAfter (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,448),(449,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step154ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step154ExitGv_checked : planRowResizeLog s6Step154ExitGvBefore s6Step154ExitGvRow 91 []=
    some (s6Step154ExitGvAfter,s6Step154ExitGvOut,shrinkRow 775 s6Step154ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step154ExitGvBefore s6Step154ExitGvRow 91 s6Step154ExitGv_distinct s6Step154ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step154ExitGvRow.payload.take 91) s6Step154ExitGvRow.sign=s6Step154ExitGvOut := by decide +kernel
  have hi : s6Step154ExitGvRow.payload.drop 91=s6Step154ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step154ExitGv_retired] at result
  exact result

private theorem s6Step154ExitBank_rows : planWindowRowsLog s6Step154ExitGBefore [(s6Step154ExitGRow,192),(s6Step154ExitFRow,192),(s6Step154ExitFvRow,92),(s6Step154ExitGvRow,91)] [[],[],[],[]]=
    some (s6Step154ExitGvAfter,[s6Step154ExitGOut,s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut],(shrinkRow 777 s6Step154ExitGExtra ++ (shrinkRow 795 s6Step154ExitFExtra ++ (shrinkRow 776 s6Step154ExitFvExtra ++ (shrinkRow 775 s6Step154ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step154ExitGvAfter [] []=some (s6Step154ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step154ExitGvBefore s6Step154ExitGvAfter s6Step154ExitGvAfter
    s6Step154ExitGvRow s6Step154ExitGvOut 91 [] [] [] []
    (shrinkRow 775 s6Step154ExitGvExtra) ([]) s6Step154ExitGv_Incoming s6Step154ExitGv_checked h4 s6Step154ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step154ExitFvBefore s6Step154ExitFvAfter s6Step154ExitGvAfter
    s6Step154ExitFvRow s6Step154ExitFvOut 92 [] [(s6Step154ExitGvRow,91)] [[]] [s6Step154ExitGvOut]
    (shrinkRow 776 s6Step154ExitFvExtra) ((shrinkRow 775 s6Step154ExitGvExtra ++ [])) s6Step154ExitFv_Incoming s6Step154ExitFv_checked h3 s6Step154ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step154ExitFBefore s6Step154ExitFAfter s6Step154ExitGvAfter
    s6Step154ExitFRow s6Step154ExitFOut 192 [] [(s6Step154ExitFvRow,92),(s6Step154ExitGvRow,91)] [[],[]] [s6Step154ExitFvOut,s6Step154ExitGvOut]
    (shrinkRow 795 s6Step154ExitFExtra) ((shrinkRow 776 s6Step154ExitFvExtra ++ (shrinkRow 775 s6Step154ExitGvExtra ++ []))) s6Step154ExitF_Incoming s6Step154ExitF_checked h2 s6Step154ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step154ExitGBefore s6Step154ExitGAfter s6Step154ExitGvAfter
    s6Step154ExitGRow s6Step154ExitGOut 192 [] [(s6Step154ExitFRow,192),(s6Step154ExitFvRow,92),(s6Step154ExitGvRow,91)] [[],[],[]] [s6Step154ExitFOut,s6Step154ExitFvOut,s6Step154ExitGvOut]
    (shrinkRow 777 s6Step154ExitGExtra) ((shrinkRow 795 s6Step154ExitFExtra ++ (shrinkRow 776 s6Step154ExitFvExtra ++ (shrinkRow 775 s6Step154ExitGvExtra ++ [])))) s6Step154ExitG_Incoming s6Step154ExitG_checked h1 s6Step154ExitG_Outgoing
  exact h0

private theorem s6Step154ExitBank_checked : compileHmrBankResizeLog .exit s6Step154ExitGBefore ⟨s6Step154ExitFRow,s6Step154ExitGRow,s6Step154ExitFvRow,s6Step154ExitGvRow⟩ ⟨192,192,92,91⟩ [[],[],[],[]]=
    some (s6Step154ExitGvAfter,⟨s6Step154ExitFOut,s6Step154ExitGOut,s6Step154ExitFvOut,s6Step154ExitGvOut⟩,(shrinkRow 777 s6Step154ExitGExtra ++ (shrinkRow 795 s6Step154ExitFExtra ++ (shrinkRow 776 s6Step154ExitFvExtra ++ (shrinkRow 775 s6Step154ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step154ExitBank_rows]
  rfl

private theorem s6Step154Add0_apart : Disjoint s6Step154Add0Arena.live s6Step154Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step154Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154Add0_card : s6Step154Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step154Add0_borrowed : s6Step154Add0Arena.checkBorrow (hmrHybridCount s6Step154Add0Arena s6Step154Add0B.length) s6Step154Add0Work=some s6Step154Add0During := by
  have len : s6Step154Add0Work.length=hmrHybridCount s6Step154Add0Arena s6Step154Add0B.length := by
    rw [hmrHybridCount,s6Step154Add0_card]
    decide +kernel
  have nd : s6Step154Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step154Add0Arena s6Step154Add0During s6Step154Add0Work.toFinset s6Step154Add0_bounded s6Step154Add0_apart rfl

private theorem s6Step154Add0_distinct : (891::779::903::(s6Step154Add0A++s6Step154Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154Add0_owned : (891::779::903::(s6Step154Add0A++s6Step154Add0B)).toFinset⊆s6Step154Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step154Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154Add0_checked : compileHmrHybridCinLog s6Step154Add0Arena 779 891 903 s6Step154Add0A s6Step154Add0B s6Step154Add0Work=some s6Step154Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step154Add0Arena s6Step154Add0During 779 891 903 s6Step154Add0A s6Step154Add0B s6Step154Add0Work
    (by decide +kernel) (by decide +kernel) s6Step154Add0_distinct
    (fun q hq => s6Step154Add0_owned (List.mem_toFinset.mpr hq)) s6Step154Add0_borrowed

private theorem s6Step154Add1_apart : Disjoint s6Step154Add1Arena.live s6Step154Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step154Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154Add1_card : s6Step154Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step154Add1_borrowed : s6Step154Add1Arena.checkBorrow (hmrHybridCount s6Step154Add1Arena s6Step154Add1B.length) s6Step154Add1Work=some s6Step154Add1During := by
  have len : s6Step154Add1Work.length=hmrHybridCount s6Step154Add1Arena s6Step154Add1B.length := by
    rw [hmrHybridCount,s6Step154Add1_card]
    decide +kernel
  have nd : s6Step154Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step154Add1Arena s6Step154Add1During s6Step154Add1Work.toFinset s6Step154Add1_bounded s6Step154Add1_apart rfl

private theorem s6Step154Add1_distinct : (891::779::903::(s6Step154Add1A++s6Step154Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154Add1_owned : (891::779::903::(s6Step154Add1A++s6Step154Add1B)).toFinset⊆s6Step154Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step154Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154Add1_checked : compileHmrHybridCinLog s6Step154Add1Arena 779 891 903 s6Step154Add1A s6Step154Add1B s6Step154Add1Work=some s6Step154Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step154Add1Arena s6Step154Add1During 779 891 903 s6Step154Add1A s6Step154Add1B s6Step154Add1Work
    (by decide +kernel) (by decide +kernel) s6Step154Add1_distinct
    (fun q hq => s6Step154Add1_owned (List.mem_toFinset.mpr hq)) s6Step154Add1_borrowed

private theorem s6Step154F4_apart : Disjoint (s6Step154Add0A++s6Step154Add0B).toFinset (s6Step154Add1A++s6Step154Add1B).toFinset := by
  have nd : ((s6Step154Add0A++s6Step154Add0B)++(s6Step154Add1A++s6Step154Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step154F4_carry : s6Step154F4FlagArena.checkBorrow 1 [903]=some s6Step154Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step154F4FlagArena,s6Step154HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step154F4FlagArena,s6Step154HeadFvAfter,s6Step154Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step154F4_distinct : (768::779::891::903::((s6Step154Add0A++s6Step154Add1A)++(s6Step154Add0B++s6Step154Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154F4_flag : s6Step154HeadFvAfter.checkBorrow 1 [891]=some s6Step154F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step154HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step154F4_owned : (768::779::((s6Step154Add0A++s6Step154Add1A)++(s6Step154Add0B++s6Step154Add1B))).toFinset⊆s6Step154HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step154HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154F4_checked : compileHmrHybridF4Log s6Step154HeadFvAfter 768 779 s6Step154Add0A s6Step154Add0B s6Step154Add1A s6Step154Add1B [891] [903] s6Step154Add0Work s6Step154Add1Work=some s6Step154F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step154HeadFvAfter s6Step154F4FlagArena s6Step154Add0Arena s6Step154Add0During s6Step154Add1During 768 779
    s6Step154Add0A s6Step154Add0B s6Step154Add1A s6Step154Add1B [891] [903] s6Step154Add0Work s6Step154Add1Work
    (fun q hq => s6Step154F4_owned (List.mem_toFinset.mpr hq)) s6Step154F4_flag s6Step154F4_carry
    s6Step154F4_distinct s6Step154F4_apart s6Step154Add0_checked s6Step154Add1_checked

private theorem s6Step154Front_branch : s6Step154FrontSigmaArena.checkBorrow 1 [779]=some s6Step154HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step154FrontSigmaArena,s6Step154EntryGvAfter,arenaWires]
  · change s6Step154HeadGBefore.live=(s6Step154EntryGvAfter.live∪{768})∪{779}
    apply hmrArena_union_pair_of_filter_check s6Step154EntryGvAfter s6Step154HeadGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 779 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step154Front_entry : HmrFrontEntryValid s6Step154EntryFBefore s6Step154FrontBank 193 92 ⟨192,192,92,91⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step154FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step154EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step154EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step154FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step154Front_sigma : s6Step154EntryGvAfter.checkBorrow 1 [768]=some s6Step154FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step154EntryGvAfter,arenaWires]
  · rfl

private def s6Step154HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step154HeadFBefore : Arena := s6Step154HeadGAfter

private def s6Step154HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step154HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step154HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875],777⟩

private def s6Step154HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922],775⟩

private theorem s6Step154HeadBank_incomingDistinct : ([s6Step154HeadGRow,s6Step154HeadFRow,s6Step154HeadGvRow,s6Step154HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154HeadF_Incoming : rowsOwned s6Step154HeadFBefore [s6Step154HeadFRow,s6Step154HeadGvRow,s6Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154HeadGRow,s6Step154HeadFRow,s6Step154HeadGvRow,s6Step154HeadFvRow] 1 s6Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154HeadBank_outgoingOwned : rowsOwned s6Step154HeadFvAfter [s6Step154HeadGOut,s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step154HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step154HeadF_Outgoing : rowsOwned s6Step154HeadFvAfter [s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut] :=
  hmrRows_owned_drop s6Step154HeadFvAfter [s6Step154HeadGOut,s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut] 1 s6Step154HeadBank_outgoingOwned

private theorem s6Step154HeadF_distinct : (s6Step154HeadFRow.sign::s6Step154HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154HeadF_owned : (s6Step154HeadFRow.sign::s6Step154HeadFRow.payload).toFinset⊆s6Step154HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154HeadF_reserved : s6Step154HeadFBefore.reserve s6Step154HeadFFresh.toFinset=some s6Step154HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154HeadFFresh,arenaWires]
  · norm_num [s6Step154HeadFBefore,s6Step154HeadGAfter,s6Step154HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step154HeadFBefore s6Step154HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step154HeadFFresh rfl rfl
    · norm_num [s6Step154HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step154HeadF_checked : planRowResizeLog s6Step154HeadFBefore s6Step154HeadFRow 194 s6Step154HeadFFresh=
    some (s6Step154HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 879],795⟩,growRow 795 s6Step154HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step154HeadFBefore s6Step154HeadFAfter s6Step154HeadFRow 194 s6Step154HeadFFresh
    s6Step154HeadF_distinct s6Step154HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154HeadF_reserved
  have rowEq : WindowRow.mk (s6Step154HeadFRow.payload++s6Step154HeadFFresh) s6Step154HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 879],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step154HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step154HeadFvBefore : Arena := s6Step154HeadGvAfter

private theorem s6Step154HeadFv_Incoming : rowsOwned s6Step154HeadFvBefore [s6Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154HeadGRow,s6Step154HeadFRow,s6Step154HeadGvRow,s6Step154HeadFvRow] 3 s6Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step154HeadFv_Outgoing : rowsOwned s6Step154HeadFvAfter [s6Step154HeadFvOut] :=
  hmrRows_owned_drop s6Step154HeadFvAfter [s6Step154HeadGOut,s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut] 3 s6Step154HeadBank_outgoingOwned

private theorem s6Step154HeadFv_distinct : (s6Step154HeadFvRow.sign::s6Step154HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154HeadFv_owned : (s6Step154HeadFvRow.sign::s6Step154HeadFvRow.payload).toFinset⊆s6Step154HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154HeadFv_reserved : s6Step154HeadFvBefore.reserve s6Step154HeadFvFresh.toFinset=some s6Step154HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154HeadFvFresh,arenaWires]
  · norm_num [s6Step154HeadFvBefore,s6Step154HeadGvAfter,s6Step154HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step154HeadFvAfter,s6Step154HeadFvBefore,s6Step154HeadGvAfter,s6Step154HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step154HeadFv_checked : planRowResizeLog s6Step154HeadFvBefore s6Step154HeadFvRow 93 s6Step154HeadFvFresh=
    some (s6Step154HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 881],776⟩,growRow 776 s6Step154HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step154HeadFvBefore s6Step154HeadFvAfter s6Step154HeadFvRow 93 s6Step154HeadFvFresh
    s6Step154HeadFv_distinct s6Step154HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step154HeadFvRow.payload++s6Step154HeadFvFresh) s6Step154HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 881],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step154HeadG_Incoming : rowsOwned s6Step154HeadGBefore [s6Step154HeadGRow,s6Step154HeadFRow,s6Step154HeadGvRow,s6Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154HeadGRow,s6Step154HeadFRow,s6Step154HeadGvRow,s6Step154HeadFvRow] 0 s6Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step154HeadG_Outgoing : rowsOwned s6Step154HeadFvAfter [s6Step154HeadGOut,s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut] :=
  hmrRows_owned_drop s6Step154HeadFvAfter [s6Step154HeadGOut,s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut] 0 s6Step154HeadBank_outgoingOwned

private theorem s6Step154HeadG_distinct : (s6Step154HeadGRow.sign::s6Step154HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154HeadG_owned : (s6Step154HeadGRow.sign::s6Step154HeadGRow.payload).toFinset⊆s6Step154HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step154HeadG_reserved : s6Step154HeadGBefore.reserve s6Step154HeadGFresh.toFinset=some s6Step154HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154HeadGFresh,arenaWires]
  · norm_num [s6Step154HeadGBefore,s6Step154HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step154HeadGBefore s6Step154HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step154HeadGFresh rfl rfl
    · norm_num [s6Step154HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step154HeadG_checked : planRowResizeLog s6Step154HeadGBefore s6Step154HeadGRow 194 s6Step154HeadGFresh=
    some (s6Step154HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875, 908],777⟩,growRow 777 s6Step154HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step154HeadGBefore s6Step154HeadGAfter s6Step154HeadGRow 194 s6Step154HeadGFresh
    s6Step154HeadG_distinct s6Step154HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154HeadG_reserved
  have rowEq : WindowRow.mk (s6Step154HeadGRow.payload++s6Step154HeadGFresh) s6Step154HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 875, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step154HeadGvBefore : Arena := s6Step154HeadFAfter

private theorem s6Step154HeadGv_Incoming : rowsOwned s6Step154HeadGvBefore [s6Step154HeadGvRow,s6Step154HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step154HeadGRow,s6Step154HeadFRow,s6Step154HeadGvRow,s6Step154HeadFvRow] 2 s6Step154HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step154HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step154HeadGv_Outgoing : rowsOwned s6Step154HeadFvAfter [s6Step154HeadGvOut,s6Step154HeadFvOut] :=
  hmrRows_owned_drop s6Step154HeadFvAfter [s6Step154HeadGOut,s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut] 2 s6Step154HeadBank_outgoingOwned

private theorem s6Step154HeadGv_distinct : (s6Step154HeadGvRow.sign::s6Step154HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step154HeadGv_owned : (s6Step154HeadGvRow.sign::s6Step154HeadGvRow.payload).toFinset⊆s6Step154HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step154HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<881) ∨ (882≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step154HeadGv_reserved : s6Step154HeadGvBefore.reserve s6Step154HeadGvFresh.toFinset=some s6Step154HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step154HeadGvFresh,arenaWires]
  · norm_num [s6Step154HeadGvBefore,s6Step154HeadFAfter,s6Step154HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step154HeadGvAfter,s6Step154HeadGvBefore,s6Step154HeadFAfter,s6Step154HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step154HeadGv_checked : planRowResizeLog s6Step154HeadGvBefore s6Step154HeadGvRow 93 s6Step154HeadGvFresh=
    some (s6Step154HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922, 887],775⟩,growRow 775 s6Step154HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step154HeadGvBefore s6Step154HeadGvAfter s6Step154HeadGvRow 93 s6Step154HeadGvFresh
    s6Step154HeadGv_distinct s6Step154HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step154HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step154HeadGvRow.payload++s6Step154HeadGvFresh) s6Step154HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 922, 887],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step154HeadBank_rows : planWindowRowsLog s6Step154HeadGBefore [(s6Step154HeadGRow,194),(s6Step154HeadFRow,194),(s6Step154HeadGvRow,93),(s6Step154HeadFvRow,93)] [s6Step154HeadGFresh,s6Step154HeadFFresh,s6Step154HeadGvFresh,s6Step154HeadFvFresh]=
    some (s6Step154HeadFvAfter,[s6Step154HeadGOut,s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut],(growRow 777 s6Step154HeadGFresh ++ (growRow 795 s6Step154HeadFFresh ++ (growRow 775 s6Step154HeadGvFresh ++ (growRow 776 s6Step154HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step154HeadFvAfter [] []=some (s6Step154HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step154HeadFvBefore s6Step154HeadFvAfter s6Step154HeadFvAfter
    s6Step154HeadFvRow s6Step154HeadFvOut 93 s6Step154HeadFvFresh [] [] []
    (growRow 776 s6Step154HeadFvFresh) ([]) s6Step154HeadFv_Incoming s6Step154HeadFv_checked h4 s6Step154HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step154HeadGvBefore s6Step154HeadGvAfter s6Step154HeadFvAfter
    s6Step154HeadGvRow s6Step154HeadGvOut 93 s6Step154HeadGvFresh [(s6Step154HeadFvRow,93)] [s6Step154HeadFvFresh] [s6Step154HeadFvOut]
    (growRow 775 s6Step154HeadGvFresh) ((growRow 776 s6Step154HeadFvFresh ++ [])) s6Step154HeadGv_Incoming s6Step154HeadGv_checked h3 s6Step154HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step154HeadFBefore s6Step154HeadFAfter s6Step154HeadFvAfter
    s6Step154HeadFRow s6Step154HeadFOut 194 s6Step154HeadFFresh [(s6Step154HeadGvRow,93),(s6Step154HeadFvRow,93)] [s6Step154HeadGvFresh,s6Step154HeadFvFresh] [s6Step154HeadGvOut,s6Step154HeadFvOut]
    (growRow 795 s6Step154HeadFFresh) ((growRow 775 s6Step154HeadGvFresh ++ (growRow 776 s6Step154HeadFvFresh ++ []))) s6Step154HeadF_Incoming s6Step154HeadF_checked h2 s6Step154HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step154HeadGBefore s6Step154HeadGAfter s6Step154HeadFvAfter
    s6Step154HeadGRow s6Step154HeadGOut 194 s6Step154HeadGFresh [(s6Step154HeadFRow,194),(s6Step154HeadGvRow,93),(s6Step154HeadFvRow,93)] [s6Step154HeadFFresh,s6Step154HeadGvFresh,s6Step154HeadFvFresh] [s6Step154HeadFOut,s6Step154HeadGvOut,s6Step154HeadFvOut]
    (growRow 777 s6Step154HeadGFresh) ((growRow 795 s6Step154HeadFFresh ++ (growRow 775 s6Step154HeadGvFresh ++ (growRow 776 s6Step154HeadFvFresh ++ [])))) s6Step154HeadG_Incoming s6Step154HeadG_checked h1 s6Step154HeadG_Outgoing
  exact h0

private theorem s6Step154HeadBank_checked : compileHmrBankResizeLog .headroom s6Step154HeadGBefore ⟨s6Step154HeadFRow,s6Step154HeadGRow,s6Step154HeadFvRow,s6Step154HeadGvRow⟩ ⟨194,194,93,93⟩ [s6Step154HeadGFresh,s6Step154HeadFFresh,s6Step154HeadGvFresh,s6Step154HeadFvFresh]=
    some (s6Step154HeadFvAfter,⟨s6Step154HeadFOut,s6Step154HeadGOut,s6Step154HeadFvOut,s6Step154HeadGvOut⟩,(growRow 777 s6Step154HeadGFresh ++ (growRow 795 s6Step154HeadFFresh ++ (growRow 775 s6Step154HeadGvFresh ++ (growRow 776 s6Step154HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step154HeadBank_rows]
  rfl

private theorem s6Step154Front_checked : compileHmrSourceFrontLog s6Step154EntryFBefore s6Step154FrontBank 193 92 ⟨192,192,92,91⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step154FrontLog=some s6Step154FrontPlan := by
  have pairEq : s6Step154FrontPair=⟨s6Step154HeadFRow,s6Step154HeadGRow,s6Step154HeadFvRow,s6Step154HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step154FrontHead=⟨s6Step154ExitFRow,s6Step154ExitGRow,s6Step154ExitFvRow,s6Step154ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step154Add0A=s6Step154FrontHead.f.wires := by decide +kernel
  have gEq : s6Step154Add0B=s6Step154FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step154Add1A=s6Step154FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step154Add1B=s6Step154FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step154EntryFBefore s6Step154FrontBank 193 92 ⟨192,192,92,91⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step154FrontLog s6Step154FrontPlan
  · exact s6Step154Front_entry
  · exact s6Step154EntryBank_checked
  · exact s6Step154Front_sigma
  · rfl
  · exact s6Step154Front_branch
  · rfl
  · simpa only [s6Step154FrontPlan,pairEq] using s6Step154HeadBank_checked
  · simpa only [s6Step154FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step154F4_checked
  · exact s6Step154Counter_checked
  · rfl
  · simpa only [s6Step154FrontPlan,headEq] using s6Step154ExitBank_checked

private theorem s6Step154Complete_explicit_checked : compileHmrEarlyStepLog s6Step154EntryFBefore s6Step154FrontBank 193 92 ⟨192,192,92,91⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step154CompleteLog=some s6Step154CompletePlan := by
  let Q := s6Step154EarlyControlPlan
  have hq := s6Step154EarlyControl_plan_checked
  have fv1 : s6Step154CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step154CompleteOut.fv.payload[2]?.getD s6Step154CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step154CompleteOut.fv.payload[3]?.getD s6Step154CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step154CompleteOut.fv.payload[4]?.getD s6Step154CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step154EntryFBefore s6Step154EarlyControlArena s6Step154FrontBank 193 92 ⟨192,192,92,91⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step154CompleteLog s6Step154FrontPlan Q
    s6Step154Front_checked s6Step154Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step154Complete_owned s6Step154Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step154EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 s6Step154CompleteOut.fv.second (s6Step154CompleteOut.fv.payload[2]?.getD s6Step154CompleteOut.fv.sign) (s6Step154CompleteOut.fv.payload[3]?.getD s6Step154CompleteOut.fv.sign) (s6Step154CompleteOut.fv.payload[4]?.getD s6Step154CompleteOut.fv.sign) 779 42 s6Step154EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep154Arena : Arena := s6Step154EntryFBefore
def s6PrivateStep154Bank : WindowBank := s6Step154FrontBank
def s6PrivateStep154Spec : HmrSourceWalkStepLog := ⟨193,92,⟨192,192,92,91⟩,42,.early s6Step154CompleteLog⟩
def s6PrivateStep154Plan : HmrSourceStepPlan := .early s6Step154CompletePlan
theorem s6PrivateStep154_source : s6PrivateStep154Spec=s6ObservedLogs144[10] := rfl
theorem s6PrivateStep154_checked : compileHmrSourceStepLog s6PrivateStep154Arena s6PrivateStep154Bank
    s6PrivateStep154Spec.fgWidth s6PrivateStep154Spec.vWidth s6PrivateStep154Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 154 s6PrivateStep154Spec.need none s6PrivateStep154Spec.log=some s6PrivateStep154Plan := by
  change compileHmrSourceStepLog s6Step154EntryFBefore s6Step154FrontBank 193 92 ⟨192,192,92,91⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 154 42 none (.early s6Step154CompleteLog)=some (.early s6Step154CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 154<498)]
  rw [s6Step154Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
