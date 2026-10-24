import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep142
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

private def s6Step144CompleteMoves : List (Wire × Wire) := []

private def s6Step144EarlyControlLog : HmrEarlyControlLog := ⟨[867, 802, 807, 780, 768],[879],[875],[882, 891, 903, 791, 825, 810],[]⟩

private def s6Step144FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [927]],[[780], [807], [867], [802]],[[], [], [], []]⟩,[855],[794],[768],[879],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[768, 879, 875, 882]⟩

private def s6Step144CompleteLog : HmrEarlyStepLog := ⟨s6Step144FrontLog,s6Step144CompleteMoves,s6Step144EarlyControlLog⟩

private def s6Step144ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step144ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step144ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step144ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step144FrontOut : WindowBank := ⟨s6Step144ExitFOut,s6Step144ExitGOut,s6Step144ExitFvOut,s6Step144ExitGvOut⟩

private def s6Step144CompleteOut : WindowBank := s6Step144FrontOut.repacked s6Step144CompleteMoves

private def s6Step144EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step144EarlyControlPositiveArena,[879],s6Step144EarlyControlEqualityArena,[875],⟨⟨855,false⟩,[⟨⟨879,false⟩,875⟩]⟩⟩

private def s6Step144EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,867⟩,⟨⟨772,false⟩,802⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,780⟩,⟨⟨769,false⟩,768⟩]⟩

private def s6Step144EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step144EarlyControlZeroArena,s6Step144EarlyControlZeroPlan,s6Step144EarlyControlClassPlan,s6Step144EarlyControlFlagArena,s6Step144EarlyControlFittedArena,s6Step144EarlyControlHistoryArena,s6Step144EarlyControlSigmaArena,s6Step144EarlyControlOutputArena,s6Step144EarlyControlLog⟩

private def s6Step144CounterWork : List Wire := [768, 879, 875, 882]

private theorem s6Step144Counter_bounded : s6Step144CounterWork.toFinset⊆arenaWires := by norm_num [s6Step144CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step144HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144CounterDuring : Arena := ⟨s6Step144HeadFvAfter.live∪s6Step144CounterWork.toFinset,Finset.union_subset s6Step144HeadFvAfter.bounded s6Step144Counter_bounded⟩

private def s6Step144EntryFFresh : List Wire := []

private def s6Step144EntryFvFresh : List Wire := []

private def s6Step144EntryGFresh : List Wire := []

private def s6Step144EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144EntryGvFresh : List Wire := [927]

private def s6Step144ExitFExtra : List Wire := [807]

private def s6Step144ExitFvExtra : List Wire := [802]

private def s6Step144ExitGExtra : List Wire := [780]

private def s6Step144ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144ExitGvExtra : List Wire := [867]

private def s6Step144Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step144Add0Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step144Add0_bounded : s6Step144Add0Work.toFinset⊆arenaWires := by
  have h : s6Step144Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step144Add0During : Arena := ⟨s6Step144Add0Arena.live∪s6Step144Add0Work.toFinset,Finset.union_subset s6Step144Add0Arena.bounded s6Step144Add0_bounded⟩

private def s6Step144Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step144Add1Work : List Wire := [875, 882, 891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step144Add1_bounded : s6Step144Add1Work.toFinset⊆arenaWires := by
  have h : s6Step144Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step144Add1During : Arena := ⟨s6Step144Add1Arena.live∪s6Step144Add1Work.toFinset,Finset.union_subset s6Step144Add1Arena.bounded s6Step144Add1_bounded⟩

private def s6Step144F4FlagArena : Arena := ⟨s6Step144HeadFvAfter.live∪{768},Finset.union_subset s6Step144HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step144F4Plan : HmrHybridF4Plan := ⟨s6Step144F4FlagArena,[768],s6Step144Add0Arena,[879],s6Step144Add0During,s6Step144Add0Work,s6Step144Add1During,s6Step144Add1Work⟩

private def s6Step144HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 807],795⟩

private def s6Step144HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 802],776⟩

private def s6Step144HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 780],777⟩

private def s6Step144HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 867],775⟩

private def s6Step144FrontHead : WindowBank := ⟨s6Step144HeadFOut,s6Step144HeadGOut,s6Step144HeadFvOut,s6Step144HeadGvOut⟩

private def s6Step144EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step144EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step144EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step144EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private def s6Step144FrontPair : WindowBank := ⟨s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut⟩

private def s6Step144FrontSigmaArena : Arena := ⟨s6Step144EntryGvAfter.live∪{855},Finset.union_subset s6Step144EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step144HeadFFresh : List Wire := [807]

private def s6Step144HeadFvFresh : List Wire := [802]

private def s6Step144HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144HeadGFresh : List Wire := [780]

private def s6Step144HeadGvFresh : List Wire := [867]

private def s6Step144FrontPlan : HmrSourceFront := ⟨s6Step144EntryGvAfter,s6Step144FrontPair,(growRow 795 s6Step144EntryFFresh ++ (growRow 777 s6Step144EntryGFresh ++ (growRow 776 s6Step144EntryFvFresh ++ (growRow 775 s6Step144EntryGvFresh ++ [])))),s6Step144FrontSigmaArena,[855],s6Step144HeadGBefore,[794],
  s6Step144HeadFvAfter,s6Step144FrontHead,(growRow 777 s6Step144HeadGFresh ++ (growRow 795 s6Step144HeadFFresh ++ (growRow 775 s6Step144HeadGvFresh ++ (growRow 776 s6Step144HeadFvFresh ++ [])))),s6Step144F4Plan,s6Step144CounterDuring,s6Step144CounterWork,s6Step144ExitGvAfter,s6Step144FrontOut,(shrinkRow 777 s6Step144ExitGExtra ++ (shrinkRow 795 s6Step144ExitFExtra ++ (shrinkRow 776 s6Step144ExitFvExtra ++ (shrinkRow 775 s6Step144ExitGvExtra ++ []))))⟩

private def s6Step144CompletePlan : HmrEarlyStepPlan := ⟨s6Step144FrontPlan,s6Step144EarlyControlArena,s6Step144EarlyControlPlan,s6Step144CompleteMoves⟩

private theorem s6Step144Complete_apart : List.Disjoint (s6Step144CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [855, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step144CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[855, 794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step144Complete_owned : (s6Step144CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144Complete_repack : s6Step144ExitGvAfter.checkRepack s6Step144CompleteMoves=some s6Step144EarlyControlArena := by rfl

private theorem s6Step144EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s6Step144EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlSigmaArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_branch : compileHmrBranchRetirement s6Step144EarlyControlSigmaArena 794=some s6Step144EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step144EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step144EarlyControlSigmaArena s6Step144EarlyControlOutputArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [794] rfl rfl
    decide +kernel

private theorem s6Step144EarlyControl_classEqualityBorrow : s6Step144EarlyControlPositiveArena.checkBorrow (([855, 879] : List Wire).length-1) s6Step144EarlyControlLog.classWork=some s6Step144EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step144EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step144EarlyControlEqualityArena,s6Step144EarlyControlPositiveArena,s6Step144EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step144EarlyControl_classEqualityOwned : ([855, 879] : List Wire).toFinset⊆s6Step144EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step144EarlyControl_classEquality : compileHmrEqualityLog s6Step144EarlyControlPositiveArena [855, 879] 0 s6Step144EarlyControlLog.classWork=some (s6Step144EarlyControlEqualityArena,s6Step144EarlyControlLog.classWork,s6Step144EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step144EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step144EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step144EarlyControl_classOwned : ([769, 768, 855] : List Wire).toFinset⊆s6Step144EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_positiveBorrow : s6Step144EarlyControlZeroArena.checkBorrow (1) s6Step144EarlyControlLog.positiveWork=some s6Step144EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step144EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step144EarlyControlZeroArena s6Step144EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step144EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step144EarlyControl_class : compileHmrSourceClassLog s6Step144EarlyControlZeroArena false 769 s6Step144EarlyControlZeroPlan.top 0 855 s6Step144EarlyControlLog.positiveWork s6Step144EarlyControlLog.classWork=some s6Step144EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step144EarlyControlClassPlan s6Step144EarlyControlZeroArena false 769 s6Step144EarlyControlZeroPlan.top 0 855
  constructor
  · decide +kernel
  · exact s6Step144EarlyControl_classOwned
  · exact s6Step144EarlyControl_positiveBorrow
  · exact s6Step144EarlyControl_classEquality

private theorem s6Step144EarlyControl_entryRecordOwned : ([794, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_entrySigmaOwned : ([855, 254] : List Wire).toFinset⊆s6Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_fitBorrow : s6Step144EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step144EarlyControlLog.recordFresh=some s6Step144EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step144EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step144EarlyControlFittedArena,s6Step144EarlyControlFlagArena,s6Step144EarlyControlLog,arenaWires]

private theorem s6Step144EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step144EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step144EarlyControl_fit : compileHmrRecordGrowLog s6Step144EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step144EarlyControlLog.recordFresh=some s6Step144EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step144EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step144EarlyControl_fitBorrow

private theorem s6Step144EarlyControl_flagsBorrow : s6Step144EarlyControlEqualityArena.checkBorrow (6) s6Step144EarlyControlLog.flagWork=some s6Step144EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step144EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step144EarlyControlFlagArena,s6Step144EarlyControlEqualityArena,s6Step144EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step144EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step144EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step144EarlyControl_flags : compileHmrFlagsLog s6Step144EarlyControlClassPlan.equalityArena s6Step144EarlyControlClassPlan.equality.top 253 252 251 s6Step144EarlyControlLog.flagWork=some s6Step144EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step144EarlyControl_flagsOwned⟩
  · exact s6Step144EarlyControl_flagsBorrow

private theorem s6Step144EarlyControl_historyBorrow : s6Step144EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step144EarlyControlLog.recordFresh=some s6Step144EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step144EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step144EarlyControlArena s6Step144EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step144EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_history : compileHmrRecordGrowLog s6Step144EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step144EarlyControlLog.recordFresh=some s6Step144EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step144EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step144EarlyControl_historyBorrow

private theorem s6Step144EarlyControl_sigmaOwned : ([254, 855] : List Wire).toFinset⊆s6Step144EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_sigmaReleaseOwned : ([855] : List Wire).toFinset⊆s6Step144EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlHistoryArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_sigmaRelease : s6Step144EarlyControlHistoryArena.release {855} (fun _ => false)=some s6Step144EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step144EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step144EarlyControlHistoryArena s6Step144EarlyControlSigmaArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step144EarlyControl_sigma : compileHmrSigmaDropLog s6Step144EarlyControlHistoryArena false 0 0 254 855 []=some s6Step144EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step144EarlyControl_sigmaOwned⟩
  · exact s6Step144EarlyControl_sigmaRelease

private theorem s6Step144EarlyControl_zeroBorrow : s6Step144EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step144EarlyControlLog.zeroWork=some s6Step144EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step144EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step144EarlyControlArena s6Step144EarlyControlZeroArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step144EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step144EarlyControlArena (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EarlyControl_zero : compileHmrEqualityLog s6Step144EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step144EarlyControlLog.zeroWork=some (s6Step144EarlyControlZeroArena,s6Step144EarlyControlLog.zeroWork,s6Step144EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step144EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step144EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step144EarlyControl_logged : s6Step144EarlyControlPlan.Logged s6Step144EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 794 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step144EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step144EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step144EarlyControl_zero
  · exact s6Step144EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step144EarlyControl_flags
  · exact s6Step144EarlyControl_fit
  · exact s6Step144EarlyControl_history
  · exact s6Step144EarlyControl_sigma
  · exact s6Step144EarlyControl_branch

private theorem s6Step144EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step144EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 794 42 s6Step144EarlyControlLog=some s6Step144EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step144EarlyControlPlan s6Step144EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 254 253 252 251 794 42 s6Step144EarlyControl_logged

private def s6Step144EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step144EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step144EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step144EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step144FrontBank : WindowBank := ⟨s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow⟩

private def s6Step144Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 807, 795]

private def s6Step144Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 780, 777]

private def s6Step144Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 802, 776]

private def s6Step144Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 867, 775]

private theorem s6Step144Counter_apart : Disjoint s6Step144HeadFvAfter.live s6Step144CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step144HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144Counter_borrowed : s6Step144HeadFvAfter.checkBorrow 4 s6Step144CounterWork=some s6Step144CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step144HeadFvAfter s6Step144CounterDuring s6Step144CounterWork.toFinset s6Step144Counter_bounded s6Step144Counter_apart rfl

private theorem s6Step144Counter_owned : (855::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step144HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step144HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144Counter_checked : compileHmrCounterStepLog s6Step144HeadFvAfter true 855 [774, 773, 772, 771, 770, 769] s6Step144CounterWork=some s6Step144CounterDuring := by
  have owned : ∀q∈855::[774, 773, 772, 771, 770, 769],q∈s6Step144HeadFvAfter.live := fun q hq => s6Step144Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step144Counter_borrowed

private def s6Step144EntryFAfter : Arena := s6Step144EntryFBefore

private theorem s6Step144EntryBank_incomingDistinct : ([s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144EntryF_Incoming : rowsOwned s6Step144EntryFBefore [s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow] 0 s6Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144EntryBank_outgoingOwned : rowsOwned s6Step144EntryGvAfter [s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step144EntryGvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144EntryF_Outgoing : rowsOwned s6Step144EntryGvAfter [s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut] :=
  hmrRows_owned_drop s6Step144EntryGvAfter [s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut] 0 s6Step144EntryBank_outgoingOwned

private theorem s6Step144EntryF_distinct : (s6Step144EntryFRow.sign::s6Step144EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144EntryF_owned : (s6Step144EntryFRow.sign::s6Step144EntryFRow.payload).toFinset⊆s6Step144EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EntryF_reserved : s6Step144EntryFBefore.reserve s6Step144EntryFFresh.toFinset=some s6Step144EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144EntryFFresh,arenaWires]
  · norm_num [s6Step144EntryFBefore,s6Step144EntryFFresh,arenaWires]
  · simp only [s6Step144EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step144EntryF_checked : planRowResizeLog s6Step144EntryFBefore s6Step144EntryFRow 197 s6Step144EntryFFresh=
    some (s6Step144EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩,growRow 795 s6Step144EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step144EntryFBefore s6Step144EntryFAfter s6Step144EntryFRow 197 s6Step144EntryFFresh
    s6Step144EntryF_distinct s6Step144EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144EntryF_reserved
  have rowEq : WindowRow.mk (s6Step144EntryFRow.payload++s6Step144EntryFFresh) s6Step144EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step144EntryFvAfter : Arena := s6Step144EntryFBefore

private def s6Step144EntryFvBefore : Arena := s6Step144EntryFBefore

private theorem s6Step144EntryFv_Incoming : rowsOwned s6Step144EntryFvBefore [s6Step144EntryFvRow,s6Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow] 2 s6Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144EntryFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144EntryFv_Outgoing : rowsOwned s6Step144EntryGvAfter [s6Step144EntryFvOut,s6Step144EntryGvOut] :=
  hmrRows_owned_drop s6Step144EntryGvAfter [s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut] 2 s6Step144EntryBank_outgoingOwned

private theorem s6Step144EntryFv_distinct : (s6Step144EntryFvRow.sign::s6Step144EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144EntryFv_owned : (s6Step144EntryFvRow.sign::s6Step144EntryFvRow.payload).toFinset⊆s6Step144EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144EntryFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EntryFv_reserved : s6Step144EntryFvBefore.reserve s6Step144EntryFvFresh.toFinset=some s6Step144EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144EntryFvFresh,arenaWires]
  · norm_num [s6Step144EntryFvBefore,s6Step144EntryFBefore,s6Step144EntryFvFresh,arenaWires]
  · simp only [s6Step144EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step144EntryFv_checked : planRowResizeLog s6Step144EntryFvBefore s6Step144EntryFvRow 86 s6Step144EntryFvFresh=
    some (s6Step144EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩,growRow 776 s6Step144EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step144EntryFvBefore s6Step144EntryFvAfter s6Step144EntryFvRow 86 s6Step144EntryFvFresh
    s6Step144EntryFv_distinct s6Step144EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step144EntryFvRow.payload++s6Step144EntryFvFresh) s6Step144EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step144EntryGAfter : Arena := s6Step144EntryFBefore

private def s6Step144EntryGBefore : Arena := s6Step144EntryFBefore

private theorem s6Step144EntryG_Incoming : rowsOwned s6Step144EntryGBefore [s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow] 1 s6Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144EntryGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144EntryG_Outgoing : rowsOwned s6Step144EntryGvAfter [s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut] :=
  hmrRows_owned_drop s6Step144EntryGvAfter [s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut] 1 s6Step144EntryBank_outgoingOwned

private theorem s6Step144EntryG_distinct : (s6Step144EntryGRow.sign::s6Step144EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144EntryG_owned : (s6Step144EntryGRow.sign::s6Step144EntryGRow.payload).toFinset⊆s6Step144EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144EntryGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EntryG_reserved : s6Step144EntryGBefore.reserve s6Step144EntryGFresh.toFinset=some s6Step144EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144EntryGFresh,arenaWires]
  · norm_num [s6Step144EntryGBefore,s6Step144EntryFBefore,s6Step144EntryGFresh,arenaWires]
  · simp only [s6Step144EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step144EntryG_checked : planRowResizeLog s6Step144EntryGBefore s6Step144EntryGRow 197 s6Step144EntryGFresh=
    some (s6Step144EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩,growRow 777 s6Step144EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step144EntryGBefore s6Step144EntryGAfter s6Step144EntryGRow 197 s6Step144EntryGFresh
    s6Step144EntryG_distinct s6Step144EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144EntryG_reserved
  have rowEq : WindowRow.mk (s6Step144EntryGRow.payload++s6Step144EntryGFresh) s6Step144EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step144EntryGvBefore : Arena := s6Step144EntryFBefore

private theorem s6Step144EntryGv_Incoming : rowsOwned s6Step144EntryGvBefore [s6Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow] 3 s6Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144EntryGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144EntryGv_Outgoing : rowsOwned s6Step144EntryGvAfter [s6Step144EntryGvOut] :=
  hmrRows_owned_drop s6Step144EntryGvAfter [s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut] 3 s6Step144EntryBank_outgoingOwned

private theorem s6Step144EntryGv_distinct : (s6Step144EntryGvRow.sign::s6Step144EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144EntryGv_owned : (s6Step144EntryGvRow.sign::s6Step144EntryGvRow.payload).toFinset⊆s6Step144EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144EntryGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144EntryGv_reserved : s6Step144EntryGvBefore.reserve s6Step144EntryGvFresh.toFinset=some s6Step144EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144EntryGvFresh,arenaWires]
  · norm_num [s6Step144EntryGvBefore,s6Step144EntryFBefore,s6Step144EntryGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step144EntryGvBefore s6Step144EntryGvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144EntryGvFresh rfl rfl
    · norm_num [s6Step144EntryGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step144EntryGv_checked : planRowResizeLog s6Step144EntryGvBefore s6Step144EntryGvRow 86 s6Step144EntryGvFresh=
    some (s6Step144EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩,growRow 775 s6Step144EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step144EntryGvBefore s6Step144EntryGvAfter s6Step144EntryGvRow 86 s6Step144EntryGvFresh
    s6Step144EntryGv_distinct s6Step144EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step144EntryGvRow.payload++s6Step144EntryGvFresh) s6Step144EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step144EntryBank_rows : planWindowRowsLog s6Step144EntryFBefore [(s6Step144EntryFRow,197),(s6Step144EntryGRow,197),(s6Step144EntryFvRow,86),(s6Step144EntryGvRow,86)] [s6Step144EntryFFresh,s6Step144EntryGFresh,s6Step144EntryFvFresh,s6Step144EntryGvFresh]=
    some (s6Step144EntryGvAfter,[s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut],(growRow 795 s6Step144EntryFFresh ++ (growRow 777 s6Step144EntryGFresh ++ (growRow 776 s6Step144EntryFvFresh ++ (growRow 775 s6Step144EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step144EntryGvAfter [] []=some (s6Step144EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step144EntryGvBefore s6Step144EntryGvAfter s6Step144EntryGvAfter
    s6Step144EntryGvRow s6Step144EntryGvOut 86 s6Step144EntryGvFresh [] [] []
    (growRow 775 s6Step144EntryGvFresh) ([]) s6Step144EntryGv_Incoming s6Step144EntryGv_checked h4 s6Step144EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step144EntryFvBefore s6Step144EntryFvAfter s6Step144EntryGvAfter
    s6Step144EntryFvRow s6Step144EntryFvOut 86 s6Step144EntryFvFresh [(s6Step144EntryGvRow,86)] [s6Step144EntryGvFresh] [s6Step144EntryGvOut]
    (growRow 776 s6Step144EntryFvFresh) ((growRow 775 s6Step144EntryGvFresh ++ [])) s6Step144EntryFv_Incoming s6Step144EntryFv_checked h3 s6Step144EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step144EntryGBefore s6Step144EntryGAfter s6Step144EntryGvAfter
    s6Step144EntryGRow s6Step144EntryGOut 197 s6Step144EntryGFresh [(s6Step144EntryFvRow,86),(s6Step144EntryGvRow,86)] [s6Step144EntryFvFresh,s6Step144EntryGvFresh] [s6Step144EntryFvOut,s6Step144EntryGvOut]
    (growRow 777 s6Step144EntryGFresh) ((growRow 776 s6Step144EntryFvFresh ++ (growRow 775 s6Step144EntryGvFresh ++ []))) s6Step144EntryG_Incoming s6Step144EntryG_checked h2 s6Step144EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step144EntryFBefore s6Step144EntryFAfter s6Step144EntryGvAfter
    s6Step144EntryFRow s6Step144EntryFOut 197 s6Step144EntryFFresh [(s6Step144EntryGRow,197),(s6Step144EntryFvRow,86),(s6Step144EntryGvRow,86)] [s6Step144EntryGFresh,s6Step144EntryFvFresh,s6Step144EntryGvFresh] [s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut]
    (growRow 795 s6Step144EntryFFresh) ((growRow 777 s6Step144EntryGFresh ++ (growRow 776 s6Step144EntryFvFresh ++ (growRow 775 s6Step144EntryGvFresh ++ [])))) s6Step144EntryF_Incoming s6Step144EntryF_checked h1 s6Step144EntryF_Outgoing
  exact h0

private theorem s6Step144EntryBank_checked : compileHmrBankResizeLog .entry s6Step144EntryFBefore ⟨s6Step144EntryFRow,s6Step144EntryGRow,s6Step144EntryFvRow,s6Step144EntryGvRow⟩ ⟨197,197,86,86⟩ [s6Step144EntryFFresh,s6Step144EntryGFresh,s6Step144EntryFvFresh,s6Step144EntryGvFresh]=
    some (s6Step144EntryGvAfter,⟨s6Step144EntryFOut,s6Step144EntryGOut,s6Step144EntryFvOut,s6Step144EntryGvOut⟩,(growRow 795 s6Step144EntryFFresh ++ (growRow 777 s6Step144EntryGFresh ++ (growRow 776 s6Step144EntryFvFresh ++ (growRow 775 s6Step144EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step144EntryBank_rows]
  rfl

private def s6Step144ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144ExitFBefore : Arena := s6Step144ExitGAfter

private def s6Step144ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 807],795⟩

private def s6Step144ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 802],776⟩

private def s6Step144ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 780],777⟩

private def s6Step144ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 867],775⟩

private theorem s6Step144ExitBank_incomingDistinct : ([s6Step144ExitGRow,s6Step144ExitFRow,s6Step144ExitFvRow,s6Step144ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144ExitF_Incoming : rowsOwned s6Step144ExitFBefore [s6Step144ExitFRow,s6Step144ExitFvRow,s6Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144ExitGRow,s6Step144ExitFRow,s6Step144ExitFvRow,s6Step144ExitGvRow] 1 s6Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144ExitFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144ExitBank_outgoingOwned : rowsOwned s6Step144ExitGvAfter [s6Step144ExitGOut,s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step144ExitGvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144ExitF_Outgoing : rowsOwned s6Step144ExitGvAfter [s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut] :=
  hmrRows_owned_drop s6Step144ExitGvAfter [s6Step144ExitGOut,s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut] 1 s6Step144ExitBank_outgoingOwned

private theorem s6Step144ExitF_distinct : (s6Step144ExitFRow.sign::s6Step144ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144ExitF_owned : (s6Step144ExitFRow.sign::s6Step144ExitFRow.payload).toFinset⊆s6Step144ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144ExitFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144ExitF_retired : s6Step144ExitFBefore.retireSet s6Step144ExitFExtra.toFinset=s6Step144ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step144ExitFBefore s6Step144ExitFAfter s6Step144ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step144ExitFBefore s6Step144ExitFAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step144ExitF_checked : planRowResizeLog s6Step144ExitFBefore s6Step144ExitFRow 197 []=
    some (s6Step144ExitFAfter,s6Step144ExitFOut,shrinkRow 795 s6Step144ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step144ExitFBefore s6Step144ExitFRow 197 s6Step144ExitF_distinct s6Step144ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step144ExitFRow.payload.take 197) s6Step144ExitFRow.sign=s6Step144ExitFOut := by decide +kernel
  have hi : s6Step144ExitFRow.payload.drop 197=s6Step144ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step144ExitF_retired] at result
  exact result

private def s6Step144ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144ExitFvBefore : Arena := s6Step144ExitFAfter

private theorem s6Step144ExitFv_Incoming : rowsOwned s6Step144ExitFvBefore [s6Step144ExitFvRow,s6Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144ExitGRow,s6Step144ExitFRow,s6Step144ExitFvRow,s6Step144ExitGvRow] 2 s6Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144ExitFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144ExitFv_Outgoing : rowsOwned s6Step144ExitGvAfter [s6Step144ExitFvOut,s6Step144ExitGvOut] :=
  hmrRows_owned_drop s6Step144ExitGvAfter [s6Step144ExitGOut,s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut] 2 s6Step144ExitBank_outgoingOwned

private theorem s6Step144ExitFv_distinct : (s6Step144ExitFvRow.sign::s6Step144ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144ExitFv_owned : (s6Step144ExitFvRow.sign::s6Step144ExitFvRow.payload).toFinset⊆s6Step144ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144ExitFvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144ExitFv_retired : s6Step144ExitFvBefore.retireSet s6Step144ExitFvExtra.toFinset=s6Step144ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step144ExitFvBefore s6Step144ExitFvAfter s6Step144ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step144ExitFvBefore s6Step144ExitFvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step144ExitFv_checked : planRowResizeLog s6Step144ExitFvBefore s6Step144ExitFvRow 86 []=
    some (s6Step144ExitFvAfter,s6Step144ExitFvOut,shrinkRow 776 s6Step144ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step144ExitFvBefore s6Step144ExitFvRow 86 s6Step144ExitFv_distinct s6Step144ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step144ExitFvRow.payload.take 86) s6Step144ExitFvRow.sign=s6Step144ExitFvOut := by decide +kernel
  have hi : s6Step144ExitFvRow.payload.drop 86=s6Step144ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step144ExitFv_retired] at result
  exact result

private def s6Step144ExitGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private theorem s6Step144ExitG_Incoming : rowsOwned s6Step144ExitGBefore [s6Step144ExitGRow,s6Step144ExitFRow,s6Step144ExitFvRow,s6Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144ExitGRow,s6Step144ExitFRow,s6Step144ExitFvRow,s6Step144ExitGvRow] 0 s6Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144ExitG_Outgoing : rowsOwned s6Step144ExitGvAfter [s6Step144ExitGOut,s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut] :=
  hmrRows_owned_drop s6Step144ExitGvAfter [s6Step144ExitGOut,s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut] 0 s6Step144ExitBank_outgoingOwned

private theorem s6Step144ExitG_distinct : (s6Step144ExitGRow.sign::s6Step144ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144ExitG_owned : (s6Step144ExitGRow.sign::s6Step144ExitGRow.payload).toFinset⊆s6Step144ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144ExitGBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144ExitG_retired : s6Step144ExitGBefore.retireSet s6Step144ExitGExtra.toFinset=s6Step144ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step144ExitGBefore s6Step144ExitGAfter s6Step144ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step144ExitGBefore s6Step144ExitGAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step144ExitG_checked : planRowResizeLog s6Step144ExitGBefore s6Step144ExitGRow 197 []=
    some (s6Step144ExitGAfter,s6Step144ExitGOut,shrinkRow 777 s6Step144ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step144ExitGBefore s6Step144ExitGRow 197 s6Step144ExitG_distinct s6Step144ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step144ExitGRow.payload.take 197) s6Step144ExitGRow.sign=s6Step144ExitGOut := by decide +kernel
  have hi : s6Step144ExitGRow.payload.drop 197=s6Step144ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step144ExitG_retired] at result
  exact result

private def s6Step144ExitGvBefore : Arena := s6Step144ExitFvAfter

private theorem s6Step144ExitGv_Incoming : rowsOwned s6Step144ExitGvBefore [s6Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144ExitGRow,s6Step144ExitFRow,s6Step144ExitFvRow,s6Step144ExitGvRow] 3 s6Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144ExitGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144ExitGv_Outgoing : rowsOwned s6Step144ExitGvAfter [s6Step144ExitGvOut] :=
  hmrRows_owned_drop s6Step144ExitGvAfter [s6Step144ExitGOut,s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut] 3 s6Step144ExitBank_outgoingOwned

private theorem s6Step144ExitGv_distinct : (s6Step144ExitGvRow.sign::s6Step144ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144ExitGv_owned : (s6Step144ExitGvRow.sign::s6Step144ExitGvRow.payload).toFinset⊆s6Step144ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144ExitGvBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144ExitGv_retired : s6Step144ExitGvBefore.retireSet s6Step144ExitGvExtra.toFinset=s6Step144ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step144ExitGvBefore s6Step144ExitGvAfter s6Step144ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step144ExitGvBefore s6Step144ExitGvAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step144ExitGv_checked : planRowResizeLog s6Step144ExitGvBefore s6Step144ExitGvRow 86 []=
    some (s6Step144ExitGvAfter,s6Step144ExitGvOut,shrinkRow 775 s6Step144ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step144ExitGvBefore s6Step144ExitGvRow 86 s6Step144ExitGv_distinct s6Step144ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step144ExitGvRow.payload.take 86) s6Step144ExitGvRow.sign=s6Step144ExitGvOut := by decide +kernel
  have hi : s6Step144ExitGvRow.payload.drop 86=s6Step144ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step144ExitGv_retired] at result
  exact result

private theorem s6Step144ExitBank_rows : planWindowRowsLog s6Step144ExitGBefore [(s6Step144ExitGRow,197),(s6Step144ExitFRow,197),(s6Step144ExitFvRow,86),(s6Step144ExitGvRow,86)] [[],[],[],[]]=
    some (s6Step144ExitGvAfter,[s6Step144ExitGOut,s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut],(shrinkRow 777 s6Step144ExitGExtra ++ (shrinkRow 795 s6Step144ExitFExtra ++ (shrinkRow 776 s6Step144ExitFvExtra ++ (shrinkRow 775 s6Step144ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step144ExitGvAfter [] []=some (s6Step144ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step144ExitGvBefore s6Step144ExitGvAfter s6Step144ExitGvAfter
    s6Step144ExitGvRow s6Step144ExitGvOut 86 [] [] [] []
    (shrinkRow 775 s6Step144ExitGvExtra) ([]) s6Step144ExitGv_Incoming s6Step144ExitGv_checked h4 s6Step144ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step144ExitFvBefore s6Step144ExitFvAfter s6Step144ExitGvAfter
    s6Step144ExitFvRow s6Step144ExitFvOut 86 [] [(s6Step144ExitGvRow,86)] [[]] [s6Step144ExitGvOut]
    (shrinkRow 776 s6Step144ExitFvExtra) ((shrinkRow 775 s6Step144ExitGvExtra ++ [])) s6Step144ExitFv_Incoming s6Step144ExitFv_checked h3 s6Step144ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step144ExitFBefore s6Step144ExitFAfter s6Step144ExitGvAfter
    s6Step144ExitFRow s6Step144ExitFOut 197 [] [(s6Step144ExitFvRow,86),(s6Step144ExitGvRow,86)] [[],[]] [s6Step144ExitFvOut,s6Step144ExitGvOut]
    (shrinkRow 795 s6Step144ExitFExtra) ((shrinkRow 776 s6Step144ExitFvExtra ++ (shrinkRow 775 s6Step144ExitGvExtra ++ []))) s6Step144ExitF_Incoming s6Step144ExitF_checked h2 s6Step144ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step144ExitGBefore s6Step144ExitGAfter s6Step144ExitGvAfter
    s6Step144ExitGRow s6Step144ExitGOut 197 [] [(s6Step144ExitFRow,197),(s6Step144ExitFvRow,86),(s6Step144ExitGvRow,86)] [[],[],[]] [s6Step144ExitFOut,s6Step144ExitFvOut,s6Step144ExitGvOut]
    (shrinkRow 777 s6Step144ExitGExtra) ((shrinkRow 795 s6Step144ExitFExtra ++ (shrinkRow 776 s6Step144ExitFvExtra ++ (shrinkRow 775 s6Step144ExitGvExtra ++ [])))) s6Step144ExitG_Incoming s6Step144ExitG_checked h1 s6Step144ExitG_Outgoing
  exact h0

private theorem s6Step144ExitBank_checked : compileHmrBankResizeLog .exit s6Step144ExitGBefore ⟨s6Step144ExitFRow,s6Step144ExitGRow,s6Step144ExitFvRow,s6Step144ExitGvRow⟩ ⟨197,197,86,86⟩ [[],[],[],[]]=
    some (s6Step144ExitGvAfter,⟨s6Step144ExitFOut,s6Step144ExitGOut,s6Step144ExitFvOut,s6Step144ExitGvOut⟩,(shrinkRow 777 s6Step144ExitGExtra ++ (shrinkRow 795 s6Step144ExitFExtra ++ (shrinkRow 776 s6Step144ExitFvExtra ++ (shrinkRow 775 s6Step144ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step144ExitBank_rows]
  rfl

private theorem s6Step144Add0_apart : Disjoint s6Step144Add0Arena.live s6Step144Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step144Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step144Add0_card : s6Step144Add0Arena.live.card=882 := by
  decide +kernel

private theorem s6Step144Add0_borrowed : s6Step144Add0Arena.checkBorrow (hmrHybridCount s6Step144Add0Arena s6Step144Add0B.length) s6Step144Add0Work=some s6Step144Add0During := by
  have len : s6Step144Add0Work.length=hmrHybridCount s6Step144Add0Arena s6Step144Add0B.length := by
    rw [hmrHybridCount,s6Step144Add0_card]
    decide +kernel
  have nd : s6Step144Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step144Add0Arena s6Step144Add0During s6Step144Add0Work.toFinset s6Step144Add0_bounded s6Step144Add0_apart rfl

private theorem s6Step144Add0_distinct : (768::794::879::(s6Step144Add0A++s6Step144Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144Add0_owned : (768::794::879::(s6Step144Add0A++s6Step144Add0B)).toFinset⊆s6Step144Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step144Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step144Add0_checked : compileHmrHybridCinLog s6Step144Add0Arena 794 768 879 s6Step144Add0A s6Step144Add0B s6Step144Add0Work=some s6Step144Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step144Add0Arena s6Step144Add0During 794 768 879 s6Step144Add0A s6Step144Add0B s6Step144Add0Work
    (by decide +kernel) (by decide +kernel) s6Step144Add0_distinct
    (fun q hq => s6Step144Add0_owned (List.mem_toFinset.mpr hq)) s6Step144Add0_borrowed

private theorem s6Step144Add1_apart : Disjoint s6Step144Add1Arena.live s6Step144Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step144Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step144Add1_card : s6Step144Add1Arena.live.card=882 := by
  decide +kernel

private theorem s6Step144Add1_borrowed : s6Step144Add1Arena.checkBorrow (hmrHybridCount s6Step144Add1Arena s6Step144Add1B.length) s6Step144Add1Work=some s6Step144Add1During := by
  have len : s6Step144Add1Work.length=hmrHybridCount s6Step144Add1Arena s6Step144Add1B.length := by
    rw [hmrHybridCount,s6Step144Add1_card]
    decide +kernel
  have nd : s6Step144Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step144Add1Arena s6Step144Add1During s6Step144Add1Work.toFinset s6Step144Add1_bounded s6Step144Add1_apart rfl

private theorem s6Step144Add1_distinct : (768::794::879::(s6Step144Add1A++s6Step144Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144Add1_owned : (768::794::879::(s6Step144Add1A++s6Step144Add1B)).toFinset⊆s6Step144Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step144Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step144Add1_checked : compileHmrHybridCinLog s6Step144Add1Arena 794 768 879 s6Step144Add1A s6Step144Add1B s6Step144Add1Work=some s6Step144Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step144Add1Arena s6Step144Add1During 794 768 879 s6Step144Add1A s6Step144Add1B s6Step144Add1Work
    (by decide +kernel) (by decide +kernel) s6Step144Add1_distinct
    (fun q hq => s6Step144Add1_owned (List.mem_toFinset.mpr hq)) s6Step144Add1_borrowed

private theorem s6Step144F4_apart : Disjoint (s6Step144Add0A++s6Step144Add0B).toFinset (s6Step144Add1A++s6Step144Add1B).toFinset := by
  have nd : ((s6Step144Add0A++s6Step144Add0B)++(s6Step144Add1A++s6Step144Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step144F4_carry : s6Step144F4FlagArena.checkBorrow 1 [879]=some s6Step144Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step144F4FlagArena,s6Step144HeadFvAfter,arenaWires]
  · change s6Step144Add0Arena.live=(s6Step144HeadFvAfter.live∪{768})∪{879}
    apply hmrArena_union_pair_of_filter_check s6Step144HeadFvAfter s6Step144Add0Arena (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) 768 879 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step144F4_distinct : (855::794::768::879::((s6Step144Add0A++s6Step144Add1A)++(s6Step144Add0B++s6Step144Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144F4_flag : s6Step144HeadFvAfter.checkBorrow 1 [768]=some s6Step144F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step144HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step144F4_owned : (855::794::((s6Step144Add0A++s6Step144Add1A)++(s6Step144Add0B++s6Step144Add1B))).toFinset⊆s6Step144HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step144HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144F4_checked : compileHmrHybridF4Log s6Step144HeadFvAfter 855 794 s6Step144Add0A s6Step144Add0B s6Step144Add1A s6Step144Add1B [768] [879] s6Step144Add0Work s6Step144Add1Work=some s6Step144F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step144HeadFvAfter s6Step144F4FlagArena s6Step144Add0Arena s6Step144Add0During s6Step144Add1During 855 794
    s6Step144Add0A s6Step144Add0B s6Step144Add1A s6Step144Add1B [768] [879] s6Step144Add0Work s6Step144Add1Work
    (fun q hq => s6Step144F4_owned (List.mem_toFinset.mpr hq)) s6Step144F4_flag s6Step144F4_carry
    s6Step144F4_distinct s6Step144F4_apart s6Step144Add0_checked s6Step144Add1_checked

private theorem s6Step144Front_branch : s6Step144FrontSigmaArena.checkBorrow 1 [794]=some s6Step144HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step144FrontSigmaArena,s6Step144EntryGvAfter,arenaWires]
  · change s6Step144HeadGBefore.live=(s6Step144EntryGvAfter.live∪{855})∪{794}
    apply hmrArena_union_pair_of_filter_check s6Step144EntryGvAfter s6Step144HeadGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 855 794 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step144Front_entry : HmrFrontEntryValid s6Step144EntryFBefore s6Step144FrontBank 197 86 ⟨197,197,86,86⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step144FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step144EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step144EntryFBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,794),(795,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step144FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step144Front_sigma : s6Step144EntryGvAfter.checkBorrow 1 [855]=some s6Step144FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step144EntryGvAfter,arenaWires]
  · rfl

private def s6Step144HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144HeadFBefore : Arena := s6Step144HeadGAfter

private def s6Step144HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452],795⟩

private def s6Step144HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786],776⟩

private def s6Step144HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],777⟩

private def s6Step144HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927],775⟩

private theorem s6Step144HeadBank_incomingDistinct : ([s6Step144HeadGRow,s6Step144HeadFRow,s6Step144HeadGvRow,s6Step144HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144HeadF_Incoming : rowsOwned s6Step144HeadFBefore [s6Step144HeadFRow,s6Step144HeadGvRow,s6Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144HeadGRow,s6Step144HeadFRow,s6Step144HeadGvRow,s6Step144HeadFvRow] 1 s6Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144HeadBank_outgoingOwned : rowsOwned s6Step144HeadFvAfter [s6Step144HeadGOut,s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step144HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144HeadF_Outgoing : rowsOwned s6Step144HeadFvAfter [s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut] :=
  hmrRows_owned_drop s6Step144HeadFvAfter [s6Step144HeadGOut,s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut] 1 s6Step144HeadBank_outgoingOwned

private theorem s6Step144HeadF_distinct : (s6Step144HeadFRow.sign::s6Step144HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144HeadF_owned : (s6Step144HeadFRow.sign::s6Step144HeadFRow.payload).toFinset⊆s6Step144HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144HeadFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144HeadF_reserved : s6Step144HeadFBefore.reserve s6Step144HeadFFresh.toFinset=some s6Step144HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144HeadFFresh,arenaWires]
  · norm_num [s6Step144HeadFBefore,s6Step144HeadGAfter,s6Step144HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step144HeadFBefore s6Step144HeadFAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144HeadFFresh rfl rfl
    · norm_num [s6Step144HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step144HeadF_checked : planRowResizeLog s6Step144HeadFBefore s6Step144HeadFRow 198 s6Step144HeadFFresh=
    some (s6Step144HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 807],795⟩,growRow 795 s6Step144HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step144HeadFBefore s6Step144HeadFAfter s6Step144HeadFRow 198 s6Step144HeadFFresh
    s6Step144HeadF_distinct s6Step144HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144HeadF_reserved
  have rowEq : WindowRow.mk (s6Step144HeadFRow.payload++s6Step144HeadFFresh) s6Step144HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 807],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step144HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step144HeadFvBefore : Arena := s6Step144HeadGvAfter

private theorem s6Step144HeadFv_Incoming : rowsOwned s6Step144HeadFvBefore [s6Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144HeadGRow,s6Step144HeadFRow,s6Step144HeadGvRow,s6Step144HeadFvRow] 3 s6Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144HeadFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144HeadFv_Outgoing : rowsOwned s6Step144HeadFvAfter [s6Step144HeadFvOut] :=
  hmrRows_owned_drop s6Step144HeadFvAfter [s6Step144HeadGOut,s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut] 3 s6Step144HeadBank_outgoingOwned

private theorem s6Step144HeadFv_distinct : (s6Step144HeadFvRow.sign::s6Step144HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144HeadFv_owned : (s6Step144HeadFvRow.sign::s6Step144HeadFvRow.payload).toFinset⊆s6Step144HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144HeadFvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144HeadFv_reserved : s6Step144HeadFvBefore.reserve s6Step144HeadFvFresh.toFinset=some s6Step144HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144HeadFvFresh,arenaWires]
  · norm_num [s6Step144HeadFvBefore,s6Step144HeadGvAfter,s6Step144HeadFvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step144HeadFvBefore s6Step144HeadFvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144HeadFvFresh rfl rfl
    · norm_num [s6Step144HeadFvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step144HeadFv_checked : planRowResizeLog s6Step144HeadFvBefore s6Step144HeadFvRow 87 s6Step144HeadFvFresh=
    some (s6Step144HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 802],776⟩,growRow 776 s6Step144HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step144HeadFvBefore s6Step144HeadFvAfter s6Step144HeadFvRow 87 s6Step144HeadFvFresh
    s6Step144HeadFv_distinct s6Step144HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step144HeadFvRow.payload++s6Step144HeadFvFresh) s6Step144HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 786, 802],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step144HeadG_Incoming : rowsOwned s6Step144HeadGBefore [s6Step144HeadGRow,s6Step144HeadFRow,s6Step144HeadGvRow,s6Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144HeadGRow,s6Step144HeadFRow,s6Step144HeadGvRow,s6Step144HeadFvRow] 0 s6Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144HeadGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144HeadG_Outgoing : rowsOwned s6Step144HeadFvAfter [s6Step144HeadGOut,s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut] :=
  hmrRows_owned_drop s6Step144HeadFvAfter [s6Step144HeadGOut,s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut] 0 s6Step144HeadBank_outgoingOwned

private theorem s6Step144HeadG_distinct : (s6Step144HeadGRow.sign::s6Step144HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144HeadG_owned : (s6Step144HeadGRow.sign::s6Step144HeadGRow.payload).toFinset⊆s6Step144HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144HeadGBefore (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144HeadG_reserved : s6Step144HeadGBefore.reserve s6Step144HeadGFresh.toFinset=some s6Step144HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144HeadGFresh,arenaWires]
  · norm_num [s6Step144HeadGBefore,s6Step144HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step144HeadGBefore s6Step144HeadGAfter (fun q => ([(0,768),(769,780),(781,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144HeadGFresh rfl rfl
    · norm_num [s6Step144HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step144HeadG_checked : planRowResizeLog s6Step144HeadGBefore s6Step144HeadGRow 198 s6Step144HeadGFresh=
    some (s6Step144HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 780],777⟩,growRow 777 s6Step144HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step144HeadGBefore s6Step144HeadGAfter s6Step144HeadGRow 198 s6Step144HeadGFresh
    s6Step144HeadG_distinct s6Step144HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144HeadG_reserved
  have rowEq : WindowRow.mk (s6Step144HeadGRow.payload++s6Step144HeadGFresh) s6Step144HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 780],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step144HeadGvBefore : Arena := s6Step144HeadFAfter

private theorem s6Step144HeadGv_Incoming : rowsOwned s6Step144HeadGvBefore [s6Step144HeadGvRow,s6Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step144HeadGRow,s6Step144HeadFRow,s6Step144HeadGvRow,s6Step144HeadFvRow] 2 s6Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step144HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step144HeadGv_Outgoing : rowsOwned s6Step144HeadFvAfter [s6Step144HeadGvOut,s6Step144HeadFvOut] :=
  hmrRows_owned_drop s6Step144HeadFvAfter [s6Step144HeadGOut,s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut] 2 s6Step144HeadBank_outgoingOwned

private theorem s6Step144HeadGv_distinct : (s6Step144HeadGvRow.sign::s6Step144HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step144HeadGv_owned : (s6Step144HeadGvRow.sign::s6Step144HeadGvRow.payload).toFinset⊆s6Step144HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step144HeadGvBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step144HeadGv_reserved : s6Step144HeadGvBefore.reserve s6Step144HeadGvFresh.toFinset=some s6Step144HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step144HeadGvFresh,arenaWires]
  · norm_num [s6Step144HeadGvBefore,s6Step144HeadFAfter,s6Step144HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step144HeadGvBefore s6Step144HeadGvAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(803,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step144HeadGvFresh rfl rfl
    · norm_num [s6Step144HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step144HeadGv_checked : planRowResizeLog s6Step144HeadGvBefore s6Step144HeadGvRow 87 s6Step144HeadGvFresh=
    some (s6Step144HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 867],775⟩,growRow 775 s6Step144HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step144HeadGvBefore s6Step144HeadGvAfter s6Step144HeadGvRow 87 s6Step144HeadGvFresh
    s6Step144HeadGv_distinct s6Step144HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step144HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step144HeadGvRow.payload++s6Step144HeadGvFresh) s6Step144HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 927, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step144HeadBank_rows : planWindowRowsLog s6Step144HeadGBefore [(s6Step144HeadGRow,198),(s6Step144HeadFRow,198),(s6Step144HeadGvRow,87),(s6Step144HeadFvRow,87)] [s6Step144HeadGFresh,s6Step144HeadFFresh,s6Step144HeadGvFresh,s6Step144HeadFvFresh]=
    some (s6Step144HeadFvAfter,[s6Step144HeadGOut,s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut],(growRow 777 s6Step144HeadGFresh ++ (growRow 795 s6Step144HeadFFresh ++ (growRow 775 s6Step144HeadGvFresh ++ (growRow 776 s6Step144HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step144HeadFvAfter [] []=some (s6Step144HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step144HeadFvBefore s6Step144HeadFvAfter s6Step144HeadFvAfter
    s6Step144HeadFvRow s6Step144HeadFvOut 87 s6Step144HeadFvFresh [] [] []
    (growRow 776 s6Step144HeadFvFresh) ([]) s6Step144HeadFv_Incoming s6Step144HeadFv_checked h4 s6Step144HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step144HeadGvBefore s6Step144HeadGvAfter s6Step144HeadFvAfter
    s6Step144HeadGvRow s6Step144HeadGvOut 87 s6Step144HeadGvFresh [(s6Step144HeadFvRow,87)] [s6Step144HeadFvFresh] [s6Step144HeadFvOut]
    (growRow 775 s6Step144HeadGvFresh) ((growRow 776 s6Step144HeadFvFresh ++ [])) s6Step144HeadGv_Incoming s6Step144HeadGv_checked h3 s6Step144HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step144HeadFBefore s6Step144HeadFAfter s6Step144HeadFvAfter
    s6Step144HeadFRow s6Step144HeadFOut 198 s6Step144HeadFFresh [(s6Step144HeadGvRow,87),(s6Step144HeadFvRow,87)] [s6Step144HeadGvFresh,s6Step144HeadFvFresh] [s6Step144HeadGvOut,s6Step144HeadFvOut]
    (growRow 795 s6Step144HeadFFresh) ((growRow 775 s6Step144HeadGvFresh ++ (growRow 776 s6Step144HeadFvFresh ++ []))) s6Step144HeadF_Incoming s6Step144HeadF_checked h2 s6Step144HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step144HeadGBefore s6Step144HeadGAfter s6Step144HeadFvAfter
    s6Step144HeadGRow s6Step144HeadGOut 198 s6Step144HeadGFresh [(s6Step144HeadFRow,198),(s6Step144HeadGvRow,87),(s6Step144HeadFvRow,87)] [s6Step144HeadFFresh,s6Step144HeadGvFresh,s6Step144HeadFvFresh] [s6Step144HeadFOut,s6Step144HeadGvOut,s6Step144HeadFvOut]
    (growRow 777 s6Step144HeadGFresh) ((growRow 795 s6Step144HeadFFresh ++ (growRow 775 s6Step144HeadGvFresh ++ (growRow 776 s6Step144HeadFvFresh ++ [])))) s6Step144HeadG_Incoming s6Step144HeadG_checked h1 s6Step144HeadG_Outgoing
  exact h0

private theorem s6Step144HeadBank_checked : compileHmrBankResizeLog .headroom s6Step144HeadGBefore ⟨s6Step144HeadFRow,s6Step144HeadGRow,s6Step144HeadFvRow,s6Step144HeadGvRow⟩ ⟨198,198,87,87⟩ [s6Step144HeadGFresh,s6Step144HeadFFresh,s6Step144HeadGvFresh,s6Step144HeadFvFresh]=
    some (s6Step144HeadFvAfter,⟨s6Step144HeadFOut,s6Step144HeadGOut,s6Step144HeadFvOut,s6Step144HeadGvOut⟩,(growRow 777 s6Step144HeadGFresh ++ (growRow 795 s6Step144HeadFFresh ++ (growRow 775 s6Step144HeadGvFresh ++ (growRow 776 s6Step144HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step144HeadBank_rows]
  rfl

private theorem s6Step144Front_checked : compileHmrSourceFrontLog s6Step144EntryFBefore s6Step144FrontBank 197 86 ⟨197,197,86,86⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step144FrontLog=some s6Step144FrontPlan := by
  have pairEq : s6Step144FrontPair=⟨s6Step144HeadFRow,s6Step144HeadGRow,s6Step144HeadFvRow,s6Step144HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step144FrontHead=⟨s6Step144ExitFRow,s6Step144ExitGRow,s6Step144ExitFvRow,s6Step144ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step144Add0A=s6Step144FrontHead.f.wires := by decide +kernel
  have gEq : s6Step144Add0B=s6Step144FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step144Add1A=s6Step144FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step144Add1B=s6Step144FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step144EntryFBefore s6Step144FrontBank 197 86 ⟨197,197,86,86⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step144FrontLog s6Step144FrontPlan
  · exact s6Step144Front_entry
  · exact s6Step144EntryBank_checked
  · exact s6Step144Front_sigma
  · rfl
  · exact s6Step144Front_branch
  · rfl
  · simpa only [s6Step144FrontPlan,pairEq] using s6Step144HeadBank_checked
  · simpa only [s6Step144FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step144F4_checked
  · exact s6Step144Counter_checked
  · rfl
  · simpa only [s6Step144FrontPlan,headEq] using s6Step144ExitBank_checked

private theorem s6Step144Complete_explicit_checked : compileHmrEarlyStepLog s6Step144EntryFBefore s6Step144FrontBank 197 86 ⟨197,197,86,86⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step144CompleteLog=some s6Step144CompletePlan := by
  let Q := s6Step144EarlyControlPlan
  have hq := s6Step144EarlyControl_plan_checked
  have fv1 : s6Step144CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step144CompleteOut.fv.payload[2]?.getD s6Step144CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step144CompleteOut.fv.payload[3]?.getD s6Step144CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step144CompleteOut.fv.payload[4]?.getD s6Step144CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step144EntryFBefore s6Step144EarlyControlArena s6Step144FrontBank 197 86 ⟨197,197,86,86⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step144CompleteLog s6Step144FrontPlan Q
    s6Step144Front_checked s6Step144Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step144Complete_owned s6Step144Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step144EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 855 s6Step144CompleteOut.fv.second (s6Step144CompleteOut.fv.payload[2]?.getD s6Step144CompleteOut.fv.sign) (s6Step144CompleteOut.fv.payload[3]?.getD s6Step144CompleteOut.fv.sign) (s6Step144CompleteOut.fv.payload[4]?.getD s6Step144CompleteOut.fv.sign) 794 42 s6Step144EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep144Arena : Arena := s6Step144EntryFBefore
def s6PrivateStep144Bank : WindowBank := s6Step144FrontBank
def s6PrivateStep144Spec : HmrSourceWalkStepLog := ⟨197,86,⟨197,197,86,86⟩,42,.early s6Step144CompleteLog⟩
def s6PrivateStep144Plan : HmrSourceStepPlan := .early s6Step144CompletePlan
theorem s6PrivateStep144_source : s6PrivateStep144Spec=s6ObservedLogs144[0] := rfl
theorem s6PrivateStep144_checked : compileHmrSourceStepLog s6PrivateStep144Arena s6PrivateStep144Bank
    s6PrivateStep144Spec.fgWidth s6PrivateStep144Spec.vWidth s6PrivateStep144Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 144 s6PrivateStep144Spec.need none s6PrivateStep144Spec.log=some s6PrivateStep144Plan := by
  change compileHmrSourceStepLog s6Step144EntryFBefore s6Step144FrontBank 197 86 ⟨197,197,86,86⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 144 42 none (.early s6Step144CompleteLog)=some (.early s6Step144CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 144<498)]
  rw [s6Step144Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
