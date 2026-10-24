import ECDSAAdd.Arithmetic.Paper935.HmrSourceS6PrivateStep140
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

private def s6Step142CompleteMoves : List (Wire × Wire) := [(802,454)]

private def s6Step142EarlyControlLog : HmrEarlyControlLog := ⟨[802, 867, 807, 786, 768],[879],[875],[882, 891, 903, 791, 825, 810],[]⟩

private def s6Step142FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [768], [], []],[[879], [786], [867], [807]],[[], [], [], []]⟩,[927],[855],[875],[882],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934],[875, 882, 891, 903]⟩

private def s6Step142CompleteLog : HmrEarlyStepLog := ⟨s6Step142FrontLog,s6Step142CompleteMoves,s6Step142EarlyControlLog⟩

private def s6Step142ExitFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453],795⟩

private def s6Step142ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step142ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩

private def s6Step142ExitGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step142FrontOut : WindowBank := ⟨s6Step142ExitFOut,s6Step142ExitGOut,s6Step142ExitFvOut,s6Step142ExitGvOut⟩

private def s6Step142CompleteOut : WindowBank := s6Step142FrontOut.repacked s6Step142CompleteMoves

private def s6Step142EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlClassPlan : HmrSourceClassPlan := ⟨s6Step142EarlyControlPositiveArena,[879],s6Step142EarlyControlEqualityArena,[875],⟨⟨927,false⟩,[⟨⟨879,false⟩,875⟩]⟩⟩

private def s6Step142EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨774,false⟩,[⟨⟨773,false⟩,802⟩,⟨⟨772,false⟩,867⟩,⟨⟨771,false⟩,807⟩,⟨⟨770,false⟩,786⟩,⟨⟨769,false⟩,768⟩]⟩

private def s6Step142EarlyControlPlan : HmrEarlyControlPlan := ⟨s6Step142EarlyControlZeroArena,s6Step142EarlyControlZeroPlan,s6Step142EarlyControlClassPlan,s6Step142EarlyControlFlagArena,s6Step142EarlyControlFittedArena,s6Step142EarlyControlHistoryArena,s6Step142EarlyControlSigmaArena,s6Step142EarlyControlOutputArena,s6Step142EarlyControlLog⟩

private def s6Step142CounterWork : List Wire := [875, 882, 891, 903]

private theorem s6Step142Counter_bounded : s6Step142CounterWork.toFinset⊆arenaWires := by norm_num [s6Step142CounterWork,arenaWires,Finset.insert_subset_iff]

private def s6Step142HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142CounterDuring : Arena := ⟨s6Step142HeadFvAfter.live∪s6Step142CounterWork.toFinset,Finset.union_subset s6Step142HeadFvAfter.bounded s6Step142Counter_bounded⟩

private def s6Step142EntryFFresh : List Wire := []

private def s6Step142EntryFvFresh : List Wire := []

private def s6Step142EntryGFresh : List Wire := [768]

private def s6Step142EntryGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142EntryGvAfter : Arena := s6Step142EntryGAfter

private def s6Step142EntryGvFresh : List Wire := []

private def s6Step142ExitFExtra : List Wire := [454, 786]

private def s6Step142ExitFvExtra : List Wire := [807]

private def s6Step142ExitGExtra : List Wire := [768, 879]

private def s6Step142ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142ExitGvExtra : List Wire := [867]

private def s6Step142Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142Add0Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step142Add0_bounded : s6Step142Add0Work.toFinset⊆arenaWires := by
  have h : s6Step142Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step142Add0During : Arena := ⟨s6Step142Add0Arena.live∪s6Step142Add0Work.toFinset,Finset.union_subset s6Step142Add0Arena.bounded s6Step142Add0_bounded⟩

private def s6Step142Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142Add1Work : List Wire := [891, 903, 791, 825, 810, 894, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]

private theorem s6Step142Add1_bounded : s6Step142Add1Work.toFinset⊆arenaWires := by
  have h : s6Step142Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s6Step142Add1During : Arena := ⟨s6Step142Add1Arena.live∪s6Step142Add1Work.toFinset,Finset.union_subset s6Step142Add1Arena.bounded s6Step142Add1_bounded⟩

private def s6Step142F4FlagArena : Arena := ⟨s6Step142HeadFvAfter.live∪{875},Finset.union_subset s6Step142HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step142F4Plan : HmrHybridF4Plan := ⟨s6Step142F4FlagArena,[875],s6Step142Add0Arena,[882],s6Step142Add0During,s6Step142Add0Work,s6Step142Add1During,s6Step142Add1Work⟩

private def s6Step142HeadFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 786],795⟩

private def s6Step142HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 807],776⟩

private def s6Step142HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768, 879],777⟩

private def s6Step142HeadGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 867],775⟩

private def s6Step142FrontHead : WindowBank := ⟨s6Step142HeadFOut,s6Step142HeadGOut,s6Step142HeadFvOut,s6Step142HeadGvOut⟩

private def s6Step142EntryFOut : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step142EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step142EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768],777⟩

private def s6Step142EntryGvOut : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step142FrontPair : WindowBank := ⟨s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut⟩

private def s6Step142FrontSigmaArena : Arena := ⟨s6Step142EntryGvAfter.live∪{927},Finset.union_subset s6Step142EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s6Step142HeadFFresh : List Wire := [786]

private def s6Step142HeadFvFresh : List Wire := [807]

private def s6Step142HeadGBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142HeadGFresh : List Wire := [879]

private def s6Step142HeadGvFresh : List Wire := [867]

private def s6Step142FrontPlan : HmrSourceFront := ⟨s6Step142EntryGvAfter,s6Step142FrontPair,(growRow 795 s6Step142EntryFFresh ++ (growRow 777 s6Step142EntryGFresh ++ (growRow 776 s6Step142EntryFvFresh ++ (growRow 775 s6Step142EntryGvFresh ++ [])))),s6Step142FrontSigmaArena,[927],s6Step142HeadGBefore,[855],
  s6Step142HeadFvAfter,s6Step142FrontHead,(growRow 777 s6Step142HeadGFresh ++ (growRow 795 s6Step142HeadFFresh ++ (growRow 775 s6Step142HeadGvFresh ++ (growRow 776 s6Step142HeadFvFresh ++ [])))),s6Step142F4Plan,s6Step142CounterDuring,s6Step142CounterWork,s6Step142ExitGvAfter,s6Step142FrontOut,(shrinkRow 777 s6Step142ExitGExtra ++ (shrinkRow 795 s6Step142ExitFExtra ++ (shrinkRow 776 s6Step142ExitFvExtra ++ (shrinkRow 775 s6Step142ExitGvExtra ++ []))))⟩

private def s6Step142CompletePlan : HmrEarlyStepPlan := ⟨s6Step142FrontPlan,s6Step142EarlyControlArena,s6Step142EarlyControlPlan,s6Step142CompleteMoves⟩

private theorem s6Step142Complete_apart : List.Disjoint (s6Step142CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]) [927, 855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] := by
  have nd : ((s6Step142CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769])++[927, 855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s6Step142Complete_owned : (s6Step142CompleteOut.rows.flatMap WindowRow.wires++[774, 773, 772, 771, 770, 769]).toFinset⊆s6Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private def s6Step142CompleteRelocationMove0Borrowed : Arena := ⟨s6Step142ExitGvAfter.live∪{454},Finset.union_subset s6Step142ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s6Step142CompleteRelocation_move0_owned : 802∈s6Step142ExitGvAfter.live := by norm_num [s6Step142ExitGvAfter,arenaWires]

private theorem s6Step142CompleteRelocation_move0_reserve : s6Step142ExitGvAfter.reserve {454}=some s6Step142CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step142ExitGvAfter,arenaWires]
  · rfl

private theorem s6Step142CompleteRelocation_move0_retire : s6Step142CompleteRelocationMove0Borrowed.retireSet {802}=s6Step142EarlyControlArena := by
  apply hmrArena_retireSet_of_live s6Step142CompleteRelocationMove0Borrowed s6Step142EarlyControlArena {802}
  change s6Step142EarlyControlArena.live=(s6Step142ExitGvAfter.live∪{454})\{802}
  apply hmrArena_update_of_filter_check s6Step142ExitGvAfter s6Step142EarlyControlArena (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [454] [802] rfl rfl
  · norm_num [arenaWires]
  · decide +kernel

private theorem s6Step142CompleteRelocation_checked : s6Step142ExitGvAfter.checkRepack [(802,454)]=some s6Step142EarlyControlArena := by
  have tail1 : s6Step142EarlyControlArena.checkRepack []=some s6Step142EarlyControlArena := rfl
  have tail0 := Arena.checkRepack_cons_of_parts s6Step142ExitGvAfter s6Step142CompleteRelocationMove0Borrowed s6Step142EarlyControlArena s6Step142EarlyControlArena 802 454 []
    s6Step142CompleteRelocation_move0_owned s6Step142CompleteRelocation_move0_reserve s6Step142CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s6Step142Complete_repack : s6Step142ExitGvAfter.checkRepack s6Step142CompleteMoves=some s6Step142EarlyControlArena := by
  simpa only [s6Step142CompleteMoves] using s6Step142CompleteRelocation_checked

private theorem s6Step142EarlyControl_branchOwned : ([855] : List Wire).toFinset⊆s6Step142EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_branch : compileHmrBranchRetirement s6Step142EarlyControlSigmaArena 855=some s6Step142EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step142EarlyControl_branchOwned
  · apply hmrArena_diff_of_filter_check s6Step142EarlyControlSigmaArena s6Step142EarlyControlOutputArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [855] rfl rfl
    decide +kernel

private theorem s6Step142EarlyControl_classEqualityBorrow : s6Step142EarlyControlPositiveArena.checkBorrow (([927, 879] : List Wire).length-1) s6Step142EarlyControlLog.classWork=some s6Step142EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step142EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step142EarlyControlEqualityArena,s6Step142EarlyControlPositiveArena,s6Step142EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step142EarlyControl_classEqualityOwned : ([927, 879] : List Wire).toFinset⊆s6Step142EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142EarlyControl_classEquality : compileHmrEqualityLog s6Step142EarlyControlPositiveArena [927, 879] 0 s6Step142EarlyControlLog.classWork=some (s6Step142EarlyControlEqualityArena,s6Step142EarlyControlLog.classWork,s6Step142EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step142EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step142EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s6Step142EarlyControl_classOwned : ([769, 768, 927] : List Wire).toFinset⊆s6Step142EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_positiveBorrow : s6Step142EarlyControlZeroArena.checkBorrow (1) s6Step142EarlyControlLog.positiveWork=some s6Step142EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step142EarlyControlZeroArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step142EarlyControlZeroArena s6Step142EarlyControlPositiveArena (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step142EarlyControlLog.positiveWork rfl rfl
      · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step142EarlyControl_class : compileHmrSourceClassLog s6Step142EarlyControlZeroArena false 769 s6Step142EarlyControlZeroPlan.top 0 927 s6Step142EarlyControlLog.positiveWork s6Step142EarlyControlLog.classWork=some s6Step142EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s6Step142EarlyControlClassPlan s6Step142EarlyControlZeroArena false 769 s6Step142EarlyControlZeroPlan.top 0 927
  constructor
  · decide +kernel
  · exact s6Step142EarlyControl_classOwned
  · exact s6Step142EarlyControl_positiveBorrow
  · exact s6Step142EarlyControl_classEquality

private theorem s6Step142EarlyControl_entryRecordOwned : ([855, 895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_entrySigmaOwned : ([927, 254] : List Wire).toFinset⊆s6Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_fitBorrow : s6Step142EarlyControlFlagArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step142EarlyControlLog.recordFresh=some s6Step142EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step142EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step142EarlyControlFittedArena,s6Step142EarlyControlFlagArena,s6Step142EarlyControlLog,arenaWires]

private theorem s6Step142EarlyControl_fitOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step142EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlFlagArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (810≤q ∧ q<811) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142EarlyControl_fit : compileHmrRecordGrowLog s6Step142EarlyControlFlagArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step142EarlyControlLog.recordFresh=some s6Step142EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step142EarlyControl_fitOwned,by decide +kernel⟩
  · exact s6Step142EarlyControl_fitBorrow

private theorem s6Step142EarlyControl_flagsBorrow : s6Step142EarlyControlEqualityArena.checkBorrow (6) s6Step142EarlyControlLog.flagWork=some s6Step142EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step142EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
      decide +kernel
    · ext q
      simp [s6Step142EarlyControlFlagArena,s6Step142EarlyControlEqualityArena,s6Step142EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s6Step142EarlyControl_flagsOwned : ([875, 253, 252, 251] : List Wire).toFinset⊆s6Step142EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlEqualityArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142EarlyControl_flags : compileHmrFlagsLog s6Step142EarlyControlClassPlan.equalityArena s6Step142EarlyControlClassPlan.equality.top 253 252 251 s6Step142EarlyControlLog.flagWork=some s6Step142EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s6Step142EarlyControl_flagsOwned⟩
  · exact s6Step142EarlyControl_flagsBorrow

private theorem s6Step142EarlyControl_historyBorrow : s6Step142EarlyControlArena.checkBorrow ((42-([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).length)) s6Step142EarlyControlLog.recordFresh=some s6Step142EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step142EarlyControlArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step142EarlyControlArena s6Step142EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142EarlyControlLog.recordFresh rfl rfl
      · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step142EarlyControl_historyOwned : ([895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] : List Wire).toFinset⊆s6Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_history : compileHmrRecordGrowLog s6Step142EarlyControlArena [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step142EarlyControlLog.recordFresh=some s6Step142EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s6Step142EarlyControl_historyOwned,by decide +kernel⟩
  · exact s6Step142EarlyControl_historyBorrow

private theorem s6Step142EarlyControl_sigmaOwned : ([254, 927] : List Wire).toFinset⊆s6Step142EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_sigmaReleaseOwned : ([927] : List Wire).toFinset⊆s6Step142EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlHistoryArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_sigmaRelease : s6Step142EarlyControlHistoryArena.release {927} (fun _ => false)=some s6Step142EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s6Step142EarlyControl_sigmaReleaseOwned
  · apply hmrArena_diff_of_filter_check s6Step142EarlyControlHistoryArena s6Step142EarlyControlSigmaArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) [927] rfl rfl
    decide +kernel

private theorem s6Step142EarlyControl_sigma : compileHmrSigmaDropLog s6Step142EarlyControlHistoryArena false 0 0 254 927 []=some s6Step142EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s6Step142EarlyControl_sigmaOwned⟩
  · exact s6Step142EarlyControl_sigmaRelease

private theorem s6Step142EarlyControl_zeroBorrow : s6Step142EarlyControlArena.checkBorrow (([774, 773, 772, 771, 770, 769] : List Wire).length-1) s6Step142EarlyControlLog.zeroWork=some s6Step142EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s6Step142EarlyControlArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
      decide +kernel
    · apply hmrArena_union_of_filter_check s6Step142EarlyControlArena s6Step142EarlyControlZeroArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142EarlyControlLog.zeroWork rfl rfl
      · norm_num [s6Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
      · decide +kernel

private theorem s6Step142EarlyControl_zeroOwned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s6Step142EarlyControlArena (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(803,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EarlyControl_zero : compileHmrEqualityLog s6Step142EarlyControlArena [774, 773, 772, 771, 770, 769] 0 s6Step142EarlyControlLog.zeroWork=some (s6Step142EarlyControlZeroArena,s6Step142EarlyControlLog.zeroWork,s6Step142EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s6Step142EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s6Step142EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s6Step142EarlyControl_logged : s6Step142EarlyControlPlan.Logged s6Step142EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 927 254 253 252 251 855 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s6Step142EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s6Step142EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s6Step142EarlyControl_zero
  · exact s6Step142EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s6Step142EarlyControl_flags
  · exact s6Step142EarlyControl_fit
  · exact s6Step142EarlyControl_history
  · exact s6Step142EarlyControl_sigma
  · exact s6Step142EarlyControl_branch

private theorem s6Step142EarlyControl_plan_checked : compileHmrEarlyControlLog s6Step142EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 927 254 253 252 251 855 42 s6Step142EarlyControlLog=some s6Step142EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s6Step142EarlyControlPlan s6Step142EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 927 254 253 252 251 855 42 s6Step142EarlyControl_logged

private def s6Step142EntryFBefore : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142EntryFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step142EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step142EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],777⟩

private def s6Step142EntryGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private def s6Step142FrontBank : WindowBank := ⟨s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow⟩

private def s6Step142Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 786, 795]

private def s6Step142Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768, 879, 777]

private def s6Step142Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 807, 776]

private def s6Step142Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 867, 775]

private theorem s6Step142Counter_apart : Disjoint s6Step142HeadFvAfter.live s6Step142CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step142HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142Counter_borrowed : s6Step142HeadFvAfter.checkBorrow 4 s6Step142CounterWork=some s6Step142CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s6Step142HeadFvAfter s6Step142CounterDuring s6Step142CounterWork.toFinset s6Step142Counter_bounded s6Step142Counter_apart rfl

private theorem s6Step142Counter_owned : (927::[774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step142HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step142HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142Counter_checked : compileHmrCounterStepLog s6Step142HeadFvAfter true 927 [774, 773, 772, 771, 770, 769] s6Step142CounterWork=some s6Step142CounterDuring := by
  have owned : ∀q∈927::[774, 773, 772, 771, 770, 769],q∈s6Step142HeadFvAfter.live := fun q hq => s6Step142Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s6Step142Counter_borrowed

private def s6Step142EntryFAfter : Arena := s6Step142EntryFBefore

private theorem s6Step142EntryBank_incomingDistinct : ([s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142EntryF_Incoming : rowsOwned s6Step142EntryFBefore [s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow] 0 s6Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142EntryBank_outgoingOwned : rowsOwned s6Step142EntryGvAfter [s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step142EntryGvAfter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142EntryF_Outgoing : rowsOwned s6Step142EntryGvAfter [s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut] :=
  hmrRows_owned_drop s6Step142EntryGvAfter [s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut] 0 s6Step142EntryBank_outgoingOwned

private theorem s6Step142EntryF_distinct : (s6Step142EntryFRow.sign::s6Step142EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142EntryF_owned : (s6Step142EntryFRow.sign::s6Step142EntryFRow.payload).toFinset⊆s6Step142EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EntryF_reserved : s6Step142EntryFBefore.reserve s6Step142EntryFFresh.toFinset=some s6Step142EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142EntryFFresh,arenaWires]
  · norm_num [s6Step142EntryFBefore,s6Step142EntryFFresh,arenaWires]
  · simp only [s6Step142EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step142EntryF_checked : planRowResizeLog s6Step142EntryFBefore s6Step142EntryFRow 199 s6Step142EntryFFresh=
    some (s6Step142EntryFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩,growRow 795 s6Step142EntryFFresh) := by
  have result := planRowResizeLog_of_growth s6Step142EntryFBefore s6Step142EntryFAfter s6Step142EntryFRow 199 s6Step142EntryFFresh
    s6Step142EntryF_distinct s6Step142EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142EntryF_reserved
  have rowEq : WindowRow.mk (s6Step142EntryFRow.payload++s6Step142EntryFFresh) s6Step142EntryFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step142EntryFvAfter : Arena := s6Step142EntryGAfter

private def s6Step142EntryFvBefore : Arena := s6Step142EntryGAfter

private theorem s6Step142EntryFv_Incoming : rowsOwned s6Step142EntryFvBefore [s6Step142EntryFvRow,s6Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow] 2 s6Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142EntryFvBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142EntryFv_Outgoing : rowsOwned s6Step142EntryGvAfter [s6Step142EntryFvOut,s6Step142EntryGvOut] :=
  hmrRows_owned_drop s6Step142EntryGvAfter [s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut] 2 s6Step142EntryBank_outgoingOwned

private theorem s6Step142EntryFv_distinct : (s6Step142EntryFvRow.sign::s6Step142EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142EntryFv_owned : (s6Step142EntryFvRow.sign::s6Step142EntryFvRow.payload).toFinset⊆s6Step142EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142EntryFvBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EntryFv_reserved : s6Step142EntryFvBefore.reserve s6Step142EntryFvFresh.toFinset=some s6Step142EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142EntryFvFresh,arenaWires]
  · norm_num [s6Step142EntryFvBefore,s6Step142EntryGAfter,s6Step142EntryFvFresh,arenaWires]
  · simp only [s6Step142EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step142EntryFv_checked : planRowResizeLog s6Step142EntryFvBefore s6Step142EntryFvRow 85 s6Step142EntryFvFresh=
    some (s6Step142EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩,growRow 776 s6Step142EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step142EntryFvBefore s6Step142EntryFvAfter s6Step142EntryFvRow 85 s6Step142EntryFvFresh
    s6Step142EntryFv_distinct s6Step142EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142EntryFv_reserved
  have rowEq : WindowRow.mk (s6Step142EntryFvRow.payload++s6Step142EntryFvFresh) s6Step142EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step142EntryGBefore : Arena := s6Step142EntryFBefore

private theorem s6Step142EntryG_Incoming : rowsOwned s6Step142EntryGBefore [s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow] 1 s6Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142EntryG_Outgoing : rowsOwned s6Step142EntryGvAfter [s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut] :=
  hmrRows_owned_drop s6Step142EntryGvAfter [s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut] 1 s6Step142EntryBank_outgoingOwned

private theorem s6Step142EntryG_distinct : (s6Step142EntryGRow.sign::s6Step142EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142EntryG_owned : (s6Step142EntryGRow.sign::s6Step142EntryGRow.payload).toFinset⊆s6Step142EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142EntryGBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EntryG_reserved : s6Step142EntryGBefore.reserve s6Step142EntryGFresh.toFinset=some s6Step142EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142EntryGFresh,arenaWires]
  · norm_num [s6Step142EntryGBefore,s6Step142EntryFBefore,s6Step142EntryGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step142EntryGBefore s6Step142EntryGAfter (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142EntryGFresh rfl rfl
    · norm_num [s6Step142EntryGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step142EntryG_checked : planRowResizeLog s6Step142EntryGBefore s6Step142EntryGRow 199 s6Step142EntryGFresh=
    some (s6Step142EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768],777⟩,growRow 777 s6Step142EntryGFresh) := by
  have result := planRowResizeLog_of_growth s6Step142EntryGBefore s6Step142EntryGAfter s6Step142EntryGRow 199 s6Step142EntryGFresh
    s6Step142EntryG_distinct s6Step142EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142EntryG_reserved
  have rowEq : WindowRow.mk (s6Step142EntryGRow.payload++s6Step142EntryGFresh) s6Step142EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step142EntryGvBefore : Arena := s6Step142EntryGAfter

private theorem s6Step142EntryGv_Incoming : rowsOwned s6Step142EntryGvBefore [s6Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow] 3 s6Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142EntryGvBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142EntryGv_Outgoing : rowsOwned s6Step142EntryGvAfter [s6Step142EntryGvOut] :=
  hmrRows_owned_drop s6Step142EntryGvAfter [s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut] 3 s6Step142EntryBank_outgoingOwned

private theorem s6Step142EntryGv_distinct : (s6Step142EntryGvRow.sign::s6Step142EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142EntryGv_owned : (s6Step142EntryGvRow.sign::s6Step142EntryGvRow.payload).toFinset⊆s6Step142EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142EntryGvBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142EntryGv_reserved : s6Step142EntryGvBefore.reserve s6Step142EntryGvFresh.toFinset=some s6Step142EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142EntryGvFresh,arenaWires]
  · norm_num [s6Step142EntryGvBefore,s6Step142EntryGAfter,s6Step142EntryGvFresh,arenaWires]
  · simp only [s6Step142EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s6Step142EntryGv_checked : planRowResizeLog s6Step142EntryGvBefore s6Step142EntryGvRow 85 s6Step142EntryGvFresh=
    some (s6Step142EntryGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩,growRow 775 s6Step142EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step142EntryGvBefore s6Step142EntryGvAfter s6Step142EntryGvRow 85 s6Step142EntryGvFresh
    s6Step142EntryGv_distinct s6Step142EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142EntryGv_reserved
  have rowEq : WindowRow.mk (s6Step142EntryGvRow.payload++s6Step142EntryGvFresh) s6Step142EntryGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step142EntryBank_rows : planWindowRowsLog s6Step142EntryFBefore [(s6Step142EntryFRow,199),(s6Step142EntryGRow,199),(s6Step142EntryFvRow,85),(s6Step142EntryGvRow,85)] [s6Step142EntryFFresh,s6Step142EntryGFresh,s6Step142EntryFvFresh,s6Step142EntryGvFresh]=
    some (s6Step142EntryGvAfter,[s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut],(growRow 795 s6Step142EntryFFresh ++ (growRow 777 s6Step142EntryGFresh ++ (growRow 776 s6Step142EntryFvFresh ++ (growRow 775 s6Step142EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step142EntryGvAfter [] []=some (s6Step142EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step142EntryGvBefore s6Step142EntryGvAfter s6Step142EntryGvAfter
    s6Step142EntryGvRow s6Step142EntryGvOut 85 s6Step142EntryGvFresh [] [] []
    (growRow 775 s6Step142EntryGvFresh) ([]) s6Step142EntryGv_Incoming s6Step142EntryGv_checked h4 s6Step142EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step142EntryFvBefore s6Step142EntryFvAfter s6Step142EntryGvAfter
    s6Step142EntryFvRow s6Step142EntryFvOut 85 s6Step142EntryFvFresh [(s6Step142EntryGvRow,85)] [s6Step142EntryGvFresh] [s6Step142EntryGvOut]
    (growRow 776 s6Step142EntryFvFresh) ((growRow 775 s6Step142EntryGvFresh ++ [])) s6Step142EntryFv_Incoming s6Step142EntryFv_checked h3 s6Step142EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step142EntryGBefore s6Step142EntryGAfter s6Step142EntryGvAfter
    s6Step142EntryGRow s6Step142EntryGOut 199 s6Step142EntryGFresh [(s6Step142EntryFvRow,85),(s6Step142EntryGvRow,85)] [s6Step142EntryFvFresh,s6Step142EntryGvFresh] [s6Step142EntryFvOut,s6Step142EntryGvOut]
    (growRow 777 s6Step142EntryGFresh) ((growRow 776 s6Step142EntryFvFresh ++ (growRow 775 s6Step142EntryGvFresh ++ []))) s6Step142EntryG_Incoming s6Step142EntryG_checked h2 s6Step142EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step142EntryFBefore s6Step142EntryFAfter s6Step142EntryGvAfter
    s6Step142EntryFRow s6Step142EntryFOut 199 s6Step142EntryFFresh [(s6Step142EntryGRow,199),(s6Step142EntryFvRow,85),(s6Step142EntryGvRow,85)] [s6Step142EntryGFresh,s6Step142EntryFvFresh,s6Step142EntryGvFresh] [s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut]
    (growRow 795 s6Step142EntryFFresh) ((growRow 777 s6Step142EntryGFresh ++ (growRow 776 s6Step142EntryFvFresh ++ (growRow 775 s6Step142EntryGvFresh ++ [])))) s6Step142EntryF_Incoming s6Step142EntryF_checked h1 s6Step142EntryF_Outgoing
  exact h0

private theorem s6Step142EntryBank_checked : compileHmrBankResizeLog .entry s6Step142EntryFBefore ⟨s6Step142EntryFRow,s6Step142EntryGRow,s6Step142EntryFvRow,s6Step142EntryGvRow⟩ ⟨199,199,85,85⟩ [s6Step142EntryFFresh,s6Step142EntryGFresh,s6Step142EntryFvFresh,s6Step142EntryGvFresh]=
    some (s6Step142EntryGvAfter,⟨s6Step142EntryFOut,s6Step142EntryGOut,s6Step142EntryFvOut,s6Step142EntryGvOut⟩,(growRow 795 s6Step142EntryFFresh ++ (growRow 777 s6Step142EntryGFresh ++ (growRow 776 s6Step142EntryFvFresh ++ (growRow 775 s6Step142EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step142EntryBank_rows]
  rfl

private def s6Step142ExitFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142ExitGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142ExitFBefore : Arena := s6Step142ExitGAfter

private def s6Step142ExitFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 786],795⟩

private def s6Step142ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 807],776⟩

private def s6Step142ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768, 879],777⟩

private def s6Step142ExitGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 867],775⟩

private theorem s6Step142ExitBank_incomingDistinct : ([s6Step142ExitGRow,s6Step142ExitFRow,s6Step142ExitFvRow,s6Step142ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142ExitF_Incoming : rowsOwned s6Step142ExitFBefore [s6Step142ExitFRow,s6Step142ExitFvRow,s6Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142ExitGRow,s6Step142ExitFRow,s6Step142ExitFvRow,s6Step142ExitGvRow] 1 s6Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142ExitFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142ExitBank_outgoingOwned : rowsOwned s6Step142ExitGvAfter [s6Step142ExitGOut,s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step142ExitGvAfter (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142ExitF_Outgoing : rowsOwned s6Step142ExitGvAfter [s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut] :=
  hmrRows_owned_drop s6Step142ExitGvAfter [s6Step142ExitGOut,s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut] 1 s6Step142ExitBank_outgoingOwned

private theorem s6Step142ExitF_distinct : (s6Step142ExitFRow.sign::s6Step142ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142ExitF_owned : (s6Step142ExitFRow.sign::s6Step142ExitFRow.payload).toFinset⊆s6Step142ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142ExitFBefore (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142ExitF_retired : s6Step142ExitFBefore.retireSet s6Step142ExitFExtra.toFinset=s6Step142ExitFAfter := by
  apply hmrArena_retireSet_of_live s6Step142ExitFBefore s6Step142ExitFAfter s6Step142ExitFExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step142ExitFBefore s6Step142ExitFAfter (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142ExitFExtra rfl rfl
  decide +kernel

private theorem s6Step142ExitF_checked : planRowResizeLog s6Step142ExitFBefore s6Step142ExitFRow 198 []=
    some (s6Step142ExitFAfter,s6Step142ExitFOut,shrinkRow 795 s6Step142ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s6Step142ExitFBefore s6Step142ExitFRow 198 s6Step142ExitF_distinct s6Step142ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step142ExitFRow.payload.take 198) s6Step142ExitFRow.sign=s6Step142ExitFOut := by decide +kernel
  have hi : s6Step142ExitFRow.payload.drop 198=s6Step142ExitFExtra := by decide +kernel
  rw [lo,hi,s6Step142ExitF_retired] at result
  exact result

private def s6Step142ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142ExitFvBefore : Arena := s6Step142ExitFAfter

private theorem s6Step142ExitFv_Incoming : rowsOwned s6Step142ExitFvBefore [s6Step142ExitFvRow,s6Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142ExitGRow,s6Step142ExitFRow,s6Step142ExitFvRow,s6Step142ExitGvRow] 2 s6Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142ExitFvBefore (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142ExitFv_Outgoing : rowsOwned s6Step142ExitGvAfter [s6Step142ExitFvOut,s6Step142ExitGvOut] :=
  hmrRows_owned_drop s6Step142ExitGvAfter [s6Step142ExitGOut,s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut] 2 s6Step142ExitBank_outgoingOwned

private theorem s6Step142ExitFv_distinct : (s6Step142ExitFvRow.sign::s6Step142ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142ExitFv_owned : (s6Step142ExitFvRow.sign::s6Step142ExitFvRow.payload).toFinset⊆s6Step142ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142ExitFvBefore (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142ExitFv_retired : s6Step142ExitFvBefore.retireSet s6Step142ExitFvExtra.toFinset=s6Step142ExitFvAfter := by
  apply hmrArena_retireSet_of_live s6Step142ExitFvBefore s6Step142ExitFvAfter s6Step142ExitFvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step142ExitFvBefore s6Step142ExitFvAfter (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142ExitFvExtra rfl rfl
  decide +kernel

private theorem s6Step142ExitFv_checked : planRowResizeLog s6Step142ExitFvBefore s6Step142ExitFvRow 85 []=
    some (s6Step142ExitFvAfter,s6Step142ExitFvOut,shrinkRow 776 s6Step142ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step142ExitFvBefore s6Step142ExitFvRow 85 s6Step142ExitFv_distinct s6Step142ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step142ExitFvRow.payload.take 85) s6Step142ExitFvRow.sign=s6Step142ExitFvOut := by decide +kernel
  have hi : s6Step142ExitFvRow.payload.drop 85=s6Step142ExitFvExtra := by decide +kernel
  rw [lo,hi,s6Step142ExitFv_retired] at result
  exact result

private def s6Step142ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private theorem s6Step142ExitG_Incoming : rowsOwned s6Step142ExitGBefore [s6Step142ExitGRow,s6Step142ExitFRow,s6Step142ExitFvRow,s6Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142ExitGRow,s6Step142ExitFRow,s6Step142ExitFvRow,s6Step142ExitGvRow] 0 s6Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step142ExitG_Outgoing : rowsOwned s6Step142ExitGvAfter [s6Step142ExitGOut,s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut] :=
  hmrRows_owned_drop s6Step142ExitGvAfter [s6Step142ExitGOut,s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut] 0 s6Step142ExitBank_outgoingOwned

private theorem s6Step142ExitG_distinct : (s6Step142ExitGRow.sign::s6Step142ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142ExitG_owned : (s6Step142ExitGRow.sign::s6Step142ExitGRow.payload).toFinset⊆s6Step142ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142ExitG_retired : s6Step142ExitGBefore.retireSet s6Step142ExitGExtra.toFinset=s6Step142ExitGAfter := by
  apply hmrArena_retireSet_of_live s6Step142ExitGBefore s6Step142ExitGAfter s6Step142ExitGExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step142ExitGBefore s6Step142ExitGAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) (fun q => ([(0,768),(769,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,808),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142ExitGExtra rfl rfl
  decide +kernel

private theorem s6Step142ExitG_checked : planRowResizeLog s6Step142ExitGBefore s6Step142ExitGRow 198 []=
    some (s6Step142ExitGAfter,s6Step142ExitGOut,shrinkRow 777 s6Step142ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s6Step142ExitGBefore s6Step142ExitGRow 198 s6Step142ExitG_distinct s6Step142ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step142ExitGRow.payload.take 198) s6Step142ExitGRow.sign=s6Step142ExitGOut := by decide +kernel
  have hi : s6Step142ExitGRow.payload.drop 198=s6Step142ExitGExtra := by decide +kernel
  rw [lo,hi,s6Step142ExitG_retired] at result
  exact result

private def s6Step142ExitGvBefore : Arena := s6Step142ExitFvAfter

private theorem s6Step142ExitGv_Incoming : rowsOwned s6Step142ExitGvBefore [s6Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142ExitGRow,s6Step142ExitFRow,s6Step142ExitFvRow,s6Step142ExitGvRow] 3 s6Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142ExitGvBefore (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142ExitGv_Outgoing : rowsOwned s6Step142ExitGvAfter [s6Step142ExitGvOut] :=
  hmrRows_owned_drop s6Step142ExitGvAfter [s6Step142ExitGOut,s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut] 3 s6Step142ExitBank_outgoingOwned

private theorem s6Step142ExitGv_distinct : (s6Step142ExitGvRow.sign::s6Step142ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142ExitGv_owned : (s6Step142ExitGvRow.sign::s6Step142ExitGvRow.payload).toFinset⊆s6Step142ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142ExitGvBefore (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142ExitGv_retired : s6Step142ExitGvBefore.retireSet s6Step142ExitGvExtra.toFinset=s6Step142ExitGvAfter := by
  apply hmrArena_retireSet_of_live s6Step142ExitGvBefore s6Step142ExitGvAfter s6Step142ExitGvExtra.toFinset
  apply hmrArena_diff_of_filter_check s6Step142ExitGvBefore s6Step142ExitGvAfter (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,454),(455,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142ExitGvExtra rfl rfl
  decide +kernel

private theorem s6Step142ExitGv_checked : planRowResizeLog s6Step142ExitGvBefore s6Step142ExitGvRow 85 []=
    some (s6Step142ExitGvAfter,s6Step142ExitGvOut,shrinkRow 775 s6Step142ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s6Step142ExitGvBefore s6Step142ExitGvRow 85 s6Step142ExitGv_distinct s6Step142ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s6Step142ExitGvRow.payload.take 85) s6Step142ExitGvRow.sign=s6Step142ExitGvOut := by decide +kernel
  have hi : s6Step142ExitGvRow.payload.drop 85=s6Step142ExitGvExtra := by decide +kernel
  rw [lo,hi,s6Step142ExitGv_retired] at result
  exact result

private theorem s6Step142ExitBank_rows : planWindowRowsLog s6Step142ExitGBefore [(s6Step142ExitGRow,198),(s6Step142ExitFRow,198),(s6Step142ExitFvRow,85),(s6Step142ExitGvRow,85)] [[],[],[],[]]=
    some (s6Step142ExitGvAfter,[s6Step142ExitGOut,s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut],(shrinkRow 777 s6Step142ExitGExtra ++ (shrinkRow 795 s6Step142ExitFExtra ++ (shrinkRow 776 s6Step142ExitFvExtra ++ (shrinkRow 775 s6Step142ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s6Step142ExitGvAfter [] []=some (s6Step142ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step142ExitGvBefore s6Step142ExitGvAfter s6Step142ExitGvAfter
    s6Step142ExitGvRow s6Step142ExitGvOut 85 [] [] [] []
    (shrinkRow 775 s6Step142ExitGvExtra) ([]) s6Step142ExitGv_Incoming s6Step142ExitGv_checked h4 s6Step142ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step142ExitFvBefore s6Step142ExitFvAfter s6Step142ExitGvAfter
    s6Step142ExitFvRow s6Step142ExitFvOut 85 [] [(s6Step142ExitGvRow,85)] [[]] [s6Step142ExitGvOut]
    (shrinkRow 776 s6Step142ExitFvExtra) ((shrinkRow 775 s6Step142ExitGvExtra ++ [])) s6Step142ExitFv_Incoming s6Step142ExitFv_checked h3 s6Step142ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step142ExitFBefore s6Step142ExitFAfter s6Step142ExitGvAfter
    s6Step142ExitFRow s6Step142ExitFOut 198 [] [(s6Step142ExitFvRow,85),(s6Step142ExitGvRow,85)] [[],[]] [s6Step142ExitFvOut,s6Step142ExitGvOut]
    (shrinkRow 795 s6Step142ExitFExtra) ((shrinkRow 776 s6Step142ExitFvExtra ++ (shrinkRow 775 s6Step142ExitGvExtra ++ []))) s6Step142ExitF_Incoming s6Step142ExitF_checked h2 s6Step142ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step142ExitGBefore s6Step142ExitGAfter s6Step142ExitGvAfter
    s6Step142ExitGRow s6Step142ExitGOut 198 [] [(s6Step142ExitFRow,198),(s6Step142ExitFvRow,85),(s6Step142ExitGvRow,85)] [[],[],[]] [s6Step142ExitFOut,s6Step142ExitFvOut,s6Step142ExitGvOut]
    (shrinkRow 777 s6Step142ExitGExtra) ((shrinkRow 795 s6Step142ExitFExtra ++ (shrinkRow 776 s6Step142ExitFvExtra ++ (shrinkRow 775 s6Step142ExitGvExtra ++ [])))) s6Step142ExitG_Incoming s6Step142ExitG_checked h1 s6Step142ExitG_Outgoing
  exact h0

private theorem s6Step142ExitBank_checked : compileHmrBankResizeLog .exit s6Step142ExitGBefore ⟨s6Step142ExitFRow,s6Step142ExitGRow,s6Step142ExitFvRow,s6Step142ExitGvRow⟩ ⟨198,198,85,85⟩ [[],[],[],[]]=
    some (s6Step142ExitGvAfter,⟨s6Step142ExitFOut,s6Step142ExitGOut,s6Step142ExitFvOut,s6Step142ExitGvOut⟩,(shrinkRow 777 s6Step142ExitGExtra ++ (shrinkRow 795 s6Step142ExitFExtra ++ (shrinkRow 776 s6Step142ExitFvExtra ++ (shrinkRow 775 s6Step142ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step142ExitBank_rows]
  rfl

private theorem s6Step142Add0_apart : Disjoint s6Step142Add0Arena.live s6Step142Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step142Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142Add0_card : s6Step142Add0Arena.live.card=884 := by
  decide +kernel

private theorem s6Step142Add0_borrowed : s6Step142Add0Arena.checkBorrow (hmrHybridCount s6Step142Add0Arena s6Step142Add0B.length) s6Step142Add0Work=some s6Step142Add0During := by
  have len : s6Step142Add0Work.length=hmrHybridCount s6Step142Add0Arena s6Step142Add0B.length := by
    rw [hmrHybridCount,s6Step142Add0_card]
    decide +kernel
  have nd : s6Step142Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step142Add0Arena s6Step142Add0During s6Step142Add0Work.toFinset s6Step142Add0_bounded s6Step142Add0_apart rfl

private theorem s6Step142Add0_distinct : (875::855::882::(s6Step142Add0A++s6Step142Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142Add0_owned : (875::855::882::(s6Step142Add0A++s6Step142Add0B)).toFinset⊆s6Step142Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step142Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142Add0_checked : compileHmrHybridCinLog s6Step142Add0Arena 855 875 882 s6Step142Add0A s6Step142Add0B s6Step142Add0Work=some s6Step142Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step142Add0Arena s6Step142Add0During 855 875 882 s6Step142Add0A s6Step142Add0B s6Step142Add0Work
    (by decide +kernel) (by decide +kernel) s6Step142Add0_distinct
    (fun q hq => s6Step142Add0_owned (List.mem_toFinset.mpr hq)) s6Step142Add0_borrowed

private theorem s6Step142Add1_apart : Disjoint s6Step142Add1Arena.live s6Step142Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step142Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142Add1_card : s6Step142Add1Arena.live.card=884 := by
  decide +kernel

private theorem s6Step142Add1_borrowed : s6Step142Add1Arena.checkBorrow (hmrHybridCount s6Step142Add1Arena s6Step142Add1B.length) s6Step142Add1Work=some s6Step142Add1During := by
  have len : s6Step142Add1Work.length=hmrHybridCount s6Step142Add1Arena s6Step142Add1B.length := by
    rw [hmrHybridCount,s6Step142Add1_card]
    decide +kernel
  have nd : s6Step142Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step142Add1Arena s6Step142Add1During s6Step142Add1Work.toFinset s6Step142Add1_bounded s6Step142Add1_apart rfl

private theorem s6Step142Add1_distinct : (875::855::882::(s6Step142Add1A++s6Step142Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142Add1_owned : (875::855::882::(s6Step142Add1A++s6Step142Add1B)).toFinset⊆s6Step142Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step142Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142Add1_checked : compileHmrHybridCinLog s6Step142Add1Arena 855 875 882 s6Step142Add1A s6Step142Add1B s6Step142Add1Work=some s6Step142Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step142Add1Arena s6Step142Add1During 855 875 882 s6Step142Add1A s6Step142Add1B s6Step142Add1Work
    (by decide +kernel) (by decide +kernel) s6Step142Add1_distinct
    (fun q hq => s6Step142Add1_owned (List.mem_toFinset.mpr hq)) s6Step142Add1_borrowed

private theorem s6Step142F4_apart : Disjoint (s6Step142Add0A++s6Step142Add0B).toFinset (s6Step142Add1A++s6Step142Add1B).toFinset := by
  have nd : ((s6Step142Add0A++s6Step142Add0B)++(s6Step142Add1A++s6Step142Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s6Step142F4_carry : s6Step142F4FlagArena.checkBorrow 1 [882]=some s6Step142Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step142F4FlagArena,s6Step142HeadFvAfter,arenaWires]
  · ext q
    simp only [s6Step142F4FlagArena,s6Step142HeadFvAfter,s6Step142Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step142F4_distinct : (927::855::875::882::((s6Step142Add0A++s6Step142Add1A)++(s6Step142Add0B++s6Step142Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142F4_flag : s6Step142HeadFvAfter.checkBorrow 1 [875]=some s6Step142F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step142HeadFvAfter,arenaWires]
  · rfl

private theorem s6Step142F4_owned : (927::855::((s6Step142Add0A++s6Step142Add1A)++(s6Step142Add0B++s6Step142Add1B))).toFinset⊆s6Step142HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s6Step142HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142F4_checked : compileHmrHybridF4Log s6Step142HeadFvAfter 927 855 s6Step142Add0A s6Step142Add0B s6Step142Add1A s6Step142Add1B [875] [882] s6Step142Add0Work s6Step142Add1Work=some s6Step142F4Plan := by
  exact compileHmrHybridF4Log_of_parts s6Step142HeadFvAfter s6Step142F4FlagArena s6Step142Add0Arena s6Step142Add0During s6Step142Add1During 927 855
    s6Step142Add0A s6Step142Add0B s6Step142Add1A s6Step142Add1B [875] [882] s6Step142Add0Work s6Step142Add1Work
    (fun q hq => s6Step142F4_owned (List.mem_toFinset.mpr hq)) s6Step142F4_flag s6Step142F4_carry
    s6Step142F4_distinct s6Step142F4_apart s6Step142Add0_checked s6Step142Add1_checked

private theorem s6Step142Front_branch : s6Step142FrontSigmaArena.checkBorrow 1 [855]=some s6Step142HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step142FrontSigmaArena,s6Step142EntryGvAfter,s6Step142EntryGAfter,arenaWires]
  · change s6Step142HeadGBefore.live=(s6Step142EntryGvAfter.live∪{927})∪{855}
    apply hmrArena_union_pair_of_filter_check s6Step142EntryGvAfter s6Step142HeadGBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) 927 855 rfl rfl
    · norm_num [arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step142Front_entry : HmrFrontEntryValid s6Step142EntryFBefore s6Step142FrontBank 199 85 ⟨198,198,85,85⟩ true 0 [774, 773, 772, 771, 770, 769] := by
  have nd : ([774, 773, 772, 771, 770, 769]++(s6Step142FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([774, 773, 772, 771, 770, 769] : List Wire).toFinset⊆s6Step142EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s6Step142EntryFBefore (fun q => ([(0,768),(769,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,855),(856,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel
  have apart : Disjoint ([774, 773, 772, 771, 770, 769] : List Wire).toFinset (s6Step142FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s6Step142Front_sigma : s6Step142EntryGvAfter.checkBorrow 1 [927]=some s6Step142FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s6Step142EntryGvAfter,s6Step142EntryGAfter,arenaWires]
  · rfl

private def s6Step142HeadFAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142HeadGAfter : Arena := ⟨arenaWires.filter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s6Step142HeadFBefore : Arena := s6Step142HeadGAfter

private def s6Step142HeadFRow : WindowRow := ⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454],795⟩

private def s6Step142HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850],776⟩

private def s6Step142HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768],777⟩

private def s6Step142HeadGvRow : WindowRow := ⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813],775⟩

private theorem s6Step142HeadBank_incomingDistinct : ([s6Step142HeadGRow,s6Step142HeadFRow,s6Step142HeadGvRow,s6Step142HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142HeadF_Incoming : rowsOwned s6Step142HeadFBefore [s6Step142HeadFRow,s6Step142HeadGvRow,s6Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142HeadGRow,s6Step142HeadFRow,s6Step142HeadGvRow,s6Step142HeadFvRow] 1 s6Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142HeadFBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142HeadBank_outgoingOwned : rowsOwned s6Step142HeadFvAfter [s6Step142HeadGOut,s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s6Step142HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step142HeadF_Outgoing : rowsOwned s6Step142HeadFvAfter [s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut] :=
  hmrRows_owned_drop s6Step142HeadFvAfter [s6Step142HeadGOut,s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut] 1 s6Step142HeadBank_outgoingOwned

private theorem s6Step142HeadF_distinct : (s6Step142HeadFRow.sign::s6Step142HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142HeadF_owned : (s6Step142HeadFRow.sign::s6Step142HeadFRow.payload).toFinset⊆s6Step142HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142HeadFBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142HeadF_reserved : s6Step142HeadFBefore.reserve s6Step142HeadFFresh.toFinset=some s6Step142HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142HeadFFresh,arenaWires]
  · norm_num [s6Step142HeadFBefore,s6Step142HeadGAfter,s6Step142HeadFFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step142HeadFBefore s6Step142HeadFAfter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142HeadFFresh rfl rfl
    · norm_num [s6Step142HeadFFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step142HeadF_checked : planRowResizeLog s6Step142HeadFBefore s6Step142HeadFRow 200 s6Step142HeadFFresh=
    some (s6Step142HeadFAfter,⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 786],795⟩,growRow 795 s6Step142HeadFFresh) := by
  have result := planRowResizeLog_of_growth s6Step142HeadFBefore s6Step142HeadFAfter s6Step142HeadFRow 200 s6Step142HeadFFresh
    s6Step142HeadF_distinct s6Step142HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142HeadF_reserved
  have rowEq : WindowRow.mk (s6Step142HeadFRow.payload++s6Step142HeadFFresh) s6Step142HeadFRow.sign=⟨[256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 786],795⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step142HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩

private def s6Step142HeadFvBefore : Arena := s6Step142HeadGvAfter

private theorem s6Step142HeadFv_Incoming : rowsOwned s6Step142HeadFvBefore [s6Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142HeadGRow,s6Step142HeadFRow,s6Step142HeadGvRow,s6Step142HeadFvRow] 3 s6Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
    decide +kernel

private theorem s6Step142HeadFv_Outgoing : rowsOwned s6Step142HeadFvAfter [s6Step142HeadFvOut] :=
  hmrRows_owned_drop s6Step142HeadFvAfter [s6Step142HeadGOut,s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut] 3 s6Step142HeadBank_outgoingOwned

private theorem s6Step142HeadFv_distinct : (s6Step142HeadFvRow.sign::s6Step142HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142HeadFv_owned : (s6Step142HeadFvRow.sign::s6Step142HeadFvRow.payload).toFinset⊆s6Step142HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel

private theorem s6Step142HeadFv_reserved : s6Step142HeadFvBefore.reserve s6Step142HeadFvFresh.toFinset=some s6Step142HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142HeadFvFresh,arenaWires]
  · norm_num [s6Step142HeadFvBefore,s6Step142HeadGvAfter,s6Step142HeadFvFresh,arenaWires]
  · ext q
    simp only [s6Step142HeadFvAfter,s6Step142HeadFvBefore,s6Step142HeadGvAfter,s6Step142HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s6Step142HeadFv_checked : planRowResizeLog s6Step142HeadFvBefore s6Step142HeadFvRow 86 s6Step142HeadFvFresh=
    some (s6Step142HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 807],776⟩,growRow 776 s6Step142HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s6Step142HeadFvBefore s6Step142HeadFvAfter s6Step142HeadFvRow 86 s6Step142HeadFvFresh
    s6Step142HeadFv_distinct s6Step142HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142HeadFv_reserved
  have rowEq : WindowRow.mk (s6Step142HeadFvRow.payload++s6Step142HeadFvFresh) s6Step142HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 780, 908, 877, 859, 881, 922, 857, 845, 863, 876, 818, 789, 892, 864, 803, 778, 880, 868, 814, 821, 841, 853, 838, 854, 843, 869, 850, 807],776⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step142HeadG_Incoming : rowsOwned s6Step142HeadGBefore [s6Step142HeadGRow,s6Step142HeadFRow,s6Step142HeadGvRow,s6Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142HeadGRow,s6Step142HeadFRow,s6Step142HeadGvRow,s6Step142HeadFvRow] 0 s6Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142HeadGBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142HeadG_Outgoing : rowsOwned s6Step142HeadFvAfter [s6Step142HeadGOut,s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut] :=
  hmrRows_owned_drop s6Step142HeadFvAfter [s6Step142HeadGOut,s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut] 0 s6Step142HeadBank_outgoingOwned

private theorem s6Step142HeadG_distinct : (s6Step142HeadGRow.sign::s6Step142HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142HeadG_owned : (s6Step142HeadGRow.sign::s6Step142HeadGRow.payload).toFinset⊆s6Step142HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142HeadGBefore (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142HeadG_reserved : s6Step142HeadGBefore.reserve s6Step142HeadGFresh.toFinset=some s6Step142HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142HeadGFresh,arenaWires]
  · norm_num [s6Step142HeadGBefore,s6Step142HeadGFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step142HeadGBefore s6Step142HeadGAfter (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,879),(880,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => ([(0,782),(783,786),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) s6Step142HeadGFresh rfl rfl
    · norm_num [s6Step142HeadGFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step142HeadG_checked : planRowResizeLog s6Step142HeadGBefore s6Step142HeadGRow 200 s6Step142HeadGFresh=
    some (s6Step142HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768, 879],777⟩,growRow 777 s6Step142HeadGFresh) := by
  have result := planRowResizeLog_of_growth s6Step142HeadGBefore s6Step142HeadGAfter s6Step142HeadGRow 200 s6Step142HeadGFresh
    s6Step142HeadG_distinct s6Step142HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142HeadG_reserved
  have rowEq : WindowRow.mk (s6Step142HeadGRow.payload++s6Step142HeadGFresh) s6Step142HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 768, 879],777⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s6Step142HeadGvBefore : Arena := s6Step142HeadFAfter

private theorem s6Step142HeadGv_Incoming : rowsOwned s6Step142HeadGvBefore [s6Step142HeadGvRow,s6Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s6Step142HeadGRow,s6Step142HeadFRow,s6Step142HeadGvRow,s6Step142HeadFvRow] 2 s6Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s6Step142HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
    decide +kernel

private theorem s6Step142HeadGv_Outgoing : rowsOwned s6Step142HeadFvAfter [s6Step142HeadGvOut,s6Step142HeadFvOut] :=
  hmrRows_owned_drop s6Step142HeadFvAfter [s6Step142HeadGOut,s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut] 2 s6Step142HeadBank_outgoingOwned

private theorem s6Step142HeadGv_distinct : (s6Step142HeadGvRow.sign::s6Step142HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s6Step142HeadGv_owned : (s6Step142HeadGvRow.sign::s6Step142HeadGvRow.payload).toFinset⊆s6Step142HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s6Step142HeadGvBefore (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) rfl
  decide +kernel

private theorem s6Step142HeadGv_reserved : s6Step142HeadGvBefore.reserve s6Step142HeadGvFresh.toFinset=some s6Step142HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s6Step142HeadGvFresh,arenaWires]
  · norm_num [s6Step142HeadGvBefore,s6Step142HeadFAfter,s6Step142HeadGvFresh,arenaWires]
  · apply hmrArena_union_of_filter_check s6Step142HeadGvBefore s6Step142HeadGvAfter (fun q => ([(0,782),(783,787),(788,790),(793,797),(799,800),(802,804),(805,807),(813,815),(818,819),(821,825),(826,832),(833,834),(835,842),(843,849),(850,867),(868,875),(876,882),(883,891),(892,894),(895,896),(898,899),(901,903),(904,905),(907,909),(910,912),(913,914),(917,918),(919,920),(921,923),(924,925),(927,928)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true) (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<787) ∨ (788≤q ∧ q<790) ∨ (793≤q ∧ q<797) ∨ (799≤q ∧ q<800) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<807) ∨ (813≤q ∧ q<815) ∨ (818≤q ∧ q<819) ∨ (821≤q ∧ q<825) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<875) ∨ (876≤q ∧ q<882) ∨ (883≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (898≤q ∧ q<899) ∨ (901≤q ∧ q<903) ∨ (904≤q ∧ q<905) ∨ (907≤q ∧ q<909) ∨ (910≤q ∧ q<912) ∨ (913≤q ∧ q<914) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<920) ∨ (921≤q ∧ q<923) ∨ (924≤q ∧ q<925) ∨ (927≤q ∧ q<928)) s6Step142HeadGvFresh rfl rfl
    · norm_num [s6Step142HeadGvFresh,arenaWires,Finset.insert_subset_iff]
    · decide +kernel

private theorem s6Step142HeadGv_checked : planRowResizeLog s6Step142HeadGvBefore s6Step142HeadGvRow 86 s6Step142HeadGvFresh=
    some (s6Step142HeadGvAfter,⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 867],775⟩,growRow 775 s6Step142HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s6Step142HeadGvBefore s6Step142HeadGvAfter s6Step142HeadGvRow 86 s6Step142HeadGvFresh
    s6Step142HeadGv_distinct s6Step142HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s6Step142HeadGv_reserved
  have rowEq : WindowRow.mk (s6Step142HeadGvRow.payload++s6Step142HeadGvFresh) s6Step142HeadGvRow.sign=⟨[511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 802, 794, 887, 858, 779, 874, 873, 856, 784, 828, 890, 805, 793, 886, 823, 907, 830, 865, 888, 848, 796, 898, 839, 860, 833, 862, 822, 813, 867],775⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s6Step142HeadBank_rows : planWindowRowsLog s6Step142HeadGBefore [(s6Step142HeadGRow,200),(s6Step142HeadFRow,200),(s6Step142HeadGvRow,86),(s6Step142HeadFvRow,86)] [s6Step142HeadGFresh,s6Step142HeadFFresh,s6Step142HeadGvFresh,s6Step142HeadFvFresh]=
    some (s6Step142HeadFvAfter,[s6Step142HeadGOut,s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut],(growRow 777 s6Step142HeadGFresh ++ (growRow 795 s6Step142HeadFFresh ++ (growRow 775 s6Step142HeadGvFresh ++ (growRow 776 s6Step142HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s6Step142HeadFvAfter [] []=some (s6Step142HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s6Step142HeadFvBefore s6Step142HeadFvAfter s6Step142HeadFvAfter
    s6Step142HeadFvRow s6Step142HeadFvOut 86 s6Step142HeadFvFresh [] [] []
    (growRow 776 s6Step142HeadFvFresh) ([]) s6Step142HeadFv_Incoming s6Step142HeadFv_checked h4 s6Step142HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s6Step142HeadGvBefore s6Step142HeadGvAfter s6Step142HeadFvAfter
    s6Step142HeadGvRow s6Step142HeadGvOut 86 s6Step142HeadGvFresh [(s6Step142HeadFvRow,86)] [s6Step142HeadFvFresh] [s6Step142HeadFvOut]
    (growRow 775 s6Step142HeadGvFresh) ((growRow 776 s6Step142HeadFvFresh ++ [])) s6Step142HeadGv_Incoming s6Step142HeadGv_checked h3 s6Step142HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s6Step142HeadFBefore s6Step142HeadFAfter s6Step142HeadFvAfter
    s6Step142HeadFRow s6Step142HeadFOut 200 s6Step142HeadFFresh [(s6Step142HeadGvRow,86),(s6Step142HeadFvRow,86)] [s6Step142HeadGvFresh,s6Step142HeadFvFresh] [s6Step142HeadGvOut,s6Step142HeadFvOut]
    (growRow 795 s6Step142HeadFFresh) ((growRow 775 s6Step142HeadGvFresh ++ (growRow 776 s6Step142HeadFvFresh ++ []))) s6Step142HeadF_Incoming s6Step142HeadF_checked h2 s6Step142HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s6Step142HeadGBefore s6Step142HeadGAfter s6Step142HeadFvAfter
    s6Step142HeadGRow s6Step142HeadGOut 200 s6Step142HeadGFresh [(s6Step142HeadFRow,200),(s6Step142HeadGvRow,86),(s6Step142HeadFvRow,86)] [s6Step142HeadFFresh,s6Step142HeadGvFresh,s6Step142HeadFvFresh] [s6Step142HeadFOut,s6Step142HeadGvOut,s6Step142HeadFvOut]
    (growRow 777 s6Step142HeadGFresh) ((growRow 795 s6Step142HeadFFresh ++ (growRow 775 s6Step142HeadGvFresh ++ (growRow 776 s6Step142HeadFvFresh ++ [])))) s6Step142HeadG_Incoming s6Step142HeadG_checked h1 s6Step142HeadG_Outgoing
  exact h0

private theorem s6Step142HeadBank_checked : compileHmrBankResizeLog .headroom s6Step142HeadGBefore ⟨s6Step142HeadFRow,s6Step142HeadGRow,s6Step142HeadFvRow,s6Step142HeadGvRow⟩ ⟨200,200,86,86⟩ [s6Step142HeadGFresh,s6Step142HeadFFresh,s6Step142HeadGvFresh,s6Step142HeadFvFresh]=
    some (s6Step142HeadFvAfter,⟨s6Step142HeadFOut,s6Step142HeadGOut,s6Step142HeadFvOut,s6Step142HeadGvOut⟩,(growRow 777 s6Step142HeadGFresh ++ (growRow 795 s6Step142HeadFFresh ++ (growRow 775 s6Step142HeadGvFresh ++ (growRow 776 s6Step142HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s6Step142HeadBank_rows]
  rfl

private theorem s6Step142Front_checked : compileHmrSourceFrontLog s6Step142EntryFBefore s6Step142FrontBank 199 85 ⟨198,198,85,85⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step142FrontLog=some s6Step142FrontPlan := by
  have pairEq : s6Step142FrontPair=⟨s6Step142HeadFRow,s6Step142HeadGRow,s6Step142HeadFvRow,s6Step142HeadGvRow⟩ := by decide +kernel
  have headEq : s6Step142FrontHead=⟨s6Step142ExitFRow,s6Step142ExitGRow,s6Step142ExitFvRow,s6Step142ExitGvRow⟩ := by decide +kernel
  have fEq : s6Step142Add0A=s6Step142FrontHead.f.wires := by decide +kernel
  have gEq : s6Step142Add0B=s6Step142FrontHead.g.wires := by decide +kernel
  have fvEq : s6Step142Add1A=s6Step142FrontHead.fv.wires := by decide +kernel
  have gvEq : s6Step142Add1B=s6Step142FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s6Step142EntryFBefore s6Step142FrontBank 199 85 ⟨198,198,85,85⟩ true 0 [774, 773, 772, 771, 770, 769] s6Step142FrontLog s6Step142FrontPlan
  · exact s6Step142Front_entry
  · exact s6Step142EntryBank_checked
  · exact s6Step142Front_sigma
  · rfl
  · exact s6Step142Front_branch
  · rfl
  · simpa only [s6Step142FrontPlan,pairEq] using s6Step142HeadBank_checked
  · simpa only [s6Step142FrontPlan,fEq,gEq,fvEq,gvEq] using s6Step142F4_checked
  · exact s6Step142Counter_checked
  · rfl
  · simpa only [s6Step142FrontPlan,headEq] using s6Step142ExitBank_checked

private theorem s6Step142Complete_explicit_checked : compileHmrEarlyStepLog s6Step142EntryFBefore s6Step142FrontBank 199 85 ⟨198,198,85,85⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step142CompleteLog=some s6Step142CompletePlan := by
  let Q := s6Step142EarlyControlPlan
  have hq := s6Step142EarlyControl_plan_checked
  have fv1 : s6Step142CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s6Step142CompleteOut.fv.payload[2]?.getD s6Step142CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s6Step142CompleteOut.fv.payload[3]?.getD s6Step142CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s6Step142CompleteOut.fv.payload[4]?.getD s6Step142CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s6Step142EntryFBefore s6Step142EarlyControlArena s6Step142FrontBank 199 85 ⟨198,198,85,85⟩ 0 [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 42 s6Step142CompleteLog s6Step142FrontPlan Q
    s6Step142Front_checked s6Step142Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s6Step142Complete_owned s6Step142Complete_apart)))
    (by
      change compileHmrEarlyControlLog s6Step142EarlyControlArena [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 769 927 s6Step142CompleteOut.fv.second (s6Step142CompleteOut.fv.payload[2]?.getD s6Step142CompleteOut.fv.sign) (s6Step142CompleteOut.fv.payload[3]?.getD s6Step142CompleteOut.fv.sign) (s6Step142CompleteOut.fv.payload[4]?.getD s6Step142CompleteOut.fv.sign) 855 42 s6Step142EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s6PrivateStep142Arena : Arena := s6Step142EntryFBefore
def s6PrivateStep142Bank : WindowBank := s6Step142FrontBank
def s6PrivateStep142Spec : HmrSourceWalkStepLog := ⟨199,85,⟨198,198,85,85⟩,42,.early s6Step142CompleteLog⟩
def s6PrivateStep142Plan : HmrSourceStepPlan := .early s6Step142CompletePlan
theorem s6PrivateStep142_source : s6PrivateStep142Spec=s6ObservedLogs128[14] := rfl
theorem s6PrivateStep142_checked : compileHmrSourceStepLog s6PrivateStep142Arena s6PrivateStep142Bank
    s6PrivateStep142Spec.fgWidth s6PrivateStep142Spec.vWidth s6PrivateStep142Spec.exitWidth s6ObservedCounter [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826]
    6 498 142 s6PrivateStep142Spec.need none s6PrivateStep142Spec.log=some s6PrivateStep142Plan := by
  change compileHmrSourceStepLog s6Step142EntryFBefore s6Step142FrontBank 199 85 ⟨198,198,85,85⟩ [774, 773, 772, 771, 770, 769] [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826] 6 498 142 42 none (.early s6Step142CompleteLog)=some (.early s6Step142CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 142<498)]
  rw [s6Step142Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
