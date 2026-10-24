import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep154
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

private def s6Step156CompleteMoves : List (Wire × Wire) := [(857,191),(856,447)]

private def s6Step156EarlyControlLog : HmrEarlyControlLog := ⟨[856, 857, 875, 908, 922],[887],[891],[903, 791, 825, 810, 894, 923],[]⟩

private def s6Step156FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [873], []],[[887], [922], [875], [908]],[[], [], [], []]⟩,[768],[879],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step156CompleteLog : HmrEarlyStepLog := ⟨s6Step156FrontLog,s6Step156CompleteMoves,s6Step156EarlyControlLog⟩

private def s6Step156ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446],795⟩

private def s6Step156ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step156ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190],777⟩

private def s6Step156ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step156FrontOut : WindowBank := ⟨s6Step156ExitFOut,s6Step156ExitGOut,s6Step156ExitFvOut,s6Step156ExitGvOut⟩

private def s6Step156CompleteOut : WindowBank := s6Step156FrontOut.repacked s6Step156CompleteMoves

private def s6Step156EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step156EarlyControlPositiveArena,[887],s6Step156EarlyControlEqualityArena,[891],⟨⟨768,false⟩,[⟨⟨887,false⟩,891⟩]⟩⟩

private def s6Step156EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,856⟩,⟨⟨772,false⟩,857⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,908⟩,⟨⟨769,false⟩,922⟩]⟩

private def s6Step156EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step156EarlyControlZeroArena,s6Step156EarlyControlZeroPlan,s6Step156EarlyControlClassPlan,s6Step156EarlyControlFlagArena,s6Step156EarlyControlFittedArena,s6Step156EarlyControlHistoryArena,s6Step156EarlyControlSigmaArena,s6Step156EarlyControlOutputArena,s6Step156EarlyControlLog⟩

private def s6Step156CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step156Counter_bounded : s6Step156CounterWork.toFinset⊆arenaWires := by norm_num [s6Step156CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step156HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156CounterDuring : Arena := ⟨s6Step156HeadFvAfter.live∪s6Step156CounterWork.toFinset,Finset.union_subset s6Step156HeadFvAfter.bounded s6Step156Counter_bounded⟩

private def s6Step156EntryFFresh : List Wire := []

private def s6Step156EntryFvFresh : List Wire := [873]

private def s6Step156EntryGFresh : List Wire := []

private def s6Step156EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156EntryGvAfter : Arena := s6Step156EntryFvAfter

private def s6Step156EntryGvFresh : List Wire := []

private def s6Step156ExitFExtra : List Wire := [447, 922]

private def s6Step156ExitFvExtra : List Wire := [908]

private def s6Step156ExitGExtra : List Wire := [191, 887]

private def s6Step156ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156ExitGvExtra : List Wire := [875]

private def s6Step156Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step156Add0_bounded : s6Step156Add0Work.toFinset⊆arenaWires := by
  have h : s6Step156Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step156Add0During : Arena := ⟨s6Step156Add0Arena.live∪s6Step156Add0Work.toFinset,Finset.union_subset s6Step156Add0Arena.bounded s6Step156Add0_bounded⟩

private def s6Step156Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step156Add1_bounded : s6Step156Add1Work.toFinset⊆arenaWires := by
  have h : s6Step156Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step156Add1During : Arena := ⟨s6Step156Add1Arena.live∪s6Step156Add1Work.toFinset,Finset.union_subset s6Step156Add1Arena.bounded s6Step156Add1_bounded⟩

private def s6Step156F4FlagArena : Arena := ⟨s6Step156HeadFvAfter.live∪{891},Finset.union_subset s6Step156HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step156F4Plan : HmrHybridF4Plan := ⟨s6Step156F4FlagArena,[891],s6Step156Add0Arena,[903],s6Step156Add0During,s6Step156Add0Work,s6Step156Add1During,s6Step156Add1Work⟩

private def s6Step156HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 922],795⟩

private def s6Step156HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩

private def s6Step156HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 887],777⟩

private def s6Step156HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩

private def s6Step156FrontHead : WindowBank := ⟨s6Step156HeadFOut,s6Step156HeadGOut,s6Step156HeadFvOut,s6Step156HeadGvOut⟩

private def s6Step156EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step156EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step156EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step156EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step156FrontPair : WindowBank := ⟨s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut⟩

private def s6Step156FrontSigmaArena : Arena := ⟨s6Step156EntryGvAfter.live∪{768},Finset.union_subset s6Step156EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step156HeadFFresh : List Wire := [922]

private def s6Step156HeadFvFresh : List Wire := [908]

private def s6Step156HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156HeadGFresh : List Wire := [887]

private def s6Step156HeadGvFresh : List Wire := [875]

private def s6Step156FrontPlan : HmrSourceFront := ⟨s6Step156EntryGvAfter,s6Step156FrontPair,(growRow 795 s6Step156EntryFFresh ++ (growRow 777 s6Step156EntryGFresh ++ (growRow 776 s6Step156EntryFvFresh ++ (growRow 775 s6Step156EntryGvFresh ++ [])))),s6Step156FrontSigmaArena,[768],s6Step156HeadGBefore,[879],
  s6Step156HeadFvAfter,s6Step156FrontHead,(growRow 777 s6Step156HeadGFresh ++ (growRow 795 s6Step156HeadFFresh ++ (growRow 775 s6Step156HeadGvFresh ++ (growRow 776 s6Step156HeadFvFresh ++ [])))),s6Step156F4Plan,s6Step156CounterDuring,s6Step156CounterWork,s6Step156ExitGvAfter,s6Step156FrontOut,(shrinkRow 777 s6Step156ExitGExtra ++ (shrinkRow 795 s6Step156ExitFExtra ++ (shrinkRow 776 s6Step156ExitFvExtra ++ (shrinkRow 775 s6Step156ExitGvExtra ++ []))))⟩

private def s6Step156CompletePlan : HmrEarlyStepPlan := ⟨s6Step156FrontPlan,s6Step156EarlyControlArena,s6Step156EarlyControlPlan,s6Step156CompleteMoves⟩

private theorem s6Step156Complete_apart : List.Disjoint (s6Step156CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step156CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step156Complete_owned : (s6Step156CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step156CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156CompleteRelocationMove0Borrowed : Arena := ⟨s6Step156ExitGvAfter.live∪{191},Finset.union_subset s6Step156ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step156CompleteRelocationMove1Borrowed : Arena := ⟨s6Step156CompleteRelocationMove0After.live∪{447},Finset.union_subset s6Step156CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s6Step156CompleteRelocation_move0_owned : 857∈s6Step156ExitGvAfter.live := by norm_num [s6Step156ExitGvAfter,arenaWires]

private theorem s6Step156CompleteRelocation_move0_reserve : s6Step156ExitGvAfter.reserve {191}=some s6Step156CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step156ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step156CompleteRelocation_move0_retire : s6Step156CompleteRelocationMove0Borrowed.retireSet {857}=s6Step156CompleteRelocationMove0After := by
  apply hmrArena_retireSet_of_live s6Step156CompleteRelocationMove0Borrowed s6Step156CompleteRelocationMove0After {857}
  change s6Step156CompleteRelocationMove0After.live=(s6Step156ExitGvAfter.live∪{191})\{857}
  apply hmrArena_update_of_filter_check s6Step156ExitGvAfter s6Step156CompleteRelocationMove0After (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [191] [857] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step156CompleteRelocation_move1_owned : 856∈s6Step156CompleteRelocationMove0After.live := by norm_num [s6Step156CompleteRelocationMove0After,arenaWires]

private theorem s6Step156CompleteRelocation_move1_reserve : s6Step156CompleteRelocationMove0After.reserve {447}=some s6Step156CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step156CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s6Step156CompleteRelocation_move1_retire : s6Step156CompleteRelocationMove1Borrowed.retireSet {856}=s6Step156EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step156CompleteRelocationMove1Borrowed s6Step156EarlyControlArena {856}
  change s6Step156EarlyControlArena.live=(s6Step156CompleteRelocationMove0After.live∪{447})\{856}
  apply hmrArena_update_of_filter_check s6Step156CompleteRelocationMove0After s6Step156EarlyControlArena (fun q => ([(0,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,857),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [447] [856] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step156CompleteRelocation_checked : s6Step156ExitGvAfter.checkRepack [(857,191),(856,447)]=some s6Step156EarlyControlArena := by
  have tail2 : s6Step156EarlyControlArena.checkRepack []=some s6Step156EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s6Step156CompleteRelocationMove0After s6Step156CompleteRelocationMove1Borrowed s6Step156EarlyControlArena s6Step156EarlyControlArena 856 447 []
    s6Step156CompleteRelocation_move1_owned s6Step156CompleteRelocation_move1_reserve s6Step156CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s6Step156ExitGvAfter s6Step156CompleteRelocationMove0Borrowed s6Step156CompleteRelocationMove0After s6Step156EarlyControlArena 857 191 [(856,447)]
    s6Step156CompleteRelocation_move0_owned s6Step156CompleteRelocation_move0_reserve s6Step156CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step156Complete_repack : s6Step156ExitGvAfter.checkRepack s6Step156CompleteMoves=some s6Step156EarlyControlArena := by
  simpa only [s6Step156CompleteMoves] using s6Step156CompleteRelocation_checked

private theorem s6Step156EarlyControl_branchOwned : ([879] : List Wire).toFinset⊆s6Step156EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EarlyControl_branch : compileHmrBranchRetirement s6Step156EarlyControlSigmaArena 879=some s6Step156EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step156EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step156EarlyControlSigmaArena s6Step156EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [879] rfl rfl
    decide +kernel

private theorem s6Step156EarlyControl_classEqualityBorrow : s6Step156EarlyControlPositiveArena.checkBorrow (([768, 887] : List Wire).length-1) s6Step156EarlyControlLog.classWork=some s6Step156EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step156EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step156EarlyControlEqualityArena,s6Step156EarlyControlPositiveArena,s6Step156EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step156EarlyControl_classEqualityOwned : ([768, 887] : List Wire).toFinset⊆s6Step156EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156EarlyControl_classEquality : compileHmrEqualityLog s6Step156EarlyControlPositiveArena [768, 887] 0 s6Step156EarlyControlLog.classWork=some (s6Step156EarlyControlEqualityArena,s6Step156EarlyControlLog.classWork,s6Step156EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step156EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step156EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step156EarlyControl_classOwned : ([769, 922, 768] : List Wire).toFinset⊆s6Step156EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156EarlyControl_positiveBorrow : s6Step156EarlyControlZeroArena.checkBorrow (1) s6Step156EarlyControlLog.positiveWork=some s6Step156EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step156EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step156EarlyControlPositiveArena,s6Step156EarlyControlZeroArena,s6Step156EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step156EarlyControl_class : compileHmrSourceClassLog s6Step156EarlyControlZeroArena false 769 s6Step156EarlyControlZeroPlan.top 0 768 s6Step156EarlyControlLog.positiveWork s6Step156EarlyControlLog.classWork=some s6Step156EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step156EarlyControlClassPlan s6Step156EarlyControlZeroArena false 769 s6Step156EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step156EarlyControl_classOwned
  · exact s6Step156EarlyControl_positiveBorrow
  · exact s6Step156EarlyControl_classEquality

private theorem s6Step156EarlyControl_entryRecordOwned : ([879, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EarlyControl_fitBorrow : s6Step156EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step156EarlyControlLog.recordFresh=some s6Step156EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step156EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step156EarlyControlFittedArena,s6Step156EarlyControlFlagArena,s6Step156EarlyControlLog,arenaWires]

private theorem s6Step156EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step156EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156EarlyControl_fit : compileHmrRecordGrowLog s6Step156EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step156EarlyControlLog.recordFresh=some s6Step156EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step156EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step156EarlyControl_fitBorrow

private theorem s6Step156EarlyControl_flagsBorrow : s6Step156EarlyControlEqualityArena.checkBorrow (6) s6Step156EarlyControlLog.flagWork=some s6Step156EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step156EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step156EarlyControlFlagArena,s6Step156EarlyControlEqualityArena,s6Step156EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step156EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s6Step156EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156EarlyControl_flags : compileHmrFlagsLog s6Step156EarlyControlClassPlan.equalityArena s6Step156EarlyControlClassPlan.equality.top 253 252 251 s6Step156EarlyControlLog.flagWork=some s6Step156EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step156EarlyControl_flagsOwned⟩
  · exact s6Step156EarlyControl_flagsBorrow

private theorem s6Step156EarlyControl_historyBorrow : s6Step156EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step156EarlyControlLog.recordFresh=some s6Step156EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step156EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step156EarlyControlArena s6Step156EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step156EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step156EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EarlyControl_history : compileHmrRecordGrowLog s6Step156EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step156EarlyControlLog.recordFresh=some s6Step156EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step156EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step156EarlyControl_historyBorrow

private theorem s6Step156EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step156EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step156EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlHistoryArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EarlyControl_sigmaRelease : s6Step156EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step156EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step156EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step156EarlyControlHistoryArena s6Step156EarlyControlSigmaArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step156EarlyControl_sigma : compileHmrSigmaDropLog s6Step156EarlyControlHistoryArena false 0 0 254 768 []=some s6Step156EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step156EarlyControl_sigmaOwned⟩
  · exact s6Step156EarlyControl_sigmaRelease

private theorem s6Step156EarlyControl_zeroBorrow : s6Step156EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step156EarlyControlLog.zeroWork=some s6Step156EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step156EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step156EarlyControlArena s6Step156EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step156EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step156EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step156EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step156EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step156EarlyControlArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,856),(858,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EarlyControl_zero : compileHmrEqualityLog s6Step156EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step156EarlyControlLog.zeroWork=some (s6Step156EarlyControlZeroArena,s6Step156EarlyControlLog.zeroWork,s6Step156EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step156EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step156EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step156EarlyControl_logged : s6Step156EarlyControlPlan.Logged s6Step156EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 879 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step156EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step156EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step156EarlyControl_zero
  · exact s6Step156EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step156EarlyControl_flags
  · exact s6Step156EarlyControl_fit
  · exact s6Step156EarlyControl_history
  · exact s6Step156EarlyControl_sigma
  · exact s6Step156EarlyControl_branch

private theorem s6Step156EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step156EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 879 42 s6Step156EarlyControlLog=some s6Step156EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step156EarlyControlPlan s6Step156EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 879 42 s6Step156EarlyControl_logged

private def s6Step156EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step156EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step156EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step156EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private def s6Step156FrontBank : WindowBank := ⟨s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow⟩

private def s6Step156Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 922, 795]

private def s6Step156Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 887, 777]

private def s6Step156Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908, 776]

private def s6Step156Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875, 775]

private theorem s6Step156Counter_apart : Disjoint s6Step156HeadFvAfter.live s6Step156CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step156HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156Counter_borrowed : s6Step156HeadFvAfter.checkBorrow 4 s6Step156CounterWork=some s6Step156CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step156HeadFvAfter s6Step156CounterDuring s6Step156CounterWork.toFinset s6Step156Counter_bounded s6Step156Counter_apart rfl

private theorem s6Step156Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step156HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step156HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156Counter_checked : compileHmrCounterStepLog s6Step156HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step156CounterWork=some s6Step156CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step156HeadFvAfter.live := fun q hq => s6Step156Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step156Counter_borrowed

private def s6Step156EntryFAfter : Arena := s6Step156EntryFBefore

private theorem s6Step156EntryBank_incomingDistinct : ([s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156EntryF_Incoming : rowsOwned s6Step156EntryFBefore [s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow] 0 s6Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156EntryBank_outgoingOwned : rowsOwned s6Step156EntryGvAfter [s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step156EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156EntryF_Outgoing : rowsOwned s6Step156EntryGvAfter [s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut] :=
  hmrRows_owned_drop s6Step156EntryGvAfter [s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut] 0 s6Step156EntryBank_outgoingOwned

private theorem s6Step156EntryF_distinct : (s6Step156EntryFRow.sign::s6Step156EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156EntryF_owned : (s6Step156EntryFRow.sign::s6Step156EntryFRow.payload).toFinset⊆s6Step156EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EntryF_reserved : s6Step156EntryFBefore.reserve s6Step156EntryFFresh.toFinset=some s6Step156EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156EntryFFresh,arenaWires]
  · norm_num [s6Step156EntryFBefore,s6Step156EntryFFresh,arenaWires]
  · simp only [s6Step156EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step156EntryF_checked : planRowResizeLog s6Step156EntryFBefore s6Step156EntryFRow 192 s6Step156EntryFFresh=
    some (s6Step156EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩,growRow 795 s6Step156EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step156EntryFBefore s6Step156EntryFAfter s6Step156EntryFRow 192 s6Step156EntryFFresh
    s6Step156EntryF_distinct s6Step156EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156EntryF_reserved
  have rowEq : WindowRow.mk (s6Step156EntryFRow.payload++s6Step156EntryFFresh) s6Step156EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step156EntryFvBefore : Arena := s6Step156EntryFBefore

private theorem s6Step156EntryFv_Incoming : rowsOwned s6Step156EntryFvBefore [s6Step156EntryFvRow,s6Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow] 2 s6Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156EntryFv_Outgoing : rowsOwned s6Step156EntryGvAfter [s6Step156EntryFvOut,s6Step156EntryGvOut] :=
  hmrRows_owned_drop s6Step156EntryGvAfter [s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut] 2 s6Step156EntryBank_outgoingOwned

private theorem s6Step156EntryFv_distinct : (s6Step156EntryFvRow.sign::s6Step156EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156EntryFv_owned : (s6Step156EntryFvRow.sign::s6Step156EntryFvRow.payload).toFinset⊆s6Step156EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156EntryFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EntryFv_reserved : s6Step156EntryFvBefore.reserve s6Step156EntryFvFresh.toFinset=some s6Step156EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156EntryFvFresh,arenaWires]
  · norm_num [s6Step156EntryFvBefore,s6Step156EntryFBefore,s6Step156EntryFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step156EntryFvBefore s6Step156EntryFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step156EntryFvFresh rfl rfl
    · norm_num [s6Step156EntryFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step156EntryFv_checked : planRowResizeLog s6Step156EntryFvBefore s6Step156EntryFvRow 93 s6Step156EntryFvFresh=
    some (s6Step156EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩,growRow 776 s6Step156EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step156EntryFvBefore s6Step156EntryFvAfter s6Step156EntryFvRow 93 s6Step156EntryFvFresh
    s6Step156EntryFv_distinct s6Step156EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step156EntryFvRow.payload++s6Step156EntryFvFresh) s6Step156EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step156EntryGAfter : Arena := s6Step156EntryFBefore

private def s6Step156EntryGBefore : Arena := s6Step156EntryFBefore

private theorem s6Step156EntryG_Incoming : rowsOwned s6Step156EntryGBefore [s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow] 1 s6Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156EntryG_Outgoing : rowsOwned s6Step156EntryGvAfter [s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut] :=
  hmrRows_owned_drop s6Step156EntryGvAfter [s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut] 1 s6Step156EntryBank_outgoingOwned

private theorem s6Step156EntryG_distinct : (s6Step156EntryGRow.sign::s6Step156EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156EntryG_owned : (s6Step156EntryGRow.sign::s6Step156EntryGRow.payload).toFinset⊆s6Step156EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156EntryGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EntryG_reserved : s6Step156EntryGBefore.reserve s6Step156EntryGFresh.toFinset=some s6Step156EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156EntryGFresh,arenaWires]
  · norm_num [s6Step156EntryGBefore,s6Step156EntryFBefore,s6Step156EntryGFresh,arenaWires]
  · simp only [s6Step156EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step156EntryG_checked : planRowResizeLog s6Step156EntryGBefore s6Step156EntryGRow 192 s6Step156EntryGFresh=
    some (s6Step156EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩,growRow 777 s6Step156EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step156EntryGBefore s6Step156EntryGAfter s6Step156EntryGRow 192 s6Step156EntryGFresh
    s6Step156EntryG_distinct s6Step156EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156EntryG_reserved
  have rowEq : WindowRow.mk (s6Step156EntryGRow.payload++s6Step156EntryGFresh) s6Step156EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step156EntryGvBefore : Arena := s6Step156EntryFvAfter

private theorem s6Step156EntryGv_Incoming : rowsOwned s6Step156EntryGvBefore [s6Step156EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow] 3 s6Step156EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156EntryGv_Outgoing : rowsOwned s6Step156EntryGvAfter [s6Step156EntryGvOut] :=
  hmrRows_owned_drop s6Step156EntryGvAfter [s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut] 3 s6Step156EntryBank_outgoingOwned

private theorem s6Step156EntryGv_distinct : (s6Step156EntryGvRow.sign::s6Step156EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156EntryGv_owned : (s6Step156EntryGvRow.sign::s6Step156EntryGvRow.payload).toFinset⊆s6Step156EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156EntryGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156EntryGv_reserved : s6Step156EntryGvBefore.reserve s6Step156EntryGvFresh.toFinset=some s6Step156EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156EntryGvFresh,arenaWires]
  · norm_num [s6Step156EntryGvBefore,s6Step156EntryFvAfter,s6Step156EntryGvFresh,arenaWires]
  · simp only [s6Step156EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step156EntryGv_checked : planRowResizeLog s6Step156EntryGvBefore s6Step156EntryGvRow 93 s6Step156EntryGvFresh=
    some (s6Step156EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩,growRow 775 s6Step156EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step156EntryGvBefore s6Step156EntryGvAfter s6Step156EntryGvRow 93 s6Step156EntryGvFresh
    s6Step156EntryGv_distinct s6Step156EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step156EntryGvRow.payload++s6Step156EntryGvFresh) s6Step156EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step156EntryBank_rows : planWindowRowsLog s6Step156EntryFBefore [(s6Step156EntryFRow,192),(s6Step156EntryGRow,192),(s6Step156EntryFvRow,93),(s6Step156EntryGvRow,93)] [s6Step156EntryFFresh,s6Step156EntryGFresh,s6Step156EntryFvFresh,s6Step156EntryGvFresh]=
    some (s6Step156EntryGvAfter,[s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut],(growRow 795 s6Step156EntryFFresh ++ (growRow 777 s6Step156EntryGFresh ++ (growRow 776 s6Step156EntryFvFresh ++ (growRow 775 s6Step156EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step156EntryGvAfter [] []=some (s6Step156EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step156EntryGvBefore s6Step156EntryGvAfter s6Step156EntryGvAfter
    s6Step156EntryGvRow s6Step156EntryGvOut 93 s6Step156EntryGvFresh [] [] []
    (growRow 775 s6Step156EntryGvFresh) ([]) s6Step156EntryGv_Incoming s6Step156EntryGv_checked h4 s6Step156EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step156EntryFvBefore s6Step156EntryFvAfter s6Step156EntryGvAfter
    s6Step156EntryFvRow s6Step156EntryFvOut 93 s6Step156EntryFvFresh [(s6Step156EntryGvRow,93)] [s6Step156EntryGvFresh] [s6Step156EntryGvOut]
    (growRow 776 s6Step156EntryFvFresh) ((growRow 775 s6Step156EntryGvFresh ++ [])) s6Step156EntryFv_Incoming s6Step156EntryFv_checked h3 s6Step156EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step156EntryGBefore s6Step156EntryGAfter s6Step156EntryGvAfter
    s6Step156EntryGRow s6Step156EntryGOut 192 s6Step156EntryGFresh [(s6Step156EntryFvRow,93),(s6Step156EntryGvRow,93)] [s6Step156EntryFvFresh,s6Step156EntryGvFresh] [s6Step156EntryFvOut,s6Step156EntryGvOut]
    (growRow 777 s6Step156EntryGFresh) ((growRow 776 s6Step156EntryFvFresh ++ (growRow 775 s6Step156EntryGvFresh ++ []))) s6Step156EntryG_Incoming s6Step156EntryG_checked h2 s6Step156EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step156EntryFBefore s6Step156EntryFAfter s6Step156EntryGvAfter
    s6Step156EntryFRow s6Step156EntryFOut 192 s6Step156EntryFFresh [(s6Step156EntryGRow,192),(s6Step156EntryFvRow,93),(s6Step156EntryGvRow,93)] [s6Step156EntryGFresh,s6Step156EntryFvFresh,s6Step156EntryGvFresh] [s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut]
    (growRow 795 s6Step156EntryFFresh) ((growRow 777 s6Step156EntryGFresh ++ (growRow 776 s6Step156EntryFvFresh ++ (growRow 775 s6Step156EntryGvFresh ++ [])))) s6Step156EntryF_Incoming s6Step156EntryF_checked h1 s6Step156EntryF_Outgoing
  exact h0

private theorem s6Step156EntryBank_checked : compileHmrBankResizeLog .entry s6Step156EntryFBefore ⟨s6Step156EntryFRow,s6Step156EntryGRow,s6Step156EntryFvRow,s6Step156EntryGvRow⟩ ⟨192,192,93,93⟩ [s6Step156EntryFFresh,s6Step156EntryGFresh,s6Step156EntryFvFresh,s6Step156EntryGvFresh]=
    some (s6Step156EntryGvAfter,⟨s6Step156EntryFOut,s6Step156EntryGOut,s6Step156EntryFvOut,s6Step156EntryGvOut⟩,(growRow 795 s6Step156EntryFFresh ++ (growRow 777 s6Step156EntryGFresh ++ (growRow 776 s6Step156EntryFvFresh ++ (growRow 775 s6Step156EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step156EntryBank_rows]
  rfl

private def s6Step156ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156ExitFBefore : Arena := s6Step156ExitGAfter

private def s6Step156ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 922],795⟩

private def s6Step156ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩

private def s6Step156ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 887],777⟩

private def s6Step156ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩

private theorem s6Step156ExitBank_incomingDistinct : ([s6Step156ExitGRow,s6Step156ExitFRow,s6Step156ExitFvRow,s6Step156ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156ExitF_Incoming : rowsOwned s6Step156ExitFBefore [s6Step156ExitFRow,s6Step156ExitFvRow,s6Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156ExitGRow,s6Step156ExitFRow,s6Step156ExitFvRow,s6Step156ExitGvRow] 1 s6Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156ExitFBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step156ExitBank_outgoingOwned : rowsOwned s6Step156ExitGvAfter [s6Step156ExitGOut,s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step156ExitGvAfter (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156ExitF_Outgoing : rowsOwned s6Step156ExitGvAfter [s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut] :=
  hmrRows_owned_drop s6Step156ExitGvAfter [s6Step156ExitGOut,s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut] 1 s6Step156ExitBank_outgoingOwned

private theorem s6Step156ExitF_distinct : (s6Step156ExitFRow.sign::s6Step156ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156ExitF_owned : (s6Step156ExitFRow.sign::s6Step156ExitFRow.payload).toFinset⊆s6Step156ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156ExitFBefore (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156ExitF_retired : s6Step156ExitFBefore.retireSet s6Step156ExitFExtra.toFinset=s6Step156ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step156ExitFBefore s6Step156ExitFAfter s6Step156ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step156ExitFBefore s6Step156ExitFAfter (fun q => (0≤q ∧ q<191) ∨ (192≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step156ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step156ExitF_checked : planRowResizeLog s6Step156ExitFBefore s6Step156ExitFRow 191 []=
    some (s6Step156ExitFAfter,s6Step156ExitFOut,shrinkRow 795 s6Step156ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step156ExitFBefore s6Step156ExitFRow 191 s6Step156ExitF_distinct s6Step156ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step156ExitFRow.payload.take 191) s6Step156ExitFRow.sign=s6Step156ExitFOut := by decide +kernel
  have hi : s6Step156ExitFRow.payload.drop 191=s6Step156ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step156ExitF_retired] at result
  exact result

private def s6Step156ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step156ExitFvBefore : Arena := s6Step156ExitFAfter

private theorem s6Step156ExitFv_Incoming : rowsOwned s6Step156ExitFvBefore [s6Step156ExitFvRow,s6Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156ExitGRow,s6Step156ExitFRow,s6Step156ExitFvRow,s6Step156ExitGvRow] 2 s6Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156ExitFvBefore (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156ExitFv_Outgoing : rowsOwned s6Step156ExitGvAfter [s6Step156ExitFvOut,s6Step156ExitGvOut] :=
  hmrRows_owned_drop s6Step156ExitGvAfter [s6Step156ExitGOut,s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut] 2 s6Step156ExitBank_outgoingOwned

private theorem s6Step156ExitFv_distinct : (s6Step156ExitFvRow.sign::s6Step156ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156ExitFv_owned : (s6Step156ExitFvRow.sign::s6Step156ExitFvRow.payload).toFinset⊆s6Step156ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156ExitFvBefore (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156ExitFv_retired : s6Step156ExitFvBefore.retireSet s6Step156ExitFvExtra.toFinset=s6Step156ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step156ExitFvBefore s6Step156ExitFvAfter s6Step156ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step156ExitFvBefore s6Step156ExitFvAfter (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step156ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step156ExitFv_checked : planRowResizeLog s6Step156ExitFvBefore s6Step156ExitFvRow 93 []=
    some (s6Step156ExitFvAfter,s6Step156ExitFvOut,shrinkRow 776 s6Step156ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step156ExitFvBefore s6Step156ExitFvRow 93 s6Step156ExitFv_distinct s6Step156ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step156ExitFvRow.payload.take 93) s6Step156ExitFvRow.sign=s6Step156ExitFvOut := by decide +kernel
  have hi : s6Step156ExitFvRow.payload.drop 93=s6Step156ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step156ExitFv_retired] at result
  exact result

private def s6Step156ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step156ExitG_Incoming : rowsOwned s6Step156ExitGBefore [s6Step156ExitGRow,s6Step156ExitFRow,s6Step156ExitFvRow,s6Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156ExitGRow,s6Step156ExitFRow,s6Step156ExitFvRow,s6Step156ExitGvRow] 0 s6Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step156ExitG_Outgoing : rowsOwned s6Step156ExitGvAfter [s6Step156ExitGOut,s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut] :=
  hmrRows_owned_drop s6Step156ExitGvAfter [s6Step156ExitGOut,s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut] 0 s6Step156ExitBank_outgoingOwned

private theorem s6Step156ExitG_distinct : (s6Step156ExitGRow.sign::s6Step156ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156ExitG_owned : (s6Step156ExitGRow.sign::s6Step156ExitGRow.payload).toFinset⊆s6Step156ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156ExitG_retired : s6Step156ExitGBefore.retireSet s6Step156ExitGExtra.toFinset=s6Step156ExitGAfter := by
  unfold Arena.retireSet s6Step156ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step156ExitGBefore,s6Step156ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step156ExitG_checked : planRowResizeLog s6Step156ExitGBefore s6Step156ExitGRow 191 []=
    some (s6Step156ExitGAfter,s6Step156ExitGOut,shrinkRow 777 s6Step156ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step156ExitGBefore s6Step156ExitGRow 191 s6Step156ExitG_distinct s6Step156ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step156ExitGRow.payload.take 191) s6Step156ExitGRow.sign=s6Step156ExitGOut := by decide +kernel
  have hi : s6Step156ExitGRow.payload.drop 191=s6Step156ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step156ExitG_retired] at result
  exact result

private def s6Step156ExitGvBefore : Arena := s6Step156ExitFvAfter

private theorem s6Step156ExitGv_Incoming : rowsOwned s6Step156ExitGvBefore [s6Step156ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156ExitGRow,s6Step156ExitFRow,s6Step156ExitFvRow,s6Step156ExitGvRow] 3 s6Step156ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156ExitGvBefore (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step156ExitGv_Outgoing : rowsOwned s6Step156ExitGvAfter [s6Step156ExitGvOut] :=
  hmrRows_owned_drop s6Step156ExitGvAfter [s6Step156ExitGOut,s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut] 3 s6Step156ExitBank_outgoingOwned

private theorem s6Step156ExitGv_distinct : (s6Step156ExitGvRow.sign::s6Step156ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156ExitGv_owned : (s6Step156ExitGvRow.sign::s6Step156ExitGvRow.payload).toFinset⊆s6Step156ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156ExitGvBefore (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step156ExitGv_retired : s6Step156ExitGvBefore.retireSet s6Step156ExitGvExtra.toFinset=s6Step156ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step156ExitGvBefore s6Step156ExitGvAfter s6Step156ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step156ExitGvBefore s6Step156ExitGvAfter (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,191),(192,447),(448,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step156ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step156ExitGv_checked : planRowResizeLog s6Step156ExitGvBefore s6Step156ExitGvRow 93 []=
    some (s6Step156ExitGvAfter,s6Step156ExitGvOut,shrinkRow 775 s6Step156ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step156ExitGvBefore s6Step156ExitGvRow 93 s6Step156ExitGv_distinct s6Step156ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step156ExitGvRow.payload.take 93) s6Step156ExitGvRow.sign=s6Step156ExitGvOut := by decide +kernel
  have hi : s6Step156ExitGvRow.payload.drop 93=s6Step156ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step156ExitGv_retired] at result
  exact result

private theorem s6Step156ExitBank_rows : planWindowRowsLog s6Step156ExitGBefore [(s6Step156ExitGRow,191),(s6Step156ExitFRow,191),(s6Step156ExitFvRow,93),(s6Step156ExitGvRow,93)] [[],[],[],[]]=
    some (s6Step156ExitGvAfter,[s6Step156ExitGOut,s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut],(shrinkRow 777 s6Step156ExitGExtra ++ (shrinkRow 795 s6Step156ExitFExtra ++ (shrinkRow 776 s6Step156ExitFvExtra ++ (shrinkRow 775 s6Step156ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step156ExitGvAfter [] []=some (s6Step156ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step156ExitGvBefore s6Step156ExitGvAfter s6Step156ExitGvAfter
    s6Step156ExitGvRow s6Step156ExitGvOut 93 [] [] [] []
    (shrinkRow 775 s6Step156ExitGvExtra) ([]) s6Step156ExitGv_Incoming s6Step156ExitGv_checked h4 s6Step156ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step156ExitFvBefore s6Step156ExitFvAfter s6Step156ExitGvAfter
    s6Step156ExitFvRow s6Step156ExitFvOut 93 [] [(s6Step156ExitGvRow,93)] [[]] [s6Step156ExitGvOut]
    (shrinkRow 776 s6Step156ExitFvExtra) ((shrinkRow 775 s6Step156ExitGvExtra ++ [])) s6Step156ExitFv_Incoming s6Step156ExitFv_checked h3 s6Step156ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step156ExitFBefore s6Step156ExitFAfter s6Step156ExitGvAfter
    s6Step156ExitFRow s6Step156ExitFOut 191 [] [(s6Step156ExitFvRow,93),(s6Step156ExitGvRow,93)] [[],[]] [s6Step156ExitFvOut,s6Step156ExitGvOut]
    (shrinkRow 795 s6Step156ExitFExtra) ((shrinkRow 776 s6Step156ExitFvExtra ++ (shrinkRow 775 s6Step156ExitGvExtra ++ []))) s6Step156ExitF_Incoming s6Step156ExitF_checked h2 s6Step156ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step156ExitGBefore s6Step156ExitGAfter s6Step156ExitGvAfter
    s6Step156ExitGRow s6Step156ExitGOut 191 [] [(s6Step156ExitFRow,191),(s6Step156ExitFvRow,93),(s6Step156ExitGvRow,93)] [[],[],[]] [s6Step156ExitFOut,s6Step156ExitFvOut,s6Step156ExitGvOut]
    (shrinkRow 777 s6Step156ExitGExtra) ((shrinkRow 795 s6Step156ExitFExtra ++ (shrinkRow 776 s6Step156ExitFvExtra ++ (shrinkRow 775 s6Step156ExitGvExtra ++ [])))) s6Step156ExitG_Incoming s6Step156ExitG_checked h1 s6Step156ExitG_Outgoing
  exact h0

private theorem s6Step156ExitBank_checked : compileHmrBankResizeLog .exit s6Step156ExitGBefore ⟨s6Step156ExitFRow,s6Step156ExitGRow,s6Step156ExitFvRow,s6Step156ExitGvRow⟩ ⟨191,191,93,93⟩ [[],[],[],[]]=
    some (s6Step156ExitGvAfter,⟨s6Step156ExitFOut,s6Step156ExitGOut,s6Step156ExitFvOut,s6Step156ExitGvOut⟩,(shrinkRow 777 s6Step156ExitGExtra ++ (shrinkRow 795 s6Step156ExitFExtra ++ (shrinkRow 776 s6Step156ExitFvExtra ++ (shrinkRow 775 s6Step156ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step156ExitBank_rows]
  rfl

private theorem s6Step156Add0_apart : Disjoint s6Step156Add0Arena.live s6Step156Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step156Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156Add0_card : s6Step156Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step156Add0_borrowed : s6Step156Add0Arena.checkBorrow (hmrHybridCount s6Step156Add0Arena s6Step156Add0B.length) s6Step156Add0Work=some s6Step156Add0During := by
  have len : s6Step156Add0Work.length=hmrHybridCount s6Step156Add0Arena s6Step156Add0B.length := by
    rw [hmrHybridCount,s6Step156Add0_card]
    decide +kernel
  have nd : s6Step156Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step156Add0Arena s6Step156Add0During s6Step156Add0Work.toFinset s6Step156Add0_bounded s6Step156Add0_apart rfl

private theorem s6Step156Add0_distinct : (891::879::903::(s6Step156Add0A++s6Step156Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156Add0_owned : (891::879::903::(s6Step156Add0A++s6Step156Add0B)).toFinset⊆s6Step156Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step156Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156Add0_checked : compileHmrHybridCinLog s6Step156Add0Arena 879 891 903 s6Step156Add0A s6Step156Add0B s6Step156Add0Work=some s6Step156Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step156Add0Arena s6Step156Add0During 879 891 903 s6Step156Add0A s6Step156Add0B s6Step156Add0Work
    (by decide +kernel) (by decide +kernel) s6Step156Add0_distinct
    (fun q hq => s6Step156Add0_owned (List.mem_toFinset.mpr hq)) s6Step156Add0_borrowed

private theorem s6Step156Add1_apart : Disjoint s6Step156Add1Arena.live s6Step156Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step156Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156Add1_card : s6Step156Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step156Add1_borrowed : s6Step156Add1Arena.checkBorrow (hmrHybridCount s6Step156Add1Arena s6Step156Add1B.length) s6Step156Add1Work=some s6Step156Add1During := by
  have len : s6Step156Add1Work.length=hmrHybridCount s6Step156Add1Arena s6Step156Add1B.length := by
    rw [hmrHybridCount,s6Step156Add1_card]
    decide +kernel
  have nd : s6Step156Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step156Add1Arena s6Step156Add1During s6Step156Add1Work.toFinset s6Step156Add1_bounded s6Step156Add1_apart rfl

private theorem s6Step156Add1_distinct : (891::879::903::(s6Step156Add1A++s6Step156Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156Add1_owned : (891::879::903::(s6Step156Add1A++s6Step156Add1B)).toFinset⊆s6Step156Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step156Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156Add1_checked : compileHmrHybridCinLog s6Step156Add1Arena 879 891 903 s6Step156Add1A s6Step156Add1B s6Step156Add1Work=some s6Step156Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step156Add1Arena s6Step156Add1During 879 891 903 s6Step156Add1A s6Step156Add1B s6Step156Add1Work
    (by decide +kernel) (by decide +kernel) s6Step156Add1_distinct
    (fun q hq => s6Step156Add1_owned (List.mem_toFinset.mpr hq)) s6Step156Add1_borrowed

private theorem s6Step156F4_apart : Disjoint (s6Step156Add0A++s6Step156Add0B).toFinset (s6Step156Add1A++s6Step156Add1B).toFinset := by
  have nd : ((s6Step156Add0A++s6Step156Add0B)++(s6Step156Add1A++s6Step156Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step156F4_carry : s6Step156F4FlagArena.checkBorrow 1 [903]=some s6Step156Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step156F4FlagArena,s6Step156HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step156F4FlagArena,s6Step156HeadFvAfter,s6Step156Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step156F4_distinct : (768::879::891::903::((s6Step156Add0A++s6Step156Add1A)++(s6Step156Add0B++s6Step156Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156F4_flag : s6Step156HeadFvAfter.checkBorrow 1 [891]=some s6Step156F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step156HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step156F4_owned : (768::879::((s6Step156Add0A++s6Step156Add1A)++(s6Step156Add0B++s6Step156Add1B))).toFinset⊆s6Step156HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step156HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156F4_checked : compileHmrHybridF4Log s6Step156HeadFvAfter 768 879 s6Step156Add0A s6Step156Add0B s6Step156Add1A s6Step156Add1B [891] [903] s6Step156Add0Work s6Step156Add1Work=some s6Step156F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step156HeadFvAfter s6Step156F4FlagArena s6Step156Add0Arena s6Step156Add0During s6Step156Add1During 768 879
    s6Step156Add0A s6Step156Add0B s6Step156Add1A s6Step156Add1B [891] [903] s6Step156Add0Work s6Step156Add1Work
    (fun q hq => s6Step156F4_owned (List.mem_toFinset.mpr hq)) s6Step156F4_flag s6Step156F4_carry
    s6Step156F4_distinct s6Step156F4_apart s6Step156Add0_checked s6Step156Add1_checked

private theorem s6Step156Front_branch : s6Step156FrontSigmaArena.checkBorrow 1 [879]=some s6Step156HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step156FrontSigmaArena,s6Step156EntryGvAfter,s6Step156EntryFvAfter,arenaWires]
  · change s6Step156HeadGBefore.live=(s6Step156EntryGvAfter.live∪{768})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step156EntryGvAfter s6Step156HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 768 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step156Front_entry : HmrFrontEntryValid s6Step156EntryFBefore s6Step156FrontBank 192 93 ⟨191,191,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step156FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step156EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step156EntryFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,873),(874,875),(876,879),(880,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,922),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step156FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step156Front_sigma : s6Step156EntryGvAfter.checkBorrow 1 [768]=some s6Step156FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step156EntryGvAfter,s6Step156EntryFvAfter,arenaWires]
  · rfl

private def s6Step156HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156HeadFBefore : Arena := s6Step156HeadGAfter

private def s6Step156HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447],795⟩

private def s6Step156HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873],776⟩

private def s6Step156HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191],777⟩

private def s6Step156HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881],775⟩

private theorem s6Step156HeadBank_incomingDistinct : ([s6Step156HeadGRow,s6Step156HeadFRow,s6Step156HeadGvRow,s6Step156HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156HeadF_Incoming : rowsOwned s6Step156HeadFBefore [s6Step156HeadFRow,s6Step156HeadGvRow,s6Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156HeadGRow,s6Step156HeadFRow,s6Step156HeadGvRow,s6Step156HeadFvRow] 1 s6Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step156HeadBank_outgoingOwned : rowsOwned s6Step156HeadFvAfter [s6Step156HeadGOut,s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step156HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step156HeadF_Outgoing : rowsOwned s6Step156HeadFvAfter [s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut] :=
  hmrRows_owned_drop s6Step156HeadFvAfter [s6Step156HeadGOut,s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut] 1 s6Step156HeadBank_outgoingOwned

private theorem s6Step156HeadF_distinct : (s6Step156HeadFRow.sign::s6Step156HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156HeadF_owned : (s6Step156HeadFRow.sign::s6Step156HeadFRow.payload).toFinset⊆s6Step156HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156HeadF_reserved : s6Step156HeadFBefore.reserve s6Step156HeadFFresh.toFinset=some s6Step156HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156HeadFFresh,arenaWires]
  · norm_num [s6Step156HeadFBefore,s6Step156HeadGAfter,s6Step156HeadFFresh,arenaWires]
  · ext q
    simp only [s6Step156HeadFAfter,s6Step156HeadFBefore,s6Step156HeadGAfter,s6Step156HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step156HeadF_checked : planRowResizeLog s6Step156HeadFBefore s6Step156HeadFRow 193 s6Step156HeadFFresh=
    some (s6Step156HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 922],795⟩,growRow 795 s6Step156HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step156HeadFBefore s6Step156HeadFAfter s6Step156HeadFRow 193 s6Step156HeadFFresh
    s6Step156HeadF_distinct s6Step156HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156HeadF_reserved
  have rowEq : WindowRow.mk (s6Step156HeadFRow.payload++s6Step156HeadFFresh) s6Step156HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 922],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step156HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step156HeadFvBefore : Arena := s6Step156HeadGvAfter

private theorem s6Step156HeadFv_Incoming : rowsOwned s6Step156HeadFvBefore [s6Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156HeadGRow,s6Step156HeadFRow,s6Step156HeadGvRow,s6Step156HeadFvRow] 3 s6Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step156HeadFv_Outgoing : rowsOwned s6Step156HeadFvAfter [s6Step156HeadFvOut] :=
  hmrRows_owned_drop s6Step156HeadFvAfter [s6Step156HeadGOut,s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut] 3 s6Step156HeadBank_outgoingOwned

private theorem s6Step156HeadFv_distinct : (s6Step156HeadFvRow.sign::s6Step156HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156HeadFv_owned : (s6Step156HeadFvRow.sign::s6Step156HeadFvRow.payload).toFinset⊆s6Step156HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156HeadFv_reserved : s6Step156HeadFvBefore.reserve s6Step156HeadFvFresh.toFinset=some s6Step156HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156HeadFvFresh,arenaWires]
  · norm_num [s6Step156HeadFvBefore,s6Step156HeadGvAfter,s6Step156HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step156HeadFvAfter,s6Step156HeadFvBefore,s6Step156HeadGvAfter,s6Step156HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step156HeadFv_checked : planRowResizeLog s6Step156HeadFvBefore s6Step156HeadFvRow 94 s6Step156HeadFvFresh=
    some (s6Step156HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩,growRow 776 s6Step156HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step156HeadFvBefore s6Step156HeadFvAfter s6Step156HeadFvRow 94 s6Step156HeadFvFresh
    s6Step156HeadFv_distinct s6Step156HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step156HeadFvRow.payload++s6Step156HeadFvFresh) s6Step156HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 873, 908],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step156HeadG_Incoming : rowsOwned s6Step156HeadGBefore [s6Step156HeadGRow,s6Step156HeadFRow,s6Step156HeadGvRow,s6Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156HeadGRow,s6Step156HeadFRow,s6Step156HeadGvRow,s6Step156HeadFvRow] 0 s6Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step156HeadG_Outgoing : rowsOwned s6Step156HeadFvAfter [s6Step156HeadGOut,s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut] :=
  hmrRows_owned_drop s6Step156HeadFvAfter [s6Step156HeadGOut,s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut] 0 s6Step156HeadBank_outgoingOwned

private theorem s6Step156HeadG_distinct : (s6Step156HeadGRow.sign::s6Step156HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156HeadG_owned : (s6Step156HeadGRow.sign::s6Step156HeadGRow.payload).toFinset⊆s6Step156HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<887) ∨ (888≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<922) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156HeadG_reserved : s6Step156HeadGBefore.reserve s6Step156HeadGFresh.toFinset=some s6Step156HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156HeadGFresh,arenaWires]
  · norm_num [s6Step156HeadGBefore,s6Step156HeadGFresh,arenaWires]
  · ext q
    simp only [s6Step156HeadGAfter,s6Step156HeadGBefore,s6Step156HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step156HeadG_checked : planRowResizeLog s6Step156HeadGBefore s6Step156HeadGRow 193 s6Step156HeadGFresh=
    some (s6Step156HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 887],777⟩,growRow 777 s6Step156HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step156HeadGBefore s6Step156HeadGAfter s6Step156HeadGRow 193 s6Step156HeadGFresh
    s6Step156HeadG_distinct s6Step156HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156HeadG_reserved
  have rowEq : WindowRow.mk (s6Step156HeadGRow.payload++s6Step156HeadGFresh) s6Step156HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 887],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step156HeadGvBefore : Arena := s6Step156HeadFAfter

private theorem s6Step156HeadGv_Incoming : rowsOwned s6Step156HeadGvBefore [s6Step156HeadGvRow,s6Step156HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step156HeadGRow,s6Step156HeadFRow,s6Step156HeadGvRow,s6Step156HeadFvRow] 2 s6Step156HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step156HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step156HeadGv_Outgoing : rowsOwned s6Step156HeadFvAfter [s6Step156HeadGvOut,s6Step156HeadFvOut] :=
  hmrRows_owned_drop s6Step156HeadFvAfter [s6Step156HeadGOut,s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut] 2 s6Step156HeadBank_outgoingOwned

private theorem s6Step156HeadGv_distinct : (s6Step156HeadGvRow.sign::s6Step156HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step156HeadGv_owned : (s6Step156HeadGvRow.sign::s6Step156HeadGvRow.payload).toFinset⊆s6Step156HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step156HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step156HeadGv_reserved : s6Step156HeadGvBefore.reserve s6Step156HeadGvFresh.toFinset=some s6Step156HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step156HeadGvFresh,arenaWires]
  · norm_num [s6Step156HeadGvBefore,s6Step156HeadFAfter,s6Step156HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step156HeadGvAfter,s6Step156HeadGvBefore,s6Step156HeadFAfter,s6Step156HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step156HeadGv_checked : planRowResizeLog s6Step156HeadGvBefore s6Step156HeadGvRow 94 s6Step156HeadGvFresh=
    some (s6Step156HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩,growRow 775 s6Step156HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step156HeadGvBefore s6Step156HeadGvAfter s6Step156HeadGvRow 94 s6Step156HeadGvFresh
    s6Step156HeadGv_distinct s6Step156HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step156HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step156HeadGvRow.payload++s6Step156HeadGvFresh) s6Step156HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 859, 874, 779, 881, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step156HeadBank_rows : planWindowRowsLog s6Step156HeadGBefore [(s6Step156HeadGRow,193),(s6Step156HeadFRow,193),(s6Step156HeadGvRow,94),(s6Step156HeadFvRow,94)] [s6Step156HeadGFresh,s6Step156HeadFFresh,s6Step156HeadGvFresh,s6Step156HeadFvFresh]=
    some (s6Step156HeadFvAfter,[s6Step156HeadGOut,s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut],(growRow 777 s6Step156HeadGFresh ++ (growRow 795 s6Step156HeadFFresh ++ (growRow 775 s6Step156HeadGvFresh ++ (growRow 776 s6Step156HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step156HeadFvAfter [] []=some (s6Step156HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step156HeadFvBefore s6Step156HeadFvAfter s6Step156HeadFvAfter
    s6Step156HeadFvRow s6Step156HeadFvOut 94 s6Step156HeadFvFresh [] [] []
    (growRow 776 s6Step156HeadFvFresh) ([]) s6Step156HeadFv_Incoming s6Step156HeadFv_checked h4 s6Step156HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step156HeadGvBefore s6Step156HeadGvAfter s6Step156HeadFvAfter
    s6Step156HeadGvRow s6Step156HeadGvOut 94 s6Step156HeadGvFresh [(s6Step156HeadFvRow,94)] [s6Step156HeadFvFresh] [s6Step156HeadFvOut]
    (growRow 775 s6Step156HeadGvFresh) ((growRow 776 s6Step156HeadFvFresh ++ [])) s6Step156HeadGv_Incoming s6Step156HeadGv_checked h3 s6Step156HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step156HeadFBefore s6Step156HeadFAfter s6Step156HeadFvAfter
    s6Step156HeadFRow s6Step156HeadFOut 193 s6Step156HeadFFresh [(s6Step156HeadGvRow,94),(s6Step156HeadFvRow,94)] [s6Step156HeadGvFresh,s6Step156HeadFvFresh] [s6Step156HeadGvOut,s6Step156HeadFvOut]
    (growRow 795 s6Step156HeadFFresh) ((growRow 775 s6Step156HeadGvFresh ++ (growRow 776 s6Step156HeadFvFresh ++ []))) s6Step156HeadF_Incoming s6Step156HeadF_checked h2 s6Step156HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step156HeadGBefore s6Step156HeadGAfter s6Step156HeadFvAfter
    s6Step156HeadGRow s6Step156HeadGOut 193 s6Step156HeadGFresh [(s6Step156HeadFRow,193),(s6Step156HeadGvRow,94),(s6Step156HeadFvRow,94)] [s6Step156HeadFFresh,s6Step156HeadGvFresh,s6Step156HeadFvFresh] [s6Step156HeadFOut,s6Step156HeadGvOut,s6Step156HeadFvOut]
    (growRow 777 s6Step156HeadGFresh) ((growRow 795 s6Step156HeadFFresh ++ (growRow 775 s6Step156HeadGvFresh ++ (growRow 776 s6Step156HeadFvFresh ++ [])))) s6Step156HeadG_Incoming s6Step156HeadG_checked h1 s6Step156HeadG_Outgoing
  exact h0

private theorem s6Step156HeadBank_checked : compileHmrBankResizeLog .headroom s6Step156HeadGBefore ⟨s6Step156HeadFRow,s6Step156HeadGRow,s6Step156HeadFvRow,s6Step156HeadGvRow⟩ ⟨193,193,94,94⟩ [s6Step156HeadGFresh,s6Step156HeadFFresh,s6Step156HeadGvFresh,s6Step156HeadFvFresh]=
    some (s6Step156HeadFvAfter,⟨s6Step156HeadFOut,s6Step156HeadGOut,s6Step156HeadFvOut,s6Step156HeadGvOut⟩,(growRow 777 s6Step156HeadGFresh ++ (growRow 795 s6Step156HeadFFresh ++ (growRow 775 s6Step156HeadGvFresh ++ (growRow 776 s6Step156HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step156HeadBank_rows]
  rfl

private theorem s6Step156Front_checked : compileHmrSourceFrontLog s6Step156EntryFBefore s6Step156FrontBank 192 93 ⟨191,191,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step156FrontLog=some s6Step156FrontPlan := by
  have pairEq : s6Step156FrontPair=⟨s6Step156HeadFRow,s6Step156HeadGRow,s6Step156HeadFvRow,s6Step156HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step156FrontHead=⟨s6Step156ExitFRow,s6Step156ExitGRow,s6Step156ExitFvRow,s6Step156ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step156Add0A=s6Step156FrontHead.f.wires := by decide +kernel
  have gEq : s6Step156Add0B=s6Step156FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step156Add1A=s6Step156FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step156Add1B=s6Step156FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step156EntryFBefore s6Step156FrontBank 192 93 ⟨191,191,93,93⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step156FrontLog s6Step156FrontPlan
  · exact s6Step156Front_entry
  · exact s6Step156EntryBank_checked
  · exact s6Step156Front_sigma
  · rfl
  · exact s6Step156Front_branch
  · rfl
  · simpa only [s6Step156FrontPlan,pairEq] using s6Step156HeadBank_checked
  · simpa only [s6Step156FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step156F4_checked
  · exact s6Step156Counter_checked
  · rfl
  · simpa only [s6Step156FrontPlan,headEq] using s6Step156ExitBank_checked

private theorem s6Step156Complete_explicit_checked : compileHmrEarlyStepLog s6Step156EntryFBefore s6Step156FrontBank 192 93 ⟨191,191,93,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step156CompleteLog=some s6Step156CompletePlan := by
  let Q := s6Step156EarlyControlPlan
  have hq := s6Step156EarlyControl_plan_checked
  have fv1 : s6Step156CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step156CompleteOut.fv.payload[2]?.getD s6Step156CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step156CompleteOut.fv.payload[3]?.getD s6Step156CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step156CompleteOut.fv.payload[4]?.getD s6Step156CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step156EntryFBefore s6Step156EarlyControlArena s6Step156FrontBank 192 93 ⟨191,191,93,93⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step156CompleteLog s6Step156FrontPlan Q
    s6Step156Front_checked s6Step156Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step156Complete_owned s6Step156Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step156EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 s6Step156CompleteOut.fv.second (s6Step156CompleteOut.fv.payload[2]?.getD s6Step156CompleteOut.fv.sign) (s6Step156CompleteOut.fv.payload[3]?.getD s6Step156CompleteOut.fv.sign) (s6Step156CompleteOut.fv.payload[4]?.getD s6Step156CompleteOut.fv.sign) 879 42 s6Step156EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep156Arena : Arena := s6Step156EntryFBefore
def s6PrivateStep156Bank : WindowBank := s6Step156FrontBank
def s6PrivateStep156Spec : HmrSourceWalkStepLog := ⟨192,93,⟨191,191,93,93⟩,42,.early s6Step156CompleteLog⟩
def s6PrivateStep156Plan : HmrSourceStepPlan := .early s6Step156CompletePlan
theorem s6PrivateStep156_source : s6PrivateStep156Spec=s6ObservedLogs144[12] := rfl
theorem s6PrivateStep156_checked : compileHmrSourceStepLog s6PrivateStep156Arena s6PrivateStep156Bank
    s6PrivateStep156Spec.fgWidth s6PrivateStep156Spec.vWidth s6PrivateStep156Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 156 s6PrivateStep156Spec.need none s6PrivateStep156Spec.log=some s6PrivateStep156Plan := by
  change compileHmrSourceStepLog s6Step156EntryFBefore s6Step156FrontBank 192 93 ⟨191,191,93,93⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 156 42 none (.early s6Step156CompleteLog)=some (.early s6Step156CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 156<498)]
  rw [s6Step156Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
