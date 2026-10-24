import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep150
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

private def s6Step152CompleteMoves : List (Wire × Wire) := []

private def s6Step152EarlyControlLog : HmrEarlyControlLog := ⟨[779, 874, 875, 881, 887],[908],[879],[891, 903, 791, 825, 810, 894],[]⟩

private def s6Step152FrontLog : HmrFrontAllocationLog := ⟨⟨[[881], [], [], [779, 874]],[[879], [887], [875], [882]],[[], [], [], []]⟩,[768],[859],[891],[903],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825]⟩

private def s6Step152CompleteLog : HmrEarlyStepLog := ⟨s6Step152FrontLog,s6Step152CompleteMoves,s6Step152EarlyControlLog⟩

private def s6Step152ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step152ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step152ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],777⟩

private def s6Step152ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private def s6Step152FrontOut : WindowBank := ⟨s6Step152ExitFOut,s6Step152ExitGOut,s6Step152ExitFvOut,s6Step152ExitGvOut⟩

private def s6Step152CompleteOut : WindowBank := s6Step152FrontOut.repacked s6Step152CompleteMoves

private def s6Step152EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step152EarlyControlPositiveArena,[908],s6Step152EarlyControlEqualityArena,[879],⟨⟨768,false⟩,[⟨⟨908,false⟩,879⟩]⟩⟩

private def s6Step152EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨772,false⟩,874⟩,⟨⟨771,false⟩,875⟩,⟨⟨770,false⟩,881⟩,⟨⟨769,false⟩,887⟩]⟩

private def s6Step152EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step152EarlyControlZeroArena,s6Step152EarlyControlZeroPlan,s6Step152EarlyControlClassPlan,s6Step152EarlyControlFlagArena,s6Step152EarlyControlFittedArena,s6Step152EarlyControlHistoryArena,s6Step152EarlyControlSigmaArena,s6Step152EarlyControlOutputArena,s6Step152EarlyControlLog⟩

private def s6Step152CounterWork : List Wire := [891, 903, 791, 825]

private theorem s6Step152Counter_bounded : s6Step152CounterWork.toFinset⊆arenaWires := by norm_num [s6Step152CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step152HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152CounterDuring : Arena := ⟨s6Step152HeadFvAfter.live∪s6Step152CounterWork.toFinset,Finset.union_subset s6Step152HeadFvAfter.bounded s6Step152Counter_bounded⟩

private def s6Step152EntryFFresh : List Wire := [881]

private def s6Step152EntryFvFresh : List Wire := []

private def s6Step152EntryGFresh : List Wire := []

private def s6Step152EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152EntryGvFresh : List Wire := [779, 874]

private def s6Step152ExitFExtra : List Wire := [881, 887]

private def s6Step152ExitGExtra : List Wire := [908, 879]

private def s6Step152ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152ExitGvExtra : List Wire := [779, 874, 875]

private def s6Step152Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152Add0Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step152Add0_bounded : s6Step152Add0Work.toFinset⊆arenaWires := by
  have h : s6Step152Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step152Add0During : Arena := ⟨s6Step152Add0Arena.live∪s6Step152Add0Work.toFinset,Finset.union_subset s6Step152Add0Arena.bounded s6Step152Add0_bounded⟩

private def s6Step152Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152Add1Work : List Wire := [791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step152Add1_bounded : s6Step152Add1Work.toFinset⊆arenaWires := by
  have h : s6Step152Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step152Add1During : Arena := ⟨s6Step152Add1Arena.live∪s6Step152Add1Work.toFinset,Finset.union_subset s6Step152Add1Arena.bounded s6Step152Add1_bounded⟩

private def s6Step152F4FlagArena : Arena := ⟨s6Step152HeadFvAfter.live∪{891},Finset.union_subset s6Step152HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step152F4Plan : HmrHybridF4Plan := ⟨s6Step152F4FlagArena,[891],s6Step152Add0Arena,[903],s6Step152Add0During,s6Step152Add0Work,s6Step152Add1During,s6Step152Add1Work⟩

private def s6Step152HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881, 887],795⟩

private def s6Step152HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step152HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 879],777⟩

private def s6Step152HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874, 875],775⟩

private def s6Step152FrontHead : WindowBank := ⟨s6Step152HeadFOut,s6Step152HeadGOut,s6Step152HeadFvOut,s6Step152HeadGvOut⟩

private def s6Step152EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881],795⟩

private def s6Step152EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩

private def s6Step152EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩

private def s6Step152EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874],775⟩

private def s6Step152FrontPair : WindowBank := ⟨s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut⟩

private def s6Step152FrontSigmaArena : Arena := ⟨s6Step152EntryGvAfter.live∪{768},Finset.union_subset s6Step152EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step152HeadFFresh : List Wire := [887]

private def s6Step152HeadFvFresh : List Wire := [882]

private def s6Step152HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152HeadGFresh : List Wire := [879]

private def s6Step152HeadGvFresh : List Wire := [875]

private def s6Step152FrontPlan : HmrSourceFront := ⟨s6Step152EntryGvAfter,s6Step152FrontPair,(growRow 795 s6Step152EntryFFresh ++ (growRow 777 s6Step152EntryGFresh ++ (growRow 776 s6Step152EntryFvFresh ++ (growRow 775 s6Step152EntryGvFresh ++ [])))),s6Step152FrontSigmaArena,[768],s6Step152HeadGBefore,[859],
  s6Step152HeadFvAfter,s6Step152FrontHead,(growRow 777 s6Step152HeadGFresh ++ (growRow 795 s6Step152HeadFFresh ++ (growRow 775 s6Step152HeadGvFresh ++ (growRow 776 s6Step152HeadFvFresh ++ [])))),s6Step152F4Plan,s6Step152CounterDuring,s6Step152CounterWork,s6Step152ExitGvAfter,s6Step152FrontOut,(shrinkRow 777 s6Step152ExitGExtra ++ (shrinkRow 795 s6Step152ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step152ExitGvExtra ++ []))))⟩

private def s6Step152CompletePlan : HmrEarlyStepPlan := ⟨s6Step152FrontPlan,s6Step152EarlyControlArena,s6Step152EarlyControlPlan,s6Step152CompleteMoves⟩

private theorem s6Step152Complete_apart : List.Disjoint (s6Step152CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [768, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step152CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[768, 859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step152Complete_owned : (s6Step152CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152Complete_repack : s6Step152ExitGvAfter.checkRepack s6Step152CompleteMoves=some s6Step152EarlyControlArena := by rfl

private theorem s6Step152EarlyControl_branchOwned : ([859] : List Wire).toFinset⊆s6Step152EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlSigmaArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EarlyControl_branch : compileHmrBranchRetirement s6Step152EarlyControlSigmaArena 859=some s6Step152EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step152EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step152EarlyControlSigmaArena s6Step152EarlyControlOutputArena (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [859] rfl rfl
    decide +kernel

private theorem s6Step152EarlyControl_classEqualityBorrow : s6Step152EarlyControlPositiveArena.checkBorrow (([768, 908] : List Wire).length-1) s6Step152EarlyControlLog.classWork=some s6Step152EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step152EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step152EarlyControlEqualityArena,s6Step152EarlyControlPositiveArena,s6Step152EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step152EarlyControl_classEqualityOwned : ([768, 908] : List Wire).toFinset⊆s6Step152EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152EarlyControl_classEquality : compileHmrEqualityLog s6Step152EarlyControlPositiveArena [768, 908] 0 s6Step152EarlyControlLog.classWork=some (s6Step152EarlyControlEqualityArena,s6Step152EarlyControlLog.classWork,s6Step152EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step152EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step152EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step152EarlyControl_classOwned : ([769, 887, 768] : List Wire).toFinset⊆s6Step152EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152EarlyControl_positiveBorrow : s6Step152EarlyControlZeroArena.checkBorrow (1) s6Step152EarlyControlLog.positiveWork=some s6Step152EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step152EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step152EarlyControlPositiveArena,s6Step152EarlyControlZeroArena,s6Step152EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step152EarlyControl_class : compileHmrSourceClassLog s6Step152EarlyControlZeroArena false 769 s6Step152EarlyControlZeroPlan.top 0 768 s6Step152EarlyControlLog.positiveWork s6Step152EarlyControlLog.classWork=some s6Step152EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step152EarlyControlClassPlan s6Step152EarlyControlZeroArena false 769 s6Step152EarlyControlZeroPlan.top 0 768
  constructor
  · decide +kernel
  · exact s6Step152EarlyControl_classOwned
  · exact s6Step152EarlyControl_positiveBorrow
  · exact s6Step152EarlyControl_classEquality

private theorem s6Step152EarlyControl_entryRecordOwned : ([859, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EarlyControl_entrySigmaOwned : ([768, 254] : List Wire).toFinset⊆s6Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EarlyControl_fitBorrow : s6Step152EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step152EarlyControlLog.recordFresh=some s6Step152EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step152EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step152EarlyControlFittedArena,s6Step152EarlyControlFlagArena,s6Step152EarlyControlLog,arenaWires]

private theorem s6Step152EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step152EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152EarlyControl_fit : compileHmrRecordGrowLog s6Step152EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step152EarlyControlLog.recordFresh=some s6Step152EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step152EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step152EarlyControl_fitBorrow

private theorem s6Step152EarlyControl_flagsBorrow : s6Step152EarlyControlEqualityArena.checkBorrow (6) s6Step152EarlyControlLog.flagWork=some s6Step152EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step152EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step152EarlyControlFlagArena,s6Step152EarlyControlEqualityArena,s6Step152EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step152EarlyControl_flagsOwned : ([879, 253, 252, 251] : List Wire).toFinset⊆s6Step152EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152EarlyControl_flags : compileHmrFlagsLog s6Step152EarlyControlClassPlan.equalityArena s6Step152EarlyControlClassPlan.equality.top 253 252 251 s6Step152EarlyControlLog.flagWork=some s6Step152EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step152EarlyControl_flagsOwned⟩
  · exact s6Step152EarlyControl_flagsBorrow

private theorem s6Step152EarlyControl_historyBorrow : s6Step152EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step152EarlyControlLog.recordFresh=some s6Step152EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step152EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step152EarlyControlArena s6Step152EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step152EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step152EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EarlyControl_history : compileHmrRecordGrowLog s6Step152EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step152EarlyControlLog.recordFresh=some s6Step152EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step152EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step152EarlyControl_historyBorrow

private theorem s6Step152EarlyControl_sigmaOwned : ([254, 768] : List Wire).toFinset⊆s6Step152EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EarlyControl_sigmaReleaseOwned : ([768] : List Wire).toFinset⊆s6Step152EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlHistoryArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EarlyControl_sigmaRelease : s6Step152EarlyControlHistoryArena.release {768} (fun _ => false)=some s6Step152EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step152EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step152EarlyControlHistoryArena s6Step152EarlyControlSigmaArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [768] rfl rfl
    decide +kernel

private theorem s6Step152EarlyControl_sigma : compileHmrSigmaDropLog s6Step152EarlyControlHistoryArena false 0 0 254 768 []=some s6Step152EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step152EarlyControl_sigmaOwned⟩
  · exact s6Step152EarlyControl_sigmaRelease

private theorem s6Step152EarlyControl_zeroBorrow : s6Step152EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step152EarlyControlLog.zeroWork=some s6Step152EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step152EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step152EarlyControlArena s6Step152EarlyControlZeroArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step152EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step152EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step152EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step152EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step152EarlyControlArena (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EarlyControl_zero : compileHmrEqualityLog s6Step152EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step152EarlyControlLog.zeroWork=some (s6Step152EarlyControlZeroArena,s6Step152EarlyControlLog.zeroWork,s6Step152EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step152EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step152EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step152EarlyControl_logged : s6Step152EarlyControlPlan.Logged s6Step152EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 859 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step152EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step152EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step152EarlyControl_zero
  · exact s6Step152EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step152EarlyControl_flags
  · exact s6Step152EarlyControl_fit
  · exact s6Step152EarlyControl_history
  · exact s6Step152EarlyControl_sigma
  · exact s6Step152EarlyControl_branch

private theorem s6Step152EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step152EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 859 42 s6Step152EarlyControlLog=some s6Step152EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step152EarlyControlPlan s6Step152EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 254 253 252 251 859 42 s6Step152EarlyControl_logged

private def s6Step152EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448],795⟩

private def s6Step152EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩

private def s6Step152EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩

private def s6Step152EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855],775⟩

private def s6Step152FrontBank : WindowBank := ⟨s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow⟩

private def s6Step152Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881, 887, 795]

private def s6Step152Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 879, 777]

private def s6Step152Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882, 776]

private def s6Step152Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874, 875, 775]

private theorem s6Step152Counter_apart : Disjoint s6Step152HeadFvAfter.live s6Step152CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step152HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152Counter_borrowed : s6Step152HeadFvAfter.checkBorrow 4 s6Step152CounterWork=some s6Step152CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step152HeadFvAfter s6Step152CounterDuring s6Step152CounterWork.toFinset s6Step152Counter_bounded s6Step152Counter_apart rfl

private theorem s6Step152Counter_owned : (768::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step152HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step152HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152Counter_checked : compileHmrCounterStepLog s6Step152HeadFvAfter true 768 [774, 773, 772, 771, 770, 769] s6Step152CounterWork=some s6Step152CounterDuring := by
  have owned : ∀q∈768::[774, 773, 772, 771, 770, 769],q∈s6Step152HeadFvAfter.live := fun q hq => s6Step152Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step152Counter_borrowed

private def s6Step152EntryFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step152EntryBank_incomingDistinct : ([s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152EntryF_Incoming : rowsOwned s6Step152EntryFBefore [s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow] 0 s6Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152EntryBank_outgoingOwned : rowsOwned s6Step152EntryGvAfter [s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step152EntryGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152EntryF_Outgoing : rowsOwned s6Step152EntryGvAfter [s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut] :=
  hmrRows_owned_drop s6Step152EntryGvAfter [s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut] 0 s6Step152EntryBank_outgoingOwned

private theorem s6Step152EntryF_distinct : (s6Step152EntryFRow.sign::s6Step152EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152EntryF_owned : (s6Step152EntryFRow.sign::s6Step152EntryFRow.payload).toFinset⊆s6Step152EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EntryF_reserved : s6Step152EntryFBefore.reserve s6Step152EntryFFresh.toFinset=some s6Step152EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152EntryFFresh,arenaWires]
  · norm_num [s6Step152EntryFBefore,s6Step152EntryFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step152EntryFBefore s6Step152EntryFAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step152EntryFFresh rfl rfl
    · norm_num [s6Step152EntryFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step152EntryF_checked : planRowResizeLog s6Step152EntryFBefore s6Step152EntryFRow 194 s6Step152EntryFFresh=
    some (s6Step152EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881],795⟩,growRow 795 s6Step152EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step152EntryFBefore s6Step152EntryFAfter s6Step152EntryFRow 194 s6Step152EntryFFresh
    s6Step152EntryF_distinct s6Step152EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152EntryF_reserved
  have rowEq : WindowRow.mk (s6Step152EntryFRow.payload++s6Step152EntryFFresh) s6Step152EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step152EntryFvAfter : Arena := s6Step152EntryFAfter

private def s6Step152EntryFvBefore : Arena := s6Step152EntryFAfter

private theorem s6Step152EntryFv_Incoming : rowsOwned s6Step152EntryFvBefore [s6Step152EntryFvRow,s6Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow] 2 s6Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152EntryFv_Outgoing : rowsOwned s6Step152EntryGvAfter [s6Step152EntryFvOut,s6Step152EntryGvOut] :=
  hmrRows_owned_drop s6Step152EntryGvAfter [s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut] 2 s6Step152EntryBank_outgoingOwned

private theorem s6Step152EntryFv_distinct : (s6Step152EntryFvRow.sign::s6Step152EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152EntryFv_owned : (s6Step152EntryFvRow.sign::s6Step152EntryFvRow.payload).toFinset⊆s6Step152EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152EntryFvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EntryFv_reserved : s6Step152EntryFvBefore.reserve s6Step152EntryFvFresh.toFinset=some s6Step152EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152EntryFvFresh,arenaWires]
  · norm_num [s6Step152EntryFvBefore,s6Step152EntryFAfter,s6Step152EntryFvFresh,arenaWires]
  · simp only [s6Step152EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step152EntryFv_checked : planRowResizeLog s6Step152EntryFvBefore s6Step152EntryFvRow 91 s6Step152EntryFvFresh=
    some (s6Step152EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩,growRow 776 s6Step152EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step152EntryFvBefore s6Step152EntryFvAfter s6Step152EntryFvRow 91 s6Step152EntryFvFresh
    s6Step152EntryFv_distinct s6Step152EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step152EntryFvRow.payload++s6Step152EntryFvFresh) s6Step152EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step152EntryGAfter : Arena := s6Step152EntryFAfter

private def s6Step152EntryGBefore : Arena := s6Step152EntryFAfter

private theorem s6Step152EntryG_Incoming : rowsOwned s6Step152EntryGBefore [s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow] 1 s6Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152EntryG_Outgoing : rowsOwned s6Step152EntryGvAfter [s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut] :=
  hmrRows_owned_drop s6Step152EntryGvAfter [s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut] 1 s6Step152EntryBank_outgoingOwned

private theorem s6Step152EntryG_distinct : (s6Step152EntryGRow.sign::s6Step152EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152EntryG_owned : (s6Step152EntryGRow.sign::s6Step152EntryGRow.payload).toFinset⊆s6Step152EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152EntryGBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EntryG_reserved : s6Step152EntryGBefore.reserve s6Step152EntryGFresh.toFinset=some s6Step152EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152EntryGFresh,arenaWires]
  · norm_num [s6Step152EntryGBefore,s6Step152EntryFAfter,s6Step152EntryGFresh,arenaWires]
  · simp only [s6Step152EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step152EntryG_checked : planRowResizeLog s6Step152EntryGBefore s6Step152EntryGRow 194 s6Step152EntryGFresh=
    some (s6Step152EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩,growRow 777 s6Step152EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step152EntryGBefore s6Step152EntryGAfter s6Step152EntryGRow 194 s6Step152EntryGFresh
    s6Step152EntryG_distinct s6Step152EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152EntryG_reserved
  have rowEq : WindowRow.mk (s6Step152EntryGRow.payload++s6Step152EntryGFresh) s6Step152EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step152EntryGvBefore : Arena := s6Step152EntryFAfter

private theorem s6Step152EntryGv_Incoming : rowsOwned s6Step152EntryGvBefore [s6Step152EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow] 3 s6Step152EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152EntryGv_Outgoing : rowsOwned s6Step152EntryGvAfter [s6Step152EntryGvOut] :=
  hmrRows_owned_drop s6Step152EntryGvAfter [s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut] 3 s6Step152EntryBank_outgoingOwned

private theorem s6Step152EntryGv_distinct : (s6Step152EntryGvRow.sign::s6Step152EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152EntryGv_owned : (s6Step152EntryGvRow.sign::s6Step152EntryGvRow.payload).toFinset⊆s6Step152EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152EntryGvBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152EntryGv_reserved : s6Step152EntryGvBefore.reserve s6Step152EntryGvFresh.toFinset=some s6Step152EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s6Step152EntryGvBefore,s6Step152EntryFAfter,s6Step152EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step152EntryGvBefore s6Step152EntryGvAfter (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step152EntryGvFresh rfl rfl
    · norm_num [s6Step152EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step152EntryGv_checked : planRowResizeLog s6Step152EntryGvBefore s6Step152EntryGvRow 91 s6Step152EntryGvFresh=
    some (s6Step152EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874],775⟩,growRow 775 s6Step152EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step152EntryGvBefore s6Step152EntryGvAfter s6Step152EntryGvRow 91 s6Step152EntryGvFresh
    s6Step152EntryGv_distinct s6Step152EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step152EntryGvRow.payload++s6Step152EntryGvFresh) s6Step152EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step152EntryBank_rows : planWindowRowsLog s6Step152EntryFBefore [(s6Step152EntryFRow,194),(s6Step152EntryGRow,194),(s6Step152EntryFvRow,91),(s6Step152EntryGvRow,91)] [s6Step152EntryFFresh,s6Step152EntryGFresh,s6Step152EntryFvFresh,s6Step152EntryGvFresh]=
    some (s6Step152EntryGvAfter,[s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut],(growRow 795 s6Step152EntryFFresh ++ (growRow 777 s6Step152EntryGFresh ++ (growRow 776 s6Step152EntryFvFresh ++ (growRow 775 s6Step152EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step152EntryGvAfter [] []=some (s6Step152EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step152EntryGvBefore s6Step152EntryGvAfter s6Step152EntryGvAfter
    s6Step152EntryGvRow s6Step152EntryGvOut 91 s6Step152EntryGvFresh [] [] []
    (growRow 775 s6Step152EntryGvFresh) ([]) s6Step152EntryGv_Incoming s6Step152EntryGv_checked h4 s6Step152EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step152EntryFvBefore s6Step152EntryFvAfter s6Step152EntryGvAfter
    s6Step152EntryFvRow s6Step152EntryFvOut 91 s6Step152EntryFvFresh [(s6Step152EntryGvRow,91)] [s6Step152EntryGvFresh] [s6Step152EntryGvOut]
    (growRow 776 s6Step152EntryFvFresh) ((growRow 775 s6Step152EntryGvFresh ++ [])) s6Step152EntryFv_Incoming s6Step152EntryFv_checked h3 s6Step152EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step152EntryGBefore s6Step152EntryGAfter s6Step152EntryGvAfter
    s6Step152EntryGRow s6Step152EntryGOut 194 s6Step152EntryGFresh [(s6Step152EntryFvRow,91),(s6Step152EntryGvRow,91)] [s6Step152EntryFvFresh,s6Step152EntryGvFresh] [s6Step152EntryFvOut,s6Step152EntryGvOut]
    (growRow 777 s6Step152EntryGFresh) ((growRow 776 s6Step152EntryFvFresh ++ (growRow 775 s6Step152EntryGvFresh ++ []))) s6Step152EntryG_Incoming s6Step152EntryG_checked h2 s6Step152EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step152EntryFBefore s6Step152EntryFAfter s6Step152EntryGvAfter
    s6Step152EntryFRow s6Step152EntryFOut 194 s6Step152EntryFFresh [(s6Step152EntryGRow,194),(s6Step152EntryFvRow,91),(s6Step152EntryGvRow,91)] [s6Step152EntryGFresh,s6Step152EntryFvFresh,s6Step152EntryGvFresh] [s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut]
    (growRow 795 s6Step152EntryFFresh) ((growRow 777 s6Step152EntryGFresh ++ (growRow 776 s6Step152EntryFvFresh ++ (growRow 775 s6Step152EntryGvFresh ++ [])))) s6Step152EntryF_Incoming s6Step152EntryF_checked h1 s6Step152EntryF_Outgoing
  exact h0

private theorem s6Step152EntryBank_checked : compileHmrBankResizeLog .entry s6Step152EntryFBefore ⟨s6Step152EntryFRow,s6Step152EntryGRow,s6Step152EntryFvRow,s6Step152EntryGvRow⟩ ⟨194,194,91,91⟩ [s6Step152EntryFFresh,s6Step152EntryGFresh,s6Step152EntryFvFresh,s6Step152EntryGvFresh]=
    some (s6Step152EntryGvAfter,⟨s6Step152EntryFOut,s6Step152EntryGOut,s6Step152EntryFvOut,s6Step152EntryGvOut⟩,(growRow 795 s6Step152EntryFFresh ++ (growRow 777 s6Step152EntryGFresh ++ (growRow 776 s6Step152EntryFvFresh ++ (growRow 775 s6Step152EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step152EntryBank_rows]
  rfl

private def s6Step152ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152ExitFBefore : Arena := s6Step152ExitGAfter

private def s6Step152ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881, 887],795⟩

private def s6Step152ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩

private def s6Step152ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 879],777⟩

private def s6Step152ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874, 875],775⟩

private theorem s6Step152ExitBank_incomingDistinct : ([s6Step152ExitGRow,s6Step152ExitFRow,s6Step152ExitFvRow,s6Step152ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152ExitF_Incoming : rowsOwned s6Step152ExitFBefore [s6Step152ExitFRow,s6Step152ExitFvRow,s6Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152ExitGRow,s6Step152ExitFRow,s6Step152ExitFvRow,s6Step152ExitGvRow] 1 s6Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step152ExitBank_outgoingOwned : rowsOwned s6Step152ExitGvAfter [s6Step152ExitGOut,s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step152ExitGvAfter (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152ExitF_Outgoing : rowsOwned s6Step152ExitGvAfter [s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut] :=
  hmrRows_owned_drop s6Step152ExitGvAfter [s6Step152ExitGOut,s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut] 1 s6Step152ExitBank_outgoingOwned

private theorem s6Step152ExitF_distinct : (s6Step152ExitFRow.sign::s6Step152ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152ExitF_owned : (s6Step152ExitFRow.sign::s6Step152ExitFRow.payload).toFinset⊆s6Step152ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152ExitF_retired : s6Step152ExitFBefore.retireSet s6Step152ExitFExtra.toFinset=s6Step152ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step152ExitFBefore s6Step152ExitFAfter s6Step152ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step152ExitFBefore s6Step152ExitFAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<879) ∨ (880≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<908) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step152ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step152ExitF_checked : planRowResizeLog s6Step152ExitFBefore s6Step152ExitFRow 193 []=
    some (s6Step152ExitFAfter,s6Step152ExitFOut,shrinkRow 795 s6Step152ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step152ExitFBefore s6Step152ExitFRow 193 s6Step152ExitF_distinct s6Step152ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step152ExitFRow.payload.take 193) s6Step152ExitFRow.sign=s6Step152ExitFOut := by decide +kernel
  have hi : s6Step152ExitFRow.payload.drop 193=s6Step152ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step152ExitF_retired] at result
  exact result

private def s6Step152ExitFvAfter : Arena := s6Step152ExitFAfter

private def s6Step152ExitFvBefore : Arena := s6Step152ExitFAfter

private theorem s6Step152ExitFv_Incoming : rowsOwned s6Step152ExitFvBefore [s6Step152ExitFvRow,s6Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152ExitGRow,s6Step152ExitFRow,s6Step152ExitFvRow,s6Step152ExitGvRow] 2 s6Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152ExitFv_Outgoing : rowsOwned s6Step152ExitGvAfter [s6Step152ExitFvOut,s6Step152ExitGvOut] :=
  hmrRows_owned_drop s6Step152ExitGvAfter [s6Step152ExitGOut,s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut] 2 s6Step152ExitBank_outgoingOwned

private theorem s6Step152ExitFv_distinct : (s6Step152ExitFvRow.sign::s6Step152ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152ExitFv_owned : (s6Step152ExitFvRow.sign::s6Step152ExitFvRow.payload).toFinset⊆s6Step152ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152ExitFvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152ExitFv_reserved : s6Step152ExitFvBefore.reserve (∅ : Finset Wire)=some s6Step152ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s6Step152ExitFv_checked : planRowResizeLog s6Step152ExitFvBefore s6Step152ExitFvRow 92 []=
    some (s6Step152ExitFvAfter,s6Step152ExitFvOut,growRow 776 []) := by
  have result := planRowResizeLog_of_growth s6Step152ExitFvBefore s6Step152ExitFvAfter s6Step152ExitFvRow 92 []
    s6Step152ExitFv_distinct s6Step152ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152ExitFv_reserved
  have rowEq : WindowRow.mk (s6Step152ExitFvRow.payload++[]) s6Step152ExitFvRow.sign=s6Step152ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step152ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step152ExitG_Incoming : rowsOwned s6Step152ExitGBefore [s6Step152ExitGRow,s6Step152ExitFRow,s6Step152ExitFvRow,s6Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152ExitGRow,s6Step152ExitFRow,s6Step152ExitFvRow,s6Step152ExitGvRow] 0 s6Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step152ExitG_Outgoing : rowsOwned s6Step152ExitGvAfter [s6Step152ExitGOut,s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut] :=
  hmrRows_owned_drop s6Step152ExitGvAfter [s6Step152ExitGOut,s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut] 0 s6Step152ExitBank_outgoingOwned

private theorem s6Step152ExitG_distinct : (s6Step152ExitGRow.sign::s6Step152ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152ExitG_owned : (s6Step152ExitGRow.sign::s6Step152ExitGRow.payload).toFinset⊆s6Step152ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152ExitG_retired : s6Step152ExitGBefore.retireSet s6Step152ExitGExtra.toFinset=s6Step152ExitGAfter := by
  unfold Arena.retireSet s6Step152ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s6Step152ExitGBefore,s6Step152ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s6Step152ExitG_checked : planRowResizeLog s6Step152ExitGBefore s6Step152ExitGRow 193 []=
    some (s6Step152ExitGAfter,s6Step152ExitGOut,shrinkRow 777 s6Step152ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step152ExitGBefore s6Step152ExitGRow 193 s6Step152ExitG_distinct s6Step152ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step152ExitGRow.payload.take 193) s6Step152ExitGRow.sign=s6Step152ExitGOut := by decide +kernel
  have hi : s6Step152ExitGRow.payload.drop 193=s6Step152ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step152ExitG_retired] at result
  exact result

private def s6Step152ExitGvBefore : Arena := s6Step152ExitFAfter

private theorem s6Step152ExitGv_Incoming : rowsOwned s6Step152ExitGvBefore [s6Step152ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152ExitGRow,s6Step152ExitFRow,s6Step152ExitFvRow,s6Step152ExitGvRow] 3 s6Step152ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152ExitGv_Outgoing : rowsOwned s6Step152ExitGvAfter [s6Step152ExitGvOut] :=
  hmrRows_owned_drop s6Step152ExitGvAfter [s6Step152ExitGOut,s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut] 3 s6Step152ExitBank_outgoingOwned

private theorem s6Step152ExitGv_distinct : (s6Step152ExitGvRow.sign::s6Step152ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152ExitGv_owned : (s6Step152ExitGvRow.sign::s6Step152ExitGvRow.payload).toFinset⊆s6Step152ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152ExitGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152ExitGv_retired : s6Step152ExitGvBefore.retireSet s6Step152ExitGvExtra.toFinset=s6Step152ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step152ExitGvBefore s6Step152ExitGvAfter s6Step152ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step152ExitGvBefore s6Step152ExitGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,874),(876,879),(880,881),(882,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,908),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step152ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step152ExitGv_checked : planRowResizeLog s6Step152ExitGvBefore s6Step152ExitGvRow 89 []=
    some (s6Step152ExitGvAfter,s6Step152ExitGvOut,shrinkRow 775 s6Step152ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step152ExitGvBefore s6Step152ExitGvRow 89 s6Step152ExitGv_distinct s6Step152ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step152ExitGvRow.payload.take 89) s6Step152ExitGvRow.sign=s6Step152ExitGvOut := by decide +kernel
  have hi : s6Step152ExitGvRow.payload.drop 89=s6Step152ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step152ExitGv_retired] at result
  exact result

private theorem s6Step152ExitBank_rows : planWindowRowsLog s6Step152ExitGBefore [(s6Step152ExitGRow,193),(s6Step152ExitFRow,193),(s6Step152ExitFvRow,92),(s6Step152ExitGvRow,89)] [[],[],[],[]]=
    some (s6Step152ExitGvAfter,[s6Step152ExitGOut,s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut],(shrinkRow 777 s6Step152ExitGExtra ++ (shrinkRow 795 s6Step152ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step152ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step152ExitGvAfter [] []=some (s6Step152ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step152ExitGvBefore s6Step152ExitGvAfter s6Step152ExitGvAfter
    s6Step152ExitGvRow s6Step152ExitGvOut 89 [] [] [] []
    (shrinkRow 775 s6Step152ExitGvExtra) ([]) s6Step152ExitGv_Incoming s6Step152ExitGv_checked h4 s6Step152ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step152ExitFvBefore s6Step152ExitFvAfter s6Step152ExitGvAfter
    s6Step152ExitFvRow s6Step152ExitFvOut 92 [] [(s6Step152ExitGvRow,89)] [[]] [s6Step152ExitGvOut]
    (growRow 776 []) ((shrinkRow 775 s6Step152ExitGvExtra ++ [])) s6Step152ExitFv_Incoming s6Step152ExitFv_checked h3 s6Step152ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step152ExitFBefore s6Step152ExitFAfter s6Step152ExitGvAfter
    s6Step152ExitFRow s6Step152ExitFOut 193 [] [(s6Step152ExitFvRow,92),(s6Step152ExitGvRow,89)] [[],[]] [s6Step152ExitFvOut,s6Step152ExitGvOut]
    (shrinkRow 795 s6Step152ExitFExtra) ((growRow 776 [] ++ (shrinkRow 775 s6Step152ExitGvExtra ++ []))) s6Step152ExitF_Incoming s6Step152ExitF_checked h2 s6Step152ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step152ExitGBefore s6Step152ExitGAfter s6Step152ExitGvAfter
    s6Step152ExitGRow s6Step152ExitGOut 193 [] [(s6Step152ExitFRow,193),(s6Step152ExitFvRow,92),(s6Step152ExitGvRow,89)] [[],[],[]] [s6Step152ExitFOut,s6Step152ExitFvOut,s6Step152ExitGvOut]
    (shrinkRow 777 s6Step152ExitGExtra) ((shrinkRow 795 s6Step152ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step152ExitGvExtra ++ [])))) s6Step152ExitG_Incoming s6Step152ExitG_checked h1 s6Step152ExitG_Outgoing
  exact h0

private theorem s6Step152ExitBank_checked : compileHmrBankResizeLog .exit s6Step152ExitGBefore ⟨s6Step152ExitFRow,s6Step152ExitGRow,s6Step152ExitFvRow,s6Step152ExitGvRow⟩ ⟨193,193,92,89⟩ [[],[],[],[]]=
    some (s6Step152ExitGvAfter,⟨s6Step152ExitFOut,s6Step152ExitGOut,s6Step152ExitFvOut,s6Step152ExitGvOut⟩,(shrinkRow 777 s6Step152ExitGExtra ++ (shrinkRow 795 s6Step152ExitFExtra ++ (growRow 776 [] ++ (shrinkRow 775 s6Step152ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step152ExitBank_rows]
  rfl

private theorem s6Step152Add0_apart : Disjoint s6Step152Add0Arena.live s6Step152Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step152Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152Add0_card : s6Step152Add0Arena.live.card=886 := by
  decide +kernel

private theorem s6Step152Add0_borrowed : s6Step152Add0Arena.checkBorrow (hmrHybridCount s6Step152Add0Arena s6Step152Add0B.length) s6Step152Add0Work=some s6Step152Add0During := by
  have len : s6Step152Add0Work.length=hmrHybridCount s6Step152Add0Arena s6Step152Add0B.length := by
    rw [hmrHybridCount,s6Step152Add0_card]
    decide +kernel
  have nd : s6Step152Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step152Add0Arena s6Step152Add0During s6Step152Add0Work.toFinset s6Step152Add0_bounded s6Step152Add0_apart rfl

private theorem s6Step152Add0_distinct : (891::859::903::(s6Step152Add0A++s6Step152Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152Add0_owned : (891::859::903::(s6Step152Add0A++s6Step152Add0B)).toFinset⊆s6Step152Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step152Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152Add0_checked : compileHmrHybridCinLog s6Step152Add0Arena 859 891 903 s6Step152Add0A s6Step152Add0B s6Step152Add0Work=some s6Step152Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step152Add0Arena s6Step152Add0During 859 891 903 s6Step152Add0A s6Step152Add0B s6Step152Add0Work
    (by decide +kernel) (by decide +kernel) s6Step152Add0_distinct
    (fun q hq => s6Step152Add0_owned (List.mem_toFinset.mpr hq)) s6Step152Add0_borrowed

private theorem s6Step152Add1_apart : Disjoint s6Step152Add1Arena.live s6Step152Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step152Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152Add1_card : s6Step152Add1Arena.live.card=886 := by
  decide +kernel

private theorem s6Step152Add1_borrowed : s6Step152Add1Arena.checkBorrow (hmrHybridCount s6Step152Add1Arena s6Step152Add1B.length) s6Step152Add1Work=some s6Step152Add1During := by
  have len : s6Step152Add1Work.length=hmrHybridCount s6Step152Add1Arena s6Step152Add1B.length := by
    rw [hmrHybridCount,s6Step152Add1_card]
    decide +kernel
  have nd : s6Step152Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step152Add1Arena s6Step152Add1During s6Step152Add1Work.toFinset s6Step152Add1_bounded s6Step152Add1_apart rfl

private theorem s6Step152Add1_distinct : (891::859::903::(s6Step152Add1A++s6Step152Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152Add1_owned : (891::859::903::(s6Step152Add1A++s6Step152Add1B)).toFinset⊆s6Step152Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step152Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152Add1_checked : compileHmrHybridCinLog s6Step152Add1Arena 859 891 903 s6Step152Add1A s6Step152Add1B s6Step152Add1Work=some s6Step152Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step152Add1Arena s6Step152Add1During 859 891 903 s6Step152Add1A s6Step152Add1B s6Step152Add1Work
    (by decide +kernel) (by decide +kernel) s6Step152Add1_distinct
    (fun q hq => s6Step152Add1_owned (List.mem_toFinset.mpr hq)) s6Step152Add1_borrowed

private theorem s6Step152F4_apart : Disjoint (s6Step152Add0A++s6Step152Add0B).toFinset (s6Step152Add1A++s6Step152Add1B).toFinset := by
  have nd : ((s6Step152Add0A++s6Step152Add0B)++(s6Step152Add1A++s6Step152Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step152F4_carry : s6Step152F4FlagArena.checkBorrow 1 [903]=some s6Step152Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step152F4FlagArena,s6Step152HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step152F4FlagArena,s6Step152HeadFvAfter,s6Step152Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step152F4_distinct : (768::859::891::903::((s6Step152Add0A++s6Step152Add1A)++(s6Step152Add0B++s6Step152Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152F4_flag : s6Step152HeadFvAfter.checkBorrow 1 [891]=some s6Step152F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step152HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step152F4_owned : (768::859::((s6Step152Add0A++s6Step152Add1A)++(s6Step152Add0B++s6Step152Add1B))).toFinset⊆s6Step152HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step152HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152F4_checked : compileHmrHybridF4Log s6Step152HeadFvAfter 768 859 s6Step152Add0A s6Step152Add0B s6Step152Add1A s6Step152Add1B [891] [903] s6Step152Add0Work s6Step152Add1Work=some s6Step152F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step152HeadFvAfter s6Step152F4FlagArena s6Step152Add0Arena s6Step152Add0During s6Step152Add1During 768 859
    s6Step152Add0A s6Step152Add0B s6Step152Add1A s6Step152Add1B [891] [903] s6Step152Add0Work s6Step152Add1Work
    (fun q hq => s6Step152F4_owned (List.mem_toFinset.mpr hq)) s6Step152F4_flag s6Step152F4_carry
    s6Step152F4_distinct s6Step152F4_apart s6Step152Add0_checked s6Step152Add1_checked

private theorem s6Step152Front_branch : s6Step152FrontSigmaArena.checkBorrow 1 [859]=some s6Step152HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step152FrontSigmaArena,s6Step152EntryGvAfter,arenaWires]
  · change s6Step152HeadGBefore.live=(s6Step152EntryGvAfter.live∪{768})∪{859}
    apply hmrArena_union_pair_of_filter_check s6Step152EntryGvAfter s6Step152HeadGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 768 859 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step152Front_entry : HmrFrontEntryValid s6Step152EntryFBefore s6Step152FrontBank 194 91 ⟨193,193,92,89⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step152FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step152EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step152EntryFBefore (fun q => ([(0,768),(769,779),(780,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,859),(860,874),(876,879),(880,881),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step152FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step152Front_sigma : s6Step152EntryGvAfter.checkBorrow 1 [768]=some s6Step152FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step152EntryGvAfter,arenaWires]
  · rfl

private def s6Step152HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step152HeadFBefore : Arena := s6Step152HeadGAfter

private def s6Step152HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881],795⟩

private def s6Step152HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858],776⟩

private def s6Step152HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908],777⟩

private def s6Step152HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874],775⟩

private theorem s6Step152HeadBank_incomingDistinct : ([s6Step152HeadGRow,s6Step152HeadFRow,s6Step152HeadGvRow,s6Step152HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152HeadF_Incoming : rowsOwned s6Step152HeadFBefore [s6Step152HeadFRow,s6Step152HeadGvRow,s6Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152HeadGRow,s6Step152HeadFRow,s6Step152HeadGvRow,s6Step152HeadFvRow] 1 s6Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152HeadBank_outgoingOwned : rowsOwned s6Step152HeadFvAfter [s6Step152HeadGOut,s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step152HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step152HeadF_Outgoing : rowsOwned s6Step152HeadFvAfter [s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut] :=
  hmrRows_owned_drop s6Step152HeadFvAfter [s6Step152HeadGOut,s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut] 1 s6Step152HeadBank_outgoingOwned

private theorem s6Step152HeadF_distinct : (s6Step152HeadFRow.sign::s6Step152HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152HeadF_owned : (s6Step152HeadFRow.sign::s6Step152HeadFRow.payload).toFinset⊆s6Step152HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152HeadFBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152HeadF_reserved : s6Step152HeadFBefore.reserve s6Step152HeadFFresh.toFinset=some s6Step152HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152HeadFFresh,arenaWires]
  · norm_num [s6Step152HeadFBefore,s6Step152HeadGAfter,s6Step152HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step152HeadFBefore s6Step152HeadFAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step152HeadFFresh rfl rfl
    · norm_num [s6Step152HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step152HeadF_checked : planRowResizeLog s6Step152HeadFBefore s6Step152HeadFRow 195 s6Step152HeadFFresh=
    some (s6Step152HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881, 887],795⟩,growRow 795 s6Step152HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step152HeadFBefore s6Step152HeadFAfter s6Step152HeadFRow 195 s6Step152HeadFFresh
    s6Step152HeadF_distinct s6Step152HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152HeadF_reserved
  have rowEq : WindowRow.mk (s6Step152HeadFRow.payload++s6Step152HeadFFresh) s6Step152HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 881, 887],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step152HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step152HeadFvBefore : Arena := s6Step152HeadGvAfter

private theorem s6Step152HeadFv_Incoming : rowsOwned s6Step152HeadFvBefore [s6Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152HeadGRow,s6Step152HeadFRow,s6Step152HeadGvRow,s6Step152HeadFvRow] 3 s6Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step152HeadFv_Outgoing : rowsOwned s6Step152HeadFvAfter [s6Step152HeadFvOut] :=
  hmrRows_owned_drop s6Step152HeadFvAfter [s6Step152HeadGOut,s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut] 3 s6Step152HeadBank_outgoingOwned

private theorem s6Step152HeadFv_distinct : (s6Step152HeadFvRow.sign::s6Step152HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152HeadFv_owned : (s6Step152HeadFvRow.sign::s6Step152HeadFvRow.payload).toFinset⊆s6Step152HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152HeadFv_reserved : s6Step152HeadFvBefore.reserve s6Step152HeadFvFresh.toFinset=some s6Step152HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152HeadFvFresh,arenaWires]
  · norm_num [s6Step152HeadFvBefore,s6Step152HeadGvAfter,s6Step152HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step152HeadFvAfter,s6Step152HeadFvBefore,s6Step152HeadGvAfter,s6Step152HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step152HeadFv_checked : planRowResizeLog s6Step152HeadFvBefore s6Step152HeadFvRow 92 s6Step152HeadFvFresh=
    some (s6Step152HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩,growRow 776 s6Step152HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step152HeadFvBefore s6Step152HeadFvAfter s6Step152HeadFvRow 92 s6Step152HeadFvFresh
    s6Step152HeadFv_distinct s6Step152HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step152HeadFvRow.payload++s6Step152HeadFvFresh) s6Step152HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 780, 867, 877, 807, 858, 882],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step152HeadG_Incoming : rowsOwned s6Step152HeadGBefore [s6Step152HeadGRow,s6Step152HeadFRow,s6Step152HeadGvRow,s6Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152HeadGRow,s6Step152HeadFRow,s6Step152HeadGvRow,s6Step152HeadFvRow] 0 s6Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step152HeadG_Outgoing : rowsOwned s6Step152HeadFvAfter [s6Step152HeadGOut,s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut] :=
  hmrRows_owned_drop s6Step152HeadFvAfter [s6Step152HeadGOut,s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut] 0 s6Step152HeadBank_outgoingOwned

private theorem s6Step152HeadG_distinct : (s6Step152HeadGRow.sign::s6Step152HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152HeadG_owned : (s6Step152HeadGRow.sign::s6Step152HeadGRow.payload).toFinset⊆s6Step152HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152HeadGBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step152HeadG_reserved : s6Step152HeadGBefore.reserve s6Step152HeadGFresh.toFinset=some s6Step152HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152HeadGFresh,arenaWires]
  · norm_num [s6Step152HeadGBefore,s6Step152HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step152HeadGBefore s6Step152HeadGAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,882),(883,887),(888,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step152HeadGFresh rfl rfl
    · norm_num [s6Step152HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step152HeadG_checked : planRowResizeLog s6Step152HeadGBefore s6Step152HeadGRow 195 s6Step152HeadGFresh=
    some (s6Step152HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 879],777⟩,growRow 777 s6Step152HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step152HeadGBefore s6Step152HeadGAfter s6Step152HeadGRow 195 s6Step152HeadGFresh
    s6Step152HeadG_distinct s6Step152HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152HeadG_reserved
  have rowEq : WindowRow.mk (s6Step152HeadGRow.payload++s6Step152HeadGFresh) s6Step152HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 908, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step152HeadGvBefore : Arena := s6Step152HeadFAfter

private theorem s6Step152HeadGv_Incoming : rowsOwned s6Step152HeadGvBefore [s6Step152HeadGvRow,s6Step152HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step152HeadGRow,s6Step152HeadFRow,s6Step152HeadGvRow,s6Step152HeadFvRow] 2 s6Step152HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step152HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step152HeadGv_Outgoing : rowsOwned s6Step152HeadFvAfter [s6Step152HeadGvOut,s6Step152HeadFvOut] :=
  hmrRows_owned_drop s6Step152HeadFvAfter [s6Step152HeadGOut,s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut] 2 s6Step152HeadBank_outgoingOwned

private theorem s6Step152HeadGv_distinct : (s6Step152HeadGvRow.sign::s6Step152HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step152HeadGv_owned : (s6Step152HeadGvRow.sign::s6Step152HeadGvRow.payload).toFinset⊆s6Step152HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step152HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step152HeadGv_reserved : s6Step152HeadGvBefore.reserve s6Step152HeadGvFresh.toFinset=some s6Step152HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step152HeadGvFresh,arenaWires]
  · norm_num [s6Step152HeadGvBefore,s6Step152HeadFAfter,s6Step152HeadGvFresh,arenaWires]
  · ext q
    simp only [s6Step152HeadGvAfter,s6Step152HeadGvBefore,s6Step152HeadFAfter,s6Step152HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step152HeadGv_checked : planRowResizeLog s6Step152HeadGvBefore s6Step152HeadGvRow 92 s6Step152HeadGvFresh=
    some (s6Step152HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874, 875],775⟩,growRow 775 s6Step152HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step152HeadGvBefore s6Step152HeadGvAfter s6Step152HeadGvRow 92 s6Step152HeadGvFresh
    s6Step152HeadGv_distinct s6Step152HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step152HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step152HeadGvRow.payload++s6Step152HeadGvFresh) s6Step152HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 794, 802, 855, 779, 874, 875],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step152HeadBank_rows : planWindowRowsLog s6Step152HeadGBefore [(s6Step152HeadGRow,195),(s6Step152HeadFRow,195),(s6Step152HeadGvRow,92),(s6Step152HeadFvRow,92)] [s6Step152HeadGFresh,s6Step152HeadFFresh,s6Step152HeadGvFresh,s6Step152HeadFvFresh]=
    some (s6Step152HeadFvAfter,[s6Step152HeadGOut,s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut],(growRow 777 s6Step152HeadGFresh ++ (growRow 795 s6Step152HeadFFresh ++ (growRow 775 s6Step152HeadGvFresh ++ (growRow 776 s6Step152HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step152HeadFvAfter [] []=some (s6Step152HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step152HeadFvBefore s6Step152HeadFvAfter s6Step152HeadFvAfter
    s6Step152HeadFvRow s6Step152HeadFvOut 92 s6Step152HeadFvFresh [] [] []
    (growRow 776 s6Step152HeadFvFresh) ([]) s6Step152HeadFv_Incoming s6Step152HeadFv_checked h4 s6Step152HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step152HeadGvBefore s6Step152HeadGvAfter s6Step152HeadFvAfter
    s6Step152HeadGvRow s6Step152HeadGvOut 92 s6Step152HeadGvFresh [(s6Step152HeadFvRow,92)] [s6Step152HeadFvFresh] [s6Step152HeadFvOut]
    (growRow 775 s6Step152HeadGvFresh) ((growRow 776 s6Step152HeadFvFresh ++ [])) s6Step152HeadGv_Incoming s6Step152HeadGv_checked h3 s6Step152HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step152HeadFBefore s6Step152HeadFAfter s6Step152HeadFvAfter
    s6Step152HeadFRow s6Step152HeadFOut 195 s6Step152HeadFFresh [(s6Step152HeadGvRow,92),(s6Step152HeadFvRow,92)] [s6Step152HeadGvFresh,s6Step152HeadFvFresh] [s6Step152HeadGvOut,s6Step152HeadFvOut]
    (growRow 795 s6Step152HeadFFresh) ((growRow 775 s6Step152HeadGvFresh ++ (growRow 776 s6Step152HeadFvFresh ++ []))) s6Step152HeadF_Incoming s6Step152HeadF_checked h2 s6Step152HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step152HeadGBefore s6Step152HeadGAfter s6Step152HeadFvAfter
    s6Step152HeadGRow s6Step152HeadGOut 195 s6Step152HeadGFresh [(s6Step152HeadFRow,195),(s6Step152HeadGvRow,92),(s6Step152HeadFvRow,92)] [s6Step152HeadFFresh,s6Step152HeadGvFresh,s6Step152HeadFvFresh] [s6Step152HeadFOut,s6Step152HeadGvOut,s6Step152HeadFvOut]
    (growRow 777 s6Step152HeadGFresh) ((growRow 795 s6Step152HeadFFresh ++ (growRow 775 s6Step152HeadGvFresh ++ (growRow 776 s6Step152HeadFvFresh ++ [])))) s6Step152HeadG_Incoming s6Step152HeadG_checked h1 s6Step152HeadG_Outgoing
  exact h0

private theorem s6Step152HeadBank_checked : compileHmrBankResizeLog .headroom s6Step152HeadGBefore ⟨s6Step152HeadFRow,s6Step152HeadGRow,s6Step152HeadFvRow,s6Step152HeadGvRow⟩ ⟨195,195,92,92⟩ [s6Step152HeadGFresh,s6Step152HeadFFresh,s6Step152HeadGvFresh,s6Step152HeadFvFresh]=
    some (s6Step152HeadFvAfter,⟨s6Step152HeadFOut,s6Step152HeadGOut,s6Step152HeadFvOut,s6Step152HeadGvOut⟩,(growRow 777 s6Step152HeadGFresh ++ (growRow 795 s6Step152HeadFFresh ++ (growRow 775 s6Step152HeadGvFresh ++ (growRow 776 s6Step152HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step152HeadBank_rows]
  rfl

private theorem s6Step152Front_checked : compileHmrSourceFrontLog s6Step152EntryFBefore s6Step152FrontBank 194 91 ⟨193,193,92,89⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step152FrontLog=some s6Step152FrontPlan := by
  have pairEq : s6Step152FrontPair=⟨s6Step152HeadFRow,s6Step152HeadGRow,s6Step152HeadFvRow,s6Step152HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step152FrontHead=⟨s6Step152ExitFRow,s6Step152ExitGRow,s6Step152ExitFvRow,s6Step152ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step152Add0A=s6Step152FrontHead.f.wires := by decide +kernel
  have gEq : s6Step152Add0B=s6Step152FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step152Add1A=s6Step152FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step152Add1B=s6Step152FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step152EntryFBefore s6Step152FrontBank 194 91 ⟨193,193,92,89⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step152FrontLog s6Step152FrontPlan
  · exact s6Step152Front_entry
  · exact s6Step152EntryBank_checked
  · exact s6Step152Front_sigma
  · rfl
  · exact s6Step152Front_branch
  · rfl
  · simpa only [s6Step152FrontPlan,pairEq] using s6Step152HeadBank_checked
  · simpa only [s6Step152FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step152F4_checked
  · exact s6Step152Counter_checked
  · rfl
  · simpa only [s6Step152FrontPlan,headEq] using s6Step152ExitBank_checked

private theorem s6Step152Complete_explicit_checked : compileHmrEarlyStepLog s6Step152EntryFBefore s6Step152FrontBank 194 91 ⟨193,193,92,89⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step152CompleteLog=some s6Step152CompletePlan := by
  let Q := s6Step152EarlyControlPlan
  have hq := s6Step152EarlyControl_plan_checked
  have fv1 : s6Step152CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step152CompleteOut.fv.payload[2]?.getD s6Step152CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step152CompleteOut.fv.payload[3]?.getD s6Step152CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step152CompleteOut.fv.payload[4]?.getD s6Step152CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step152EntryFBefore s6Step152EarlyControlArena s6Step152FrontBank 194 91 ⟨193,193,92,89⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step152CompleteLog s6Step152FrontPlan Q
    s6Step152Front_checked s6Step152Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step152Complete_owned s6Step152Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step152EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 768 s6Step152CompleteOut.fv.second (s6Step152CompleteOut.fv.payload[2]?.getD s6Step152CompleteOut.fv.sign) (s6Step152CompleteOut.fv.payload[3]?.getD s6Step152CompleteOut.fv.sign) (s6Step152CompleteOut.fv.payload[4]?.getD s6Step152CompleteOut.fv.sign) 859 42 s6Step152EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep152Arena : Arena := s6Step152EntryFBefore
def s6PrivateStep152Bank : WindowBank := s6Step152FrontBank
def s6PrivateStep152Spec : HmrSourceWalkStepLog := ⟨194,91,⟨193,193,92,89⟩,42,.early s6Step152CompleteLog⟩
def s6PrivateStep152Plan : HmrSourceStepPlan := .early s6Step152CompletePlan
theorem s6PrivateStep152_source : s6PrivateStep152Spec=s6ObservedLogs144[8] := rfl
theorem s6PrivateStep152_checked : compileHmrSourceStepLog s6PrivateStep152Arena s6PrivateStep152Bank
    s6PrivateStep152Spec.fgWidth s6PrivateStep152Spec.vWidth s6PrivateStep152Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 152 s6PrivateStep152Spec.need none s6PrivateStep152Spec.log=some s6PrivateStep152Plan := by
  change compileHmrSourceStepLog s6Step152EntryFBefore s6Step152FrontBank 194 91 ⟨193,193,92,89⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 152 42 none (.early s6Step152CompleteLog)=some (.early s6Step152CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 152<498)]
  rw [s6Step152Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
